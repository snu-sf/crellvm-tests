	.text
	.file	"gimpviewabledialog.bc"
	.globl	gimp_viewable_dialog_get_type
	.align	16, 0x90
	.type	gimp_viewable_dialog_get_type,@function
gimp_viewable_dialog_get_type:          # @gimp_viewable_dialog_get_type
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
	movq	gimp_viewable_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_viewable_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$984, %edx              # imm = 0x3D8
	movabsq	$gimp_viewable_dialog_class_intern_init, %rdi
	movl	$304, %r8d              # imm = 0x130
	movabsq	$gimp_viewable_dialog_init, %rcx
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
	movabsq	$gimp_viewable_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_viewable_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_viewable_dialog_get_type, .Lfunc_end0-gimp_viewable_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_class_intern_init,@function
gimp_viewable_dialog_class_intern_init: # @gimp_viewable_dialog_class_intern_init
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
	movq	%rax, gimp_viewable_dialog_parent_class
	cmpl	$0, GimpViewableDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewableDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_viewable_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_viewable_dialog_class_intern_init, .Lfunc_end1-gimp_viewable_dialog_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4605681218924226942     # double 0.83333333333329995
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
.LCPI2_2:
	.quad	4608083138725491507     # double 1.2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_viewable_dialog_init,@function
gimp_viewable_dialog_init:              # @gimp_viewable_dialog_init
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_image_new
	movq	-8(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	%rax, 288(%rsi)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %edx
	movl	$700, %ecx              # imm = 0x2BC
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_label_get_type
	movabsq	$.L.str.23, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.24, %rdx
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movabsq	$.L.str.25, %rcx
	movl	$3, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	296(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	callq	gtk_widget_show
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_viewable_dialog_init, .Lfunc_end2-gimp_viewable_dialog_init
	.cfi_endproc

	.globl	gimp_viewable_dialog_new
	.align	16, 0x90
	.type	gimp_viewable_dialog_new,@function
gimp_viewable_dialog_new:               # @gimp_viewable_dialog_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$776, %rsp              # imm = 0x308
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	testb	%al, %al
	movaps	%xmm7, -432(%rbp)       # 16-byte Spill
	movaps	%xmm6, -448(%rbp)       # 16-byte Spill
	movaps	%xmm5, -464(%rbp)       # 16-byte Spill
	movaps	%xmm4, -480(%rbp)       # 16-byte Spill
	movaps	%xmm3, -496(%rbp)       # 16-byte Spill
	movaps	%xmm2, -512(%rbp)       # 16-byte Spill
	movaps	%xmm1, -528(%rbp)       # 16-byte Spill
	movaps	%xmm0, -544(%rbp)       # 16-byte Spill
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%r9, -560(%rbp)         # 8-byte Spill
	movq	%r8, -568(%rbp)         # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	je	.LBB3_54
# BB#53:                                # %entry
	movaps	-544(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -368(%rbp)
	movaps	-528(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -352(%rbp)
	movaps	-512(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -336(%rbp)
	movaps	-496(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -320(%rbp)
	movaps	-480(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -304(%rbp)
	movaps	-464(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -288(%rbp)
	movaps	-448(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -272(%rbp)
	movaps	-432(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -256(%rbp)
.LBB3_54:                               # %entry
	movq	32(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	-584(%rbp), %r9         # 8-byte Reload
	movq	-592(%rbp), %r10        # 8-byte Reload
	movq	-552(%rbp), %r11        # 8-byte Reload
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%rax, -120(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -180(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -180(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_52
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	jmp	.LBB3_14
.LBB3_14:                               # %do.body.12
	cmpq	$0, -64(%rbp)
	je	.LBB3_23
# BB#15:                                # %lor.lhs.false.14
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB3_17
# BB#16:                                # %if.then.23
	movl	$0, -204(%rbp)
	jmp	.LBB3_22
.LBB3_17:                               # %if.else.24
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_20
# BB#18:                                # %land.lhs.true.27
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB3_20
# BB#19:                                # %if.then.31
	movl	$1, -204(%rbp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.32
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB3_21:                               # %if.end.34
	jmp	.LBB3_22
.LBB3_22:                               # %if.end.35
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB3_24
.LBB3_23:                               # %if.then.38
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_52
.LBB3_25:                               # %if.end.40
	jmp	.LBB3_26
.LBB3_26:                               # %do.end.41
	jmp	.LBB3_27
.LBB3_27:                               # %do.body.42
	cmpq	$0, -72(%rbp)
	je	.LBB3_29
# BB#28:                                # %if.then.44
	jmp	.LBB3_30
.LBB3_29:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_52
.LBB3_30:                               # %if.end.46
	jmp	.LBB3_31
.LBB3_31:                               # %do.end.47
	jmp	.LBB3_32
.LBB3_32:                               # %do.body.48
	cmpq	$0, -80(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.50
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.51
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_52
.LBB3_35:                               # %if.end.52
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.53
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.54
	cmpq	$0, -104(%rbp)
	je	.LBB3_46
# BB#38:                                # %lor.lhs.false.56
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.65
	movl	$0, -228(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.66
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.69
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.73
	movl	$1, -228(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.74
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB3_44:                               # %if.end.76
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.77
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB3_47
.LBB3_46:                               # %if.then.80
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_52
.LBB3_48:                               # %if.end.82
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.83
	cmpq	$0, -56(%rbp)
	jne	.LBB3_51
# BB#50:                                # %if.then.85
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	g_warning
.LBB3_51:                               # %if.end.86
	callq	gimp_viewable_dialog_get_type
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %r8
	movabsq	$.L.str.14, %r10
	movabsq	$.L.str.15, %r11
	movabsq	$.L.str.16, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movq	-56(%rbp), %r12
	movq	-64(%rbp), %r13
	movq	-72(%rbp), %r14
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	%r8, -672(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	%r14, (%rsp)
	movq	-664(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-608(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-656(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-616(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	-672(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%r11, 72(%rsp)
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rbx, 88(%rsp)
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, %al
	movq	%r15, -680(%rbp)        # 8-byte Spill
	callq	g_object_new
	leaq	-160(%rbp), %rcx
	movq	%rax, -128(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	40(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$48, (%rcx)
	movq	-128(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_add_buttons_valist
	leaq	-160(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_52:                               # %return
	movq	-48(%rbp), %rax
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_viewable_dialog_new, .Lfunc_end3-gimp_viewable_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	gimp_viewable_dialog_set_viewable
	.align	16, 0x90
	.type	gimp_viewable_dialog_set_viewable,@function
gimp_viewable_dialog_set_viewable:      # @gimp_viewable_dialog_set_viewable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_viewable_dialog_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_set_viewable, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_56
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_set_viewable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_56
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	jmp	.LBB5_26
.LBB5_26:                               # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB5_35
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_29
# BB#28:                                # %if.then.51
	movl	$0, -92(%rbp)
	jmp	.LBB5_34
.LBB5_29:                               # %if.else.52
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_32
# BB#30:                                # %land.lhs.true.55
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_32
# BB#31:                                # %if.then.59
	movl	$1, -92(%rbp)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.60
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_33:                               # %if.end.62
	jmp	.LBB5_34
.LBB5_34:                               # %if.end.63
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_36
.LBB5_35:                               # %if.then.66
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.67
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_dialog_set_viewable, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_56
.LBB5_37:                               # %if.end.68
	jmp	.LBB5_38
.LBB5_38:                               # %do.end.69
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB5_44
# BB#39:                                # %if.then.72
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_41
# BB#40:                                # %if.then.79
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	jmp	.LBB5_56
.LBB5_41:                               # %if.end.83
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_destroy
	cmpq	$0, -104(%rbp)
	je	.LBB5_43
# BB#42:                                # %if.then.86
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_viewable_dialog_name_changed, %rdx
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_viewable_dialog_close, %rdi
	movq	-104(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB5_43:                               # %if.end.89
	jmp	.LBB5_44
.LBB5_44:                               # %if.end.90
	cmpq	$0, -16(%rbp)
	je	.LBB5_56
# BB#45:                                # %if.then.92
	movabsq	$gimp_viewable_dialog_name_changed, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	168(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_parent
	movl	$32, %edx
	movl	$1, %r8d
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%r8d, %ecx
	callq	gimp_view_new
	movq	-8(%rbp), %rsi
	movq	%rax, 280(%rsi)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	-8(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	addq	$280, %rsi              # imm = 0x118
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_viewable_dialog_name_changed
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB5_47
# BB#46:                                # %if.then.116
	movl	$0, -132(%rbp)
	jmp	.LBB5_52
.LBB5_47:                               # %if.else.117
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_50
# BB#48:                                # %land.lhs.true.120
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB5_50
# BB#49:                                # %if.then.124
	movl	$1, -132(%rbp)
	jmp	.LBB5_51
.LBB5_50:                               # %if.else.125
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB5_51:                               # %if.end.127
	jmp	.LBB5_52
.LBB5_52:                               # %if.end.128
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB5_54
# BB#53:                                # %if.then.131
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_viewable_dialog_close, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB5_55
.LBB5_54:                               # %if.else.133
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_viewable_dialog_close, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB5_55:                               # %if.end.135
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.136
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_viewable_dialog_set_viewable, .Lfunc_end5-gimp_viewable_dialog_set_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_name_changed,@function
gimp_viewable_dialog_name_changed:      # @gimp_viewable_dialog_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.6
	movl	$1, -44(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_get_display_name
	movabsq	$.L.str.26, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB6_9:                                # %if.end.23
	movq	-16(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_viewable_dialog_name_changed, .Lfunc_end6-gimp_viewable_dialog_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_close,@function
gimp_viewable_dialog_close:             # @gimp_viewable_dialog_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.27, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_viewable_dialog_close, .Lfunc_end7-gimp_viewable_dialog_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_class_init,@function
gimp_viewable_dialog_class_init:        # @gimp_viewable_dialog_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_viewable_dialog_set_property, %rsi
	movabsq	$gimp_viewable_dialog_get_property, %rdi
	movabsq	$gimp_viewable_dialog_dispose, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$234, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$230, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$4, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_viewable_dialog_class_init, .Lfunc_end8-gimp_viewable_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_dispose,@function
gimp_viewable_dialog_dispose:           # @gimp_viewable_dialog_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_viewable_dialog_set_viewable
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_viewable_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_viewable_dialog_dispose, .Lfunc_end9-gimp_viewable_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_get_property,@function
gimp_viewable_dialog_get_property:      # @gimp_viewable_dialog_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_10
.LBB10_10:                              # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_5
	jmp	.LBB10_6
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpq	$0, 280(%rax)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	je	.LBB10_3
# BB#2:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_4
.LBB10_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_4
.LBB10_4:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_9
.LBB10_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_9
.LBB10_6:                               # %sw.default
	jmp	.LBB10_7
.LBB10_7:                               # %do.body
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
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$224, %edx
	movabsq	$.L.str.22, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB10_9
.LBB10_9:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_viewable_dialog_get_property, .Lfunc_end10-gimp_viewable_dialog_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_dialog_set_property,@function
gimp_viewable_dialog_set_property:      # @gimp_viewable_dialog_set_property
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB11_8
# BB#12:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	264(%rdi), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_dialog_set_viewable
	jmp	.LBB11_11
.LBB11_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpq	$0, 280(%rax)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	je	.LBB11_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB11_5
.LBB11_5:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_value_get_object
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_viewable_dialog_set_viewable
	jmp	.LBB11_11
.LBB11_6:                               # %sw.bb.8
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movl	$3, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_image_set_from_stock
	jmp	.LBB11_11
.LBB11_7:                               # %sw.bb.12
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	jmp	.LBB11_11
.LBB11_8:                               # %sw.default
	jmp	.LBB11_9
.LBB11_9:                               # %do.body
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
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$198, %edx
	movabsq	$.L.str.22, %rcx
	movl	-164(%rbp), %r8d        # 4-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB11_11
.LBB11_11:                              # %sw.epilog
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_viewable_dialog_set_property, .Lfunc_end11-gimp_viewable_dialog_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_6
	.quad	.LBB11_7

	.type	gimp_viewable_dialog_get_type.g_define_type_id__volatile,@object # @gimp_viewable_dialog_get_type.g_define_type_id__volatile
	.local	gimp_viewable_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_viewable_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewableDialog"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_viewable_dialog_new,@object # @__func__.gimp_viewable_dialog_new
.L__func__.gimp_viewable_dialog_new:
	.asciz	"gimp_viewable_dialog_new"
	.size	.L__func__.gimp_viewable_dialog_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"viewable == NULL || GIMP_IS_VIEWABLE (viewable)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"role != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.6, 41

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Use of GimpViewableDialog with a NULL viewable is depecrated!"
	.size	.L.str.7, 62

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"viewable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"title"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"role"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"help-func"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"help-id"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"stock-id"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"description"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"parent"
	.size	.L.str.16, 7

	.type	.L__func__.gimp_viewable_dialog_set_viewable,@object # @__func__.gimp_viewable_dialog_set_viewable
.L__func__.gimp_viewable_dialog_set_viewable:
	.asciz	"gimp_viewable_dialog_set_viewable"
	.size	.L__func__.gimp_viewable_dialog_set_viewable, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_VIEWABLE_DIALOG (dialog)"
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"removed"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"disconnect"
	.size	.L.str.19, 11

	.type	gimp_viewable_dialog_parent_class,@object # @gimp_viewable_dialog_parent_class
	.local	gimp_viewable_dialog_parent_class
	.comm	gimp_viewable_dialog_parent_class,8,8
	.type	GimpViewableDialog_private_offset,@object # @GimpViewableDialog_private_offset
	.local	GimpViewableDialog_private_offset
	.comm	GimpViewableDialog_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimpviewabledialog.c"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"xalign"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"yalign"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ellipsize"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s-%d (%s)"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"close"
	.size	.L.str.27, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
