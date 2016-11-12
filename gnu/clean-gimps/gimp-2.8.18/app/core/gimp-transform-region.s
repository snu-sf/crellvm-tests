	.text
	.file	"gimp-transform-region.bc"
	.globl	gimp_transform_region
	.align	16, 0x90
	.type	gimp_transform_region,@function
gimp_transform_region:                  # @gimp_transform_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movl	64(%rbp), %r10d
	movl	56(%rbp), %r11d
	movq	48(%rbp), %rbx
	movl	40(%rbp), %r14d
	movl	32(%rbp), %r15d
	movl	24(%rbp), %r12d
	movl	16(%rbp), %r13d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	%r13d, -84(%rbp)
	movl	%r12d, -88(%rbp)
	movl	%r15d, -92(%rbp)
	movl	%r14d, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movl	%r10d, -112(%rbp)
	movq	%rax, -120(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -244(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -244(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_region, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_46
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	-68(%rbp), %eax
	movl	%eax, -204(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-204(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-276(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -212(%rbp)
	movl	-208(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	leaq	-200(%rbp), %rdi
	movl	$72, %ecx
	movl	%ecx, %edx
	movl	-280(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -216(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	callq	memcpy
	movq	-288(%rbp), %rdi        # 8-byte Reload
	callq	gimp_matrix3_invert
	movq	-104(%rbp), %rdi
	callq	gimp_matrix3_is_simple
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.16
	movl	$0, -108(%rbp)
.LBB0_14:                               # %if.end.17
	movq	-48(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -124(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_pickable_get_image
	leaq	-224(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_image_get_background
	cmpl	$0, -124(%rbp)
	je	.LBB0_16
# BB#15:                                # %lor.lhs.false
	cmpl	$1, -124(%rbp)
	jne	.LBB0_17
.LBB0_16:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB0_24
.LBB0_17:                               # %cond.false
	cmpl	$2, -124(%rbp)
	je	.LBB0_19
# BB#18:                                # %lor.lhs.false.23
	cmpl	$3, -124(%rbp)
	jne	.LBB0_20
.LBB0_19:                               # %cond.true.25
	movl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB0_23
.LBB0_20:                               # %cond.false.26
	movb	$1, %al
	cmpl	$4, -124(%rbp)
	movb	%al, -297(%rbp)         # 1-byte Spill
	je	.LBB0_22
# BB#21:                                # %lor.rhs
	cmpl	$5, -124(%rbp)
	sete	%al
	movb	%al, -297(%rbp)         # 1-byte Spill
.LBB0_22:                               # %lor.end
	movb	-297(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -296(%rbp)        # 4-byte Spill
.LBB0_23:                               # %cond.end
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB0_24:                               # %cond.end.30
	movl	-292(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB0_25
	jmp	.LBB0_47
.LBB0_47:                               # %cond.end.30
	movl	-304(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_48
.LBB0_48:                               # %cond.end.30
	movl	-304(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_28
.LBB0_25:                               # %sw.bb
	movb	$0, -221(%rbp)
	movl	$3, -220(%rbp)
	jmp	.LBB0_30
.LBB0_26:                               # %sw.bb.32
	movb	$0, -223(%rbp)
	movl	$1, -220(%rbp)
	jmp	.LBB0_30
.LBB0_27:                               # %sw.bb.34
	movb	$0, -223(%rbp)
	movl	$1, -220(%rbp)
	movl	$0, -108(%rbp)
	jmp	.LBB0_30
.LBB0_28:                               # %sw.default
	jmp	.LBB0_29
.LBB0_29:                               # %do.body.36
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$230, %edx
	movabsq	$.L__func__.gimp_transform_region, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_30:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB0_32
# BB#31:                                # %if.then.46
	movl	$0, -268(%rbp)
	jmp	.LBB0_37
.LBB0_32:                               # %if.else.47
	movq	-256(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# BB#33:                                # %land.lhs.true.50
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB0_35
# BB#34:                                # %if.then.54
	movl	$1, -268(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.55
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -268(%rbp)
.LBB0_36:                               # %if.end.57
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.58
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.61
	movb	$0, -224(%rbp)
.LBB0_39:                               # %if.end.63
	movq	-64(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB0_41
# BB#40:                                # %if.then.66
	movl	$0, -220(%rbp)
.LBB0_41:                               # %if.end.67
	movl	-108(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	ja	.LBB0_46
# BB#49:                                # %if.end.67
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_42:                               # %sw.bb.68
	leaq	-200(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-204(%rbp), %r11d
	movl	-208(%rbp), %ebx
	movl	-212(%rbp), %r14d
	movl	-216(%rbp), %r15d
	movl	-220(%rbp), %r12d
	movq	-120(%rbp), %r13
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	%r12d, 40(%rsp)
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r13, 56(%rsp)
	callq	gimp_transform_region_nearest
	jmp	.LBB0_46
.LBB0_43:                               # %sw.bb.70
	leaq	-200(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-204(%rbp), %r11d
	movl	-208(%rbp), %ebx
	movl	-212(%rbp), %r14d
	movl	-216(%rbp), %r15d
	movl	-220(%rbp), %r12d
	movl	-112(%rbp), %r13d
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movl	%r12d, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	%rax, 64(%rsp)
	callq	gimp_transform_region_linear
	jmp	.LBB0_46
.LBB0_44:                               # %sw.bb.72
	leaq	-200(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-204(%rbp), %r11d
	movl	-208(%rbp), %ebx
	movl	-212(%rbp), %r14d
	movl	-216(%rbp), %r15d
	movl	-220(%rbp), %r12d
	movl	-112(%rbp), %r13d
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movl	%r12d, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	%rax, 64(%rsp)
	callq	gimp_transform_region_cubic
	jmp	.LBB0_46
.LBB0_45:                               # %sw.bb.74
	leaq	-200(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %r10d
	movl	-204(%rbp), %r11d
	movl	-208(%rbp), %ebx
	movl	-212(%rbp), %r14d
	movl	-216(%rbp), %r15d
	movl	-220(%rbp), %r12d
	movl	-112(%rbp), %r13d
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movl	%r12d, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	-384(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	%rax, 64(%rsp)
	callq	gimp_transform_region_lanczos
.LBB0_46:                               # %sw.epilog.76
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_transform_region, .Lfunc_end0-gimp_transform_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_42
	.quad	.LBB0_43
	.quad	.LBB0_44
	.quad	.LBB0_45

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
.LCPI1_1:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.text
	.align	16, 0x90
	.type	gimp_transform_region_nearest,@function
gimp_transform_region_nearest:          # @gimp_transform_region_nearest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movq	64(%rbp), %r10
	movl	56(%rbp), %r11d
	movq	48(%rbp), %rbx
	movl	40(%rbp), %r14d
	movl	32(%rbp), %r15d
	movl	24(%rbp), %r12d
	movl	16(%rbp), %r13d
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	$1, %ecx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	-256(%rbp), %edx        # 4-byte Reload
	movl	%edx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	%r13d, -76(%rbp)
	movl	%r12d, -80(%rbp)
	movl	%r15d, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movq	%rbx, -96(%rbp)
	movl	%r11d, -100(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movq	-96(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-96(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %r8d
	movq	-56(%rbp), %rax
	imull	48(%rax), %r8d
	movl	%r8d, -152(%rbp)
	movq	-56(%rbp), %rsi
	movl	%ecx, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -168(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -156(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_12 Depth 4
	cmpq	$0, -168(%rbp)
	je	.LBB1_25
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -180(%rbp)
.LBB1_3:                                # %for.cond.9
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_12 Depth 4
	movl	-180(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB1_19
# BB#4:                                 # %for.body.13
                                        #   in Loop: Header=BB1_3 Depth=2
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	36(%rcx), %eax
	movl	%eax, -184(%rbp)
	movq	-56(%rbp), %rcx
	movl	44(%rcx), %eax
	movl	%eax, -188(%rbp)
	movq	-176(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-184(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movl	-64(%rbp), %eax
	addl	-180(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-184(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	movl	-64(%rbp), %eax
	addl	-180(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-184(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	movl	-64(%rbp), %eax
	addl	-180(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-96(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movsd	%xmm1, -224(%rbp)
.LBB1_5:                                # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_12 Depth 4
	movl	-188(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, %eax
	je	.LBB1_17
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=3
	movl	$1, %edi
	leaq	-208(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-232(%rbp), %r8
	leaq	-240(%rbp), %r9
	callq	normalize_coords
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	addsd	-232(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %edi
	movl	%edi, -244(%rbp)
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-240(%rbp), %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %edi
	movl	%edi, -248(%rbp)
	movl	-244(%rbp), %edi
	cmpl	-76(%rbp), %edi
	jl	.LBB1_11
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_5 Depth=3
	movl	-244(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB1_11
# BB#8:                                 # %land.lhs.true.73
                                        #   in Loop: Header=BB1_5 Depth=3
	movl	-248(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB1_11
# BB#9:                                 # %land.lhs.true.76
                                        #   in Loop: Header=BB1_5 Depth=3
	movl	-248(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB1_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB1_5 Depth=3
	movq	-48(%rbp), %rdi
	movl	-244(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	-248(%rbp), %ecx
	subl	-80(%rbp), %ecx
	movq	-200(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	tile_manager_read_pixel_data_1
	movq	-56(%rbp), %rcx
	movl	52(%rcx), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -200(%rbp)
	jmp	.LBB1_16
.LBB1_11:                               # %if.else
                                        #   in Loop: Header=BB1_5 Depth=3
	movl	$0, -252(%rbp)
.LBB1_12:                               # %for.cond.80
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-252(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jge	.LBB1_15
# BB#13:                                # %for.body.84
                                        #   in Loop: Header=BB1_12 Depth=4
	movslq	-252(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	%dl, (%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB1_12 Depth=4
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB1_12
.LBB1_15:                               # %for.end
                                        #   in Loop: Header=BB1_5 Depth=3
	jmp	.LBB1_16
.LBB1_16:                               # %if.end
                                        #   in Loop: Header=BB1_5 Depth=3
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	movsd	%xmm0, -216(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-224(%rbp), %xmm0
	movsd	%xmm0, -224(%rbp)
	jmp	.LBB1_5
.LBB1_17:                               # %while.end
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-176(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -176(%rbp)
# BB#18:                                # %for.inc.91
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB1_3
.LBB1_19:                               # %for.end.93
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB1_23
# BB#20:                                # %if.then.95
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$16, %eax
	movq	-56(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-56(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	-148(%rbp), %edx
	movl	%edx, -148(%rbp)
	movl	-156(%rbp), %edx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-284(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB1_22
# BB#21:                                # %if.then.102
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %rdi
	cvtsi2sdl	-148(%rbp), %xmm0
	cvtsi2sdl	-152(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB1_22:                               # %if.end.105
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.106
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_24
.LBB1_24:                               # %for.inc.107
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -168(%rbp)
	movl	-156(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -156(%rbp)
	jmp	.LBB1_1
.LBB1_25:                               # %for.end.110
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_transform_region_nearest, .Lfunc_end1-gimp_transform_region_nearest
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_region_linear,@function
gimp_transform_region_linear:           # @gimp_transform_region_linear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movq	80(%rbp), %rax
	movq	72(%rbp), %r10
	movl	64(%rbp), %r11d
	movl	56(%rbp), %ebx
	movq	48(%rbp), %r14
	movl	40(%rbp), %r15d
	movl	32(%rbp), %r12d
	movl	24(%rbp), %r13d
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	16(%rbp), %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-456(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movl	$2, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	$1, %ecx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	-464(%rbp), %edx        # 4-byte Reload
	movl	%edx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	-460(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -76(%rbp)
	movl	%r13d, -80(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -88(%rbp)
	movq	%r14, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movl	-468(%rbp), %esi        # 4-byte Reload
	movl	-468(%rbp), %edx        # 4-byte Reload
	callq	pixel_surround_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	pixel_surround_set_bg
	movl	$1, %edi
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-96(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-96(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	48(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -176(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -164(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	cmpq	$0, -176(%rbp)
	je	.LBB2_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -188(%rbp)
.LBB2_3:                                # %for.cond.10
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_5 Depth 3
                                        #         Child Loop BB2_10 Depth 4
	movl	-188(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB2_16
# BB#4:                                 # %for.body.14
                                        #   in Loop: Header=BB2_3 Depth=2
	leaq	-352(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	-256(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %edx
	movl	%edx, -204(%rbp)
	movq	-96(%rbp), %rdi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	addl	36(%rax), %edx
	movl	-64(%rbp), %esi
	addl	-188(%rbp), %esi
	movl	%esi, -472(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-472(%rbp), %edx        # 4-byte Reload
	callq	untransform_coords
.LBB2_5:                                # %while.cond
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_10 Depth 4
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -204(%rbp)
	cmpl	$0, %eax
	je	.LBB2_14
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_5 Depth=3
	movl	$5, %edi
	leaq	-448(%rbp), %r9
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	callq	normalize_coords
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-376(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-424(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-416(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	supersample_dtest
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	-48(%rbp), %rdi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	-392(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	-440(%rbp), %xmm3       # xmm3 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	-384(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm5
	subsd	%xmm5, %xmm4
	movsd	-432(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm6
	subsd	%xmm6, %xmm5
	movsd	-376(%rbp), %xmm6       # xmm6 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm7
	subsd	%xmm7, %xmm6
	movsd	-424(%rbp), %xmm7       # xmm7 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm8
	subsd	%xmm8, %xmm7
	movsd	-368(%rbp), %xmm8       # xmm8 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm9
	subsd	%xmm9, %xmm8
	movsd	-416(%rbp), %xmm9       # xmm9 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm10
	subsd	%xmm10, %xmm9
	movl	-104(%rbp), %esi
	movq	-200(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	52(%rax), %r8d
	movl	-100(%rbp), %r9d
	movsd	%xmm8, (%rsp)
	movsd	%xmm9, 8(%rsp)
	callq	sample_adapt
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	-128(%rbp), %rdi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movq	-200(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	52(%rax), %edx
	movl	-100(%rbp), %ecx
	callq	sample_linear
.LBB2_9:                                # %if.end
                                        #   in Loop: Header=BB2_5 Depth=3
	movq	-56(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-200(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	$0, -452(%rbp)
.LBB2_10:                               # %for.cond.71
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        #       Parent Loop BB2_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$5, -452(%rbp)
	jge	.LBB2_13
# BB#11:                                # %for.body.74
                                        #   in Loop: Header=BB2_10 Depth=4
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-256(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-304(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -304(%rbp,%rax,8)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-352(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -352(%rbp,%rax,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=4
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB2_10
.LBB2_13:                               # %for.end
                                        #   in Loop: Header=BB2_5 Depth=3
	jmp	.LBB2_5
.LBB2_14:                               # %while.end
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	-56(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-184(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
# BB#15:                                # %for.inc.85
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB2_3
.LBB2_16:                               # %for.end.87
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB2_20
# BB#17:                                # %if.then.89
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$16, %eax
	movq	-56(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-56(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	-156(%rbp), %edx
	movl	%edx, -156(%rbp)
	movl	-164(%rbp), %edx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-476(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB2_19
# BB#18:                                # %if.then.96
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-120(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-160(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB2_19:                               # %if.end.99
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.100
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_21
.LBB2_21:                               # %for.inc.101
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -176(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB2_1
.LBB2_22:                               # %for.end.104
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_transform_region_linear, .Lfunc_end2-gimp_transform_region_linear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_region_cubic,@function
gimp_transform_region_cubic:            # @gimp_transform_region_cubic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
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
	movq	80(%rbp), %rax
	movq	72(%rbp), %r10
	movl	64(%rbp), %r11d
	movl	56(%rbp), %ebx
	movq	48(%rbp), %r14
	movl	40(%rbp), %r15d
	movl	32(%rbp), %r12d
	movl	24(%rbp), %r13d
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	16(%rbp), %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-456(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movl	$4, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	$1, %ecx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	-464(%rbp), %edx        # 4-byte Reload
	movl	%edx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	-460(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -76(%rbp)
	movl	%r13d, -80(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -88(%rbp)
	movq	%r14, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movl	-468(%rbp), %esi        # 4-byte Reload
	movl	-468(%rbp), %edx        # 4-byte Reload
	callq	pixel_surround_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	pixel_surround_set_bg
	movl	$1, %edi
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	movq	-96(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-96(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	48(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -176(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -164(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
                                        #         Child Loop BB3_10 Depth 4
	cmpq	$0, -176(%rbp)
	je	.LBB3_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -188(%rbp)
.LBB3_3:                                # %for.cond.10
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
                                        #         Child Loop BB3_10 Depth 4
	movl	-188(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_16
# BB#4:                                 # %for.body.14
                                        #   in Loop: Header=BB3_3 Depth=2
	leaq	-352(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	-256(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %edx
	movl	%edx, -204(%rbp)
	movq	-96(%rbp), %rdi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	addl	36(%rax), %edx
	movl	-64(%rbp), %esi
	addl	-188(%rbp), %esi
	movl	%esi, -472(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-472(%rbp), %edx        # 4-byte Reload
	callq	untransform_coords
.LBB3_5:                                # %while.cond
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_10 Depth 4
	movl	-204(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -204(%rbp)
	cmpl	$0, %eax
	je	.LBB3_14
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	$5, %edi
	leaq	-448(%rbp), %r9
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	callq	normalize_coords
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-376(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-424(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-416(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	supersample_dtest
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-48(%rbp), %rdi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	-392(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	-440(%rbp), %xmm3       # xmm3 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	-384(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm5
	subsd	%xmm5, %xmm4
	movsd	-432(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm6
	subsd	%xmm6, %xmm5
	movsd	-376(%rbp), %xmm6       # xmm6 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm7
	subsd	%xmm7, %xmm6
	movsd	-424(%rbp), %xmm7       # xmm7 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm8
	subsd	%xmm8, %xmm7
	movsd	-368(%rbp), %xmm8       # xmm8 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm9
	subsd	%xmm9, %xmm8
	movsd	-416(%rbp), %xmm9       # xmm9 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm10
	subsd	%xmm10, %xmm9
	movl	-104(%rbp), %esi
	movq	-200(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	52(%rax), %r8d
	movl	-100(%rbp), %r9d
	movsd	%xmm8, (%rsp)
	movsd	%xmm9, 8(%rsp)
	callq	sample_adapt
	jmp	.LBB3_9
.LBB3_8:                                # %if.else
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-128(%rbp), %rdi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movq	-200(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	52(%rax), %edx
	movl	-100(%rbp), %ecx
	callq	sample_cubic
.LBB3_9:                                # %if.end
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-56(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-200(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movl	$0, -452(%rbp)
.LBB3_10:                               # %for.cond.71
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        #       Parent Loop BB3_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$5, -452(%rbp)
	jge	.LBB3_13
# BB#11:                                # %for.body.74
                                        #   in Loop: Header=BB3_10 Depth=4
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-256(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-304(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -304(%rbp,%rax,8)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-352(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -352(%rbp,%rax,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=4
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end
                                        #   in Loop: Header=BB3_5 Depth=3
	jmp	.LBB3_5
.LBB3_14:                               # %while.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-56(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-184(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
# BB#15:                                # %for.inc.85
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB3_3
.LBB3_16:                               # %for.end.87
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB3_20
# BB#17:                                # %if.then.89
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$16, %eax
	movq	-56(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-56(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	-156(%rbp), %edx
	movl	%edx, -156(%rbp)
	movl	-164(%rbp), %edx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-476(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB3_19
# BB#18:                                # %if.then.96
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-120(%rbp), %rdi
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-160(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB3_19:                               # %if.end.99
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.100
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_21
.LBB3_21:                               # %for.inc.101
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -176(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB3_1
.LBB3_22:                               # %for.end.104
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_transform_region_cubic, .Lfunc_end3-gimp_transform_region_cubic
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_region_lanczos,@function
gimp_transform_region_lanczos:          # @gimp_transform_region_lanczos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
	movq	80(%rbp), %rax
	movq	72(%rbp), %r10
	movl	64(%rbp), %r11d
	movl	56(%rbp), %ebx
	movq	48(%rbp), %r14
	movl	40(%rbp), %r15d
	movl	32(%rbp), %r12d
	movl	24(%rbp), %r13d
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	16(%rbp), %ecx
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	-456(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movl	$7, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	$1, %ecx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	-464(%rbp), %edx        # 4-byte Reload
	movl	%edx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movl	-460(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -76(%rbp)
	movl	%r13d, -80(%rbp)
	movl	%r12d, -84(%rbp)
	movl	%r15d, -88(%rbp)
	movq	%r14, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movl	-468(%rbp), %esi        # 4-byte Reload
	movl	-468(%rbp), %edx        # 4-byte Reload
	callq	pixel_surround_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	pixel_surround_set_bg
	callq	create_lanczos_lookup
	movl	$1, %edi
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movq	-96(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movq	-96(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	48(%rax), %ecx
	movl	%ecx, -168(%rbp)
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -184(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -172(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
                                        #       Child Loop BB4_5 Depth 3
                                        #         Child Loop BB4_10 Depth 4
	cmpq	$0, -184(%rbp)
	je	.LBB4_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -196(%rbp)
.LBB4_3:                                # %for.cond.11
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_5 Depth 3
                                        #         Child Loop BB4_10 Depth 4
	movl	-196(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	40(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	48(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB4_16
# BB#4:                                 # %for.body.15
                                        #   in Loop: Header=BB4_3 Depth=2
	leaq	-352(%rbp), %r9
	leaq	-304(%rbp), %r8
	leaq	-256(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rax
	movl	44(%rax), %edx
	movl	%edx, -212(%rbp)
	movq	-96(%rbp), %rdi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	addl	36(%rax), %edx
	movl	-64(%rbp), %esi
	addl	-196(%rbp), %esi
	movl	%esi, -472(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-472(%rbp), %edx        # 4-byte Reload
	callq	untransform_coords
.LBB4_5:                                # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_10 Depth 4
	movl	-212(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -212(%rbp)
	cmpl	$0, %eax
	je	.LBB4_14
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB4_5 Depth=3
	movl	$5, %edi
	leaq	-448(%rbp), %r9
	leaq	-400(%rbp), %r8
	leaq	-352(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	callq	normalize_coords
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-432(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-376(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-424(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # xmm6 = mem[0],zero
	movsd	-416(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	supersample_dtest
	cmpl	$0, %eax
	je	.LBB4_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB4_5 Depth=3
	movq	-48(%rbp), %rdi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	-392(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	-440(%rbp), %xmm3       # xmm3 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	-384(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm5
	subsd	%xmm5, %xmm4
	movsd	-432(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm6
	subsd	%xmm6, %xmm5
	movsd	-376(%rbp), %xmm6       # xmm6 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm7
	subsd	%xmm7, %xmm6
	movsd	-424(%rbp), %xmm7       # xmm7 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm8
	subsd	%xmm8, %xmm7
	movsd	-368(%rbp), %xmm8       # xmm8 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm9
	subsd	%xmm9, %xmm8
	movsd	-416(%rbp), %xmm9       # xmm9 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm10
	subsd	%xmm10, %xmm9
	movl	-104(%rbp), %esi
	movq	-208(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	52(%rax), %r8d
	movl	-100(%rbp), %r9d
	movsd	%xmm8, (%rsp)
	movsd	%xmm9, 8(%rsp)
	callq	sample_adapt
	jmp	.LBB4_9
.LBB4_8:                                # %if.else
                                        #   in Loop: Header=BB4_5 Depth=3
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movsd	-400(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movq	-208(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	52(%rax), %ecx
	movl	-100(%rbp), %r8d
	callq	sample_lanczos
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=3
	movq	-56(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-208(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -208(%rbp)
	movl	$0, -452(%rbp)
.LBB4_10:                               # %for.cond.72
                                        #   Parent Loop BB4_1 Depth=1
                                        #     Parent Loop BB4_3 Depth=2
                                        #       Parent Loop BB4_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$5, -452(%rbp)
	jge	.LBB4_13
# BB#11:                                # %for.body.75
                                        #   in Loop: Header=BB4_10 Depth=4
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-256(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -256(%rbp,%rax,8)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-304(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -304(%rbp,%rax,8)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-452(%rbp), %rax
	addsd	-352(%rbp,%rax,8), %xmm0
	movsd	%xmm0, -352(%rbp,%rax,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=4
	movl	-452(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.LBB4_10
.LBB4_13:                               # %for.end
                                        #   in Loop: Header=BB4_5 Depth=3
	jmp	.LBB4_5
.LBB4_14:                               # %while.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-56(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-192(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -192(%rbp)
# BB#15:                                # %for.inc.86
                                        #   in Loop: Header=BB4_3 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_3
.LBB4_16:                               # %for.end.88
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB4_20
# BB#17:                                # %if.then.90
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$16, %eax
	movq	-56(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-56(%rbp), %rcx
	imull	48(%rcx), %edx
	addl	-164(%rbp), %edx
	movl	%edx, -164(%rbp)
	movl	-172(%rbp), %edx
	movl	%eax, -476(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-476(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB4_19
# BB#18:                                # %if.then.97
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-120(%rbp), %rdi
	cvtsi2sdl	-164(%rbp), %xmm0
	cvtsi2sdl	-168(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB4_19:                               # %if.end.100
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.101
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc.102
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -184(%rbp)
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	jmp	.LBB4_1
.LBB4_22:                               # %for.end.105
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	pixel_surround_destroy
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_transform_region_lanczos, .Lfunc_end4-gimp_transform_region_lanczos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	normalize_coords,@function
normalize_coords:                       # @normalize_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB5_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_3
	jp	.LBB5_3
	jmp	.LBB5_4
.LBB5_3:                                # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	divsd	(%rcx,%rax,8), %xmm1
	subsd	%xmm0, %xmm1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	divsd	(%rcx,%rax,8), %xmm1
	subsd	%xmm0, %xmm1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm1, (%rcx,%rax,8)
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_warning
	movslq	-52(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movsd	(%rcx,%rdi,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rcx,8)
	movslq	-52(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movsd	(%rdi,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movsd	%xmm0, (%rdi,%rcx,8)
.LBB5_5:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_6
.LBB5_6:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	normalize_coords, .Lfunc_end5-normalize_coords
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB6_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	untransform_coords,@function
untransform_coords:                     # @untransform_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -56(%rbp)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movq	-40(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movq	-40(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movq	-40(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movq	-40(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movq	-8(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	movaps	%xmm0, %xmm3
	addsd	-56(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	16(%rcx), %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 32(%rcx)
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm2         # xmm2 = mem[0],zero
	movaps	%xmm0, %xmm3
	addsd	-56(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	40(%rcx), %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, 32(%rcx)
	movq	-8(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movq	-8(%rbp), %rcx
	movsd	56(%rcx), %xmm2         # xmm2 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	addsd	64(%rcx), %xmm1
	movq	-40(%rbp), %rcx
	movsd	%xmm1, 32(%rcx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	untransform_coords, .Lfunc_end7-untransform_coords
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4609047870845172685     # double 1.4142135623730951
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	supersample_dtest,@function
supersample_dtest:                      # @supersample_dtest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movsd	.LCPI8_0, %xmm8         # xmm8 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	%xmm6, -56(%rbp)
	movsd	%xmm7, -64(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movapd	.LCPI8_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	ucomisd	%xmm8, %xmm0
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#2:                                 # %lor.lhs.false.4
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#3:                                 # %lor.lhs.false.8
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#4:                                 # %lor.lhs.false.12
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#5:                                 # %lor.lhs.false.16
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#6:                                 # %lor.lhs.false.20
	movb	$1, %al
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%al, -65(%rbp)          # 1-byte Spill
	ja	.LBB8_8
# BB#7:                                 # %lor.rhs
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movapd	.LCPI8_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB8_8:                                # %lor.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	supersample_dtest, .Lfunc_end8-supersample_dtest
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	sample_adapt,@function
sample_adapt:                           # @sample_adapt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
	movsd	24(%rbp), %xmm8         # xmm8 = mem[0],zero
	movsd	16(%rbp), %xmm9         # xmm9 = mem[0],zero
	leaq	-164(%rbp), %rax
	leaq	-192(%rbp), %r10
	movsd	.LCPI9_0, %xmm10        # xmm10 = mem[0],zero
	movq	%rdi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm2, -72(%rbp)
	movsd	%xmm3, -80(%rbp)
	movsd	%xmm4, -88(%rbp)
	movsd	%xmm5, -96(%rbp)
	movsd	%xmm6, -104(%rbp)
	movsd	%xmm7, -112(%rbp)
	movsd	%xmm9, -120(%rbp)
	movsd	%xmm8, -128(%rbp)
	movl	%esi, -132(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movl	%r8d, -156(%rbp)
	movl	%r9d, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -184(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -192(%rbp)
	movq	-48(%rbp), %rdi
	movaps	%xmm10, %xmm0
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movaps	%xmm10, %xmm0
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	movaps	%xmm10, %xmm0
	mulsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movaps	%xmm10, %xmm0
	mulsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %r8d
	movaps	%xmm10, %xmm0
	mulsd	-88(%rbp), %xmm0
	cvttsd2si	%xmm0, %r9d
	movaps	%xmm10, %xmm0
	mulsd	-96(%rbp), %xmm0
	cvttsd2si	%xmm0, %r11d
	movaps	%xmm10, %xmm0
	mulsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %ebx
	movaps	%xmm10, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvttsd2si	%xmm0, %r14d
	movaps	%xmm10, %xmm0
	mulsd	-120(%rbp), %xmm0
	cvttsd2si	%xmm0, %r15d
	mulsd	-128(%rbp), %xmm10
	cvttsd2si	%xmm10, %r12d
	movl	-132(%rbp), %r13d
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	-160(%rbp), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%rax, 64(%rsp)
	movl	-208(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 72(%rsp)
	movl	-212(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 80(%rsp)
	callq	get_sample
	cmpl	$0, -164(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, -164(%rbp)
.LBB9_2:                                # %if.end
	movslq	-160(%rbp), %rax
	movl	-192(%rbp,%rax,4), %eax
	xorl	%edx, %edx
	divl	-164(%rbp)
	movb	%al, %cl
	movslq	-160(%rbp), %rsi
	movq	-144(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	movslq	-160(%rbp), %rsi
	movq	-144(%rbp), %rdi
	cmpb	$0, (%rdi,%rsi)
	je	.LBB9_8
# BB#3:                                 # %if.then.29
	movl	$0, -168(%rbp)
.LBB9_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-168(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB9_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movslq	-168(%rbp), %rax
	movl	-192(%rbp,%rax,4), %eax
	xorl	%edx, %edx
	divl	-164(%rbp)
	imull	$255, %eax, %eax
	movslq	-160(%rbp), %rcx
	movq	-144(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divl	%edi
	movb	%al, %r9b
	movslq	-168(%rbp), %rcx
	movq	-144(%rbp), %rsi
	movb	%r9b, (%rsi,%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB9_4
.LBB9_7:                                # %for.end
	jmp	.LBB9_13
.LBB9_8:                                # %if.else
	movl	$0, -168(%rbp)
.LBB9_9:                                # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movl	-168(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB9_12
# BB#10:                                # %for.body.45
                                        #   in Loop: Header=BB9_9 Depth=1
	movslq	-168(%rbp), %rax
	movq	-144(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#11:                                # %for.inc.48
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB9_9
.LBB9_12:                               # %for.end.50
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.51
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	sample_adapt, .Lfunc_end9-sample_adapt
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4643176031446892544     # double 255
.LCPI10_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	sample_linear,@function
sample_linear:                          # @sample_linear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-72(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	pixel_surround_lock
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -104(%rbp)
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-64(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -80(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -88(%rbp)
	movslq	-40(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	subsd	-88(%rbp), %xmm1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	cvtsi2sdl	%edx, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movslq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	movsd	-80(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	-72(%rbp), %edx
	addl	-36(%rbp), %edx
	movslq	%edx, %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	subl	%esi, %edx
	cvtsi2sdl	%edx, %xmm5
	mulsd	%xmm5, %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	ucomisd	-48(%rbp), %xmm0
	jb	.LBB10_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB10_6
.LBB10_2:                               # %if.else
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_4
# BB#3:                                 # %if.then.41
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else.44
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB10_5:                               # %if.end
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.50
	movl	$0, -60(%rbp)
.LBB10_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB10_16
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB10_7 Depth=1
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	-60(%rbp), %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movsd	-80(%rbp), %xmm4        # xmm4 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	-36(%rbp), %esi
	addl	-60(%rbp), %esi
	movslq	%esi, %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %esi
	movslq	-60(%rbp), %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	imull	%edi, %esi
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm5
	mulsd	%xmm5, %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm3, %xmm1
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movslq	-72(%rbp), %rax
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	-72(%rbp), %esi
	addl	-60(%rbp), %esi
	movslq	%esi, %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm4
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movl	-72(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	-72(%rbp), %esi
	addl	-36(%rbp), %esi
	addl	-60(%rbp), %esi
	movslq	%esi, %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	imull	%esi, %ecx
	movslq	-72(%rbp), %rax
	movq	-96(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	movl	-72(%rbp), %edi
	addl	-60(%rbp), %edi
	movslq	%edi, %rax
	movq	-104(%rbp), %rdx
	movzbl	(%rdx,%rax), %edi
	imull	%edi, %esi
	subl	%esi, %ecx
	cvtsi2sdl	%ecx, %xmm6
	mulsd	%xmm6, %xmm5
	addsd	%xmm5, %xmm4
	mulsd	%xmm4, %xmm3
	addsd	%xmm3, %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$255, -108(%rbp)
	jle	.LBB10_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$255, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_14
.LBB10_10:                              # %cond.false
                                        #   in Loop: Header=BB10_7 Depth=1
	cmpl	$0, -108(%rbp)
	jge	.LBB10_12
# BB#11:                                # %cond.true.120
                                        #   in Loop: Header=BB10_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false.121
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB10_13:                              # %cond.end
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB10_14:                              # %cond.end.122
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-60(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_7
.LBB10_16:                              # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sample_linear, .Lfunc_end10-sample_linear
	.cfi_endproc

	.align	16, 0x90
	.type	get_sample,@function
get_sample:                             # @get_sample
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
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
	movl	96(%rbp), %eax
	movl	88(%rbp), %r10d
	movq	80(%rbp), %r11
	movq	72(%rbp), %rbx
	movl	64(%rbp), %r14d
	movq	56(%rbp), %r15
	movl	48(%rbp), %r12d
	movl	40(%rbp), %r13d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	32(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	24(%rbp), %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movl	%eax, -72(%rbp)
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-208(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -80(%rbp)
	movl	%r13d, -84(%rbp)
	movl	%r12d, -88(%rbp)
	movq	%r15, -96(%rbp)
	movl	%r14d, -100(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movl	%r10d, -124(%rbp)
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	%edx, -128(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	supersample_test
	cmpl	$0, %eax
	jne	.LBB11_7
.LBB11_2:                               # %if.then
	leaq	-136(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-120(%rbp), %r8
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %eax
	movl	%eax, (%rsp)
	callq	sample_bi
	movl	$0, -132(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB11_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	-132(%rbp), %rax
	movzbl	-136(%rbp,%rax), %ecx
	movslq	-132(%rbp), %rax
	movq	-112(%rbp), %rdx
	addl	(%rdx,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB11_8
.LBB11_7:                               # %if.else
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -140(%rbp)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -156(%rbp)
	movl	-68(%rbp), %eax
	addl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -160(%rbp)
	movl	-60(%rbp), %eax
	addl	-84(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -144(%rbp)
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -148(%rbp)
	movl	-84(%rbp), %eax
	addl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -164(%rbp)
	movl	-76(%rbp), %eax
	addl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -168(%rbp)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -152(%rbp)
	movl	-64(%rbp), %eax
	addl	-72(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -172(%rbp)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -188(%rbp)
	movl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -192(%rbp)
	movl	-64(%rbp), %eax
	addl	-88(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -176(%rbp)
	movl	-72(%rbp), %eax
	addl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -180(%rbp)
	movl	-88(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -196(%rbp)
	movl	-80(%rbp), %eax
	addl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -200(%rbp)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -184(%rbp)
	movq	-48(%rbp), %rdi
	movl	-156(%rbp), %esi
	movl	-188(%rbp), %eax
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	-172(%rbp), %r10d
	movl	-52(%rbp), %r11d
	movl	-56(%rbp), %ebx
	movl	-144(%rbp), %r14d
	movl	-176(%rbp), %r15d
	movq	-96(%rbp), %r12
	movl	-100(%rbp), %r13d
	subl	$1, %r13d
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movq	-112(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rsi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %eax        # 4-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	%r12, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	-232(%rbp), %r12        # 8-byte Reload
	movq	%r12, 56(%rsp)
	movq	-256(%rbp), %r12        # 8-byte Reload
	movq	%r12, 64(%rsp)
	movl	-240(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 72(%rsp)
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 80(%rsp)
	callq	get_sample
	movq	-48(%rbp), %rdi
	movl	-160(%rbp), %esi
	movl	-192(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-172(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %eax
	movl	-148(%rbp), %r10d
	movl	-180(%rbp), %r11d
	movl	-52(%rbp), %ebx
	movl	-56(%rbp), %r14d
	movq	-96(%rbp), %r12
	movl	-100(%rbp), %r15d
	subl	$1, %r15d
	movq	-112(%rbp), %r13
	movl	%esi, -260(%rbp)        # 4-byte Spill
	movq	-120(%rbp), %rsi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %eax        # 4-byte Reload
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%r12, 40(%rsp)
	movl	%r15d, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-280(%rbp), %r12        # 8-byte Reload
	movq	%r12, 64(%rsp)
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	callq	get_sample
	movq	-48(%rbp), %rdi
	movl	-168(%rbp), %esi
	movl	-200(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movl	-148(%rbp), %r9d
	movl	-180(%rbp), %eax
	movl	-76(%rbp), %r10d
	movl	-80(%rbp), %r11d
	movl	-152(%rbp), %ebx
	movl	-184(%rbp), %r14d
	movq	-96(%rbp), %r12
	movl	-100(%rbp), %r15d
	subl	$1, %r15d
	movq	-112(%rbp), %r13
	movl	%esi, -284(%rbp)        # 4-byte Spill
	movq	-120(%rbp), %rsi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %eax        # 4-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%r12, 40(%rsp)
	movl	%r15d, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-304(%rbp), %r12        # 8-byte Reload
	movq	%r12, 64(%rsp)
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	callq	get_sample
	movq	-48(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-196(%rbp), %edx
	movl	-144(%rbp), %ecx
	movl	-176(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-152(%rbp), %r10d
	movl	-184(%rbp), %r11d
	movl	-84(%rbp), %ebx
	movl	-88(%rbp), %r14d
	movq	-96(%rbp), %r12
	movl	-100(%rbp), %r15d
	subl	$1, %r15d
	movq	-112(%rbp), %r13
	movl	%esi, -308(%rbp)        # 4-byte Spill
	movq	-120(%rbp), %rsi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	-128(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %eax        # 4-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%r12, 40(%rsp)
	movl	%r15d, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-328(%rbp), %r12        # 8-byte Reload
	movq	%r12, 64(%rsp)
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	callq	get_sample
.LBB11_8:                               # %if.end
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_sample, .Lfunc_end11-get_sample
	.cfi_endproc

	.align	16, 0x90
	.type	supersample_test,@function
supersample_test:                       # @supersample_test
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	%r10d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %r11b
	cmpl	$1024, %eax             # imm = 0x400
	movb	%r11b, -33(%rbp)        # 1-byte Spill
	jg	.LBB12_8
# BB#1:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#2:                                 # %lor.lhs.false.4
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#3:                                 # %lor.lhs.false.8
	movl	-28(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#4:                                 # %lor.lhs.false.12
	movl	-8(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#5:                                 # %lor.lhs.false.16
	movl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#6:                                 # %lor.lhs.false.20
	movl	-24(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movb	$1, %cl
	cmpl	$1024, %eax             # imm = 0x400
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB12_8
# BB#7:                                 # %lor.rhs
	movl	-32(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	$1024, %eax             # imm = 0x400
	setg	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB12_8:                               # %lor.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	supersample_test, .Lfunc_end12-supersample_test
	.cfi_endproc

	.align	16, 0x90
	.type	sample_bi,@function
sample_bi:                              # @sample_bi
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -44(%rbp)
	movl	-16(%rbp), %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	sarl	$10, %eax
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	sarl	$10, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	$0, -84(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -84(%rbp)
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movslq	-84(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %edx
	addq	$8, %rcx
	callq	tile_manager_read_pixel_data_1
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-64(%rbp), %edx
	addq	$4, %rcx
	callq	tile_manager_read_pixel_data_1
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	addq	$12, %rcx
	callq	tile_manager_read_pixel_data_1
	movl	$1024, %edx             # imm = 0x400
	movslq	-40(%rbp), %rcx
	movzbl	-80(%rbp,%rcx), %esi
	movl	%edx, %eax
	subl	-48(%rbp), %eax
	imull	%eax, %esi
	movslq	-40(%rbp), %rcx
	movzbl	-76(%rbp,%rcx), %eax
	imull	-48(%rbp), %eax
	addl	%eax, %esi
	shrl	$10, %esi
	movl	%edx, %eax
	subl	-44(%rbp), %eax
	imull	%eax, %esi
	movslq	-40(%rbp), %rcx
	movzbl	-72(%rbp,%rcx), %eax
	subl	-48(%rbp), %edx
	imull	%edx, %eax
	movslq	-40(%rbp), %rcx
	movzbl	-68(%rbp,%rcx), %edx
	imull	-48(%rbp), %edx
	addl	%edx, %eax
	shrl	$10, %eax
	imull	-44(%rbp), %eax
	addl	%eax, %esi
	shrl	$10, %esi
	movb	%sil, %r8b
	movslq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movb	%r8b, (%rdi,%rcx)
	movslq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	cmpb	$0, (%rdi,%rcx)
	je	.LBB13_10
# BB#5:                                 # %if.then
	movl	$0, -84(%rbp)
.LBB13_6:                               # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB13_9
# BB#7:                                 # %for.body.47
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	$255, %eax
	movl	$1024, %ecx             # imm = 0x400
	movslq	-84(%rbp), %rdx
	movzbl	-80(%rbp,%rdx), %esi
	movslq	-40(%rbp), %rdx
	movzbl	-80(%rbp,%rdx), %edi
	imull	%edi, %esi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%ecx, %edi
	subl	-48(%rbp), %edi
	imull	%edi, %eax
	movslq	-84(%rbp), %r8
	movzbl	-76(%rbp,%r8), %edi
	movslq	-40(%rbp), %r8
	movzbl	-76(%rbp,%r8), %r9d
	imull	%r9d, %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%esi
	imull	-48(%rbp), %eax
	movl	-112(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	shrl	$10, %edi
	movl	%ecx, %eax
	subl	-44(%rbp), %eax
	imull	%eax, %edi
	movslq	-84(%rbp), %r8
	movzbl	-72(%rbp,%r8), %eax
	movslq	-40(%rbp), %r8
	movzbl	-72(%rbp,%r8), %r9d
	imull	%r9d, %eax
	cltd
	idivl	%esi
	subl	-48(%rbp), %ecx
	imull	%ecx, %eax
	movslq	-84(%rbp), %r8
	movzbl	-68(%rbp,%r8), %ecx
	movslq	-40(%rbp), %r8
	movzbl	-68(%rbp,%r8), %r9d
	imull	%r9d, %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	imull	-48(%rbp), %eax
	movl	-116(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	shrl	$10, %ecx
	imull	-44(%rbp), %ecx
	addl	%ecx, %edi
	shrl	$10, %edi
	movb	%dil, %r10b
	movslq	-84(%rbp), %r8
	movq	-24(%rbp), %r11
	movb	%r10b, (%r11,%r8)
# BB#8:                                 # %for.inc.105
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB13_6
.LBB13_9:                               # %for.end.107
	jmp	.LBB13_15
.LBB13_10:                              # %if.else
	movl	$0, -84(%rbp)
.LBB13_11:                              # %for.cond.108
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB13_14
# BB#12:                                # %for.body.111
                                        #   in Loop: Header=BB13_11 Depth=1
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#13:                                # %for.inc.114
                                        #   in Loop: Header=BB13_11 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB13_11
.LBB13_14:                              # %for.end.116
	jmp	.LBB13_15
.LBB13_15:                              # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	sample_bi, .Lfunc_end13-sample_bi
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
.LCPI14_1:
	.quad	4607182418800017408     # double 1
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	sample_cubic,@function
sample_cubic:                           # @sample_cubic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp80:
	.cfi_offset %rbx, -24
	leaq	-80(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rdi
	movl	-72(%rbp), %ecx
	subl	$1, %ecx
	movl	-76(%rbp), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	pixel_surround_lock
	movq	%rax, -104(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imull	$0, -80(%rbp), %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edi
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %r8
	addq	%r8, %rcx
	imull	$0, -80(%rbp), %edx
	movslq	%edx, %r8
	addq	%r8, %rcx
	movzbl	(%rcx,%rax), %esi
	movl	-44(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %r8
	addq	%r8, %rcx
	imull	$0, -80(%rbp), %edx
	movslq	%edx, %r8
	addq	%r8, %rcx
	movzbl	(%rcx,%rax), %edx
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %r8
	addq	%r8, %rcx
	imull	$0, -80(%rbp), %r9d
	movslq	%r9d, %r8
	addq	%r8, %rcx
	movzbl	(%rcx,%rax), %ecx
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %edi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r8
	addq	%r8, %rax
	movl	-80(%rbp), %ecx
	shll	$0, %ecx
	movslq	%ecx, %r8
	movzbl	(%rax,%r8), %ecx
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %edx
	shll	$0, %edx
	movslq	%edx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %esi
	movl	-44(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %edx
	shll	$0, %edx
	movslq	%edx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %edx
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %r9d
	shll	$0, %r9d
	movslq	%r9d, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %r9d
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%r9d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %esi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r8
	addq	%r8, %rax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %r8
	movzbl	(%rax,%r8), %edi
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %ecx
	movl	-44(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %edx
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	movl	-80(%rbp), %r9d
	shll	$1, %r9d
	movslq	%r9d, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %r9d
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%r9d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r8
	addq	%r8, %rax
	imull	$3, -80(%rbp), %ecx
	movslq	%ecx, %r8
	movzbl	(%rax,%r8), %edi
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	imull	$3, -80(%rbp), %ecx
	movslq	%ecx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %esi
	movl	-44(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	imull	$3, -80(%rbp), %ecx
	movslq	%ecx, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %ecx
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %r8
	movslq	-48(%rbp), %r10
	addq	%r10, %r8
	imull	$3, -80(%rbp), %r9d
	movslq	%r9d, %r10
	addq	%r10, %r8
	movzbl	(%r8,%rax), %r9d
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%r9d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %ecx
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-132(%rbp), %edi        # 4-byte Reload
	movl	-136(%rbp), %esi        # 4-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	callq	gimp_drawable_transform_cubic
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	ucomisd	-56(%rbp), %xmm1
	jb	.LBB14_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB14_6
.LBB14_2:                               # %if.else
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_4
# BB#3:                                 # %if.then.153
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else.156
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.162
	movl	$0, -68(%rbp)
.LBB14_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB14_16
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB14_7 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	imull	$0, -80(%rbp), %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edx
	movl	-68(%rbp), %esi
	movq	-104(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	imull	$0, -80(%rbp), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	imull	%esi, %edx
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %esi
	movslq	%esi, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %esi
	movslq	-44(%rbp), %rax
	movl	-68(%rbp), %r8d
	movq	-104(%rbp), %rcx
	movslq	%r8d, %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %r8d
	movslq	%r8d, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %r8d
	imull	%r8d, %esi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %r8d
	movslq	%r8d, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %r8d
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movl	-68(%rbp), %r9d
	movq	-104(%rbp), %rcx
	movslq	%r9d, %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %r9d
	movslq	%r9d, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %r9d
	imull	%r9d, %r8d
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movq	-104(%rbp), %rcx
	movslq	-48(%rbp), %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %r9d
	movslq	%r9d, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %r9d
	movl	-44(%rbp), %r10d
	addl	-44(%rbp), %r10d
	addl	-44(%rbp), %r10d
	movslq	%r10d, %rax
	movl	-68(%rbp), %r10d
	movq	-104(%rbp), %rcx
	movslq	%r10d, %rdi
	addq	%rdi, %rcx
	imull	$0, -80(%rbp), %r10d
	movslq	%r10d, %rdi
	addq	%rdi, %rcx
	movzbl	(%rcx,%rax), %r10d
	imull	%r10d, %r9d
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%edx, %edi
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %edi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r11
	addq	%r11, %rax
	movl	-80(%rbp), %ecx
	shll	$0, %ecx
	movslq	%ecx, %r11
	movzbl	(%rax,%r11), %ecx
	movl	-68(%rbp), %edx
	movq	-104(%rbp), %rax
	movslq	%edx, %r11
	addq	%r11, %rax
	movl	-80(%rbp), %edx
	shll	$0, %edx
	movslq	%edx, %r11
	movzbl	(%rax,%r11), %edx
	imull	%edx, %ecx
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %edx
	shll	$0, %edx
	movslq	%edx, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edx
	movslq	-44(%rbp), %rax
	movl	-68(%rbp), %esi
	movq	-104(%rbp), %r11
	movslq	%esi, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %esi
	shll	$0, %esi
	movslq	%esi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %esi
	imull	%esi, %edx
	movl	-44(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %esi
	shll	$0, %esi
	movslq	%esi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %esi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movl	-68(%rbp), %r8d
	movq	-104(%rbp), %r11
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r8d
	shll	$0, %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	imull	%r8d, %esi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r8d
	shll	$0, %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movl	-68(%rbp), %r9d
	movq	-104(%rbp), %r11
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r9d
	shll	$0, %r9d
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r9d
	imull	%r9d, %r8d
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	%r8d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %esi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r11
	addq	%r11, %rax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %r11
	movzbl	(%rax,%r11), %ecx
	movl	-68(%rbp), %edx
	movq	-104(%rbp), %rax
	movslq	%edx, %r11
	addq	%r11, %rax
	movl	-80(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %r11
	movzbl	(%rax,%r11), %edx
	imull	%edx, %ecx
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edx
	movslq	-44(%rbp), %rax
	movl	-68(%rbp), %edi
	movq	-104(%rbp), %r11
	movslq	%edi, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %edi
	shll	$1, %edi
	movslq	%edi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edi
	imull	%edi, %edx
	movl	-44(%rbp), %edi
	addl	-44(%rbp), %edi
	movslq	%edi, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %edi
	shll	$1, %edi
	movslq	%edi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movl	-68(%rbp), %r8d
	movq	-104(%rbp), %r11
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r8d
	shll	$1, %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	imull	%r8d, %edi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r8d
	shll	$1, %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movl	-68(%rbp), %r9d
	movq	-104(%rbp), %r11
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	movl	-80(%rbp), %r9d
	shll	$1, %r9d
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r9d
	imull	%r9d, %r8d
	movl	%edi, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-172(%rbp), %edx        # 4-byte Reload
	movl	%r8d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movslq	-48(%rbp), %r11
	addq	%r11, %rax
	imull	$3, -80(%rbp), %ecx
	movslq	%ecx, %r11
	movzbl	(%rax,%r11), %ecx
	movl	-68(%rbp), %esi
	movq	-104(%rbp), %rax
	movslq	%esi, %r11
	addq	%r11, %rax
	imull	$3, -80(%rbp), %esi
	movslq	%esi, %r11
	movzbl	(%rax,%r11), %esi
	imull	%esi, %ecx
	movslq	-44(%rbp), %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %esi
	movslq	%esi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %esi
	movslq	-44(%rbp), %rax
	movl	-68(%rbp), %edi
	movq	-104(%rbp), %r11
	movslq	%edi, %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %edi
	movslq	%edi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edi
	imull	%edi, %esi
	movl	-44(%rbp), %edi
	addl	-44(%rbp), %edi
	movslq	%edi, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %edi
	movslq	%edi, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %edi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movl	-68(%rbp), %r8d
	movq	-104(%rbp), %r11
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	imull	%r8d, %edi
	movl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	addl	-44(%rbp), %r8d
	movslq	%r8d, %rax
	movq	-104(%rbp), %r11
	movslq	-48(%rbp), %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %r8d
	movslq	%r8d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r8d
	movl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	addl	-44(%rbp), %r9d
	movslq	%r9d, %rax
	movl	-68(%rbp), %r9d
	movq	-104(%rbp), %r11
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	imull	$3, -80(%rbp), %r9d
	movslq	%r9d, %rbx
	addq	%rbx, %r11
	movzbl	(%r11,%rax), %r9d
	imull	%r9d, %r8d
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	callq	gimp_drawable_transform_cubic
	cvttsd2si	%xmm0, %ecx
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-164(%rbp), %edi        # 4-byte Reload
	movl	-176(%rbp), %esi        # 4-byte Reload
	movl	-184(%rbp), %edx        # 4-byte Reload
	callq	gimp_drawable_transform_cubic
	movsd	.LCPI14_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -108(%rbp)
	cmpl	$255, -108(%rbp)
	jle	.LBB14_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	$255, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB14_14
.LBB14_10:                              # %cond.false
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpl	$0, -108(%rbp)
	jge	.LBB14_12
# BB#11:                                # %cond.true.469
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.470
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB14_13:                              # %cond.end
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB14_14:                              # %cond.end.471
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-68(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB14_7
.LBB14_16:                              # %for.end
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sample_cubic, .Lfunc_end14-sample_cubic
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_drawable_transform_cubic,@function
gimp_drawable_transform_cubic:          # @gimp_drawable_transform_cubic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	movsd	%xmm0, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	imull	$3, -16(%rbp), %edx
	addl	%edx, %ecx
	imull	$3, -20(%rbp), %edx
	subl	%edx, %ecx
	addl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	-8(%rbp), %xmm0
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	imull	$5, -16(%rbp), %edx
	subl	%edx, %ecx
	movl	-20(%rbp), %edx
	shll	$2, %edx
	addl	%edx, %ecx
	subl	-24(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-8(%rbp), %xmm0
	subl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-8(%rbp), %xmm0
	movl	-16(%rbp), %eax
	addl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_transform_cubic, .Lfunc_end15-gimp_drawable_transform_cubic
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4661014508095930368     # double 4000
.LCPI16_1:
	.quad	4643176031446892544     # double 255
.LCPI16_2:
	.quad	4607182418800017408     # double 1
.LCPI16_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	sample_lanczos,@function
sample_lanczos:                         # @sample_lanczos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	xorps	%xmm2, %xmm2
	movsd	.LCPI16_0, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	cvttsd2si	-24(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	cvttsd2si	-32(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-232(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -212(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-236(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -216(%rbp)
	movsd	%xmm2, -192(%rbp)
	movsd	%xmm2, -184(%rbp)
	movl	$3, -224(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-3, -224(%rbp)
	jl	.LBB16_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	imull	$4000, -224(%rbp), %eax # imm = 0xFA0
	movl	%eax, -260(%rbp)
	movl	-212(%rbp), %eax
	subl	-260(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB16_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%eax, %eax
	movl	-212(%rbp), %ecx
	subl	-260(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-212(%rbp), %eax
	subl	-260(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB16_5:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	cvtss2sd	(%rdx,%rcx,4), %xmm0
	movl	-224(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movsd	%xmm0, -112(%rbp,%rcx,8)
	addsd	-184(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movl	-216(%rbp), %eax
	subl	-260(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB16_7
# BB#6:                                 # %cond.true.23
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%eax, %eax
	movl	-216(%rbp), %ecx
	subl	-260(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false.26
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-216(%rbp), %eax
	subl	-260(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB16_8:                               # %cond.end.28
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-288(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	cvtss2sd	(%rdx,%rcx,4), %xmm0
	movl	-224(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movsd	%xmm0, -176(%rbp,%rcx,8)
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-224(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB16_1
.LBB16_10:                              # %for.end
	movl	$0, -224(%rbp)
.LBB16_11:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -224(%rbp)
	jge	.LBB16_14
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB16_11 Depth=1
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-224(%rbp), %rax
	movsd	-112(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp,%rax,8)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-224(%rbp), %rax
	movsd	-176(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -176(%rbp,%rax,8)
# BB#13:                                # %for.inc.46
                                        #   in Loop: Header=BB16_11 Depth=1
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB16_11
.LBB16_14:                              # %for.end.47
	leaq	-240(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-232(%rbp), %eax
	subl	$3, %eax
	movl	-236(%rbp), %edx
	subl	$3, %edx
	movl	%eax, %esi
	callq	pixel_surround_lock
	xorps	%xmm0, %xmm0
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movsd	%xmm0, -208(%rbp)
	movl	$0, -228(%rbp)
.LBB16_15:                              # %for.cond.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_17 Depth 2
	cmpl	$7, -228(%rbp)
	jge	.LBB16_22
# BB#16:                                # %for.body.53
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	$0, -224(%rbp)
.LBB16_17:                              # %for.cond.54
                                        #   Parent Loop BB16_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$7, -224(%rbp)
	jge	.LBB16_20
# BB#18:                                # %for.body.57
                                        #   in Loop: Header=BB16_17 Depth=2
	movslq	-228(%rbp), %rax
	movsd	-176(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-224(%rbp), %rax
	movl	%eax, %ecx
	movsd	-112(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-44(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	movq	-256(%rbp), %rsi
	movzbl	(%rsi,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
# BB#19:                                # %for.inc.69
                                        #   in Loop: Header=BB16_17 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB16_17
.LBB16_20:                              # %for.end.71
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	-240(%rbp), %eax
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -256(%rbp)
# BB#21:                                # %for.inc.74
                                        #   in Loop: Header=BB16_15 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB16_15
.LBB16_22:                              # %for.end.76
	xorps	%xmm0, %xmm0
	ucomisd	-208(%rbp), %xmm0
	jb	.LBB16_24
# BB#23:                                # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB16_28
.LBB16_24:                              # %if.else
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB16_26
# BB#25:                                # %if.then.81
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_2, %xmm1        # xmm1 = mem[0],zero
	divsd	-208(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB16_27
.LBB16_26:                              # %if.else.83
	movsd	.LCPI16_2, %xmm0        # xmm0 = mem[0],zero
	divsd	-208(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
.LBB16_27:                              # %if.end
	jmp	.LBB16_28
.LBB16_28:                              # %if.end.85
	movl	$0, -220(%rbp)
.LBB16_29:                              # %for.cond.86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_31 Depth 2
                                        #       Child Loop BB16_33 Depth 3
	movl	-220(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB16_46
# BB#30:                                # %for.body.89
                                        #   in Loop: Header=BB16_29 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -280(%rbp)
	movq	-248(%rbp), %rax
	movslq	-220(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movl	$0, -228(%rbp)
.LBB16_31:                              # %for.cond.94
                                        #   Parent Loop BB16_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_33 Depth 3
	cmpl	$7, -228(%rbp)
	jge	.LBB16_38
# BB#32:                                # %for.body.97
                                        #   in Loop: Header=BB16_31 Depth=2
	movl	$0, -224(%rbp)
.LBB16_33:                              # %for.cond.98
                                        #   Parent Loop BB16_29 Depth=1
                                        #     Parent Loop BB16_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$7, -224(%rbp)
	jge	.LBB16_36
# BB#34:                                # %for.body.101
                                        #   in Loop: Header=BB16_33 Depth=3
	movslq	-228(%rbp), %rax
	movsd	-176(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movslq	-224(%rbp), %rax
	movl	%eax, %ecx
	movsd	-112(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-44(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rax
	movq	-256(%rbp), %rsi
	movzbl	(%rsi,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-272(%rbp), %rsi
	movzbl	(%rsi,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-280(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
# BB#35:                                # %for.inc.118
                                        #   in Loop: Header=BB16_33 Depth=3
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB16_33
.LBB16_36:                              # %for.end.120
                                        #   in Loop: Header=BB16_31 Depth=2
	movl	-240(%rbp), %eax
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -256(%rbp)
	movl	-240(%rbp), %eax
	movq	-272(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -272(%rbp)
# BB#37:                                # %for.inc.125
                                        #   in Loop: Header=BB16_31 Depth=2
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB16_31
.LBB16_38:                              # %for.end.127
                                        #   in Loop: Header=BB16_29 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-280(%rbp), %xmm1
	movsd	%xmm1, -280(%rbp)
	addsd	-280(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$255, %eax
	jle	.LBB16_40
# BB#39:                                # %cond.true.133
                                        #   in Loop: Header=BB16_29 Depth=1
	movl	$255, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB16_44
.LBB16_40:                              # %cond.false.134
                                        #   in Loop: Header=BB16_29 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-280(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$0, %eax
	jge	.LBB16_42
# BB#41:                                # %cond.true.139
                                        #   in Loop: Header=BB16_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB16_43
.LBB16_42:                              # %cond.false.140
                                        #   in Loop: Header=BB16_29 Depth=1
	movsd	.LCPI16_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-280(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB16_43:                              # %cond.end.143
                                        #   in Loop: Header=BB16_29 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB16_44:                              # %cond.end.145
                                        #   in Loop: Header=BB16_29 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-220(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#45:                                # %for.inc.150
                                        #   in Loop: Header=BB16_29 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB16_29
.LBB16_46:                              # %for.end.152
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	rint
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end16:
	.size	sample_lanczos, .Lfunc_end16-sample_lanczos
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_transform_region,@object # @__func__.gimp_transform_region
.L__func__.gimp_transform_region:
	.asciz	"gimp_transform_region"
	.size	.L__func__.gimp_transform_region, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PICKABLE (pickable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-transform-region.c"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"homogeneous coordinate = 0...\n"
	.size	.L.str.3, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
