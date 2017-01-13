	.text
	.file	"gimpheal.bc"
	.globl	gimp_heal_get_type
	.align	16, 0x90
	.type	gimp_heal_get_type,@function
gimp_heal_get_type:                     # @gimp_heal_get_type
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
	movq	gimp_heal_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_heal_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_source_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$264, %edx              # imm = 0x108
	movabsq	$gimp_heal_class_intern_init, %rdi
	movl	$6552, %r8d             # imm = 0x1998
	movabsq	$gimp_heal_init, %rcx
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
	movabsq	$gimp_heal_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_heal_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_heal_get_type, .Lfunc_end0-gimp_heal_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_class_intern_init,@function
gimp_heal_class_intern_init:            # @gimp_heal_class_intern_init
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
	movq	%rax, gimp_heal_parent_class
	cmpl	$0, GimpHeal_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpHeal_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_heal_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_heal_class_intern_init, .Lfunc_end1-gimp_heal_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_init,@function
gimp_heal_init:                         # @gimp_heal_init
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
	.size	gimp_heal_init, .Lfunc_end2-gimp_heal_init
	.cfi_endproc

	.globl	gimp_heal_register
	.align	16, 0x90
	.type	gimp_heal_register,@function
gimp_heal_register:                     # @gimp_heal_register
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_heal_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_source_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.3, %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_heal_register, .Lfunc_end3-gimp_heal_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_class_init,@function
gimp_heal_class_init:                   # @gimp_heal_class_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_heal_motion, %rsi
	movabsq	$gimp_heal_start, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 256(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_heal_class_init, .Lfunc_end4-gimp_heal_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_start,@function
gimp_heal_start:                        # @gimp_heal_start
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_source_core_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	gimp_heal_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.end
	movq	-56(%rbp), %rax
	cmpl	$0, 6480(%rax)
	jne	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB5_5
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.end.11
	movl	$1, -4(%rbp)
.LBB5_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_heal_start, .Lfunc_end5-gimp_heal_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_heal_motion,@function
gimp_heal_motion:                       # @gimp_heal_motion
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$752, %rsp              # imm = 0x2F0
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movl	64(%rbp), %eax
	movl	56(%rbp), %r10d
	movl	48(%rbp), %r11d
	movl	40(%rbp), %ebx
	movq	32(%rbp), %r14
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	%r12d, -92(%rbp)
	movl	%r15d, -96(%rbp)
	movq	%r14, -104(%rbp)
	movl	%ebx, -108(%rbp)
	movl	%r11d, -112(%rbp)
	movl	%r10d, -116(%rbp)
	movl	%eax, -120(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	368(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$4, %esi
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -456(%rbp)
	movq	-152(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movsd	-456(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	%xmm0, -464(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_brush_core_get_brush_mask
	movq	%rax, -448(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -436(%rbp)
	movq	-88(%rbp), %rcx
	movl	44(%rcx), %edi
	movq	-88(%rbp), %rcx
	movl	48(%rcx), %esi
	cmpl	$0, -436(%rbp)
	movl	%edi, -548(%rbp)        # 4-byte Spill
	movl	%esi, -552(%rbp)        # 4-byte Spill
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -436(%rbp)
	jne	.LBB6_3
.LBB6_2:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB6_10
.LBB6_3:                                # %cond.false
	cmpl	$2, -436(%rbp)
	je	.LBB6_5
# BB#4:                                 # %lor.lhs.false.19
	cmpl	$3, -436(%rbp)
	jne	.LBB6_6
.LBB6_5:                                # %cond.true.21
	movl	$3, %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB6_9
.LBB6_6:                                # %cond.false.22
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -561(%rbp)         # 1-byte Spill
	je	.LBB6_8
# BB#7:                                 # %lor.rhs
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -561(%rbp)         # 1-byte Spill
.LBB6_8:                                # %lor.end
	movb	-561(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -560(%rbp)        # 4-byte Spill
.LBB6_9:                                # %cond.end
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB6_10:                               # %cond.end.26
	movl	-556(%rbp), %eax        # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB6_12
# BB#11:                                # %cond.true.29
	movl	$4, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB6_75
.LBB6_12:                               # %cond.false.30
	cmpl	$0, -436(%rbp)
	je	.LBB6_14
# BB#13:                                # %lor.lhs.false.32
	cmpl	$1, -436(%rbp)
	jne	.LBB6_15
.LBB6_14:                               # %cond.true.34
	movl	$1, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB6_22
.LBB6_15:                               # %cond.false.35
	cmpl	$2, -436(%rbp)
	je	.LBB6_17
# BB#16:                                # %lor.lhs.false.37
	cmpl	$3, -436(%rbp)
	jne	.LBB6_18
.LBB6_17:                               # %cond.true.39
	movl	$3, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB6_21
.LBB6_18:                               # %cond.false.40
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -577(%rbp)         # 1-byte Spill
	je	.LBB6_20
# BB#19:                                # %lor.rhs.42
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -577(%rbp)         # 1-byte Spill
.LBB6_20:                               # %lor.end.44
	movb	-577(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
.LBB6_21:                               # %cond.end.46
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB6_22:                               # %cond.end.48
	movl	-572(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB6_24
# BB#23:                                # %cond.true.51
	movl	$3, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB6_74
.LBB6_24:                               # %cond.false.52
	cmpl	$0, -436(%rbp)
	je	.LBB6_26
# BB#25:                                # %lor.lhs.false.54
	cmpl	$1, -436(%rbp)
	jne	.LBB6_27
.LBB6_26:                               # %cond.true.56
	movl	$1, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB6_34
.LBB6_27:                               # %cond.false.57
	cmpl	$2, -436(%rbp)
	je	.LBB6_29
# BB#28:                                # %lor.lhs.false.59
	cmpl	$3, -436(%rbp)
	jne	.LBB6_30
.LBB6_29:                               # %cond.true.61
	movl	$3, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB6_33
.LBB6_30:                               # %cond.false.62
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -593(%rbp)         # 1-byte Spill
	je	.LBB6_32
# BB#31:                                # %lor.rhs.64
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -593(%rbp)         # 1-byte Spill
.LBB6_32:                               # %lor.end.66
	movb	-593(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -592(%rbp)        # 4-byte Spill
.LBB6_33:                               # %cond.end.68
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB6_34:                               # %cond.end.70
	movl	-588(%rbp), %eax        # 4-byte Reload
	cmpl	$3, %eax
	jne	.LBB6_36
# BB#35:                                # %cond.true.73
	movl	$2, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB6_73
.LBB6_36:                               # %cond.false.74
	cmpl	$0, -436(%rbp)
	je	.LBB6_38
# BB#37:                                # %lor.lhs.false.76
	cmpl	$1, -436(%rbp)
	jne	.LBB6_39
.LBB6_38:                               # %cond.true.78
	movl	$1, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB6_46
.LBB6_39:                               # %cond.false.79
	cmpl	$2, -436(%rbp)
	je	.LBB6_41
# BB#40:                                # %lor.lhs.false.81
	cmpl	$3, -436(%rbp)
	jne	.LBB6_42
.LBB6_41:                               # %cond.true.83
	movl	$3, %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	jmp	.LBB6_45
.LBB6_42:                               # %cond.false.84
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -609(%rbp)         # 1-byte Spill
	je	.LBB6_44
# BB#43:                                # %lor.rhs.86
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -609(%rbp)         # 1-byte Spill
.LBB6_44:                               # %lor.end.88
	movb	-609(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -608(%rbp)        # 4-byte Spill
.LBB6_45:                               # %cond.end.90
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB6_46:                               # %cond.end.92
	movl	-604(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB6_48
# BB#47:                                # %cond.true.95
	movl	$1, %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB6_72
.LBB6_48:                               # %cond.false.96
	cmpl	$0, -436(%rbp)
	je	.LBB6_50
# BB#49:                                # %lor.lhs.false.98
	cmpl	$1, -436(%rbp)
	jne	.LBB6_51
.LBB6_50:                               # %cond.true.100
	movl	$1, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB6_58
.LBB6_51:                               # %cond.false.101
	cmpl	$2, -436(%rbp)
	je	.LBB6_53
# BB#52:                                # %lor.lhs.false.103
	cmpl	$3, -436(%rbp)
	jne	.LBB6_54
.LBB6_53:                               # %cond.true.105
	movl	$3, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB6_57
.LBB6_54:                               # %cond.false.106
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -625(%rbp)         # 1-byte Spill
	je	.LBB6_56
# BB#55:                                # %lor.rhs.108
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -625(%rbp)         # 1-byte Spill
.LBB6_56:                               # %lor.end.110
	movb	-625(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -624(%rbp)        # 4-byte Spill
.LBB6_57:                               # %cond.end.112
	movl	-624(%rbp), %eax        # 4-byte Reload
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB6_58:                               # %cond.end.114
	movl	-620(%rbp), %eax        # 4-byte Reload
	cmpl	$5, %eax
	jne	.LBB6_60
# BB#59:                                # %cond.true.117
	movl	$2, %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jmp	.LBB6_71
.LBB6_60:                               # %cond.false.118
	cmpl	$0, -436(%rbp)
	je	.LBB6_62
# BB#61:                                # %lor.lhs.false.120
	cmpl	$1, -436(%rbp)
	jne	.LBB6_63
.LBB6_62:                               # %cond.true.122
	movl	$1, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB6_70
.LBB6_63:                               # %cond.false.123
	cmpl	$2, -436(%rbp)
	je	.LBB6_65
# BB#64:                                # %lor.lhs.false.125
	cmpl	$3, -436(%rbp)
	jne	.LBB6_66
.LBB6_65:                               # %cond.true.127
	movl	$3, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
	jmp	.LBB6_69
.LBB6_66:                               # %cond.false.128
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -641(%rbp)         # 1-byte Spill
	je	.LBB6_68
# BB#67:                                # %lor.rhs.130
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -641(%rbp)         # 1-byte Spill
.LBB6_68:                               # %lor.end.132
	movb	-641(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -640(%rbp)        # 4-byte Spill
.LBB6_69:                               # %cond.end.134
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB6_70:                               # %cond.end.136
	movl	-636(%rbp), %eax        # 4-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %edx
	cmpl	$4, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -632(%rbp)        # 4-byte Spill
.LBB6_71:                               # %cond.end.140
	movl	-632(%rbp), %eax        # 4-byte Reload
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB6_72:                               # %cond.end.142
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB6_73:                               # %cond.end.144
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB6_74:                               # %cond.end.146
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB6_75:                               # %cond.end.148
	movl	-568(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-548(%rbp), %edi        # 4-byte Reload
	movl	-552(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	movl	%ecx, -648(%rbp)        # 4-byte Spill
	movl	-648(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	leaq	-304(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rsi
	movq	-168(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-168(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	cmpl	$1, -436(%rbp)
	je	.LBB6_78
# BB#76:                                # %lor.lhs.false.152
	cmpl	$3, -436(%rbp)
	je	.LBB6_78
# BB#77:                                # %lor.lhs.false.154
	cmpl	$5, -436(%rbp)
	jne	.LBB6_79
.LBB6_78:                               # %if.then
	leaq	-304(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	copy_region
	jmp	.LBB6_80
.LBB6_79:                               # %if.else
	leaq	-304(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	add_alpha_region
.LBB6_80:                               # %if.end
	xorl	%eax, %eax
	movq	-88(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-168(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-168(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	cmpl	$0, -436(%rbp)
	je	.LBB6_82
# BB#81:                                # %lor.lhs.false.159
	cmpl	$1, -436(%rbp)
	jne	.LBB6_83
.LBB6_82:                               # %cond.true.161
	movl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB6_90
.LBB6_83:                               # %cond.false.162
	cmpl	$2, -436(%rbp)
	je	.LBB6_85
# BB#84:                                # %lor.lhs.false.164
	cmpl	$3, -436(%rbp)
	jne	.LBB6_86
.LBB6_85:                               # %cond.true.166
	movl	$3, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB6_89
.LBB6_86:                               # %cond.false.167
	movb	$1, %al
	cmpl	$4, -436(%rbp)
	movb	%al, -657(%rbp)         # 1-byte Spill
	je	.LBB6_88
# BB#87:                                # %lor.rhs.169
	cmpl	$5, -436(%rbp)
	sete	%al
	movb	%al, -657(%rbp)         # 1-byte Spill
.LBB6_88:                               # %lor.end.171
	movb	-657(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -656(%rbp)        # 4-byte Spill
.LBB6_89:                               # %cond.end.173
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB6_90:                               # %cond.end.175
	movl	-652(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rdi
	movl	%eax, -664(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type_with_alpha
	movl	-664(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB6_94
# BB#91:                                # %if.then.179
	movq	-48(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type_with_alpha
	leaq	-484(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_temp_buf
	movq	%rax, -480(%rbp)
	cmpl	$0, -484(%rbp)
	je	.LBB6_93
# BB#92:                                # %if.then.186
	movq	-168(%rbp), %rdi
	callq	temp_buf_free
.LBB6_93:                               # %if.end.187
	movq	-480(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB6_94:                               # %if.end.188
	xorl	%eax, %eax
	movq	-88(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-168(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-168(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-240(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movl	12(%rsi), %edx
	movq	-104(%rbp), %rsi
	movl	16(%rsi), %r8d
	movq	-104(%rbp), %rsi
	movl	4(%rsi), %r9d
	movq	-104(%rbp), %rsi
	movl	8(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	-196(%rbp), %edi
	movl	-192(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%edi, -688(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -692(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes_with_alpha
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-688(%rbp), %edi        # 4-byte Reload
	movl	-692(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movl	-696(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	leaq	-304(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rsi
	movq	-176(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-176(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB6_96
# BB#95:                                # %if.then.202
	leaq	-240(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	callq	copy_region
	jmp	.LBB6_97
.LBB6_96:                               # %if.else.203
	leaq	-240(%rbp), %rdi
	leaq	-304(%rbp), %rsi
	callq	add_alpha_region
.LBB6_97:                               # %if.end.204
	leaq	-304(%rbp), %rdi
	xorl	%eax, %eax
	movq	-176(%rbp), %rsi
	movq	-176(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-176(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	leaq	-368(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	callq	pixel_region_init_temp_buf
	movq	-88(%rbp), %rsi
	movl	44(%rsi), %eax
	cmpl	-260(%rbp), %eax
	jne	.LBB6_103
# BB#98:                                # %lor.lhs.false.210
	movq	-88(%rbp), %rax
	movl	44(%rax), %ecx
	cmpl	-324(%rbp), %ecx
	jne	.LBB6_103
# BB#99:                                # %lor.lhs.false.214
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-256(%rbp), %ecx
	jne	.LBB6_103
# BB#100:                               # %lor.lhs.false.218
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-320(%rbp), %ecx
	jne	.LBB6_103
# BB#101:                               # %lor.lhs.false.222
	cmpl	$0, -260(%rbp)
	jle	.LBB6_103
# BB#102:                               # %lor.lhs.false.225
	cmpl	$0, -256(%rbp)
	jg	.LBB6_104
.LBB6_103:                              # %if.then.228
	movq	-168(%rbp), %rdi
	callq	temp_buf_free
	movq	-176(%rbp), %rdi
	callq	temp_buf_free
	jmp	.LBB6_114
.LBB6_104:                              # %if.end.229
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-448(%rbp), %rax
	movl	4(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -488(%rbp)
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-448(%rbp), %rax
	movl	8(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -492(%rbp)
	cmpl	$0, -488(%rbp)
	jge	.LBB6_106
# BB#105:                               # %cond.true.243
	xorl	%eax, %eax
	subl	-488(%rbp), %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB6_107
.LBB6_106:                              # %cond.false.245
	xorl	%eax, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB6_107
.LBB6_107:                              # %cond.end.246
	movl	-700(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)
	cmpl	$0, -492(%rbp)
	jge	.LBB6_109
# BB#108:                               # %cond.true.250
	xorl	%eax, %eax
	subl	-492(%rbp), %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB6_110
.LBB6_109:                              # %cond.false.252
	xorl	%eax, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB6_110
.LBB6_110:                              # %cond.end.253
	movl	-704(%rbp), %eax        # 4-byte Reload
	leaq	-432(%rbp), %rdi
	movl	%eax, -500(%rbp)
	movq	-448(%rbp), %rsi
	movl	-496(%rbp), %edx
	movl	-500(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-304(%rbp), %rdi
	leaq	-432(%rbp), %rdx
	movq	-88(%rbp), %rsi
	callq	gimp_heal_region
	movq	-168(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	temp_buf_free
	leaq	-304(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rsi
	movq	-176(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-176(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	leaq	-304(%rbp), %rdi
	leaq	-368(%rbp), %rsi
	callq	copy_region
	movq	-176(%rbp), %rdi
	callq	temp_buf_free
	movq	-128(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	ucomisd	-72(%rbp), %xmm0
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rax, -736(%rbp)        # 8-byte Spill
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	jbe	.LBB6_112
# BB#111:                               # %cond.true.262
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	jmp	.LBB6_113
.LBB6_112:                              # %cond.false.263
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	jmp	.LBB6_113
.LBB6_113:                              # %cond.end.264
	movsd	-752(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-136(%rbp), %rdi
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	callq	gimp_paint_options_get_brush_mode
	movl	$1, %r8d
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movsd	-760(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-768(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	callq	gimp_brush_core_replace_canvas
.LBB6_114:                              # %return
	addq	$752, %rsp              # imm = 0x2F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_heal_motion, .Lfunc_end6-gimp_heal_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_region,@function
gimp_heal_region:                       # @gimp_heal_region
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
	subq	$48, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	movq	-8(%rbp), %rdx
	imull	52(%rdx), %eax
	movq	-8(%rbp), %rdx
	imull	44(%rdx), %eax
	movslq	%eax, %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$8, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %r8d
	movq	-8(%rbp), %rax
	imull	52(%rax), %r8d
	movq	-8(%rbp), %rax
	imull	44(%rax), %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_heal_sub
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %esi
	movq	-8(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %r9
	callq	gimp_heal_laplace_loop
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_heal_add
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_heal_region, .Lfunc_end7-gimp_heal_region
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_heal_sub,@function
gimp_heal_sub:                          # @gimp_heal_sub
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	44(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdx
	movl	52(%rdx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	52(%rax), %ecx
	jne	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$197, %edx
	movabsq	$.L__func__.gimp_heal_sub, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movl	$0, -28(%rbp)
.LBB8_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_10 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB8_17
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -32(%rbp)
.LBB8_8:                                # %for.cond.5
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_15
# BB#9:                                 # %for.body.7
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	$0, -36(%rbp)
.LBB8_10:                               # %for.cond.8
                                        #   Parent Loop BB8_6 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_13
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB8_10 Depth=3
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	subsd	%xmm1, %xmm0
	movslq	-36(%rbp), %rax
	movq	-88(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB8_10 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_10
.LBB8_13:                               # %for.end
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	-48(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	-48(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#14:                                # %for.inc.20
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_8
.LBB8_15:                               # %for.end.22
                                        #   in Loop: Header=BB8_6 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
# BB#16:                                # %for.inc.28
                                        #   in Loop: Header=BB8_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_6
.LBB8_17:                               # %for.end.30
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_heal_sub, .Lfunc_end8-gimp_heal_sub
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4562254508917369340     # double 0.001
	.text
	.align	16, 0x90
	.type	gimp_heal_laplace_loop,@function
gimp_heal_laplace_loop:                 # @gimp_heal_laplace_loop
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp34:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$500, -52(%rbp)         # imm = 0x1F4
	jge	.LBB9_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %rax
	movq	(%rax), %r9
	movq	-48(%rbp), %rax
	movl	32(%rax), %r10d
	movq	-48(%rbp), %rax
	movl	36(%rax), %r11d
	movq	-48(%rbp), %rax
	movl	40(%rax), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	gimp_heal_laplace_iteration
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	imull	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %r8
	shlq	$3, %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r8, %rdx
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_1
.LBB9_6:                                # %for.end
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_heal_laplace_loop, .Lfunc_end9-gimp_heal_laplace_loop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_heal_add,@function
gimp_heal_add:                          # @gimp_heal_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	44(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movl	52(%rdx), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	52(%rax), %ecx
	jne	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$240, %edx
	movabsq	$.L__func__.gimp_heal_add, %rcx
	movabsq	$.L.str.8, %r8
	callq	g_assertion_message_expr
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movl	$0, -28(%rbp)
.LBB10_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #       Child Loop BB10_10 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB10_23
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -32(%rbp)
.LBB10_8:                               # %for.cond.5
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_10 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB10_21
# BB#9:                                 # %for.body.7
                                        #   in Loop: Header=BB10_8 Depth=2
	movl	$0, -36(%rbp)
.LBB10_10:                              # %for.cond.8
                                        #   Parent Loop BB10_6 Depth=1
                                        #     Parent Loop BB10_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB10_19
# BB#11:                                # %for.body.10
                                        #   in Loop: Header=BB10_10 Depth=3
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	cmpl	$255, %edx
	jle	.LBB10_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB10_10 Depth=3
	movl	$255, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB10_17
.LBB10_13:                              # %cond.false
                                        #   in Loop: Header=BB10_10 Depth=3
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	cmpl	$0, %edx
	jge	.LBB10_15
# BB#14:                                # %cond.true.27
                                        #   in Loop: Header=BB10_10 Depth=3
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_16
.LBB10_15:                              # %cond.false.28
                                        #   in Loop: Header=BB10_10 Depth=3
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB10_16:                              # %cond.end
                                        #   in Loop: Header=BB10_10 Depth=3
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB10_17:                              # %cond.end.37
                                        #   in Loop: Header=BB10_10 Depth=3
	movl	-92(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-36(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB10_10 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_10
.LBB10_19:                              # %for.end
                                        #   in Loop: Header=BB10_8 Depth=2
	movl	-48(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movl	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	-48(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
# BB#20:                                # %for.inc.46
                                        #   in Loop: Header=BB10_8 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_8
.LBB10_21:                              # %for.end.48
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
# BB#22:                                # %for.inc.54
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_6
.LBB10_23:                              # %for.end.56
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_heal_add, .Lfunc_end10-gimp_heal_add
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4601778099247172813     # double 0.45000000000000001
.LCPI11_1:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	gimp_heal_laplace_iteration,@function
gimp_heal_laplace_iteration:            # @gimp_heal_laplace_iteration
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
	pushq	%rax
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	%r11d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	imull	-16(%rbp), %eax
	movl	%eax, -56(%rbp)
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movl	$0, -60(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
                                        #       Child Loop BB11_15 Depth 3
                                        #       Child Loop BB11_10 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB11_23
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-60(%rbp), %ecx
	addl	-52(%rbp), %ecx
	imull	-44(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	-60(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -64(%rbp)
.LBB11_3:                               # %for.cond.6
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_15 Depth 3
                                        #       Child Loop BB11_10 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_21
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB11_3 Depth=2
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	addl	-64(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movslq	-76(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB11_9
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	$0, -60(%rbp)
	je	.LBB11_9
# BB#6:                                 # %lor.lhs.false.17
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-60(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB11_9
# BB#7:                                 # %lor.lhs.false.20
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	$0, -64(%rbp)
	je	.LBB11_9
# BB#8:                                 # %lor.lhs.false.23
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-64(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB11_14
.LBB11_9:                               # %if.then
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	$0, -68(%rbp)
.LBB11_10:                              # %for.cond.27
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_13
# BB#11:                                # %for.body.30
                                        #   in Loop: Header=BB11_10 Depth=3
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB11_10 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_10
.LBB11_13:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_19
.LBB11_14:                              # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	$0, -68(%rbp)
.LBB11_15:                              # %for.cond.37
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_18
# BB#16:                                # %for.body.40
                                        #   in Loop: Header=BB11_15 Depth=3
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm2    # xmm2 = mem[0],zero
	movsd	%xmm2, -96(%rbp)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm2    # xmm2 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	mulsd	(%rdx,%rcx,8), %xmm1
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	%xmm2, (%rdx,%rcx,8)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
# BB#17:                                # %for.inc.82
                                        #   in Loop: Header=BB11_15 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_15
.LBB11_18:                              # %for.end.84
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_19
.LBB11_19:                              # %if.end
                                        #   in Loop: Header=BB11_3 Depth=2
	jmp	.LBB11_20
.LBB11_20:                              # %for.inc.85
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_3
.LBB11_21:                              # %for.end.87
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_22
.LBB11_22:                              # %for.inc.88
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_1
.LBB11_23:                              # %for.end.90
	movl	$0, -60(%rbp)
.LBB11_24:                              # %for.cond.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_26 Depth 2
                                        #       Child Loop BB11_38 Depth 3
                                        #       Child Loop BB11_33 Depth 3
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB11_46
# BB#25:                                # %for.body.94
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	-60(%rbp), %esi
	imull	-56(%rbp), %esi
	movl	%esi, -84(%rbp)
	movl	-60(%rbp), %esi
	addl	-52(%rbp), %esi
	imull	-44(%rbp), %esi
	movl	%esi, -80(%rbp)
	movl	-60(%rbp), %esi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -132(%rbp)        # 4-byte Spill
	cltd
	movl	-132(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	movl	-128(%rbp), %edx        # 4-byte Reload
	cmovnel	%ecx, %edx
	movl	%edx, -64(%rbp)
.LBB11_26:                              # %for.cond.99
                                        #   Parent Loop BB11_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_38 Depth 3
                                        #       Child Loop BB11_33 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_44
# BB#27:                                # %for.body.102
                                        #   in Loop: Header=BB11_26 Depth=2
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	-16(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	addl	-64(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movslq	-76(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movzbl	(%rdi,%rsi), %ecx
	cmpl	%ecx, %eax
	je	.LBB11_32
# BB#28:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpl	$0, -60(%rbp)
	je	.LBB11_32
# BB#29:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-60(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB11_32
# BB#30:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpl	$0, -64(%rbp)
	je	.LBB11_32
# BB#31:                                # %lor.lhs.false.122
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-64(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB11_37
.LBB11_32:                              # %if.then.126
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	$0, -68(%rbp)
.LBB11_33:                              # %for.cond.127
                                        #   Parent Loop BB11_24 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_36
# BB#34:                                # %for.body.130
                                        #   in Loop: Header=BB11_33 Depth=3
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	%xmm0, (%rdx,%rcx,8)
# BB#35:                                # %for.inc.137
                                        #   in Loop: Header=BB11_33 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_33
.LBB11_36:                              # %for.end.139
                                        #   in Loop: Header=BB11_26 Depth=2
	jmp	.LBB11_42
.LBB11_37:                              # %if.else.140
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	$0, -68(%rbp)
.LBB11_38:                              # %for.cond.141
                                        #   Parent Loop BB11_24 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_41
# BB#39:                                # %for.body.144
                                        #   in Loop: Header=BB11_38 Depth=3
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm2    # xmm2 = mem[0],zero
	movsd	%xmm2, -96(%rbp)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm2    # xmm2 = mem[0],zero
	movl	-72(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm3    # xmm3 = mem[0],zero
	movl	-72(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	subl	-56(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	addsd	(%rdx,%rcx,8), %xmm3
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	mulsd	(%rdx,%rcx,8), %xmm1
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	%xmm2, (%rdx,%rcx,8)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	subsd	-96(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
# BB#40:                                # %for.inc.186
                                        #   in Loop: Header=BB11_38 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_38
.LBB11_41:                              # %for.end.188
                                        #   in Loop: Header=BB11_26 Depth=2
	jmp	.LBB11_42
.LBB11_42:                              # %if.end.189
                                        #   in Loop: Header=BB11_26 Depth=2
	jmp	.LBB11_43
.LBB11_43:                              # %for.inc.190
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_26
.LBB11_44:                              # %for.end.192
                                        #   in Loop: Header=BB11_24 Depth=1
	jmp	.LBB11_45
.LBB11_45:                              # %for.inc.193
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_24
.LBB11_46:                              # %for.end.195
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_heal_laplace_iteration, .Lfunc_end11-gimp_heal_laplace_iteration
	.cfi_endproc

	.type	gimp_heal_get_type.g_define_type_id__volatile,@object # @gimp_heal_get_type.g_define_type_id__volatile
	.local	gimp_heal_get_type.g_define_type_id__volatile
	.comm	gimp_heal_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHeal"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-heal"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Heal"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-heal"
	.size	.L.str.3, 15

	.type	gimp_heal_parent_class,@object # @gimp_heal_parent_class
	.local	gimp_heal_parent_class
	.comm	gimp_heal_parent_class,8,8
	.type	GimpHeal_private_offset,@object # @GimpHeal_private_offset
	.local	GimpHeal_private_offset
	.comm	GimpHeal_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Healing does not operate on indexed layers."
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-Paint"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpheal.c"
	.size	.L.str.6, 11

	.type	.L__func__.gimp_heal_sub,@object # @__func__.gimp_heal_sub
.L__func__.gimp_heal_sub:
	.asciz	"gimp_heal_sub"
	.size	.L__func__.gimp_heal_sub, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"topPR->bytes == bottomPR->bytes"
	.size	.L.str.7, 32

	.type	.L__func__.gimp_heal_add,@object # @__func__.gimp_heal_add
.L__func__.gimp_heal_add:
	.asciz	"gimp_heal_add"
	.size	.L__func__.gimp_heal_add, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"secondPR->bytes == resultPR->bytes"
	.size	.L.str.8, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
