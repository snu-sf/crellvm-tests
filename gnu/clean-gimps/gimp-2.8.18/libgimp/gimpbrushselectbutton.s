	.text
	.file	"gimpbrushselectbutton.bc"
	.globl	gimp_brush_select_button_get_type
	.align	16, 0x90
	.type	gimp_brush_select_button_get_type,@function
gimp_brush_select_button_get_type:      # @gimp_brush_select_button_get_type
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
	movq	gimp_brush_select_button_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_brush_select_button_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gimp_select_button_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$936, %edx              # imm = 0x3A8
	leaq	gimp_brush_select_button_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_brush_select_button_init(%rip), %rcx
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
	leaq	gimp_brush_select_button_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_brush_select_button_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_select_button_get_type, .Lfunc_end0-gimp_brush_select_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_class_intern_init,@function
gimp_brush_select_button_class_intern_init: # @gimp_brush_select_button_class_intern_init
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
	movq	%rax, gimp_brush_select_button_parent_class(%rip)
	cmpl	$0, GimpBrushSelectButton_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpBrushSelectButton_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_select_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_select_button_class_intern_init, .Lfunc_end1-gimp_brush_select_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_init,@function
gimp_brush_select_button_init:          # @gimp_brush_select_button_init
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
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_brush@PLT
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %r8
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %r9
	movq	%rax, 8(%r9)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %r9
	addq	$32, %r9
	movq	-16(%rbp), %r10
	addq	$36, %r10
	movq	-16(%rbp), %r11
	addq	$40, %r11
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	gimp_brush_get_pixels@PLT
	cmpq	$0, -40(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_brush_select_button_create_inside
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_select_button_init, .Lfunc_end2-gimp_brush_select_button_init
	.cfi_endproc

	.globl	gimp_brush_select_button_new
	.align	16, 0x90
	.type	gimp_brush_select_button_new,@function
gimp_brush_select_button_new:           # @gimp_brush_select_button_new
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_brush_select_button_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str.2(%rip), %rcx
	leaq	.L.str.3(%rip), %r9
	leaq	.L.str.4(%rip), %rdx
	leaq	.L.str.5(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-24(%rbp), %r11
	movq	-32(%rbp), %r8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ebx
	movl	-48(%rbp), %r14d
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%ebx, 8(%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$1, %al
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_object_new@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	callq	gimp_brush_select_button_get_type@PLT
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.3(%rip), %rcx
	leaq	.L.str.4(%rip), %r8
	leaq	.L.str.5(%rip), %rdx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-32(%rbp), %r10
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %r11d
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	-84(%rbp), %ebx         # 4-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$1, %al
	callq	g_object_new@PLT
	movq	%rax, -56(%rbp)
.LBB3_3:                                # %if.end
	movq	-56(%rbp), %rax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_select_button_new, .Lfunc_end3-gimp_brush_select_button_new
	.cfi_endproc

	.globl	gimp_brush_select_button_get_brush
	.align	16, 0x90
	.type	gimp_brush_select_button_get_brush,@function
gimp_brush_select_button_get_brush:     # @gimp_brush_select_button_get_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_brush_select_button_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.6(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_button_get_brush(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_19
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.14
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB4_14:                               # %if.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.18
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB4_16:                               # %if.end.20
	cmpq	$0, -40(%rbp)
	je	.LBB4_18
# BB#17:                                # %if.then.22
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB4_18:                               # %if.end.24
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_select_button_get_brush, .Lfunc_end4-gimp_brush_select_button_get_brush
	.cfi_endproc

	.globl	gimp_brush_select_button_set_brush
	.align	16, 0x90
	.type	gimp_brush_select_button_set_brush,@function
gimp_brush_select_button_set_brush:     # @gimp_brush_select_button_set_brush
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_select_button_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.6(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_button_set_brush(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_29
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	gimp_brushes_set_popup@PLT
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB5_29
.LBB5_14:                               # %if.else.17
	cmpq	$0, -16(%rbp)
	je	.LBB5_17
# BB#15:                                # %land.lhs.true.28
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_17
# BB#16:                                # %if.then.30
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -72(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.32
	callq	gimp_context_get_brush@PLT
	movq	%rax, -72(%rbp)
.LBB5_18:                               # %if.end.34
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-100(%rbp), %rax
	leaq	-104(%rbp), %rdi
	leaq	-112(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	gimp_brush_get_pixels@PLT
	cmpl	$0, %eax
	je	.LBB5_28
# BB#19:                                # %if.then.37
	cmpq	$0, -112(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.39
	movq	-112(%rbp), %rdi
	callq	g_free@PLT
.LBB5_21:                               # %if.end.40
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB5_23
# BB#22:                                # %if.then.43
	callq	gimp_context_get_opacity@PLT
	movsd	%xmm0, -24(%rbp)
.LBB5_23:                               # %if.end.45
	cmpl	$-1, -28(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.48
	leaq	-28(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gimp_brush_get_spacing@PLT
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB5_25:                               # %if.end.50
	cmpl	$-1, -32(%rbp)
	jne	.LBB5_27
# BB#26:                                # %if.then.53
	callq	gimp_context_get_paint_mode@PLT
	movl	%eax, -32(%rbp)
.LBB5_27:                               # %if.end.55
	xorl	%eax, %eax
	movq	-72(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movq	-96(%rbp), %r9
	movq	-8(%rbp), %r10
	movl	$0, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_brush_select_button_callback
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
.LBB5_28:                               # %if.end.56
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
.LBB5_29:                               # %if.end.57
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_select_button_set_brush, .Lfunc_end5-gimp_brush_select_button_set_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_callback,@function
gimp_brush_select_button_callback:      # @gimp_brush_select_button_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-88(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	-44(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-48(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-56(%rbp), %rdi
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	movl	%ecx, %esi
	callq	g_memdup@PLT
	movq	-88(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movl	-36(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 24(%rax)
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 28(%rax)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	gimp_brush_select_preview_update
	cmpl	$0, -60(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movq	$0, 128(%rax)
.LBB6_2:                                # %if.end
	xorl	%edx, %edx
	movq	-80(%rbp), %rax
	movl	brush_button_signals(%rip), %esi
	movq	-24(%rbp), %rcx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %r10d
	movq	-56(%rbp), %r11
	movl	-60(%rbp), %ebx
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-124(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movb	$1, %al
	callq	g_signal_emit@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_select_button_callback, .Lfunc_end6-gimp_brush_select_button_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	-4616189618054758400    # double -1
.LCPI7_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_brush_select_button_class_init,@function
gimp_brush_select_button_class_init:    # @gimp_brush_select_button_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	gimp_brush_select_destroy@GOTPCREL(%rip), %rcx
	leaq	gimp_brush_select_button_get_property(%rip), %rdx
	leaq	gimp_brush_select_button_set_property(%rip), %r8
	leaq	gimp_brush_select_button_finalize(%rip), %r9
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	%rcx, 832(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 896(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	movl	$235, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-56(%rbp), %rax
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	movl	$2147483649, %ecx       # imm = 0x80000001
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$227, %r10d
	movq	-56(%rbp), %rax
	movl	$227, (%rsp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r10d, -116(%rbp)       # 4-byte Spill
	callq	g_param_spec_int@PLT
	movl	$4, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$22, %r8d
	movl	$227, %r9d
	movq	-56(%rbp), %rax
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	-120(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_int@PLT
	movl	$5, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.20(%rip), %rdi
	movl	$1, %edx
	movl	$896, %ecx              # imm = 0x380
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	_gimpui_marshal_VOID__STRING_DOUBLE_INT_INT_INT_INT_POINTER_BOOLEAN@GOTPCREL(%rip), %r11
	movl	$4, %esi
	movl	%esi, %ebx
	movl	$8, %esi
	movl	$64, %r8d
	movl	%r8d, %r14d
	movl	$60, %r8d
	movl	%r8d, %r15d
	movl	$24, %r8d
	movl	%r8d, %r12d
	movl	$68, %r8d
	movl	%r8d, %r13d
	movl	$20, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-48(%rbp), %r9
	movq	(%r9), %r9
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$8, 16(%rsp)
	movq	$64, 24(%rsp)
	movq	$60, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movq	$24, 56(%rsp)
	movq	$24, 64(%rsp)
	movq	$68, 72(%rsp)
	movq	$20, 80(%rsp)
	movb	$0, %al
	movq	%r14, -160(%rbp)        # 8-byte Spill
	movq	%r12, -168(%rbp)        # 8-byte Spill
	movq	%r15, -176(%rbp)        # 8-byte Spill
	movq	%r13, -184(%rbp)        # 8-byte Spill
	movq	%rbx, -192(%rbp)        # 8-byte Spill
	callq	g_signal_new@PLT
	movl	$72, %ecx
	movl	%ecx, %esi
	movl	%eax, brush_button_signals(%rip)
	movq	-56(%rbp), %rdi
	callq	g_type_class_add_private@PLT
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_select_button_class_init, .Lfunc_end7-gimp_brush_select_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_finalize,@function
gimp_brush_select_button_finalize:      # @gimp_brush_select_button_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	gimp_brush_select_button_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_select_button_finalize, .Lfunc_end8-gimp_brush_select_button_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_brush_select_button_set_property,@function
gimp_brush_select_button_set_property:  # @gimp_brush_select_button_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	ja	.LBB9_12
# BB#16:                                # %entry
	leaq	.LJTI9_0(%rip), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB9_15
.LBB9_2:                                # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string@PLT
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_brush_select_button_set_brush@PLT
	jmp	.LBB9_15
.LBB9_3:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_5
# BB#4:                                 # %if.then
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB9_5:                                # %if.end
	jmp	.LBB9_15
.LBB9_6:                                # %sw.bb.10
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.13
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 24(%rcx)
.LBB9_8:                                # %if.end.15
	jmp	.LBB9_15
.LBB9_9:                                # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movl	%eax, -64(%rbp)
	cmpl	$-1, -64(%rbp)
	je	.LBB9_11
# BB#10:                                # %if.then.19
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 28(%rcx)
.LBB9_11:                               # %if.end.21
	jmp	.LBB9_15
.LBB9_12:                               # %sw.default
	jmp	.LBB9_13
.LBB9_13:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %r8d
	movq	-80(%rbp), %rax
	movq	8(%rax), %r9
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-72(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.21(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	movl	$534, %edx              # imm = 0x216
	leaq	.L.str.23(%rip), %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#14:                                # %do.end
	jmp	.LBB9_15
.LBB9_15:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_select_button_set_property, .Lfunc_end9-gimp_brush_select_button_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI9_0:
	.long	.LBB9_1-.LJTI9_0
	.long	.LBB9_2-.LJTI9_0
	.long	.LBB9_3-.LJTI9_0
	.long	.LBB9_6-.LJTI9_0
	.long	.LBB9_9-.LJTI9_0

	.text
	.align	16, 0x90
	.type	gimp_brush_select_button_get_property,@function
gimp_brush_select_button_get_property:  # @gimp_brush_select_button_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB10_6
# BB#10:                                # %entry
	leaq	.LJTI10_0(%rip), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB10_9
.LBB10_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB10_9
.LBB10_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB10_9
.LBB10_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB10_9
.LBB10_5:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	28(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB10_9
.LBB10_6:                               # %sw.default
	jmp	.LBB10_7
.LBB10_7:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.21(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	movl	$568, %edx              # imm = 0x238
	leaq	.L.str.23(%rip), %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB10_9
.LBB10_9:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_select_button_get_property, .Lfunc_end10-gimp_brush_select_button_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI10_0:
	.long	.LBB10_1-.LJTI10_0
	.long	.LBB10_2-.LJTI10_0
	.long	.LBB10_3-.LJTI10_0
	.long	.LBB10_4-.LJTI10_0
	.long	.LBB10_5-.LJTI10_0

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
	leaq	.L.str.6(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_create_inside,@function
gimp_brush_select_button_create_inside: # @gimp_brush_select_button_create_inside
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	callq	gtk_widget_push_composite_child@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -16(%rbp)
	callq	gtk_frame_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	callq	gimp_preview_area_new@PLT
	movl	$768, %esi              # imm = 0x300
	movq	-40(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_add_events@PLT
	movl	$20, %ecx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	leaq	.L.str.24(%rip), %rsi
	leaq	gimp_brush_select_preview_resize(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.25(%rip), %rsi
	leaq	gimp_brush_select_preview_events(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	leaq	target(%rip), %rdx
	movl	$1, %ecx
	movl	$2, %r8d
	movq	%rax, %rdi
	callq	gtk_drag_dest_set@PLT
	leaq	.L.str.26(%rip), %rsi
	leaq	gimp_brush_select_drag_data_received(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.10(%rip), %rdi
	leaq	.L.str.27(%rip), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	leaq	.L.str.28(%rip), %rsi
	leaq	gimp_brush_select_button_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_show_all@PLT
	callq	gtk_widget_pop_composite_child@PLT
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_select_button_create_inside, .Lfunc_end12-gimp_brush_select_button_create_inside
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_preview_resize,@function
gimp_brush_select_preview_resize:       # @gimp_brush_select_preview_resize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	jle	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	jle	.LBB13_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %esi
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rcx
	callq	gimp_brush_select_preview_update
.LBB13_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_select_preview_resize, .Lfunc_end13-gimp_brush_select_preview_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_preview_events,@function
gimp_brush_select_preview_events:       # @gimp_brush_select_preview_events
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB14_10
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_11
.LBB14_11:                              # %if.then
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB14_5
	jmp	.LBB14_8
.LBB14_2:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	gimp_brush_select_button_open_popup
.LBB14_4:                               # %if.end
	jmp	.LBB14_9
.LBB14_5:                               # %sw.bb.5
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_7
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_brush_select_button_close_popup
.LBB14_7:                               # %if.end.10
	jmp	.LBB14_9
.LBB14_8:                               # %sw.default
	jmp	.LBB14_9
.LBB14_9:                               # %sw.epilog
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.11
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_brush_select_preview_events, .Lfunc_end14-gimp_brush_select_preview_events
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	gimp_brush_select_drag_data_received,@function
gimp_brush_select_drag_data_received:   # @gimp_brush_select_drag_data_received
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length@PLT
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format@PLT
	cmpl	$8, %eax
	jne	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jge	.LBB15_3
.LBB15_2:                               # %if.then
	leaq	.L.str.30(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_drag_data_received(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB15_10
.LBB15_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_data@PLT
	movslq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strndup@PLT
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB15_9
# BB#4:                                 # %if.then.6
	leaq	.L.str.31(%rip), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movl	$0, -76(%rbp)
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jl	.LBB15_8
# BB#5:                                 # %land.lhs.true
	movl	-60(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_getpid@PLT
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_8
# BB#6:                                 # %land.lhs.true.13
	cmpl	$0, -76(%rbp)
	jle	.LBB15_8
# BB#7:                                 # %if.then.16
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_brush_select_button_set_brush@PLT
.LBB15_8:                               # %if.end.17
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.18
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB15_10:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_brush_select_drag_data_received, .Lfunc_end15-gimp_brush_select_drag_data_received
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_clicked,@function
gimp_brush_select_button_clicked:       # @gimp_brush_select_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_select_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	callq	gimp_brushes_set_popup@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	leaq	gimp_brush_select_button_callback(%rip), %r8
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	%rax, %r9
	callq	gimp_brush_select_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 128(%rsi)
.LBB16_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_brush_select_button_clicked, .Lfunc_end16-gimp_brush_select_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_preview_update,@function
gimp_brush_select_preview_update:       # @gimp_brush_select_preview_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movl	-12(%rbp), %edx
	cmpl	-40(%rbp), %edx
	jge	.LBB17_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	movl	-40(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB17_3:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_5
# BB#4:                                 # %cond.true.6
	movl	-16(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB17_6
.LBB17_5:                               # %cond.false.7
	movl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB17_6:                               # %cond.end.9
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -64(%rbp)
	movl	-40(%rbp), %eax
	subl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	subl	-64(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB17_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -56(%rbp)
	je	.LBB17_9
.LBB17_8:                               # %if.then
	xorl	%eax, %eax
	movl	$255, %r9d
	movq	-32(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	movl	$255, (%rsp)
	movl	$255, 8(%rsp)
	callq	gimp_preview_area_fill@PLT
.LBB17_9:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-24(%rbp), %r9
	movl	-12(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_brush_select_preview_draw
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_brush_select_preview_update, .Lfunc_end17-gimp_brush_select_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_preview_draw,@function
gimp_brush_select_preview_draw:         # @gimp_brush_select_preview_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movl	$1, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	movq	%r11, %rsi
	callq	g_malloc_n@PLT
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
	movl	-72(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB18_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -68(%rbp)
.LBB18_3:                               # %for.cond.2
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB18_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	$255, %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	movb	%al, %sil
	movq	-56(%rbp), %rcx
	movb	%sil, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-80(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB18_3
.LBB18_6:                               # %for.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#7:                                 # %for.inc.9
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB18_1
.LBB18_8:                               # %for.end.11
	movl	$2, %r9d
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	-20(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_brush_select_preview_draw, .Lfunc_end18-gimp_brush_select_preview_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_open_popup,@function
gimp_brush_select_button_open_popup:    # @gimp_brush_select_button_open_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_brush_select_button_close_popup
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$20, 32(%rax)
	jg	.LBB19_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$20, 36(%rax)
	jg	.LBB19_5
# BB#4:                                 # %if.then.3
	jmp	.LBB19_18
.LBB19_5:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_screen@PLT
	movl	$1, %edi
	movq	%rax, -48(%rbp)
	callq	gtk_window_new@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$13, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_type_hint@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	32(%rax), %esi
	movq	-24(%rbp), %rax
	movl	36(%rax), %edx
	callq	gtk_widget_set_size_request@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gdk_screen_get_width@PLT
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_screen_get_height@PLT
	movl	$2, %ecx
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	addl	-12(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	32(%rdx), %r8d
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -12(%rbp)
	movl	-56(%rbp), %eax
	addl	-16(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	36(%rsi), %r8d
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB19_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB19_8:                               # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$0, -16(%rbp)
	jge	.LBB19_10
# BB#9:                                 # %cond.true.39
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB19_11
.LBB19_10:                              # %cond.false.40
	movl	-16(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB19_11:                              # %cond.end.41
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	32(%rcx), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB19_13
# BB#12:                                # %cond.true.46
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	32(%rcx), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB19_14
.LBB19_13:                              # %cond.false.49
	movl	-12(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB19_14:                              # %cond.end.50
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	36(%rcx), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB19_16
# BB#15:                                # %cond.true.55
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	36(%rcx), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB19_17
.LBB19_16:                              # %cond.false.58
	movl	-16(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB19_17:                              # %cond.end.59
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -16(%rbp)
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx
	movl	32(%rcx), %ecx
	movq	-24(%rbp), %rsi
	movl	36(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %r9
	movq	-24(%rbp), %rsi
	movl	32(%rsi), %r10d
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%r10d, (%rsp)
	callq	gimp_brush_select_preview_draw
.LBB19_18:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_brush_select_button_open_popup, .Lfunc_end19-gimp_brush_select_button_open_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_button_close_popup,@function
gimp_brush_select_button_close_popup:   # @gimp_brush_select_button_close_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_button_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB20_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_brush_select_button_close_popup, .Lfunc_end20-gimp_brush_select_button_close_popup
	.cfi_endproc

	.type	gimp_brush_select_button_get_type.g_define_type_id__volatile,@object # @gimp_brush_select_button_get_type.g_define_type_id__volatile
	.local	gimp_brush_select_button_get_type.g_define_type_id__volatile
	.comm	gimp_brush_select_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushSelectButton"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"title"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"brush-name"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"brush-opacity"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"brush-spacing"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"brush-paint-mode"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LibGimp"
	.size	.L.str.6, 8

	.type	.L__func__.gimp_brush_select_button_get_brush,@object # @__func__.gimp_brush_select_button_get_brush
.L__func__.gimp_brush_select_button_get_brush:
	.asciz	"gimp_brush_select_button_get_brush"
	.size	.L__func__.gimp_brush_select_button_get_brush, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_BRUSH_SELECT_BUTTON (button)"
	.size	.L.str.7, 37

	.type	.L__func__.gimp_brush_select_button_set_brush,@object # @__func__.gimp_brush_select_button_set_brush
.L__func__.gimp_brush_select_button_set_brush:
	.asciz	"gimp_brush_select_button_set_brush"
	.size	.L__func__.gimp_brush_select_button_set_brush, 35

	.type	gimp_brush_select_button_parent_class,@object # @gimp_brush_select_button_parent_class
	.local	gimp_brush_select_button_parent_class
	.comm	gimp_brush_select_button_parent_class,8,8
	.type	GimpBrushSelectButton_private_offset,@object # @GimpBrushSelectButton_private_offset
	.local	GimpBrushSelectButton_private_offset
	.comm	GimpBrushSelectButton_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Title"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The title to be used for the brush selection popup dialog"
	.size	.L.str.9, 58

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp20-libgimp"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Brush Selection"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Brush name"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The name of the currently selected brush"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Brush opacity"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The opacity of the currently selected brush"
	.size	.L.str.15, 44

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Brush spacing"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The spacing of the currently selected brush"
	.size	.L.str.17, 44

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Brush paint mode"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The paint mode of the currently selected brush"
	.size	.L.str.19, 47

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"brush-set"
	.size	.L.str.20, 10

	.type	brush_button_signals,@object # @brush_button_signals
	.local	brush_button_signals
	.comm	brush_button_signals,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.21, 54

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimpbrushselectbutton.c"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"property"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"size-allocate"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"event"
	.size	.L.str.25, 6

	.type	target,@object          # @target
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
target:
	.quad	.L.str.29
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	target, 16

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"drag-data-received"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Browse..."
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"clicked"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"application/x-gimp-brush-name"
	.size	.L.str.29, 30

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s: received invalid brush data"
	.size	.L.str.30, 32

	.type	.L__func__.gimp_brush_select_drag_data_received,@object # @__func__.gimp_brush_select_drag_data_received
.L__func__.gimp_brush_select_drag_data_received:
	.asciz	"gimp_brush_select_drag_data_received"
	.size	.L__func__.gimp_brush_select_drag_data_received, 37

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%i:%p:%n"
	.size	.L.str.31, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
