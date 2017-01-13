	.text
	.file	"gimpviewrendererdrawable.bc"
	.globl	gimp_view_renderer_drawable_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_drawable_get_type,@function
gimp_view_renderer_drawable_get_type:   # @gimp_view_renderer_drawable_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_view_renderer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_view_renderer_drawable_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_drawable_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_drawable_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_drawable_get_type, .Lfunc_end0-gimp_view_renderer_drawable_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_drawable_class_intern_init,@function
gimp_view_renderer_drawable_class_intern_init: # @gimp_view_renderer_drawable_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_view_renderer_drawable_parent_class
	cmpl	$0, GimpViewRendererDrawable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererDrawable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_drawable_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_drawable_class_intern_init, .Lfunc_end1-gimp_view_renderer_drawable_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_drawable_init,@function
gimp_view_renderer_drawable_init:       # @gimp_view_renderer_drawable_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_drawable_init, .Lfunc_end2-gimp_view_renderer_drawable_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_drawable_class_init,@function
gimp_view_renderer_drawable_class_init: # @gimp_view_renderer_drawable_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_view_renderer_drawable_render, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_drawable_class_init, .Lfunc_end3-gimp_view_renderer_drawable_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_drawable_render,@function
gimp_view_renderer_drawable_render:     # @gimp_view_renderer_drawable_render
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp              # imm = 0x1F8
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
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movq	$0, -136(%rbp)
	movq	-48(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_image
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-48(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -96(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_resolution
.LBB4_2:                                # %if.end
	cmpq	$0, -80(%rbp)
	je	.LBB4_11
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_11
# BB#4:                                 # %if.then.9
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rdi
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movl	$1, %ecx
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	cmpl	%eax, %ecx
	jle	.LBB4_6
# BB#5:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rdi
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-240(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB4_7:                                # %cond.end
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-96(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rdi
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movl	$1, %ecx
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	cmpl	%eax, %ecx
	jle	.LBB4_9
# BB#8:                                 # %cond.true.36
	movl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false.37
	cvtsi2sdl	-96(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-72(%rbp), %rdi
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_10:                               # %cond.end.47
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-100(%rbp), %r9
	leaq	-104(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %esi
	movq	-48(%rbp), %r8
	movb	60(%r8), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r8d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-284(%rbp), %r11d       # 4-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%r11d, %edi
	movl	%esi, -300(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-300(%rbp), %eax        # 4-byte Reload
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-296(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-312(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	jmp	.LBB4_12
.LBB4_11:                               # %if.else
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-100(%rbp), %r9
	leaq	-104(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %esi
	movq	-48(%rbp), %r8
	movb	60(%r8), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r8d
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-316(%rbp), %r11d       # 4-byte Reload
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movl	%r11d, %edi
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-332(%rbp), %eax        # 4-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-328(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-344(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
.LBB4_12:                               # %if.end.60
	movl	-100(%rbp), %eax
	imull	-104(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-352(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	shll	$2, %ecx
	movl	-348(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB4_14
# BB#13:                                # %if.then.68
	movl	$0, -124(%rbp)
.LBB4_14:                               # %if.end.69
	cmpl	$0, -124(%rbp)
	je	.LBB4_29
# BB#15:                                # %if.then.71
	cmpq	$0, -80(%rbp)
	je	.LBB4_25
# BB#16:                                # %land.lhs.true.73
	movq	-48(%rbp), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_25
# BB#17:                                # %if.then.80
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	subl	-84(%rbp), %edx
	subl	-88(%rbp), %ecx
	movq	-80(%rbp), %rdi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movq	-80(%rbp), %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	leaq	-140(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-148(%rbp), %r8
	leaq	-152(%rbp), %r9
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	-356(%rbp), %edx        # 4-byte Reload
	movl	-360(%rbp), %ecx        # 4-byte Reload
	movl	-364(%rbp), %r10d       # 4-byte Reload
	movq	%r8, -400(%rbp)         # 8-byte Spill
	movl	%r10d, %r8d
	movl	-368(%rbp), %r11d       # 4-byte Reload
	movq	%r9, -408(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movl	-372(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-384(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-392(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	-400(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	-408(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB4_23
# BB#18:                                # %if.then.88
	movq	-48(%rbp), %rax
	cvtsi2sdl	48(%rax), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvtsi2sdl	-148(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -156(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	52(%rdi), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-424(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvtsi2sdl	-152(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -160(%rbp)
	cmpl	$1, -156(%rbp)
	jge	.LBB4_20
# BB#19:                                # %if.then.109
	movl	$1, -156(%rbp)
.LBB4_20:                               # %if.end.110
	cmpl	$1, -160(%rbp)
	jge	.LBB4_22
# BB#21:                                # %if.then.113
	movl	$1, -160(%rbp)
.LBB4_22:                               # %if.end.114
	movq	-64(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	-160(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_get_sub_preview
	movq	%rax, -136(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.116
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_preview_bytes
	movl	$1, %ecx
	xorl	%edx, %edx
	leaq	-168(%rbp), %rdi
	movl	$4, %esi
	movl	%esi, %r8d
	movl	%eax, -164(%rbp)
	movq	%rdi, %r9
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%edx, %esi
	movl	%edx, -436(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	callq	memset
	movl	-164(%rbp), %edx
	movl	-440(%rbp), %edi        # 4-byte Reload
	movl	-440(%rbp), %esi        # 4-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movq	-432(%rbp), %r9         # 8-byte Reload
	callq	temp_buf_new
	movq	%rax, -136(%rbp)
.LBB4_24:                               # %if.end.119
	jmp	.LBB4_28
.LBB4_25:                               # %if.else.120
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movl	-460(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.126
	movq	-176(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	temp_buf_scale
	movq	%rax, -136(%rbp)
	movq	-176(%rbp), %rdi
	callq	temp_buf_free
.LBB4_27:                               # %if.end.128
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.129
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.130
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -136(%rbp)
.LBB4_30:                               # %if.end.134
	cmpq	$0, -136(%rbp)
	je	.LBB4_50
# BB#31:                                # %if.then.136
	cmpq	$0, -80(%rbp)
	je	.LBB4_44
# BB#32:                                # %land.lhs.true.138
	movq	-48(%rbp), %rax
	movb	60(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_44
# BB#33:                                # %if.then.145
	cmpl	$0, -84(%rbp)
	je	.LBB4_35
# BB#34:                                # %if.then.148
	movq	-48(%rbp), %rax
	cvtsi2sdl	48(%rax), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-472(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvtsi2sdl	-84(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-136(%rbp), %rdi
	movl	%eax, 12(%rdi)
.LBB4_35:                               # %if.end.158
	cmpl	$0, -88(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.161
	movq	-48(%rbp), %rax
	cvtsi2sdl	52(%rax), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-480(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvtsi2sdl	-88(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-136(%rbp), %rdi
	movl	%eax, 16(%rdi)
.LBB4_37:                               # %if.end.171
	cmpl	$0, -124(%rbp)
	je	.LBB4_43
# BB#38:                                # %if.then.173
	movq	-136(%rbp), %rax
	cmpl	$0, 12(%rax)
	jge	.LBB4_40
# BB#39:                                # %if.then.177
	movq	-136(%rbp), %rax
	movl	$0, 12(%rax)
.LBB4_40:                               # %if.end.179
	movq	-136(%rbp), %rax
	cmpl	$0, 16(%rax)
	jge	.LBB4_42
# BB#41:                                # %if.then.183
	movq	-136(%rbp), %rax
	movl	$0, 16(%rax)
.LBB4_42:                               # %if.end.185
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.186
	jmp	.LBB4_49
.LBB4_44:                               # %if.else.187
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB4_46
# BB#45:                                # %if.then.190
	movl	$2, %eax
	movl	-92(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	%eax, -484(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-484(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-136(%rbp), %rsi
	movl	%eax, 12(%rsi)
.LBB4_46:                               # %if.end.194
	movl	-104(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB4_48
# BB#47:                                # %if.then.197
	movl	$2, %eax
	movl	-96(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-488(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-136(%rbp), %rsi
	movl	%eax, 16(%rsi)
.LBB4_48:                               # %if.end.201
	jmp	.LBB4_49
.LBB4_49:                               # %if.end.202
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_view_renderer_render_temp_buf
	movq	-136(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB4_51
.LBB4_50:                               # %if.else.203
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -184(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-184(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
.LBB4_51:                               # %if.end.206
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_drawable_render, .Lfunc_end4-gimp_view_renderer_drawable_render
	.cfi_endproc

	.type	gimp_view_renderer_drawable_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_drawable_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_drawable_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_drawable_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererDrawable"
	.size	.L.str, 25

	.type	gimp_view_renderer_drawable_parent_class,@object # @gimp_view_renderer_drawable_parent_class
	.local	gimp_view_renderer_drawable_parent_class
	.comm	gimp_view_renderer_drawable_parent_class,8,8
	.type	GimpViewRendererDrawable_private_offset,@object # @GimpViewRendererDrawable_private_offset
	.local	GimpViewRendererDrawable_private_offset
	.comm	GimpViewRendererDrawable_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
