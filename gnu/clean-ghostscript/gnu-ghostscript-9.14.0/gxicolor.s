	.text
	.file	"gxicolor.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	gs_image_class_4_color
	.align	16, 0x90
	.type	gs_image_class_4_color,@function
gs_image_class_4_color:                 # @gs_image_class_4_color
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
	subq	$136, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 176
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	cmpb	$0, 1116(%r15)
	je	.LBB0_7
# BB#1:                                 # %if.then
	movzbl	579(%r15), %eax
	cmpl	$5, %eax
	sbbl	%r14d, %r14d
	andl	$1, %r14d
	leaq	72(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	cmpb	$0, 579(%r15)
	je	.LBB0_6
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	gx_image_scale_mask_colors
	leal	(%rbp,%rbp), %eax
	cltq
	movl	584(%r15,%rax,4), %eax
	leal	1(%rbp,%rbp), %ecx
	movslq	%ecx, %rcx
	movl	584(%r15,%rcx,4), %edx
	movb	$-1, %bl
	.align	16, 0x90
.LBB0_4:                                # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bl, %ecx
	movl	%ecx, %esi
	andl	%eax, %esi
	movl	%ecx, %edi
	andl	%edx, %edi
	movb	%cl, %bl
	addb	%cl, %bl
	cmpl	%edi, %esi
	jne	.LBB0_4
# BB#5:                                 # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movzbl	%dl, %edx
	movzbl	%al, %eax
	movb	%cl, 72(%rsp,%rbp)
	movb	%sil, 8(%rsp,%rbp)
	cmpl	%ecx, %eax
	sete	%al
	orl	%ecx, %edx
	cmpl	$255, %edx
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	andl	%eax, %r14d
	incq	%rbp
	movzbl	579(%r15), %eax
	cmpq	%rax, %rbp
	jl	.LBB0_3
.LBB0_6:                                # %for.end
	movl	72(%rsp), %eax
	movl	%eax, 1104(%r15)
	movl	8(%rsp), %eax
	movl	%eax, 1108(%r15)
	movl	%r14d, 1112(%r15)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movq	%rax, 1104(%r15)
.LBB0_8:                                # %if.end
	movq	16(%r15), %rdi
	movq	1216(%r15), %rsi
	callq	gx_device_uses_std_cmap_procs
	movl	%eax, %ebp
	movq	1224(%r15), %rdi
	callq	gs_color_space_get_index
	cmpl	$4, %eax
	jne	.LBB0_10
# BB#9:                                 # %land.lhs.true
	movq	1224(%r15), %rcx
	movl	$image_render_color_DeviceN, %eax
	cmpq	$0, 64(%rcx)
	je	.LBB0_46
.LBB0_10:                               # %lor.lhs.false
	movl	$image_render_color_DeviceN, %eax
	testl	%ebp, %ebp
	je	.LBB0_46
# BB#11:                                # %lor.lhs.false
	movb	1116(%r15), %cl
	testb	%cl, %cl
	jne	.LBB0_46
# BB#12:                                # %if.else.67
	movq	1224(%r15), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	movl	%eax, %ebp
	movq	16(%r15), %rdi
	leaq	8(%rsp), %rsi
	callq	*1680(%rdi)
	movq	8(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %r14d
	movl	$0, 24792(%r15)
	testl	%ebp, %ebp
	jle	.LBB0_17
# BB#13:                                # %for.body.79.lr.ph
	movslq	%ebp, %rax
	leaq	1852(%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_15:                               # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	jne	.LBB0_16
# BB#14:                                # %for.cond.76
                                        #   in Loop: Header=BB0_15 Depth=1
	incq	%rdx
	addq	$332, %rcx              # imm = 0x14C
	cmpq	%rax, %rdx
	jl	.LBB0_15
	jmp	.LBB0_17
.LBB0_16:                               # %if.then.84
	movl	$1, 24792(%r15)
.LBB0_17:                               # %for.end.90
	movq	1216(%r15), %rax
	movl	328(%rax), %ecx
	movl	%ecx, 76(%rsp)
	movl	324(%rax), %eax
	movl	%eax, 72(%rsp)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [8,2,0,0]
	movups	%xmm0, 80(%rsp)
	movq	1224(%r15), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	movq	1224(%r15), %rax
	je	.LBB0_19
# BB#18:                                # %land.lhs.true.96
	movq	48(%rax), %rbp
	testq	%rbp, %rbp
	jne	.LBB0_20
.LBB0_19:                               # %if.else.103
	movq	%rax, %rbp
.LBB0_20:                               # %if.end.105
	movq	64(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, 24796(%r15)
	movq	16(%r15), %rax
	cmpl	$1, 100(%rax)
	jg	.LBB0_22
# BB#21:                                # %lor.lhs.false.112
	movzbl	110(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB0_22
# BB#23:                                # %cond.false
	addq	$112, %rax
	jmp	.LBB0_24
.LBB0_22:                               # %cond.true
	addq	$116, %rax
.LBB0_24:                               # %cond.end
	cmpl	$31, (%rax)
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 24800(%r15)
	movq	1216(%r15), %rdi
	movl	%r14d, %esi
	callq	gx_has_transfer
	movl	%eax, 24804(%r15)
	cmpl	$0, 24796(%r15)
	je	.LBB0_26
# BB#25:                                # %if.then.131
	movl	$0, 24792(%r15)
.LBB0_26:                               # %if.end.134
	cmpq	$0, 24448(%r15)
	jne	.LBB0_28
# BB#27:                                # %if.then.137
	movq	1216(%r15), %rdi
	movq	16(%r15), %rsi
	movq	24(%r15), %r9
	leaq	72(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	callq	gsicc_get_link
	movq	%rax, 24448(%r15)
.LBB0_28:                               # %if.end.142
	movl	$0, 24808(%r15)
	movq	1224(%r15), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB0_32
# BB#29:                                # %land.lhs.true.146
	movq	1224(%r15), %rdi
	cmpq	$0, 48(%rdi)
	je	.LBB0_32
# BB#30:                                # %if.then.151
	callq	check_cie_range
	testl	%eax, %eax
	jne	.LBB0_32
# BB#31:                                # %if.then.155
	movq	1224(%r15), %rdi
	callq	get_cie_range
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24808(%r15)
.LBB0_32:                               # %if.end.162
	movq	16(%r15), %rax
	movl	100(%rax), %ecx
	cmpl	$1, %ecx
	jg	.LBB0_34
# BB#33:                                # %lor.lhs.false.168
	movzbl	110(%rax), %edx
	cmpl	$255, %edx
	je	.LBB0_34
# BB#35:                                # %cond.false.179
	leaq	112(%rax), %rdx
	jmp	.LBB0_36
.LBB0_34:                               # %cond.true.175
	leaq	116(%rax), %rdx
.LBB0_36:                               # %cond.end.183
	cmpl	$30, (%rdx)
	ja	.LBB0_45
# BB#37:                                # %land.lhs.true.189
	cmpl	$1, 1264(%r15)
	ja	.LBB0_45
# BB#38:                                # %land.lhs.true.196
	cmpl	$0, 24500(%r15)
	jne	.LBB0_45
# BB#39:                                # %if.then.199
	movl	848(%rax), %edx
	cmpl	$1, %ecx
	jne	.LBB0_42
# BB#40:                                # %land.lhs.true.206
	testl	%edx, %edx
	jne	.LBB0_43
# BB#41:                                # %land.lhs.true.206
	movzwl	108(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$1, %eax
	jne	.LBB0_45
	jmp	.LBB0_43
.LBB0_42:                               # %lor.lhs.false.212
	testl	%edx, %edx
	je	.LBB0_45
.LBB0_43:                               # %land.lhs.true.214
	movzbl	576(%r15), %eax
	cmpl	$8, %eax
	jne	.LBB0_45
# BB#44:                                # %if.then.218
	movq	%r15, %rdi
	callq	gxht_thresh_image_init
	movl	%eax, %ecx
	movl	$image_render_color_thresh, %eax
	testl	%ecx, %ecx
	je	.LBB0_46
.LBB0_45:                               # %if.end.225
	movl	$image_render_color_icc, %eax
.LBB0_46:                               # %cleanup.231
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_image_class_4_color, .Lfunc_end0-gs_image_class_4_color
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	998277249               # float 3.921569e-03
	.long	998277249               # float 3.921569e-03
	.long	998277249               # float 3.921569e-03
	.long	998277249               # float 3.921569e-03
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_1:
	.long	998277249               # float 0.00392156886
	.text
	.align	16, 0x90
	.type	image_render_color_DeviceN,@function
image_render_color_DeviceN:             # @image_render_color_DeviceN
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
	subq	$2072, %rsp             # imm = 0x818
.Ltmp15:
	.cfi_def_cfa_offset 2128
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
	movq	%r9, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movzbl	579(%rbp), %edi
	movl	%ecx, %esi
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB1_71
# BB#1:                                 # %if.end
	movl	%ecx, 364(%rsp)         # 4-byte Spill
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	movq	1216(%rbp), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	1224(%rbp), %r13
	movl	1304(%rbp), %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movl	1264(%rbp), %r12d
	movslq	%edx, %rbx
	imulq	%rdi, %rbx
	movq	%rdi, 288(%rsp)         # 8-byte Spill
	movl	1104(%rbp), %eax
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movl	1108(%rbp), %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	64(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_4
# BB#3:                                 # %land.lhs.true.16
	movl	$gx_remap_ICC_imagelab, %ecx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movl	$1, 196(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 4(%rax)
	jne	.LBB1_5
.LBB1_4:                                # %if.else
	movq	(%r13), %rax
	movq	72(%rax), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	$0, 196(%rsp)           # 4-byte Folded Spill
.LBB1_5:                                # %if.end.22
	movq	%r13, 272(%rsp)         # 8-byte Spill
	addq	%rbx, %r15
	movq	%r15, 208(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	*1664(%r14)
	movq	%r14, 240(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	je	.LBB1_7
# BB#6:                                 # %vector.body
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1160(%rsp)
	movups	%xmm0, 504(%rsp)
	movups	%xmm0, 1176(%rsp)
	movups	%xmm0, 520(%rsp)
	movups	%xmm0, 1192(%rsp)
	movups	%xmm0, 536(%rsp)
	movups	%xmm0, 1208(%rsp)
	movups	%xmm0, 552(%rsp)
	movups	%xmm0, 1224(%rsp)
	movups	%xmm0, 568(%rsp)
	movups	%xmm0, 1240(%rsp)
	movups	%xmm0, 584(%rsp)
	movups	%xmm0, 1256(%rsp)
	movups	%xmm0, 600(%rsp)
	movups	%xmm0, 1272(%rsp)
	movups	%xmm0, 616(%rsp)
.LBB1_7:                                # %if.end.33
	movq	$gx_dc_type_data_none, 1152(%rsp)
	movq	$gx_dc_type_data_none, 496(%rsp)
	movl	1452(%rbp), %esi
	movl	%esi, 284(%rsp)         # 4-byte Spill
	movl	1456(%rbp), %r15d
	movl	1460(%rbp), %eax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	movl	1464(%rbp), %eax
	movl	%eax, 348(%rsp)         # 4-byte Spill
	movl	1468(%rbp), %eax
	movl	%eax, 344(%rsp)         # 4-byte Spill
	movl	1472(%rbp), %edi
	movl	%edi, 280(%rsp)         # 4-byte Spill
	movl	1476(%rbp), %r14d
	movl	1480(%rbp), %eax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	1484(%rbp), %eax
	movl	%eax, 332(%rsp)         # 4-byte Spill
	movl	1488(%rbp), %eax
	movl	%eax, 328(%rsp)         # 4-byte Spill
	movl	1372(%rbp), %eax
	movl	1392(%rbp), %ecx
	subl	1356(%rbp), %eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
	subl	1360(%rbp), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	leaq	1512(%rbp), %rax
	leaq	1516(%rbp), %rcx
	leaq	1520(%rbp), %rdx
	testl	%r12d, %r12d
	cmoveq	%rax, %rdx
	leaq	1524(%rbp), %rax
	cmoveq	%rcx, %rax
	movl	%edi, %r13d
	cmovel	%esi, %r13d
	subl	$-128, %r13d
	sarl	$8, %r13d
	movl	(%rax), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	(%rdx), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	leaq	432(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	leaq	368(%rsp), %rbx
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	$0, 1808(%rsp)
	movq	272(%rsp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	1808(%rsp), %rdi
	callq	*32(%rax)
	movq	208(%rsp), %rdx         # 8-byte Reload
	movb	(%rdx), %al
	notb	%al
	movb	%al, 432(%rsp)
	cmpl	$0, 364(%rsp)           # 4-byte Folded Reload
	je	.LBB1_8
# BB#9:                                 # %do.body.63.lr.ph.lr.ph
	movl	%r12d, 360(%rsp)        # 4-byte Spill
	movq	288(%rsp), %rcx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 312(%rsp)         # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leal	-2(%rcx,%rcx), %esi
	movl	%esi, 132(%rsp)         # 4-byte Spill
	leaq	-1(%rcx,%rbx), %rsi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	leal	-1(%rcx), %esi
	incq	%rsi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%ecx, %edi
	andl	$7, %edi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	subq	%rdi, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	leaq	580(%rbp,%rax,4), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	-2(%rcx,%rcx), %eax
	cltq
	leaq	584(%rbp,%rax,4), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%ecx, %esi
	decl	%esi
	incq	%rsi
	movl	%ecx, %eax
	andl	$7, %eax
	subq	%rax, %rsi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%r13d, %eax
	movl	%eax, 268(%rsp)         # 4-byte Spill
	leaq	1784(%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	leaq	1152(%rsp), %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	leaq	496(%rsp), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	movl	284(%rsp), %r8d         # 4-byte Reload
	movl	280(%rsp), %r12d        # 4-byte Reload
.LBB1_10:                               # %do.body.63.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_31 Depth 2
	movl	%r8d, %ebp
	movl	%r12d, %esi
	.align	16, 0x90
.LBB1_11:                               # %do.body.63
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	movl	%r15d, %eax
	subl	348(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %r15d
	sarl	$31, %r15d
	andl	344(%rsp), %r15d        # 4-byte Folded Reload
	addl	%eax, %r15d
	shrl	$31, %eax
	movq	352(%rsp), %rdx         # 8-byte Reload
	leal	(%rbp,%rdx), %edx
	addl	%eax, %edx
	movl	%edx, 364(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	subl	332(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %r14d
	sarl	$31, %r14d
	andl	328(%rsp), %r14d        # 4-byte Folded Reload
	addl	%eax, %r14d
	shrl	$31, %eax
	movq	336(%rsp), %rdx         # 8-byte Reload
	leal	(%rsi,%rdx), %r12d
	addl	%eax, %r12d
	cmpl	$2, 360(%rsp)           # 4-byte Folded Reload
	je	.LBB1_15
# BB#12:                                # %land.lhs.true.130
                                        #   in Loop: Header=BB1_11 Depth=2
	movq	%rbx, %rdi
	leaq	432(%rsp), %rsi
	movq	%rcx, %rdx
	movq	%rcx, %r13
	callq	memcmp
	movq	%r13, %rcx
	testl	%eax, %eax
	jne	.LBB1_15
# BB#13:                                # %if.then.135
                                        #   in Loop: Header=BB1_11 Depth=2
	addq	%rcx, %rbx
	cmpq	312(%rsp), %rbx         # 8-byte Folded Reload
	movl	364(%rsp), %r8d         # 4-byte Reload
	movl	%r8d, %ebp
	movl	%r12d, %esi
	jb	.LBB1_11
	jmp	.LBB1_14
	.align	16, 0x90
.LBB1_15:                               # %if.end.138
                                        #   in Loop: Header=BB1_10 Depth=1
	leaq	368(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%rcx, %rdx
	callq	memcpy
	movl	368(%rsp), %eax
	andl	224(%rsp), %eax         # 4-byte Folded Reload
	cmpl	220(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB1_22
# BB#16:                                # %land.lhs.true.148
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 1112(%rax)
	jne	.LBB1_18
# BB#17:                                # %land.lhs.true.148
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	132(%rsp), %edx         # 4-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	jb	.LBB1_18
	.align	16, 0x90
.LBB1_20:                               # %for.body.i
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %edi
	cmpl	(%rax), %edi
	jb	.LBB1_22
# BB#21:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	(%rcx), %edi
	ja	.LBB1_22
# BB#19:                                # %for.cond.i
                                        #   in Loop: Header=BB1_20 Depth=2
	decq	%rsi
	addq	$-8, %rcx
	addq	$-8, %rax
	addl	$-2, %edx
	jns	.LBB1_20
.LBB1_18:                               # %if.then.155
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	296(%rsp), %rax         # 8-byte Reload
	movq	$gx_dc_type_data_null, (%rax)
	jmp	.LBB1_40
	.align	16, 0x90
.LBB1_22:                               # %if.end.157
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpl	$0, 196(%rsp)           # 4-byte Folded Reload
	je	.LBB1_30
# BB#23:                                # %for.cond.160.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movl	284(%rsp), %r8d         # 4-byte Reload
	movq	288(%rsp), %rdi         # 8-byte Reload
	testb	%dil, %dil
	movq	272(%rsp), %rsi         # 8-byte Reload
	movss	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	je	.LBB1_39
# BB#24:                                # %overflow.checked365
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 144(%rsp)         # 8-byte Folded Reload
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	1832(%rsp), %rcx
	leaq	372(%rsp), %rdx
	movl	$0, %ebp
	pxor	%xmm3, %xmm3
	movaps	.LCPI1_0(%rip), %xmm4   # xmm4 = [3.921569e-03,3.921569e-03,3.921569e-03,3.921569e-03]
	je	.LBB1_27
	.align	16, 0x90
.LBB1_25:                               # %vector.body361
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-4(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	punpcklwd	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	cvtdq2ps	%xmm0, %xmm0
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	cvtdq2ps	%xmm1, %xmm1
	mulps	%xmm4, %xmm0
	mulps	%xmm4, %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$8, %rdx
	addq	$32, %rcx
	addq	$-8, %rax
	jne	.LBB1_25
# BB#26:                                #   in Loop: Header=BB1_10 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB1_27:                               # %middle.block362
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	%rbp, 144(%rsp)         # 8-byte Folded Reload
	je	.LBB1_39
# BB#28:                                # %for.body.163.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	leaq	368(%rsp,%rbp), %rax
	leaq	1816(%rsp), %rcx
	leaq	(%rcx,%rbp,4), %rcx
	movl	%edi, %edx
	subl	%ebp, %edx
	.align	16, 0x90
.LBB1_29:                               # %for.body.163
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, (%rcx)
	incq	%rax
	addq	$4, %rcx
	decl	%edx
	jne	.LBB1_29
	jmp	.LBB1_39
.LBB1_30:                               # %for.cond.177.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movl	284(%rsp), %r8d         # 4-byte Reload
	movq	288(%rsp), %rax         # 8-byte Reload
	testb	%al, %al
	leaq	1816(%rsp), %rcx
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	368(%rsp), %rbp
	movq	272(%rsp), %rsi         # 8-byte Reload
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	je	.LBB1_39
	.align	16, 0x90
.LBB1_31:                               # %for.body.180
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rdx), %edi
	cmpl	$2, %edi
	je	.LBB1_36
# BB#32:                                # %for.body.180
                                        #   in Loop: Header=BB1_31 Depth=2
	cmpl	$1, %edi
	jne	.LBB1_33
# BB#35:                                # %sw.bb.194
                                        #   in Loop: Header=BB1_31 Depth=2
	movzbl	(%rbp), %edi
	shrq	$2, %rdi
	andl	$60, %edi
	movl	(%rdx,%rdi), %edi
	movl	%edi, (%rcx)
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_36:                               # %sw.bb.209
                                        #   in Loop: Header=BB1_31 Depth=2
	movzbl	(%rbp), %edi
	cvtsi2ssl	%edi, %xmm0
	mulss	64(%rdx), %xmm0
	addss	(%rdx), %xmm0
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_33:                               # %for.body.180
                                        #   in Loop: Header=BB1_31 Depth=2
	testl	%edi, %edi
	jne	.LBB1_38
# BB#34:                                # %sw.bb.183
                                        #   in Loop: Header=BB1_31 Depth=2
	movzbl	(%rbp), %edi
	cvtsi2ssl	%edi, %xmm0
	mulss	%xmm1, %xmm0
.LBB1_37:                               # %for.inc.230
                                        #   in Loop: Header=BB1_31 Depth=2
	movss	%xmm0, (%rcx)
.LBB1_38:                               # %for.inc.230
                                        #   in Loop: Header=BB1_31 Depth=2
	incq	%rbp
	addq	$332, %rdx              # imm = 0x14C
	addq	$4, %rcx
	decl	%eax
	jne	.LBB1_31
.LBB1_39:                               # %if.end.233
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r8d, 284(%rsp)         # 4-byte Spill
	movq	%rsi, 272(%rsp)         # 8-byte Spill
	movl	$1, %r9d
	leaq	1808(%rsp), %rdi
	movq	296(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	240(%rsp), %r8          # 8-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rbp         # 8-byte Reload
.LBB1_40:                               # %mapped
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	288(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	cmpl	$2, 360(%rsp)           # 4-byte Folded Reload
	je	.LBB1_50
# BB#41:                                # %mapped
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	248(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	js	.LBB1_50
# BB#42:                                # %land.lhs.true.244
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	296(%rsp), %rsi         # 8-byte Reload
	movq	%rax, %r13
	callq	gx_device_color_equal
	movq	%r13, %rcx
	testl	%eax, %eax
	je	.LBB1_50
# BB#43:                                #   in Loop: Header=BB1_10 Depth=1
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	296(%rsp), %rax         # 8-byte Reload
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movl	268(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	movq	232(%rsp), %rbx         # 8-byte Reload
	movl	364(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB1_44
	.align	16, 0x90
.LBB1_50:                               # %fill
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	360(%rsp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	movl	280(%rsp), %r13d        # 4-byte Reload
	jne	.LBB1_51
# BB#56:                                # %sw.bb.265
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	320(%rsp), %rax         # 8-byte Reload
	subl	$-128, %eax
	movl	%eax, %ecx
	sarl	$8, %ecx
	movl	%ecx, %eax
	movl	268(%rsp), %edx         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovll	%eax, %r8d
	testl	%r8d, %r8d
	jle	.LBB1_57
# BB#59:                                # %if.then.277
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%eax, %eax
	cmovsl	%ecx, %edx
	movq	%rcx, %rbp
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	228(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	188(%rsp), %esi         # 4-byte Reload
	movl	192(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_55
	.align	16, 0x90
.LBB1_51:                               # %fill
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%eax, %eax
	jne	.LBB1_60
# BB#52:                                # %sw.bb.249
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%rbp, %rdx
	subl	$-128, %edx
	sarl	$8, %edx
	movl	%edx, %eax
	movl	268(%rsp), %esi         # 4-byte Reload
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB1_53
# BB#54:                                # %if.then.261
                                        #   in Loop: Header=BB1_10 Depth=1
	testl	%eax, %eax
	cmovsl	%edx, %esi
	movq	%rdx, %rbp
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	228(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	188(%rsp), %edx         # 4-byte Reload
	movl	192(%rsp), %r8d         # 4-byte Reload
.LBB1_55:                               # %sw.epilog.287
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	240(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	movl	%eax, %edx
	jmp	.LBB1_61
.LBB1_60:                               # %sw.default.282
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	%rbp, %rbx
	movl	%ebx, %ecx
	movl	284(%rsp), %esi         # 4-byte Reload
	subl	%esi, %ecx
	movq	320(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r8d
	subl	%r13d, %r8d
	movl	228(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	304(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	240(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %edx
	movl	164(%rsp), %r9d         # 4-byte Reload
	callq	*1368(%rdi)
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	%eax, 284(%rsp)         # 4-byte Spill
	movl	%ebp, %r13d
	movl	268(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
.LBB1_61:                               # %sw.epilog.287
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	288(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB1_62
.LBB1_57:                               #   in Loop: Header=BB1_10 Depth=1
	movq	%rcx, %rbp
	jmp	.LBB1_58
.LBB1_53:                               #   in Loop: Header=BB1_10 Depth=1
	movq	%rdx, %rbp
.LBB1_58:                               # %sw.epilog.287
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	288(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
.LBB1_62:                               # %sw.epilog.287
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	364(%rsp), %r8d         # 4-byte Reload
	testl	%edx, %edx
	js	.LBB1_65
# BB#63:                                # %if.end.291
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	%r13d, 280(%rsp)        # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	296(%rsp), %rdi         # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	%rax, 256(%rsp)         # 8-byte Spill
	js	.LBB1_64
.LBB1_44:                               # %set
                                        #   in Loop: Header=BB1_10 Depth=1
	movups	368(%rsp), %xmm0
	movups	384(%rsp), %xmm1
	movups	400(%rsp), %xmm2
	movdqu	416(%rsp), %xmm3
	movdqa	%xmm3, 480(%rsp)
	movaps	%xmm2, 464(%rsp)
	movaps	%xmm1, 448(%rsp)
	movaps	%xmm0, 432(%rsp)
	cmpq	312(%rsp), %rbx         # 8-byte Folded Reload
	movl	%ebp, %eax
	movl	%eax, 268(%rsp)         # 4-byte Spill
	movq	304(%rsp), %rax         # 8-byte Reload
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movq	%rdi, 304(%rsp)         # 8-byte Spill
	jb	.LBB1_10
	jmp	.LBB1_45
.LBB1_14:
	movl	268(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	movq	304(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB1_45
.LBB1_8:
	movl	%r12d, 360(%rsp)        # 4-byte Spill
	leaq	1152(%rsp), %rdi
	movl	284(%rsp), %r8d         # 4-byte Reload
	movl	280(%rsp), %r12d        # 4-byte Reload
	movq	%r13, %rbp
.LBB1_45:                               # %while.end
	movl	360(%rsp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB1_46
# BB#66:                                # %sw.bb.322
	subl	$-128, %r12d
	sarl	$8, %r12d
	movl	%r12d, %eax
	subl	%ebp, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovll	%eax, %r8d
	testl	%r8d, %r8d
	movq	256(%rsp), %rdx         # 8-byte Reload
	jle	.LBB1_70
# BB#67:                                # %if.then.336
	testl	%eax, %eax
	cmovsl	%r12d, %ebp
	movq	(%rdi), %rax
	movl	228(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	188(%rsp), %esi         # 4-byte Reload
	movl	%ebp, %edx
	movl	192(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_49
.LBB1_46:                               # %while.end
	testl	%eax, %eax
	jne	.LBB1_68
# BB#47:                                # %sw.bb.303
	subl	$-128, %r8d
	sarl	$8, %r8d
	movl	%r8d, %eax
	subl	%ebp, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	movq	256(%rsp), %rdx         # 8-byte Reload
	jle	.LBB1_70
# BB#48:                                # %if.then.317
	testl	%eax, %eax
	cmovsl	%r8d, %ebp
	movq	(%rdi), %rax
	movl	228(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%ebp, %esi
	movl	188(%rsp), %edx         # 4-byte Reload
	movl	192(%rsp), %r8d         # 4-byte Reload
.LBB1_49:                               # %sw.epilog.347
	movq	240(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	jmp	.LBB1_69
.LBB1_68:                               # %sw.default.341
	movl	284(%rsp), %esi         # 4-byte Reload
	subl	%esi, %r8d
	movl	280(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r12d
	movl	228(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	240(%rsp), %rdi         # 8-byte Reload
	movl	%r8d, %ecx
	movl	%r12d, %r8d
	movl	164(%rsp), %r9d         # 4-byte Reload
	callq	*1368(%rdi)
.LBB1_69:                               # %sw.epilog.347
	movl	%eax, %edx
.LBB1_70:                               # %sw.epilog.347
	testl	%edx, %edx
	movl	$1, %eax
	cmovsl	%edx, %eax
.LBB1_71:                               # %cleanup
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_64:
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	248(%rsp), %rdx         # 8-byte Reload
.LBB1_65:                               # %err
	movq	168(%rsp), %rax         # 8-byte Reload
	subq	%rcx, %rax
	subq	208(%rsp), %rax         # 8-byte Folded Reload
	movq	%rdx, %rsi
	cqto
	idivq	%rcx
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 1348(%rcx)
	movl	$0, 1352(%rcx)
	movl	%esi, %eax
	jmp	.LBB1_71
.Lfunc_end1:
	.size	image_render_color_DeviceN, .Lfunc_end1-image_render_color_DeviceN
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_2:
	.quad	2                       # 0x2
	.quad	2                       # 0x2
.LCPI2_3:
	.quad	896                     # 0x380
	.quad	960                     # 0x3c0
.LCPI2_4:
	.quad	768                     # 0x300
	.quad	832                     # 0x340
.LCPI2_5:
	.quad	640                     # 0x280
	.quad	704                     # 0x2c0
.LCPI2_6:
	.quad	512                     # 0x200
	.quad	576                     # 0x240
.LCPI2_7:
	.quad	384                     # 0x180
	.quad	448                     # 0x1c0
.LCPI2_8:
	.quad	256                     # 0x100
	.quad	320                     # 0x140
.LCPI2_9:
	.quad	128                     # 0x80
	.quad	192                     # 0xc0
	.text
	.align	16, 0x90
	.type	image_render_color_thresh,@function
image_render_color_thresh:              # @image_render_color_thresh
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
	subq	$1528, %rsp             # imm = 0x5F8
.Ltmp28:
	.cfi_def_cfa_offset 1584
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
	movq	%r9, %rbp
	movl	%edx, %r9d
	movq	%rdi, %r14
	movl	1264(%r14), %r12d
	movl	100(%rbp), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	$0, 236(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 208(%rsp)
	movzbl	579(%r14), %edi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %r15d
	testl	%r8d, %r8d
	je	.LBB2_9
# BB#1:                                 # %if.then
	movq	16(%r14), %rax
	movl	100(%rax), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movslq	%r9d, %rax
	addq	%rax, %rsi
	leaq	208(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	216(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 16(%rsp)
	leaq	236(%rsp), %r8
	leaq	224(%rsp), %r9
	movq	%r14, %rdi
	movl	%ecx, %edx
	movq	%rbp, %rcx
	callq	image_color_icc_prep
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_138
# BB#2:                                 # %if.end
	movl	%r12d, 164(%rsp)        # 4-byte Spill
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 24804(%r14)
	je	.LBB2_12
# BB#3:                                 # %if.end
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	jle	.LBB2_12
# BB#4:                                 # %for.body.lr.ph
	movslq	%r15d, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	206(%rsp), %rbx
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	testl	%r15d, %r15d
	jle	.LBB2_8
# BB#6:                                 # %for.body.17.lr.ph
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rbp
	imulq	152(%rsp), %rbp         # 8-byte Folded Reload
	addq	224(%rsp), %rbp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB2_7:                                # %for.body.17
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 206(%rsp)
	movq	1216(%r14), %rsi
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	callq	cmap_transfer_plane
	movzwl	206(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%rbp)
	incl	%r12d
	incq	%rbp
	cmpl	%r15d, %r12d
	jl	.LBB2_7
.LBB2_8:                                # %for.inc.30
                                        #   in Loop: Header=BB2_5 Depth=1
	incq	%r13
	xorl	%eax, %eax
	cmpl	168(%rsp), %r13d        # 4-byte Folded Reload
	jne	.LBB2_5
	jmp	.LBB2_12
.LBB2_9:                                # %if.else
	testl	%r12d, %r12d
	je	.LBB2_138
# BB#10:                                # %if.else
	movl	24504(%r14), %eax
	testl	%eax, %eax
	je	.LBB2_138
# BB#11:                                # %if.else.39
	movl	%r12d, 164(%rsp)        # 4-byte Spill
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movl	%eax, 24476(%r14)
	movl	$1, 24780(%r14)
	movl	$1, %eax
.LBB2_12:                               # %if.end.45
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movabsq	$4294967296, %r8        # imm = 0x100000000
	movabsq	$8589934592, %r11       # imm = 0x200000000
	movl	1152(%r14), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	cmpl	$0, 164(%rsp)           # 4-byte Folded Reload
	je	.LBB2_13
# BB#20:                                # %sw.default
	movl	1256(%r14), %r12d
	movl	1524(%r14), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$0, 140(%rsp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	subl	24488(%r14), %r13d
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	jle	.LBB2_26
# BB#21:                                # %for.body.121.lr.ph
	movq	1248(%r14), %rcx
	xorl	%ebp, %ebp
	movl	148(%rsp), %edx         # 4-byte Reload
	testb	$1, %dl
	je	.LBB2_23
# BB#22:                                # %for.body.121.prol
	movl	%ecx, %eax
	negl	%eax
	andl	$15, %eax
	movl	%eax, 240(%rsp)
	movl	$1, %ebp
.LBB2_23:                               # %for.body.121.lr.ph.split
	cmpl	$1, %edx
	je	.LBB2_26
# BB#24:                                # %for.body.121.lr.ph.split.split
	movl	148(%rsp), %edx         # 4-byte Reload
	subl	%ebp, %edx
	movq	%rbp, %rdi
	shlq	$32, %rdi
	movl	%r12d, %r10d
	imull	%ebp, %r10d
	leal	(%r12,%r12), %r9d
	leal	1(%rbp), %ebp
	imull	%r12d, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_25:                               # %for.body.121
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rbx), %eax
	addl	%ecx, %eax
	negl	%eax
	andl	$15, %eax
	movq	%rdi, %rsi
	sarq	$30, %rsi
	movl	%eax, 240(%rsp,%rsi)
	leal	(%rbp,%rbx), %eax
	addl	%ecx, %eax
	negl	%eax
	andl	$15, %eax
	leaq	(%rdi,%r8), %rsi
	sarq	$30, %rsi
	movl	%eax, 240(%rsp,%rsi)
	addq	%r11, %rdi
	addl	%r9d, %ebx
	addl	$-2, %edx
	jne	.LBB2_25
.LBB2_26:                               # %for.end.133
	movq	%r12, 152(%rsp)         # 8-byte Spill
	andl	$15, %r13d
	movl	1188(%r14), %eax
	movl	1192(%r14), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	subl	$-128, %edx
	sarl	$8, %edx
	movl	%edx, %ebx
	movl	%eax, %r12d
	negl	%r12d
	cmovll	%eax, %r12d
	subl	$-128, %r12d
	sarl	$8, %r12d
	movl	144(%rsp), %eax         # 4-byte Reload
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%r12d, %xmm1
	divss	%xmm1, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebp
	cmpl	$0, 24504(%r14)
	je	.LBB2_28
# BB#27:
	movl	%r13d, 136(%rsp)        # 4-byte Spill
	movl	%r12d, %ecx
	movl	%ebx, %r9d
	jmp	.LBB2_35
.LBB2_13:                               # %sw.bb
	movl	1256(%r14), %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	1516(%r14), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	24476(%r14), %ecx
	movl	24488(%r14), %r13d
	addl	%ecx, %r13d
	negl	%r13d
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	movq	%r11, %rax
	jle	.LBB2_19
# BB#14:                                # %for.body.54.lr.ph
	movq	%rax, %rsi
	movq	1248(%r14), %rdx
	xorl	%edi, %edi
	movl	148(%rsp), %ebp         # 4-byte Reload
	testb	$1, %bpl
	je	.LBB2_16
# BB#15:                                # %for.body.54.prol
	leal	(%rdx,%rcx), %eax
	negl	%eax
	andl	$15, %eax
	movl	%eax, 240(%rsp)
	movl	$1, %edi
.LBB2_16:                               # %for.body.54.lr.ph.split
	cmpl	$1, %ebp
	movq	%rsi, %r12
	je	.LBB2_19
# BB#17:                                # %for.body.54.lr.ph.split.split
	movl	148(%rsp), %esi         # 4-byte Reload
	subl	%edi, %esi
	movq	%rdi, %rax
	shlq	$32, %rax
	movq	152(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r10d
	imull	%edi, %r10d
	leal	(%rbx,%rbx), %r9d
	leal	1(%rdi), %r11d
	imull	%ebx, %r11d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_18:                               # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rbx), %ebp
	addl	%edx, %ebp
	addl	%ecx, %ebp
	negl	%ebp
	andl	$15, %ebp
	movq	%rax, %rdi
	sarq	$30, %rdi
	movl	%ebp, 240(%rsp,%rdi)
	leal	(%r11,%rbx), %edi
	addl	%edx, %edi
	addl	%ecx, %edi
	negl	%edi
	andl	$15, %edi
	leaq	(%rax,%r8), %rbp
	sarq	$30, %rbp
	movl	%edi, 240(%rsp,%rbp)
	addq	%r12, %rax
	addl	%r9d, %ebx
	addl	$-2, %esi
	jne	.LBB2_18
.LBB2_19:                               # %for.end.67
	andl	$15, %r13d
	movl	%r13d, 136(%rsp)        # 4-byte Spill
	movl	1452(%r14), %esi
	movl	1184(%r14), %eax
	movl	1196(%r14), %ecx
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movl	%eax, %edx
	sarl	$31, %edx
	subl	$-128, %ebx
	sarl	$8, %ebx
	andl	%eax, %edx
	addl	$127, %esi
	subl	1308(%r14), %esi
	addl	%edx, %esi
	movl	%esi, 140(%rsp)         # 4-byte Spill
	movl	%ecx, %r12d
	negl	%r12d
	cmovll	%ecx, %r12d
	subl	$-128, %r12d
	sarl	$8, %r12d
	movl	144(%rsp), %eax         # 4-byte Reload
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	%ebx, %xmm1
	divss	%xmm1, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI2_1(%rip), %xmm0
	callq	floor
	movq	%rbx, %rcx
	cvttsd2si	%xmm0, %ebp
	movl	%ecx, %r9d
	jmp	.LBB2_35
.LBB2_28:                               # %if.then.176
	movl	$1, 24780(%r14)
	movl	1520(%r14), %eax
	cmpl	$0, 24772(%r14)
	js	.LBB2_29
# BB#30:                                # %if.else.194
	movl	%r13d, 136(%rsp)        # 4-byte Spill
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %edx
	andl	$-16, %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	$16, %edx
	subl	%ecx, %edx
	negl	%ecx
	cmpl	$15, %edx
	cmovlel	%edx, %ecx
	jmp	.LBB2_31
.LBB2_29:                               # %if.then.182
	movl	%r13d, 136(%rsp)        # 4-byte Spill
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	leal	(%rdx,%rax), %ecx
	leal	-1(%rdx,%rax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	leal	-1(%rdx,%rcx), %ecx
	andl	$-16, %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$27, %ecx
	andl	$16, %ecx
	leal	1(%rcx,%rdx), %ecx
.LBB2_31:                               # %if.end.206
	movl	%ebx, %r9d
	movl	%eax, 24764(%r14)
	testl	$-17, %ecx
	je	.LBB2_32
# BB#33:                                # %if.else.216
	movl	%ecx, 24476(%r14)
	jmp	.LBB2_34
.LBB2_32:                               # %if.then.212
	movl	$0, 24780(%r14)
	movl	$0, 24476(%r14)
.LBB2_34:                               # %sw.epilog
	movl	%r12d, %ecx
.LBB2_35:                               # %sw.epilog
	movl	168(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB2_136
# BB#36:                                # %do.body.223
	xorl	%esi, %esi
	testl	%ecx, %ecx
	movl	$0, %ebx
	je	.LBB2_42
# BB#37:                                # %if.else.228
	movl	144(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	js	.LBB2_38
# BB#41:                                # %if.else.252
	cltd
	idivl	%ecx
	movl	%edx, %esi
	movl	%eax, %ebx
	jmp	.LBB2_42
.LBB2_38:                               # %if.then.231
	movl	%eax, %edi
	negl	%edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%edi, %eax
	divl	%ecx
	movl	%eax, %ebx
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.LBB2_39
# BB#40:                                # %if.then.243
	notl	%ebx
	movl	%ecx, %esi
	subl	%edx, %esi
	jmp	.LBB2_42
.LBB2_39:
	negl	%ebx
.LBB2_42:                               # %if.end.260
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movl	%r9d, 104(%rsp)         # 4-byte Spill
	movl	%r12d, 108(%rsp)        # 4-byte Spill
	movl	%ebx, %eax
	sarl	%eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	andl	$1, %eax
	cmovnel	%ecx, %eax
	addl	%esi, %eax
	shrl	%eax
	negl	%eax
	leal	-1(%rcx,%rax), %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	shrl	$31, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	jle	.LBB2_48
# BB#43:                                # %for.body.304.lr.ph
	movq	1248(%r14), %r8
	movq	%r8, 168(%rsp)          # 8-byte Spill
	movq	224(%rsp), %r9
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r13d
	shll	$6, %r13d
	movslq	%r15d, %r15
	movslq	%eax, %r11
	leaq	1008(%rsp), %rsi
	leaq	240(%rsp), %rdx
	leaq	496(%rsp), %rax
	xorl	%ebx, %ebx
	movl	148(%rsp), %ecx         # 4-byte Reload
	xorl	%r12d, %r12d
	movq	168(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB2_44:                               # %for.body.304
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdx), %rbp
	cmpl	$0, 164(%rsp)           # 4-byte Folded Reload
	je	.LBB2_45
# BB#46:                                # %if.else.318
                                        #   in Loop: Header=BB2_44 Depth=1
	leaq	(%rbp,%rdi), %rbp
	movslq	%ebx, %r10
	addq	%rbp, %r10
	jmp	.LBB2_47
	.align	16, 0x90
.LBB2_45:                               # %if.then.307
                                        #   in Loop: Header=BB2_44 Depth=1
	leaq	(%rbp,%r8), %r10
.LBB2_47:                               # %if.end.330
                                        #   in Loop: Header=BB2_44 Depth=1
	movq	%r10, (%rsi)
	movq	%r12, %rbp
	imulq	%r15, %rbp
	leaq	(%rbp,%r9), %rbp
	movq	%rbp, (%rax)
	incq	%r12
	addq	$8, %rsi
	addq	$4, %rdx
	addq	$8, %rax
	addq	%r11, %r8
	addl	%r13d, %ebx
	decl	%ecx
	jne	.LBB2_44
.LBB2_48:                               # %for.end.338
	movq	112(%rsp), %r8          # 8-byte Reload
	leal	-1(%r8), %r15d
	movl	100(%rsp), %ebp         # 4-byte Reload
	addl	92(%rsp), %ebp          # 4-byte Folded Reload
	movq	80(%rsp), %rbx          # 8-byte Reload
	addl	96(%rsp), %ebx          # 4-byte Folded Reload
	movl	148(%rsp), %eax         # 4-byte Reload
	cmpl	$4, %eax
	jne	.LBB2_49
# BB#104:                               # %sw.bb.603
	movl	164(%rsp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	movl	108(%rsp), %r12d        # 4-byte Reload
	movl	104(%rsp), %r9d         # 4-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	jne	.LBB2_105
# BB#120:                               # %sw.bb.813
	cmpl	$0, 24784(%r14)
	movslq	24768(%r14), %rax
	movl	72(%rsp), %r10d         # 4-byte Reload
	movl	68(%rsp), %edi          # 4-byte Reload
	je	.LBB2_124
# BB#121:                               # %if.then.817
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#122:                               # %for.cond.827.preheader.lr.ph
	movl	%r8d, %ecx
	shll	$6, %ecx
	leal	-64(%rax,%rcx), %eax
	cltq
	movl	%r8d, %ecx
	.align	16, 0x90
.LBB2_123:                              # %for.body.830
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	movq	496(%rsp), %rdx
	movb	(%rdx,%rbx), %dl
	movq	1008(%rsp), %rsi
	movb	%dl, (%rsi,%rax)
	movq	504(%rsp), %rdx
	movb	(%rdx,%rbx), %dl
	movq	1016(%rsp), %rsi
	movb	%dl, (%rsi,%rax)
	movq	512(%rsp), %rdx
	movb	(%rdx,%rbx), %dl
	movq	1024(%rsp), %rsi
	movb	%dl, (%rsi,%rax)
	movq	520(%rsp), %rdx
	movb	(%rdx,%rbx), %dl
	movq	1032(%rsp), %rsi
	movb	%dl, (%rsi,%rax)
	subl	%r10d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ebp, %edx
	shrl	$31, %ebp
	addl	%edi, %ebx
	addl	%ebp, %ebx
	addq	$-64, %rax
	decl	%ecx
	movl	%edx, %ebp
	jne	.LBB2_123
	jmp	.LBB2_135
.LBB2_49:                               # %for.end.338
	cmpl	$1, %eax
	movl	108(%rsp), %r12d        # 4-byte Reload
	movl	104(%rsp), %r9d         # 4-byte Reload
	movl	72(%rsp), %r11d         # 4-byte Reload
	movl	68(%rsp), %esi          # 4-byte Reload
	movabsq	$8589934592, %rcx       # imm = 0x200000000
	movl	76(%rsp), %edx          # 4-byte Reload
	jne	.LBB2_136
# BB#50:                                # %sw.bb.339
	movq	1008(%rsp), %rdi
	movl	164(%rsp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB2_51
# BB#75:                                # %sw.bb.451
	cmpl	$0, 24784(%r14)
	movslq	24768(%r14), %r10
	je	.LBB2_79
# BB#76:                                # %if.then.454
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#77:                                # %for.body.462.lr.ph
	movq	224(%rsp), %rax
	movl	%r8d, %ecx
	shll	$6, %ecx
	leal	-64(%r10,%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movl	%r8d, %ecx
	.align	16, 0x90
.LBB2_78:                               # %for.body.462
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	movb	(%rax,%rbx), %dl
	movb	%dl, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ebp, %edx
	shrl	$31, %ebp
	addl	%esi, %ebx
	addl	%ebp, %ebx
	addq	$-64, %rdi
	decl	%ecx
	movl	%edx, %ebp
	jne	.LBB2_78
	jmp	.LBB2_135
.LBB2_105:                              # %sw.bb.603
	testl	%eax, %eax
	movl	72(%rsp), %r10d         # 4-byte Reload
	movl	68(%rsp), %r11d         # 4-byte Reload
	jne	.LBB2_136
# BB#106:                               # %sw.bb.604
	cmpl	$0, 1180(%r14)
	jle	.LBB2_116
# BB#107:                               # %if.then.608
	movl	144(%rsp), %eax         # 4-byte Reload
	cmpl	%r9d, %eax
	jne	.LBB2_109
# BB#108:                               # %if.then.611
	movq	1008(%rsp), %rdi
	movq	496(%rsp), %rsi
	movslq	%r8d, %r15
	movq	%r15, %rdx
	movl	%r9d, %ebx
	callq	memcpy
	movq	1016(%rsp), %rdi
	movq	504(%rsp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	1024(%rsp), %rdi
	movq	512(%rsp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	1032(%rsp), %rdi
	movq	520(%rsp), %rsi
	movq	%r15, %rdx
	jmp	.LBB2_55
.LBB2_51:                               # %sw.bb.339
	testl	%eax, %eax
	jne	.LBB2_136
# BB#52:                                # %sw.bb.341
	cmpl	$0, 1180(%r14)
	jle	.LBB2_70
# BB#53:                                # %if.then.344
	movl	144(%rsp), %eax         # 4-byte Reload
	cmpl	%r9d, %eax
	jne	.LBB2_56
# BB#54:                                # %if.then.347
	movq	224(%rsp), %rsi
	movslq	%r8d, %rdx
	movl	%r9d, %ebx
.LBB2_55:                               # %flush
	callq	memcpy
	movl	%ebx, %r9d
	jmp	.LBB2_136
.LBB2_124:                              # %for.body.881
	addq	%rax, 1008(%rsp)
	addq	%rax, 1016(%rsp)
	addq	%rax, 1024(%rsp)
	addq	%rax, 1032(%rsp)
	cmpl	%r12d, 144(%rsp)        # 4-byte Folded Reload
	jne	.LBB2_128
# BB#125:                               # %for.cond.894.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#126:                               # %for.body.901.lr.ph.preheader
	movl	%r8d, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_127:                              # %for.body.901
                                        # =>This Inner Loop Header: Depth=1
	movq	496(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1008(%rsp), %rsi
	movb	%dl, (%rsi)
	addq	$64, 1008(%rsp)
	movq	504(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1016(%rsp), %rsi
	movb	%dl, (%rsi)
	addq	$64, 1016(%rsp)
	movq	512(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1024(%rsp), %rsi
	movb	%dl, (%rsi)
	addq	$64, 1024(%rsp)
	movq	520(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1032(%rsp), %rsi
	movb	%dl, (%rsi)
	addq	$64, 1032(%rsp)
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB2_127
	jmp	.LBB2_135
.LBB2_79:                               # %if.else.500
	cmpl	%r12d, 144(%rsp)        # 4-byte Folded Reload
	jne	.LBB2_94
# BB#80:                                # %for.cond.506.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#81:                                # %for.body.509.lr.ph
	movq	224(%rsp), %rbx
	leaq	1(%r15), %rsi
	addq	$-16, %rcx
	xorl	%eax, %eax
	andq	%rsi, %rcx
	je	.LBB2_87
# BB#82:                                # %vector.memcheck
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	(%rdi,%r10), %rcx
	leaq	(%rbx,%r15), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	ja	.LBB2_84
# BB#83:                                # %vector.memcheck
	movq	%r15, %rcx
	shlq	$6, %rcx
	addq	%r10, %rcx
	leaq	(%rcx,%rdi), %rcx
	cmpq	%rcx, %rbx
	jbe	.LBB2_87
.LBB2_84:                               # %vector.body.preheader
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%r10, %r11
	movq	56(%rsp), %rax          # 8-byte Reload
	shlq	$6, %rax
	addq	%rax, %r10
	movq	%r10, 48(%rsp)          # 8-byte Spill
	incq	%r15
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	andq	%r15, %rcx
	movl	$64, %eax
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	.LCPI2_3(%rip), %xmm8   # xmm8 = [896,960]
	movdqa	.LCPI2_4(%rip), %xmm9   # xmm9 = [768,832]
	movdqa	.LCPI2_5(%rip), %xmm10  # xmm10 = [640,704]
	movdqa	.LCPI2_6(%rip), %xmm11  # xmm11 = [512,576]
	movdqa	.LCPI2_7(%rip), %xmm12  # xmm12 = [384,448]
	movdqa	.LCPI2_8(%rip), %xmm13  # xmm13 = [256,320]
	movdqa	.LCPI2_9(%rip), %xmm14  # xmm14 = [128,192]
	movq	%rbx, %r10
	movq	%rbx, 40(%rsp)          # 8-byte Spill
.LBB2_85:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movups	(%r10), %xmm1
	movaps	%xmm1, 176(%rsp)
	movb	191(%rsp), %al
	movb	%al, 168(%rsp)          # 1-byte Spill
	movb	190(%rsp), %al
	movb	%al, 164(%rsp)          # 1-byte Spill
	movb	189(%rsp), %al
	movb	%al, 148(%rsp)          # 1-byte Spill
	movb	188(%rsp), %al
	movb	%al, 144(%rsp)          # 1-byte Spill
	movb	187(%rsp), %al
	movb	%al, 100(%rsp)          # 1-byte Spill
	movb	186(%rsp), %al
	movb	%al, 96(%rsp)           # 1-byte Spill
	movb	185(%rsp), %al
	movb	%al, 92(%rsp)           # 1-byte Spill
	movb	184(%rsp), %al
	movb	%al, 76(%rsp)           # 1-byte Spill
	movb	183(%rsp), %al
	movb	%al, 72(%rsp)           # 1-byte Spill
	movb	182(%rsp), %al
	movb	%al, 68(%rsp)           # 1-byte Spill
	movb	181(%rsp), %al
	movb	%al, 67(%rsp)           # 1-byte Spill
	movb	180(%rsp), %al
	movb	%al, 66(%rsp)           # 1-byte Spill
	movb	179(%rsp), %cl
	movb	178(%rsp), %sil
	movb	177(%rsp), %r12b
	movb	176(%rsp), %r15b
	movb	%r15b, (%rdi,%r11)
	movd	%r11, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movdqa	%xmm1, %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm4
	movdqa	%xmm1, %xmm5
	movdqa	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdx
	movdqa	%xmm1, %xmm2
	paddq	%xmm14, %xmm1
	movd	%xmm1, %rax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rbx
	paddq	%xmm13, %xmm2
	movd	%xmm2, %rbp
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	movd	%xmm1, %r15
	paddq	%xmm12, %xmm7
	movd	%xmm7, %r13
	pshufd	$78, %xmm7, %xmm1       # xmm1 = xmm7[2,3,0,1]
	movd	%xmm1, %r9
	movb	%r12b, (%rdi,%rdx)
	paddq	%xmm11, %xmm6
	movd	%xmm6, %r12
	pshufd	$78, %xmm6, %xmm1       # xmm1 = xmm6[2,3,0,1]
	movd	%xmm1, %r8
	movb	%sil, (%rdi,%rax)
	movb	%cl, (%rdi,%rbx)
	paddq	%xmm10, %xmm5
	movd	%xmm5, %rax
	pshufd	$78, %xmm5, %xmm1       # xmm1 = xmm5[2,3,0,1]
	movd	%xmm1, %rcx
	movb	66(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%rbp)
	paddq	%xmm9, %xmm4
	movd	%xmm4, %rsi
	pshufd	$78, %xmm4, %xmm1       # xmm1 = xmm4[2,3,0,1]
	movd	%xmm1, %rbx
	movb	67(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%r15)
	paddq	%xmm8, %xmm3
	movd	%xmm3, %r15
	pshufd	$78, %xmm3, %xmm1       # xmm1 = xmm3[2,3,0,1]
	movd	%xmm1, %rbp
	movb	68(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%r13)
	movb	72(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%r9)
	movb	76(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%r12)
	movb	92(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%r8)
	movb	96(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%rax)
	movb	100(%rsp), %al          # 1-byte Reload
	movb	%al, (%rdi,%rcx)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	144(%rsp), %al          # 1-byte Reload
	movb	%al, (%rdi,%rsi)
	movb	148(%rsp), %al          # 1-byte Reload
	movb	%al, (%rdi,%rbx)
	movb	164(%rsp), %al          # 1-byte Reload
	movb	%al, (%rdi,%r15)
	movb	168(%rsp), %al          # 1-byte Reload
	movb	%al, (%rdi,%rbp)
	addq	$16, %r10
	addq	$1024, %r11             # imm = 0x400
	addq	$-16, %rcx
	jne	.LBB2_85
# BB#86:
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	108(%rsp), %r12d        # 4-byte Reload
	movl	104(%rsp), %r9d         # 4-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
.LBB2_87:                               # %middle.block
	cmpq	%rax, %rsi
	je	.LBB2_135
# BB#88:                                # %for.body.509.preheader
	leal	1(%r8), %esi
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%esi, %ebp
	subl	%ecx, %ebp
	movl	%r8d, %edx
	subl	%ecx, %edx
	testb	$3, %bpl
	je	.LBB2_91
# BB#89:                                # %for.body.509.prol.preheader
	leal	1(%rax), %ecx
	subl	%ecx, %esi
	andl	$3, %esi
	negl	%esi
.LBB2_90:                               # %for.body.509.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx,%rax), %cl
	movb	%cl, (%rdi,%r10)
	incq	%rax
	addq	$64, %r10
	incl	%esi
	jne	.LBB2_90
.LBB2_91:                               # %for.body.509.preheader.split
	cmpl	$3, %edx
	jb	.LBB2_135
# BB#92:                                # %for.body.509.preheader.split.split
	leaq	192(%r10,%rdi), %rcx
	subl	%eax, %r8d
	leaq	3(%rax,%rbx), %rax
.LBB2_93:                               # %for.body.509
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rax), %dl
	movb	%dl, -192(%rcx)
	movb	-2(%rax), %dl
	movb	%dl, -128(%rcx)
	movb	-1(%rax), %dl
	movb	%dl, -64(%rcx)
	movb	(%rax), %dl
	movb	%dl, (%rcx)
	addq	$256, %rcx              # imm = 0x100
	addq	$4, %rax
	addl	$-4, %r8d
	jne	.LBB2_93
	jmp	.LBB2_135
.LBB2_116:                              # %if.else.733
	movslq	%r15d, %rax
	movq	1008(%rsp), %rdi
	addq	%rax, %rdi
	movq	%rdi, 1008(%rsp)
	addq	%rax, 1016(%rsp)
	addq	%rax, 1024(%rsp)
	addq	%rax, 1032(%rsp)
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#117:                               # %for.body.753.lr.ph
	movl	%r8d, %eax
	jmp	.LBB2_118
.LBB2_119:                              # %for.body.753.for.body.753_crit_edge
                                        #   in Loop: Header=BB2_118 Depth=1
	subl	%r10d, %ebp
	addl	%r11d, %ebx
	movl	%ebp, %ecx
	sarl	$31, %ecx
	movl	%ebp, %edx
	shrl	$31, %edx
	addl	%edx, %ebx
	andl	%r8d, %ecx
	addl	%ecx, %ebp
	movq	1008(%rsp), %rdi
.LBB2_118:                              # %for.body.753
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rdx
	movq	496(%rsp), %rsi
	movb	(%rsi,%rdx), %cl
	leaq	-1(%rdi), %rsi
	movq	%rsi, 1008(%rsp)
	movb	%cl, (%rdi)
	movq	504(%rsp), %rcx
	movb	(%rcx,%rdx), %cl
	movq	1016(%rsp), %rsi
	leaq	-1(%rsi), %rdi
	movq	%rdi, 1016(%rsp)
	movb	%cl, (%rsi)
	movq	512(%rsp), %rcx
	movb	(%rcx,%rdx), %cl
	movq	1024(%rsp), %rsi
	leaq	-1(%rsi), %rdi
	movq	%rdi, 1024(%rsp)
	movb	%cl, (%rsi)
	movq	520(%rsp), %rcx
	movb	(%rcx,%rdx), %cl
	movq	1032(%rsp), %rdx
	leaq	-1(%rdx), %rsi
	movq	%rsi, 1032(%rsp)
	movb	%cl, (%rdx)
	decl	%eax
	jne	.LBB2_119
	jmp	.LBB2_136
.LBB2_128:                              # %if.else.917
	cmpl	$128, %ecx
	jne	.LBB2_129
# BB#132:                               # %for.cond.922.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#133:                               # %for.body.932.lr.ph.preheader
	xorl	%eax, %eax
.LBB2_134:                              # %for.body.932
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movq	496(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1008(%rsp), %rsi
	movb	%dl, 64(%rsi)
	movq	1008(%rsp), %rsi
	movb	%dl, (%rsi)
	subq	$-128, 1008(%rsp)
	movq	504(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1016(%rsp), %rsi
	movb	%dl, 64(%rsi)
	movq	1016(%rsp), %rsi
	movb	%dl, (%rsi)
	subq	$-128, 1016(%rsp)
	movq	512(%rsp), %rdx
	movb	(%rdx,%rcx), %dl
	movq	1024(%rsp), %rsi
	movb	%dl, 64(%rsi)
	movq	1024(%rsp), %rsi
	movb	%dl, (%rsi)
	subq	$-128, 1024(%rsp)
	movq	520(%rsp), %rdx
	movb	(%rdx,%rcx), %cl
	movq	1032(%rsp), %rdx
	movb	%cl, 64(%rdx)
	movq	1032(%rsp), %rdx
	movb	%cl, (%rdx)
	subq	$-128, 1032(%rsp)
	addl	$2, %eax
	cmpl	%r8d, %eax
	jl	.LBB2_134
	jmp	.LBB2_135
.LBB2_109:                              # %if.else.628
	addl	%eax, %eax
	cmpl	%r9d, %eax
	jne	.LBB2_110
# BB#113:                               # %for.cond.633.preheader
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#114:                               # %for.body.636.lr.ph
	xorl	%eax, %eax
	movq	1008(%rsp), %rcx
	movdqa	.LCPI2_2(%rip), %xmm0   # xmm0 = [2,2]
.LBB2_115:                              # %for.body.636
                                        # =>This Inner Loop Header: Depth=1
	movq	496(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 496(%rsp)
	movb	(%rdx), %dl
	movb	%dl, 1(%rcx)
	movq	1008(%rsp), %rcx
	movb	%dl, (%rcx)
	movq	504(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 504(%rsp)
	movb	(%rcx), %cl
	movq	1016(%rsp), %rdx
	movb	%cl, 1(%rdx)
	movq	1016(%rsp), %rdx
	movb	%cl, (%rdx)
	movq	512(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 512(%rsp)
	movb	(%rcx), %cl
	movq	1024(%rsp), %rdx
	movb	%cl, 1(%rdx)
	movq	1024(%rsp), %rdx
	movb	%cl, (%rdx)
	movq	520(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 520(%rsp)
	movb	(%rcx), %cl
	movq	1032(%rsp), %rdx
	movb	%cl, 1(%rdx)
	movq	1032(%rsp), %rdx
	movb	%cl, (%rdx)
	movdqa	1008(%rsp), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	%xmm1, 1008(%rsp)
	movdqa	1024(%rsp), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm2, 1024(%rsp)
	addl	$2, %eax
	movd	%xmm1, %rcx
	cmpl	%r8d, %eax
	jl	.LBB2_115
	jmp	.LBB2_136
.LBB2_70:                               # %if.else.407
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#71:                                # %for.body.414.lr.ph
	movslq	%r15d, %rax
	addq	%rax, %rdi
	xorl	%ecx, %ecx
	testb	$1, %r8b
	je	.LBB2_73
# BB#72:                                # %for.body.414.prol
	movslq	%ebx, %rax
	movq	224(%rsp), %rcx
	movb	(%rcx,%rax), %al
	movb	%al, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%ebp, %eax
	shrl	$31, %ebp
	addl	%esi, %ebx
	addl	%ebp, %ebx
	decq	%rdi
	movl	$1, %ecx
	movl	%eax, %ebp
.LBB2_73:                               # %for.body.414.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB2_136
.LBB2_74:                               # %for.body.414
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	movq	224(%rsp), %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ebp, %edx
	shrl	$31, %ebp
	addl	%esi, %eax
	addl	%ebp, %eax
	movslq	%eax, %rbx
	movq	224(%rsp), %rax
	movb	(%rax,%rbx), %al
	movb	%al, -1(%rdi)
	subl	%r11d, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%edx, %eax
	movl	%eax, %ebp
	shrl	$31, %edx
	addl	%esi, %ebx
	addl	%edx, %ebx
	addl	$2, %ecx
	addq	$-2, %rdi
	cmpl	%ecx, %r8d
	jne	.LBB2_74
	jmp	.LBB2_136
.LBB2_94:                               # %if.else.518
	cmpl	$128, %edx
	jne	.LBB2_95
# BB#98:                                # %for.cond.523.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#99:                                # %for.body.526.lr.ph
	movq	224(%rsp), %rax
	movl	%r15d, %edx
	shrl	%edx
	xorl	%ecx, %ecx
	btl	$1, %r15d
	jb	.LBB2_101
# BB#100:                               # %for.body.526.prol
	movb	(%rax), %cl
	movb	%cl, 64(%rdi,%r10)
	movb	%cl, (%rdi,%r10)
	subq	$-128, %r10
	movl	$2, %ecx
.LBB2_101:                              # %for.body.526.lr.ph.split
	testl	%edx, %edx
	je	.LBB2_135
# BB#102:                               # %for.body.526.lr.ph.split.split
	leaq	192(%r10,%rdi), %rdx
.LBB2_103:                              # %for.body.526
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	sarl	%esi
	movslq	%esi, %rsi
	movb	(%rax,%rsi), %bl
	movb	%bl, -128(%rdx)
	movb	%bl, -192(%rdx)
	leal	2(%rcx), %esi
	sarl	%esi
	movslq	%esi, %rsi
	movb	(%rax,%rsi), %bl
	movb	%bl, (%rdx)
	movb	%bl, -64(%rdx)
	addq	$256, %rdx              # imm = 0x100
	addl	$4, %ecx
	cmpl	%r8d, %ecx
	jl	.LBB2_103
	jmp	.LBB2_135
.LBB2_129:                              # %for.cond.952.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#130:
	movl	%r8d, %eax
.LBB2_131:                              # %for.body.959
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	movq	496(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1008(%rsp), %rdx
	movb	%cl, (%rdx)
	addq	$64, 1008(%rsp)
	movq	504(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1016(%rsp), %rdx
	movb	%cl, (%rdx)
	addq	$64, 1016(%rsp)
	movq	512(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1024(%rsp), %rdx
	movb	%cl, (%rdx)
	addq	$64, 1024(%rsp)
	movq	520(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1032(%rsp), %rdx
	movb	%cl, (%rdx)
	addq	$64, 1032(%rsp)
	subl	%r10d, %ebp
	movl	%ebp, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ebp, %ecx
	shrl	$31, %ebp
	addl	%edi, %ebx
	addl	%ebp, %ebx
	decl	%eax
	movl	%ecx, %ebp
	jne	.LBB2_131
	jmp	.LBB2_135
.LBB2_56:                               # %if.else.350
	addl	%eax, %eax
	cmpl	%r9d, %eax
	jne	.LBB2_57
# BB#62:                                # %if.then.354
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#63:                                # %for.body.358.lr.ph
	movq	224(%rsp), %rax
	movl	%r15d, %edx
	shrl	%edx
	incl	%edx
	xorl	%ecx, %ecx
	testb	$3, %dl
	je	.LBB2_67
# BB#64:                                # %for.body.358.prol.preheader
	andl	$3, %edx
	negl	%edx
	xorl	%ecx, %ecx
.LBB2_65:                               # %for.body.358.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rsi
	movb	(%rax), %cl
	movb	%cl, 1(%rdi,%rsi)
	movb	%cl, (%rdi,%rsi)
	incq	%rax
	leaq	2(%rsi), %rcx
	incl	%edx
	jne	.LBB2_65
# BB#66:
	leaq	2(%rdi,%rsi), %rdi
.LBB2_67:                               # %for.body.358.lr.ph.split
	cmpl	$6, %r15d
	jb	.LBB2_136
# BB#68:                                # %for.body.358.lr.ph.split.split
	addq	$7, %rdi
.LBB2_69:                               # %for.body.358
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %dl
	movb	%dl, -6(%rdi)
	movb	%dl, -7(%rdi)
	movb	1(%rax), %dl
	movb	%dl, -4(%rdi)
	movb	%dl, -5(%rdi)
	movb	2(%rax), %dl
	movb	%dl, -2(%rdi)
	movb	%dl, -3(%rdi)
	movb	3(%rax), %dl
	movb	%dl, (%rdi)
	movb	%dl, -1(%rdi)
	addl	$8, %ecx
	addq	$8, %rdi
	addq	$4, %rax
	cmpl	%r8d, %ecx
	jl	.LBB2_69
	jmp	.LBB2_136
.LBB2_110:                              # %for.cond.669.preheader
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#111:
	movl	%r8d, %eax
.LBB2_112:                              # %for.body.672
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	movq	496(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1008(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 1008(%rsp)
	movb	%cl, (%rdx)
	movq	504(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1016(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 1016(%rsp)
	movb	%cl, (%rdx)
	movq	512(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1024(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 1024(%rsp)
	movb	%cl, (%rdx)
	movq	520(%rsp), %rcx
	movb	(%rcx,%rbx), %cl
	movq	1032(%rsp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 1032(%rsp)
	movb	%cl, (%rdx)
	subl	%r10d, %ebp
	movl	%ebp, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ebp, %ecx
	shrl	$31, %ebp
	addl	%r11d, %ebx
	addl	%ebp, %ebx
	decl	%eax
	movl	%ecx, %ebp
	jne	.LBB2_112
	jmp	.LBB2_136
.LBB2_95:                               # %for.cond.542.preheader
	testl	%r8d, %r8d
	jle	.LBB2_135
# BB#96:                                # %for.body.545.lr.ph
	movq	224(%rsp), %rax
	addq	%r10, %rdi
	movl	%r8d, %ecx
.LBB2_97:                               # %for.body.545
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rbx
	movb	(%rax,%rbx), %dl
	movb	%dl, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ebp, %edx
	shrl	$31, %ebp
	addl	%esi, %ebx
	addl	%ebp, %ebx
	addq	$64, %rdi
	decl	%ecx
	movl	%edx, %ebp
	jne	.LBB2_97
.LBB2_135:                              # %if.end.1006
	movq	120(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, 24504(%r14)
	movslq	24768(%r14), %rax
	movl	%ecx, 24508(%r14,%rax,4)
	movl	24772(%r14), %eax
	addl	%eax, 24768(%r14)
	incl	24776(%r14)
.LBB2_136:                              # %flush
	movl	136(%rsp), %r8d         # 4-byte Reload
	addq	24488(%r14), %r8
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	140(%rsp), %esi         # 4-byte Reload
	movl	%r9d, %edx
	movl	%r12d, %ecx
	movq	128(%rsp), %r9          # 8-byte Reload
	callq	gxht_thresh_planes
	movl	%eax, %ebx
	movq	216(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_138
# BB#137:                               # %if.then.1034
	movq	1216(%r14), %rax
	movq	8(%rax), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB2_138:                              # %cleanup
	movl	%ebx, %eax
	addq	$1528, %rsp             # imm = 0x5F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_57:                               # %for.cond.366.preheader
	testl	%r8d, %r8d
	jle	.LBB2_136
# BB#58:                                # %for.body.369.preheader
	xorl	%ecx, %ecx
	testb	$1, %r8b
	je	.LBB2_60
# BB#59:                                # %for.body.369.prol
	movslq	%ebx, %rax
	movq	224(%rsp), %rcx
	movb	(%rcx,%rax), %al
	movb	%al, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%ebp, %eax
	shrl	$31, %ebp
	addl	%esi, %ebx
	addl	%ebp, %ebx
	incq	%rdi
	movl	$1, %ecx
	movl	%eax, %ebp
.LBB2_60:                               # %for.body.369.preheader.split
	cmpl	$1, %r8d
	je	.LBB2_136
.LBB2_61:                               # %for.body.369
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	movq	224(%rsp), %rdx
	movb	(%rdx,%rax), %dl
	movb	%dl, (%rdi)
	subl	%r11d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ebp, %edx
	shrl	$31, %ebp
	addl	%esi, %eax
	addl	%ebp, %eax
	movslq	%eax, %rbx
	movq	224(%rsp), %rax
	movb	(%rax,%rbx), %al
	movb	%al, 1(%rdi)
	subl	%r11d, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%r8d, %eax
	addl	%edx, %eax
	movl	%eax, %ebp
	shrl	$31, %edx
	addl	%esi, %ebx
	addl	%edx, %ebx
	addl	$2, %ecx
	addq	$2, %rdi
	cmpl	%ecx, %r8d
	jne	.LBB2_61
	jmp	.LBB2_136
.Lfunc_end2:
	.size	image_render_color_thresh, .Lfunc_end2-image_render_color_thresh
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.zero	16,1
	.text
	.align	16, 0x90
	.type	image_render_color_icc,@function
image_render_color_icc:                 # @image_render_color_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$1912, %rsp             # imm = 0x778
.Ltmp41:
	.cfi_def_cfa_offset 1968
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	1216(%rbx), %r14
	movl	1304(%rbx), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	1264(%rbx), %eax
	movzbl	579(%rbx), %esi
	movq	$0, 456(%rsp)
	movq	$0, 448(%rsp)
	movq	$0, 440(%rsp)
	movl	$0, 300(%rsp)
	movl	24800(%rbx), %edi
	movl	%edi, 164(%rsp)         # 4-byte Spill
	movl	24804(%rbx), %edi
	movl	%edi, 160(%rsp)         # 4-byte Spill
	movq	$gx_dc_type_data_none, 1256(%rsp)
	movq	$gx_dc_type_data_none, 600(%rsp)
	xorl	%ebp, %ebp
	testl	%r8d, %r8d
	je	.LBB3_50
# BB#1:                                 # %if.end
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	imulq	%rsi, %rax
	addq	%rax, %r13
	leaq	456(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	440(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	300(%rsp), %r8
	leaq	448(%rsp), %r9
	movq	%rbx, %rdi
	movq	%rsi, %r12
	movq	%r13, %rsi
	movl	%ecx, %edx
	movq	%r15, %rcx
	callq	image_color_icc_prep
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_50
# BB#2:                                 # %if.end.14
	movl	%ebp, 204(%rsp)         # 4-byte Spill
	movq	%r15, 176(%rsp)         # 8-byte Spill
	movq	%r14, 136(%rsp)         # 8-byte Spill
	leaq	(%r13,%r12), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	%r13, 152(%rsp)         # 8-byte Spill
	leaq	304(%rsp), %rdi
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movl	1452(%rbx), %r15d
	movl	1456(%rbx), %eax
	movl	%eax, 296(%rsp)         # 4-byte Spill
	movl	1460(%rbx), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movl	1464(%rbx), %eax
	movl	%eax, 260(%rsp)         # 4-byte Spill
	movl	1468(%rbx), %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movl	1472(%rbx), %r12d
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movl	1476(%rbx), %r14d
	movl	1480(%rbx), %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	1484(%rbx), %eax
	movl	%eax, 244(%rsp)         # 4-byte Spill
	movl	1488(%rbx), %eax
	movl	%eax, 240(%rsp)         # 4-byte Spill
	movl	1372(%rbx), %eax
	movl	1392(%rbx), %ecx
	subl	1356(%rbx), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	subl	1360(%rbx), %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	leaq	1512(%rbx), %rax
	leaq	1516(%rbx), %rcx
	leaq	1520(%rbx), %rdx
	cmpl	$0, 220(%rsp)           # 4-byte Folded Reload
	cmoveq	%rax, %rdx
	leaq	1524(%rbx), %rax
	cmoveq	%rcx, %rax
	movl	%r12d, %ecx
	cmovel	%r15d, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	movl	%ecx, 188(%rsp)         # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	(%rdx), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	528(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	leaq	464(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	%r12d, %edi
	movl	%r15d, %ecx
	movq	448(%rsp), %rsi
	movb	(%rsi), %al
	notb	%al
	movb	%al, 528(%rsp)
	movslq	300(%rsp), %r8
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movl	160(%rsp), %eax         # 4-byte Reload
	orl	164(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 132(%rsp)         # 4-byte Spill
	leaq	-16(%r8), %rax
	shrq	$4, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r8, %rdx
	andq	$-16, %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	600(%rsp), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	1256(%rsp), %rax
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	%edi, 96(%rsp)          # 4-byte Spill
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_36:                               # %if.end.193
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%r9d, 204(%rsp)         # 4-byte Spill
	movups	464(%rsp), %xmm0
	movups	480(%rsp), %xmm1
	movups	496(%rsp), %xmm2
	movups	512(%rsp), %xmm3
	movaps	%xmm3, 576(%rsp)
	movaps	%xmm2, 560(%rsp)
	movaps	%xmm1, 544(%rsp)
	movaps	%xmm0, 528(%rsp)
	movq	448(%rsp), %rsi
	movq	%r13, %rax
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r15, 152(%rsp)         # 8-byte Spill
	movl	%ebp, %edx
	movl	%edx, 188(%rsp)         # 4-byte Spill
.LBB3_3:                                # %while.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #     Child Loop BB3_17 Depth 2
                                        #     Child Loop BB3_20 Depth 2
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	456(%rsp), %rdx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movl	220(%rsp), %r10d        # 4-byte Reload
	.align	16, 0x90
.LBB3_4:                                # %while.cond
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r9d
	movl	%edi, %ebp
	cmpq	%rdx, %rsi
	jae	.LBB3_37
# BB#5:                                 # %do.body.42
                                        #   in Loop: Header=BB3_4 Depth=2
	movl	296(%rsp), %r12d        # 4-byte Reload
	subl	260(%rsp), %r12d        # 4-byte Folded Reload
	movl	%r12d, 296(%rsp)        # 4-byte Spill
	movl	%r12d, %r13d
	sarl	$31, %r13d
	shrl	$31, %r12d
	andl	256(%rsp), %r13d        # 4-byte Folded Reload
	movq	264(%rsp), %rax         # 8-byte Reload
	leal	(%r9,%rax), %ecx
	subl	244(%rsp), %r14d        # 4-byte Folded Reload
	movl	%r14d, %ebx
	sarl	$31, %ebx
	movl	%r14d, %r15d
	shrl	$31, %r15d
	andl	240(%rsp), %ebx         # 4-byte Folded Reload
	movq	248(%rsp), %rax         # 8-byte Reload
	leal	(%rbp,%rax), %edi
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 580(%rax)
	je	.LBB3_7
# BB#6:                                 #   in Loop: Header=BB3_4 Depth=2
	movq	%rbp, 280(%rsp)         # 8-byte Spill
	movq	%r9, 288(%rsp)          # 8-byte Spill
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_7:                                # %if.else
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	%rbp, 280(%rsp)         # 8-byte Spill
	movq	%r9, 288(%rsp)          # 8-byte Spill
	movl	%r14d, 232(%rsp)        # 4-byte Spill
	movl	%edi, 236(%rsp)         # 4-byte Spill
	leaq	464(%rsp), %rdi
	movq	%r8, %rdx
	movl	%ecx, %ebp
	movq	%r8, %r14
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	callq	memcpy
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %r8
	movl	236(%rsp), %edi         # 4-byte Reload
	movl	%ebp, %ecx
	movl	220(%rsp), %r10d        # 4-byte Reload
	movl	232(%rsp), %r14d        # 4-byte Reload
	addq	%r8, %rsi
	movq	%rsi, 448(%rsp)
.LBB3_8:                                # %if.end.113
                                        #   in Loop: Header=BB3_4 Depth=2
	addl	%r13d, 296(%rsp)        # 4-byte Folded Spill
	addl	%r12d, %ecx
	addl	%ebx, %r14d
	addl	%r15d, %edi
	cmpl	$2, %r10d
	je	.LBB3_10
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=2
	movl	464(%rsp), %eax
	cmpl	528(%rsp), %eax
	je	.LBB3_4
.LBB3_10:                               # %for.cond.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%ecx, 232(%rsp)         # 4-byte Spill
	testl	%r8d, %r8d
	jle	.LBB3_21
# BB#11:                                # %for.body.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	testl	%r8d, %r8d
	movl	$0, %eax
	je	.LBB3_20
# BB#12:                                # %overflow.checked
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	88(%rsp), %r9           # 8-byte Reload
	testq	%r9, %r9
	movl	$0, %eax
	pxor	%xmm2, %xmm2
	movdqa	.LCPI3_0(%rip), %xmm3   # xmm3 = [257,257,257,257,257,257,257,257]
	je	.LBB3_19
# BB#13:                                # %vector.body.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB3_15
# BB#14:                                # %vector.body.prol
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	464(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	472(%rsp), %xmm1        # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, 304(%rsp)
	movdqa	%xmm1, 320(%rsp)
	movl	$16, %edx
.LBB3_15:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movq	%r9, %rax
	je	.LBB3_19
# BB#16:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r9, %rax
	subq	%rdx, %rax
	leaq	488(%rsp), %rcx
	leaq	(%rcx,%rdx), %rcx
	leaq	352(%rsp), %rbx
	leaq	(%rbx,%rdx,2), %rdx
	.align	16, 0x90
.LBB3_17:                               # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rcx), %xmm1        # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, -48(%rdx)
	movdqa	%xmm1, -32(%rdx)
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	pmullw	%xmm3, %xmm0
	pmullw	%xmm3, %xmm1
	movdqa	%xmm0, -16(%rdx)
	movdqa	%xmm1, (%rdx)
	addq	$32, %rcx
	addq	$64, %rdx
	addq	$-32, %rax
	jne	.LBB3_17
# BB#18:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%r9, %rax
.LBB3_19:                               # %middle.block
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	%rax, %r8
	je	.LBB3_21
	.align	16, 0x90
.LBB3_20:                               # %for.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	464(%rsp,%rax), %ecx
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 304(%rsp,%rax,2)
	incq	%rax
	cmpq	%r8, %rax
	jl	.LBB3_20
.LBB3_21:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%edi, 236(%rsp)         # 4-byte Spill
	movl	%r10d, %ebx
	cmpl	$0, 132(%rsp)           # 4-byte Folded Reload
	movq	168(%rsp), %r13         # 8-byte Reload
	je	.LBB3_23
# BB#22:                                # %if.then.140
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$1, (%rsp)
	leaq	304(%rsp), %rdi
	movq	%r13, %rsi
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	movl	160(%rsp), %r8d         # 4-byte Reload
	movl	164(%rsp), %r9d         # 4-byte Reload
	callq	cmap_transfer_halftone
	movq	152(%rsp), %r15         # 8-byte Reload
	movq	192(%rsp), %r12         # 8-byte Reload
	jmp	.LBB3_25
	.align	16, 0x90
.LBB3_23:                               # %if.else.142
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	176(%rsp), %rdi         # 8-byte Reload
	leaq	304(%rsp), %rsi
	callq	*1552(%rdi)
	cmpq	$-1, %rax
	movq	152(%rsp), %r15         # 8-byte Reload
	movq	192(%rsp), %r12         # 8-byte Reload
	je	.LBB3_25
# BB#24:                                # %if.then.147
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%rax, 8(%r13)
	movq	$gx_dc_type_data_pure, (%r13)
.LBB3_25:                               # %if.end.150
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%ebx, %edx
	cmpl	$1, %edx
	movl	204(%rsp), %r9d         # 4-byte Reload
	movl	188(%rsp), %esi         # 4-byte Reload
	movq	288(%rsp), %rbp         # 8-byte Reload
	movq	280(%rsp), %rbx         # 8-byte Reload
	jne	.LBB3_26
# BB#31:                                # %sw.bb.167
                                        #   in Loop: Header=BB3_3 Depth=1
	subl	$-128, %ebx
	movl	%ebx, %ecx
	sarl	$8, %ecx
	movl	%ecx, %eax
	subl	%esi, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovll	%eax, %r8d
	testl	%r8d, %r8d
	jle	.LBB3_32
# BB#33:                                # %if.then.179
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%edx, 220(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	cmovsl	%ecx, %esi
	movq	%rcx, %rbp
	movq	(%r12), %rax
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r12, %rdi
	movl	%esi, %edx
	movl	104(%rsp), %esi         # 4-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB3_30
	.align	16, 0x90
.LBB3_26:                               # %if.end.150
                                        #   in Loop: Header=BB3_3 Depth=1
	testl	%edx, %edx
	jne	.LBB3_34
# BB#27:                                # %sw.bb.151
                                        #   in Loop: Header=BB3_3 Depth=1
	subl	$-128, %ebp
	sarl	$8, %ebp
	movl	%ebp, %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_28
# BB#29:                                # %if.then.163
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%edx, 220(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	cmovsl	%ebp, %esi
	movq	(%r12), %rax
	movl	148(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r12, %rdi
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	108(%rsp), %r8d         # 4-byte Reload
.LBB3_30:                               # %sw.epilog.189
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	176(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
	movl	%eax, %r9d
	jmp	.LBB3_35
.LBB3_34:                               # %sw.default.184
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%edx, 220(%rsp)         # 4-byte Spill
	movl	%ebp, %ecx
	movl	100(%rsp), %r9d         # 4-byte Reload
	subl	%r9d, %ecx
	movl	%ebx, %r8d
	movl	96(%rsp), %edx          # 4-byte Reload
	subl	%edx, %r8d
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %r13
	movl	%esi, %r12d
	movl	%r9d, %esi
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rdi)
	movl	%eax, %r9d
	movl	%ebp, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%ebx, %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	%r12d, %ebp
	movq	%r13, %r12
	movq	168(%rsp), %r13         # 8-byte Reload
	jmp	.LBB3_35
.LBB3_32:                               #   in Loop: Header=BB3_3 Depth=1
	movq	%rcx, %rbp
	movl	%edx, 220(%rsp)         # 4-byte Spill
	jmp	.LBB3_35
.LBB3_28:                               #   in Loop: Header=BB3_3 Depth=1
	movl	%edx, 220(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB3_35:                               # %sw.epilog.189
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	232(%rsp), %ecx         # 4-byte Reload
	movl	236(%rsp), %edi         # 4-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	testl	%r9d, %r9d
	jns	.LBB3_36
# BB#49:                                # %err
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movq	440(%rsp), %rsi
	movl	$.L.str.3, %edx
	movl	%r9d, %ebx
	callq	*24(%rdi)
	movl	%ebx, %ebp
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	subq	%rcx, %rax
	subq	%r15, %rax
	cqto
	idivq	%rcx
	movq	272(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 1348(%rcx)
	movl	$0, 1352(%rcx)
	jmp	.LBB3_50
.LBB3_37:                               # %while.end
	cmpl	$1, %r10d
	jne	.LBB3_38
# BB#41:                                # %sw.bb.220
	subl	$-128, %ebp
	sarl	$8, %ebp
	movl	%ebp, %eax
	movl	188(%rsp), %edx         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovll	%eax, %r8d
	testl	%r8d, %r8d
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	176(%rsp), %r9          # 8-byte Reload
	movq	192(%rsp), %rdi         # 8-byte Reload
	jle	.LBB3_46
# BB#42:                                # %if.then.234
	testl	%eax, %eax
	cmovsl	%ebp, %edx
	movq	(%rdi), %rax
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	104(%rsp), %esi         # 4-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	callq	*40(%rax)
	jmp	.LBB3_45
.LBB3_38:                               # %while.end
	testl	%r10d, %r10d
	movq	136(%rsp), %r14         # 8-byte Reload
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	192(%rsp), %rdi         # 8-byte Reload
	jne	.LBB3_44
# BB#39:                                # %sw.bb.201
	subl	$-128, %r9d
	sarl	$8, %r9d
	movl	%r9d, %eax
	movl	188(%rsp), %esi         # 4-byte Reload
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_46
# BB#40:                                # %if.then.215
	testl	%eax, %eax
	cmovsl	%r9d, %esi
	movq	(%rdi), %rax
	movl	148(%rsp), %edx         # 4-byte Reload
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	108(%rsp), %r8d         # 4-byte Reload
	movq	%rbx, %r9
	callq	*40(%rax)
	jmp	.LBB3_45
.LBB3_44:                               # %sw.default.239
	movl	100(%rsp), %esi         # 4-byte Reload
	subl	%esi, %r9d
	movl	96(%rsp), %edx          # 4-byte Reload
	subl	%edx, %ebp
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movl	%r9d, %ecx
	movl	%ebp, %r8d
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rbx)
.LBB3_45:                               # %sw.epilog.245
	movl	%eax, 204(%rsp)         # 4-byte Spill
.LBB3_46:                               # %sw.epilog.245
	movq	440(%rsp), %rsi
	testq	%rsi, %rsi
	movl	204(%rsp), %ebp         # 4-byte Reload
	je	.LBB3_48
# BB#47:                                # %if.then.248
	movq	8(%r14), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB3_48:                               # %if.end.251
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
.LBB3_50:                               # %cleanup
	movl	%ebp, %eax
	addq	$1912, %rsp             # imm = 0x778
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_render_color_icc, .Lfunc_end3-image_render_color_icc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	image_color_icc_prep,@function
image_color_icc_prep:                   # @image_color_icc_prep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 240
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
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r12
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	1216(%rbp), %r15
	movl	24792(%rbp), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movzbl	579(%rbp), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	96(%rsp), %rsi
	movq	%rcx, %rdi
	callq	*1680(%rcx)
	testl	%eax, %eax
	js	.LBB4_77
# BB#1:                                 # %if.end
	movq	96(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %edx
	movq	24448(%rbp), %rax
	testq	%rax, %rax
	je	.LBB4_2
# BB#3:                                 # %if.end.10
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	248(%rsp), %rsi
	movq	240(%rsp), %rdi
	cmpl	$1, %edx
	setne	%cl
	cmpl	$1, 256(%rsp)
	sete	%bpl
	andb	%cl, %bpl
	jne	.LBB4_7
# BB#4:                                 # %if.end.10
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jne	.LBB4_7
# BB#5:                                 # %if.end.10
	movl	116(%rax), %eax
	testl	%eax, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.22
	movq	%r14, (%rbx)
	movl	%r13d, %eax
	addq	%r14, %rax
	movq	%rax, (%rsi)
	movq	$0, (%rdi)
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	jmp	.LBB4_76
.LBB4_2:                                # %if.then.8
	movl	$.L__func__.image_color_icc_prep, %edi
	movl	$.L.str.1, %esi
	movl	$318, %edx              # imm = 0x13E
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB4_77
.LBB4_7:                                # %if.else
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	8(%r15), %rdi
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movl	%r13d, 56(%rsp)         # 4-byte Spill
	imull	%r13d, %eax
	xorl	%edx, %edx
	movq	80(%rsp), %r12          # 8-byte Reload
	divl	%r12d
	movl	%eax, %r13d
	movl	$.L__func__.image_color_icc_prep, %edx
	movq	%rsi, %r15
	movl	%r13d, %esi
	callq	*64(%rdi)
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rax, (%rbx)
	movq	240(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	(%rbx), %r13
	movq	%r13, (%r15)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24448(%rax), %rax
	cmpl	$0, 116(%rax)
	je	.LBB4_55
# BB#8:                                 # %if.then.33
	movl	56(%rsp), %eax          # 4-byte Reload
	testb	$1, %bpl
	je	.LBB4_9
# BB#23:                                # %if.else.36
	movl	%eax, %ecx
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	je	.LBB4_24
# BB#25:                                # %if.then.38
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_color_icc_prep, %edx
	movl	%ecx, %ebp
	movl	%ebp, %esi
	callq	*64(%rdi)
	movl	%ebp, %r13d
	addq	%rax, %r13
	cmpl	$0, 24808(%r15)
	je	.LBB4_26
# BB#40:                                # %if.else.48
	movq	1224(%r15), %rdi
	movq	%rax, %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	callq	get_cie_range
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movq	%r13, %r8
	movq	%rax, %r9
	callq	decode_row_cie
	movq	%rbx, %r14
	movq	48(%rsp), %r10          # 8-byte Reload
	movl	%ebp, %eax
	jmp	.LBB4_41
.LBB4_55:                               # %if.else.77
	xorl	%edx, %edx
	movl	56(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %eax
	divl	%r12d
	movl	%eax, %r13d
	movl	%r13d, 24(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	leaq	144(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r12d, %esi
	callq	gsicc_init_buffer
	testb	$1, %bpl
	je	.LBB4_56
# BB#57:                                # %if.else.84
	movl	%r13d, 24(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 16(%rsp)
	movl	60(%rsp), %ebp          # 4-byte Reload
	movzbl	%bpl, %esi
	leaq	104(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	jmp	.LBB4_58
.LBB4_9:                                # %if.then.35
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%r13, %rax
	movq	64(%rsp), %rbx          # 8-byte Reload
	jae	.LBB4_10
# BB#13:                                # %for.cond.preheader.lr.ph.i
	movl	%r12d, %r8d
	decl	%r8d
	incq	%r8
	addq	$1784, %rbx             # imm = 0x6F8
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB4_14:                               # %for.cond.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	testb	%r12b, %r12b
	movl	%r12d, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%r14, %rbp
	je	.LBB4_12
	.align	16, 0x90
.LBB4_15:                               # %for.body.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rsi), %ecx
	cmpl	$2, %ecx
	je	.LBB4_20
# BB#16:                                # %for.body.i
                                        #   in Loop: Header=BB4_15 Depth=2
	cmpl	$1, %ecx
	jne	.LBB4_17
# BB#19:                                # %sw.bb.2.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movzbl	(%rbp), %ecx
	shrq	$2, %rcx
	andl	$60, %ecx
	movss	(%rsi,%rcx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB4_21
	.align	16, 0x90
.LBB4_20:                               # %sw.bb.17.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movzbl	(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	64(%rsi), %xmm1
	addss	(%rsi), %xmm1
.LBB4_21:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_15 Depth=2
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ecx
	movb	%cl, (%rdi)
	jmp	.LBB4_22
	.align	16, 0x90
.LBB4_17:                               # %for.body.i
                                        #   in Loop: Header=BB4_15 Depth=2
	testl	%ecx, %ecx
	jne	.LBB4_22
# BB#18:                                # %sw.bb.i
                                        #   in Loop: Header=BB4_15 Depth=2
	movb	(%rbp), %cl
	movb	%cl, (%rdi)
	.align	16, 0x90
.LBB4_22:                               # %sw.epilog.i
                                        #   in Loop: Header=BB4_15 Depth=2
	incq	%rdi
	incq	%rbp
	addq	$332, %rsi              # imm = 0x14C
	decl	%edx
	jne	.LBB4_15
# BB#11:                                # %for.cond.while.cond.loopexit_crit_edge.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addq	%r8, %r14
	addq	%r8, %rax
.LBB4_12:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	cmpq	%r13, %rax
	jb	.LBB4_14
	jmp	.LBB4_10
.LBB4_56:                               # %if.then.81
	movl	%r13d, %eax
	movl	60(%rsp), %ecx          # 4-byte Reload
	imull	%ecx, %eax
	movl	%r13d, 24(%rsp)
	movl	%ecx, %ebp
	movl	%eax, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, (%rsp)
	movzbl	%bpl, %esi
	leaq	104(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
.LBB4_58:                               # %if.end.88
	callq	gsicc_init_buffer
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	je	.LBB4_75
# BB#59:                                # %if.then.90
	movq	8(%rax), %rdi
	movl	$.L__func__.image_color_icc_prep, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	%ebx, %r13d
	addq	%r15, %r13
	movq	64(%rsp), %rbp          # 8-byte Reload
	cmpl	$0, 24808(%rbp)
	je	.LBB4_60
# BB#73:                                # %if.else.101
	movq	1224(%rbp), %rdi
	callq	get_cie_range
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	%rax, %r9
	callq	decode_row_cie
	movq	72(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB4_74
.LBB4_75:                               # %if.else.114
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24448(%rax), %rsi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r9
	leaq	144(%rsp), %rdx
	leaq	104(%rsp), %rcx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %r8
	callq	*8(%rsi)
	movq	40(%rsp), %r12          # 8-byte Reload
	jmp	.LBB4_76
.LBB4_24:
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	48(%rsp), %r10          # 8-byte Reload
	movl	%ecx, %eax
	jmp	.LBB4_41
.LBB4_60:                               # %if.then.98
	movl	%ebx, %eax
	testl	%eax, %eax
	movq	72(%rsp), %rdi          # 8-byte Reload
	je	.LBB4_74
# BB#61:                                # %for.cond.preheader.lr.ph.i.161
	leal	-1(%r12), %r9d
	incq	%r9
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	1784(%rax), %r8
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %r10
	.align	16, 0x90
.LBB4_64:                               # %for.cond.preheader.i.170
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_65 Depth 2
	testb	%r12b, %r12b
	movl	%r12d, %esi
	movq	%r8, %rcx
	movq	%r10, %rdx
	movq	%r14, %rbp
	je	.LBB4_63
	.align	16, 0x90
.LBB4_65:                               # %for.body.i.177
                                        #   Parent Loop BB4_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rcx), %eax
	cmpl	$2, %eax
	je	.LBB4_70
# BB#66:                                # %for.body.i.177
                                        #   in Loop: Header=BB4_65 Depth=2
	cmpl	$1, %eax
	jne	.LBB4_67
# BB#69:                                # %sw.bb.2.i.188
                                        #   in Loop: Header=BB4_65 Depth=2
	movzbl	(%rbp), %eax
	shrq	$2, %rax
	andl	$60, %eax
	movss	(%rcx,%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB4_71
	.align	16, 0x90
.LBB4_70:                               # %sw.bb.17.i.200
                                        #   in Loop: Header=BB4_65 Depth=2
	movzbl	(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	64(%rcx), %xmm1
	addss	(%rcx), %xmm1
.LBB4_71:                               # %sw.epilog.i.206
                                        #   in Loop: Header=BB4_65 Depth=2
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, (%rdx)
	jmp	.LBB4_72
	.align	16, 0x90
.LBB4_67:                               # %for.body.i.177
                                        #   in Loop: Header=BB4_65 Depth=2
	testl	%eax, %eax
	jne	.LBB4_72
# BB#68:                                # %sw.bb.i.178
                                        #   in Loop: Header=BB4_65 Depth=2
	movb	(%rbp), %al
	movb	%al, (%rdx)
	.align	16, 0x90
.LBB4_72:                               # %sw.epilog.i.206
                                        #   in Loop: Header=BB4_65 Depth=2
	incq	%rdx
	incq	%rbp
	addq	$332, %rcx              # imm = 0x14C
	decl	%esi
	jne	.LBB4_65
# BB#62:                                # %for.cond.while.cond.loopexit_crit_edge.i.163
                                        #   in Loop: Header=BB4_64 Depth=1
	addq	%r9, %r14
	addq	%r9, %r10
.LBB4_63:                               # %while.cond.loopexit.i.167
                                        #   in Loop: Header=BB4_64 Depth=1
	cmpq	%r13, %r10
	jb	.LBB4_64
.LBB4_74:                               # %if.end.106
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24448(%rax), %rsi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r9
	leaq	144(%rsp), %rdx
	leaq	104(%rsp), %rcx
	movq	%r15, %r8
	callq	*8(%rsi)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L__func__.image_color_icc_prep, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	jmp	.LBB4_10
.LBB4_26:                               # %if.then.45
	testl	%ebp, %ebp
	movl	%ebp, %r9d
	movq	48(%rsp), %r10          # 8-byte Reload
	je	.LBB4_27
# BB#30:                                # %for.cond.preheader.lr.ph.i.112
	leal	-1(%r12), %r8d
	incq	%r8
	addq	$1784, %r15             # imm = 0x6F8
	movss	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rcx
	.align	16, 0x90
.LBB4_31:                               # %for.cond.preheader.i.121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_32 Depth 2
	testb	%r12b, %r12b
	movl	%r12d, %edx
	movq	%r15, %rsi
	movq	%rcx, %rdi
	movq	%r14, %rbp
	je	.LBB4_29
	.align	16, 0x90
.LBB4_32:                               # %for.body.i.128
                                        #   Parent Loop BB4_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rsi), %ebx
	cmpl	$2, %ebx
	je	.LBB4_37
# BB#33:                                # %for.body.i.128
                                        #   in Loop: Header=BB4_32 Depth=2
	cmpl	$1, %ebx
	jne	.LBB4_34
# BB#36:                                # %sw.bb.2.i.139
                                        #   in Loop: Header=BB4_32 Depth=2
	movzbl	(%rbp), %ebx
	shrq	$2, %rbx
	andl	$60, %ebx
	movss	(%rsi,%rbx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB4_38
	.align	16, 0x90
.LBB4_37:                               # %sw.bb.17.i.151
                                        #   in Loop: Header=BB4_32 Depth=2
	movzbl	(%rbp), %ebx
	cvtsi2ssl	%ebx, %xmm1
	mulss	64(%rsi), %xmm1
	addss	(%rsi), %xmm1
.LBB4_38:                               # %sw.epilog.i.157
                                        #   in Loop: Header=BB4_32 Depth=2
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %ebx
	movb	%bl, (%rdi)
	jmp	.LBB4_39
	.align	16, 0x90
.LBB4_34:                               # %for.body.i.128
                                        #   in Loop: Header=BB4_32 Depth=2
	testl	%ebx, %ebx
	jne	.LBB4_39
# BB#35:                                # %sw.bb.i.129
                                        #   in Loop: Header=BB4_32 Depth=2
	movb	(%rbp), %bl
	movb	%bl, (%rdi)
	.align	16, 0x90
.LBB4_39:                               # %sw.epilog.i.157
                                        #   in Loop: Header=BB4_32 Depth=2
	incq	%rdi
	incq	%rbp
	addq	$332, %rsi              # imm = 0x14C
	decl	%edx
	jne	.LBB4_32
# BB#28:                                # %for.cond.while.cond.loopexit_crit_edge.i.114
                                        #   in Loop: Header=BB4_31 Depth=1
	addq	%r8, %r14
	addq	%r8, %rcx
.LBB4_29:                               # %while.cond.loopexit.i.118
                                        #   in Loop: Header=BB4_31 Depth=1
	cmpq	%r13, %rcx
	jb	.LBB4_31
.LBB4_27:
	movq	%rax, %r14
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r9d, %eax
.LBB4_41:                               # %if.end.54
	xorl	%r11d, %r11d
	xorl	%edx, %edx
	divl	%r12d
	testl	%eax, %eax
	jle	.LBB4_52
# BB#42:                                # %for.cond.58.preheader.lr.ph
	movq	(%r10), %r15
	movslq	%eax, %rsi
	leal	-1(%r12), %r9d
	leaq	1(%r9), %r8
	movl	%r12d, %r10d
	andl	$3, %r10d
	movl	%r12d, %r13d
	andl	$3, %r13d
	.align	16, 0x90
.LBB4_43:                               # %for.cond.58.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_45 Depth 2
                                        #     Child Loop BB4_49 Depth 2
	testb	%r12b, %r12b
	je	.LBB4_51
# BB#44:                                # %for.body.61.preheader
                                        #   in Loop: Header=BB4_43 Depth=1
	testl	%r10d, %r10d
	movl	$0, %edi
	movq	%r14, %rbx
	je	.LBB4_47
	.align	16, 0x90
.LBB4_45:                               # %for.body.61.prol
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rbp
	movb	(%r14,%rbp), %bl
	movq	%rbp, %rcx
	imulq	%rsi, %rcx
	movb	%bl, (%r15,%rcx)
	leaq	1(%rbp), %rdi
	cmpl	%edi, %r13d
	jne	.LBB4_45
# BB#46:                                #   in Loop: Header=BB4_43 Depth=1
	leaq	1(%r14,%rbp), %rbx
.LBB4_47:                               # %for.body.61.preheader.split
                                        #   in Loop: Header=BB4_43 Depth=1
	cmpl	$3, %r9d
	jb	.LBB4_50
# BB#48:                                # %for.body.61.preheader.split.split
                                        #   in Loop: Header=BB4_43 Depth=1
	movl	%r12d, %ecx
	subl	%edi, %ecx
	.align	16, 0x90
.LBB4_49:                               # %for.body.61
                                        #   Parent Loop BB4_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbx), %dl
	movq	%rdi, %rbp
	imulq	%rsi, %rbp
	movb	%dl, (%r15,%rbp)
	leaq	1(%rdi), %rdx
	movb	1(%rbx), %bpl
	imulq	%rsi, %rdx
	movb	%bpl, (%r15,%rdx)
	leaq	2(%rdi), %rdx
	movb	2(%rbx), %bpl
	imulq	%rsi, %rdx
	movb	%bpl, (%r15,%rdx)
	leaq	3(%rdi), %rdx
	movb	3(%rbx), %bpl
	imulq	%rsi, %rdx
	movb	%bpl, (%r15,%rdx)
	addq	$4, %rdi
	addq	$4, %rbx
	addl	$-4, %ecx
	jne	.LBB4_49
.LBB4_50:                               # %for.cond.58.for.end_crit_edge
                                        #   in Loop: Header=BB4_43 Depth=1
	addq	%r8, %r14
.LBB4_51:                               # %for.end
                                        #   in Loop: Header=BB4_43 Depth=1
	incq	%r15
	incl	%r11d
	cmpl	%eax, %r11d
	jl	.LBB4_43
.LBB4_52:                               # %for.end.68
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_10
# BB#53:                                # %if.then.71
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
.LBB4_10:
	movq	40(%rsp), %r12          # 8-byte Reload
	movl	60(%rsp), %ebp          # 4-byte Reload
.LBB4_76:                               # %if.end.121
	movl	%ebp, (%r12)
	xorl	%eax, %eax
.LBB4_77:                               # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_color_icc_prep, .Lfunc_end4-image_color_icc_prep
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	decode_row_cie,@function
decode_row_cie:                         # @decode_row_cie
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 40
.Ltmp65:
	.cfi_offset %rbx, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	cmpq	%r8, %rcx
	jae	.LBB5_15
# BB#1:                                 # %for.cond.preheader.lr.ph
	leal	-1(%rdx), %r10d
	incq	%r10
	addq	$1784, %rdi             # imm = 0x6F8
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB5_4:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	testl	%edx, %edx
	jle	.LBB5_5
# BB#6:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	(%rsi,%r10), %r11
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	%r9, %r15
	movq	%rcx, %rbp
	.align	16, 0x90
.LBB5_7:                                # %for.body
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	68(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB5_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$1, %eax
	jne	.LBB5_9
# BB#11:                                # %sw.bb.2
                                        #   in Loop: Header=BB5_7 Depth=2
	movzbl	(%rsi), %eax
	shrq	$2, %rax
	andl	$60, %eax
	movss	(%rbx,%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	jmp	.LBB5_13
	.align	16, 0x90
.LBB5_12:                               # %sw.bb.20
                                        #   in Loop: Header=BB5_7 Depth=2
	movzbl	(%rsi), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	64(%rbx), %xmm1
	addss	(%rbx), %xmm1
.LBB5_13:                               # %sw.epilog
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	(%r15), %xmm2           # xmm2 = mem[0],zero
	subss	%xmm2, %xmm1
	movaps	%xmm2, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	subss	%xmm2, %xmm3
	divss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	maxss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	movb	%al, (%rbp)
	jmp	.LBB5_14
	.align	16, 0x90
.LBB5_9:                                # %for.body
                                        #   in Loop: Header=BB5_7 Depth=2
	testl	%eax, %eax
	jne	.LBB5_14
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB5_7 Depth=2
	movb	(%rsi), %al
	movb	%al, (%rbp)
	.align	16, 0x90
.LBB5_14:                               # %sw.epilog
                                        #   in Loop: Header=BB5_7 Depth=2
	incq	%rbp
	incq	%rsi
	addq	$8, %r15
	addq	$332, %rbx              # imm = 0x14C
	decl	%r14d
	jne	.LBB5_7
# BB#2:                                 # %for.cond.while.cond.loopexit_crit_edge
                                        #   in Loop: Header=BB5_4 Depth=1
	addq	%r10, %rcx
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_5:                                #   in Loop: Header=BB5_4 Depth=1
	movq	%rsi, %r11
.LBB5_3:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpq	%r8, %rcx
	movq	%r11, %rsi
	jb	.LBB5_4
.LBB5_15:                               # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	decode_row_cie, .Lfunc_end5-decode_row_cie
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image_render_color_thresh"
	.size	.L.str, 26

	.type	.L__func__.image_color_icc_prep,@object # @__func__.image_color_icc_prep
.L__func__.image_color_icc_prep:
	.asciz	"image_color_icc_prep"
	.size	.L__func__.image_color_icc_prep, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./base/gxicolor.c"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ICC Link not created during image render color"
	.size	.L.str.2, 47

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image_render_color_icc"
	.size	.L.str.3, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
