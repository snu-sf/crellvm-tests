	.text
	.file	"gdevpdte.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI0_1:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI0_2:
	.quad	4652007308841189376     # double 1000
.LCPI0_4:
	.quad	4643211215818981376     # double 256
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_3:
	.quad	4652007308841189376     # double 1.000000e+03
	.quad	4652007308841189376     # double 1.000000e+03
	.text
	.globl	pdf_process_string_aux
	.align	16, 0x90
	.type	pdf_process_string_aux,@function
pdf_process_string_aux:                 # @pdf_process_string_aux
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
	subq	$2936, %rsp             # imm = 0xB78
.Ltmp6:
	.cfi_def_cfa_offset 2992
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
	movq	%rcx, %rbp
	movq	%rdi, %rbx
	movq	192(%rbx), %r14
	movl	$-15, %r15d
	movl	128(%r14), %eax
	cmpq	$54, %rax
	ja	.LBB0_175
# BB#1:                                 # %entry
	movabsq	$33781395251789838, %rcx # imm = 0x7804000000000E
	btq	%rax, %rcx
	jae	.LBB0_175
# BB#2:                                 # %sw.epilog
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	%r8, 248(%rsp)          # 8-byte Spill
	movq	88(%rbx), %r13
	leaq	2824(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	callq	pdf_obtain_font_resource
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_175
# BB#3:                                 # %if.end.i
	leaq	80(%r14), %r12
	testq	%rbp, %rbp
	cmovneq	%rbp, %r12
	testb	$2, 2(%rbx)
	je	.LBB0_5
# BB#4:                                 # %if.then.5.i
	movq	120(%rbx), %rdi
	leaq	456(%rbx), %rsi
	callq	gx_path_current_point
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_175
.LBB0_5:                                # %if.end.10.i
	xorl	%r15d, %r15d
	cmpl	$0, 16(%rbx)
	je	.LBB0_175
# BB#6:                                 # %if.end.13.i
	movq	104(%rbx), %rax
	xorpd	%xmm4, %xmm4
	xorl	%ecx, %ecx
	cmpl	$3, 252(%rax)
	je	.LBB0_53
# BB#7:                                 # %land.lhs.true.i
	movl	(%rbx), %eax
	xorl	%ecx, %ecx
	testb	$2, %ah
	jne	.LBB0_53
# BB#8:                                 # %if.then.18.i
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movl	$-1, %ebp
	testb	$-128, %al
	je	.LBB0_10
# BB#9:                                 # %cond.true.i.i
	movl	56(%rbx), %ebp
.LBB0_10:                               # %cond.end.i.i
	movsd	376(%r14), %xmm0        # xmm0 = mem[0],zero
	ucomisd	392(%r14), %xmm0
	jne	.LBB0_11
	jnp	.LBB0_40
.LBB0_11:                               # %lor.lhs.false.i.i
	movsd	384(%r14), %xmm0        # xmm0 = mem[0],zero
	ucomisd	400(%r14), %xmm0
	jne	.LBB0_12
	jnp	.LBB0_40
.LBB0_12:                               # %if.end.i.i
	movslq	148(%r14), %r15
	movl	236(%rbx), %r13d
	movq	120(%rbx), %rdi
	leaq	2928(%rsp), %rsi
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB0_40
# BB#13:                                # %if.end.17.i.i
	movq	%r13, 136(%rsp)         # 8-byte Spill
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movq	104(%rbx), %rax
	movups	132(%rax), %xmm0
	movaps	%xmm0, 288(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2928(%rsp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 304(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2932(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 308(%rsp)
	leaq	288(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)        # 16-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	240(%rsp), %r13         # 8-byte Reload
	cmpl	$0, 8(%r13)
	movl	$0, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)        # 16-byte Spill
	je	.LBB0_92
# BB#14:                                # %for.body.lr.ph.i.i
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	shlq	$4, %r15
	leaq	952(%rsp,%r15), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	960(%rsp,%r15), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)        # 16-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 208(%rsp)        # 16-byte Spill
	movl	$0, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
                                        # implicit-def: EAX
	movl	%eax, 152(%rsp)         # 4-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %for.cond.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	incq	%r15
	cmpl	8(%r13), %r15d
	jb	.LBB0_16
	jmp	.LBB0_92
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=1
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movq	168(%rsp), %r12         # 8-byte Reload
	jmp	.LBB0_38
.LBB0_16:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movzbl	(%rax,%r15), %esi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	*200(%r14)
	movq	%rax, 2840(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB0_18
# BB#17:                                #   in Loop: Header=BB0_16 Depth=1
	movl	$-10, 152(%rsp)         # 4-byte Folded Spill
	jmp	.LBB0_38
.LBB0_18:                               # %if.end.34.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%r12, 168(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	144(%rsp), %ecx         # 4-byte Reload
	leaq	944(%rsp), %r8
	callq	*224(%r14)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB0_26
# BB#19:                                # %if.then.39.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	128(%r14), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB0_20
# BB#21:                                # %if.then.46.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	$0, 2836(%rsp)
	xorl	%edx, %edx
	movq	%r14, %rdi
	leaq	2836(%rsp), %rsi
	leaq	2840(%rsp), %rcx
	callq	*216(%r14)
	testl	%eax, %eax
	js	.LBB0_20
# BB#22:                                # %if.then.46.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	2836(%rsp), %eax
	testl	%eax, %eax
	je	.LBB0_20
# BB#23:                                # %for.body.54.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	2840(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	je	.LBB0_20
# BB#24:                                # %if.then.57.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	2840(%rsp), %rsi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	144(%rsp), %ecx         # 4-byte Reload
	leaq	944(%rsp), %r8
	callq	*224(%r14)
	testl	%eax, %eax
	js	.LBB0_25
.LBB0_26:                               # %if.end.72.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movsd	376(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%r14), %xmm1        # xmm1 = mem[0],zero
	leaq	288(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	2896(%rsp), %rsi
	callq	gs_point_transform
	movsd	376(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%r14), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	leaq	2880(%rsp), %rsi
	callq	gs_point_transform
	movsd	384(%r14), %xmm1        # xmm1 = mem[0],zero
	movsd	392(%r14), %xmm0        # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	leaq	2864(%rsp), %rsi
	callq	gs_point_transform
	movsd	392(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%r14), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	leaq	2848(%rsp), %rsi
	callq	gs_point_transform
	movapd	2896(%rsp), %xmm1
	movapd	2880(%rsp), %xmm3
	movapd	%xmm1, %xmm0
	minpd	%xmm3, %xmm0
	movapd	2864(%rsp), %xmm4
	movapd	%xmm3, %xmm2
	minpd	%xmm4, %xmm2
	minpd	%xmm2, %xmm0
	movapd	176(%rsp), %xmm6        # 16-byte Reload
	addpd	%xmm6, %xmm0
	movapd	%xmm1, %xmm2
	maxsd	%xmm3, %xmm2
	movapd	%xmm3, %xmm5
	maxsd	%xmm4, %xmm5
	maxsd	%xmm5, %xmm2
	addsd	%xmm6, %xmm2
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	maxsd	%xmm3, %xmm1
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	maxsd	%xmm4, %xmm3
	maxsd	%xmm3, %xmm1
	movapd	%xmm6, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	addsd	%xmm1, %xmm3
	testl	%r15d, %r15d
	movq	168(%rsp), %r12         # 8-byte Reload
	je	.LBB0_27
# BB#28:                                # %do.body.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	movd	%rcx, %xmm1
	ucomisd	%xmm1, %xmm2
	movd	%xmm2, %rax
	cmovaq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	minpd	208(%rsp), %xmm0        # 16-byte Folded Reload
	movq	200(%rsp), %rax         # 8-byte Reload
	movd	%rax, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.LBB0_30
	jmp	.LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=1
	xorl	%ebp, %ebp
	movl	%r12d, 152(%rsp)        # 4-byte Spill
	movq	168(%rsp), %r12         # 8-byte Reload
	jmp	.LBB0_38
.LBB0_27:                               # %if.then.302.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%xmm2, 160(%rsp)        # 8-byte Folded Spill
.LBB0_29:                               # %if.then.345.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movd	%xmm3, %rax
.LBB0_30:                               # %if.end.351.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movapd	%xmm0, 208(%rsp)        # 16-byte Spill
	movq	%rax, 200(%rsp)         # 8-byte Spill
	testb	$1, 1(%rbx)
	jne	.LBB0_31
# BB#32:                                # %if.else.364.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	112(%rsp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	leaq	288(%rsp), %rdi
	leaq	256(%rsp), %rsi
	callq	gs_distance_transform
	testb	$64, (%rbx)
	je	.LBB0_34
# BB#33:                                # %if.then.377.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	2912(%rsp), %rsi
	callq	gs_distance_transform
	movapd	2912(%rsp), %xmm0
	addpd	256(%rsp), %xmm0
	movapd	%xmm0, 256(%rsp)
.LBB0_34:                               # %if.end.392.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	(%r13), %rax
	movzbl	(%rax,%r15), %eax
	cmpl	128(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB0_37
# BB#35:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	testb	$-128, (%rbx)
	je	.LBB0_37
# BB#36:                                # %if.then.403.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	2912(%rsp), %rsi
	callq	gs_distance_transform
	movapd	2912(%rsp), %xmm0
	addpd	256(%rsp), %xmm0
	movapd	%xmm0, 256(%rsp)
	jmp	.LBB0_37
.LBB0_31:                               # %if.then.356.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	136(%rsp), %rsi         # 8-byte Reload
	leal	1(%rsi), %ebp
	movq	%rbx, %rdi
	leaq	2912(%rsp), %rdx
	callq	gs_text_replaced_width
	movsd	2912(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	2920(%rsp), %xmm1       # xmm1 = mem[0],zero
	movq	104(%rbx), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	256(%rsp), %rsi
	callq	gs_distance_transform
	movl	%ebp, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
.LBB0_37:                               # %if.end.419.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	movapd	176(%rsp), %xmm0        # 16-byte Reload
	addpd	256(%rsp), %xmm0
	movapd	%xmm0, 176(%rsp)        # 16-byte Spill
	movb	$1, %bpl
.LBB0_38:                               # %cleanup.426.i.i
                                        #   in Loop: Header=BB0_16 Depth=1
	testb	%bpl, %bpl
	jne	.LBB0_15
# BB#39:                                # %process_text_estimate_bbox.exit.i
	movq	%r13, 240(%rsp)         # 8-byte Spill
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB0_93
.LBB0_40:                               # %if.else.i
	movq	120(%rbx), %rdi
	leaq	2880(%rsp), %rsi
	callq	gx_path_current_point
	movq	104(%rbx), %rax
	movups	132(%rax), %xmm0
	movaps	%xmm0, 944(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2880(%rsp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 960(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2884(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 964(%rsp)
	leaq	944(%rsp), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	movsd	392(%r14), %xmm3        # xmm3 = mem[0],zero
	movsd	376(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%r14), %xmm1        # xmm1 = mem[0],zero
	movsd	400(%r14), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	movq	96(%rsp), %r13          # 8-byte Reload
	jne	.LBB0_43
# BB#41:                                # %if.else.i
	jp	.LBB0_43
# BB#42:                                # %if.else.i
	xorpd	%xmm0, %xmm0
.LBB0_43:                               # %if.else.i
	movsd	.LCPI0_2(%rip), %xmm4   # xmm4 = mem[0],zero
	jne	.LBB0_46
# BB#44:                                # %if.else.i
	jp	.LBB0_46
# BB#45:                                # %if.else.i
	movapd	%xmm4, %xmm3
.LBB0_46:                               # %if.else.i
	ucomisd	%xmm2, %xmm1
	jne	.LBB0_49
# BB#47:                                # %if.else.i
	jp	.LBB0_49
# BB#48:                                # %if.else.i
	xorpd	%xmm1, %xmm1
.LBB0_49:                               # %if.else.i
	movsd	%xmm2, 208(%rsp)        # 8-byte Spill
	movsd	%xmm3, 200(%rsp)        # 8-byte Spill
	jne	.LBB0_52
# BB#50:                                # %if.else.i
	jp	.LBB0_52
# BB#51:                                # %if.else.i
	movsd	%xmm4, 208(%rsp)        # 8-byte Spill
.LBB0_52:                               # %if.else.i
	leaq	288(%rsp), %rsi
	movq	%rbp, %rdi
	movsd	%xmm1, 176(%rsp)        # 8-byte Spill
	movsd	%xmm0, 168(%rsp)        # 8-byte Spill
	callq	gs_point_transform
	leaq	256(%rsp), %rsi
	movsd	168(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	208(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	leaq	2912(%rsp), %rsi
	movsd	200(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	176(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	leaq	2896(%rsp), %rsi
	movsd	200(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	208(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	movsd	296(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	264(%rsp), %xmm1        # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm4
	minsd	%xmm1, %xmm4
	movsd	2920(%rsp), %xmm2       # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm3
	minsd	%xmm2, %xmm3
	minsd	%xmm3, %xmm4
	maxsd	%xmm1, %xmm0
	maxsd	%xmm2, %xmm1
	maxsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
.LBB0_53:                               # %if.end.377.i
	movapd	%xmm4, 208(%rsp)        # 16-byte Spill
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	2824(%rsp), %rdx
	movq	248(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rcx
	callq	pdf_update_text_state
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB0_56
# BB#54:                                # %if.end.377.i
	movl	%r15d, %eax
	andl	$128, %eax
	je	.LBB0_56
# BB#55:                                # %if.then.384.i
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	56(%rbx), %esi
	movl	8(%rax), %edx
	callq	memchr
	movl	%r15d, %ecx
	andl	$-129, %ecx
	testq	%rax, %rax
	cmovel	%ecx, %r15d
.LBB0_56:                               # %if.end.395.i
	testl	%r15d, %r15d
	js	.LBB0_175
# BB#57:                                # %if.end.399.i
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$256, %ecx              # imm = 0x100
	xorl	%esi, %esi
	orl	%r15d, %ecx
	je	.LBB0_96
# BB#58:
	movq	%r12, 168(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 144(%rsp)        # 8-byte Spill
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	%xmm4, 152(%rsp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
.LBB0_59:                               # %if.then.454.i
	movl	232(%rbx), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movl	236(%rbx), %r12d
	movq	80(%rbx), %rcx
	movq	%rcx, 1024(%rsp)
	movups	64(%rbx), %xmm0
	movaps	%xmm0, 1008(%rsp)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movaps	%xmm3, 992(%rsp)
	movaps	%xmm2, 976(%rsp)
	movaps	%xmm1, 960(%rsp)
	movaps	%xmm0, 944(%rsp)
	movl	%eax, %ecx
	andl	$256, %ecx              # imm = 0x100
	je	.LBB0_62
# BB#60:                                # %cond.false.464.i
	movq	64(%rbx), %rdx
	movl	$2, %esi
	cmpq	72(%rbx), %rdx
	je	.LBB0_62
# BB#61:                                # %select.mid
	movl	$1, %esi
.LBB0_62:                               # %cond.end.470.i
	testb	$32, %al
	je	.LBB0_64
# BB#63:                                # %if.then.476.i
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 288(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
.LBB0_64:                               # %if.end.477.i
	movsd	%xmm4, 176(%rsp)        # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB0_69
# BB#65:                                # %if.then.482.i
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_67
# BB#66:                                # %if.then.487.i
	movl	%esi, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 64(%rbx)
.LBB0_67:                               # %if.end.491.i
	movq	72(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_69
# BB#68:                                # %if.then.496.i
	movl	%esi, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 72(%rbx)
.LBB0_69:                               # %if.end.503.i
	movl	$0, 236(%rbx)
	movl	$1, 8(%rsp)
	movl	$0, (%rsp)
	leaq	2800(%rsp), %r8
	movq	%rbx, %rdi
	movq	%rsi, %rbp
	movq	%r14, %rsi
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	callq	process_text_modify_width
	movq	%rbp, %rdx
	movl	%eax, %r15d
	testb	$1, 1(%rbx)
	je	.LBB0_74
# BB#70:                                # %if.then.510.i
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_72
# BB#71:                                # %if.then.515.i
	movl	%edx, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, 64(%rbx)
.LBB0_72:                               # %if.end.521.i
	movq	72(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_74
# BB#73:                                # %if.then.526.i
	imull	%r12d, %edx
	movslq	%edx, %rcx
	shlq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, 72(%rbx)
.LBB0_74:                               # %if.end.534.i
	addl	%r12d, 236(%rbx)
	movl	232(%rbx), %eax
	testl	%eax, %eax
	movsd	176(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jle	.LBB0_91
# BB#75:                                # %for.body.lr.ph.i.197.i
	movq	2824(%rsp), %rcx
	movq	240(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdi
	movl	176(%rcx), %ebp
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB0_80
# BB#76:                                # %for.body.i.202.i.prol
	movzbl	(%rdi), %esi
	cmpl	%ebp, %esi
	jge	.LBB0_78
# BB#77:                                # %if.then.i.203.i.prol
	movl	%esi, 176(%rcx)
	movl	%esi, %ebp
.LBB0_78:                               # %if.end.i.205.i.prol
	movl	$1, %edx
	cmpl	180(%rcx), %esi
	jle	.LBB0_80
# BB#79:                                # %if.then.10.i.206.i.prol
	movl	%esi, 180(%rcx)
	movl	$1, %edx
.LBB0_80:                               # %for.body.lr.ph.i.197.i.split
	cmpl	$1, %eax
	je	.LBB0_91
# BB#81:                                # %for.body.lr.ph.i.197.i.split.split
	movl	%eax, %esi
	subl	%edx, %esi
	leaq	1(%rdx,%rdi), %rdi
	.align	16, 0x90
.LBB0_82:                               # %for.body.i.202.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdi), %edx
	cmpl	%ebp, %edx
	jge	.LBB0_84
# BB#83:                                # %if.then.i.203.i
                                        #   in Loop: Header=BB0_82 Depth=1
	movl	%edx, 176(%rcx)
	movl	%edx, %ebp
.LBB0_84:                               # %if.end.i.205.i
                                        #   in Loop: Header=BB0_82 Depth=1
	cmpl	180(%rcx), %edx
	jle	.LBB0_86
# BB#85:                                # %if.then.10.i.206.i
                                        #   in Loop: Header=BB0_82 Depth=1
	movl	%edx, 180(%rcx)
.LBB0_86:                               # %if.end.14.i.210.i
                                        #   in Loop: Header=BB0_82 Depth=1
	movzbl	(%rdi), %edx
	cmpl	%ebp, %edx
	jge	.LBB0_88
# BB#87:                                # %if.then.i.203.i.1
                                        #   in Loop: Header=BB0_82 Depth=1
	movl	%edx, 176(%rcx)
	movl	%edx, %ebp
.LBB0_88:                               # %if.end.i.205.i.1
                                        #   in Loop: Header=BB0_82 Depth=1
	cmpl	180(%rcx), %edx
	jle	.LBB0_90
# BB#89:                                # %if.then.10.i.206.i.1
                                        #   in Loop: Header=BB0_82 Depth=1
	movl	%edx, 180(%rcx)
.LBB0_90:                               # %if.end.14.i.210.i.1
                                        #   in Loop: Header=BB0_82 Depth=1
	addq	$2, %rdi
	addl	$-2, %esi
	jne	.LBB0_82
.LBB0_91:                               # %adjust_first_last_char.exit212.i
	movq	1024(%rsp), %rcx
	movq	%rcx, 80(%rbx)
	movaps	1008(%rsp), %xmm0
	movups	%xmm0, 64(%rbx)
	movapd	944(%rsp), %xmm0
	movapd	960(%rsp), %xmm1
	movapd	976(%rsp), %xmm2
	movapd	992(%rsp), %xmm3
	movupd	%xmm3, 48(%rbx)
	movupd	%xmm2, 32(%rbx)
	movupd	%xmm1, 16(%rbx)
	movupd	%xmm0, (%rbx)
	addl	160(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 232(%rbx)
	testl	%r15d, %r15d
	movq	168(%rsp), %r12         # 8-byte Reload
	jns	.LBB0_161
	jmp	.LBB0_175
.LBB0_96:                               # %if.then.407.i
	xorl	%r15d, %r15d
	testl	$132096, %eax           # imm = 0x20400
	je	.LBB0_175
# BB#97:                                # %if.end.412.i
	movl	$-1, 104(%rsp)          # 4-byte Folded Spill
	testb	$-128, %al
	je	.LBB0_99
# BB#98:                                # %cond.true.i.157.i
	movl	56(%rbx), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
.LBB0_99:                               # %cond.end.i.161.i
	movq	88(%rbx), %rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	$0, (%rsp)
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	256(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rsi
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB0_174
# BB#100:                               # %for.cond.preheader.i.i
	movq	240(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 8(%rax)
	je	.LBB0_101
# BB#102:                               # %for.body.lr.ph.i.168.i
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	%r13, 96(%rsp)          # 8-byte Spill
	leaq	192(%rbx), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	248(%rbx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movq	232(%rsp), %r12         # 8-byte Reload
	xorpd	%xmm6, %xmm6
	movapd	%xmm4, %xmm7
	movl	$0, %ebp
                                        # implicit-def: ECX
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	xorpd	%xmm1, %xmm1
	xorpd	%xmm0, %xmm0
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
.LBB0_103:                              # %for.body.i.172.i
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm7, 160(%rsp)        # 8-byte Spill
	movsd	%xmm6, 144(%rsp)        # 8-byte Spill
	movsd	%xmm4, 152(%rsp)        # 8-byte Spill
	movsd	%xmm0, 120(%rsp)        # 8-byte Spill
	movsd	%xmm1, 128(%rsp)        # 8-byte Spill
	movq	232(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movzbl	(%rax,%rbp), %r13d
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 952(%rsp)
	movupd	%xmm0, 992(%rsp)
	movupd	%xmm0, 1048(%rsp)
	movupd	%xmm0, 1032(%rsp)
	movq	%r12, %r8
	cmoveq	%rcx, %r8
	movq	256(%rsp), %rdx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%r13, %rcx
	callq	pdf_encode_string_element
	testl	%eax, %eax
	movl	176(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, %eax
	js	.LBB0_135
# BB#104:                               # %cleanup.cont.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movl	%eax, 176(%rsp)         # 4-byte Spill
	movl	128(%r14), %edx
	cmpq	$54, %rdx
	ja	.LBB0_114
# BB#105:                               # %cleanup.cont.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movabsq	$33776997205278728, %rax # imm = 0x78000000000008
	btq	%rdx, %rax
	jae	.LBB0_114
# BB#106:                               # %land.lhs.true.i.174.i
                                        #   in Loop: Header=BB0_103 Depth=1
	testq	%rbp, %rbp
	jg	.LBB0_108
# BB#107:                               # %lor.lhs.false.54.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30560(%rax)
	jne	.LBB0_109
.LBB0_108:                              # %land.lhs.true.56.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	%r13, %rax
	shrq	$3, %rax
	movq	256(%rsp), %rcx
	movq	296(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movl	$-21, %eax
	testl	%edi, %esi
	je	.LBB0_116
.LBB0_109:                              # %if.else.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	cmpl	$53, %edx
	jne	.LBB0_114
# BB#110:                               # %if.then.67.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movslq	240(%rbx), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	testq	%rax, %rax
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	cmovsq	%rdx, %rax
	movq	(%rax), %rax
	leaq	248(%rbx,%rcx), %rcx
	cmovsq	%rdx, %rcx
	movq	(%rcx), %rbp
	movl	148(%rax), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	$0, 2912(%rsp)
	movq	$0, 2896(%rsp)
	movq	104(%rbx), %rsi
	addq	$132, %rsi
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	leaq	2912(%rsp), %rdx
	leaq	2880(%rsp), %r8
	callq	gx_lookup_fm_pair
	testl	%eax, %eax
	js	.LBB0_174
# BB#111:                               # %if.end.97.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	2880(%rsp), %rsi
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	leaq	2896(%rsp), %r9
	callq	gx_lookup_cached_char
	movq	%rax, %rcx
	movl	$-21, %eax
	testq	%rcx, %rcx
	je	.LBB0_113
# BB#112:                               # %if.else.102.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	88(%rbx), %rdi
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movl	%r13d, %edx
	movq	%r14, %rcx
	leaq	944(%rsp), %r8
	callq	pdf_char_widths
.LBB0_113:                              # %cleanup.108.thread.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB0_115
.LBB0_114:                              # %if.else.116.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	88(%rbx), %rdi
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movl	%r13d, %edx
	movq	%r14, %rcx
	leaq	944(%rsp), %r8
	callq	pdf_char_widths
.LBB0_115:                              # %if.end.123.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	testl	%eax, %eax
	js	.LBB0_116
# BB#118:                               # %if.end.130.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_122
# BB#119:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movl	72(%rdi), %eax
	cmpq	$54, %rax
	ja	.LBB0_122
# BB#120:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB0_122
# BB#121:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movss	248(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$248, %rdi
	cvtss2sd	%xmm0, %xmm0
	mulsd	952(%rsp), %xmm0
	movsd	%xmm0, 952(%rsp)
	movq	$0, 960(%rsp)
	movsd	992(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	1000(%rsp), %xmm1       # xmm1 = mem[0],zero
	leaq	992(%rsp), %rsi
	callq	gs_distance_transform
	movsd	992(%rsp), %xmm6        # xmm6 = mem[0],zero
	movsd	1000(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	952(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	960(%rsp), %xmm3        # xmm3 = mem[0],zero
	jmp	.LBB0_123
.LBB0_122:                              # %if.else.i.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movupd	952(%rsp), %xmm2
	movapd	.LCPI0_3(%rip), %xmm0   # xmm0 = [1.000000e+03,1.000000e+03]
	divpd	%xmm0, %xmm2
	movupd	%xmm2, 952(%rsp)
	movupd	992(%rsp), %xmm6
	divpd	%xmm0, %xmm6
	movupd	%xmm6, 992(%rsp)
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	movapd	%xmm6, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
.LBB0_123:                              # %pdf_char_widths_to_uts.exit.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorpd	%xmm4, %xmm4
	movsd	160(%rsp), %xmm7        # 8-byte Reload
                                        # xmm7 = mem[0],zero
	ucomisd	%xmm2, %xmm6
	movl	$1, %eax
	cmovnel	%eax, %r15d
	cmovpl	%eax, %r15d
	ucomisd	%xmm3, %xmm1
	cmovnel	%eax, %r15d
	cmovpl	%eax, %r15d
	movq	240(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movzbl	(%rax,%rbp), %ecx
	cmpl	104(%rsp), %ecx         # 4-byte Folded Reload
	sete	%cl
	movzbl	%cl, %ecx
	movsd	1032(%rsp), %xmm5       # xmm5 = mem[0],zero
	ucomisd	%xmm4, %xmm5
	jne	.LBB0_125
	jp	.LBB0_125
	jmp	.LBB0_124
.LBB0_125:                              # %pdf_char_widths_to_uts.exit.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movsd	1048(%rsp), %xmm3       # xmm3 = mem[0],zero
	ucomisd	%xmm4, %xmm3
	jne	.LBB0_126
	jnp	.LBB0_124
.LBB0_126:                              # %if.then.178.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	minsd	%xmm7, %xmm5
	movsd	1040(%rsp), %xmm4       # xmm4 = mem[0],zero
	minsd	152(%rsp), %xmm4        # 8-byte Folded Reload
	movq	136(%rsp), %xmm2        # 8-byte Folded Reload
	ucomisd	%xmm2, %xmm3
	maxsd	144(%rsp), %xmm3        # 8-byte Folded Reload
	jbe	.LBB0_128
# BB#127:                               # %if.then.228.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	1056(%rsp), %rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
.LBB0_128:                              # %cleanup.236.thread.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	movapd	%xmm4, %xmm2
	jmp	.LBB0_129
.LBB0_124:                              #   in Loop: Header=BB0_103 Depth=1
	movsd	144(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	152(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm7, %xmm5
.LBB0_129:                              # %cleanup.236.thread.i.i
                                        #   in Loop: Header=BB0_103 Depth=1
	addsd	%xmm6, %xmm0
	movsd	128(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	addl	%ecx, 92(%rsp)          # 4-byte Folded Spill
	incq	%rbp
	addq	$8, %r12
	cmpl	8(%rdx), %ebp
	movapd	%xmm3, %xmm6
	movapd	%xmm2, %xmm4
	movapd	%xmm5, %xmm7
	jb	.LBB0_103
	jmp	.LBB0_130
.LBB0_101:
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	xorpd	%xmm3, %xmm3
	movapd	%xmm2, %xmm5
	movl	$0, %ebp
	xorpd	%xmm1, %xmm1
	xorpd	%xmm0, %xmm0
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	jmp	.LBB0_130
.LBB0_116:                              # %if.then.126.i.i
	testl	%ebp, %ebp
	je	.LBB0_174
# BB#117:                               # %cleanup.236.thread102.i.i
	movsd	144(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	152(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	160(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	128(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_130:                              # %for.end.i.i
	movsd	%xmm5, 176(%rsp)        # 8-byte Spill
	movsd	%xmm2, 152(%rsp)        # 8-byte Spill
	movsd	%xmm3, 144(%rsp)        # 8-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	leaq	24(%rax), %rdi
	leaq	288(%rsp), %rsi
	callq	gs_distance_transform
	movl	(%rbx), %eax
	testb	$64, %al
	movq	96(%rsp), %r13          # 8-byte Reload
	movq	168(%rsp), %r12         # 8-byte Reload
	je	.LBB0_132
# BB#131:                               # %if.then.254.i.i
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbx), %xmm1         # xmm1 = mem[0],zero
	movl	$132, %edi
	addq	104(%rbx), %rdi
	leaq	944(%rsp), %rsi
	callq	gs_distance_transform
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	944(%rsp), %xmm0
	addpd	288(%rsp), %xmm0
	movapd	%xmm0, 288(%rsp)
	movl	(%rbx), %eax
.LBB0_132:                              # %if.end.273.i.i
	testb	$-128, %al
	je	.LBB0_134
# BB#133:                               # %if.then.278.i.i
	movsd	40(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movl	$132, %edi
	addq	104(%rbx), %rdi
	leaq	944(%rsp), %rsi
	callq	gs_distance_transform
	movl	92(%rsp), %eax          # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	944(%rsp), %xmm0
	addpd	288(%rsp), %xmm0
	movapd	%xmm0, 288(%rsp)
.LBB0_134:                              # %if.end.298.i.i
	movapd	288(%rsp), %xmm0
	movapd	%xmm0, 2800(%rsp)
	movsd	176(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jmp	.LBB0_136
.LBB0_135:                              # %cleanup.236.i.i
                                        # implicit-def: EBP
	movsd	160(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	%eax, %r15d
	movq	96(%rsp), %r13          # 8-byte Reload
	movq	168(%rsp), %r12         # 8-byte Reload
.LBB0_136:                              # %process_text_return_width.exit.i
	xorl	%esi, %esi
	testl	%r15d, %r15d
	js	.LBB0_175
# BB#137:                               # %if.end.417.i
	movl	(%rbx), %eax
	je	.LBB0_139
# BB#138:
	movq	%r12, 168(%rsp)         # 8-byte Spill
	jmp	.LBB0_59
.LBB0_139:                              # %if.then.420.i
	movsd	%xmm4, 176(%rsp)        # 8-byte Spill
	testb	$4, %ah
	jne	.LBB0_141
# BB#140:                               # %lor.lhs.false.424.i
	movq	104(%rbx), %rcx
	cmpl	$3, 252(%rcx)
	jne	.LBB0_159
.LBB0_141:                              # %if.then.429.i
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movsd	2800(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	2808(%rsp), %xmm1       # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	pdf_append_chars
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movsd	176(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	js	.LBB0_175
# BB#142:                               # %if.end.437.i
	testl	%ebp, %ebp
	jle	.LBB0_160
# BB#143:                               # %for.body.lr.ph.i.186.i
	movq	2824(%rsp), %rax
	movq	240(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	movl	176(%rax), %ecx
	xorl	%edi, %edi
	testb	$1, %bpl
	je	.LBB0_148
# BB#144:                               # %for.body.i.189.i.prol
	movzbl	(%rsi), %edx
	cmpl	%ecx, %edx
	jge	.LBB0_146
# BB#145:                               # %if.then.i.i.prol
	movl	%edx, 176(%rax)
	movl	%edx, %ecx
.LBB0_146:                              # %if.end.i.190.i.prol
	movl	$1, %edi
	cmpl	180(%rax), %edx
	jle	.LBB0_148
# BB#147:                               # %if.then.10.i.i.prol
	movl	%edx, 180(%rax)
	movl	$1, %edi
.LBB0_148:                              # %for.body.lr.ph.i.186.i.split
	cmpl	$1, %ebp
	je	.LBB0_160
# BB#149:                               # %for.body.lr.ph.i.186.i.split.split
	movl	%ebp, %edx
	subl	%edi, %edx
	leaq	1(%rdi,%rsi), %rsi
.LBB0_150:                              # %for.body.i.189.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi), %edi
	cmpl	%ecx, %edi
	jge	.LBB0_152
# BB#151:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	movl	%edi, 176(%rax)
	movl	%edi, %ecx
.LBB0_152:                              # %if.end.i.190.i
                                        #   in Loop: Header=BB0_150 Depth=1
	cmpl	180(%rax), %edi
	jle	.LBB0_154
# BB#153:                               # %if.then.10.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	movl	%edi, 180(%rax)
.LBB0_154:                              # %if.end.14.i.i
                                        #   in Loop: Header=BB0_150 Depth=1
	movzbl	(%rsi), %edi
	cmpl	%ecx, %edi
	jge	.LBB0_156
# BB#155:                               # %if.then.i.i.1
                                        #   in Loop: Header=BB0_150 Depth=1
	movl	%edi, 176(%rax)
	movl	%edi, %ecx
.LBB0_156:                              # %if.end.i.190.i.1
                                        #   in Loop: Header=BB0_150 Depth=1
	cmpl	180(%rax), %edi
	jle	.LBB0_158
# BB#157:                               # %if.then.10.i.i.1
                                        #   in Loop: Header=BB0_150 Depth=1
	movl	%edi, 180(%rax)
.LBB0_158:                              # %if.end.14.i.i.1
                                        #   in Loop: Header=BB0_150 Depth=1
	addq	$2, %rsi
	addl	$-2, %edx
	jne	.LBB0_150
	jmp	.LBB0_160
.LBB0_92:                               # %process_text_estimate_bbox.exit.thread324.i
	movq	%r13, 240(%rsp)         # 8-byte Spill
	movapd	176(%rsp), %xmm0        # 16-byte Reload
	movapd	%xmm0, 2800(%rsp)
.LBB0_93:                               # %if.then.21.i
	movq	136(%rbx), %rdi
	leaq	944(%rsp), %rsi
	callq	gx_cpath_outer_box
	xorps	%xmm0, %xmm0
	cvtsi2sdl	944(%rsp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	cvtsi2sdl	952(%rsp), %xmm1
	mulsd	%xmm3, %xmm1
	movapd	208(%rsp), %xmm4        # 16-byte Reload
	movapd	%xmm4, %xmm2
	maxsd	%xmm0, %xmm2
	movq	160(%rsp), %xmm0        # 8-byte Folded Reload
	minsd	%xmm1, %xmm0
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	ucomisd	%xmm0, %xmm2
	movq	96(%rsp), %r13          # 8-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	ja	.LBB0_95
# BB#94:                                # %if.then.21.i
	xorps	%xmm0, %xmm0
	cvtsi2sdl	948(%rsp), %xmm0
	mulsd	%xmm3, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	956(%rsp), %xmm1
	mulsd	%xmm3, %xmm1
	movapd	%xmm4, %xmm2
	maxsd	%xmm0, %xmm2
	movd	%rcx, %xmm0
	minsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_53
.LBB0_95:                               # %cleanup.i
	movapd	%xmm4, 208(%rsp)        # 16-byte Spill
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	addl	%eax, 232(%rbx)
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 144(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movapd	%xmm1, %xmm4
	jmp	.LBB0_161
.LBB0_159:                              # %if.else.441.i
	testb	$2, %ah
	movsd	176(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	je	.LBB0_161
.LBB0_160:                              # %if.then.445.i
	addl	%ebp, 232(%rbx)
.LBB0_161:                              # %finish.i
	cmpl	$0, 9528(%r13)
	je	.LBB0_168
# BB#162:                               # %if.then.556.i
	xorpd	%xmm0, %xmm0
	movsd	144(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_164
	jp	.LBB0_164
	jmp	.LBB0_163
.LBB0_164:                              # %if.then.556.i
	movq	%r12, %r14
	movq	%r13, %r12
	ucomisd	.LCPI0_1(%rip), %xmm4
	jne	.LBB0_166
	jp	.LBB0_166
	jmp	.LBB0_165
.LBB0_166:                              # %if.then.566.i
	movq	120(%rbx), %rdi
	leaq	2848(%rsp), %rsi
	movsd	%xmm4, 176(%rsp)        # 8-byte Spill
	callq	gx_path_current_point
	movq	104(%rbx), %rax
	movups	132(%rax), %xmm0
	movaps	%xmm0, 256(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2848(%rsp), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 272(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	2852(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 276(%rsp)
	leaq	256(%rsp), %rbp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	leaq	2912(%rsp), %rsi
	movsd	176(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	movq	136(%rsp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, 248(%rsp)        # 8-byte Spill
	leaq	2896(%rsp), %rsi
	movsd	176(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	leaq	2880(%rsp), %rsi
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	leaq	2864(%rsp), %rsi
	movsd	144(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_point_transform
	movsd	2920(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	2904(%rsp), %xmm1       # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	minsd	%xmm1, %xmm2
	movsd	2888(%rsp), %xmm3       # xmm3 = mem[0],zero
	movapd	%xmm1, %xmm4
	minsd	%xmm3, %xmm4
	minsd	%xmm4, %xmm2
	maxsd	%xmm1, %xmm0
	maxsd	%xmm3, %xmm1
	maxsd	%xmm1, %xmm0
	maxsd	208(%rsp), %xmm2        # 16-byte Folded Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	movd	%rcx, %xmm1
	ucomisd	%xmm0, %xmm1
	movd	%xmm0, %rax
	cmovaq	%rax, %rcx
	movapd	%xmm2, %xmm3
	jmp	.LBB0_167
.LBB0_163:
	movq	%r13, %r12
.LBB0_165:
	movq	200(%rsp), %rcx         # 8-byte Reload
	movapd	208(%rsp), %xmm3        # 16-byte Reload
.LBB0_167:                              # %if.end.824.i
	xorps	%xmm0, %xmm0
	cvtsi2sdl	456(%rbx), %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	2800(%rsp), %xmm1       # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r15d
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %r14d
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %r13d
	subl	%r15d, %r13d
	movd	%rcx, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ebp
	subl	%r14d, %ebp
	incl	9776(%r12)
	movq	136(%rbx), %rsi
	leaq	944(%rsp), %rdi
	movq	%r12, %rdx
	callq	gx_make_clip_device_on_stack
	movq	%r12, %rdi
	callq	gx_device_black
	movq	%rax, 296(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 288(%rsp)
	movl	$0, 648(%rsp)
	leaq	288(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	$252, 16(%rsp)
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%ebp, %r8d
	movl	%r13d, %r9d
	callq	gx_default_fill_triangle
	leaq	288(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	$252, 16(%rsp)
	xorl	%r8d, %r8d
	leaq	944(%rsp), %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movl	%r13d, %r9d
	callq	gx_default_fill_triangle
	decl	9776(%r12)
.LBB0_168:                              # %if.end.879.i
	movl	(%rbx), %eax
	xorl	%r15d, %r15d
	testl	$131072, %eax           # imm = 0x20000
	je	.LBB0_175
# BB#169:                               # %if.end.884.i
	testb	$2, %ah
	jne	.LBB0_170
# BB#171:                               # %if.else.903.i
	movapd	2800(%rsp), %xmm0
	movupd	%xmm0, 432(%rbx)
	jmp	.LBB0_172
.LBB0_170:                              # %if.then.888.i
	movsd	2800(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	2808(%rsp), %xmm1       # xmm1 = mem[0],zero
	movl	$132, %edi
	addq	104(%rbx), %rdi
	leaq	944(%rsp), %rsi
	callq	gs_distance_transform_inverse
	movupd	432(%rbx), %xmm0
	addpd	944(%rsp), %xmm0
	movupd	%xmm0, 432(%rbx)
.LBB0_172:                              # %if.end.906.i
	movq	88(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	24(%rax), %rdi
	callq	*128(%rdi)
	movl	$st_gs_state, %ecx
	movl	$-28, %r15d
	cmpq	%rcx, %rax
	jne	.LBB0_175
# BB#173:                               # %if.end.i.222.i
	movq	104(%rbx), %rbp
	movq	%rbp, %rdi
	callq	gx_current_path
	xorps	%xmm0, %xmm0
	cvtsi2sdl	456(%rbx), %xmm0
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	2800(%rsp), %xmm0
	cvtsi2sdl	460(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	2808(%rsp), %xmm1
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_moveto_aux
.LBB0_174:                              # %pdf_process_string.exit
	movl	%eax, %r15d
.LBB0_175:                              # %cleanup
	movl	%r15d, %eax
	addq	$2936, %rsp             # imm = 0xB78
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_process_string_aux, .Lfunc_end0-pdf_process_string_aux
	.cfi_endproc

	.globl	pdf_add_ToUnicode
	.align	16, 0x90
	.type	pdf_add_ToUnicode,@function
pdf_add_ToUnicode:                      # @pdf_add_ToUnicode
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movq	%r9, %rbp
	movq	%r8, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	je	.LBB1_21
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movl	%r12d, %edx
	callq	*208(%rbx)
	movq	%rax, %r13
	testq	%rbp, %rbp
	je	.LBB1_10
# BB#2:                                 # %if.end
	cmpq	$-1, %r13
	jne	.LBB1_10
# BB#3:                                 # %land.lhs.true.5
	cmpl	$7, 8(%rbp)
	jne	.LBB1_21
# BB#4:                                 # %if.then.8
	movq	(%rbp), %r13
	movl	$.L.str, %esi
	movl	$3, %edx
	movq	%r13, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_21
# BB#5:                                 # %if.then.10
	movzbl	3(%r13), %esi
	movl	$.L.str.1, %edi
	callq	strchr
	movq	%rax, %r13
	movq	(%rbp), %rax
	movzbl	4(%rax), %esi
	movl	$.L.str.1, %edi
	callq	strchr
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%rbp), %rax
	movzbl	5(%rax), %esi
	movl	$.L.str.1, %edi
	callq	strchr
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	(%rbp), %rax
	movzbl	6(%rax), %esi
	movl	$.L.str.1, %edi
	callq	strchr
	testq	%r13, %r13
	je	.LBB1_21
# BB#6:                                 # %if.then.10
	movq	16(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movq	%rcx, %rdx
	je	.LBB1_21
# BB#7:                                 # %if.then.10
	movq	8(%rsp), %rsi           # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_21
# BB#8:                                 # %if.then.10
	testq	%rax, %rax
	je	.LBB1_21
# BB#9:                                 # %if.then.37
	movl	$.L.str.1, %ecx
	subq	%rcx, %r13
	shlq	$12, %r13
	subq	%rcx, %rdx
	shlq	$8, %rdx
	subq	%rcx, %rsi
	shlq	$4, %rsi
	subq	%rcx, %r13
	addq	%rdx, %r13
	addq	%rsi, %r13
	addq	%rax, %r13
.LBB1_10:                               # %if.end.53
	cmpq	$-1, %r13
	je	.LBB1_21
# BB#11:                                # %if.then.56
	movq	152(%r14), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_20
# BB#12:                                # %if.then.59
	leaq	152(%r14), %rbp
	movl	128(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_17
# BB#13:                                # %if.then.59
	cmpl	$11, %eax
	jne	.LBB1_14
.LBB1_17:                               # %if.then.69
	movl	$2, %ecx
	movl	$65536, %edx            # imm = 0x10000
	jmp	.LBB1_18
.LBB1_14:                               # %if.then.59
	cmpl	$9, %eax
	jne	.LBB1_15
# BB#16:                                # %if.then.62
	movl	488(%rbx), %edx
	movl	$2, %ecx
	jmp	.LBB1_18
.LBB1_15:
	movl	$1, %ecx
	movl	$256, %edx              # imm = 0x100
.LBB1_18:                               # %if.end.71
	movq	1728(%r15), %rdi
	movl	16(%r14), %esi
	movq	%rbp, %r8
	callq	gs_cmap_ToUnicode_alloc
	testl	%eax, %eax
	js	.LBB1_22
# BB#19:                                # %if.end.80
	movq	(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
.LBB1_20:                               # %if.then.84
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	gs_cmap_ToUnicode_add_pair
.LBB1_21:                               # %cleanup.90
	xorl	%eax, %eax
.LBB1_22:                               # %cleanup.90
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_add_ToUnicode, .Lfunc_end1-pdf_add_ToUnicode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.globl	pdf_used_charproc_resources
	.align	16, 0x90
	.type	pdf_used_charproc_resources,@function
pdf_used_charproc_resources:            # @pdf_used_charproc_resources
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 32
	movq	56(%rsi), %rcx
	movq	26664(%rdi), %rdx
	xorl	%eax, %eax
	testq	%rcx, %rdx
	jne	.LBB2_5
# BB#1:                                 # %if.end
	orq	%rcx, %rdx
	movq	%rdx, 56(%rsi)
	movsd	9368(%rdi), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI2_0(%rip), %xmm0
	jae	.LBB2_5
# BB#2:                                 # %if.end.4
	movl	72(%rsi), %ecx
	cmpq	$54, %rcx
	ja	.LBB2_5
# BB#3:                                 # %if.end.4
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB2_5
# BB#4:                                 # %if.then.17
	movq	%rdi, 8(%rsp)
	movq	288(%rsi), %rdi
	leaq	8(%rsp), %rsi
	movl	$process_resources1, %edx
	callq	cos_dict_forall
.LBB2_5:                                # %return
	addq	$24, %rsp
	retq
.Lfunc_end2:
	.size	pdf_used_charproc_resources, .Lfunc_end2-pdf_used_charproc_resources
	.cfi_endproc

	.align	16, 0x90
	.type	process_resources1,@function
process_resources1:                     # @process_resources1
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
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 64
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
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	movl	$8031, %r14d            # imm = 0x1F5F
	.align	16, 0x90
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	btq	%rbx, %r14
	jae	.LBB3_3
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	process_resources1.rn(,%rbx,8), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movl	%eax, %esi
	movq	%r13, %rdx
	movl	%r12d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB3_5
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	incq	%rbx
	cmpq	$32, %rbx
	jl	.LBB3_1
# BB#4:                                 # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_5:                                # %if.end.10
	movl	%ebx, 8(%r15)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$process_resources2, %edx
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cos_dict_forall         # TAILCALL
.Lfunc_end3:
	.size	process_resources1, .Lfunc_end3-process_resources1
	.cfi_endproc

	.globl	adjust_first_last_char
	.align	16, 0x90
	.type	adjust_first_last_char,@function
adjust_first_last_char:                 # @adjust_first_last_char
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	jle	.LBB4_17
# BB#1:                                 # %for.body.lr.ph
	movl	176(%rdi), %eax
	xorl	%r8d, %r8d
	testb	$1, %dl
	je	.LBB4_6
# BB#2:                                 # %for.body.prol
	movzbl	(%rsi), %ecx
	cmpl	%eax, %ecx
	jge	.LBB4_4
# BB#3:                                 # %if.then.prol
	movl	%ecx, 176(%rdi)
	movl	%ecx, %eax
.LBB4_4:                                # %if.end.prol
	movl	$1, %r8d
	cmpl	180(%rdi), %ecx
	jle	.LBB4_6
# BB#5:                                 # %if.then.10.prol
	movl	%ecx, 180(%rdi)
	movl	$1, %r8d
.LBB4_6:                                # %for.body.lr.ph.split
	cmpl	$1, %edx
	je	.LBB4_17
# BB#7:                                 # %for.body.lr.ph.split.split
	subl	%r8d, %edx
	leaq	1(%r8,%rsi), %rcx
	.align	16, 0x90
.LBB4_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %esi
	cmpl	%eax, %esi
	jge	.LBB4_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%esi, 176(%rdi)
	movl	%esi, %eax
.LBB4_10:                               # %if.end
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	180(%rdi), %esi
	jle	.LBB4_12
# BB#11:                                # %if.then.10
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%esi, 180(%rdi)
.LBB4_12:                               # %if.end.14
                                        #   in Loop: Header=BB4_8 Depth=1
	movzbl	(%rcx), %esi
	cmpl	%eax, %esi
	jge	.LBB4_14
# BB#13:                                # %if.then.1
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%esi, 176(%rdi)
	movl	%esi, %eax
.LBB4_14:                               # %if.end.1
                                        #   in Loop: Header=BB4_8 Depth=1
	cmpl	180(%rdi), %esi
	jle	.LBB4_16
# BB#15:                                # %if.then.10.1
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%esi, 180(%rdi)
.LBB4_16:                               # %if.end.14.1
                                        #   in Loop: Header=BB4_8 Depth=1
	addq	$2, %rcx
	addl	$-2, %edx
	jne	.LBB4_8
.LBB4_17:                               # %for.end
	retq
.Lfunc_end4:
	.size	adjust_first_last_char, .Lfunc_end4-adjust_first_last_char
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	pdf_shift_text_currentpoint
	.align	16, 0x90
	.type	pdf_shift_text_currentpoint,@function
pdf_shift_text_currentpoint:            # @pdf_shift_text_currentpoint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	88(%rbx), %rax
	movq	104(%rbx), %rsi
	movq	24(%rax), %rdi
	callq	*128(%rdi)
	movl	$st_gs_state, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_2
# BB#1:                                 # %cleanup
	movl	$-28, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_2:                                # %if.end
	movq	104(%rbx), %r15
	movq	%r15, %rdi
	callq	gx_current_path
	cvtsi2sdl	456(%rbx), %xmm0
	movsd	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	(%r14), %xmm0
	cvtsi2sdl	460(%rbx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	8(%r14), %xmm1
	movq	%r15, %rdi
	movq	%rax, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_moveto_aux           # TAILCALL
.Lfunc_end5:
	.size	pdf_shift_text_currentpoint, .Lfunc_end5-pdf_shift_text_currentpoint
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI6_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI6_4:
	.quad	4652007308841189376     # double 1.000000e+03
	.quad	4652007308841189376     # double 1.000000e+03
.LCPI6_5:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_2:
	.quad	4562254509136412672     # double 0.0010000000474974513
.LCPI6_3:
	.quad	4607182418800017408     # double 1
.LCPI6_6:
	.quad	0                       # double 0
	.text
	.globl	process_text_modify_width
	.align	16, 0x90
	.type	process_text_modify_width,@function
process_text_modify_width:              # @process_text_modify_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$936, %rsp              # imm = 0x3A8
.Ltmp52:
	.cfi_def_cfa_offset 992
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	88(%rbp), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	(%rbp), %eax
	movq	$-1, 136(%rsp)          # 8-byte Folded Spill
	testb	$-128, %al
	je	.LBB6_2
# BB#1:                                 # %cond.true
	movslq	56(%rbp), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
.LBB6_2:                                # %cond.end
	movq	$0, 928(%rsp)
	movl	128(%r12), %ecx
	cmpq	$54, %rcx
	ja	.LBB6_6
# BB#3:                                 # %cond.end
	movabsq	$33776997205278728, %rdx # imm = 0x78000000000008
	btq	%rcx, %rdx
	jae	.LBB6_6
# BB#4:                                 # %if.then
	movq	$0, (%rsp)
	leaq	928(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB6_102
# BB#5:                                 # %if.then.if.end.21_crit_edge
	movl	(%rbp), %eax
.LBB6_6:                                # %if.end.21
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	movq	(%r14), %rcx
	movq	%rcx, 8(%rbp)
	movl	8(%r14), %ecx
	movl	%ecx, 16(%rbp)
	movl	$0, 232(%rbp)
	andl	$-64, %eax
	orl	$1, %eax
	movl	%eax, (%rbp)
	leaq	24(%rbx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movss	40(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	44(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 104(%rsp)        # 8-byte Spill
	leaq	472(%rbp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%r12, 216(%rsp)         # 8-byte Spill
	leaq	80(%r12), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	192(%rbp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	248(%rbp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	leaq	288(%rsp), %r12
	leaq	744(%rsp), %r14
	leaq	736(%rsp), %r13
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 176(%rsp)        # 16-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 224(%rsp)         # 4-byte Spill
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_103:                              # %cleanup.624.for.cond_crit_edge
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	232(%rbp), %ebx
.LBB6_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$448, %edx              # imm = 0x1C0
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	400(%rsp), %rax
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*256(%rax)
	cmpl	$2, %eax
	jne	.LBB6_9
# BB#8:                                 # %if.then.43
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_text_enum_copy_dynamic
	movl	$2, %r15d
	jmp	.LBB6_99
	.align	16, 0x90
.LBB6_9:                                # %if.end.44
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$1, %r15d
	testl	%eax, %eax
	js	.LBB6_10
# BB#11:                                # %if.end.48
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r14, %r13
	cmpl	$0, 992(%rsp)
	je	.LBB6_21
# BB#12:                                # %if.then.50
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	528(%rsp), %rax
	shlq	$4, %rax
	movq	536(%rsp,%rax), %r14
	cmpl	$3, 128(%r14)
	jne	.LBB6_15
# BB#13:                                # %if.then.56
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	$0, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	leaq	240(%rsp), %rdx
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB6_19
# BB#14:                                # %cleanup.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	240(%rsp), %rdi
	movq	736(%rsp), %rsi
	callq	pdf_find_glyph
	movq	%rax, 744(%rsp)
	movb	%al, 287(%rsp)
	movq	88(%rbp), %rdi
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	leaq	800(%rsp), %r8
	callq	pdf_char_widths
	movl	$1, %r14d
	movl	$3, 228(%rsp)           # 4-byte Folded Spill
	jmp	.LBB6_28
.LBB6_10:                               #   in Loop: Header=BB6_7 Depth=1
	movl	%eax, 224(%rsp)         # 4-byte Spill
	jmp	.LBB6_99
.LBB6_21:                               # %if.else.84
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movl	$0, %r8d
	je	.LBB6_23
# BB#22:                                # %cond.true.87
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	232(%rbp), %eax
	leaq	(%rcx,%rax,8), %r8
.LBB6_23:                               # %cond.end.90
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdx
	movq	744(%rsp), %rcx
	movq	208(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rsi         # 8-byte Reload
	callq	pdf_encode_string_element
	testl	%eax, %eax
	js	.LBB6_41
# BB#24:                                # %if.then.98
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rbx         # 8-byte Reload
	movl	128(%rbx), %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movq	744(%rsp), %rax
	cmpq	$-1, %rax
	jne	.LBB6_36
# BB#25:                                # %if.then.98
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	736(%rsp), %rdx
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	je	.LBB6_36
# BB#26:                                # %if.then.103
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	148(%rbx), %esi
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	leaq	800(%rsp), %r8
	callq	pdf_glyph_widths
	jmp	.LBB6_27
.LBB6_15:                               # %if.else
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	176(%rax), %rdi
	movl	72(%rdi), %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	148(%rax), %esi
	movq	736(%rsp), %rdx
	cmpl	$0, 468(%rbp)
	movq	120(%rsp), %r9          # 8-byte Reload
	jne	.LBB6_17
# BB#16:                                # %select.mid
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%r9d, %r9d
.LBB6_17:                               # %select.end
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r14, %rcx
	leaq	800(%rsp), %r8
	callq	pdf_glyph_widths
	movl	$1, %r14d
	jmp	.LBB6_28
.LBB6_36:                               # %if.else.108
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	88(%rbp), %rdi
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rsi
	movl	%eax, %edx
	movq	%rbx, %rcx
	leaq	800(%rsp), %r8
	callq	pdf_char_widths
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB6_37
.LBB6_27:                               # %if.end.174
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	192(%rsp), %rbx         # 8-byte Reload
.LBB6_28:                               # %if.end.174
                                        #   in Loop: Header=BB6_7 Depth=1
	testl	%eax, %eax
	jns	.LBB6_29
	jmp	.LBB6_41
.LBB6_37:                               # %land.lhs.true.116
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$53, 128(%rbx)
	jne	.LBB6_38
# BB#39:                                # %if.then.120
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	240(%rbp), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	testq	%rax, %rax
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmovsq	%rdx, %rax
	movq	(%rax), %rax
	leaq	248(%rbp,%rcx), %rcx
	cmovsq	%rdx, %rcx
	movq	(%rcx), %rdi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movl	148(%rax), %r14d
	movq	$0, 240(%rsp)
	movq	$0, 272(%rsp)
	movq	104(%rbp), %rsi
	addq	$132, %rsi
	xorl	%ecx, %ecx
	leaq	240(%rsp), %rdx
	leaq	264(%rsp), %r8
	callq	gx_lookup_fm_pair
	testl	%eax, %eax
	movq	192(%rsp), %rbx         # 8-byte Reload
	js	.LBB6_18
# BB#40:                                # %cleanup.160.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	264(%rsp), %rsi
	movq	744(%rsp), %rdx
	movl	%r14d, %ecx
	movl	$1, %r14d
	movl	$1, %r8d
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	272(%rsp), %r9
	callq	gx_lookup_cached_char
	testq	%rax, %rax
	movl	$-21, %eax
	jne	.LBB6_29
.LBB6_41:                               # %if.then.177
                                        #   in Loop: Header=BB6_7 Depth=1
	testl	%ebx, %ebx
	setg	%cl
	movzbl	%cl, %r15d
	movl	224(%rsp), %ecx         # 4-byte Reload
	cmovlel	%eax, %ecx
	movl	%ecx, 224(%rsp)         # 4-byte Spill
	incl	%r15d
	jmp	.LBB6_20
.LBB6_38:                               #   in Loop: Header=BB6_7 Depth=1
	movq	192(%rsp), %rbx         # 8-byte Reload
.LBB6_29:                               # %if.end.182
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$42, 228(%rsp)          # 4-byte Folded Reload
	je	.LBB6_31
# BB#30:                                # %if.end.182
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$11, 228(%rsp)          # 4-byte Folded Reload
	jne	.LBB6_32
.LBB6_31:                               # %if.then.188
                                        #   in Loop: Header=BB6_7 Depth=1
	movapd	800(%rsp), %xmm1
	movapd	.LCPI6_0(%rip), %xmm0   # xmm0 = [5.000000e-01,5.000000e-01]
	addpd	%xmm0, %xmm1
	movapd	%xmm1, 144(%rsp)        # 16-byte Spill
	movapd	%xmm1, %xmm0
	callq	floor
	movapd	%xmm0, 192(%rsp)        # 16-byte Spill
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, 800(%rsp)
	movapd	816(%rsp), %xmm0
	addpd	.LCPI6_0(%rip), %xmm0
	movapd	%xmm0, 144(%rsp)        # 16-byte Spill
	callq	floor
	movapd	%xmm0, 192(%rsp)        # 16-byte Spill
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, 816(%rsp)
	movapd	832(%rsp), %xmm0
	addpd	.LCPI6_0(%rip), %xmm0
	movapd	%xmm0, 144(%rsp)        # 16-byte Spill
	callq	floor
	movapd	%xmm0, 192(%rsp)        # 16-byte Spill
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, 832(%rsp)
	movapd	848(%rsp), %xmm0
	addpd	.LCPI6_0(%rip), %xmm0
	movapd	%xmm0, 144(%rsp)        # 16-byte Spill
	callq	floor
	movapd	%xmm0, 192(%rsp)        # 16-byte Spill
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, 848(%rsp)
	movapd	864(%rsp), %xmm0
	addpd	.LCPI6_0(%rip), %xmm0
	movapd	%xmm0, 144(%rsp)        # 16-byte Spill
	callq	floor
	movapd	%xmm0, 192(%rsp)        # 16-byte Spill
	movapd	144(%rsp), %xmm0        # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	192(%rsp), %xmm1        # 16-byte Reload
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, 864(%rsp)
.LBB6_32:                               # %if.end.260
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_text_enum_copy_dynamic
	cmpl	$0, 992(%rsp)
	jne	.LBB6_34
# BB#33:                                # %if.end.260
                                        #   in Loop: Header=BB6_7 Depth=1
	testl	%r14d, %r14d
	je	.LBB6_34
# BB#42:                                # %if.else.283
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	744(%rsp), %rax
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	200(%rcx), %rcx
	shlq	$4, %rax
	movups	(%rcx,%rax), %xmm1
	movq	%r13, %r14
	leaq	736(%rsp), %r13
	movq	216(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB6_43
.LBB6_34:                               # %if.then.264
                                        #   in Loop: Header=BB6_7 Depth=1
	xorps	%xmm1, %xmm1
	cmpl	$0, 880(%rsp)
	movq	%r13, %r14
	leaq	736(%rsp), %r13
	movq	216(%rsp), %rdx         # 8-byte Reload
	je	.LBB6_43
# BB#35:                                # %if.then.266
                                        #   in Loop: Header=BB6_7 Depth=1
	movapd	864(%rsp), %xmm1
	movupd	824(%rsp), %xmm0
	subpd	%xmm0, %xmm1
.LBB6_43:                               # %if.end.289
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, 148(%rdx)
	setne	%al
	cmpl	$0, 884(%rsp)
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movd	%eax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	psllq	$63, %xmm0
	psrad	$31, %xmm0
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	movdqa	%xmm0, %xmm2
	pandn	%xmm1, %xmm2
	xorpd	.LCPI6_1(%rip), %xmm1
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	ucomisd	.LCPI6_6, %xmm1
	jne	.LBB6_45
	jp	.LBB6_45
# BB#44:                                # %if.end.289
                                        #   in Loop: Header=BB6_7 Depth=1
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	ucomisd	.LCPI6_6, %xmm0
	jne	.LBB6_45
	jnp	.LBB6_56
.LBB6_45:                               # %if.then.310
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$11, 228(%rsp)          # 4-byte Folded Reload
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	je	.LBB6_48
# BB#46:                                # %if.then.310
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$42, 228(%rsp)          # 4-byte Folded Reload
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	je	.LBB6_48
# BB#47:                                # %if.else.317
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	.LCPI6_3(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB6_48:                               # %if.end.318
                                        #   in Loop: Header=BB6_7 Depth=1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movapd	%xmm0, 240(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	cmpl	$0, 992(%rsp)
	leaq	240(%rsp), %rsi
	je	.LBB6_49
# BB#50:                                # %if.then.325
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movslq	240(%rbp), %rax
	shlq	$4, %rax
	movq	248(%rbp,%rax), %rdi
	addq	$80, %rdi
	movq	%rsi, %rbx
	callq	gs_distance_transform
	movq	%rbx, %rsi
	movsd	240(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm1        # xmm1 = mem[0],zero
	jmp	.LBB6_51
.LBB6_49:                               #   in Loop: Header=BB6_7 Depth=1
	movq	%rbx, 192(%rsp)         # 8-byte Spill
.LBB6_51:                               # %if.end.337
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rsi, %rbx
	callq	gs_distance_transform
	movsd	240(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	104(%rbp), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	movq	%rbx, %rsi
	callq	gs_distance_transform
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	248(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	.LCPI6_6, %xmm1
	jne	.LBB6_53
	jp	.LBB6_53
# BB#52:                                # %if.end.337
                                        #   in Loop: Header=BB6_7 Depth=1
	ucomisd	.LCPI6_6, %xmm0
	jne	.LBB6_53
	jnp	.LBB6_55
.LBB6_53:                               # %if.then.354
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	112(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	176(%rsp), %xmm3        # 16-byte Reload
	addsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movq	232(%rsp), %rsi         # 8-byte Reload
	movss	%xmm1, 40(%rsi)
	movapd	%xmm3, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	addsd	104(%rsp), %xmm1        # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 44(%rsi)
	movq	208(%rsp), %rdi         # 8-byte Reload
	callq	pdf_set_text_state_values
	testl	%eax, %eax
	js	.LBB6_54
.LBB6_55:                               # %cleanup.380.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	192(%rsp), %rbx         # 8-byte Reload
.LBB6_56:                               # %if.end.384
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	928(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_60
# BB#57:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	72(%rdi), %eax
	cmpq	$54, %rax
	ja	.LBB6_60
# BB#58:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_7 Depth=1
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB6_60
# BB#59:                                # %if.then.i
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r14, %r13
	movq	%rdx, %r14
	movss	248(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$248, %rdi
	cvtss2sd	%xmm0, %xmm0
	mulsd	808(%rsp), %xmm0
	movsd	%xmm0, 808(%rsp)
	movq	$0, 816(%rsp)
	movsd	848(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	856(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	848(%rsp), %rsi
	callq	gs_distance_transform
	jmp	.LBB6_61
.LBB6_60:                               # %if.else.i
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r14, %r13
	movq	%rdx, %r14
	movupd	808(%rsp), %xmm0
	movapd	.LCPI6_4(%rip), %xmm1   # xmm1 = [1.000000e+03,1.000000e+03]
	divpd	%xmm1, %xmm0
	movupd	%xmm0, 808(%rsp)
	movapd	848(%rsp), %xmm0
	divpd	%xmm1, %xmm0
	movapd	%xmm0, 848(%rsp)
.LBB6_61:                               # %pdf_char_widths_to_uts.exit
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	(%rbp), %eax
	testl	$263168, %eax           # imm = 0x40400
	je	.LBB6_84
# BB#62:                                # %if.then.389
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%rbx, %r12
	movq	232(%rsp), %rbx         # 8-byte Reload
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	808(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	816(%rsp), %xmm1
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	784(%rsp), %rsi
	callq	gs_distance_transform
	cmpl	$0, 148(%r14)
	je	.LBB6_63
# BB#64:                                # %land.lhs.true.407
                                        #   in Loop: Header=BB6_7 Depth=1
	xorpd	%xmm0, %xmm0
	cmpl	$0, 884(%rsp)
	movq	%r12, %rbx
	je	.LBB6_66
# BB#65:                                # %land.lhs.true.418
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	cmpl	$0, 884(%rsp)
	jne	.LBB6_67
.LBB6_66:                               # %cond.true.421
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB6_67
.LBB6_84:                               # %if.else.502
                                        #   in Loop: Header=BB6_7 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 784(%rsp)
	movq	%r13, %r14
	leaq	288(%rsp), %r12
	leaq	736(%rsp), %r13
	jmp	.LBB6_85
.LBB6_63:                               # %cond.end.413.thread218
                                        #   in Loop: Header=BB6_7 Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movq	%r12, %rbx
.LBB6_67:                               # %cond.end.425
                                        #   in Loop: Header=BB6_7 Depth=1
	cvtss2sd	%xmm1, %xmm1
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	752(%rsp), %rsi
	callq	gs_distance_transform
	movapd	752(%rsp), %xmm0
	addpd	784(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, 744(%rsp)
	movq	%r14, %rcx
	jne	.LBB6_68
# BB#69:                                # %land.lhs.true.440
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$1, 1000(%rsp)
	movq	%r13, %r14
	leaq	736(%rsp), %r13
	je	.LBB6_71
# BB#70:                                # %land.lhs.true.440
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	348(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB6_77
.LBB6_71:                               # %if.then.445
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, 148(%rcx)
	je	.LBB6_72
# BB#73:                                # %land.lhs.true.448
                                        #   in Loop: Header=BB6_7 Depth=1
	xorpd	%xmm0, %xmm0
	cmpl	$0, 884(%rsp)
	je	.LBB6_75
# BB#74:                                # %land.lhs.true.459
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movss	52(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	cmpl	$0, 884(%rsp)
	jne	.LBB6_76
.LBB6_75:                               # %cond.true.462
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movss	52(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB6_76
.LBB6_68:                               #   in Loop: Header=BB6_7 Depth=1
	movq	%r13, %r14
	leaq	736(%rsp), %r13
	jmp	.LBB6_77
.LBB6_54:                               # %cleanup.380.thread191
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$2, %r15d
	jmp	.LBB6_99
.LBB6_72:                               # %cond.end.454.thread223
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movss	52(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
.LBB6_76:                               # %cond.end.466
                                        #   in Loop: Header=BB6_7 Depth=1
	cvtss2sd	%xmm1, %xmm1
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	752(%rsp), %rsi
	callq	gs_distance_transform
	movapd	752(%rsp), %xmm0
	addpd	784(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
.LBB6_77:                               # %if.end.478
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, 992(%rsp)
	leaq	288(%rsp), %r12
	je	.LBB6_80
# BB#78:                                # %if.end.478
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$3, 228(%rsp)           # 4-byte Folded Reload
	jne	.LBB6_80
# BB#79:                                # %if.then.483
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$1, %edx
	movq	208(%rsp), %rdi         # 8-byte Reload
	leaq	287(%rsp), %rsi
	jmp	.LBB6_81
.LBB6_80:                               # %if.else.488
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	%ebx, %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rsi
	addq	%rax, %rsi
	movl	232(%rbp), %edx
	subl	%eax, %edx
	movq	208(%rsp), %rdi         # 8-byte Reload
.LBB6_81:                               # %if.end.497
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	992(%rsp), %ecx
	callq	pdf_append_chars
	testl	%eax, %eax
	js	.LBB6_82
# BB#83:                                # %if.end.497.if.end.505_crit_edge
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	(%rbp), %eax
.LBB6_85:                               # %if.end.505
                                        #   in Loop: Header=BB6_7 Depth=1
	testb	$1, %ah
	jne	.LBB6_86
# BB#89:                                # %if.else.525
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	848(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	856(%rsp), %xmm1
	movq	168(%rsp), %rdi         # 8-byte Reload
	leaq	768(%rsp), %rsi
	callq	gs_distance_transform
	testb	$64, (%rbp)
	je	.LBB6_91
# BB#90:                                # %if.then.545
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	24(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbp), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	752(%rsp), %rsi
	callq	gs_distance_transform
	movapd	752(%rsp), %xmm0
	addpd	768(%rsp), %xmm0
	movapd	%xmm0, 768(%rsp)
.LBB6_91:                               # %if.end.560
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, 744(%rsp)
	jne	.LBB6_95
# BB#92:                                # %land.lhs.true.564
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$1, 1000(%rsp)
	je	.LBB6_94
# BB#93:                                # %land.lhs.true.564
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	348(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB6_95
.LBB6_94:                               # %if.then.570
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	40(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rbp), %xmm1         # xmm1 = mem[0],zero
	movq	104(%rbp), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	752(%rsp), %rsi
	callq	gs_distance_transform
	movapd	752(%rsp), %xmm0
	addpd	768(%rsp), %xmm0
	movapd	%xmm0, 768(%rsp)
	jmp	.LBB6_95
.LBB6_86:                               # %if.then.510
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	236(%rbp), %esi
	leal	1(%rsi), %eax
	movl	%eax, 236(%rbp)
	movq	%rbp, %rdi
	leaq	240(%rsp), %rdx
	callq	gs_text_replaced_width
	testl	%eax, %eax
	js	.LBB6_87
# BB#88:                                # %cleanup.522.thread
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	240(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	104(%rbp), %rdi
	movl	$132, %eax
	addq	%rax, %rdi
	leaq	768(%rsp), %rsi
	callq	gs_distance_transform
.LBB6_95:                               # %if.end.586
                                        #   in Loop: Header=BB6_7 Depth=1
	movapd	768(%rsp), %xmm0
	movapd	176(%rsp), %xmm1        # 16-byte Reload
	addpd	%xmm0, %xmm1
	movapd	%xmm1, 176(%rsp)        # 16-byte Spill
	ucomisd	784(%rsp), %xmm0
	jne	.LBB6_97
	jp	.LBB6_97
# BB#96:                                # %if.end.586
                                        #   in Loop: Header=BB6_7 Depth=1
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	ucomisd	792(%rsp), %xmm0
	jne	.LBB6_97
	jnp	.LBB6_98
.LBB6_97:                               # %if.then.602
                                        #   in Loop: Header=BB6_7 Depth=1
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	176(%rsp), %xmm1        # 16-byte Reload
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	232(%rsp), %rsi         # 8-byte Reload
	movss	%xmm0, 40(%rsi)
	movapd	%xmm1, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	addsd	104(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 44(%rsi)
	movq	208(%rsp), %rdi         # 8-byte Reload
	callq	pdf_set_text_state_values
	movl	$2, %r15d
	testl	%eax, %eax
	js	.LBB6_99
.LBB6_98:                               # %if.end.623
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	$0, 30560(%rax)
	xorl	%r15d, %r15d
	jmp	.LBB6_99
.LBB6_82:                               #   in Loop: Header=BB6_7 Depth=1
	movl	$2, %r15d
	jmp	.LBB6_99
.LBB6_87:                               # %cleanup.522.thread194
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$-28, 224(%rsp)         # 4-byte Folded Spill
	jmp	.LBB6_99
.LBB6_18:                               # %cleanup.160
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	$1, %r15d
.LBB6_19:                               # %cleanup.81
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	%eax, 224(%rsp)         # 4-byte Spill
.LBB6_20:                               # %cleanup.624
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	%r13, %r14
	leaq	736(%rsp), %r13
	.align	16, 0x90
.LBB6_99:                               # %cleanup.624
                                        #   in Loop: Header=BB6_7 Depth=1
	testl	%r15d, %r15d
	je	.LBB6_103
# BB#100:                               # %cleanup.624
	cmpl	$2, %r15d
	movl	224(%rsp), %eax         # 4-byte Reload
	jne	.LBB6_102
# BB#101:                               # %for.end
	movq	80(%rsp), %rax          # 8-byte Reload
	movapd	176(%rsp), %xmm0        # 16-byte Reload
	movupd	%xmm0, (%rax)
	xorl	%eax, %eax
.LBB6_102:                              # %cleanup.638
	addq	$936, %rsp              # imm = 0x3A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	process_text_modify_width, .Lfunc_end6-process_text_modify_width
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_char_widths,@function
pdf_char_widths:                        # @pdf_char_widths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 224
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %r13
	movl	%edx, %r12d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	16(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	32(%rsp), %r8
	leaq	28(%rsp), %r9
	movq	%r13, %rsi
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB7_37
# BB#1:                                 # %if.end
	movl	$-28, %eax
	cmpq	%r15, 16(%rsp)
	jne	.LBB7_37
# BB#2:                                 # %if.end.3
	movl	$-15, %eax
	cmpl	$255, %r12d
	ja	.LBB7_37
# BB#3:                                 # %if.end.7
	cmpl	%r12d, 24(%rsp)
	movl	$-28, %eax
	jle	.LBB7_37
# BB#4:                                 # %if.end.10
	testq	%rbp, %rbp
	leaq	48(%rsp), %r14
	cmovneq	%rbp, %r14
	movl	128(%r13), %edx
	cmpq	$54, %rdx
	ja	.LBB7_6
# BB#5:                                 # %if.end.10
	movabsq	$33776997205278728, %rax # imm = 0x78000000000008
	btq	%rdx, %rax
	jb	.LBB7_24
.LBB7_6:                                # %land.lhs.true.26
	movslq	%r12d, %rbp
	movq	32(%rsp), %rax
	movsd	(%rax,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_22
	jp	.LBB7_22
# BB#7:                                 # %if.then.28
	movq	192(%r15), %rax
	movq	%rbp, %rcx
	shlq	$5, %rcx
	movq	(%rax,%rcx), %rbx
	movl	148(%r13), %esi
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	pdf_glyph_widths
	testl	%eax, %eax
	js	.LBB7_37
# BB#8:                                 # %if.end.35
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 104(%r14)
	movupd	%xmm0, 88(%r14)
	testl	%eax, %eax
	jle	.LBB7_12
# BB#9:                                 # %if.end.35
	movl	148(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB7_12
# BB#10:                                # %land.lhs.true.47
	cmpl	$0, 80(%r14)
	jne	.LBB7_12
# BB#11:                                # %if.then.48
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	pdf_glyph_widths
.LBB7_12:                               # %if.end.50
	movl	80(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB7_14
# BB#13:                                # %if.then.53
	movq	200(%r15), %rdx
	movq	%rbp, %rsi
	shlq	$4, %rsi
	movupd	64(%r14), %xmm0
	movupd	24(%r14), %xmm1
	subpd	%xmm1, %xmm0
	jmp	.LBB7_15
.LBB7_22:                               # %if.else.114
	movl	%edx, %eax
	cmpl	$54, %edx
	ja	.LBB7_27
# BB#23:                                # %if.else.114
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB7_27
.LBB7_24:                               # %if.then.129
	movl	%r12d, %eax
	sarl	$3, %eax
	movslq	%eax, %rsi
	movq	136(%r15), %rax
	movzbl	(%rax,%rsi), %ebp
	movb	%r12b, %cl
	andb	$7, %cl
	movl	$128, %edi
	shrl	%cl, %edi
	movl	$-21, %eax
	testl	%edi, %ebp
	je	.LBB7_37
# BB#25:                                # %if.end.136
	cmpl	$0, 30560(%rbx)
	jne	.LBB7_28
# BB#26:                                # %land.lhs.true.138
	movq	296(%r15), %rcx
	movzbl	(%rcx,%rsi), %ecx
	testl	%edi, %ecx
	jne	.LBB7_30
	jmp	.LBB7_37
.LBB7_27:                               # %if.end.151
	cmpl	$0, 30560(%rbx)
	je	.LBB7_30
.LBB7_28:                               # %land.lhs.true.154
	cmpl	$3, %edx
	jne	.LBB7_30
# BB#29:                                # %if.then.158
	movups	30528(%rbx), %xmm0
	movups	%xmm0, 88(%r14)
	movupd	30544(%rbx), %xmm0
	movupd	%xmm0, 104(%r14)
.LBB7_30:                               # %if.end.182
	movslq	%r12d, %rcx
	movq	128(%r15), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%r14)
	movq	200(%r15), %rdx
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movupd	(%rdx,%rsi), %xmm0
	movupd	%xmm0, 24(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 64(%r14)
	movl	$0, 84(%r14)
	movl	128(%r13), %edx
	cmpq	$54, %rdx
	ja	.LBB7_33
# BB#31:                                # %if.end.182
	movabsq	$33776997205278728, %rsi # imm = 0x78000000000008
	btq	%rdx, %rsi
	jae	.LBB7_33
# BB#32:                                # %if.then.221
	leal	(%r12,%r12), %ecx
	movslq	%ecx, %rcx
	movq	32(%rsp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, 40(%r14)
	movq	%rax, 8(%r14)
	movq	$0, 16(%r14)
	movq	(%rdx,%rcx,8), %rax
	movq	%rax, 48(%r14)
	leal	1(%r12,%r12), %eax
	cltq
	movq	(%rdx,%rax,8), %rax
	movq	%rax, 56(%r14)
	movl	$0, 80(%r14)
	jmp	.LBB7_36
.LBB7_33:                               # %if.else.247
	cmpl	$0, 148(%r13)
	movq	32(%rsp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, 40(%r14)
	je	.LBB7_35
# BB#34:                                # %if.then.250
	movq	$0, 8(%r14)
	movq	%rax, 16(%r14)
	movq	$0, 48(%r14)
	movq	%rcx, 56(%r14)
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.271
	movq	%rax, 8(%r14)
	movq	$0, 16(%r14)
	movq	%rcx, 48(%r14)
	movq	$0, 56(%r14)
	jmp	.LBB7_36
.LBB7_14:                               # %if.else
	movq	200(%r15), %rdx
	movq	%rbp, %rsi
	shlq	$4, %rsi
	xorpd	%xmm0, %xmm0
.LBB7_15:                               # %if.end.88
	movupd	%xmm0, (%rdx,%rsi)
	testl	%eax, %eax
	je	.LBB7_16
# BB#17:                                # %if.else.98
	cmpl	$0, 148(%r13)
	je	.LBB7_20
# BB#18:                                # %lor.lhs.false.101
	testl	%ecx, %ecx
	setne	%cl
	cmpl	$0, 84(%r14)
	je	.LBB7_37
# BB#19:                                # %lor.lhs.false.101
	testb	%cl, %cl
	je	.LBB7_21
	jmp	.LBB7_37
.LBB7_16:                               # %if.then.90
	movq	(%r14), %rax
	movq	128(%r15), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	40(%r14), %rax
	movq	32(%rsp), %rcx
	movq	%rax, (%rcx,%rbp,8)
.LBB7_36:                               # %cleanup.295
	xorl	%eax, %eax
.LBB7_37:                               # %cleanup.295
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_20:                               # %land.lhs.true.103
	testl	%ecx, %ecx
	jne	.LBB7_37
.LBB7_21:                               # %if.then.106
	movq	40(%r14), %rcx
	movq	128(%r15), %rdx
	movq	%rcx, (%rdx,%rbp,8)
	jmp	.LBB7_37
.Lfunc_end7:
	.size	pdf_char_widths, .Lfunc_end7-pdf_char_widths
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_encode_string_element,@function
pdf_encode_string_element:              # @pdf_encode_string_element
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 128
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	pdf_font_resource_font
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_font_resource_font
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	192(%r12), %r8
	testq	%rbp, %rbp
	je	.LBB8_1
# BB#2:                                 # %cond.false
	movq	%rbx, %rsi
	movq	(%rbp), %r13
	jmp	.LBB8_3
.LBB8_1:                                # %cond.true
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r8, %rbp
	callq	*200(%rbx)
	movq	%rbx, %rsi
	movq	%rbp, %r8
	movq	%rax, %r13
.LBB8_3:                                # %cond.end
	xorl	%eax, %eax
	cmpq	$2147483647, %r13       # imm = 0x7FFFFFFF
	je	.LBB8_38
# BB#4:                                 # %lor.lhs.false
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	shlq	$5, %r15
	movq	(%r8,%r15), %rcx
	cmpq	%rcx, %r13
	je	.LBB8_38
# BB#5:                                 # %if.end
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	$-15, %eax
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	jne	.LBB8_38
# BB#6:                                 # %if.end.9
	leaq	56(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%r13, %rsi
	movq	%r8, %rbx
	callq	*240(%rdi)
	testl	%eax, %eax
	js	.LBB8_38
# BB#7:                                 # %if.end.14
	leaq	(%rbx,%r15), %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	128(%rax), %eax
	cmpq	$54, %rax
	ja	.LBB8_9
# BB#8:                                 # %if.end.14
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jb	.LBB8_36
.LBB8_9:                                # %if.then.27
	movq	112(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB8_11
# BB#10:                                # %cond.true.29
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r13, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	pdf_base_font_copy_glyph
	jmp	.LBB8_12
.LBB8_11:                               # %cond.false.32
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	104(%r12), %rdi
	movq	%r13, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	pdf_font_used_glyph
.LBB8_12:                               # %cond.end.34
	movq	48(%rsp), %r14          # 8-byte Reload
	testl	%eax, %eax
	jns	.LBB8_14
# BB#13:                                # %cond.end.34
	cmpl	$-21, %eax
	jne	.LBB8_38
.LBB8_14:                               # %if.end.40
	cmpl	$-21, %eax
	jne	.LBB8_27
# BB#15:                                # %if.then.42
	movq	32(%rsp), %rbp          # 8-byte Reload
	cmpl	$0, 9564(%rbp)
	jne	.LBB8_17
# BB#16:                                # %lor.lhs.false.44
	cmpl	$0, 9560(%rbp)
	je	.LBB8_25
.LBB8_17:                               # %if.then.45
	movl	30724(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB8_22
# BB#18:                                # %if.then.45
	cmpl	$1, %eax
	jne	.LBB8_19
# BB#21:                                # %sw.bb.51
	movq	24(%rbp), %r14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-1, %eax
	jmp	.LBB8_38
.LBB8_27:                               # %if.else
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB8_32
# BB#28:                                # %if.else
	movq	112(%r12), %rax
	testq	%rax, %rax
	jne	.LBB8_32
# BB#29:                                # %land.lhs.true.80
	movl	$2, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	gs_copy_glyph_options
	cmpl	$1, %eax
	jne	.LBB8_31
# BB#30:                                # %lor.lhs.false.83
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	gs_copied_font_add_encoding
	testl	%eax, %eax
	jns	.LBB8_32
.LBB8_31:                               # %if.then.86
	movq	104(%r12), %rdi
	callq	pdf_font_descriptor_drop_complete_font
	jmp	.LBB8_32
.LBB8_22:                               # %sw.bb.57
	movq	24(%rbp), %r14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-10, %eax
	jmp	.LBB8_38
.LBB8_19:                               # %if.then.45
	movq	%r14, %rbx
	testl	%eax, %eax
	jne	.LBB8_23
# BB#20:                                # %sw.bb
	movq	24(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.12, %esi
	jmp	.LBB8_24
.LBB8_23:                               # %sw.default
	movq	24(%rbp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	$.L.str.15, %esi
.LBB8_24:                               # %if.end.70
	xorl	%eax, %eax
	callq	errprintf
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 9564(%rbp)
	movq	%rbx, %r14
.LBB8_25:                               # %if.end.70
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdi
	movl	64(%rsp), %esi
	movl	$.L.str.16, %edx
	movl	$7, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB8_32
# BB#26:                                # %if.then.73
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r13, (%rax)
	movups	56(%rsp), %xmm0
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	%xmm0, 8(%rax,%r15)
	movl	$1, 24(%rax,%r15)
.LBB8_32:                               # %if.end.89
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	*200(%r14)
	cmpq	%rax, %r13
	je	.LBB8_35
# BB#33:                                # %land.lhs.true.94
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	gs_copied_font_add_encoding
	testl	%eax, %eax
	jns	.LBB8_35
# BB#34:                                # %if.then.97
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$1, 24(%rax,%r15)
.LBB8_35:                               # %if.end.99
	movb	%bl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movq	136(%r12), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	(%rsp), %rbp            # 8-byte Reload
.LBB8_36:                               # %if.end.103
	leaq	56(%rsp), %r9
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	24(%rsp), %r8           # 8-byte Reload
	callq	pdf_add_ToUnicode
	movq	%rbx, %rcx
	testl	%eax, %eax
	js	.LBB8_38
# BB#37:                                # %if.end.108
	movq	%r13, (%rbp)
	movups	56(%rsp), %xmm0
	movups	%xmm0, 8(%rcx,%r15)
	xorl	%eax, %eax
.LBB8_38:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pdf_encode_string_element, .Lfunc_end8-pdf_encode_string_element
	.cfi_endproc

	.globl	pdf_encode_glyph
	.align	16, 0x90
	.type	pdf_encode_glyph,@function
pdf_encode_glyph:                       # @pdf_encode_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 48
.Ltmp90:
	.cfi_offset %rbx, -48
.Ltmp91:
	.cfi_offset %r12, -40
.Ltmp92:
	.cfi_offset %r14, -32
.Ltmp93:
	.cfi_offset %r15, -24
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movl	$1, (%r8)
	movl	$-15, %r15d
	testl	%ecx, %ecx
	jle	.LBB9_5
# BB#1:                                 # %for.cond.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*200(%rbp)
	cmpq	%r12, %rax
	je	.LBB9_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	incq	%rbx
	cmpq	$255, %rbx
	jb	.LBB9_2
	jmp	.LBB9_5
.LBB9_3:                                # %if.then.3
	movb	%bl, (%r14)
	xorl	%r15d, %r15d
.LBB9_5:                                # %cleanup.5
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_encode_glyph, .Lfunc_end9-pdf_encode_glyph
	.cfi_endproc

	.globl	process_plain_text
	.align	16, 0x90
	.type	process_plain_text,@function
process_plain_text:                     # @process_plain_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp98:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 192
.Ltmp102:
	.cfi_offset %rbx, -56
.Ltmp103:
	.cfi_offset %r12, -48
.Ltmp104:
	.cfi_offset %r13, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movl	(%r13), %ebp
	testb	$3, %bpl
	je	.LBB10_3
# BB#1:                                 # %if.then
	movl	16(%r13), %r15d
	movl	232(%r13), %esi
	subl	%esi, %r15d
	movl	$-28, %eax
	cmpl	%edx, %r15d
	ja	.LBB10_34
# BB#2:                                 # %if.end
	addq	8(%r13), %rsi
	movl	%r15d, %edx
	movq	%rbx, %rdi
	callq	memcpy
	xorl	%r14d, %r14d
.LBB10_29:                              # %if.end.115
	movq	%rbx, 120(%rsp)
	testl	$65536, %ebp            # imm = 0x10000
	je	.LBB10_33
# BB#30:                                # %if.end.115
	cmpl	$2, %r15d
	jb	.LBB10_33
# BB#31:                                # %if.then.121
	movl	$1, 128(%rsp)
	leaq	120(%rsp), %rsi
	leaq	56(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	pdf_process_string_aux
	testl	%eax, %eax
	js	.LBB10_34
# BB#32:                                # %if.then.126
	movzbl	(%rbx), %eax
	movq	%rax, 416(%r13)
	movl	$2, %eax
	jmp	.LBB10_34
.LBB10_3:                               # %if.else
	testb	$20, %bpl
	je	.LBB10_13
# BB#4:                                 # %if.then.8
	testb	$4, %bpl
	jne	.LBB10_5
# BB#6:                                 # %if.else.18
	leaq	8(%r13), %rsi
	movl	$1, %ecx
	jmp	.LBB10_7
.LBB10_33:                              # %if.else.130
	movl	%r15d, 128(%rsp)
	leaq	120(%rsp), %rsi
	leaq	56(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	pdf_process_string_aux
	jmp	.LBB10_34
.LBB10_13:                              # %if.else.42
	movl	$-15, %eax
	testb	$40, %bpl
	je	.LBB10_34
# BB#14:                                # %if.then.45
	movq	192(%r13), %r12
	testb	$8, %bpl
	jne	.LBB10_15
# BB#16:                                # %if.else.57
	leaq	8(%r13), %r14
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	jmp	.LBB10_17
.LBB10_5:                               # %if.then.11
	movq	8(%r13), %rsi
	movl	16(%r13), %ecx
	subl	232(%r13), %ecx
.LBB10_7:                               # %if.end.21
	movl	%edx, %edx
	movl	%ecx, %edi
	shlq	$3, %rdi
	movl	$-28, %eax
	cmpq	%rdi, %rdx
	jb	.LBB10_34
# BB#8:                                 # %for.cond.preheader
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movl	$0, %r15d
	je	.LBB10_29
# BB#9:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	.align	16, 0x90
.LBB10_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	232(%r13), %eax
	addl	%edx, %eax
	movq	(%rsi,%rax,8), %rdi
	movl	$-15, %eax
	cmpq	$255, %rdi
	ja	.LBB10_34
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB10_10 Depth=1
	movb	%dil, (%rbx,%rdx)
	incq	%rdx
	cmpl	%ecx, %edx
	jb	.LBB10_10
# BB#12:
	movl	%ecx, %r15d
	jmp	.LBB10_29
.LBB10_15:                              # %if.then.50
	movq	8(%r13), %r14
	movl	16(%r13), %eax
	subl	232(%r13), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB10_17:                              # %if.end.60
	movq	%r12, %rdi
	callq	pdf_is_simple_font
	movl	%eax, %ecx
	movl	$-28, %eax
	testl	%ecx, %ecx
	je	.LBB10_34
# BB#18:                                # %for.cond.65.preheader
	xorl	%r15d, %r15d
	movl	44(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	je	.LBB10_29
# BB#19:                                # %for.body.68.lr.ph
	movl	%ebp, %eax
	andl	$65536, %eax            # imm = 0x10000
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
.LBB10_21:                              # %for.body.68
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
	movl	%eax, %ecx
	subl	%r15d, %ecx
	movl	232(%r13), %eax
	addl	%r15d, %eax
	testl	%ecx, %ecx
	jle	.LBB10_28
# BB#22:                                #   in Loop: Header=BB10_21 Depth=1
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	(%r14,%rax,8), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB10_23:                              # %for.body.i
                                        #   Parent Loop BB10_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*200(%r12)
	cmpq	%r14, %rax
	je	.LBB10_26
# BB#24:                                # %for.inc.i
                                        #   in Loop: Header=BB10_23 Depth=2
	incq	%rbx
	cmpq	$255, %rbx
	jb	.LBB10_23
	jmp	.LBB10_25
.LBB10_26:                              # %cleanup.86
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	movb	%bl, (%rax,%r15)
	movq	%rax, %rbx
	leaq	1(%r15), %r15
	movl	44(%rsp), %edx          # 4-byte Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	jne	.LBB10_27
# BB#20:                                # %for.cond.65
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpl	%edx, %r15d
	movq	24(%rsp), %r14          # 8-byte Reload
	jb	.LBB10_21
	jmp	.LBB10_29
.LBB10_25:
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %r14          # 8-byte Reload
	movl	44(%rsp), %edx          # 4-byte Reload
.LBB10_28:                              # %if.then.95
	movq	%rbx, 120(%rsp)
	movl	%edx, 128(%rsp)
	leaq	120(%rsp), %rsi
	movl	%edx, %r12d
	leaq	48(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	pdf_obtain_font_resource_unencoded
	testl	%eax, %eax
	cmovnsl	%r12d, %r15d
	jns	.LBB10_29
.LBB10_34:                              # %cleanup.134
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_27:
	movq	24(%rsp), %r14          # 8-byte Reload
	jmp	.LBB10_28
.Lfunc_end10:
	.size	process_plain_text, .Lfunc_end10-process_plain_text
	.cfi_endproc

	.align	16, 0x90
	.type	process_resources2,@function
process_resources2:                     # @process_resources2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	8(%rbx), %esi
	movq	8(%rcx), %rax
	movq	8(%rax), %rdx
	callq	pdf_find_resource_by_resource_id
	movl	$-28, %ecx
	testq	%rax, %rax
	je	.LBB11_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rcx
	movq	26664(%rcx), %rcx
	orq	%rcx, 56(%rax)
	xorl	%ecx, %ecx
.LBB11_2:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end11:
	.size	process_resources2, .Lfunc_end11-process_resources2
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"uni"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.1, 17

	.type	process_resources1.rn,@object # @process_resources1.rn
	.section	.rodata,"a",@progbits
	.align	16
process_resources1.rn:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	process_resources1.rn, 256

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"/ColorSpace"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/ExtGState"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"/Pattern"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/Shading"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/XObject"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/Font"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/CMap"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/FontDescriptor"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/Group"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Mask"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Requested glyph not present in source font,\n not permitted in PDF/A, reverting to normal PDF output\n"
	.size	.L.str.12, 101

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Requested glyph not present in source font,\n not permitted in PDF/A, glyph will not be present in output file\n\n"
	.size	.L.str.13, 112

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Requested glyph not present in source font,\n not permitted in PDF/A, aborting conversion\n"
	.size	.L.str.14, 90

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Requested glyph not present in source font,\n not permitted in PDF/A, unrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.15, 138

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	".notdef"
	.size	.L.str.16, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
