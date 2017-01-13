	.text
	.file	"gimppixbuf.bc"
	.globl	gimp_image_get_thumbnail
	.align	16, 0x90
	.type	gimp_image_get_thumbnail,@function
gimp_image_get_thumbnail:               # @gimp_image_get_thumbnail
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
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -16(%rbp)
	jle	.LBB0_4
# BB#2:                                 # %land.lhs.true
	cmpl	$1024, -16(%rbp)        # imm = 0x400
	jg	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_image_get_thumbnail(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_5:                                # %if.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.end
	jmp	.LBB0_7
.LBB0_7:                                # %do.body.2
	cmpl	$0, -20(%rbp)
	jle	.LBB0_10
# BB#8:                                 # %land.lhs.true.4
	cmpl	$1024, -20(%rbp)        # imm = 0x400
	jg	.LBB0_10
# BB#9:                                 # %if.then.6
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.7
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_image_get_thumbnail(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.8
	jmp	.LBB0_12
.LBB0_12:                               # %do.end.9
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	movl	-12(%rbp), %edi
	callq	gimp_image_get_thumbnail_data@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.10
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_pixbuf_from_data
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.12
	movq	$0, -8(%rbp)
.LBB0_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_get_thumbnail, .Lfunc_end0-gimp_image_get_thumbnail
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_pixbuf_from_data,@function
gimp_pixbuf_from_data:                  # @gimp_pixbuf_from_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	-28(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %edi
	subl	$3, %ecx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	ja	.LBB1_21
# BB#31:                                # %entry
	leaq	.LJTI1_0(%rip), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB1_1:                                # %sw.bb
	xorl	%eax, %eax
	movl	$8, %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gdk_pixbuf_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride@PLT
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_9
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB1_4:                                # %for.cond.3
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_7
# BB#5:                                 # %for.body.5
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-72(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-72(%rbp), %rax
	movb	%cl, (%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-72(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB1_4
.LBB1_7:                                # %for.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#8:                                 # %for.inc.11
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_2
.LBB1_9:                                # %for.end.13
	movq	-16(%rbp), %rdi
	callq	g_free@PLT
	movl	$3, -28(%rbp)
	jmp	.LBB1_23
.LBB1_10:                               # %sw.bb.14
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$8, %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gdk_pixbuf_new@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels@PLT
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride@PLT
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB1_11:                               # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	movl	-104(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_18
# BB#12:                                # %for.body.24
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB1_13:                               # %for.cond.27
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_16
# BB#14:                                # %for.body.29
                                        #   in Loop: Header=BB1_13 Depth=2
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movq	-112(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-112(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-112(%rbp), %rax
	movb	%cl, (%rax)
	movq	-88(%rbp), %rax
	movb	1(%rax), %cl
	movq	-112(%rbp), %rax
	movb	%cl, 3(%rax)
# BB#15:                                # %for.inc.36
                                        #   in Loop: Header=BB1_13 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -88(%rbp)
	movq	-112(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB1_13
.LBB1_16:                               # %for.end.40
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-100(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
# BB#17:                                # %for.inc.43
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB1_11
.LBB1_18:                               # %for.end.45
	movq	-16(%rbp), %rdi
	callq	g_free@PLT
	movl	$4, -28(%rbp)
	jmp	.LBB1_23
.LBB1_19:                               # %sw.bb.46
	xorl	%eax, %eax
	movl	$8, %ecx
	movq	g_free@GOTPCREL(%rip), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-16(%rbp), %r8
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %r9d
	movl	-20(%rbp), %r10d
	imull	-28(%rbp), %r10d
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	-164(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gdk_pixbuf_new_from_data@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB1_23
.LBB1_20:                               # %sw.bb.48
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$8, %ecx
	movq	g_free@GOTPCREL(%rip), %rax
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-20(%rbp), %r11d
	imull	-28(%rbp), %r11d
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gdk_pixbuf_new_from_data@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB1_23
.LBB1_21:                               # %sw.default
	jmp	.LBB1_22
.LBB1_22:                               # %do.body
	leaq	.L.str(%rip), %rdi
	movl	$8, %esi
	leaq	.L.str.9(%rip), %rdx
	leaq	.L.str.10(%rip), %rcx
	movl	$267, %r8d              # imm = 0x10B
	leaq	.L__func__.gimp_pixbuf_from_data(%rip), %r9
	movb	$0, %al
	callq	g_log@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB1_30
.LBB1_23:                               # %sw.epilog
	cmpl	$4, -28(%rbp)
	jne	.LBB1_29
# BB#24:                                # %if.then
	movl	$0, -132(%rbp)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB1_25
	jmp	.LBB1_32
.LBB1_32:                               # %if.then
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB1_26
	jmp	.LBB1_33
.LBB1_33:                               # %if.then
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_28
.LBB1_25:                               # %sw.bb.53
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_30
.LBB1_26:                               # %sw.bb.54
	movl	$4, -132(%rbp)
	jmp	.LBB1_28
.LBB1_27:                               # %sw.bb.55
	movl	$8, -132(%rbp)
.LBB1_28:                               # %sw.epilog.56
	xorl	%eax, %eax
	movl	$8, %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gdk_pixbuf_new@PLT
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$255, %edx
	movl	$1717986918, %esi       # imm = 0x66666666
	movl	$2576980377, %edi       # imm = 0x99999999
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rax
	movq	-128(%rbp), %r9
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movl	-132(%rbp), %r11d
	movl	%edi, -200(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%r10d, %r9d
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$255, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, 32(%rsp)
	movl	$1717986918, 40(%rsp)   # imm = 0x66666666
	movl	$-1717986919, 48(%rsp)  # imm = 0xFFFFFFFF99999999
	callq	gdk_pixbuf_composite_color@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_29:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pixbuf_from_data, .Lfunc_end1-gimp_pixbuf_from_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI1_0:
	.long	.LBB1_1-.LJTI1_0
	.long	.LBB1_10-.LJTI1_0
	.long	.LBB1_19-.LJTI1_0
	.long	.LBB1_20-.LJTI1_0

	.text
	.globl	gimp_drawable_get_thumbnail
	.align	16, 0x90
	.type	gimp_drawable_get_thumbnail,@function
gimp_drawable_get_thumbnail:            # @gimp_drawable_get_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -16(%rbp)
	jle	.LBB2_4
# BB#2:                                 # %land.lhs.true
	cmpl	$1024, -16(%rbp)        # imm = 0x400
	jg	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_thumbnail(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	jmp	.LBB2_7
.LBB2_7:                                # %do.body.2
	cmpl	$0, -20(%rbp)
	jle	.LBB2_10
# BB#8:                                 # %land.lhs.true.4
	cmpl	$1024, -20(%rbp)        # imm = 0x400
	jg	.LBB2_10
# BB#9:                                 # %if.then.6
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.7
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_thumbnail(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.8
	jmp	.LBB2_12
.LBB2_12:                               # %do.end.9
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get_thumbnail_data@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.10
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_pixbuf_from_data
	movq	%rax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.end.12
	movq	$0, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_get_thumbnail, .Lfunc_end2-gimp_drawable_get_thumbnail
	.cfi_endproc

	.globl	gimp_drawable_get_sub_thumbnail
	.align	16, 0x90
	.type	gimp_drawable_get_sub_thumbnail,@function
gimp_drawable_get_sub_thumbnail:        # @gimp_drawable_get_sub_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -16(%rbp)
	jl	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jl	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpl	$0, -24(%rbp)
	jle	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	jmp	.LBB3_16
.LBB3_16:                               # %do.body.13
	cmpl	$0, -28(%rbp)
	jle	.LBB3_18
# BB#17:                                # %if.then.15
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_19:                               # %if.end.17
	jmp	.LBB3_20
.LBB3_20:                               # %do.end.18
	jmp	.LBB3_21
.LBB3_21:                               # %do.body.19
	cmpl	$0, -32(%rbp)
	jle	.LBB3_24
# BB#22:                                # %land.lhs.true
	cmpl	$1024, -32(%rbp)        # imm = 0x400
	jg	.LBB3_24
# BB#23:                                # %if.then.22
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.23
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_25:                               # %if.end.24
	jmp	.LBB3_26
.LBB3_26:                               # %do.end.25
	jmp	.LBB3_27
.LBB3_27:                               # %do.body.26
	cmpl	$0, -36(%rbp)
	jle	.LBB3_30
# BB#28:                                # %land.lhs.true.28
	cmpl	$1024, -36(%rbp)        # imm = 0x400
	jg	.LBB3_30
# BB#29:                                # %if.then.30
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.31
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_drawable_get_sub_thumbnail(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_35
.LBB3_31:                               # %if.end.32
	jmp	.LBB3_32
.LBB3_32:                               # %do.end.33
	leaq	-44(%rbp), %r9
	leaq	-48(%rbp), %rax
	leaq	-52(%rbp), %rcx
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r10d
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_get_sub_thumbnail_data@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.34
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	gimp_pixbuf_from_data
	movq	%rax, -8(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.end.36
	movq	$0, -8(%rbp)
.LBB3_35:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_get_sub_thumbnail, .Lfunc_end3-gimp_drawable_get_sub_thumbnail
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_image_get_thumbnail,@object # @__func__.gimp_image_get_thumbnail
.L__func__.gimp_image_get_thumbnail:
	.asciz	"gimp_image_get_thumbnail"
	.size	.L__func__.gimp_image_get_thumbnail, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width > 0 && width <= 1024"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"height > 0 && height <= 1024"
	.size	.L.str.2, 29

	.type	.L__func__.gimp_drawable_get_thumbnail,@object # @__func__.gimp_drawable_get_thumbnail
.L__func__.gimp_drawable_get_thumbnail:
	.asciz	"gimp_drawable_get_thumbnail"
	.size	.L__func__.gimp_drawable_get_thumbnail, 28

	.type	.L__func__.gimp_drawable_get_sub_thumbnail,@object # @__func__.gimp_drawable_get_sub_thumbnail
.L__func__.gimp_drawable_get_sub_thumbnail:
	.asciz	"gimp_drawable_get_sub_thumbnail"
	.size	.L__func__.gimp_drawable_get_sub_thumbnail, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"src_x >= 0"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"src_y >= 0"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"src_width > 0"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"src_height > 0"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dest_width > 0 && dest_width <= 1024"
	.size	.L.str.7, 37

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dest_height > 0 && dest_height <= 1024"
	.size	.L.str.8, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimppixbuf.c"
	.size	.L.str.10, 13

	.type	.L__func__.gimp_pixbuf_from_data,@object # @__func__.gimp_pixbuf_from_data
.L__func__.gimp_pixbuf_from_data:
	.asciz	"gimp_pixbuf_from_data"
	.size	.L__func__.gimp_pixbuf_from_data, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
