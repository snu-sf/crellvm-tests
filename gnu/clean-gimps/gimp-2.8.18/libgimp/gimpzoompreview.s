	.text
	.file	"gimpzoompreview.bc"
	.globl	gimp_zoom_preview_get_type
	.align	16, 0x90
	.type	gimp_zoom_preview_get_type,@function
gimp_zoom_preview_get_type:             # @gimp_zoom_preview_get_type
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
	movq	gimp_zoom_preview_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_zoom_preview_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	gimp_zoom_preview_class_intern_init(%rip), %rdi
	movl	$288, %r8d              # imm = 0x120
	leaq	gimp_zoom_preview_init(%rip), %rcx
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
	leaq	gimp_zoom_preview_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_zoom_preview_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_zoom_preview_get_type, .Lfunc_end0-gimp_zoom_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_class_intern_init,@function
gimp_zoom_preview_class_intern_init:    # @gimp_zoom_preview_class_intern_init
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
	movq	%rax, gimp_zoom_preview_parent_class(%rip)
	cmpl	$0, GimpZoomPreview_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpZoomPreview_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_zoom_preview_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_zoom_preview_class_intern_init, .Lfunc_end1-gimp_zoom_preview_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_init,@function
gimp_zoom_preview_init:                 # @gimp_zoom_preview_init
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 280(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.19(%rip), %rsi
	leaq	gimp_zoom_preview_size_allocate(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.20(%rip), %rsi
	leaq	gimp_zoom_preview_scroll_event(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_check_size@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_check_type@PLT
	leaq	.L.str.21(%rip), %rsi
	leaq	.L.str.22(%rip), %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gimp_scrolled_preview_set_policy@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_zoom_preview_init, .Lfunc_end2-gimp_zoom_preview_init
	.cfi_endproc

	.globl	gimp_zoom_preview_new
	.align	16, 0x90
	.type	gimp_zoom_preview_new,@function
gimp_zoom_preview_new:                  # @gimp_zoom_preview_new
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_zoom_preview_get_type@PLT
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_zoom_preview_new, .Lfunc_end3-gimp_zoom_preview_new
	.cfi_endproc

	.globl	gimp_zoom_preview_new_with_model
	.align	16, 0x90
	.type	gimp_zoom_preview_new_with_model,@function
gimp_zoom_preview_new_with_model:       # @gimp_zoom_preview_new_with_model
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_new_with_model(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_18
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB4_13
.LBB4_8:                                # %if.else.3
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_11
# BB#10:                                # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_12:                               # %if.end.10
	jmp	.LBB4_13
.LBB4_13:                               # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_new_with_model(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	callq	gimp_zoom_preview_get_type@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.5(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -8(%rbp)
.LBB4_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_zoom_preview_new_with_model, .Lfunc_end4-gimp_zoom_preview_new_with_model
	.cfi_endproc

	.globl	gimp_zoom_preview_get_drawable
	.align	16, 0x90
	.type	gimp_zoom_preview_get_drawable,@function
gimp_zoom_preview_get_drawable:         # @gimp_zoom_preview_get_drawable
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_zoom_preview_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_get_drawable(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_zoom_preview_get_drawable, .Lfunc_end5-gimp_zoom_preview_get_drawable
	.cfi_endproc

	.globl	gimp_zoom_preview_get_model
	.align	16, 0x90
	.type	gimp_zoom_preview_get_model,@function
gimp_zoom_preview_get_model:            # @gimp_zoom_preview_get_model
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
	callq	gimp_zoom_preview_get_type@PLT
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
	leaq	.L__func__.gimp_zoom_preview_get_model(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_zoom_preview_get_model, .Lfunc_end6-gimp_zoom_preview_get_model
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_zoom_preview_get_factor
	.align	16, 0x90
	.type	gimp_zoom_preview_get_factor,@function
gimp_zoom_preview_get_factor:           # @gimp_zoom_preview_get_factor
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_zoom_preview_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_get_factor(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB7_15
.LBB7_14:                               # %cond.false
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB7_15
.LBB7_15:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB7_16:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_zoom_preview_get_factor, .Lfunc_end7-gimp_zoom_preview_get_factor
	.cfi_endproc

	.globl	gimp_zoom_preview_get_source
	.align	16, 0x90
	.type	gimp_zoom_preview_get_source,@function
gimp_zoom_preview_get_source:           # @gimp_zoom_preview_get_source
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_zoom_preview_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_get_source(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_22
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_17
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -32(%rbp)
	je	.LBB8_17
# BB#15:                                # %land.lhs.true.15
	cmpq	$0, -40(%rbp)
	je	.LBB8_17
# BB#16:                                # %if.then.17
	jmp	.LBB8_18
.LBB8_17:                               # %if.else.18
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_get_source(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_22
.LBB8_18:                               # %if.end.19
	jmp	.LBB8_19
.LBB8_19:                               # %do.end.20
	movq	-16(%rbp), %rdi
	callq	gimp_zoom_preview_get_drawable@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_21
# BB#20:                                # %if.then.23
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	208(%rax), %r9d
	movq	-24(%rbp), %rax
	movl	%r9d, (%rax)
	movq	-80(%rbp), %rax
	movl	212(%rax), %r9d
	movq	-32(%rbp), %rax
	movl	%r9d, (%rax)
	movq	-80(%rbp), %rdi
	callq	gimp_zoom_preview_get_source_area
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movq	-24(%rbp), %r9
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_drawable_get_sub_thumbnail_data@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB8_22
.LBB8_21:                               # %if.else.34
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
.LBB8_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_zoom_preview_get_source, .Lfunc_end8-gimp_zoom_preview_get_source
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_get_source_area,@function
gimp_zoom_preview_get_source_area:      # @gimp_zoom_preview_get_source_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	xorl	%eax, %eax
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_zoom_preview_untransform
	movq	-48(%rbp), %rcx
	cvtsi2sdl	24(%rcx), %xmm0
	divsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	cvtsi2sdl	28(%rcx), %xmm0
	divsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_zoom_preview_get_source_area, .Lfunc_end9-gimp_zoom_preview_get_source_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_class_init,@function
gimp_zoom_preview_class_init:           # @gimp_zoom_preview_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movl	$32, %ecx
	movl	%ecx, %esi
	leaq	gimp_zoom_preview_untransform(%rip), %rdi
	leaq	gimp_zoom_preview_transform(%rip), %rdx
	leaq	gimp_zoom_preview_set_cursor(%rip), %r8
	leaq	gimp_zoom_preview_draw_thumb(%rip), %r9
	leaq	gimp_zoom_preview_draw_buffer(%rip), %r10
	leaq	gimp_zoom_preview_draw(%rip), %r11
	leaq	gimp_zoom_preview_style_set(%rip), %rbx
	leaq	gimp_zoom_preview_set_property(%rip), %r14
	leaq	gimp_zoom_preview_get_property(%rip), %r15
	leaq	gimp_zoom_preview_dispose(%rip), %r12
	leaq	gimp_zoom_preview_finalize(%rip), %r13
	leaq	gimp_zoom_preview_constructed(%rip), %rcx
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r12, 40(%rax)
	movq	-56(%rbp), %rax
	movq	%r15, 32(%rax)
	movq	-56(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 280(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 824(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 840(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 832(%rax)
	movq	-72(%rbp), %rax
	movq	%r8, 848(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 864(%rax)
	movq	-72(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %ecx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer@PLT
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$235, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_zoom_preview_class_init, .Lfunc_end10-gimp_zoom_preview_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gimp_zoom_preview_constructed,@function
gimp_zoom_preview_constructed:          # @gimp_zoom_preview_constructed
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	gimp_zoom_preview_parent_class(%rip), %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_zoom_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB11_2:                               # %if.end
	callq	g_get_prgname@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	gimp_zoom_preview_counter(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, gimp_zoom_preview_counter(%rip)
	movq	%rax, %rsi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_procedural_db_get_data@PLT
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_preview_set_update@PLT
.LBB11_4:                               # %if.end.11
	leaq	.L.str.9(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	g_object_set_data_full@PLT
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	jne	.LBB11_6
# BB#5:                                 # %if.then.13
	callq	gimp_zoom_model_new@PLT
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI11_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_zoom_model_set_range@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_zoom_preview_set_model
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB11_6:                               # %if.end.18
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_zoom_preview_set_adjustments
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_zoom_preview_constructed, .Lfunc_end11-gimp_zoom_preview_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_finalize,@function
gimp_zoom_preview_finalize:             # @gimp_zoom_preview_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_zoom_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_zoom_preview_finalize, .Lfunc_end12-gimp_zoom_preview_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_dispose,@function
gimp_zoom_preview_dispose:              # @gimp_zoom_preview_dispose
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
	subq	$48, %rsp
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
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_preview_get_update@PLT
	movl	$4, %edx
	leaq	-32(%rbp), %rsi
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedural_db_set_data@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_zoom_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_zoom_preview_dispose, .Lfunc_end13-gimp_zoom_preview_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_get_property,@function
gimp_zoom_preview_get_property:         # @gimp_zoom_preview_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_3
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_drawable@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_pointer@PLT
	jmp	.LBB14_6
.LBB14_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_model@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object@PLT
	jmp	.LBB14_6
.LBB14_3:                               # %sw.default
	jmp	.LBB14_4
.LBB14_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$291, %edx              # imm = 0x123
	leaq	.L.str.15(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_zoom_preview_get_property, .Lfunc_end14-gimp_zoom_preview_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_set_property,@function
gimp_zoom_preview_set_property:         # @gimp_zoom_preview_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_7
.LBB15_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_pointer@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_zoom_preview_set_drawable
	jmp	.LBB15_6
.LBB15_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_zoom_preview_set_model
	jmp	.LBB15_6
.LBB15_3:                               # %sw.default
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movl	$315, %edx              # imm = 0x13B
	leaq	.L.str.15(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_zoom_preview_set_property, .Lfunc_end15-gimp_zoom_preview_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_style_set,@function
gimp_zoom_preview_style_set:            # @gimp_zoom_preview_style_set
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	gimp_zoom_preview_parent_class(%rip), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 280(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	gimp_zoom_preview_parent_class(%rip), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB16_2:                               # %if.end
	leaq	.L.str.18(%rip), %rsi
	leaq	-44(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-68(%rbp), %r8
	movq	-40(%rbp), %rdi
	callq	_gimp_drawable_preview_get_bounds
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.11
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height@PLT
	movl	%eax, -52(%rbp)
.LBB16_5:                               # %if.end.16
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB16_10
# BB#6:                                 # %if.then.17
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB16_8
# BB#7:                                 # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false
	movl	-44(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB16_9:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	imull	208(%rcx), %eax
	cltd
	idivl	-48(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 212(%rcx)
	jmp	.LBB16_14
.LBB16_10:                              # %if.else.22
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB16_12
# BB#11:                                # %cond.true.24
	movl	-52(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB16_13
.LBB16_12:                              # %cond.false.25
	movl	-44(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB16_13:                              # %cond.end.26
	movl	-104(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	imull	212(%rcx), %eax
	cltd
	idivl	-52(%rbp)
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
.LBB16_14:                              # %if.end.33
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	208(%rax), %esi
	movq	-24(%rbp), %rax
	movl	212(%rax), %edx
	callq	gtk_widget_set_size_request@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_zoom_preview_style_set, .Lfunc_end16-gimp_zoom_preview_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_draw,@function
gimp_zoom_preview_draw:                 # @gimp_zoom_preview_draw
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_6
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then.4
	jmp	.LBB17_6
.LBB17_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edi
	imull	-44(%rbp), %edi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB17_6:                               # %if.end.13
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_zoom_preview_draw, .Lfunc_end17-gimp_zoom_preview_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_draw_buffer,@function
gimp_zoom_preview_draw_buffer:          # @gimp_zoom_preview_draw_buffer
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	-32(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_item_get_image@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	gimp_selection_is_empty@PLT
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movl	208(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	212(%rsi), %r8d
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%r8d, -152(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-152(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	-68(%rbp), %edi
	callq	gimp_image_get_selection@PLT
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %r9
	movl	208(%r9), %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %r9
	movl	212(%r9), %eax
	movl	%eax, -100(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_zoom_preview_get_source_area
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %eax
	movl	-116(%rbp), %r10d
	movl	-120(%rbp), %r8d
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	callq	gimp_drawable_get_sub_thumbnail_data@PLT
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets@PLT
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movl	-92(%rbp), %edi
	movl	-108(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	-112(%rbp), %r8d
	addl	-128(%rbp), %r8d
	movl	-116(%rbp), %r10d
	movl	-120(%rbp), %r14d
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	%r10d, %ecx
	movl	%r14d, %r8d
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-192(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_sub_thumbnail_data@PLT
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movl	208(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	212(%rsi), %r8d
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%r8d, -232(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movl	-96(%rbp), %edx
	movq	-64(%rbp), %r9
	imull	12(%r9), %edx
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %edi
	movq	-80(%rbp), %r11
	movl	-96(%rbp), %r8d
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movl	-232(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -256(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	%r9, -264(%rbp)         # 8-byte Spill
	movl	%eax, %r9d
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	%r11, 32(%rsp)
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, 40(%rsp)
	callq	gimp_preview_area_mask@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
.LBB18_3:                               # %if.end
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_zoom_preview_draw_buffer, .Lfunc_end18-gimp_zoom_preview_draw_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_draw_thumb,@function
gimp_zoom_preview_draw_thumb:           # @gimp_zoom_preview_draw_thumb
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	_gimp_drawable_preview_area_draw_thumb
.LBB19_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_zoom_preview_draw_thumb, .Lfunc_end19-gimp_zoom_preview_draw_thumb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_zoom_preview_set_cursor,@function
gimp_zoom_preview_set_cursor:           # @gimp_zoom_preview_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_5
.LBB20_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor@PLT
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	256(%rax), %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gdk_window_set_cursor@PLT
	jmp	.LBB20_5
.LBB20_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
.LBB20_5:                               # %if.end.11
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_zoom_preview_set_cursor, .Lfunc_end20-gimp_zoom_preview_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_transform,@function
gimp_zoom_preview_transform:            # @gimp_zoom_preview_transform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor@PLT
	movsd	%xmm0, -48(%rbp)
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	208(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	184(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	subl	20(%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	212(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_zoom_preview_transform, .Lfunc_end21-gimp_zoom_preview_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_untransform,@function
gimp_zoom_preview_untransform:          # @gimp_zoom_preview_untransform
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor@PLT
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	addl	184(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movq	-40(%rbp), %rax
	cvtsi2sdl	24(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	208(%rax), %xmm2
	divsd	%xmm2, %xmm1
	divsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	cvtsi2sdl	20(%rax), %xmm0
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	addl	188(%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	movq	-40(%rbp), %rax
	cvtsi2sdl	28(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	212(%rax), %xmm2
	divsd	%xmm2, %xmm1
	divsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_zoom_preview_untransform, .Lfunc_end22-gimp_zoom_preview_untransform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_set_model,@function
gimp_zoom_preview_set_model:            # @gimp_zoom_preview_set_model
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_set_model(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB23_20
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB23_7
# BB#6:                                 # %if.then.3
	jmp	.LBB23_20
.LBB23_7:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_zoom_preview_set_adjustments(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_preview_get_controls@PLT
	movq	%rax, -48(%rbp)
# BB#8:                                 # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_box_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB23_10
# BB#9:                                 # %if.then.14
	movl	$0, -68(%rbp)
	jmp	.LBB23_15
.LBB23_10:                              # %if.else.15
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_13
# BB#11:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB23_13
# BB#12:                                # %if.then.19
	movl	$1, -68(%rbp)
	jmp	.LBB23_14
.LBB23_13:                              # %if.else.20
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB23_14:                              # %if.end.22
	jmp	.LBB23_15
.LBB23_15:                              # %if.end.23
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB23_17
# BB#16:                                # %if.then.25
	jmp	.LBB23_18
.LBB23_17:                              # %if.else.26
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_set_model(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB23_20
.LBB23_18:                              # %if.end.27
	jmp	.LBB23_19
.LBB23_19:                              # %do.end.28
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_button_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%esi, %esi
	movl	$2, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_button_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB23_20:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_zoom_preview_set_model, .Lfunc_end23-gimp_zoom_preview_set_model
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_zoom_preview_set_adjustments,@function
gimp_zoom_preview_set_adjustments:      # @gimp_zoom_preview_set_adjustments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_scrolled_preview_freeze@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	208(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	212(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	divsd	%xmm1, %xmm4
	ucomisd	-24(%rbp), %xmm4
	movsd	%xmm3, -112(%rbp)       # 8-byte Spill
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	%xmm2, -128(%rbp)       # 8-byte Spill
	jbe	.LBB24_2
# BB#1:                                 # %cond.true
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	jmp	.LBB24_3
.LBB24_2:                               # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB24_3:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	-48(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-144(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	movq	-32(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	mulsd	-64(%rbp), %xmm0
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	movsd	-24(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	divsd	%xmm1, %xmm4
	ucomisd	-24(%rbp), %xmm4
	movsd	%xmm3, -168(%rbp)       # 8-byte Spill
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	jbe	.LBB24_5
# BB#4:                                 # %cond.true.32
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false.34
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB24_6:                               # %cond.end.35
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-200(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	movq	-32(%rbp), %rdi
	callq	gimp_scrolled_preview_thaw@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_zoom_preview_set_adjustments, .Lfunc_end24-gimp_zoom_preview_set_adjustments
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
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
	je	.LBB25_2
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
.LBB25_2:                               # %entry
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
.Lfunc_end25:
	.size	g_warning, .Lfunc_end25-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_set_drawable,@function
gimp_zoom_preview_set_drawable:         # @gimp_zoom_preview_set_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_preview_set_drawable(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB26_18
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %do.end
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect@PLT
	cmpl	$0, %eax
	je	.LBB26_7
# BB#6:                                 # %if.then.4
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 20(%rcx)
	jmp	.LBB26_8
.LBB26_7:                               # %if.else.8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height@PLT
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rcx
	movl	$0, 16(%rcx)
	movq	-24(%rbp), %rcx
	movl	$0, 20(%rcx)
.LBB26_8:                               # %if.end.17
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB26_13
# BB#9:                                 # %if.then.23
	cmpl	$512, -36(%rbp)         # imm = 0x200
	jge	.LBB26_11
# BB#10:                                # %cond.true
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB26_12
.LBB26_11:                              # %cond.false
	movl	$512, %eax              # imm = 0x200
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB26_12
.LBB26_12:                              # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	imull	-44(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -48(%rbp)
	jmp	.LBB26_17
.LBB26_13:                              # %if.else.25
	cmpl	$512, -40(%rbp)         # imm = 0x200
	jge	.LBB26_15
# BB#14:                                # %cond.true.27
	movl	-40(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB26_16
.LBB26_15:                              # %cond.false.28
	movl	$512, %eax              # imm = 0x200
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB26_16
.LBB26_16:                              # %cond.end.29
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	imull	-48(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	movl	%eax, -44(%rbp)
.LBB26_17:                              # %if.end.33
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	gimp_preview_set_bounds@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.17(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	152(%rax), %rax
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set@PLT
.LBB26_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_zoom_preview_set_drawable, .Lfunc_end26-gimp_zoom_preview_set_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_size_allocate,@function
gimp_zoom_preview_size_allocate:        # @gimp_zoom_preview_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	196(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	192(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	204(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	subl	200(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB27_2
# BB#1:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB27_3:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	%edx, 208(%rax)
	movl	-48(%rbp), %edx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %edx
	jge	.LBB27_5
# BB#4:                                 # %cond.true.17
	movl	-48(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB27_6
.LBB27_5:                               # %cond.false.18
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB27_6:                               # %cond.end.20
	movl	-116(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-120(%rbp), %edx        # 4-byte Reload
	movl	%edx, 212(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_zoom_preview_set_adjustments
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_zoom_preview_size_allocate, .Lfunc_end27-gimp_zoom_preview_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_preview_scroll_event,@function
gimp_zoom_preview_scroll_event:         # @gimp_zoom_preview_scroll_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	40(%rdx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB28_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_scrolled_preview_freeze@PLT
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB28_2
	jmp	.LBB28_7
.LBB28_7:                               # %if.then
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB28_3
	jmp	.LBB28_4
.LBB28_2:                               # %sw.bb
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_model_zoom@PLT
	jmp	.LBB28_5
.LBB28_3:                               # %sw.bb.3
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_zoom_model_zoom@PLT
	jmp	.LBB28_5
.LBB28_4:                               # %sw.default
	jmp	.LBB28_5
.LBB28_5:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_scrolled_preview_thaw@PLT
.LBB28_6:                               # %if.end
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_zoom_preview_scroll_event, .Lfunc_end28-gimp_zoom_preview_scroll_event
	.cfi_endproc

	.type	gimp_zoom_preview_get_type.g_define_type_id__volatile,@object # @gimp_zoom_preview_get_type.g_define_type_id__volatile
	.local	gimp_zoom_preview_get_type.g_define_type_id__volatile
	.comm	gimp_zoom_preview_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpZoomPreview"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimp"
	.size	.L.str.1, 8

	.type	.L__func__.gimp_zoom_preview_new,@object # @__func__.gimp_zoom_preview_new
.L__func__.gimp_zoom_preview_new:
	.asciz	"gimp_zoom_preview_new"
	.size	.L__func__.gimp_zoom_preview_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable"
	.size	.L.str.3, 9

	.type	.L__func__.gimp_zoom_preview_new_with_model,@object # @__func__.gimp_zoom_preview_new_with_model
.L__func__.gimp_zoom_preview_new_with_model:
	.asciz	"gimp_zoom_preview_new_with_model"
	.size	.L__func__.gimp_zoom_preview_new_with_model, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_ZOOM_MODEL (model)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"model"
	.size	.L.str.5, 6

	.type	.L__func__.gimp_zoom_preview_get_drawable,@object # @__func__.gimp_zoom_preview_get_drawable
.L__func__.gimp_zoom_preview_get_drawable:
	.asciz	"gimp_zoom_preview_get_drawable"
	.size	.L__func__.gimp_zoom_preview_get_drawable, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_ZOOM_PREVIEW (preview)"
	.size	.L.str.6, 31

	.type	.L__func__.gimp_zoom_preview_get_model,@object # @__func__.gimp_zoom_preview_get_model
.L__func__.gimp_zoom_preview_get_model:
	.asciz	"gimp_zoom_preview_get_model"
	.size	.L__func__.gimp_zoom_preview_get_model, 28

	.type	.L__func__.gimp_zoom_preview_get_factor,@object # @__func__.gimp_zoom_preview_get_factor
.L__func__.gimp_zoom_preview_get_factor:
	.asciz	"gimp_zoom_preview_get_factor"
	.size	.L__func__.gimp_zoom_preview_get_factor, 29

	.type	.L__func__.gimp_zoom_preview_get_source,@object # @__func__.gimp_zoom_preview_get_source
.L__func__.gimp_zoom_preview_get_source:
	.asciz	"gimp_zoom_preview_get_source"
	.size	.L__func__.gimp_zoom_preview_get_source, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width != NULL && height != NULL && bpp != NULL"
	.size	.L.str.7, 47

	.type	gimp_zoom_preview_parent_class,@object # @gimp_zoom_preview_parent_class
	.local	gimp_zoom_preview_parent_class
	.comm	gimp_zoom_preview_parent_class,8,8
	.type	GimpZoomPreview_private_offset,@object # @GimpZoomPreview_private_offset
	.local	GimpZoomPreview_private_offset
	.comm	GimpZoomPreview_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s-zoom-preview-%d"
	.size	.L.str.8, 19

	.type	gimp_zoom_preview_counter,@object # @gimp_zoom_preview_counter
	.local	gimp_zoom_preview_counter
	.comm	gimp_zoom_preview_counter,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-zoom-preview-data-name"
	.size	.L.str.9, 28

	.type	.L__func__.gimp_zoom_preview_set_model,@object # @__func__.gimp_zoom_preview_set_model
.L__func__.gimp_zoom_preview_set_model:
	.asciz	"gimp_zoom_preview_set_model"
	.size	.L__func__.gimp_zoom_preview_set_model, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"priv->model == NULL"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"zoomed"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GTK_IS_BOX (box)"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpzoompreview.c"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L__func__.gimp_zoom_preview_set_drawable,@object # @__func__.gimp_zoom_preview_set_drawable
.L__func__.gimp_zoom_preview_set_drawable:
	.asciz	"gimp_zoom_preview_set_drawable"
	.size	.L__func__.gimp_zoom_preview_set_drawable, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"priv->drawable == NULL"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ratio"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"size"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"size-allocate"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"scroll-event"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"check-size"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"check-type"
	.size	.L.str.22, 11

	.hidden	_gimp_drawable_preview_get_bounds
	.hidden	_gimp_drawable_preview_area_draw_thumb

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
