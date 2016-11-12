	.text
	.file	"gimpviewrendererimage.bc"
	.globl	gimp_view_renderer_image_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_image_get_type,@function
gimp_view_renderer_image_get_type:      # @gimp_view_renderer_image_get_type
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
	movq	gimp_view_renderer_image_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_image_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_view_renderer_image_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_view_renderer_image_init, %rcx
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
	movabsq	$gimp_view_renderer_image_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_image_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_image_get_type, .Lfunc_end0-gimp_view_renderer_image_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_image_class_intern_init,@function
gimp_view_renderer_image_class_intern_init: # @gimp_view_renderer_image_class_intern_init
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
	movq	%rax, gimp_view_renderer_image_parent_class
	cmpl	$0, GimpViewRendererImage_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererImage_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_image_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_image_class_intern_init, .Lfunc_end1-gimp_view_renderer_image_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_image_init,@function
gimp_view_renderer_image_init:          # @gimp_view_renderer_image_init
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
	movq	-8(%rbp), %rdi
	movl	$-1, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_image_init, .Lfunc_end2-gimp_view_renderer_image_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_image_class_init,@function
gimp_view_renderer_image_class_init:    # @gimp_view_renderer_image_class_init
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
	movabsq	$gimp_view_renderer_image_render, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_image_class_init, .Lfunc_end3-gimp_view_renderer_image_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_image_render,@function
gimp_view_renderer_image_render:        # @gimp_view_renderer_image_render
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_image_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$-1, 152(%rax)
	je	.LBB4_3
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	152(%rax), %esi
	callq	gimp_image_get_component_visible
	cmpl	$0, %eax
	je	.LBB4_20
# BB#2:                                 # %land.lhs.true
	movl	$5, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_component_visible
	cmpl	$0, %eax
	je	.LBB4_20
.LBB4_3:                                # %if.then
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	$0, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	leaq	-60(%rbp), %r9
	leaq	-64(%rbp), %rdx
	leaq	-84(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %ecx
	movq	-24(%rbp), %rdi
	movl	52(%rdi), %r8d
	movq	-24(%rbp), %rdi
	movb	60(%rdi), %r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-140(%rbp), %edi        # 4-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-152(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	cmpl	$0, -84(%rbp)
	je	.LBB4_7
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then.17
	movq	-104(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	temp_buf_scale
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rdi
	callq	temp_buf_free
.LBB4_6:                                # %if.end
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -96(%rbp)
.LBB4_8:                                # %if.end.22
	cmpq	$0, -96(%rbp)
	je	.LBB4_19
# BB#9:                                 # %if.then.24
	movl	$-1, -108(%rbp)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jg	.LBB4_11
# BB#10:                                # %lor.lhs.false.27
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jle	.LBB4_12
.LBB4_11:                               # %if.then.30
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	callq	temp_buf_scale
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rdi
	callq	temp_buf_free
	movq	-120(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB4_12:                               # %if.end.35
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jge	.LBB4_14
# BB#13:                                # %if.then.38
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edx
	subl	-60(%rbp), %edx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-184(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-96(%rbp), %rcx
	movl	%eax, 12(%rcx)
.LBB4_14:                               # %if.end.40
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	52(%rcx), %eax
	jge	.LBB4_16
# BB#15:                                # %if.then.43
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	52(%rcx), %edx
	subl	-64(%rbp), %edx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-188(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-96(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB4_16:                               # %if.end.47
	movq	-40(%rbp), %rax
	cmpl	$-1, 152(%rax)
	je	.LBB4_18
# BB#17:                                # %if.then.50
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	152(%rax), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -108(%rbp)
.LBB4_18:                               # %if.end.53
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-108(%rbp), %edx
	callq	gimp_view_renderer_render_temp_buf
	movq	-96(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB4_29
.LBB4_19:                               # %if.end.54
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.55
	movq	-40(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	ja	.LBB4_27
# BB#30:                                # %if.end.55
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_21:                               # %sw.bb
	movabsq	$.L.str.1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_22:                               # %sw.bb.57
	movabsq	$.L.str.2, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_23:                               # %sw.bb.58
	movabsq	$.L.str.3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_24:                               # %sw.bb.59
	movabsq	$.L.str.4, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_25:                               # %sw.bb.60
	movabsq	$.L.str.5, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_26:                               # %sw.bb.61
	movabsq	$.L.str.6, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_28
.LBB4_27:                               # %sw.default
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -56(%rbp)
.LBB4_28:                               # %sw.epilog
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
.LBB4_29:                               # %return
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_image_render, .Lfunc_end4-gimp_view_renderer_image_render
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_21
	.quad	.LBB4_22
	.quad	.LBB4_23
	.quad	.LBB4_24
	.quad	.LBB4_25
	.quad	.LBB4_26

	.type	gimp_view_renderer_image_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_image_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_image_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_image_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererImage"
	.size	.L.str, 22

	.type	gimp_view_renderer_image_parent_class,@object # @gimp_view_renderer_image_parent_class
	.local	gimp_view_renderer_image_parent_class
	.comm	gimp_view_renderer_image_parent_class,8,8
	.type	GimpViewRendererImage_private_offset,@object # @GimpViewRendererImage_private_offset
	.local	GimpViewRendererImage_private_offset
	.comm	GimpViewRendererImage_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-channel-red"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-channel-green"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-channel-blue"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-channel-gray"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-channel-indexed"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-channel-alpha"
	.size	.L.str.6, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
