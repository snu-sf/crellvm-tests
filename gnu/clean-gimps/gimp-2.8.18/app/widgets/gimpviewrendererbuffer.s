	.text
	.file	"gimpviewrendererbuffer.bc"
	.globl	gimp_view_renderer_buffer_get_type
	.align	16, 0x90
	.type	gimp_view_renderer_buffer_get_type,@function
gimp_view_renderer_buffer_get_type:     # @gimp_view_renderer_buffer_get_type
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
	movq	gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_view_renderer_buffer_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_view_renderer_buffer_init, %rcx
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
	movabsq	$gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_view_renderer_buffer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_buffer_get_type, .Lfunc_end0-gimp_view_renderer_buffer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_buffer_class_intern_init,@function
gimp_view_renderer_buffer_class_intern_init: # @gimp_view_renderer_buffer_class_intern_init
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
	movq	%rax, gimp_view_renderer_buffer_parent_class
	cmpl	$0, GimpViewRendererBuffer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewRendererBuffer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_view_renderer_buffer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_buffer_class_intern_init, .Lfunc_end1-gimp_view_renderer_buffer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_buffer_init,@function
gimp_view_renderer_buffer_init:         # @gimp_view_renderer_buffer_init
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
	.size	gimp_view_renderer_buffer_init, .Lfunc_end2-gimp_view_renderer_buffer_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_buffer_class_init,@function
gimp_view_renderer_buffer_class_init:   # @gimp_view_renderer_buffer_class_init
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
	movabsq	$gimp_view_renderer_buffer_render, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 192(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_buffer_class_init, .Lfunc_end3-gimp_view_renderer_buffer_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_view_renderer_buffer_render,@function
gimp_view_renderer_buffer_render:       # @gimp_view_renderer_buffer_render
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
	subq	$112, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rax, %rsi
	callq	gimp_viewable_get_size
	movl	$1, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-44(%rbp), %r9
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %r10
	movl	48(%r10), %r11d
	movq	-24(%rbp), %r10
	movl	52(%r10), %ebx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%r11d, %edx
	movl	%ebx, %ecx
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_viewable_calc_preview_size
	cmpl	$0, -52(%rbp)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then.4
	movq	-72(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	temp_buf_scale
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	temp_buf_free
.LBB4_3:                                # %if.end
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	gimp_viewable_get_new_preview
	movq	%rax, -64(%rbp)
.LBB4_5:                                # %if.end.9
	cmpq	$0, -64(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_view_renderer_render_temp_buf_simple
	movq	-64(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.12
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_stock_id
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	gimp_view_renderer_render_stock
.LBB4_8:                                # %if.end.15
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_view_renderer_buffer_render, .Lfunc_end4-gimp_view_renderer_buffer_render
	.cfi_endproc

	.type	gimp_view_renderer_buffer_get_type.g_define_type_id__volatile,@object # @gimp_view_renderer_buffer_get_type.g_define_type_id__volatile
	.local	gimp_view_renderer_buffer_get_type.g_define_type_id__volatile
	.comm	gimp_view_renderer_buffer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewRendererBuffer"
	.size	.L.str, 23

	.type	gimp_view_renderer_buffer_parent_class,@object # @gimp_view_renderer_buffer_parent_class
	.local	gimp_view_renderer_buffer_parent_class
	.comm	gimp_view_renderer_buffer_parent_class,8,8
	.type	GimpViewRendererBuffer_private_offset,@object # @GimpViewRendererBuffer_private_offset
	.local	GimpViewRendererBuffer_private_offset
	.comm	GimpViewRendererBuffer_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
