	.text
	.file	"gimpdrawablepreview.bc"
	.globl	gimp_drawable_preview_get_type
	.align	16, 0x90
	.type	gimp_drawable_preview_get_type,@function
gimp_drawable_preview_get_type:         # @gimp_drawable_preview_get_type
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
	movq	gimp_drawable_preview_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_drawable_preview_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gimp_scrolled_preview_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$960, %edx              # imm = 0x3C0
	leaq	gimp_drawable_preview_class_intern_init(%rip), %rdi
	movl	$288, %r8d              # imm = 0x120
	leaq	gimp_drawable_preview_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_drawable_preview_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_drawable_preview_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_preview_get_type, .Lfunc_end0-gimp_drawable_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_class_intern_init,@function
gimp_drawable_preview_class_intern_init: # @gimp_drawable_preview_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_drawable_preview_parent_class(%rip)
	cmpl	$0, GimpDrawablePreview_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpDrawablePreview_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_preview_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_preview_class_intern_init, .Lfunc_end1-gimp_drawable_preview_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_init,@function
gimp_drawable_preview_init:             # @gimp_drawable_preview_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_check_size@PLT
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_check_type@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	.L.str.15(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	-28(%rbp), %edx         # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_object_set@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_preview_init, .Lfunc_end2-gimp_drawable_preview_init
	.cfi_endproc

	.hidden	_gimp_drawable_preview_area_draw_thumb
	.globl	_gimp_drawable_preview_area_draw_thumb
	.align	16, 0x90
	.type	_gimp_drawable_preview_area_draw_thumb,@function
_gimp_drawable_preview_area_draw_thumb: # @_gimp_drawable_preview_area_draw_thumb
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$100, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__._gimp_drawable_preview_area_draw_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_40
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__._gimp_drawable_preview_area_draw_thumb(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_40
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	_gimp_drawable_preview_get_bounds
	cmpl	$0, %eax
	je	.LBB3_19
# BB#18:                                # %if.then.19
	movl	-44(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-48(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.21
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height@PLT
	movl	%eax, -24(%rbp)
.LBB3_20:                               # %if.end.25
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB3_25
# BB#21:                                # %if.then.27
	movl	-20(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB3_23
# BB#22:                                # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB3_24
.LBB3_23:                               # %cond.false
	movl	-56(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB3_24:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	imull	-60(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -64(%rbp)
	jmp	.LBB3_29
.LBB3_25:                               # %if.else.29
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB3_27
# BB#26:                                # %cond.true.31
	movl	-24(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false.32
	movl	-56(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB3_28:                               # %cond.end.33
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	imull	-64(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%eax, -60(%rbp)
.LBB3_29:                               # %if.end.37
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	_gimp_drawable_preview_get_bounds
	cmpl	$0, %eax
	je	.LBB3_31
# BB#30:                                # %if.then.40
	leaq	-60(%rbp), %r9
	leaq	-64(%rbp), %rax
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %r8d
	subl	-36(%rbp), %r8d
	movl	-48(%rbp), %r10d
	subl	-40(%rbp), %r10d
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_drawable_get_sub_thumbnail_data@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.else.45
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get_thumbnail_data@PLT
	movq	%rax, -32(%rbp)
.LBB3_32:                               # %if.end.48
	cmpq	$0, -32(%rbp)
	je	.LBB3_40
# BB#33:                                # %if.then.50
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request@PLT
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_show@PLT
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_realize@PLT
	movl	-52(%rbp), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, -148(%rbp)        # 4-byte Spill
	ja	.LBB3_38
# BB#41:                                # %if.then.50
	leaq	.LJTI3_0(%rip), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB3_34:                               # %sw.bb
	movl	$2, -92(%rbp)
	jmp	.LBB3_39
.LBB3_35:                               # %sw.bb.58
	movl	$3, -92(%rbp)
	jmp	.LBB3_39
.LBB3_36:                               # %sw.bb.59
	movl	$0, -92(%rbp)
	jmp	.LBB3_39
.LBB3_37:                               # %sw.bb.60
	movl	$1, -92(%rbp)
	jmp	.LBB3_39
.LBB3_38:                               # %sw.default
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB3_40
.LBB3_39:                               # %sw.epilog
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %esi
	imull	-60(%rbp), %esi
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB3_40:                               # %if.end.62
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_drawable_preview_area_draw_thumb, .Lfunc_end3-_gimp_drawable_preview_area_draw_thumb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI3_0:
	.long	.LBB3_34-.LJTI3_0
	.long	.LBB3_35-.LJTI3_0
	.long	.LBB3_36-.LJTI3_0
	.long	.LBB3_37-.LJTI3_0

	.text
	.hidden	_gimp_drawable_preview_get_bounds
	.globl	_gimp_drawable_preview_get_bounds
	.align	16, 0x90
	.type	_gimp_drawable_preview_get_bounds,@function
_gimp_drawable_preview_get_bounds:      # @_gimp_drawable_preview_get_bounds
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__._gimp_drawable_preview_get_bounds(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height@PLT
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_bounds@PLT
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_offsets@PLT
	movl	-68(%rbp), %edi
	subl	$8, %edi
	cmpl	$0, %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jle	.LBB4_7
# BB#6:                                 # %cond.true
	movl	-68(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	subl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_13
# BB#9:                                 # %cond.true.12
	movl	-68(%rbp), %eax
	subl	$8, %eax
	cmpl	$0, %eax
	jle	.LBB4_11
# BB#10:                                # %cond.true.15
	movl	-68(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.17
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB4_12
.LBB4_12:                               # %cond.end.18
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.20
	xorl	%eax, %eax
	subl	-60(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB4_14:                               # %cond.end.22
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-72(%rbp), %eax
	subl	$8, %eax
	cmpl	$0, %eax
	jle	.LBB4_16
# BB#15:                                # %cond.true.26
	movl	-72(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false.28
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB4_17
.LBB4_17:                               # %cond.end.29
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	subl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB4_22
# BB#18:                                # %cond.true.33
	movl	-72(%rbp), %eax
	subl	$8, %eax
	cmpl	$0, %eax
	jle	.LBB4_20
# BB#19:                                # %cond.true.36
	movl	-72(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.38
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_21:                               # %cond.end.39
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.41
	xorl	%eax, %eax
	subl	-64(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB4_23:                               # %cond.end.43
	movl	-112(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-76(%rbp), %eax
	addl	$8, %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_25
# BB#24:                                # %cond.true.46
	movl	-76(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB4_26
.LBB4_25:                               # %cond.false.48
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB4_26:                               # %cond.end.49
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-52(%rbp), %ecx
	addl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_31
# BB#27:                                # %cond.true.53
	movl	-76(%rbp), %eax
	addl	$8, %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_29
# BB#28:                                # %cond.true.56
	movl	-76(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB4_30
.LBB4_29:                               # %cond.false.58
	movl	-52(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB4_30:                               # %cond.end.59
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %cond.false.61
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_32:                               # %cond.end.63
	movl	-124(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	addl	$8, %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_34
# BB#33:                                # %cond.true.67
	movl	-80(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB4_35
.LBB4_34:                               # %cond.false.69
	movl	-56(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB4_35:                               # %cond.end.70
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_40
# BB#36:                                # %cond.true.74
	movl	-80(%rbp), %eax
	addl	$8, %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_38
# BB#37:                                # %cond.true.77
	movl	-80(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.79
	movl	-56(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB4_39:                               # %cond.end.80
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false.82
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB4_41:                               # %cond.end.84
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_drawable_preview_get_bounds, .Lfunc_end4-_gimp_drawable_preview_get_bounds
	.cfi_endproc

	.globl	gimp_drawable_preview_new
	.align	16, 0x90
	.type	gimp_drawable_preview_new,@function
gimp_drawable_preview_new:              # @gimp_drawable_preview_new
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_drawable_preview_new(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	callq	gimp_drawable_preview_get_type@PLT
	leaq	.L.str.4(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB5_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_preview_new, .Lfunc_end5-gimp_drawable_preview_new
	.cfi_endproc

	.globl	gimp_drawable_preview_get_drawable
	.align	16, 0x90
	.type	gimp_drawable_preview_get_drawable,@function
gimp_drawable_preview_get_drawable:     # @gimp_drawable_preview_get_drawable
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_drawable_preview_get_drawable(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_preview_get_drawable, .Lfunc_end6-gimp_drawable_preview_get_drawable
	.cfi_endproc

	.globl	gimp_drawable_preview_draw_region
	.align	16, 0x90
	.type	gimp_drawable_preview_draw_region,@function
gimp_drawable_preview_draw_region:      # @gimp_drawable_preview_draw_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_drawable_preview_draw_region(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_29
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_drawable_preview_draw_region(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_29
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	cmpq	$0, -16(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.19
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.20
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_drawable_preview_draw_region(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_29
.LBB7_21:                               # %if.end.21
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_24
# BB#23:                                # %if.then.24
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %esi
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	36(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	(%rax), %r9
	movq	-16(%rbp), %rax
	movl	20(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_drawable_preview_draw_area
	jmp	.LBB7_29
.LBB7_24:                               # %if.else.26
	movl	$1, %edi
	leaq	-88(%rbp), %rax
	movl	$48, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %r8
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%r8, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	memcpy@PLT
	movb	-48(%rbp), %r9b
	andb	$-2, %r9b
	movb	%r9b, -48(%rbp)
	movl	-100(%rbp), %edi        # 4-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -96(%rbp)
.LBB7_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB7_28
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-8(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	-88(%rbp), %r9
	movl	-68(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_preview_draw_area
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB7_25 Depth=1
	movq	-96(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -96(%rbp)
	jmp	.LBB7_25
.LBB7_28:                               # %for.end
	jmp	.LBB7_29
.LBB7_29:                               # %if.end.38
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_preview_draw_region, .Lfunc_end7-gimp_drawable_preview_draw_region
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_draw_area,@function
gimp_drawable_preview_draw_area:        # @gimp_drawable_preview_draw_area
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
	subq	$424, %rsp              # imm = 0x1A8
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
	movl	16(%rbp), %eax
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image@PLT
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edi
	callq	gimp_selection_is_empty@PLT
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %ecx
	movq	-88(%rbp), %rsi
	subl	184(%rsi), %ecx
	movq	-88(%rbp), %rsi
	subl	192(%rsi), %ecx
	movl	-56(%rbp), %edx
	movq	-88(%rbp), %rsi
	subl	188(%rsi), %edx
	movq	-88(%rbp), %rsi
	subl	200(%rsi), %edx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movq	-96(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edx, -296(%rbp)        # 4-byte Spill
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movl	%r9d, -304(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	movq	-72(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %edx        # 4-byte Reload
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	-296(%rbp), %edx        # 4-byte Reload
	movl	-300(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	jmp	.LBB8_6
.LBB8_2:                                # %if.else
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets@PLT
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-124(%rbp), %r8
	movq	-96(%rbp), %r9
	movl	(%r9), %edi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	gimp_drawable_mask_intersect@PLT
	cmpl	$0, %eax
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	leaq	-128(%rbp), %rax
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rsi
	movl	-112(%rbp), %edi
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	-124(%rbp), %r10d
	movl	-52(%rbp), %r11d
	movl	-56(%rbp), %ebx
	movl	-60(%rbp), %r14d
	movl	-64(%rbp), %r15d
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-336(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	-328(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect@PLT
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.19
	movl	-100(%rbp), %edi
	callq	gimp_image_get_selection@PLT
	movl	%eax, %edi
	callq	gimp_drawable_get@PLT
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -152(%rbp)
	movq	-96(%rbp), %rsi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %r10d
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init@PLT
	leaq	-248(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movl	-128(%rbp), %edx
	addl	-104(%rbp), %edx
	movl	-132(%rbp), %r8d
	addl	-108(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %r10d
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init@PLT
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-136(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movq	-96(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n@PLT
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -256(%rbp)
	movl	-136(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n@PLT
	leaq	-200(%rbp), %rdi
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rsi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect@PLT
	leaq	-248(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movl	-128(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-132(%rbp), %edx
	addl	-108(%rbp), %edx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movl	%edx, -356(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-356(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_get_rect@PLT
	movq	-88(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-128(%rbp), %ecx
	movq	-88(%rbp), %rsi
	subl	184(%rsi), %ecx
	movq	-88(%rbp), %rsi
	subl	192(%rsi), %ecx
	movl	-132(%rbp), %edx
	movq	-88(%rbp), %rsi
	subl	188(%rsi), %edx
	movq	-88(%rbp), %rsi
	subl	200(%rsi), %edx
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movq	-96(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	%edx, -384(%rbp)        # 4-byte Spill
	movl	%r8d, -388(%rbp)        # 4-byte Spill
	movl	%r9d, -392(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	movq	-256(%rbp), %rsi
	movl	-136(%rbp), %ecx
	movq	-96(%rbp), %r11
	imull	12(%r11), %ecx
	movq	-72(%rbp), %r11
	movl	-128(%rbp), %edx
	subl	-52(%rbp), %edx
	movq	-96(%rbp), %rbx
	imull	12(%rbx), %edx
	movl	%edx, %edx
	movl	%edx, %ebx
	addq	%rbx, %r11
	movl	-132(%rbp), %edx
	subl	-56(%rbp), %edx
	imull	-76(%rbp), %edx
	movslq	%edx, %rbx
	addq	%rbx, %r11
	movl	-76(%rbp), %edx
	movq	-264(%rbp), %rbx
	movl	-136(%rbp), %edi
	movq	-376(%rbp), %r14        # 8-byte Reload
	movl	%edi, -396(%rbp)        # 4-byte Spill
	movq	%r14, %rdi
	movl	-380(%rbp), %r8d        # 4-byte Reload
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	-384(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	-388(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-392(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	-408(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	-416(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, 40(%rsp)
	callq	gimp_preview_area_mask@PLT
	movq	-264(%rbp), %rdi
	callq	g_free@PLT
	movq	-256(%rbp), %rdi
	callq	g_free@PLT
	movq	-152(%rbp), %rdi
	callq	gimp_drawable_detach@PLT
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.52
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_preview_draw_area, .Lfunc_end8-gimp_drawable_preview_draw_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_class_init,@function
gimp_drawable_preview_class_init:       # @gimp_drawable_preview_class_init
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %ecx
	leaq	gimp_drawable_preview_draw_buffer(%rip), %rdx
	leaq	gimp_drawable_preview_draw_thumb(%rip), %r8
	leaq	gimp_drawable_preview_draw_original(%rip), %r9
	leaq	gimp_drawable_preview_style_set(%rip), %r10
	leaq	gimp_drawable_preview_set_property(%rip), %r11
	leaq	gimp_drawable_preview_get_property(%rip), %rbx
	leaq	gimp_drawable_preview_dispose(%rip), %r14
	leaq	gimp_drawable_preview_constructed(%rip), %r15
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%r15, 72(%rax)
	movq	-40(%rbp), %rax
	movq	%r14, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 280(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 824(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 832(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 840(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_pointer@PLT
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_preview_class_init, .Lfunc_end9-gimp_drawable_preview_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_constructed,@function
gimp_drawable_preview_constructed:      # @gimp_drawable_preview_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_drawable_preview_parent_class(%rip), %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	callq	g_get_prgname@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	gimp_drawable_preview_counter(%rip), %ecx
	addl	$1, %ecx
	movl	%ecx, gimp_drawable_preview_counter(%rip)
	movq	%rax, %rsi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	-32(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedural_db_get_data@PLT
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-24(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_preview_set_update@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_scrolled_preview_set_position@PLT
.LBB10_4:                               # %if.end.12
	leaq	.L.str.9(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	g_object_set_data_full@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_preview_constructed, .Lfunc_end10-gimp_drawable_preview_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_dispose,@function
gimp_drawable_preview_dispose:          # @gimp_drawable_preview_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	184(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	192(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	188(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	200(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_update@PLT
	movl	$12, %edx
	leaq	-40(%rbp), %rsi
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedural_db_set_data@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_preview_dispose, .Lfunc_end11-gimp_drawable_preview_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_get_property,@function
gimp_drawable_preview_get_property:     # @gimp_drawable_preview_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_preview_get_drawable@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_pointer@PLT
	jmp	.LBB12_5
.LBB12_2:                               # %sw.default
	jmp	.LBB12_3
.LBB12_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movl	$193, %edx
	leaq	.L.str.12(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB12_5
.LBB12_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_preview_get_property, .Lfunc_end12-gimp_drawable_preview_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_set_property,@function
gimp_drawable_preview_set_property:     # @gimp_drawable_preview_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB13_2
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_pointer@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_preview_set_drawable
	jmp	.LBB13_5
.LBB13_2:                               # %sw.default
	jmp	.LBB13_3
.LBB13_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movl	$214, %edx
	leaq	.L.str.12(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB13_5
.LBB13_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_preview_set_property, .Lfunc_end13-gimp_drawable_preview_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_style_set,@function
gimp_drawable_preview_style_set:        # @gimp_drawable_preview_style_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	196(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	192(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	204(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	200(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	gimp_drawable_preview_parent_class(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 280(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	gimp_drawable_preview_parent_class(%rip), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB14_2:                               # %if.end
	leaq	.L.str.13(%rip), %rsi
	leaq	-36(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rdi
	movl	-28(%rbp), %r8d
	cmpl	-36(%rbp), %r8d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	jge	.LBB14_4
# BB#3:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB14_5:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	-32(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jge	.LBB14_7
# BB#6:                                 # %cond.true.11
	movl	-32(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false.12
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB14_8:                               # %cond.end.13
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gtk_widget_set_size_request@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_preview_style_set, .Lfunc_end14-gimp_drawable_preview_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_draw_original,@function
gimp_drawable_preview_draw_original:    # @gimp_drawable_preview_draw_original
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_15
.LBB15_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	208(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	212(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	184(%rax), %edx
	movq	-8(%rbp), %rax
	movl	196(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	192(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	208(%rax), %r8d
	cmpl	%r8d, %edx
	jle	.LBB15_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	196(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	208(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB15_8
.LBB15_4:                               # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$0, 184(%rax)
	jge	.LBB15_6
# BB#5:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false.17
	movq	-8(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB15_7:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB15_8:                               # %cond.end.19
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 184(%rcx)
	movq	-8(%rbp), %rcx
	movl	188(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	204(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	200(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	212(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB15_10
# BB#9:                                 # %cond.true.27
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	200(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	212(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB15_14
.LBB15_10:                              # %cond.false.33
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	jge	.LBB15_12
# BB#11:                                # %cond.true.37
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_13
.LBB15_12:                              # %cond.false.38
	movq	-8(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB15_13:                              # %cond.end.40
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB15_14:                              # %cond.end.42
	movl	-108(%rbp), %eax        # 4-byte Reload
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movl	%eax, 188(%rdx)
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	184(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	192(%rdx), %eax
	movq	-8(%rbp), %rdx
	movl	188(%rdx), %r8d
	movq	-8(%rbp), %rdx
	addl	200(%rdx), %r8d
	movq	-8(%rbp), %rdx
	movl	208(%rdx), %r9d
	movq	-8(%rbp), %rdx
	movl	212(%rdx), %r10d
	movl	%eax, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init@PLT
	leaq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %r11
	movl	184(%r11), %eax
	movq	-8(%rbp), %r11
	addl	192(%r11), %eax
	movq	-8(%rbp), %r11
	movl	188(%r11), %ecx
	movq	-8(%rbp), %r11
	addl	200(%r11), %ecx
	movq	-8(%rbp), %r11
	movl	208(%r11), %r8d
	movq	-8(%rbp), %r11
	movl	212(%r11), %r9d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_rect@PLT
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movl	208(%rsi), %ecx
	movq	-8(%rbp), %rsi
	movl	212(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r8d, -144(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	-84(%rbp), %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	-144(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB15_15:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_preview_draw_original, .Lfunc_end15-gimp_drawable_preview_draw_original
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_draw_thumb,@function
gimp_drawable_preview_draw_thumb:       # @gimp_drawable_preview_draw_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	_gimp_drawable_preview_area_draw_thumb
.LBB16_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_drawable_preview_draw_thumb, .Lfunc_end16-gimp_drawable_preview_draw_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_draw_buffer,@function
gimp_drawable_preview_draw_buffer:      # @gimp_drawable_preview_draw_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_preview_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movl	192(%rsi), %edx
	movq	-8(%rbp), %rsi
	addl	184(%rsi), %edx
	movq	-8(%rbp), %rsi
	movl	200(%rsi), %ecx
	movq	-8(%rbp), %rsi
	addl	188(%rsi), %ecx
	movq	-8(%rbp), %rsi
	movl	208(%rsi), %r8d
	movq	-8(%rbp), %rsi
	movl	212(%rsi), %r9d
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %r10d
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%r10d, (%rsp)
	callq	gimp_drawable_preview_draw_area
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_drawable_preview_draw_buffer, .Lfunc_end17-gimp_drawable_preview_draw_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_set_drawable,@function
gimp_drawable_preview_set_drawable:     # @gimp_drawable_preview_set_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 280(%rdi)
	movq	-16(%rbp), %rdi
	callq	_gimp_drawable_preview_get_bounds
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_preview_set_bounds@PLT
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_is_indexed@PLT
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image@PLT
	leaq	-60(%rbp), %rsi
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_image_get_colormap@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_preview_area_set_colormap@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB19_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_drawable_preview_set_drawable, .Lfunc_end19-gimp_drawable_preview_set_drawable
	.cfi_endproc

	.type	gimp_drawable_preview_get_type.g_define_type_id__volatile,@object # @gimp_drawable_preview_get_type.g_define_type_id__volatile
	.local	gimp_drawable_preview_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_preview_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawablePreview"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimp"
	.size	.L.str.1, 8

	.type	.L__func__._gimp_drawable_preview_area_draw_thumb,@object # @__func__._gimp_drawable_preview_area_draw_thumb
.L__func__._gimp_drawable_preview_area_draw_thumb:
	.asciz	"_gimp_drawable_preview_area_draw_thumb"
	.size	.L__func__._gimp_drawable_preview_area_draw_thumb, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PREVIEW_AREA (area)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable != NULL"
	.size	.L.str.3, 17

	.type	.L__func__._gimp_drawable_preview_get_bounds,@object # @__func__._gimp_drawable_preview_get_bounds
.L__func__._gimp_drawable_preview_get_bounds:
	.asciz	"_gimp_drawable_preview_get_bounds"
	.size	.L__func__._gimp_drawable_preview_get_bounds, 34

	.type	.L__func__.gimp_drawable_preview_new,@object # @__func__.gimp_drawable_preview_new
.L__func__.gimp_drawable_preview_new:
	.asciz	"gimp_drawable_preview_new"
	.size	.L__func__.gimp_drawable_preview_new, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L__func__.gimp_drawable_preview_get_drawable,@object # @__func__.gimp_drawable_preview_get_drawable
.L__func__.gimp_drawable_preview_get_drawable:
	.asciz	"gimp_drawable_preview_get_drawable"
	.size	.L__func__.gimp_drawable_preview_get_drawable, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_DRAWABLE_PREVIEW (preview)"
	.size	.L.str.5, 35

	.type	.L__func__.gimp_drawable_preview_draw_region,@object # @__func__.gimp_drawable_preview_draw_region
.L__func__.gimp_drawable_preview_draw_region:
	.asciz	"gimp_drawable_preview_draw_region"
	.size	.L__func__.gimp_drawable_preview_draw_region, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"preview->drawable != NULL"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"region != NULL"
	.size	.L.str.7, 15

	.type	gimp_drawable_preview_parent_class,@object # @gimp_drawable_preview_parent_class
	.local	gimp_drawable_preview_parent_class
	.comm	gimp_drawable_preview_parent_class,8,8
	.type	GimpDrawablePreview_private_offset,@object # @GimpDrawablePreview_private_offset
	.local	GimpDrawablePreview_private_offset
	.comm	GimpDrawablePreview_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s-drawable-preview-%d"
	.size	.L.str.8, 23

	.type	gimp_drawable_preview_counter,@object # @gimp_drawable_preview_counter
	.local	gimp_drawable_preview_counter
	.comm	gimp_drawable_preview_counter,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-drawable-preview-data-name"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpdrawablepreview.c"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"size"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"check-size"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"check-type"
	.size	.L.str.15, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
