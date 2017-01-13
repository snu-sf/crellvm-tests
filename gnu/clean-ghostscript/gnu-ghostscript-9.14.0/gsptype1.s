	.text
	.file	"gsptype1.bc"
	.globl	gs_cspace_build_Pattern1
	.align	16, 0x90
	.type	gs_cspace_build_Pattern1,@function
gs_cspace_build_Pattern1:               # @gs_cspace_build_Pattern1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	movl	$-15, %ecx
	testl	%eax, %eax
	js	.LBB0_7
.LBB0_2:                                # %if.end.3
	movl	$gs_color_space_type_Pattern, %esi
	movq	%r15, %rdi
	callq	gs_cspace_alloc
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_7
# BB#3:                                 # %if.end.7
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#4:                                 # %if.then.9
	movl	$1, 72(%rax)
	movq	%rbx, 40(%rax)
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	movl	$0, 72(%rax)
.LBB0_6:                                # %if.end.13
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB0_7:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_cspace_build_Pattern1, .Lfunc_end0-gs_cspace_build_Pattern1
	.cfi_endproc

	.globl	gs_pattern1_init
	.align	16, 0x90
	.type	gs_pattern1_init,@function
gs_pattern1_init:                       # @gs_pattern1_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$gs_pattern1_type, %esi
	callq	gs_pattern_common_init
	movl	$0, 48(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_pattern1_init, .Lfunc_end1-gs_pattern1_init
	.cfi_endproc

	.globl	gs_makepattern
	.align	16, 0x90
	.type	gs_makepattern,@function
gs_makepattern:                         # @gs_makepattern
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_pattern1_make_pattern # TAILCALL
.Lfunc_end2:
	.size	gs_makepattern, .Lfunc_end2-gs_makepattern
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI3_4:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI3_6:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI3_7:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1132462080              # float 256
.LCPI3_3:
	.long	3279945728              # float -256
.LCPI3_5:
	.long	872415232               # float 1.1920929E-7
.LCPI3_9:
	.long	1073741824              # float 2
.LCPI3_12:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_2:
	.quad	4602678819172646912     # double 0.5
.LCPI3_8:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI3_10:
	.quad	4607182418800017408     # double 1
.LCPI3_11:
	.quad	-4652218415073722368    # double -0.00390625
.LCPI3_13:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gs_pattern1_make_pattern,@function
gs_pattern1_make_pattern:               # @gs_pattern1_make_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$584, %rsp              # imm = 0x248
.Ltmp14:
	.cfi_def_cfa_offset 640
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	1872(%r14), %rax
	movl	832(%rax), %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	836(%rax), %r15d
	movl	$st_pattern1_instance, %r9d
	movq	%r14, %rcx
	callq	gs_make_pattern_common
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_86
# BB#1:                                 # %if.end
	testq	%r12, %r12
	jne	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	%r14, %rdi
	callq	gs_state_memory
	movq	%rax, %r12
.LBB3_3:                                # %if.end.4
	movq	(%rbp), %rcx
	movupd	(%rcx), %xmm0
	movupd	16(%rcx), %xmm1
	movupd	32(%rcx), %xmm2
	movapd	%xmm2, 256(%rsp)
	movapd	%xmm1, 240(%rsp)
	movapd	%xmm0, 224(%rsp)
	movq	256(%rsp), %rbp
	movl	40(%rbx), %eax
	movl	$-15, %r13d
	cmpl	$2, %eax
	jne	.LBB3_4
# BB#6:                                 # %sw.bb.7
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	gx_set_device_color_1
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB3_7
	jmp	.LBB3_62
.LBB3_4:                                # %if.end.4
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	jne	.LBB3_62
# BB#5:                                 # %sw.bb
	movl	%r15d, 120(%rsp)        # 4-byte Spill
	movl	$252, %esi
	movq	%rbp, %rdi
	callq	gs_set_logical_op
.LBB3_7:                                # %sw.epilog
	movq	96(%rbx), %rax
	movq	%rax, 368(%rsp)
	movups	80(%rbx), %xmm0
	movaps	%xmm0, 352(%rsp)
	movups	64(%rbx), %xmm0
	movaps	%xmm0, 336(%rsp)
	movupd	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movupd	32(%rbx), %xmm2
	movupd	48(%rbx), %xmm3
	movapd	%xmm3, 320(%rsp)
	movapd	%xmm2, 304(%rsp)
	movapd	%xmm1, 288(%rsp)
	movapd	%xmm0, 272(%rsp)
	leaq	328(%rsp), %rdi
	leaq	132(%rbp), %r15
	leaq	192(%rsp), %rdx
	movq	%r15, %rsi
	callq	gs_bbox_transform
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#8:                                 # %if.end.i
	movapd	192(%rsp), %xmm1
	movapd	%xmm1, 160(%rsp)        # 16-byte Spill
	movapd	.LCPI3_0(%rip), %xmm0   # xmm0 = [5.000000e-01,5.000000e-01]
	addpd	%xmm1, %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	callq	floor
	movapd	%xmm0, 128(%rsp)        # 16-byte Spill
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	128(%rsp), %xmm2        # 16-byte Reload
	unpcklpd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0]
	movapd	160(%rsp), %xmm1        # 16-byte Reload
	movapd	%xmm1, %xmm0
	subpd	%xmm2, %xmm0
	cvtpd2ps	%xmm0, %xmm2
	cvtps2pd	%xmm2, %xmm0
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 192(%rsp)
	movapd	208(%rsp), %xmm1
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 208(%rsp)
	cmpl	$0, 164(%rbp)
	movss	148(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	je	.LBB3_10
# BB#9:                                 # %if.then.27.i
	mulss	.LCPI3_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	movaps	%xmm2, 160(%rsp)        # 16-byte Spill
	callq	floor
	movq	%rbp, %rbx
	cvttsd2si	%xmm0, %ebp
	movss	152(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	160(%rsp), %xmm1        # 16-byte Reload
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	subss	%xmm1, %xmm0
	mulss	.LCPI3_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	gx_translate_to_fixed
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.i
	movss	%xmm0, 148(%rbp)
	movss	152(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	subss	%xmm1, %xmm0
	movss	%xmm0, 152(%rbp)
	movq	1680(%rbp), %rdi
	movq	%rbp, %rbx
	movss	.LCPI3_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvttss2si	%xmm2, %esi
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	callq	gx_path_translate
.LBB3_11:                               # %if.end.55.i
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	%rbx, %rbp
	js	.LBB3_62
# BB#12:                                # %if.end.59.i
	movss	360(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	364(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	unpcklps	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1]
	movss	132(%rbp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movss	136(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	144(%rbp), %xmm5        # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	movss	140(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	unpcklps	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	mulps	%xmm2, %xmm3
	movaps	%xmm3, %xmm4
	shufpd	$1, %xmm4, %xmm4        # xmm4 = xmm4[1,0]
	xorps	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm4
	setnp	%al
	sete	%cl
	andb	%al, %cl
	movaps	%xmm3, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	ucomiss	%xmm5, %xmm2
	setnp	%al
	sete	%dl
	andb	%al, %dl
	orb	%cl, %dl
	movzbl	%dl, %eax
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm4, %xmm2
	orps	%xmm3, %xmm2
	ucomiss	%xmm2, %xmm5
	seta	%al
	movaps	%xmm2, %xmm3
	shufps	$231, %xmm3, %xmm3      # xmm3 = xmm3[3,1,2,3]
	ucomiss	%xmm3, %xmm5
	seta	%cl
	movzbl	%al, %eax
	pinsrw	$0, %eax, %xmm3
	pinsrw	$2, %eax, %xmm3
	movzbl	%cl, %eax
	pinsrw	$4, %eax, %xmm3
	pinsrw	$6, %eax, %xmm3
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	movdqa	%xmm3, %xmm4
	pandn	%xmm2, %xmm4
	xorps	.LCPI3_4(%rip), %xmm2
	andps	%xmm3, %xmm2
	orps	%xmm4, %xmm2
	movups	%xmm2, 376(%rsp)
	movl	148(%rbp), %eax
	movl	%eax, 392(%rsp)
	movl	152(%rbp), %eax
	movl	%eax, 396(%rsp)
	movsd	192(%rsp), %xmm4        # xmm4 = mem[0],zero
	movsd	%xmm4, 88(%rsp)         # 8-byte Spill
	movsd	200(%rsp), %xmm3        # xmm3 = mem[0],zero
	movapd	208(%rsp), %xmm5
	movapd	%xmm5, %xmm2
	subsd	%xmm4, %xmm2
	movl	152(%rsp), %ebx         # 4-byte Reload
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ebx, %xmm4
	movsd	%xmm4, 96(%rsp)         # 8-byte Spill
	ucomisd	%xmm4, %xmm2
	jbe	.LBB3_14
# BB#13:                                # %if.end.59.if.then.128_crit_edge.i
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movl	120(%rsp), %eax         # 4-byte Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %lor.lhs.false.119.i
	movapd	%xmm5, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	subsd	%xmm3, %xmm2
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movl	120(%rsp), %eax         # 4-byte Reload
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	ucomisd	%xmm3, %xmm2
	jbe	.LBB3_38
.LBB3_15:                               # %if.then.128.i
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	movapd	.LCPI3_6(%rip), %xmm1   # xmm1 = [9223372036854775808,9223372036854775808]
	jbe	.LBB3_17
# BB#16:
	xorpd	%xmm1, %xmm3
.LBB3_17:                               # %if.then.128.i
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	ucomiss	%xmm0, %xmm2
	ja	.LBB3_18
# BB#19:                                # %if.then.128.i
	movapd	%xmm4, 128(%rsp)        # 16-byte Spill
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	movapd	%xmm5, 160(%rsp)        # 16-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	jmp	.LBB3_20
.LBB3_18:
	movapd	%xmm3, 32(%rsp)         # 16-byte Spill
	movapd	%xmm5, 160(%rsp)        # 16-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	xorpd	%xmm1, %xmm4
	movapd	%xmm4, 128(%rsp)        # 16-byte Spill
.LBB3_20:                               # %if.then.128.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 544(%rsp)
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 560(%rsp)
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 568(%rsp)
	leaq	544(%rsp), %rdi
	leaq	512(%rsp), %rdx
	movq	%r15, %rsi
	callq	gs_bbox_transform_inverse
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_36
# BB#21:                                # %if.end.32.i.i
	movq	%r12, 8(%rsp)           # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movss	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	120(%rsp), %eax         # 4-byte Reload
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	leaq	496(%rsp), %rsi
	xorpd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gs_point_transform
	movsd	512(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	344(%rsp), %xmm0
	divsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movsd	520(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	352(%rsp), %xmm0
	divsd	128(%rsp), %xmm0        # 16-byte Folded Reload
	callq	floor
	cvttsd2si	%xmm0, %r12d
	leaq	480(%rsp), %rbp
	movapd	160(%rsp), %xmm2        # 16-byte Reload
	.align	16, 0x90
.LBB3_22:                               # %for.cond.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	mulsd	32(%rsp), %xmm0         # 16-byte Folded Reload
	movsd	%xmm0, 120(%rsp)        # 8-byte Spill
	movl	%r12d, %r13d
	movapd	128(%rsp), %xmm3        # 16-byte Reload
	.align	16, 0x90
.LBB3_23:                               # %for.cond.53.i.i
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm2, 160(%rsp)        # 16-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r13d, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	gs_point_transform
	movapd	480(%rsp), %xmm0
	subpd	496(%rsp), %xmm0
	movsd	208(%rsp), %xmm2        # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movsd	96(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm3
	subsd	%xmm0, %xmm3
	cmpltsd	%xmm4, %xmm1
	movapd	%xmm1, %xmm4
	andnpd	%xmm3, %xmm4
	andpd	%xmm2, %xmm1
	orpd	%xmm4, %xmm1
	movapd	192(%rsp), %xmm3
	movapd	%xmm0, %xmm4
	addpd	%xmm3, %xmm4
	xorpd	%xmm2, %xmm2
	cmpltpd	%xmm4, %xmm2
	movapd	%xmm0, %xmm4
	xorpd	.LCPI3_6(%rip), %xmm4
	andpd	%xmm2, %xmm3
	andnpd	%xmm4, %xmm2
	orpd	%xmm3, %xmm2
	movsd	80(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm2, %xmm3
	ucomisd	%xmm3, %xmm1
	jbe	.LBB3_24
# BB#25:                                # %for.cond.53.i.i
                                        #   in Loop: Header=BB3_23 Depth=2
	movsd	216(%rsp), %xmm3        # xmm3 = mem[0],zero
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movsd	72(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm4
	subsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm0
	cmpltsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
	andnpd	%xmm4, %xmm5
	andpd	%xmm3, %xmm0
	orpd	%xmm5, %xmm0
	movapd	%xmm2, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	addsd	56(%rsp), %xmm3         # 8-byte Folded Reload
	ucomisd	%xmm3, %xmm0
	jbe	.LBB3_24
# BB#26:                                # %if.then.118.i.i
                                        #   in Loop: Header=BB3_23 Depth=2
	maxsd	88(%rsp), %xmm1         # 8-byte Folded Reload
	minpd	160(%rsp), %xmm2        # 16-byte Folded Reload
	ucomisd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movapd	128(%rsp), %xmm3        # 16-byte Reload
	jbe	.LBB3_28
# BB#27:                                # %if.then.133.i.i
                                        #   in Loop: Header=BB3_23 Depth=2
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
.LBB3_28:                               # %if.end.135.i.i
                                        #   in Loop: Header=BB3_23 Depth=2
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	jmp	.LBB3_29
	.align	16, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_23 Depth=2
	movapd	160(%rsp), %xmm2        # 16-byte Reload
	movapd	128(%rsp), %xmm3        # 16-byte Reload
.LBB3_29:                               # %if.end.135.i.i
                                        #   in Loop: Header=BB3_23 Depth=2
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	336(%rsp), %xmm0
	incl	%r13d
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_23
# BB#30:                                # %for.end.i.i
                                        #   in Loop: Header=BB3_22 Depth=1
	movapd	%xmm3, 128(%rsp)        # 16-byte Spill
	movsd	528(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	328(%rsp), %xmm0
	incl	%ebx
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_22
# BB#31:                                # %for.end.160.i.i
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	8(%rsp), %r12           # 8-byte Reload
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jbe	.LBB3_34
# BB#32:                                # %for.end.160.i.i
	ucomisd	%xmm2, %xmm1
	jbe	.LBB3_34
# BB#33:                                # %if.then.166.i.i
	movsd	%xmm1, 208(%rsp)
	movapd	%xmm2, 192(%rsp)
	movsd	%xmm0, 216(%rsp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.i.i
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 192(%rsp)
	movapd	.LCPI3_7(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movapd	%xmm0, 208(%rsp)
.LBB3_35:                               # %compute_inst_matrix.exit
	xorl	%r13d, %r13d
.LBB3_36:                               # %compute_inst_matrix.exit
	testl	%r13d, %r13d
	movq	16(%rsp), %rbp          # 8-byte Reload
	js	.LBB3_62
# BB#37:                                # %compute_inst_matrix.exit.if.end.15_crit_edge
	movss	360(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
.LBB3_38:                               # %if.end.15
	movsd	344(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	328(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	ja	.LBB3_42
# BB#39:                                # %lor.lhs.false
	movsd	352(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	336(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	ucomiss	364(%rsp), %xmm0
	ja	.LBB3_42
# BB#40:                                # %lor.lhs.false.37
	movss	136(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_42
	jp	.LBB3_42
# BB#41:                                # %lor.lhs.false.40
	movss	140(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_42
	jnp	.LBB3_43
.LBB3_42:                               # %if.then.44
	movl	$1, 436(%rsp)
.LBB3_44:                               # %if.end.46
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	216(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	192(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 120(%rsp)        # 4-byte Spill
	subsd	200(%rsp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 160(%rsp)        # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 152(%rsp)        # 8-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, 452(%rsp)
	movss	160(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 456(%rsp)
	testl	%ebx, %ebx
	je	.LBB3_46
# BB#45:                                # %if.end.46
	testl	%eax, %eax
	je	.LBB3_46
# BB#47:                                # %if.else.89
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movss	376(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movss	380(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm2, 96(%rsp)         # 4-byte Spill
	movss	388(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 64(%rsp)         # 4-byte Spill
	mulss	%xmm1, %xmm0
	movss	384(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	%xmm3, 88(%rsp)         # 4-byte Spill
	movaps	%xmm2, %xmm1
	mulss	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI3_8(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$-15, %r13d
	ja	.LBB3_62
# BB#48:                                # %if.end.103
	cmpl	$2, 316(%rsp)
	jne	.LBB3_49
# BB#63:                                # %land.lhs.true.247
	movl	304(%r14), %eax
	orl	300(%r14), %eax
	jne	.LBB3_71
# BB#64:                                # %if.then.253
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	xorps	%xmm3, %xmm3
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm0
	xorps	%xmm2, %xmm2
	movl	72(%rsp), %r14d         # 4-byte Reload
	jne	.LBB3_67
	jp	.LBB3_67
# BB#65:                                # %land.lhs.true.258
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	subsd	152(%rsp), %xmm0        # 8-byte Folded Reload
	callq	fabs
	xorps	%xmm3, %xmm3
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	jb	.LBB3_67
# BB#66:                                # %cond.true
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	120(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	.LCPI3_12(%rip), %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
.LBB3_67:                               # %cond.end
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm0
	leaq	328(%rsp), %r14
	jne	.LBB3_70
	jp	.LBB3_70
# BB#68:                                # %land.lhs.true.277
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm2, 152(%rsp)        # 8-byte Spill
	callq	fabs
	subsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	callq	fabs
	movsd	152(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_70
# BB#69:                                # %cond.true.287
	movl	56(%rsp), %eax          # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	160(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	mulss	.LCPI3_12(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
.LBB3_70:                               # %cond.end.294
	movq	%rbp, %rdi
	movapd	%xmm2, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_translate_untransformed
	leaq	192(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_bbox_transform
	movl	%eax, %r13d
	sarl	$31, %eax
	testb	$3, %al
	jne	.LBB3_62
	jmp	.LBB3_71
.LBB3_46:                               # %if.then.80
	leaq	376(%rsp), %rdi
	callq	gs_make_identity
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 208(%rsp)
	movapd	%xmm0, 192(%rsp)
.LBB3_71:                               # %cleanup.cont.314
	leaq	376(%rsp), %rsi
	leaq	400(%rsp), %rdx
	leaq	192(%rsp), %rdi
	callq	gs_bbox_transform_inverse
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#72:                                # %do.end.324
	movss	376(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	xorps	%xmm1, %xmm1
	cvtsi2sdl	452(%rsp), %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	jne	.LBB3_76
	jp	.LBB3_76
# BB#73:                                # %do.end.324
	movss	380(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_76
	jp	.LBB3_76
# BB#74:                                # %do.end.324
	movss	384(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_76
	jp	.LBB3_76
# BB#75:                                # %land.rhs
	movss	388(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	xorps	%xmm1, %xmm1
	cvtsi2sdl	456(%rsp), %xmm1
	cmpeqsd	%xmm1, %xmm0
	movd	%xmm0, %rax
	andl	$1, %eax
.LBB3_76:                               # %land.end
	movzbl	%al, %eax
	movl	%eax, 432(%rsp)
	movl	$1, 444(%rsp)
	movl	$0, 448(%rsp)
	movss	392(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	192(%rsp), %xmm0
	mulsd	.LCPI3_13(%rip), %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movss	396(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	200(%rsp), %xmm0
	mulsd	.LCPI3_13(%rip), %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	gx_translate_to_fixed
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 392(%rsp)
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 396(%rsp)
	movq	$0, 176(%rsp)
	movl	452(%rsp), %eax
	shll	$8, %eax
	movl	%eax, 184(%rsp)
	movl	456(%rsp), %eax
	shll	$8, %eax
	movl	%eax, 188(%rsp)
	leaq	176(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_clip_to_rectangle
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#77:                                # %if.end.402
	cmpl	$0, 432(%rsp)
	jne	.LBB3_84
# BB#78:                                # %if.then.404
	movq	%rbp, %rdi
	callq	gs_newpath
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#79:                                # %if.end.418
	movsd	328(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	336(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_moveto
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#80:                                # %if.end.431
	movsd	336(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	344(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_lineto
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#81:                                # %if.end.444
	movsd	344(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	352(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_lineto
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#82:                                # %if.end.457
	movsd	328(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	352(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_lineto
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#83:                                # %if.end.462
	movq	%rbp, %rdi
	callq	gs_clip
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
.LBB3_84:                               # %if.end.467
	movq	%rbp, %rdi
	callq	gs_newpath
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_62
# BB#85:                                # %if.end.472
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_next_ids
	movq	%rax, 464(%rsp)
	leaq	224(%rsp), %rsi
	movl	$248, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	xorl	%r13d, %r13d
	jmp	.LBB3_86
.LBB3_49:                               # %if.then.107
	xorpd	%xmm0, %xmm0
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_71
	jp	.LBB3_71
# BB#50:                                # %if.then.107
	movss	88(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_71
	jp	.LBB3_71
# BB#51:                                # %land.lhs.true.116
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	callq	fabs
	subsd	152(%rsp), %xmm0        # 8-byte Folded Reload
	callq	fabs
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_71
# BB#52:                                # %land.lhs.true.126
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	subsd	128(%rsp), %xmm0        # 8-byte Folded Reload
	callq	fabs
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_71
# BB#53:                                # %if.then.136
	movss	.LCPI3_9(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	72(%rsp), %ebx          # 4-byte Reload
	jae	.LBB3_54
# BB#55:                                # %if.else.155
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI3_2(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 376(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	.LCPI3_11(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	152(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movq	%rbp, %rbx
	leaq	328(%rsp), %rbp
	jb	.LBB3_57
# BB#56:                                # %if.then.170
	callq	fabs
	movsd	.LCPI3_11(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	divsd	%xmm0, %xmm2
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	movapd	%xmm2, %xmm0
	callq	gs_scale
	jmp	.LBB3_57
.LBB3_43:                               # %if.else
	movl	$0, 436(%rsp)
	jmp	.LBB3_44
.LBB3_54:                               # %if.then.141
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	gs_scale
	xorps	%xmm0, %xmm0
	cvtsi2ssl	452(%rsp), %xmm0
	movss	%xmm0, 376(%rsp)
	leaq	328(%rsp), %rbp
.LBB3_57:                               # %if.end.183
	movss	388(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB3_58
# BB#59:                                # %if.else.203
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	callq	floor
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 388(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	456(%rsp), %xmm0
	movsd	.LCPI3_11(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	128(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jb	.LBB3_61
# BB#60:                                # %if.then.219
	callq	fabs
	movsd	.LCPI3_11(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	divsd	%xmm0, %xmm1
	movsd	.LCPI3_10(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_scale
	jmp	.LBB3_61
.LBB3_58:                               # %if.then.188
	movl	456(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	fabs
	movapd	%xmm0, %xmm1
	movsd	.LCPI3_10(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_scale
	xorps	%xmm0, %xmm0
	cvtsi2ssl	456(%rsp), %xmm0
	movss	%xmm0, 388(%rsp)
.LBB3_61:                               # %if.end.232
	leaq	192(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gs_bbox_transform
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	%rbx, %rbp
	jns	.LBB3_71
.LBB3_62:                               # %fsaved
	movq	%rbp, %rdi
	callq	gs_state_free
	movl	$.L.str.8, %edx
	movq	%r12, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
.LBB3_86:                               # %cleanup.475
	movl	%r13d, %eax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_pattern1_make_pattern, .Lfunc_end3-gs_pattern1_make_pattern
	.cfi_endproc

	.globl	gx_pattern1_get_transptr
	.align	16, 0x90
	.type	gx_pattern1_get_transptr,@function
gx_pattern1_get_transptr:               # @gx_pattern1_get_transptr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	192(%rax), %rax
	retq
.Lfunc_end4:
	.size	gx_pattern1_get_transptr, .Lfunc_end4-gx_pattern1_get_transptr
	.cfi_endproc

	.globl	gx_pattern1_clist_has_trans
	.align	16, 0x90
	.type	gx_pattern1_clist_has_trans,@function
gx_pattern1_clist_has_trans:            # @gx_pattern1_clist_has_trans
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	200(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	1056(%rcx), %eax
.LBB5_2:                                # %return
	retq
.Lfunc_end5:
	.size	gx_pattern1_clist_has_trans, .Lfunc_end5-gx_pattern1_clist_has_trans
	.cfi_endproc

	.globl	gx_dc_is_pattern1_color_clist_based
	.align	16, 0x90
	.type	gx_dc_is_pattern1_color_clist_based,@function
gx_dc_is_pattern1_color_clist_based:    # @gx_dc_is_pattern1_color_clist_based
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	je	.LBB6_3
# BB#1:                                 # %entry
	movl	$gx_dc_pattern_trans, %ecx
	cmpq	%rcx, %rax
	je	.LBB6_3
# BB#2:                                 # %return
	xorl	%eax, %eax
	retq
.LBB6_3:                                # %if.end
	movq	8(%rdi), %rdi
	jmp	gx_pattern_tile_is_clist # TAILCALL
.Lfunc_end6:
	.size	gx_dc_is_pattern1_color_clist_based, .Lfunc_end6-gx_dc_is_pattern1_color_clist_based
	.cfi_endproc

	.globl	gx_dc_is_pattern1_color
	.align	16, 0x90
	.type	gx_dc_is_pattern1_color,@function
gx_dc_is_pattern1_color:                # @gx_dc_is_pattern1_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movl	$gx_dc_pattern_trans, %edx
	cmpq	%rdx, %rax
	sete	%al
	orb	%cl, %al
	movzbl	%al, %eax
	retq
.Lfunc_end7:
	.size	gx_dc_is_pattern1_color, .Lfunc_end7-gx_dc_is_pattern1_color
	.cfi_endproc

	.globl	gs_dc_get_pattern_id
	.align	16, 0x90
	.type	gs_dc_get_pattern_id,@function
gs_dc_get_pattern_id:                   # @gs_dc_get_pattern_id
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movl	$gx_dc_pattern, %edx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	je	.LBB8_2
# BB#1:                                 # %entry
	movl	$gx_dc_pattern_trans, %edx
	cmpq	%rdx, %rcx
	jne	.LBB8_4
.LBB8_2:                                # %if.end
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB8_4
# BB#3:                                 # %if.end.2
	movq	(%rcx), %rax
.LBB8_4:                                # %return
	retq
.Lfunc_end8:
	.size	gs_dc_get_pattern_id, .Lfunc_end8-gs_dc_get_pattern_id
	.cfi_endproc

	.globl	gs_getpattern
	.align	16, 0x90
	.type	gs_getpattern,@function
gs_getpattern:                          # @gs_getpattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	movl	$gs_pattern1_type, %edx
	xorl	%eax, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB9_3
# BB#2:                                 # %cond.false
	addq	$48, %rcx
	movq	%rcx, %rax
.LBB9_3:                                # %cond.end
	retq
.Lfunc_end9:
	.size	gs_getpattern, .Lfunc_end9-gs_getpattern
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	pixmap_high_level_pattern
	.align	16, 0x90
	.type	pixmap_high_level_pattern,@function
pixmap_high_level_pattern:              # @pixmap_high_level_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 128
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	1760(%r12), %r14
	movq	368(%r14), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB10_3
# BB#1:                                 # %lor.lhs.false.i
	movl	$gs_pattern1_type, %ecx
	xorl	%ebx, %ebx
	cmpq	%rcx, 24(%rax)
	jne	.LBB10_3
# BB#2:                                 # %cond.false.i
	addq	$48, %rax
	movq	%rax, %rbx
.LBB10_3:                               # %gs_getpattern.exit
	movq	%r12, %rdi
	callq	gs_currentcolor
	movq	(%rax), %r15
	movq	32(%rbx), %r13
	movq	1872(%r12), %rax
	movzwl	108(%rax), %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_pattern_cache_add_dummy_entry
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#4:                                 # %if.end
	movq	%r12, %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#5:                                 # %if.end.8
	movq	1872(%r12), %rdi
	leaq	48(%rsp), %rbp
	movq	%rbp, %rsi
	callq	*1152(%rdi)
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gs_setmatrix
	addq	$56, %rbx
	leaq	132(%r12), %rsi
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gs_bbox_transform
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_6
# BB#7:                                 # %if.end.17
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, (%rsp)
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 4(%rsp)
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 8(%rsp)
	mulsd	40(%rsp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 12(%rsp)
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_clip_to_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_6
# BB#8:                                 # %if.end.42
	movq	1872(%r12), %rdi
	movl	240(%r15), %ecx
	movl	$1, %esi
	movq	%r15, %rdx
	callq	*1664(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_6
# BB#9:                                 # %if.end.52
	addq	$368, %r14              # imm = 0x170
	cmpq	$0, 40(%r13)
	je	.LBB10_11
# BB#10:                                # %if.then.55
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	image_PaintProc
	jmp	.LBB10_12
.LBB10_6:                               # %if.then.15
	movq	%r12, %rdi
	callq	gs_grestore
.LBB10_15:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_11:                              # %if.else
	movq	8(%r12), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	gs_setcolorspace
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	mask_PaintProc
.LBB10_12:                              # %if.end.62
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#13:                                # %if.end.66
	movq	%r12, %rdi
	callq	gs_grestore
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_15
# BB#14:                                # %if.end.71
	movq	1872(%r12), %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	movl	%eax, %ebp
	jmp	.LBB10_15
.Lfunc_end10:
	.size	pixmap_high_level_pattern, .Lfunc_end10-pixmap_high_level_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	image_PaintProc,@function
image_PaintProc:                        # @image_PaintProc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$1128, %rsp             # imm = 0x468
.Ltmp40:
	.cfi_def_cfa_offset 1184
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	(%rdi), %rax
	movq	80(%rax), %r13
	movq	%r14, %rdi
	callq	gs_state_memory
	movl	$.L.str.11, %esi
	movq	%rax, %rdi
	callq	gs_image_enum_alloc
	movq	%rax, (%rsp)            # 8-byte Spill
	movzbl	33(%r13), %edx
	movzbl	32(%r13), %ecx
	imull	%edx, %ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB11_16
# BB#1:                                 # %if.end
	movl	48(%r13), %r15d
	movq	40(%r13), %r12
	testq	%r12, %r12
	jne	.LBB11_3
# BB#2:                                 # %if.then.10
	movq	8(%r14), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r12
.LBB11_3:                               # %if.end.13
	movq	%r14, %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_16
# BB#4:                                 # %if.end.18
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gs_setcolorspace
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_16
# BB#5:                                 # %if.end.23
	leaq	8(%rsp), %rdi
	cmpl	%ebx, %r15d
	jae	.LBB11_7
# BB#6:                                 # %if.then.24
	movq	%r12, %rsi
	callq	gs_image4_t_init
	jmp	.LBB11_8
.LBB11_7:                               # %if.else.25
	xorl	%edx, %edx
	movq	%r12, %rsi
	callq	gs_image_t_init_adjust
.LBB11_8:                               # %if.end.26
	movq	(%rsp), %r12            # 8-byte Reload
	movl	12(%r13), %eax
	movl	%eax, 40(%rsp)
	movl	16(%r13), %eax
	movl	%eax, 44(%rsp)
	cmpl	%ebx, %r15d
	jae	.LBB11_10
# BB#9:                                 # %if.then.30
	movl	$0, 592(%rsp)
	movl	48(%r13), %eax
	movl	%eax, 596(%rsp)
.LBB11_10:                              # %if.end.33
	movl	$0, 52(%rsp)
	movzbl	32(%r13), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 56(%rsp)
	movl	%ecx, 48(%rsp)
	cmpq	$0, 40(%r13)
	jne	.LBB11_12
# BB#11:                                # %if.then.49
	movq	$1065353216, 52(%rsp)   # imm = 0x3F800000
.LBB11_12:                              # %if.end.56
	leaq	8(%rsp), %rdi
	leaq	1120(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rsi
	callq	gs_image_begin_typed
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_15
# BB#13:                                # %land.lhs.true
	movq	1120(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	gs_image_enum_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_15
# BB#14:                                # %if.then.63
	leaq	8(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	bitmap_paint
	movl	%eax, %ebp
.LBB11_15:                              # %if.end.65
	movq	%r14, %rdi
	callq	gs_grestore
.LBB11_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$1128, %rsp             # imm = 0x468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	image_PaintProc, .Lfunc_end11-image_PaintProc
	.cfi_endproc

	.align	16, 0x90
	.type	mask_PaintProc,@function
mask_PaintProc:                         # @mask_PaintProc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 40
	subq	$600, %rsp              # imm = 0x258
.Ltmp51:
	.cfi_def_cfa_offset 640
.Ltmp52:
	.cfi_offset %rbx, -40
.Ltmp53:
	.cfi_offset %r12, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	(%rdi), %rax
	movq	80(%rax), %r14
	movq	%r15, %rdi
	callq	gs_state_memory
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	callq	gs_image_enum_alloc
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB12_2
# BB#1:                                 # %if.end
	leaq	(%rsp), %r12
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	gs_image_t_init_mask_adjust
	movl	12(%r14), %eax
	movl	%eax, 32(%rsp)
	movl	16(%r14), %eax
	movl	%eax, 36(%rsp)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	callq	gs_image_init
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	bitmap_paint
.LBB12_2:                               # %cleanup
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	mask_PaintProc, .Lfunc_end12-mask_PaintProc
	.cfi_endproc

	.globl	gs_makepixmappattern
	.align	16, 0x90
	.type	gs_makepixmappattern,@function
gs_makepixmappattern:                   # @gs_makepixmappattern
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
	subq	$184, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 240
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
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	jne	.LBB13_2
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB13_2
# BB#3:                                 # %if.else
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	movl	$-15, %r13d
	cmpl	$10, %eax
	jne	.LBB13_17
	jmp	.LBB13_4
.LBB13_2:                               # %if.then
	movzbl	32(%rbx), %eax
	movl	$-15, %r13d
	xorl	%r12d, %r12d
	cmpl	$1, %eax
	jne	.LBB13_17
.LBB13_4:                               # %if.end.8
	movl	$-15, %r13d
	movzbl	33(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB13_17
# BB#5:                                 # %if.end.13
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB13_7
# BB#6:                                 # %if.then.16
	movq	248(%rsp), %rdi
	callq	gs_state_memory
	movq	%rax, %rdi
.LBB13_7:                               # %if.end.18
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	$st_pixmap_info, %esi
	movl	$.L.str.5, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB13_17
# BB#8:                                 # %if.end.23
	movl	240(%rsp), %ecx
	movq	32(%rbx), %rax
	movq	%rax, 32(%rbp)
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	%xmm1, 16(%rbp)
	movups	%xmm0, (%rbp)
	movq	%r12, 40(%rbp)
	movl	%ecx, 48(%rbp)
	leaq	80(%rsp), %rdi
	movl	$gs_pattern1_type, %esi
	callq	gs_pattern_common_init
	movl	$0, 128(%rsp)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, %r14
	movq	8(%rsp), %r13           # 8-byte Reload
	jne	.LBB13_10
# BB#9:                                 # %cond.true
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, %r14
.LBB13_10:                              # %cond.end
	testl	%r15d, %r15d
	setne	%al
	movq	%r14, 96(%rsp)
	movq	$0, 104(%rsp)
	movzbl	%al, %eax
	movl	$pixmap_remap_mask_pattern, %ecx
	movl	$pixmap_remap_image_pattern, %edx
	cmovneq	%rcx, %rdx
	incl	%eax
	movl	%eax, 120(%rsp)
	movl	$1, 124(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 136(%rsp)
	movl	12(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 152(%rsp)
	movl	16(%rbx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 160(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 168(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 172(%rsp)
	movq	%rdx, 176(%rsp)
	movq	%rbp, 112(%rsp)
	leaq	32(%rsp), %rsi
	movq	248(%rsp), %r12
	movq	%r12, %rdi
	callq	gs_currentmatrix
	leaq	56(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_make_identity
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gs_setmatrix
	movq	16(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	cmoveq	%r14, %rdx
	leaq	80(%rsp), %rsi
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	gs_pattern1_make_pattern
	movq	%r13, %rdi
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB13_12
# BB#11:                                # %if.then.62
	movl	$.L.str.6, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB13_16
.LBB13_12:                              # %if.else.64
	testl	%r15d, %r15d
	movq	(%r14), %rax
	jne	.LBB13_15
# BB#13:                                # %land.lhs.true
	movb	32(%rbx), %cl
	movl	$1, %edx
	shll	%cl, %edx
	cmpl	240(%rsp), %edx
	ja	.LBB13_15
# BB#14:                                # %if.then.70
	movl	$0, 220(%rax)
.LBB13_15:                              # %if.end.71
	movq	16(%rax), %rcx
	movq	%rcx, 56(%rbp)
	movq	$free_pixmap_pattern, 16(%rax)
	movq	32(%rax), %rdi
	xorps	%xmm0, %xmm0
	callq	gs_setgray
.LBB13_16:                              # %if.end.75
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_setmatrix
.LBB13_17:                              # %cleanup
	movl	%r13d, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gs_makepixmappattern, .Lfunc_end13-gs_makepixmappattern
	.cfi_endproc

	.align	16, 0x90
	.type	pixmap_remap_mask_pattern,@function
pixmap_remap_mask_pattern:              # @pixmap_remap_mask_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	xorl	%edx, %edx
	testq	%rax, %rax
	je	.LBB14_3
# BB#1:                                 # %lor.lhs.false.i
	movl	$gs_pattern1_type, %ecx
	xorl	%edx, %edx
	cmpq	%rcx, 24(%rax)
	jne	.LBB14_3
# BB#2:                                 # %cond.false.i
	leaq	48(%rax), %rdx
.LBB14_3:                               # %gs_getpattern.exit
	cmpl	$0, 316(%r14)
	je	.LBB14_5
# BB#4:                                 # %if.then
	movq	32(%rax), %rax
	movq	1872(%rax), %rdi
	movl	16(%rdx), %ecx
	xorl	%esi, %esi
	callq	*1664(%rdi)
	movl	%eax, %ecx
	movl	$-103, %eax
	cmpl	$1, %ecx
	je	.LBB14_6
.LBB14_5:                               # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	mask_PaintProc
	xorl	%eax, %eax
.LBB14_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	pixmap_remap_mask_pattern, .Lfunc_end14-pixmap_remap_mask_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	pixmap_remap_image_pattern,@function
pixmap_remap_image_pattern:             # @pixmap_remap_image_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -24
.Ltmp78:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	xorl	%edx, %edx
	testq	%rax, %rax
	je	.LBB15_3
# BB#1:                                 # %lor.lhs.false.i
	movl	$gs_pattern1_type, %ecx
	xorl	%edx, %edx
	cmpq	%rcx, 24(%rax)
	jne	.LBB15_3
# BB#2:                                 # %cond.false.i
	leaq	48(%rax), %rdx
.LBB15_3:                               # %gs_getpattern.exit
	cmpl	$0, 316(%r14)
	je	.LBB15_5
# BB#4:                                 # %if.then
	movq	32(%rax), %rax
	movq	1872(%rax), %rdi
	movl	16(%rdx), %ecx
	xorl	%esi, %esi
	callq	*1664(%rdi)
	movl	%eax, %ecx
	movl	$-103, %eax
	cmpl	$1, %ecx
	je	.LBB15_6
.LBB15_5:                               # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	image_PaintProc
	xorl	%eax, %eax
.LBB15_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	pixmap_remap_image_pattern, .Lfunc_end15-pixmap_remap_image_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	free_pixmap_pattern,@function
free_pixmap_pattern:                    # @free_pixmap_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -32
.Ltmp83:
	.cfi_offset %r14, -24
.Ltmp84:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	80(%rsi), %r15
	callq	*56(%r15)
	movq	24(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	free_pixmap_pattern, .Lfunc_end16-free_pixmap_pattern
	.cfi_endproc

	.globl	gs_makebitmappattern_xform
	.align	16, 0x90
	.type	gs_makebitmappattern_xform,@function
gs_makebitmappattern_xform:             # @gs_makebitmappattern_xform
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$72, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 80
	movq	80(%rsp), %r10
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, 40(%rsp)
	movzwl	32(%rsi), %eax
	movl	%eax, 44(%rsp)
	movzwl	34(%rsi), %eax
	movl	%eax, 48(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 56(%rsp)
	movw	$257, 64(%rsp)          # imm = 0x101
	movq	%r10, 16(%rsp)
	movq	%r9, 8(%rsp)
	movl	$0, (%rsp)
	leaq	32(%rsp), %rsi
	xorl	%r9d, %r9d
	callq	gs_makepixmappattern
	addq	$72, %rsp
	retq
.Lfunc_end17:
	.size	gs_makebitmappattern_xform, .Lfunc_end17-gs_makebitmappattern_xform
	.cfi_endproc

	.globl	gx_dc_pattern_save_dc
	.align	16, 0x90
	.type	gx_dc_pattern_save_dc,@function
gx_dc_pattern_save_dc:                  # @gx_dc_pattern_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	cmpl	$0, 360(%rdi)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	368(%rdi), %rax
	movq	40(%rax), %rax
	movq	%rax, 8(%rsi)
	movq	352(%rdi), %rax
	movq	%rax, 16(%rsi)
	retq
.LBB18_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rsi)
	retq
.Lfunc_end18:
	.size	gx_dc_pattern_save_dc, .Lfunc_end18-gx_dc_pattern_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern_get_dev_halftone,@function
gx_dc_pattern_get_dev_halftone:         # @gx_dc_pattern_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	gx_dc_pattern_get_dev_halftone, .Lfunc_end19-gx_dc_pattern_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern_load,@function
gx_dc_pattern_load:                     # @gx_dc_pattern_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 48
.Ltmp91:
	.cfi_offset %rbx, -48
.Ltmp92:
	.cfi_offset %r12, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	jne	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_load
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB20_1
.LBB20_3:                               # %while.end
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gx_dc_pattern_load, .Lfunc_end20-gx_dc_pattern_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern_equal,@function
gx_dc_pattern_equal:                    # @gx_dc_pattern_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	je	.LBB21_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_2:                               # %land.lhs.true
	movl	352(%rdi), %eax
	cmpl	352(%rsi), %eax
	jne	.LBB21_3
# BB#4:                                 # %land.lhs.true.5
	movl	356(%rdi), %eax
	cmpl	356(%rsi), %eax
	jne	.LBB21_5
# BB#6:                                 # %land.rhs
	movq	640(%rdi), %rax
	cmpq	640(%rsi), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB21_3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB21_5:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end21:
	.size	gx_dc_pattern_equal, .Lfunc_end21-gx_dc_pattern_equal
	.cfi_endproc

	.globl	gx_dc_pattern_write
	.align	16, 0x90
	.type	gx_dc_pattern_write,@function
gx_dc_pattern_write:                    # @gx_dc_pattern_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 224
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB22_63
# BB#1:                                 # %if.end
	movl	(%r12), %r13d
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	jne	.LBB22_3
# BB#2:                                 # %if.then.3
	movq	8(%rsi), %rax
	movl	$1, %ebp
	cmpq	(%rbx), %rax
	je	.LBB22_64
.LBB22_3:                               # %if.end.10
	testq	%r15, %r15
	jne	.LBB22_6
# BB#4:                                 # %if.end.10
	cmpl	$8, %r13d
	jne	.LBB22_6
# BB#5:                                 # %if.then.14
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$8, (%r12)
	jmp	.LBB22_63
.LBB22_6:                               # %if.end.18
	movq	192(%rbx), %rax
	testq	%rax, %rax
	je	.LBB22_20
# BB#7:                                 # %do.end.24
	movslq	52(%rax), %rcx
	movslq	56(%rax), %rax
	imulq	%rcx, %rax
	movq	%rax, %rbp
	subq	$-128, %rbp
	testq	%r14, %r14
	je	.LBB22_8
# BB#9:                                 # %if.end.i
	testq	%r15, %r15
	jne	.LBB22_18
# BB#10:                                # %if.then.3.i
	movq	(%rbx), %rcx
	movq	%rcx, 80(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 100(%rsp)
	movl	%eax, 88(%rsp)
	movl	$0, 92(%rsp)
	movl	8(%rbx), %eax
	movl	36(%rbx), %ecx
	movl	$536870912, %edx        # imm = 0x20000000
	cmpb	$0, 208(%rbx)
	jne	.LBB22_12
# BB#11:                                # %select.mid
	xorl	%edx, %edx
.LBB22_12:                              # %select.end
	shll	$24, %ecx
	movl	$1073741824, %esi       # imm = 0x40000000
	cmpb	$0, 209(%rbx)
	jne	.LBB22_14
# BB#13:                                # %select.mid152
	xorl	%esi, %esi
.LBB22_14:                              # %select.end151
	orl	%ecx, %eax
	orl	%edx, %eax
	orl	%esi, %eax
	orl	$268435456, %eax        # imm = 0x10000000
	movl	%eax, 160(%rsp)
	movq	56(%rbx), %rax
	movq	%rax, 120(%rsp)
	movups	40(%rbx), %xmm0
	movups	%xmm0, 104(%rsp)
	movups	64(%rbx), %xmm0
	movups	80(%rbx), %xmm1
	movups	%xmm1, 144(%rsp)
	movups	%xmm0, 128(%rsp)
	cmpl	$88, %r13d
	jb	.LBB22_16
# BB#15:                                # %if.end.19.i
	leaq	80(%rsp), %rsi
	movl	$88, %edx
	movq	%r14, %rdi
	callq	memcpy
	leal	-88(%r13), %eax
	movq	192(%rbx), %rcx
	movl	84(%rcx), %edx
	movl	%edx, 68(%rsp)
	movl	68(%rcx), %edx
	movl	%edx, 64(%rsp)
	movl	56(%rcx), %edx
	movl	%edx, 56(%rsp)
	movl	52(%rcx), %edx
	movl	%edx, 52(%rsp)
	movups	32(%rcx), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	48(%rcx), %edx
	movl	%edx, 48(%rsp)
	movl	64(%rcx), %ecx
	movl	%ecx, 60(%rsp)
	cmpl	$39, %eax
	ja	.LBB22_17
.LBB22_16:                              # %cleanup.thread.i
	movl	$-28, %ebp
	jmp	.LBB22_64
.LBB22_20:                              # %if.end.26
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB22_21
# BB#45:                                # %if.end.31
	xorl	%esi, %esi
	callq	clist_data_size
	movl	$-28, %ebp
	testl	%eax, %eax
	js	.LBB22_64
# BB#46:                                # %if.end.37
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	200(%rbx), %rdi
	movl	$1, %esi
	callq	clist_data_size
	testl	%eax, %eax
	js	.LBB22_64
# BB#47:                                # %if.end.43
	testq	%r14, %r14
	je	.LBB22_48
# BB#49:                                # %if.end.51
	testq	%r15, %r15
	jne	.LBB22_58
# BB#50:                                # %if.then.54
	movq	(%rbx), %rcx
	movq	%rcx, 80(%rsp)
	movq	200(%rbx), %rdx
	movl	832(%rdx), %ecx
	movl	%ecx, 96(%rsp)
	movl	836(%rdx), %ecx
	movl	%ecx, 100(%rsp)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 88(%rsp)
	movl	%eax, 92(%rsp)
	movq	56(%rbx), %rcx
	movq	%rcx, 120(%rsp)
	movups	40(%rbx), %xmm0
	movups	%xmm0, 104(%rsp)
	movups	64(%rbx), %xmm0
	movups	80(%rbx), %xmm1
	movups	%xmm1, 144(%rsp)
	movups	%xmm0, 128(%rsp)
	movl	8(%rbx), %esi
	movl	36(%rbx), %ecx
	movl	$536870912, %r8d        # imm = 0x20000000
	cmpb	$0, 208(%rbx)
	jne	.LBB22_52
# BB#51:                                # %select.mid144
	xorl	%r8d, %r8d
.LBB22_52:                              # %select.end143
	movq	%rax, %r12
	movl	$1073741824, %eax       # imm = 0x40000000
	cmpb	$0, 209(%rbx)
	jne	.LBB22_54
# BB#53:                                # %select.mid156
	xorl	%eax, %eax
.LBB22_54:                              # %select.end155
	shll	$24, %ecx
	movq	200(%rbx), %rdx
	movl	$268435456, %edi        # imm = 0x10000000
	cmpl	$0, 1056(%rdx)
	jne	.LBB22_56
# BB#55:                                # %select.mid161
	xorl	%edi, %edi
.LBB22_56:                              # %select.end160
	orl	%ecx, %esi
	orl	%r8d, %esi
	orl	%eax, %esi
	orl	%edi, %esi
	orl	$134217728, %esi        # imm = 0x8000000
	movl	%esi, 160(%rsp)
	cmpl	$88, %r13d
	jb	.LBB22_64
# BB#57:                                # %cleanup.thread
	movl	$88, %r15d
	leaq	80(%rsp), %rsi
	movl	$88, %edx
	movq	%r14, %rdi
	callq	memcpy
	addl	$-88, %r13d
	addq	$88, %r14
	movq	%r12, %rax
.LBB22_58:                              # %if.end.86
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%ecx, %rsi
	leaq	88(%rsi), %rax
	cmpq	%rax, %r15
	ja	.LBB22_61
# BB#59:                                # %if.then.91
	movslq	%r13d, %rax
	leaq	-88(%r15), %rdx
	movq	%rsi, %r12
	subq	%rdx, %r12
	cmpq	%r12, %rax
	cmovaeq	%r12, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmovbl	%r13d, %r12d
	movq	200(%rbx), %rdi
	movq	%rsi, %rbp
	xorl	%esi, %esi
	movq	%r14, %rcx
	movl	%r12d, %r8d
	callq	clist_get_data
	movq	%rbp, %rsi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_64
# BB#60:                                # %if.end.110
	subl	%r12d, %r13d
	movq	24(%rsp), %rax          # 8-byte Reload
	cltq
	addq	%rax, %r14
	leaq	(%r15,%rax), %r15
.LBB22_61:                              # %if.end.115
	testl	%r13d, %r13d
	jle	.LBB22_63
# BB#62:                                # %if.then.118
	movslq	%r13d, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %r8
	movq	$-88, %rdx
	subq	%rsi, %rdx
	addq	%r15, %rdx
	subq	%rdx, %r8
	cmpq	%r8, %rax
	cmovbl	%r13d, %r8d
	movq	200(%rbx), %rdi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	clist_get_data
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB22_63
	jmp	.LBB22_64
.LBB22_8:                               # %if.then.i
	movl	%ebp, (%r12)
	jmp	.LBB22_63
.LBB22_21:                              # %if.then.29
	movl	104(%rbx), %ebp
	imull	112(%rbx), %ebp
	imull	136(%rbx), %ebp
	xorl	%edx, %edx
	cmpq	$0, 144(%rbx)
	je	.LBB22_23
# BB#22:                                # %cond.true.i
	movl	152(%rbx), %edx
	imull	160(%rbx), %edx
	addl	$48, %edx
.LBB22_23:                              # %cond.end.i
	testq	%r14, %r14
	je	.LBB22_24
# BB#26:                                # %if.end.i.94
	leaq	96(%rbx), %rcx
	addl	$48, %ebp
	testq	%r15, %r15
	jne	.LBB22_35
# BB#27:                                # %if.then.23.i
	movq	%rcx, %r15
	movq	(%rbx), %rax
	movq	%rax, 80(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 100(%rsp)
	movl	%ebp, 88(%rsp)
	movl	%edx, 92(%rsp)
	movq	56(%rbx), %rax
	movq	%rax, 120(%rsp)
	movups	40(%rbx), %xmm0
	movups	%xmm0, 104(%rsp)
	movups	64(%rbx), %xmm0
	movups	80(%rbx), %xmm1
	movups	%xmm1, 144(%rsp)
	movups	%xmm0, 128(%rsp)
	movl	36(%rbx), %eax
	shll	$24, %eax
	orl	8(%rbx), %eax
	movl	$536870912, %ecx        # imm = 0x20000000
	cmpb	$0, 208(%rbx)
	jne	.LBB22_29
# BB#28:                                # %select.mid131
	xorl	%ecx, %ecx
.LBB22_29:                              # %select.end130
	orl	%ecx, %eax
	movl	$1073741824, %ecx       # imm = 0x40000000
	cmpb	$0, 209(%rbx)
	jne	.LBB22_31
# BB#30:                                # %select.mid154
	xorl	%ecx, %ecx
.LBB22_31:                              # %select.end153
	movq	%rdx, %r12
	orl	%ecx, %eax
	movl	%eax, 160(%rsp)
	cmpl	$88, %r13d
	jb	.LBB22_33
# BB#32:                                # %if.end.44.i
	leaq	80(%rsp), %rsi
	movl	$88, %edx
	movq	%r14, %rdi
	callq	memcpy
	leal	-88(%r13), %eax
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movaps	%xmm2, 64(%rsp)
	movaps	%xmm1, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	$0, 32(%rsp)
	cmpl	$47, %eax
	ja	.LBB22_34
.LBB22_33:                              # %cleanup.thread.i.107
	movl	$-28, %ebp
	jmp	.LBB22_64
.LBB22_24:                              # %if.then.i.93
	leal	136(%rbp,%rdx), %eax
	movl	%eax, (%r12)
	jmp	.LBB22_63
.LBB22_17:                              # %cleanup.i
	leaq	88(%r14), %rdi
	leaq	32(%rsp), %rsi
	movl	$40, %edx
	callq	memcpy
	addl	$-128, %r13d
	subq	$-128, %r14
	movl	$128, %r15d
.LBB22_18:                              # %if.end.74.i
	cmpq	%rbp, %r15
	jg	.LBB22_63
# BB#19:                                # %if.then.78.i
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	movq	192(%rbx), %rax
	movq	8(%rax), %rax
	leaq	-128(%r15,%rax), %rsi
	movslq	%r13d, %rdx
	movq	%r14, %rdi
	callq	memcpy
	jmp	.LBB22_63
.LBB22_48:                              # %if.then.46
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	88(%rcx,%rax), %eax
	movl	%eax, (%r12)
.LBB22_63:                              # %if.end.147
	xorl	%ebp, %ebp
.LBB22_64:                              # %cleanup.148
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_34:                              # %cleanup.i.109
	leaq	88(%r14), %rdi
	leaq	32(%rsp), %rsi
	movl	$48, %edx
	callq	memcpy
	addl	$-136, %r13d
	addq	$136, %r14
	movl	$136, %r15d
	movq	%r12, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB22_35:                              # %if.end.62.i
	movslq	%ebp, %rsi
	leaq	88(%rsi), %rax
	cmpq	%rax, %r15
	jbe	.LBB22_37
# BB#36:
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	jmp	.LBB22_38
.LBB22_37:                              # %if.then.67.i
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$136, %eax
	subq	%r15, %rax
	leaq	-48(%rsi,%rax), %r12
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movslq	%r13d, %r13
	cmpq	%r13, %r12
	movq	%r13, %rax
	cmovbq	%r12, %rax
	cmovael	%r13d, %r12d
	movq	(%rcx), %rcx
	leaq	-136(%r15,%rcx), %rsi
	movslq	%eax, %rbp
	movq	%r14, %rdi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %rdx
	callq	memcpy
	movq	16(%rsp), %rdx          # 8-byte Reload
	subl	%r12d, %r13d
	addq	%rbp, %r14
	addq	%rbp, %r15
.LBB22_38:                              # %if.end.98.i
	xorl	%ebp, %ebp
	testl	%edx, %edx
	je	.LBB22_64
# BB#39:                                # %if.end.98.i
	testl	%r13d, %r13d
	je	.LBB22_64
# BB#40:                                # %if.end.106.i
	addq	$144, %rbx
	movq	24(%rsp), %r12          # 8-byte Reload
	leaq	136(%r12), %rax
	cmpq	%rax, %r15
	ja	.LBB22_43
# BB#41:                                # %if.then.112.i
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	cmpl	$48, %r13d
	jae	.LBB22_42
# BB#65:                                # %cleanup.127.i
	movl	$-28, %ebp
	jmp	.LBB22_64
.LBB22_42:                              # %cleanup.127.thread.i
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$0, 80(%rsp)
	leaq	80(%rsp), %rsi
	movl	$48, %edx
	movq	%r14, %rdi
	callq	memcpy
	addl	$-48, %r13d
	addq	$48, %r14
	addq	$48, %r15
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB22_43:                              # %if.end.130.i
	movslq	%edx, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	cmpq	%rcx, %r15
	ja	.LBB22_64
# BB#44:                                # %if.then.137.i
	addq	$-48, %rax
	movslq	%r13d, %rcx
	cmpq	%rcx, %rax
	cmovaeq	%rcx, %rax
	movq	$-136, %rsi
	subq	%r12, %rsi
	addq	%r15, %rsi
	addq	(%rbx), %rsi
	movslq	%eax, %rdx
	movq	%r14, %rdi
	callq	memcpy
	jmp	.LBB22_64
.Lfunc_end22:
	.size	gx_dc_pattern_write, .Lfunc_end22-gx_dc_pattern_write
	.cfi_endproc

	.globl	gx_dc_pattern_read
	.align	16, 0x90
	.type	gx_dc_pattern_read,@function
gx_dc_pattern_read:                     # @gx_dc_pattern_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$2344, %rsp             # imm = 0x928
.Ltmp115:
	.cfi_def_cfa_offset 2400
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	2408(%rsp), %r9
	movl	2400(%rsp), %r14d
	testq	%r8, %r8
	je	.LBB23_1
# BB#23:                                # %if.else.192
	movq	8(%rbp), %rdi
	movq	%rdi, 2248(%rsp)
	movq	192(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB23_29
# BB#24:                                # %if.then.199
	movslq	56(%rbx), %rax
	movslq	52(%rbx), %rbp
	imulq	%rax, %rbp
	movq	8(%rbx), %r13
	testq	%r13, %r13
	jne	.LBB23_26
# BB#25:                                # %if.then.i.108
	movl	$.L.str.19, %edx
	movq	%r9, %rdi
	movl	%ebp, %esi
	movq	%r8, %r15
	movq	%r9, %r14
	callq	*64(%r14)
	movq	%r15, %r8
	movq	%rax, %r13
	movq	%r13, 8(%rbx)
	movq	%r14, 16(%rbx)
	movl	2400(%rsp), %r14d
	movl	$-25, %r15d
	testq	%r13, %r13
	je	.LBB23_40
.LBB23_26:                              # %if.end.6.i.112
	movq	%rbp, %rax
	subq	$-128, %rax
	cmpq	%r8, %rax
	movl	%r14d, %eax
	jb	.LBB23_28
# BB#27:                                # %if.then.9.i.121
	cmpl	%r14d, %ebp
	movl	%r14d, %eax
	cmovlel	%ebp, %eax
	leaq	-128(%r13,%r8), %rdi
	movslq	%eax, %rbp
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movq	%r13, 8(%rbx)
	movl	%r14d, %eax
	subl	%ebp, %eax
.LBB23_28:                              # %if.end.22.i.124
	subl	%eax, %r14d
	jmp	.LBB23_39
.LBB23_1:                               # %if.then
	xorps	%xmm0, %xmm0
	movups	%xmm0, 640(%rbp)
	cmpl	$8, %r14d
	jne	.LBB23_2
# BB#4:                                 # %if.then.8
	leaq	288(%rsp), %rdi
	movl	$8, %edx
	movq	%r12, %rsi
	callq	memcpy
	movq	$gx_dc_pattern, (%rbp)
	movq	288(%rsp), %rax
	movq	%rax, 640(%rbp)
	movl	$8, %r15d
	jmp	.LBB23_40
.LBB23_29:                              # %if.end.201
	cmpq	$0, 200(%rdi)
	je	.LBB23_30
# BB#31:                                # %if.end.207
	movl	108(%rdi), %ebp
	movq	%r12, %rcx
	movl	%r14d, %ebx
.LBB23_32:                              # %if.end.214
	movslq	%ebp, %r12
	leaq	88(%r12), %rax
	cmpq	%rax, %r8
	ja	.LBB23_35
# BB#33:                                # %if.then.219
	movslq	%ebx, %rax
	leaq	-88(%r8), %rdx
	movq	%r8, %r15
	movq	%r12, %r8
	subq	%rdx, %r8
	cmpq	%r8, %rax
	cmovbl	%ebx, %r8d
	movq	2248(%rsp), %rax
	movq	200(%rax), %rdi
	xorl	%esi, %esi
	movq	%rcx, %rbp
	callq	clist_put_data
	movq	%rbp, %rcx
	movq	%r15, %rbp
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB23_40
# BB#34:                                # %if.end.241
	subl	%r15d, %ebx
	movslq	%r15d, %rax
	leaq	-88(%rax,%rbp), %rsi
	leaq	(%rax,%rbp), %rdx
	addq	%rax, %rcx
	movq	2248(%rsp), %rax
	movq	200(%rax), %rax
	movq	%rsi, 10120(%rax)
	movq	%rdx, %r8
.LBB23_35:                              # %if.end.249
	testl	%ebx, %ebx
	jle	.LBB23_38
# BB#36:                                # %if.then.252
	movq	2248(%rsp), %rax
	movq	200(%rax), %rdi
	movq	$-88, %rdx
	subq	%r12, %rdx
	addq	%r8, %rdx
	movl	$1, %esi
	movl	%ebx, %r8d
	callq	clist_put_data
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB23_40
# BB#37:                                # %if.end.261
	subl	%r15d, %ebx
.LBB23_38:                              # %if.end.265
	subl	%ebx, %r14d
.LBB23_39:                              # %cleanup.267
	movl	%r14d, %r15d
	jmp	.LBB23_40
.LBB23_2:                               # %if.then
	testl	%r14d, %r14d
	jne	.LBB23_5
# BB#3:                                 # %if.then.3
	movq	$gx_dc_pattern, (%rbp)
	movq	$0, 8(%rbp)
	movq	$0, 640(%rbp)
	xorl	%r15d, %r15d
	jmp	.LBB23_40
.LBB23_5:                               # %if.end.13
	movl	$-28, %r15d
	cmpl	$88, %r14d
	jb	.LBB23_40
# BB#6:                                 # %if.end.18
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	2256(%rsp), %rdi
	movl	$88, %edx
	movq	%r12, %rsi
	callq	memcpy
	leaq	88(%r12), %rsi
	movl	$402653184, %eax        # imm = 0x18000000
	andl	2336(%rsp), %eax
	cmpl	$268435456, %eax        # imm = 0x10000000
	jne	.LBB23_9
# BB#7:                                 # %if.then.25
	cmpl	$128, %r14d
	jb	.LBB23_40
# BB#8:                                 # %if.end.30
	leaq	2208(%rsp), %rdi
	movl	$40, %edx
	callq	memcpy
	subq	$-128, %r12
	leal	-128(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	2228(%rsp), %eax
	movl	2232(%rsp), %ecx
	imull	%eax, %ecx
	cmpl	$357913941, %eax        # imm = 0x15555555
	movl	$2147418112, %esi       # imm = 0x7FFF0000
	cmovlel	%ecx, %esi
	movl	$128, %ebx
	jmp	.LBB23_10
.LBB23_30:                              # %if.then.205
	xorl	%esi, %esi
	movq	%r8, %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	callq	gx_dc_pattern_read_raster
	movl	%eax, %r15d
.LBB23_40:                              # %cleanup.267
	movl	%r15d, %eax
	addq	$2344, %rsp             # imm = 0x928
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_9:                               # %if.else
	movq	%rsi, %r12
	leal	-88(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	2264(%rsp), %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	addl	%eax, %esi
	movl	$88, %ebx
.LBB23_10:                              # %if.end.43
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	gx_pattern_cache_ensure_space
	movq	2256(%rsp), %rsi
	leaq	2248(%rsp), %rdx
	movq	%r13, %rdi
	callq	gx_pattern_cache_get_entry
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movq	2408(%rsp), %rax
	js	.LBB23_40
# BB#11:                                # %if.end.49
	movq	%rax, %r15
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %r12
	movq	24(%rsp), %rbx          # 8-byte Reload
	movslq	%ebx, %rsi
	movq	%r13, %rdi
	callq	gx_pattern_cache_update_used
	movq	2248(%rsp), %rdi
	movl	%ebx, 32(%rdi)
	movq	$gx_dc_pattern, (%rbp)
	movq	%rdi, 8(%rbp)
	movq	2256(%rsp), %rax
	movq	%rax, (%rdi)
	movq	%rax, 640(%rbp)
	movq	2296(%rsp), %rax
	movq	%rax, 56(%rdi)
	movups	2280(%rsp), %xmm0
	movups	%xmm0, 40(%rdi)
	movups	2304(%rsp), %xmm0
	movups	2320(%rsp), %xmm1
	movups	%xmm1, 80(%rdi)
	movups	%xmm0, 64(%rdi)
	movl	2336(%rsp), %eax
	movl	%eax, %ecx
	andl	$16777215, %ecx         # imm = 0xFFFFFF
	movl	%ecx, 8(%rdi)
	movl	%eax, %ecx
	shrl	$24, %ecx
	andl	$7, %ecx
	movl	%ecx, 36(%rdi)
	movl	%eax, %ecx
	shrl	$29, %ecx
	andb	$1, %cl
	movb	%cl, 208(%rdi)
	movl	%eax, %ecx
	shrl	$30, %ecx
	andb	$1, %cl
	movb	%cl, 209(%rdi)
	movb	$0, 210(%rdi)
	testl	$134217728, %eax        # imm = 0x8000000
	jne	.LBB23_20
# BB#12:                                # %if.then.82
	testl	$268435456, %eax        # imm = 0x10000000
	jne	.LBB23_13
# BB#19:                                # %if.else.135
	leaq	2256(%rsp), %rsi
	movq	%r12, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	20(%rsp), %r8d          # 4-byte Reload
	movq	%r15, %r9
	callq	gx_dc_pattern_read_raster
	leal	88(%rax), %r15d
	testl	%eax, %eax
	cmovsl	%eax, %r15d
	jmp	.LBB23_40
.LBB23_20:                              # %if.end.144
	movq	2264(%rsp), %rbp
	movq	%rbp, %rax
	shrq	$32, %rax
	movl	%ebp, 108(%rdi)
	movl	%eax, 112(%rdi)
	leaq	288(%rsp), %rbx
	xorl	%esi, %esi
	movl	$1920, %edx             # imm = 0x780
	movq	%rbx, %rdi
	callq	memset
	leaq	40(%rsp), %r13
	xorl	%esi, %esi
	movl	$248, %edx
	movq	%r13, %rdi
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2160(%rsp)
	movl	$1, 128(%rsp)
	movq	2272(%rsp), %rax
	movl	%eax, 268(%rsp)
	shrq	$32, %rax
	movl	%eax, 272(%rsp)
	movq	%rbx, 72(%rsp)
	movl	2336(%rsp), %eax
	shrl	$27, %eax
	andl	$1, %eax
	movl	%eax, 264(%rsp)
	movl	$.L.str.7, %ecx
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	gx_pattern_accum_alloc
	movq	2248(%rsp), %rcx
	movq	%rax, 200(%rcx)
	movq	2248(%rsp), %rax
	movq	200(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB23_21
# BB#22:                                # %cleanup
	movl	2336(%rsp), %eax
	shrl	$28, %eax
	andl	$1, %eax
	movl	%eax, 1056(%rdi)
	callq	*1144(%rdi)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movq	%r12, %r8
	movl	20(%rsp), %ebx          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	jns	.LBB23_32
	jmp	.LBB23_40
.LBB23_13:                              # %if.then.86
	movq	%r15, %r13
	movq	%r13, %rdi
	callq	new_pattern_trans_buff
	movq	2248(%rsp), %rcx
	movq	%rax, 192(%rcx)
	movl	2244(%rsp), %eax
	movq	2248(%rsp), %rcx
	movq	192(%rcx), %rcx
	movl	%eax, 84(%rcx)
	movl	2240(%rsp), %eax
	movl	%eax, 68(%rcx)
	movl	2232(%rsp), %eax
	movl	%eax, 56(%rcx)
	movq	$0, (%rcx)
	movslq	2228(%rsp), %rax
	movq	2248(%rsp), %rcx
	movq	192(%rcx), %rbx
	movl	%eax, 52(%rbx)
	movaps	2208(%rsp), %xmm0
	movups	%xmm0, 32(%rbx)
	movl	2224(%rsp), %ecx
	movl	%ecx, 48(%rbx)
	movl	2236(%rsp), %ecx
	movl	%ecx, 64(%rbx)
	movq	$gx_dc_pattern_trans, (%rbp)
	movslq	56(%rbx), %r15
	imulq	%rax, %r15
	movq	8(%rbx), %r14
	testq	%r14, %r14
	jne	.LBB23_15
# BB#14:                                # %if.then.i
	movl	$.L.str.19, %edx
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	*64(%r13)
	movq	%rax, %r14
	movq	%r14, 8(%rbx)
	movq	%r13, 16(%rbx)
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB23_18
.LBB23_15:                              # %if.end.6.i
	movq	%r15, %rax
	subq	$-128, %rax
	cmpq	%r12, %rax
	movl	20(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %eax
	movq	8(%rsp), %rsi           # 8-byte Reload
	jb	.LBB23_17
# BB#16:                                # %if.then.9.i
	cmpl	%ebp, %r15d
	movl	%ebp, %eax
	cmovlel	%r15d, %eax
	leaq	-128(%r14,%r12), %rdi
	movslq	%eax, %r15
	movq	%r15, %rdx
	callq	memcpy
	movq	%r14, 8(%rbx)
	movl	%ebp, %eax
	subl	%r15d, %eax
.LBB23_17:                              # %if.end.22.i
	subl	%eax, %ebp
	movl	%ebp, %eax
.LBB23_18:                              # %gx_dc_pattern_read_trans_buff.exit
	movl	%eax, %r15d
	subl	$-128, %r15d
	testl	%eax, %eax
	cmovsl	%eax, %r15d
	jmp	.LBB23_40
.LBB23_21:                              # %cleanup.thread
	movl	$-25, %r15d
	jmp	.LBB23_40
.Lfunc_end23:
	.size	gx_dc_pattern_read, .Lfunc_end23-gx_dc_pattern_read
	.cfi_endproc

	.globl	gx_dc_pattern_get_nonzero_comps
	.align	16, 0x90
	.type	gx_dc_pattern_get_nonzero_comps,@function
gx_dc_pattern_get_nonzero_comps:        # @gx_dc_pattern_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end24:
	.size	gx_dc_pattern_get_nonzero_comps, .Lfunc_end24-gx_dc_pattern_get_nonzero_comps
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_masked_get_dev_halftone,@function
gx_dc_pure_masked_get_dev_halftone:     # @gx_dc_pure_masked_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	gx_dc_pure_masked_get_dev_halftone, .Lfunc_end25-gx_dc_pure_masked_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_masked_load,@function
gx_dc_pure_masked_load:                 # @gx_dc_pure_masked_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -48
.Ltmp128:
	.cfi_offset %r12, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_pure+32(%rip)
	jmp	.LBB26_1
	.align	16, 0x90
.LBB26_3:                               # %while.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_load
.LBB26_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB26_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	je	.LBB26_3
.LBB26_4:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gx_dc_pure_masked_load, .Lfunc_end26-gx_dc_pure_masked_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_masked_equal,@function
gx_dc_pure_masked_equal:                # @gx_dc_pure_masked_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp134:
	.cfi_def_cfa_offset 32
.Ltmp135:
	.cfi_offset %rbx, -24
.Ltmp136:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_pure+56(%rip)
	testl	%eax, %eax
	je	.LBB27_1
# BB#2:                                 # %land.rhs
	movq	640(%rbx), %rax
	cmpq	640(%r14), %rax
	sete	%al
	jmp	.LBB27_3
.LBB27_1:
	xorl	%eax, %eax
.LBB27_3:                               # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	gx_dc_pure_masked_equal, .Lfunc_end27-gx_dc_pure_masked_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_binary_masked_get_dev_halftone,@function
gx_dc_binary_masked_get_dev_halftone:   # @gx_dc_binary_masked_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end28:
	.size	gx_dc_binary_masked_get_dev_halftone, .Lfunc_end28-gx_dc_binary_masked_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_binary_masked_load,@function
gx_dc_binary_masked_load:               # @gx_dc_binary_masked_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 48
.Ltmp142:
	.cfi_offset %rbx, -48
.Ltmp143:
	.cfi_offset %r12, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_ht_binary+32(%rip)
	jmp	.LBB29_1
	.align	16, 0x90
.LBB29_3:                               # %while.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_load
.LBB29_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	je	.LBB29_3
.LBB29_4:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gx_dc_binary_masked_load, .Lfunc_end29-gx_dc_binary_masked_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_binary_masked_equal,@function
gx_dc_binary_masked_equal:              # @gx_dc_binary_masked_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp149:
	.cfi_def_cfa_offset 32
.Ltmp150:
	.cfi_offset %rbx, -24
.Ltmp151:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_ht_binary+56(%rip)
	testl	%eax, %eax
	je	.LBB30_1
# BB#2:                                 # %land.rhs
	movq	640(%rbx), %rax
	cmpq	640(%r14), %rax
	sete	%al
	jmp	.LBB30_3
.LBB30_1:
	xorl	%eax, %eax
.LBB30_3:                               # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end30:
	.size	gx_dc_binary_masked_equal, .Lfunc_end30-gx_dc_binary_masked_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_colored_masked_get_dev_halftone,@function
gx_dc_colored_masked_get_dev_halftone:  # @gx_dc_colored_masked_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end31:
	.size	gx_dc_colored_masked_get_dev_halftone, .Lfunc_end31-gx_dc_colored_masked_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_colored_masked_load,@function
gx_dc_colored_masked_load:              # @gx_dc_colored_masked_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 48
.Ltmp157:
	.cfi_offset %rbx, -48
.Ltmp158:
	.cfi_offset %r12, -40
.Ltmp159:
	.cfi_offset %r14, -32
.Ltmp160:
	.cfi_offset %r15, -24
.Ltmp161:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_ht_colored+32(%rip)
	jmp	.LBB32_1
	.align	16, 0x90
.LBB32_3:                               # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_load
.LBB32_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB32_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	je	.LBB32_3
.LBB32_4:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gx_dc_colored_masked_load, .Lfunc_end32-gx_dc_colored_masked_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_colored_masked_equal,@function
gx_dc_colored_masked_equal:             # @gx_dc_colored_masked_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp164:
	.cfi_def_cfa_offset 32
.Ltmp165:
	.cfi_offset %rbx, -24
.Ltmp166:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_ht_colored+56(%rip)
	testl	%eax, %eax
	je	.LBB33_1
# BB#2:                                 # %land.rhs
	movq	640(%rbx), %rax
	cmpq	640(%r14), %rax
	sete	%al
	jmp	.LBB33_3
.LBB33_1:
	xorl	%eax, %eax
.LBB33_3:                               # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	gx_dc_colored_masked_equal, .Lfunc_end33-gx_dc_colored_masked_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_masked_load,@function
gx_dc_devn_masked_load:                 # @gx_dc_devn_masked_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 48
.Ltmp172:
	.cfi_offset %rbx, -48
.Ltmp173:
	.cfi_offset %r12, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_devn+32(%rip)
	jmp	.LBB34_1
	.align	16, 0x90
.LBB34_3:                               # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_load
.LBB34_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB34_4
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	je	.LBB34_3
.LBB34_4:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gx_dc_devn_masked_load, .Lfunc_end34-gx_dc_devn_masked_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_masked_equal,@function
gx_dc_devn_masked_equal:                # @gx_dc_devn_masked_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp179:
	.cfi_def_cfa_offset 32
.Ltmp180:
	.cfi_offset %rbx, -24
.Ltmp181:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*gx_dc_type_data_devn+56(%rip)
	testl	%eax, %eax
	je	.LBB35_1
# BB#2:                                 # %land.rhs
	movq	640(%rbx), %rax
	cmpq	640(%r14), %rax
	sete	%al
	jmp	.LBB35_3
.LBB35_1:
	xorl	%eax, %eax
.LBB35_3:                               # %land.end
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end35:
	.size	gx_dc_devn_masked_equal, .Lfunc_end35-gx_dc_devn_masked_equal
	.cfi_endproc

	.globl	gx_pattern_cache_lookup
	.align	16, 0x90
	.type	gx_pattern_cache_lookup,@function
gx_pattern_cache_lookup:                # @gx_pattern_cache_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp185:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp186:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp188:
	.cfi_def_cfa_offset 64
.Ltmp189:
	.cfi_offset %rbx, -56
.Ltmp190:
	.cfi_offset %r12, -48
.Ltmp191:
	.cfi_offset %r13, -40
.Ltmp192:
	.cfi_offset %r14, -32
.Ltmp193:
	.cfi_offset %r15, -24
.Ltmp194:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r8
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	640(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB36_1
# BB#2:                                 # %if.end
	movq	1304(%r14), %rcx
	xorl	%r12d, %r12d
	testq	%rcx, %rcx
	je	.LBB36_16
# BB#3:                                 # %if.then.6
	movl	16(%rcx), %esi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movq	%rbp, %rax
	divq	%rsi
	movq	%rdx, %r13
	movq	8(%rcx), %rdi
	movl	$1, %edx
	cmpl	$0, 316(%r14)
	je	.LBB36_6
# BB#4:                                 # %if.then.7
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%r8, %rdi
	movl	%ebp, %ecx
	callq	*1664(%r8)
	testl	%eax, %eax
	sete	%al
	js	.LBB36_16
# BB#5:
	movzbl	%al, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB36_6:                               # %if.end.15
	imulq	$232, %r13, %rcx
	leaq	(%rdi,%rcx), %rax
	cmpq	%rbp, (%rax)
	jne	.LBB36_16
# BB#7:                                 # %land.lhs.true
	movzbl	210(%rdi,%rcx), %esi
	xorl	$1, %edx
	cmpl	%edx, %esi
	jne	.LBB36_16
# BB#8:                                 # %if.then.23
	movslq	%r15d, %rdx
	movl	376(%r14,%rdx,8), %esi
	movl	380(%r14,%rdx,8), %r8d
	movq	(%rbx), %rdx
	movl	$gx_dc_pattern, %ebp
	cmpq	%rbp, %rdx
	je	.LBB36_11
# BB#9:                                 # %if.then.23
	movl	$gx_dc_pattern_trans, %ebp
	cmpq	%rbp, %rdx
	je	.LBB36_11
# BB#10:                                # %if.then.23.if.end.38_crit_edge
	negl	%esi
	negl	%r8d
	jmp	.LBB36_12
.LBB36_1:                               # %if.then
	movq	$0, 640(%rbx)
	movq	$0, 648(%rbx)
	movq	$0, 8(%rbx)
	movq	$gx_dc_pattern, (%rbx)
	jmp	.LBB36_15
.LBB36_11:                              # %if.then.30
	movq	%rax, 8(%rbx)
	negl	%esi
	movl	%esi, 352(%rbx)
	negl	%r8d
	movl	%r8d, 356(%rbx)
.LBB36_12:                              # %if.end.38
	xorl	%ebp, %ebp
	cmpq	$0, 144(%rdi,%rcx)
	je	.LBB36_14
# BB#13:                                # %select.mid
	movq	%rax, %rbp
.LBB36_14:                              # %select.end
	movq	%rbp, 648(%rbx)
	movl	%esi, 632(%rbx)
	movl	%r8d, 636(%rbx)
.LBB36_15:                              # %cleanup.58
	movl	$1, %r12d
.LBB36_16:                              # %cleanup.58
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gx_pattern_cache_lookup, .Lfunc_end36-gx_pattern_cache_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern_read_raster,@function
gx_dc_pattern_read_raster:              # @gx_dc_pattern_read_raster
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp196:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp198:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp199:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp201:
	.cfi_def_cfa_offset 112
.Ltmp202:
	.cfi_offset %rbx, -56
.Ltmp203:
	.cfi_offset %r12, -48
.Ltmp204:
	.cfi_offset %r13, -40
.Ltmp205:
	.cfi_offset %r14, -32
.Ltmp206:
	.cfi_offset %r15, -24
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r13d
	movq	%rcx, %r12
	movq	%rdi, %rbp
	testq	%rsi, %rsi
	je	.LBB37_6
# BB#1:                                 # %if.then
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	8(%rsi), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	12(%rsi), %ebx
	leal	-48(%rax), %esi
	movl	$.L.str.19, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 96(%rbp)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB37_28
# BB#2:                                 # %if.end
	testl	%ebx, %ebx
	je	.LBB37_4
# BB#3:                                 # %if.then.10
	leal	-48(%rbx), %esi
	movl	$.L.str.19, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 144(%rbp)
	testq	%rax, %rax
	movq	16(%rsp), %rdx          # 8-byte Reload
	jne	.LBB37_5
	jmp	.LBB37_28
.LBB37_6:                               # %if.else.27
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	96(%rbp), %rsi
	movq	%r14, %rdi
	callq	*120(%r14)
	addl	$48, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	144(%rbp), %rsi
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB37_7
# BB#8:                                 # %cond.true
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	*120(%r14)
	movl	%eax, %ebx
	addl	$48, %ebx
	jmp	.LBB37_9
.LBB37_4:                               # %if.else
	movq	$0, 144(%rbp)
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB37_5:                               # %if.end.26
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	$0, 200(%rbp)
	jmp	.LBB37_10
.LBB37_7:
	movq	%r12, 48(%rsp)          # 8-byte Spill
.LBB37_9:                               # %if.end.46
	movq	%r15, %rdx
.LBB37_10:                              # %if.end.46
	cmpq	$136, %rdx
	ja	.LBB37_11
# BB#12:                                # %if.then.49
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %r15
	cmpq	$48, %r15
	movl	%r13d, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	$48, %ebp
	cmovbeq	%r15, %rbp
	movl	$48, %ebx
	cmovbel	%eax, %ebx
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	96(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	8(%rdx,%r13), %rdi
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rsi
	movq	%rdx, %r14
	movq	%rbp, %rdx
	callq	memcpy
	movq	%r14, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 96(%r13)
	subl	%ebx, %r15d
	addq	%rbp, %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rbp), %rdx
	jmp	.LBB37_13
.LBB37_11:
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r13d, %r15d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
.LBB37_13:                              # %if.end.71
	testl	%r15d, %r15d
	je	.LBB37_14
# BB#15:                                # %if.end.75
	movq	40(%rsp), %rax          # 8-byte Reload
	cltq
	leaq	88(%rax), %r14
	movq	%r14, %rbp
	subq	%rdx, %rbp
	jae	.LBB37_17
# BB#16:
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB37_18
.LBB37_14:
	movl	28(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB37_28
.LBB37_17:                              # %if.then.80
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%r15d, %rax
	cmpq	%rax, %rbp
	cmovbq	%rbp, %rax
	cmovael	%r15d, %ebp
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	96(%rcx), %rcx
	leaq	-136(%rdx,%rcx), %rdi
	movslq	%eax, %r13
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rdx, %r12
	movq	%r13, %rdx
	callq	memcpy
	movq	%r12, %rdx
	subl	%ebp, %r15d
	addq	%r13, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r13), %rdx
.LBB37_18:                              # %if.end.109
	movq	8(%rsp), %rax           # 8-byte Reload
	testl	%eax, %eax
	je	.LBB37_20
# BB#19:                                # %if.end.109
	testl	%r15d, %r15d
	je	.LBB37_20
# BB#21:                                # %if.end.116
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	136(%rsi), %rbp
	subq	%rdx, %rbp
	jb	.LBB37_23
# BB#22:                                # %if.then.122
	movslq	%r15d, %rax
	cmpq	%rax, %rbp
	cmovbq	%rbp, %rax
	cmovael	%r15d, %ebp
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	144(%r12), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	$-88, %rcx
	subq	%rsi, %rcx
	addq	%rdx, %rcx
	leaq	144(%r12,%rcx), %rdi
	movslq	%eax, %r13
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%r13, %rdx
	callq	memcpy
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 144(%r12)
	subl	%ebp, %r15d
	addq	%r13, %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r13), %rdx
	movq	8(%rsp), %rax           # 8-byte Reload
.LBB37_23:                              # %if.end.158
	movl	28(%rsp), %ebp          # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB37_27
# BB#24:                                # %if.end.162
	cltq
	addq	%rax, %r14
	subq	%rdx, %r14
	jb	.LBB37_26
# BB#25:                                # %if.then.169
	movslq	%r15d, %rax
	cmpq	%rax, %r14
	cmovbq	%r14, %rax
	cmovael	%r15d, %r14d
	movq	$-136, %rdi
	subq	40(%rsp), %rdi          # 8-byte Folded Reload
	addq	%rdx, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	addq	144(%rcx), %rdi
	movslq	%eax, %rdx
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	subl	%r14d, %r15d
.LBB37_26:                              # %if.end.204
	subl	%r15d, %ebp
.LBB37_27:                              # %cleanup
	movl	%ebp, %r15d
	jmp	.LBB37_28
.LBB37_20:                              # %if.then.114
	movl	28(%rsp), %eax          # 4-byte Reload
	subl	%r15d, %eax
	movl	%eax, %r15d
.LBB37_28:                              # %cleanup
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gx_dc_pattern_read_raster, .Lfunc_end37-gx_dc_pattern_read_raster
	.cfi_endproc

	.globl	gx_set_pattern_procs_trans
	.align	16, 0x90
	.type	gx_set_pattern_procs_trans,@function
gx_set_pattern_procs_trans:             # @gx_set_pattern_procs_trans
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_dc_pattern_trans, (%rdi)
	retq
.Lfunc_end38:
	.size	gx_set_pattern_procs_trans, .Lfunc_end38-gx_set_pattern_procs_trans
	.cfi_endproc

	.globl	gx_set_pattern_procs_standard
	.align	16, 0x90
	.type	gx_set_pattern_procs_standard,@function
gx_set_pattern_procs_standard:          # @gx_set_pattern_procs_standard
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_dc_pattern, (%rdi)
	retq
.Lfunc_end39:
	.size	gx_set_pattern_procs_standard, .Lfunc_end39-gx_set_pattern_procs_standard
	.cfi_endproc

	.globl	gx_pattern_procs_istrans
	.align	16, 0x90
	.type	gx_pattern_procs_istrans,@function
gx_pattern_procs_istrans:               # @gx_pattern_procs_istrans
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gx_dc_pattern_trans, %eax
	cmpq	%rax, (%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end40:
	.size	gx_pattern_procs_istrans, .Lfunc_end40-gx_pattern_procs_istrans
	.cfi_endproc

	.globl	gx_dc_is_pattern1_color_with_trans
	.align	16, 0x90
	.type	gx_dc_is_pattern1_color_with_trans,@function
gx_dc_is_pattern1_color_with_trans:     # @gx_dc_is_pattern1_color_with_trans
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movl	$gx_dc_pattern, %eax
	cmpq	%rax, %rcx
	je	.LBB41_2
# BB#1:                                 # %entry
	xorl	%eax, %eax
	movl	$gx_dc_pattern_trans, %edx
	cmpq	%rdx, %rcx
	jne	.LBB41_3
.LBB41_2:                               # %if.end
	movq	8(%rdi), %rax
	cmpq	$0, 192(%rax)
	setne	%al
	movzbl	%al, %eax
.LBB41_3:                               # %return
	retq
.Lfunc_end41:
	.size	gx_dc_is_pattern1_color_with_trans, .Lfunc_end41-gx_dc_is_pattern1_color_with_trans
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern1_uses_base_space,@function
gs_pattern1_uses_base_space:            # @gs_pattern1_uses_base_space
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, 40(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end42:
	.size	gs_pattern1_uses_base_space, .Lfunc_end42-gs_pattern1_uses_base_space
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern1_get_pattern,@function
gs_pattern1_get_pattern:                # @gs_pattern1_get_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	48(%rdi), %rax
	retq
.Lfunc_end43:
	.size	gs_pattern1_get_pattern, .Lfunc_end43-gs_pattern1_get_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern1_set_color,@function
gs_pattern1_set_color:                  # @gs_pattern1_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp208:
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	cmpl	$2, 88(%rax)
	jne	.LBB44_1
# BB#2:                                 # %if.then
	movq	1744(%rsi), %rax
	movq	40(%rax), %rdi
	movq	(%rdi), %rax
	movq	88(%rax), %rax
	addq	$40, %rsp
	jmpq	*%rax                   # TAILCALL
.LBB44_1:                               # %cleanup
	movl	$0, 8(%rsp)
	movl	$0, 280(%rsi)
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_state_update_overprint
	addq	$40, %rsp
	retq
.Lfunc_end44:
	.size	gs_pattern1_set_color, .Lfunc_end44-gs_pattern1_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	pattern1_instance_enum_ptrs,@function
pattern1_instance_enum_ptrs:            # @pattern1_instance_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp210:
	.cfi_def_cfa_offset 32
.Ltmp211:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	cmpl	$1, %ecx
	jg	.LBB45_4
# BB#1:                                 # %if.then
	movq	32(%rsp), %rax
	addq	$48, %rsi
	movq	%rax, (%rsp)
	movl	$104, %edx
	movl	$st_pattern1_template, %r9d
	movq	%rbx, %r8
	callq	basic_enum_ptrs
	testq	%rax, %rax
	jne	.LBB45_3
# BB#2:                                 # %if.end
	movq	$0, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB45_3:                               # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB45_4:                               # %if.end.2
	addl	$-2, %ecx
	movl	$st_pattern_instance, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_pattern_instance+32(%rip) # TAILCALL
.Lfunc_end45:
	.size	pattern1_instance_enum_ptrs, .Lfunc_end45-pattern1_instance_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pattern1_instance_reloc_ptrs,@function
pattern1_instance_reloc_ptrs:           # @pattern1_instance_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp214:
	.cfi_def_cfa_offset 32
.Ltmp215:
	.cfi_offset %rbx, -24
.Ltmp216:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_pattern_instance, %edx
	callq	*st_pattern_instance+40(%rip)
	addq	$48, %rbx
	movl	$104, %esi
	movl	$st_pattern1_template, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	basic_reloc_ptrs        # TAILCALL
.Lfunc_end46:
	.size	pattern1_instance_reloc_ptrs, .Lfunc_end46-pattern1_instance_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	bitmap_paint,@function
bitmap_paint:                           # @bitmap_paint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp218:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp219:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp220:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp221:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp222:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp223:
	.cfi_def_cfa_offset 80
.Ltmp224:
	.cfi_offset %rbx, -56
.Ltmp225:
	.cfi_offset %r12, -48
.Ltmp226:
	.cfi_offset %r13, -40
.Ltmp227:
	.cfi_offset %r14, -32
.Ltmp228:
	.cfi_offset %r15, -24
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	8(%rdx), %r12d
	movzbl	32(%rdx), %r13d
	imull	32(%rsi), %r13d
	addl	$7, %r13d
	sarl	$3, %r13d
	movq	(%rdx), %rbx
	cmpl	%r12d, %r13d
	movl	36(%rsi), %r14d
	jne	.LBB47_1
# BB#5:                                 # %if.then
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	imull	%r14d, %r12d
	leaq	20(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	gs_image_next
	movl	%eax, %ebp
	jmp	.LBB47_4
.LBB47_1:                               # %for.cond.preheader
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jle	.LBB47_4
	.align	16, 0x90
.LBB47_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	leaq	20(%rsp), %rcx
	callq	gs_image_next
	movl	%eax, %ebp
	cmpl	$2, %r14d
	jl	.LBB47_4
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB47_2 Depth=1
	addq	%r12, %rbx
	decl	%r14d
	testl	%ebp, %ebp
	jns	.LBB47_2
.LBB47_4:                               # %if.end
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gs_image_cleanup_and_free_enum
	testl	%eax, %eax
	cmovnsl	%ebp, %eax
	testl	%ebp, %ebp
	cmovsl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	bitmap_paint, .Lfunc_end47-bitmap_paint
	.cfi_endproc

	.align	16, 0x90
	.type	dc_pattern_enum_ptrs,@function
dc_pattern_enum_ptrs:                   # @dc_pattern_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	jne	.LBB48_1
# BB#3:                                 # %sw.bb
	movq	8(%rsi), %rax
	jmp	.LBB48_4
.LBB48_1:                               # %entry
	cmpl	$1, %ecx
	jne	.LBB48_7
# BB#2:                                 # %sw.bb.i
	movq	648(%rsi), %rax
.LBB48_4:                               # %sw.bb
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB48_6
# BB#5:                                 # %cond.false
	movl	216(%rax), %ecx
	negq	%rcx
	imulq	$232, %rcx, %rcx
	addq	%rax, %rcx
.LBB48_6:                               # %cond.end
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB48_7:                               # %sw.default.i
	addq	$368, %rsi              # imm = 0x170
	addl	$-2, %ecx
	movl	$264, %edx              # imm = 0x108
	movl	$st_client_color, %r9d
	jmpq	*st_client_color+32(%rip) # TAILCALL
.Lfunc_end48:
	.size	dc_pattern_enum_ptrs, .Lfunc_end48-dc_pattern_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_pattern_reloc_ptrs,@function
dc_pattern_reloc_ptrs:                  # @dc_pattern_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp230:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp231:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 32
.Ltmp233:
	.cfi_offset %rbx, -32
.Ltmp234:
	.cfi_offset %r14, -24
.Ltmp235:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	(%r14), %rcx
	movl	216(%rax), %r15d
	movq	%r15, %rdx
	negq	%rdx
	imulq	$232, %rdx, %rdi
	addq	%rax, %rdi
	movq	%r14, %rsi
	callq	*(%rcx)
	imulq	$232, %r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 8(%rbx)
.LBB49_2:                               # %if.end
	movq	648(%rbx), %r15
	leaq	368(%rbx), %rdi
	movl	$264, %esi              # imm = 0x108
	movl	$st_client_color, %edx
	movq	%r14, %rcx
	callq	*st_client_color+40(%rip)
	testq	%r15, %r15
	je	.LBB49_4
# BB#3:                                 # %if.then.i
	movq	(%r14), %rax
	movl	216(%r15), %r15d
	movq	%r15, %rcx
	negq	%rcx
	imulq	$232, %rcx, %rdi
	addq	648(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	imulq	$232, %r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 648(%rbx)
.LBB49_4:                               # %dc_masked_reloc_ptrs.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end49:
	.size	dc_pattern_reloc_ptrs, .Lfunc_end49-dc_pattern_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_masked_enum_ptrs,@function
dc_masked_enum_ptrs:                    # @dc_masked_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB50_1
# BB#4:                                 # %sw.default
	addq	$368, %rsi              # imm = 0x170
	decl	%ecx
	movl	$264, %edx              # imm = 0x108
	movl	$st_client_color, %r9d
	jmpq	*st_client_color+32(%rip) # TAILCALL
.LBB50_1:                               # %sw.bb
	movq	648(%rsi), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB50_3
# BB#2:                                 # %cond.false
	movl	216(%rax), %ecx
	negq	%rcx
	imulq	$232, %rcx, %rcx
	addq	%rax, %rcx
.LBB50_3:                               # %cleanup
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end50:
	.size	dc_masked_enum_ptrs, .Lfunc_end50-dc_masked_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_masked_reloc_ptrs,@function
dc_masked_reloc_ptrs:                   # @dc_masked_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp236:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp237:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 32
.Ltmp239:
	.cfi_offset %rbx, -32
.Ltmp240:
	.cfi_offset %r14, -24
.Ltmp241:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	648(%rbx), %r15
	leaq	368(%rbx), %rdi
	movl	$264, %esi              # imm = 0x108
	movl	$st_client_color, %edx
	callq	*st_client_color+40(%rip)
	testq	%r15, %r15
	je	.LBB51_2
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movl	216(%r15), %r15d
	movq	%r15, %rcx
	negq	%rcx
	imulq	$232, %rcx, %rdi
	addq	648(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	imulq	$232, %r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 648(%rbx)
.LBB51_2:                               # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end51:
	.size	dc_masked_reloc_ptrs, .Lfunc_end51-dc_masked_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_binary_masked_enum_ptrs,@function
dc_binary_masked_enum_ptrs:             # @dc_binary_masked_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, %ecx
	jae	.LBB52_5
# BB#1:                                 # %sw.bb
	testl	%ecx, %ecx
	je	.LBB52_2
# BB#6:                                 # %sw.default.i
	addq	$368, %rsi              # imm = 0x170
	decl	%ecx
	movl	$264, %edx              # imm = 0x108
	movl	$st_client_color, %r9d
	jmpq	*st_client_color+32(%rip) # TAILCALL
.LBB52_5:                               # %sw.default
	addl	$-2, %ecx
	movl	$st_dc_ht_binary, %r9d
	jmpq	*st_dc_ht_binary+32(%rip) # TAILCALL
.LBB52_2:                               # %sw.bb.i
	movq	648(%rsi), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB52_4
# BB#3:                                 # %cond.false.i
	movl	216(%rax), %ecx
	negq	%rcx
	imulq	$232, %rcx, %rcx
	addq	%rax, %rcx
.LBB52_4:                               # %return
	movq	%rcx, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end52:
	.size	dc_binary_masked_enum_ptrs, .Lfunc_end52-dc_binary_masked_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_binary_masked_reloc_ptrs,@function
dc_binary_masked_reloc_ptrs:            # @dc_binary_masked_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp243:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp244:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp245:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp246:
	.cfi_def_cfa_offset 48
.Ltmp247:
	.cfi_offset %rbx, -40
.Ltmp248:
	.cfi_offset %r14, -32
.Ltmp249:
	.cfi_offset %r15, -24
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movq	648(%rbp), %r15
	leaq	368(%rbp), %rdi
	movl	$264, %esi              # imm = 0x108
	movl	$st_client_color, %edx
	callq	*st_client_color+40(%rip)
	testq	%r15, %r15
	je	.LBB53_2
# BB#1:                                 # %if.then.i
	movq	(%rbx), %rax
	movl	216(%r15), %r15d
	movq	%r15, %rcx
	negq	%rcx
	imulq	$232, %rcx, %rdi
	addq	648(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	imulq	$232, %r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 648(%rbp)
.LBB53_2:                               # %dc_masked_reloc_ptrs.exit
	movl	$st_dc_ht_binary, %edx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*st_dc_ht_binary+40(%rip) # TAILCALL
.Lfunc_end53:
	.size	dc_binary_masked_reloc_ptrs, .Lfunc_end53-dc_binary_masked_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_colored_masked_enum_ptrs,@function
dc_colored_masked_enum_ptrs:            # @dc_colored_masked_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB54_1
# BB#2:                                 # %sw.default
	addq	$368, %rsi              # imm = 0x170
	decl	%ecx
	movl	$264, %edx              # imm = 0x108
	movl	$st_client_color, %r9d
	jmpq	*st_client_color+32(%rip) # TAILCALL
.LBB54_1:                               # %cleanup
	movq	8(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end54:
	.size	dc_colored_masked_enum_ptrs, .Lfunc_end54-dc_colored_masked_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_colored_masked_reloc_ptrs,@function
dc_colored_masked_reloc_ptrs:           # @dc_colored_masked_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp251:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp252:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp253:
	.cfi_def_cfa_offset 32
.Ltmp254:
	.cfi_offset %rbx, -24
.Ltmp255:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	leaq	368(%rbx), %rdi
	movl	$264, %esi              # imm = 0x108
	movl	$st_client_color, %edx
	callq	*st_client_color+40(%rip)
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 8(%rbx)
.LBB55_2:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end55:
	.size	dc_colored_masked_reloc_ptrs, .Lfunc_end55-dc_colored_masked_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_devn_masked_enum_ptrs,@function
dc_devn_masked_enum_ptrs:               # @dc_devn_masked_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$368, %rsi              # imm = 0x170
	movl	$264, %edx              # imm = 0x108
	movl	$st_client_color, %r9d
	jmpq	*st_client_color+32(%rip) # TAILCALL
.Lfunc_end56:
	.size	dc_devn_masked_enum_ptrs, .Lfunc_end56-dc_devn_masked_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_devn_masked_reloc_ptrs,@function
dc_devn_masked_reloc_ptrs:              # @dc_devn_masked_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$368, %rdi              # imm = 0x170
	movl	$264, %esi              # imm = 0x108
	movl	$st_client_color, %edx
	jmpq	*st_client_color+40(%rip) # TAILCALL
.Lfunc_end57:
	.size	dc_devn_masked_reloc_ptrs, .Lfunc_end57-dc_devn_masked_reloc_ptrs
	.cfi_endproc

	.type	gs_pattern1_type,@object # @gs_pattern1_type
	.section	.rodata,"a",@progbits
	.align	8
gs_pattern1_type:
	.long	1                       # 0x1
	.zero	4
	.quad	gs_pattern1_uses_base_space
	.quad	gs_pattern1_make_pattern
	.quad	gs_pattern1_get_pattern
	.quad	gs_pattern1_remap_color
	.quad	gs_pattern1_set_color
	.size	gs_pattern1_type, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"client bitmap"
	.size	.L.str, 14

	.type	bitmap_reloc_ptrs,@object # @bitmap_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
bitmap_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	bitmap_enum_ptrs
	.size	bitmap_reloc_ptrs, 24

	.type	st_gs_bitmap,@object    # @st_gs_bitmap
	.globl	st_gs_bitmap
	.align	8
st_gs_bitmap:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bitmap_reloc_ptrs
	.size	st_gs_bitmap, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"client tile bitmap"
	.size	.L.str.1, 19

	.type	st_gs_tile_bitmap,@object # @st_gs_tile_bitmap
	.section	.rodata,"a",@progbits
	.globl	st_gs_tile_bitmap
	.align	8
st_gs_tile_bitmap:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bitmap_reloc_ptrs
	.size	st_gs_tile_bitmap, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"client depth bitmap"
	.size	.L.str.2, 20

	.type	st_gs_depth_bitmap,@object # @st_gs_depth_bitmap
	.section	.rodata,"a",@progbits
	.globl	st_gs_depth_bitmap
	.align	8
st_gs_depth_bitmap:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bitmap_reloc_ptrs
	.size	st_gs_depth_bitmap, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"client tile_depth bitmap"
	.size	.L.str.3, 25

	.type	st_gs_tile_depth_bitmap,@object # @st_gs_tile_depth_bitmap
	.section	.rodata,"a",@progbits
	.globl	st_gs_tile_depth_bitmap
	.align	8
st_gs_tile_depth_bitmap:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bitmap_reloc_ptrs
	.size	st_gs_tile_depth_bitmap, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gx_strip_bitmap"
	.size	.L.str.4, 16

	.type	st_gx_strip_bitmap,@object # @st_gx_strip_bitmap
	.section	.rodata,"a",@progbits
	.globl	st_gx_strip_bitmap
	.align	8
st_gx_strip_bitmap:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bitmap_reloc_ptrs
	.size	st_gx_strip_bitmap, 64

	.type	st_pixmap_info,@object  # @st_pixmap_info
	.align	8
st_pixmap_info:
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pixmap_reloc_ptr
	.size	st_pixmap_info, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"makepximappattern"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"makebitmappattern_xform"
	.size	.L.str.6, 24

	.type	st_dc_pattern,@object   # @st_dc_pattern
	.section	.rodata,"a",@progbits
	.align	8
st_dc_pattern:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	dc_pattern_enum_ptrs
	.quad	dc_pattern_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_pattern, 64

	.type	gx_dc_pattern,@object   # @gx_dc_pattern
	.globl	gx_dc_pattern
	.align	8
gx_dc_pattern:
	.quad	st_dc_pattern
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_pattern_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_pattern_load
	.quad	gx_dc_pattern_fill_rectangle
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_pattern_equal
	.quad	gx_dc_pattern_write
	.quad	gx_dc_pattern_read
	.quad	gx_dc_pattern_get_nonzero_comps
	.size	gx_dc_pattern, 88

	.type	gx_dc_pattern_trans,@object # @gx_dc_pattern_trans
	.globl	gx_dc_pattern_trans
	.align	8
gx_dc_pattern_trans:
	.quad	st_dc_pattern
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_pattern_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_pattern_load
	.quad	gx_dc_pat_trans_fill_rectangle
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_pattern_equal
	.quad	gx_dc_pattern_write
	.quad	gx_dc_pattern_read
	.quad	gx_dc_pattern_get_nonzero_comps
	.size	gx_dc_pattern_trans, 88

	.type	st_dc_pure_masked,@object # @st_dc_pure_masked
	.align	8
st_dc_pure_masked:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	dc_masked_enum_ptrs
	.quad	dc_masked_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_pure_masked, 64

	.type	gx_dc_pure_masked,@object # @gx_dc_pure_masked
	.globl	gx_dc_pure_masked
	.align	8
gx_dc_pure_masked:
	.quad	st_dc_pure_masked
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_pure_masked_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_pure_masked_load
	.quad	gx_dc_pure_masked_fill_rect
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_pure_masked_equal
	.quad	gx_dc_cannot_write
	.quad	gx_dc_cannot_read
	.quad	gx_dc_pure_get_nonzero_comps
	.size	gx_dc_pure_masked, 88

	.type	st_dc_binary_masked,@object # @st_dc_binary_masked
	.align	8
st_dc_binary_masked:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	dc_binary_masked_enum_ptrs
	.quad	dc_binary_masked_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_binary_masked, 64

	.type	gx_dc_binary_masked,@object # @gx_dc_binary_masked
	.globl	gx_dc_binary_masked
	.align	8
gx_dc_binary_masked:
	.quad	st_dc_binary_masked
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_binary_masked_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_binary_masked_load
	.quad	gx_dc_binary_masked_fill_rect
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_binary_masked_equal
	.quad	gx_dc_cannot_write
	.quad	gx_dc_cannot_read
	.quad	gx_dc_ht_binary_get_nonzero_comps
	.size	gx_dc_binary_masked, 88

	.type	st_dc_colored_masked,@object # @st_dc_colored_masked
	.align	8
st_dc_colored_masked:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	dc_colored_masked_enum_ptrs
	.quad	dc_colored_masked_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_colored_masked, 64

	.type	gx_dc_colored_masked,@object # @gx_dc_colored_masked
	.globl	gx_dc_colored_masked
	.align	8
gx_dc_colored_masked:
	.quad	st_dc_colored_masked
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_colored_masked_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_colored_masked_load
	.quad	gx_dc_colored_masked_fill_rect
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_colored_masked_equal
	.quad	gx_dc_cannot_write
	.quad	gx_dc_cannot_read
	.quad	gx_dc_ht_colored_get_nonzero_comps
	.size	gx_dc_colored_masked, 88

	.type	st_dc_devn_masked,@object # @st_dc_devn_masked
	.align	8
st_dc_devn_masked:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	dc_devn_masked_enum_ptrs
	.quad	dc_devn_masked_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_devn_masked, 64

	.type	gx_dc_devn_masked,@object # @gx_dc_devn_masked
	.globl	gx_dc_devn_masked
	.align	8
gx_dc_devn_masked:
	.quad	st_dc_devn_masked
	.quad	gx_dc_pattern_save_dc
	.quad	gx_dc_pure_masked_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_devn_masked_load
	.quad	gx_dc_devn_masked_fill_rect
	.quad	gx_dc_devn_fill_masked
	.quad	gx_dc_devn_masked_equal
	.quad	gx_dc_cannot_write
	.quad	gx_dc_cannot_read
	.quad	gx_dc_devn_get_nonzero_comps
	.size	gx_dc_devn_masked, 88

	.type	gx_dc_type_pattern,@object # @gx_dc_type_pattern
	.globl	gx_dc_type_pattern
	.align	8
gx_dc_type_pattern:
	.quad	gx_dc_pattern
	.size	gx_dc_type_pattern, 8

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gx_dc_pattern_read"
	.size	.L.str.7, 19

	.type	st_pattern1_instance,@object # @st_pattern1_instance
	.section	.rodata,"a",@progbits
	.align	8
st_pattern1_instance:
	.long	248                     # 0xf8
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	pattern1_instance_enum_ptrs
	.quad	pattern1_instance_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pattern1_instance, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_makepattern"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gs_pattern1_instance_t"
	.size	.L.str.9, 23

	.type	st_pattern1_template,@object # @st_pattern1_template
	.section	.rodata,"a",@progbits
	.align	8
st_pattern1_template:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern1_template_reloc_ptrs
	.size	st_pattern1_template, 64

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"gs_pattern1_template_t"
	.size	.L.str.10, 23

	.type	pattern1_template_reloc_ptrs,@object # @pattern1_template_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pattern1_template_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_pattern_template
	.quad	0
	.size	pattern1_template_reloc_ptrs, 24

	.type	bitmap_enum_ptrs,@object # @bitmap_enum_ptrs
	.align	2
bitmap_enum_ptrs:
	.zero	4
	.size	bitmap_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"image_PaintProc"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mask_PaintProc"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pixmap info. struct"
	.size	.L.str.13, 20

	.type	pixmap_reloc_ptr,@object # @pixmap_reloc_ptr
	.section	.rodata,"a",@progbits
	.align	8
pixmap_reloc_ptr:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_depth_bitmap
	.quad	pixmap_enum_ptr
	.size	pixmap_reloc_ptr, 24

	.type	pixmap_enum_ptr,@object # @pixmap_enum_ptr
	.align	2
pixmap_enum_ptr:
	.short	0                       # 0x0
	.short	40                      # 0x28
	.size	pixmap_enum_ptr, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"dc_pattern"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dc_pure_masked"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dc_binary_masked"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dc_colored_masked"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"dc_devn_masked"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gx_dc_pattern_read_raster"
	.size	.L.str.19, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
