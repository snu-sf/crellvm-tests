	.text
	.file	"gimplayer.bc"
	.globl	gimp_layer_new
	.align	16, 0x90
	.type	gimp_layer_new,@function
gimp_layer_new:                         # @gimp_layer_new
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	-4(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %r8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %r9d
	callq	_gimp_layer_new
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_layer_new, .Lfunc_end0-gimp_layer_new
	.cfi_endproc

	.globl	gimp_layer_copy
	.align	16, 0x90
	.type	gimp_layer_copy,@function
gimp_layer_copy:                        # @gimp_layer_copy
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_gimp_layer_copy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_layer_copy, .Lfunc_end1-gimp_layer_copy
	.cfi_endproc

	.globl	gimp_layer_new_from_pixbuf
	.align	16, 0x90
	.type	gimp_layer_new_from_pixbuf,@function
gimp_layer_new_from_pixbuf:             # @gimp_layer_new_from_pixbuf
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
	subq	$256, %rsp              # imm = 0x100
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -188(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_layer_new_from_pixbuf(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB2_38
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movl	-8(%rbp), %edi
	callq	gimp_image_base_type@PLT
	cmpl	$0, %eax
	je	.LBB2_14
# BB#13:                                # %if.then.13
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB2_38
.LBB2_14:                               # %if.end.14
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_colorspace@PLT
	cmpl	$0, %eax
	je	.LBB2_16
# BB#15:                                # %if.then.17
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB2_38
.LBB2_16:                               # %if.end.18
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -136(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	%eax, -140(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%eax, -148(%rbp)
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %r8d
	cmpl	$3, -148(%rbp)
	cmovel	%edx, %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-216(%rbp), %r8d        # 4-byte Reload
	callq	gimp_layer_new@PLT
	movl	%eax, -132(%rbp)
	cmpl	$-1, -132(%rbp)
	jne	.LBB2_18
# BB#17:                                # %if.then.25
	movl	$-1, -4(%rbp)
	jmp	.LBB2_38
.LBB2_18:                               # %if.end.26
	movl	-132(%rbp), %edi
	callq	gimp_drawable_get@PLT
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init@PLT
# BB#19:                                # %do.body.28
	movl	-148(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jne	.LBB2_21
# BB#20:                                # %if.then.31
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.32
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movl	$163, %edx
	leaq	.L__func__.gimp_layer_new_from_pixbuf(%rip), %rcx
	leaq	.L.str.5(%rip), %r8
	callq	g_assertion_message_expr@PLT
.LBB2_22:                               # %if.end.33
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.34
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride@PLT
	movl	%eax, -144(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels@PLT
	movl	$1, %edi
	leaq	-112(%rbp), %rsi
	movq	%rax, -120(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -128(%rbp)
.LBB2_24:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
	cmpq	$0, -128(%rbp)
	je	.LBB2_35
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB2_24 Depth=1
	movq	-120(%rbp), %rax
	movl	-84(%rbp), %ecx
	imull	-144(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-88(%rbp), %ecx
	imull	-148(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -212(%rbp)
.LBB2_26:                               # %for.cond.46
                                        #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-212(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB2_29
# BB#27:                                # %for.body.48
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-80(%rbp), %eax
	imull	-96(%rbp), %eax
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movl	-144(%rbp), %eax
	movq	-200(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -200(%rbp)
	movl	-92(%rbp), %eax
	movq	-208(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -208(%rbp)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB2_26 Depth=2
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB2_26
.LBB2_29:                               # %for.end
                                        #   in Loop: Header=BB2_24 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_33
# BB#30:                                # %if.then.58
                                        #   in Loop: Header=BB2_24 Depth=1
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	addl	-168(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	andl	$31, %eax
	cmpl	$0, %eax
	jne	.LBB2_32
# BB#31:                                # %if.then.65
                                        #   in Loop: Header=BB2_24 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-168(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB2_32:                               # %if.end.72
                                        #   in Loop: Header=BB2_24 Depth=1
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.73
                                        #   in Loop: Header=BB2_24 Depth=1
	jmp	.LBB2_34
.LBB2_34:                               # %for.inc.74
                                        #   in Loop: Header=BB2_24 Depth=1
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -128(%rbp)
	jmp	.LBB2_24
.LBB2_35:                               # %for.end.76
	xorps	%xmm0, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_37
# BB#36:                                # %if.then.79
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update@PLT
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB2_37:                               # %if.end.81
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_detach@PLT
	movl	-132(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_new_from_pixbuf, .Lfunc_end2-gimp_layer_new_from_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_layer_new_from_surface
	.align	16, 0x90
	.type	gimp_layer_new_from_surface,@function
gimp_layer_new_from_surface:            # @gimp_layer_new_from_surface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_layer_new_from_surface(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rdi
	callq	cairo_surface_get_type@PLT
	cmpl	$0, %eax
	jne	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_layer_new_from_surface(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movl	-8(%rbp), %edi
	callq	gimp_image_base_type@PLT
	cmpl	$0, %eax
	je	.LBB4_12
# BB#11:                                # %if.then.9
	leaq	.L.str.8(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_12:                               # %if.end.10
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_width@PLT
	movl	%eax, -124(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_height@PLT
	movl	%eax, -128(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_format@PLT
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_15
# BB#13:                                # %land.lhs.true
	cmpl	$1, -120(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.16
	leaq	.L.str.9(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_15:                               # %if.end.17
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %r8d
	cmpl	$1, -120(%rbp)
	cmovel	%eax, %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-240(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	gimp_layer_new@PLT
	movl	%eax, -116(%rbp)
	cmpl	$-1, -116(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.21
	movl	$-1, -4(%rbp)
	jmp	.LBB4_50
.LBB4_17:                               # %if.end.22
	movl	-116(%rbp), %edi
	callq	gimp_drawable_get@PLT
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init@PLT
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_stride@PLT
	movl	%eax, -132(%rbp)
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_data@PLT
	movl	$1, %edi
	leaq	-96(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -112(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_21 Depth 2
                                        #       Child Loop BB4_23 Depth 3
                                        #     Child Loop BB4_31 Depth 2
                                        #       Child Loop BB4_33 Depth 3
	cmpq	$0, -112(%rbp)
	je	.LBB4_47
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-104(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	-132(%rbp), %esi
	imull	%esi, %edx
	movslq	%edx, %rdi
	addq	%rdi, %rax
	shll	$2, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-120(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	je	.LBB4_30
	jmp	.LBB4_51
.LBB4_51:                               # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jne	.LBB4_40
	jmp	.LBB4_20
.LBB4_20:                               # %sw.bb
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	$0, -172(%rbp)
.LBB4_21:                               # %for.cond.32
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_29
# BB#22:                                # %for.body.34
                                        #   in Loop: Header=BB4_21 Depth=2
	movq	-160(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -196(%rbp)
.LBB4_23:                               # %while.cond
                                        #   Parent Loop BB4_18 Depth=1
                                        #     Parent Loop BB4_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-196(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -196(%rbp)
	cmpl	$0, %eax
	je	.LBB4_27
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB4_23 Depth=3
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.36
                                        #   in Loop: Header=BB4_23 Depth=3
	movq	-184(%rbp), %rax
	movb	(%rax), %cl
	movq	-192(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-184(%rbp), %rax
	movb	1(%rax), %cl
	movq	-192(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-184(%rbp), %rax
	movb	2(%rax), %cl
	movq	-192(%rbp), %rax
	movb	%cl, (%rax)
# BB#26:                                # %do.end.42
                                        #   in Loop: Header=BB4_23 Depth=3
	movq	-184(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB4_23
.LBB4_27:                               # %while.end
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-132(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movl	-76(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB4_21 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_21
.LBB4_29:                               # %for.end
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_41
.LBB4_30:                               # %sw.bb.50
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	$0, -172(%rbp)
.LBB4_31:                               # %for.cond.51
                                        #   Parent Loop BB4_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_33 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_39
# BB#32:                                # %for.body.54
                                        #   in Loop: Header=BB4_31 Depth=2
	movq	-160(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -220(%rbp)
.LBB4_33:                               # %while.cond.59
                                        #   Parent Loop BB4_18 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-220(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -220(%rbp)
	cmpl	$0, %eax
	je	.LBB4_37
# BB#34:                                # %while.body.62
                                        #   in Loop: Header=BB4_33 Depth=3
	jmp	.LBB4_35
.LBB4_35:                               # %do.body.63
                                        #   in Loop: Header=BB4_33 Depth=3
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -224(%rbp)
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -228(%rbp)
	movq	-208(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -232(%rbp)
	movq	-208(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -236(%rbp)
	movl	-232(%rbp), %ecx
	shll	$8, %ecx
	movl	-236(%rbp), %edx
	addl	$1, %edx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, -256(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movb	%al, %sil
	movq	-216(%rbp), %rdi
	movb	%sil, (%rdi)
	movl	-228(%rbp), %eax
	shll	$8, %eax
	movl	-236(%rbp), %r8d
	addl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divl	%r8d
	movb	%al, %sil
	movq	-216(%rbp), %rdi
	movb	%sil, 1(%rdi)
	movl	-224(%rbp), %eax
	shll	$8, %eax
	movl	-236(%rbp), %r8d
	addl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divl	%r8d
	movb	%al, %sil
	movq	-216(%rbp), %rdi
	movb	%sil, 2(%rdi)
	movl	-236(%rbp), %eax
	movb	%al, %sil
	movq	-216(%rbp), %rdi
	movb	%sil, 3(%rdi)
# BB#36:                                # %do.end.85
                                        #   in Loop: Header=BB4_33 Depth=3
	movq	-208(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -208(%rbp)
	movq	-216(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB4_33
.LBB4_37:                               # %while.end.88
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-132(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
	movl	-76(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
# BB#38:                                # %for.inc.94
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_31
.LBB4_39:                               # %for.end.96
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_41
.LBB4_40:                               # %sw.default
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %sw.epilog
                                        #   in Loop: Header=BB4_18 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_45
# BB#42:                                # %if.then.99
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -148(%rbp)
	andl	$31, %eax
	cmpl	$0, %eax
	jne	.LBB4_44
# BB#43:                                # %if.then.107
                                        #   in Loop: Header=BB4_18 Depth=1
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movl	-124(%rbp), %eax
	imull	-128(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	-144(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_44:                               # %if.end.115
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.116
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_46
.LBB4_46:                               # %for.inc.117
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-112(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -112(%rbp)
	jmp	.LBB4_18
.LBB4_47:                               # %for.end.119
	xorps	%xmm0, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_49
# BB#48:                                # %if.then.122
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update@PLT
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB4_49:                               # %if.end.124
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach@PLT
	movl	-116(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_50:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_layer_new_from_surface, .Lfunc_end4-gimp_layer_new_from_surface
	.cfi_endproc

	.globl	gimp_layer_get_preserve_trans
	.align	16, 0x90
	.type	gimp_layer_get_preserve_trans,@function
gimp_layer_get_preserve_trans:          # @gimp_layer_get_preserve_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_layer_get_lock_alpha@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_layer_get_preserve_trans, .Lfunc_end5-gimp_layer_get_preserve_trans
	.cfi_endproc

	.globl	gimp_layer_set_preserve_trans
	.align	16, 0x90
	.type	gimp_layer_set_preserve_trans,@function
gimp_layer_set_preserve_trans:          # @gimp_layer_set_preserve_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	gimp_layer_set_lock_alpha@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_layer_set_preserve_trans, .Lfunc_end6-gimp_layer_set_preserve_trans
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_layer_new_from_pixbuf,@object # @__func__.gimp_layer_new_from_pixbuf
.L__func__.gimp_layer_new_from_pixbuf:
	.asciz	"gimp_layer_new_from_pixbuf"
	.size	.L__func__.gimp_layer_new_from_pixbuf, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_layer_new_from_pixbuf() needs an RGB image"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_layer_new_from_pixbuf() assumes that GdkPixbuf is RGB"
	.size	.L.str.3, 59

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimplayer.c"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bpp == rgn.bpp"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_layer_new_from_surface,@object # @__func__.gimp_layer_new_from_surface
.L__func__.gimp_layer_new_from_surface:
	.asciz	"gimp_layer_new_from_surface"
	.size	.L__func__.gimp_layer_new_from_surface, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"surface != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE"
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_layer_new_from_surface() needs an RGB image"
	.size	.L.str.8, 49

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp_layer_new_from_surface() assumes that surface is RGB"
	.size	.L.str.9, 58

	.hidden	_gimp_layer_new
	.hidden	_gimp_layer_copy

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
