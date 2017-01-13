	.text
	.file	"maze-utils.bc"
	.globl	get_colors
	.align	16, 0x90
	.type	get_colors,@function
get_colors:                             # @get_colors
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-56(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-88(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_context_get_background
	movq	-16(%rbp), %rdx
	movb	$-1, 3(%rdx)
	movq	-16(%rbp), %rdx
	movb	$-1, 2(%rdx)
	movq	-16(%rbp), %rdx
	movb	$-1, 1(%rdx)
	movq	-16(%rbp), %rdx
	movb	$-1, (%rdx)
	movq	-24(%rbp), %rdx
	movb	$-1, 3(%rdx)
	movq	-24(%rbp), %rdx
	movb	$-1, 2(%rdx)
	movq	-24(%rbp), %rdx
	movb	$-1, 1(%rdx)
	movq	-24(%rbp), %rdx
	movb	$-1, (%rdx)
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_type
	movl	%eax, %edi
	subl	$2, %eax
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:                                # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jb	.LBB0_2
	jmp	.LBB0_7
.LBB0_7:                                # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jb	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:                                # %sw.bb
	leaq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	leaq	-88(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	jmp	.LBB0_5
.LBB0_2:                                # %sw.bb.16
	leaq	-56(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar
	leaq	-88(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movb	%al, (%rcx)
	callq	gimp_rgb_luminance_uchar
	movq	-24(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_5
.LBB0_3:                                # %sw.bb.21
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_warning
	movq	-16(%rbp), %rdi
	movb	$15, (%rdi)
	movq	-24(%rbp), %rdi
	movb	$0, (%rdi)
	jmp	.LBB0_5
.LBB0_4:                                # %sw.default
	jmp	.LBB0_5
.LBB0_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_colors, .Lfunc_end0-get_colors
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.globl	drawbox
	.align	16, 0x90
	.type	drawbox,@function
drawbox:                                # @drawbox
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %ecx
	movl	%ecx, -36(%rbp)
	movl	-12(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	32(%rdi), %edx
	movl	-12(%rbp), %esi
	addl	-20(%rbp), %esi
	cmpl	%esi, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jae	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB2_3:                                # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	subl	-40(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdx
	movl	20(%rdx), %eax
	movq	-8(%rbp), %rdx
	movl	36(%rdx), %ecx
	movl	-16(%rbp), %esi
	addl	-24(%rbp), %esi
	cmpl	%esi, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jae	.LBB2_5
# BB#4:                                 # %cond.true.9
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.11
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB2_6:                                # %cond.end.13
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -48(%rbp)
	cmpl	$0, drawbox.high_size
	jne	.LBB2_8
# BB#7:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, drawbox.rowbuf
	jmp	.LBB2_11
.LBB2_8:                                # %if.else
	movl	-44(%rbp), %eax
	cmpl	drawbox.high_size, %eax
	jbe	.LBB2_10
# BB#9:                                 # %if.then.19
	movl	$1, %eax
	movl	%eax, %edx
	movq	drawbox.rowbuf, %rdi
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	callq	g_realloc_n
	movq	%rax, drawbox.rowbuf
.LBB2_10:                               # %if.end
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.22
	movl	drawbox.high_size, %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB2_13
# BB#12:                                # %cond.true.25
	movl	drawbox.high_size, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.26
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB2_14:                               # %cond.end.27
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, drawbox.high_size
	movl	$0, -52(%rbp)
.LBB2_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB2_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addq	drawbox.rowbuf, %rcx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	callq	memcpy
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-36(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_15
.LBB2_18:                               # %for.end
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -56(%rbp)
.LBB2_19:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB2_22
# BB#20:                                # %for.body.38
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	-56(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	(%rdx), %rcx
	movq	drawbox.rowbuf, %rsi
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	callq	memcpy
# BB#21:                                # %for.inc.43
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB2_19
.LBB2_22:                               # %for.end.46
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	drawbox, .Lfunc_end2-drawbox
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"maze: get_colors: Indexed image.  Using colors 15 and 0.\n"
	.size	.L.str, 58

	.type	drawbox.rowbuf,@object  # @drawbox.rowbuf
	.local	drawbox.rowbuf
	.comm	drawbox.rowbuf,8,8
	.type	drawbox.high_size,@object # @drawbox.high_size
	.local	drawbox.high_size
	.comm	drawbox.high_size,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
