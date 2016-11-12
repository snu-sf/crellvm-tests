	.text
	.file	"gimpbrushfactoryview.bc"
	.globl	gimp_brush_factory_view_get_type
	.align	16, 0x90
	.type	gimp_brush_factory_view_get_type,@function
gimp_brush_factory_view_get_type:       # @gimp_brush_factory_view_get_type
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
	movq	gimp_brush_factory_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_factory_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_factory_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_brush_factory_view_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_brush_factory_view_init, %rcx
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
	movabsq	$gimp_brush_factory_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_factory_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_factory_view_get_type, .Lfunc_end0-gimp_brush_factory_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_class_intern_init,@function
gimp_brush_factory_view_class_intern_init: # @gimp_brush_factory_view_class_intern_init
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
	movq	%rax, gimp_brush_factory_view_parent_class
	cmpl	$0, GimpBrushFactoryView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushFactoryView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_factory_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_factory_view_class_intern_init, .Lfunc_end1-gimp_brush_factory_view_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4641240890982006784     # double 200
.LCPI2_2:
	.quad	4662219572839972864     # double 5000
.LCPI2_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_brush_factory_view_init,@function
gimp_brush_factory_view_init:           # @gimp_brush_factory_view_init
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
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-16(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	-8(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_spin_scale_set_scale_limits
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_brush_factory_view_spacing_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_factory_view_init, .Lfunc_end2-gimp_brush_factory_view_init
	.cfi_endproc

	.globl	gimp_brush_factory_view_new
	.align	16, 0x90
	.type	gimp_brush_factory_view_new,@function
gimp_brush_factory_view_new:            # @gimp_brush_factory_view_new
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
	subq	$392, %rsp              # imm = 0x188
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
	movq	16(%rbp), %rax
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movq	%rax, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_factory_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_50
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_factory_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_50
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpl	$0, -80(%rbp)
	jle	.LBB3_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$2048, -80(%rbp)        # imm = 0x800
	jg	.LBB3_28
# BB#27:                                # %if.then.43
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_factory_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_50
.LBB3_29:                               # %if.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.46
	jmp	.LBB3_31
.LBB3_31:                               # %do.body.47
	cmpl	$0, -84(%rbp)
	jl	.LBB3_34
# BB#32:                                # %land.lhs.true.49
	cmpl	$16, -84(%rbp)
	jg	.LBB3_34
# BB#33:                                # %if.then.51
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_factory_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_50
.LBB3_35:                               # %if.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.55
	cmpq	$0, -96(%rbp)
	je	.LBB3_46
# BB#38:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.65
	movl	$0, -180(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.66
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.69
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.73
	movl	$1, -180(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.74
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_44:                               # %if.end.76
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.77
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_47
.LBB3_46:                               # %if.then.80
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_factory_view_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_50
.LBB3_48:                               # %if.end.82
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.83
	callq	gimp_brush_factory_view_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r10
	movabsq	$.L.str.14, %r11
	movabsq	$.L.str.15, %rbx
	movabsq	$.L.str.16, %r14
	movabsq	$.L.str.17, %r15
	movabsq	$.L.str.18, %r12
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	-52(%rbp), %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movl	-80(%rbp), %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	movl	-84(%rbp), %esi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-212(%rbp), %eax        # 4-byte Reload
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%r8, -264(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, 32(%rsp)
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r11, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%r14, 80(%rsp)
	movq	%r15, 88(%rsp)
	movq	%r12, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, %al
	movq	%r13, -272(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 168(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-104(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_brush_factory_view_spacing_changed, %rdi
	movq	-104(%rbp), %r9
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	gimp_container_add_handler
	movq	-104(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movq	-104(%rbp), %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_50:                               # %return
	movq	-48(%rbp), %rax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_factory_view_new, .Lfunc_end3-gimp_brush_factory_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_spacing_changed,@function
gimp_brush_factory_view_spacing_changed: # @gimp_brush_factory_view_spacing_changed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_brush
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_update, %rdx
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_brush_get_spacing
	cvtsi2sdl	%eax, %xmm0
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_update, %rdi
	movq	-16(%rbp), %r9
	movq	160(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_factory_view_spacing_changed, .Lfunc_end4-gimp_brush_factory_view_spacing_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_class_init,@function
gimp_brush_factory_view_class_init:     # @gimp_brush_factory_view_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_brush_factory_view_select_item, %rsi
	movabsq	$gimp_brush_factory_view_dispose, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_factory_view_class_init, .Lfunc_end5-gimp_brush_factory_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_dispose,@function
gimp_brush_factory_view_dispose:        # @gimp_brush_factory_view_dispose
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_factory_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_factory_view_get_data_factory
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	172(%rax), %esi
	callq	gimp_container_remove_handler
	movq	-16(%rbp), %rax
	movl	$0, 172(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_factory_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_factory_view_dispose, .Lfunc_end6-gimp_brush_factory_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_select_item,@function
gimp_brush_factory_view_select_item:    # @gimp_brush_factory_view_select_item
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_factory_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	gimp_brush_factory_view_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 824(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	gimp_brush_factory_view_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_update, %rdi
	movq	%rax, -48(%rbp)
	movl	$1, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-48(%rbp), %r8
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_brush_get_spacing
	cvtsi2sdl	%eax, %xmm0
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_update, %rdi
	movq	-24(%rbp), %r9
	movq	160(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB7_5:                                # %if.end.22
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_factory_view_select_item, .Lfunc_end7-gimp_brush_factory_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_factory_view_spacing_update,@function
gimp_brush_factory_view_spacing_update: # @gimp_brush_factory_view_spacing_update
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_changed, %rdx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gimp_brush_set_spacing
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_factory_view_spacing_changed, %rdi
	movq	-40(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB8_3:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_factory_view_spacing_update, .Lfunc_end8-gimp_brush_factory_view_spacing_update
	.cfi_endproc

	.type	gimp_brush_factory_view_get_type.g_define_type_id__volatile,@object # @gimp_brush_factory_view_get_type.g_define_type_id__volatile
	.local	gimp_brush_factory_view_get_type.g_define_type_id__volatile
	.comm	gimp_brush_factory_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushFactoryView"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_brush_factory_view_new,@object # @__func__.gimp_brush_factory_view_new
.L__func__.gimp_brush_factory_view_new:
	.asciz	"gimp_brush_factory_view_new"
	.size	.L__func__.gimp_brush_factory_view_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DATA_FACTORY (factory)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.6, 60

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"view-type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"data-factory"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view-size"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"view-border-width"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu-factory"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu-identifier"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Brushes>"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ui-path"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/brushes-popup"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"action-group"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"brushes"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"spacing-changed"
	.size	.L.str.19, 16

	.type	gimp_brush_factory_view_parent_class,@object # @gimp_brush_factory_view_parent_class
	.local	gimp_brush_factory_view_parent_class
	.comm	gimp_brush_factory_view_parent_class,8,8
	.type	GimpBrushFactoryView_private_offset,@object # @GimpBrushFactoryView_private_offset
	.local	GimpBrushFactoryView_private_offset
	.comm	GimpBrushFactoryView_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Spacing"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Percentage of width of brush"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"value-changed"
	.size	.L.str.22, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
