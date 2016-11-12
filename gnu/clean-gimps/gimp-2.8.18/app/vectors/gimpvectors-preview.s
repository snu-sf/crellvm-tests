	.text
	.file	"gimpvectors-preview.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_vectors_get_new_preview
	.align	16, 0x90
	.type	gimp_vectors_get_new_preview,@function
gimp_vectors_get_new_preview:           # @gimp_vectors_get_new_preview
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	.Lgimp_vectors_get_new_preview.white, %al
	movb	%al, -81(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_height
	movl	$1, %edx
	xorl	%ecx, %ecx
	leaq	-81(%rbp), %r9
	cvtsi2sdl	%eax, %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	temp_buf_get_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -48(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB0_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-100(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_stroke_interpolate
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB0_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -104(%rbp)
.LBB0_4:                                # %for.cond.17
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB0_12
# BB#5:                                 # %for.body.19
                                        #   in Loop: Header=BB0_4 Depth=2
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-168(%rbp), %rcx
	movslq	-104(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	memcpy
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -172(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -172(%rbp)
	jl	.LBB0_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=2
	cmpl	$0, -176(%rbp)
	jl	.LBB0_10
# BB#7:                                 # %land.lhs.true.31
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-172(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_10
# BB#8:                                 # %land.lhs.true.34
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-176(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_10
# BB#9:                                 # %if.then.37
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-176(%rbp), %eax
	imull	-20(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_4 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB0_4
.LBB0_12:                               # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB0_13:                               # %if.end.43
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %for.inc.44
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_vectors_stroke_get_next
	movq	%rax, -48(%rbp)
	jmp	.LBB0_1
.LBB0_15:                               # %for.end.46
	movq	-80(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_get_new_preview, .Lfunc_end0-gimp_vectors_get_new_preview
	.cfi_endproc

	.type	.Lgimp_vectors_get_new_preview.white,@object # @gimp_vectors_get_new_preview.white
	.section	.rodata,"a",@progbits
.Lgimp_vectors_get_new_preview.white:
	.byte	255
	.size	.Lgimp_vectors_get_new_preview.white, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
