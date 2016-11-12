	.text
	.file	"gimpaspectpreview.bc"
	.globl	gimp_aspect_preview_get_type
	.align	16, 0x90
	.type	gimp_aspect_preview_get_type,@function
gimp_aspect_preview_get_type:           # @gimp_aspect_preview_get_type
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
	movq	gimp_aspect_preview_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_aspect_preview_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gimp_preview_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$928, %edx              # imm = 0x3A0
	leaq	gimp_aspect_preview_class_intern_init(%rip), %rdi
	movl	$232, %r8d
	leaq	gimp_aspect_preview_init(%rip), %rcx
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
	leaq	gimp_aspect_preview_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_aspect_preview_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_aspect_preview_get_type, .Lfunc_end0-gimp_aspect_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_class_intern_init,@function
gimp_aspect_preview_class_intern_init:  # @gimp_aspect_preview_class_intern_init
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
	movq	%rax, gimp_aspect_preview_parent_class(%rip)
	cmpl	$0, GimpAspectPreview_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpAspectPreview_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_aspect_preview_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_aspect_preview_class_intern_init, .Lfunc_end1-gimp_aspect_preview_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_init,@function
gimp_aspect_preview_init:               # @gimp_aspect_preview_init
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
	leaq	.L.str.12(%rip), %rsi
	leaq	.L.str.13(%rip), %rcx
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
	.size	gimp_aspect_preview_init, .Lfunc_end2-gimp_aspect_preview_init
	.cfi_endproc

	.globl	gimp_aspect_preview_new
	.align	16, 0x90
	.type	gimp_aspect_preview_new,@function
gimp_aspect_preview_new:                # @gimp_aspect_preview_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_aspect_preview_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_aspect_preview_get_type@PLT
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_aspect_preview_new, .Lfunc_end3-gimp_aspect_preview_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_class_init,@function
gimp_aspect_preview_class_init:         # @gimp_aspect_preview_class_init
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
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %ecx
	leaq	gimp_aspect_preview_untransform(%rip), %rdx
	leaq	gimp_aspect_preview_transform(%rip), %r8
	leaq	gimp_aspect_preview_draw_buffer(%rip), %r9
	leaq	gimp_aspect_preview_draw(%rip), %r10
	leaq	gimp_aspect_preview_style_set(%rip), %r11
	leaq	gimp_aspect_preview_set_property(%rip), %rbx
	leaq	gimp_aspect_preview_get_property(%rip), %r14
	leaq	gimp_aspect_preview_dispose(%rip), %r15
	leaq	gimp_aspect_preview_constructed(%rip), %r12
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%r12, 72(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 40(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%r11, 280(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 824(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 840(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 864(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 872(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_pointer@PLT
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_aspect_preview_class_init, .Lfunc_end4-gimp_aspect_preview_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_constructed,@function
gimp_aspect_preview_constructed:        # @gimp_aspect_preview_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_aspect_preview_parent_class(%rip), %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_aspect_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	callq	g_get_prgname@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	gimp_aspect_preview_counter(%rip), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, gimp_aspect_preview_counter(%rip)
	movq	%rax, %rsi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	-24(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_procedural_db_get_data@PLT
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-24(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_preview_set_update@PLT
.LBB5_4:                                # %if.end.10
	leaq	.L.str.5(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	g_object_set_data_full@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_aspect_preview_constructed, .Lfunc_end5-gimp_aspect_preview_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_dispose,@function
gimp_aspect_preview_dispose:            # @gimp_aspect_preview_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_2
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
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_aspect_preview_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_aspect_preview_dispose, .Lfunc_end6-gimp_aspect_preview_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_get_property,@function
gimp_aspect_preview_get_property:       # @gimp_aspect_preview_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer@PLT
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$191, %edx
	leaq	.L.str.8(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_aspect_preview_get_property, .Lfunc_end7-gimp_aspect_preview_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_set_property,@function
gimp_aspect_preview_set_property:       # @gimp_aspect_preview_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_pointer@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_aspect_preview_set_drawable
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$212, %edx
	leaq	.L.str.8(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_aspect_preview_set_property, .Lfunc_end8-gimp_aspect_preview_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_style_set,@function
gimp_aspect_preview_style_set:          # @gimp_aspect_preview_style_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	gimp_aspect_preview_parent_class(%rip), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 280(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	gimp_aspect_preview_parent_class(%rip), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB9_2:                                # %if.end
	leaq	.L.str.10(%rip), %rsi
	leaq	-36(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %r8d
	jbe	.LBB9_7
# BB#3:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jae	.LBB9_5
# BB#4:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB9_6:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	208(%rcx), %eax
	movq	-32(%rbp), %rcx
	xorl	%edx, %edx
	divl	4(%rcx)
	movq	-24(%rbp), %rcx
	movl	%eax, 212(%rcx)
	jmp	.LBB9_11
.LBB9_7:                                # %if.else
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jae	.LBB9_9
# BB#8:                                 # %cond.true.21
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %cond.false.23
	movl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB9_10:                               # %cond.end.24
	movl	-80(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	212(%rcx), %eax
	movq	-32(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movq	-24(%rbp), %rcx
	movl	%eax, 208(%rcx)
.LBB9_11:                               # %if.end.33
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	208(%rax), %esi
	movq	-24(%rbp), %rax
	movl	212(%rax), %edx
	callq	gtk_widget_set_size_request@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_aspect_preview_style_set, .Lfunc_end9-gimp_aspect_preview_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_draw,@function
gimp_aspect_preview_draw:               # @gimp_aspect_preview_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_aspect_preview_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_aspect_preview_draw(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movl	208(%rsi), %edx
	movq	-8(%rbp), %rsi
	movl	212(%rsi), %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_preview_area_fill@PLT
.LBB10_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_aspect_preview_draw, .Lfunc_end10-gimp_aspect_preview_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_draw_buffer,@function
gimp_aspect_preview_draw_buffer:        # @gimp_aspect_preview_draw_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	224(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	gimp_selection_is_empty@PLT
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	208(%rsi), %ecx
	movq	-24(%rbp), %rsi
	movl	212(%rsi), %r8d
	movq	-48(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movl	-52(%rbp), %edi
	callq	gimp_image_get_selection@PLT
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %r8
	movl	208(%r8), %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %r8
	movl	212(%r8), %eax
	movl	%eax, -84(%rbp)
	movq	-48(%rbp), %r8
	movl	(%r8), %edi
	callq	gimp_drawable_get_thumbnail_data@PLT
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_drawable_get_thumbnail_data@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rcx
	movl	208(%rcx), %ecx
	movq	-24(%rbp), %rdx
	movl	212(%rdx), %r8d
	movq	-48(%rbp), %rdx
	movl	(%rdx), %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type@PLT
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdx
	movl	-80(%rbp), %edi
	movq	-48(%rbp), %rsi
	imull	12(%rsi), %edi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movq	-64(%rbp), %r9
	movl	-80(%rbp), %r10d
	movq	-152(%rbp), %r11        # 8-byte Reload
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-160(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movl	%eax, %r9d
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	-200(%rbp), %r14        # 8-byte Reload
	movq	%r14, 32(%rsp)
	movl	%r10d, 40(%rsp)
	callq	gimp_preview_area_mask@PLT
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
.LBB11_3:                               # %if.end
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_aspect_preview_draw_buffer, .Lfunc_end11-gimp_aspect_preview_draw_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_transform,@function
gimp_aspect_preview_transform:          # @gimp_aspect_preview_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	224(%rax), %rax
	movq	%rax, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	-8(%rbp), %rcx
	cvtsi2sdl	208(%rcx), %xmm1
	mulsd	%xmm1, %xmm0
	movl	4(%rax), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	212(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_aspect_preview_transform, .Lfunc_end12-gimp_aspect_preview_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_untransform,@function
gimp_aspect_preview_untransform:        # @gimp_aspect_preview_untransform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_aspect_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	224(%rax), %rax
	movq	%rax, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movl	4(%rax), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	208(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	212(%rax), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_aspect_preview_untransform, .Lfunc_end13-gimp_aspect_preview_untransform
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_aspect_preview_set_drawable,@function
gimp_aspect_preview_set_drawable:       # @gimp_aspect_preview_set_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 224(%rdi)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-16(%rbp), %rsi
	cmpl	8(%rsi), %eax
	jbe	.LBB15_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$512, 4(%rax)           # imm = 0x200
	jae	.LBB15_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	movl	$512, %eax              # imm = 0x200
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB15_4
.LBB15_4:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	imull	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	4(%rcx)
	movl	%eax, -24(%rbp)
	jmp	.LBB15_9
.LBB15_5:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$512, 8(%rax)           # imm = 0x200
	jae	.LBB15_7
# BB#6:                                 # %cond.true.11
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false.13
	movl	$512, %eax              # imm = 0x200
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB15_8
.LBB15_8:                               # %cond.end.14
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	imull	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%eax, -20(%rbp)
.LBB15_9:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	gimp_preview_set_bounds@PLT
	cmpl	$0, -24(%rbp)
	jle	.LBB15_11
# BB#10:                                # %if.then.22
	leaq	.L.str.9(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %r8d
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%r8d, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movb	$1, %al
	callq	g_object_set@PLT
.LBB15_11:                              # %if.end.29
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_aspect_preview_set_drawable, .Lfunc_end15-gimp_aspect_preview_set_drawable
	.cfi_endproc

	.type	gimp_aspect_preview_get_type.g_define_type_id__volatile,@object # @gimp_aspect_preview_get_type.g_define_type_id__volatile
	.local	gimp_aspect_preview_get_type.g_define_type_id__volatile
	.comm	gimp_aspect_preview_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAspectPreview"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimp"
	.size	.L.str.1, 8

	.type	.L__func__.gimp_aspect_preview_new,@object # @__func__.gimp_aspect_preview_new
.L__func__.gimp_aspect_preview_new:
	.asciz	"gimp_aspect_preview_new"
	.size	.L__func__.gimp_aspect_preview_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable"
	.size	.L.str.3, 9

	.type	gimp_aspect_preview_parent_class,@object # @gimp_aspect_preview_parent_class
	.local	gimp_aspect_preview_parent_class
	.comm	gimp_aspect_preview_parent_class,8,8
	.type	GimpAspectPreview_private_offset,@object # @GimpAspectPreview_private_offset
	.local	GimpAspectPreview_private_offset
	.comm	GimpAspectPreview_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s-aspect-preview-%d"
	.size	.L.str.4, 21

	.type	gimp_aspect_preview_counter,@object # @gimp_aspect_preview_counter
	.local	gimp_aspect_preview_counter
	.comm	gimp_aspect_preview_counter,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-aspect-preview-data-name"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimpaspectpreview.c"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"property"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ratio"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"size"
	.size	.L.str.10, 5

	.type	.L__func__.gimp_aspect_preview_draw,@object # @__func__.gimp_aspect_preview_draw
.L__func__.gimp_aspect_preview_draw:
	.asciz	"gimp_aspect_preview_draw"
	.size	.L__func__.gimp_aspect_preview_draw, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_ASPECT_PREVIEW (preview)"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"check-size"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"check-type"
	.size	.L.str.13, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
