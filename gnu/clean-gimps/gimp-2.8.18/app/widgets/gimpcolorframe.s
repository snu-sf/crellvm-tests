	.text
	.file	"gimpcolorframe.bc"
	.globl	gimp_color_frame_get_type
	.align	16, 0x90
	.type	gimp_color_frame_get_type,@function
gimp_color_frame_get_type:              # @gimp_color_frame_get_type
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
	movq	gimp_color_frame_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_frame_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_frame_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$864, %edx              # imm = 0x360
	movabsq	$gimp_color_frame_class_intern_init, %rdi
	movl	$328, %r8d              # imm = 0x148
	movabsq	$gimp_color_frame_init, %rcx
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
	movabsq	$gimp_color_frame_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_frame_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_frame_get_type, .Lfunc_end0-gimp_color_frame_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_frame_class_intern_init,@function
gimp_color_frame_class_intern_init:     # @gimp_color_frame_class_intern_init
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
	movq	%rax, gimp_color_frame_parent_class
	cmpl	$0, GimpColorFrame_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorFrame_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_frame_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_frame_class_intern_init, .Lfunc_end1-gimp_color_frame_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
.LCPI2_2:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_color_frame_init,@function
gimp_color_frame_init:                  # @gimp_color_frame_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	$0, 160(%rdi)
	movq	-32(%rbp), %rdi
	movl	$0, 164(%rdi)
	movq	-32(%rbp), %rdi
	addq	$168, %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	callq	gimp_color_frame_mode_get_type
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new
	movq	-32(%rbp), %rdi
	movq	%rax, 224(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-32(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_color_frame_menu_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-32(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_color_area_get_type
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.16, %r9
	movl	$256, %r10d             # imm = 0x100
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rdi
	movl	$20, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-32(%rbp), %r15
	addq	$168, %r15
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movl	$256, (%rsp)            # imm = 0x100
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movl	$20, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	g_object_new
	movq	-32(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rcx
	movq	232(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -52(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -52(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	callq	gtk_label_new
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 240(%rdi,%rsi,8)
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	240(%rsi,%rax,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	240(%rdi,%rsi,8), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	240(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	callq	gtk_label_new
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, 280(%rdi,%rsi,8)
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	280(%rsi,%rax,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	280(%rdi,%rax,8), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movslq	-52(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	280(%rdi,%rsi,8), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	280(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_frame_init, .Lfunc_end2-gimp_color_frame_init
	.cfi_endproc

	.globl	gimp_color_frame_new
	.align	16, 0x90
	.type	gimp_color_frame_new,@function
gimp_color_frame_new:                   # @gimp_color_frame_new
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
	callq	gimp_color_frame_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_frame_new, .Lfunc_end3-gimp_color_frame_new
	.cfi_endproc

	.globl	gimp_color_frame_set_mode
	.align	16, 0x90
	.type	gimp_color_frame_set_mode,@function
gimp_color_frame_set_mode:              # @gimp_color_frame_set_mode
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_frame_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_mode, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_frame_set_mode, .Lfunc_end4-gimp_color_frame_set_mode
	.cfi_endproc

	.globl	gimp_color_frame_set_has_number
	.align	16, 0x90
	.type	gimp_color_frame_set_has_number,@function
gimp_color_frame_set_has_number:        # @gimp_color_frame_set_has_number
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_frame_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_has_number, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	208(%rcx), %eax
	je	.LBB5_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 208(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_14:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_frame_set_has_number, .Lfunc_end5-gimp_color_frame_set_has_number
	.cfi_endproc

	.globl	gimp_color_frame_set_number
	.align	16, 0x90
	.type	gimp_color_frame_set_number,@function
gimp_color_frame_set_number:            # @gimp_color_frame_set_number
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_frame_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_number, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_14
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	212(%rcx), %eax
	je	.LBB6_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 212(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB6_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_frame_set_number, .Lfunc_end6-gimp_color_frame_set_number
	.cfi_endproc

	.globl	gimp_color_frame_set_has_color_area
	.align	16, 0x90
	.type	gimp_color_frame_set_has_color_area,@function
gimp_color_frame_set_has_color_area:    # @gimp_color_frame_set_has_color_area
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_frame_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_has_color_area, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_14
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	216(%rcx), %eax
	je	.LBB7_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 216(%rdi)
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-8(%rbp), %r8
	movl	216(%r8), %edx
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_frame_set_has_color_area, .Lfunc_end7-gimp_color_frame_set_has_color_area
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	gimp_color_frame_set_color
	.align	16, 0x90
	.type	gimp_color_frame_set_color,@function
gimp_color_frame_set_color:             # @gimp_color_frame_set_color
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_frame_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_color, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB8_22
# BB#18:                                # %land.lhs.true.18
	movq	-8(%rbp), %rax
	movl	164(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB8_22
# BB#19:                                # %land.lhs.true.21
	movq	-8(%rbp), %rax
	movl	200(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB8_22
# BB#20:                                # %land.lhs.true.24
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgba_distance
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_22
# BB#21:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 192(%rax)
	jmp	.LBB8_23
.LBB8_22:                               # %if.end.30
	movq	-8(%rbp), %rax
	movl	$1, 160(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 164(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, 168(%rax)
	movq	8(%rdx), %rsi
	movq	%rsi, 176(%rax)
	movq	16(%rdx), %rsi
	movq	%rsi, 184(%rax)
	movq	24(%rdx), %rdx
	movq	%rdx, 192(%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 200(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_color_frame_update
.LBB8_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_frame_set_color, .Lfunc_end8-gimp_color_frame_set_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4636737291354636288     # double 100
.LCPI9_2:
	.quad	4607182418800017408     # double 1
.LCPI9_3:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_color_frame_update,@function
gimp_color_frame_update:                # @gimp_color_frame_update
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
	subq	$320, %rsp              # imm = 0x140
	movb	$1, %al
	xorl	%ecx, %ecx
	movl	$40, %edx
	movl	%edx, %esi
	leaq	-96(%rbp), %r8
	leaq	-48(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%r9, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movb	%al, -201(%rbp)         # 1-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	callq	memset
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movl	-208(%rbp), %esi        # 4-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$3, -104(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$1, 164(%rdx)
	movb	-201(%rbp), %al         # 1-byte Reload
	movb	%al, -209(%rbp)         # 1-byte Spill
	je	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpl	$3, 164(%rcx)
	movb	%al, -209(%rbp)         # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	cmpl	$5, 164(%rax)
	sete	%cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB9_3:                                # %lor.end
	movb	-209(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -100(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 160(%rdx)
	je	.LBB9_5
# BB#4:                                 # %if.then
	leaq	-105(%rbp), %rsi
	leaq	-106(%rbp), %rdx
	leaq	-107(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	gimp_rgba_get_uchar
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$168, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_color_area_set_color
.LBB9_5:                                # %if.end
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	ja	.LBB9_41
# BB#59:                                # %if.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_6:                                # %sw.bb
	movq	-8(%rbp), %rax
	cmpl	$0, 164(%rax)
	je	.LBB9_8
# BB#7:                                 # %lor.lhs.false.9
	movq	-8(%rbp), %rax
	cmpl	$1, 164(%rax)
	jne	.LBB9_9
.LBB9_8:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB9_16
.LBB9_9:                                # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$2, 164(%rax)
	je	.LBB9_11
# BB#10:                                # %lor.lhs.false.14
	movq	-8(%rbp), %rax
	cmpl	$3, 164(%rax)
	jne	.LBB9_12
.LBB9_11:                               # %cond.true.17
	movl	$1, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB9_15
.LBB9_12:                               # %cond.false.18
	movb	$1, %al
	movq	-8(%rbp), %rcx
	cmpl	$4, 164(%rcx)
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB9_14
# BB#13:                                # %lor.rhs.21
	movq	-8(%rbp), %rax
	cmpl	$5, 164(%rax)
	sete	%cl
	movb	%cl, -249(%rbp)         # 1-byte Spill
.LBB9_14:                               # %lor.end.24
	movb	-249(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
.LBB9_15:                               # %cond.end
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB9_16:                               # %cond.end.27
	movl	-244(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB9_23
	jmp	.LBB9_60
.LBB9_60:                               # %cond.end.27
	movl	-256(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB9_26
	jmp	.LBB9_61
.LBB9_61:                               # %cond.end.27
	movl	-256(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jne	.LBB9_29
	jmp	.LBB9_17
.LBB9_17:                               # %sw.bb.29
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_22
# BB#18:                                # %if.then.33
	movq	-8(%rbp), %rax
	cmpl	$0, 200(%rax)
	jge	.LBB9_20
# BB#19:                                # %if.then.35
	movq	$0, -16(%rbp)
	jmp	.LBB9_21
.LBB9_20:                               # %if.else
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movl	200(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
.LBB9_21:                               # %if.end.40
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.41
	jmp	.LBB9_23
.LBB9_23:                               # %sw.bb.42
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_25
# BB#24:                                # %if.then.51
	movabsq	$.L.str.12, %rdi
	movzbl	-105(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.12, %rdi
	movq	%rax, -96(%rbp)
	movzbl	-106(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.12, %rdi
	movq	%rax, -88(%rbp)
	movzbl	-107(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
.LBB9_25:                               # %if.end.60
	movl	$3, -104(%rbp)
	jmp	.LBB9_29
.LBB9_26:                               # %sw.bb.61
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_28
# BB#27:                                # %if.then.66
	movabsq	$.L.str.12, %rdi
	movzbl	-105(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
.LBB9_28:                               # %if.end.70
	movl	$1, -104(%rbp)
.LBB9_29:                               # %sw.epilog
	jmp	.LBB9_41
.LBB9_30:                               # %sw.bb.71
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.22, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movabsq	$.L.str.23, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_32
# BB#31:                                # %if.then.80
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	168(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	mulsd	176(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	mulsd	184(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
.LBB9_32:                               # %if.end.100
	movabsq	$.L.str.26, %rdi
	movl	$3, -104(%rbp)
	callq	gettext
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_34
# BB#33:                                # %if.then.105
	movabsq	$.L.str.27, %rdi
	movzbl	-105(%rbp), %esi
	movzbl	-106(%rbp), %edx
	movzbl	-107(%rbp), %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
.LBB9_34:                               # %if.end.111
	jmp	.LBB9_41
.LBB9_35:                               # %sw.bb.112
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_37
# BB#36:                                # %if.then.121
	leaq	-144(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_to_hsv
	movabsq	$.L.str.30, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm1         # xmm1 = mem[0],zero
	mulsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -96(%rbp)
	mulsd	-136(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -88(%rbp)
	mulsd	-128(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
.LBB9_37:                               # %if.end.138
	movl	$3, -104(%rbp)
	jmp	.LBB9_41
.LBB9_38:                               # %sw.bb.139
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_40
# BB#39:                                # %if.then.150
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_to_cmyk
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	-184(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -96(%rbp)
	mulsd	-176(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -88(%rbp)
	mulsd	-168(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -80(%rbp)
	mulsd	-160(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
.LBB9_40:                               # %if.end.172
	movl	$4, -104(%rbp)
.LBB9_41:                               # %sw.epilog.173
	cmpl	$0, -100(%rbp)
	je	.LBB9_48
# BB#42:                                # %if.then.175
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movslq	-104(%rbp), %rdi
	movq	%rax, -48(%rbp,%rdi,8)
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_47
# BB#43:                                # %if.then.180
	movq	-8(%rbp), %rax
	cmpl	$0, 204(%rax)
	jne	.LBB9_45
# BB#44:                                # %if.then.184
	movabsq	$.L.str.12, %rdi
	movzbl	-108(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movslq	-104(%rbp), %rdi
	movq	%rax, -96(%rbp,%rdi,8)
	jmp	.LBB9_46
.LBB9_45:                               # %if.else.189
	movabsq	$.L.str.25, %rdi
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	192(%rax), %xmm0
	cvttsd2si	%xmm0, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movslq	-104(%rbp), %rdi
	movq	%rax, -96(%rbp,%rdi,8)
.LBB9_46:                               # %if.end.197
	jmp	.LBB9_47
.LBB9_47:                               # %if.end.198
	jmp	.LBB9_48
.LBB9_48:                               # %if.end.199
	movl	$0, -112(%rbp)
.LBB9_49:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -112(%rbp)
	jge	.LBB9_58
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB9_55
# BB#51:                                # %if.then.205
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	240(%rcx,%rax,8), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-112(%rbp), %rcx
	movq	-48(%rbp,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB9_53
# BB#52:                                # %if.then.214
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	280(%rcx,%rax,8), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-112(%rbp), %rcx
	movq	-96(%rbp,%rcx,8), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB9_54
.LBB9_53:                               # %if.else.221
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	280(%rcx,%rax,8), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB9_54:                               # %if.end.228
                                        #   in Loop: Header=BB9_49 Depth=1
	jmp	.LBB9_56
.LBB9_55:                               # %if.else.229
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	240(%rcx,%rax,8), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movslq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	280(%rcx,%rax,8), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB9_56:                               # %if.end.240
                                        #   in Loop: Header=BB9_49 Depth=1
	movslq	-112(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdi
	callq	g_free
# BB#57:                                # %for.inc
                                        #   in Loop: Header=BB9_49 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_49
.LBB9_58:                               # %for.end
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_frame_update, .Lfunc_end9-gimp_color_frame_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_6
	.quad	.LBB9_30
	.quad	.LBB9_35
	.quad	.LBB9_38

	.text
	.globl	gimp_color_frame_set_invalid
	.align	16, 0x90
	.type	gimp_color_frame_set_invalid,@function
gimp_color_frame_set_invalid:           # @gimp_color_frame_set_invalid
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_frame_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_frame_set_invalid, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 160(%rax)
	jne	.LBB10_14
# BB#13:                                # %if.then.12
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.13
	movq	-8(%rbp), %rax
	movl	$0, 160(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_color_frame_update
.LBB10_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_frame_set_invalid, .Lfunc_end10-gimp_color_frame_set_invalid
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_frame_class_init,@function
gimp_color_frame_class_init:            # @gimp_color_frame_class_init
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_frame_expose, %rsi
	movabsq	$gimp_color_frame_style_set, %rdi
	movabsq	$gimp_color_frame_set_property, %rcx
	movabsq	$gimp_color_frame_get_property, %rdx
	movabsq	$gimp_color_frame_finalize, %r8
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 392(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_mode_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$256, %r8d              # imm = 0x100
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_frame_class_init, .Lfunc_end11-gimp_color_frame_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_frame_finalize,@function
gimp_color_frame_finalize:              # @gimp_color_frame_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_frame_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_frame_finalize, .Lfunc_end12-gimp_color_frame_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_frame_get_property,@function
gimp_color_frame_get_property:          # @gimp_color_frame_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
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
	ja	.LBB13_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	204(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB13_8
.LBB13_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	208(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB13_8
.LBB13_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	212(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB13_8
.LBB13_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	216(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB13_8
.LBB13_5:                               # %sw.default
	jmp	.LBB13_6
.LBB13_6:                               # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$215, %edx
	movabsq	$.L.str.11, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB13_8
.LBB13_8:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_frame_get_property, .Lfunc_end13-gimp_color_frame_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_1
	.quad	.LBB13_2
	.quad	.LBB13_3
	.quad	.LBB13_4

	.text
	.align	16, 0x90
	.type	gimp_color_frame_set_property,@function
gimp_color_frame_set_property:          # @gimp_color_frame_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
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
	ja	.LBB14_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_frame_set_mode
	jmp	.LBB14_8
.LBB14_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_frame_set_has_number
	jmp	.LBB14_8
.LBB14_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_frame_set_number
	jmp	.LBB14_8
.LBB14_4:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_color_frame_set_has_color_area
	jmp	.LBB14_8
.LBB14_5:                               # %sw.default
	jmp	.LBB14_6
.LBB14_6:                               # %do.body
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
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$247, %edx
	movabsq	$.L.str.11, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB14_8
.LBB14_8:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_frame_set_property, .Lfunc_end14-gimp_color_frame_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_1
	.quad	.LBB14_2
	.quad	.LBB14_3
	.quad	.LBB14_4

	.text
	.align	16, 0x90
	.type	gimp_color_frame_style_set,@function
gimp_color_frame_style_set:             # @gimp_color_frame_style_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_color_frame_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 320(%rax)
.LBB15_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_frame_style_set, .Lfunc_end15-gimp_color_frame_style_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_color_frame_expose,@function
gimp_color_frame_expose:                # @gimp_color_frame_expose
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	je	.LBB16_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_get_allocation
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-88(%rbp), %rdi
	callq	cairo_clip
	movq	-88(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	cairo_translate
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	212(%rax), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-24(%rbp), %rdx
	cmpq	$0, 320(%rdx)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB16_3
# BB#2:                                 # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	-24(%rbp), %rsi
	movq	%rax, 320(%rsi)
.LBB16_3:                               # %if.end
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	pango_layout_set_text
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movl	-36(%rbp), %ecx
	subl	-52(%rbp), %ecx
	subl	-68(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-104(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-88(%rbp), %rdi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	cairo_scale
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	divsd	-112(%rbp), %xmm1
	cvtsi2sdl	-100(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	-68(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	divsd	-112(%rbp), %xmm2
	cvtsi2sdl	-104(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	320(%rax), %rsi
	callq	pango_cairo_show_layout
	movq	-88(%rbp), %rdi
	callq	cairo_destroy
.LBB16_4:                               # %if.end.40
	movq	gimp_color_frame_parent_class, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_frame_expose, .Lfunc_end16-gimp_color_frame_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_frame_menu_callback,@function
gimp_color_frame_menu_callback:         # @gimp_color_frame_menu_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 204(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_color_frame_update
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_frame_menu_callback, .Lfunc_end18-gimp_color_frame_menu_callback
	.cfi_endproc

	.type	gimp_color_frame_get_type.g_define_type_id__volatile,@object # @gimp_color_frame_get_type.g_define_type_id__volatile
	.local	gimp_color_frame_get_type.g_define_type_id__volatile
	.comm	gimp_color_frame_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorFrame"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_color_frame_set_mode,@object # @__func__.gimp_color_frame_set_mode
.L__func__.gimp_color_frame_set_mode:
	.asciz	"gimp_color_frame_set_mode"
	.size	.L__func__.gimp_color_frame_set_mode, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_FRAME (frame)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"mode"
	.size	.L.str.3, 5

	.type	.L__func__.gimp_color_frame_set_has_number,@object # @__func__.gimp_color_frame_set_has_number
.L__func__.gimp_color_frame_set_has_number:
	.asciz	"gimp_color_frame_set_has_number"
	.size	.L__func__.gimp_color_frame_set_has_number, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"has-number"
	.size	.L.str.4, 11

	.type	.L__func__.gimp_color_frame_set_number,@object # @__func__.gimp_color_frame_set_number
.L__func__.gimp_color_frame_set_number:
	.asciz	"gimp_color_frame_set_number"
	.size	.L__func__.gimp_color_frame_set_number, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"number"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_color_frame_set_has_color_area,@object # @__func__.gimp_color_frame_set_has_color_area
.L__func__.gimp_color_frame_set_has_color_area:
	.asciz	"gimp_color_frame_set_has_color_area"
	.size	.L__func__.gimp_color_frame_set_has_color_area, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"visible"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"has-color-area"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_color_frame_set_color,@object # @__func__.gimp_color_frame_set_color
.L__func__.gimp_color_frame_set_color:
	.asciz	"gimp_color_frame_set_color"
	.size	.L__func__.gimp_color_frame_set_color, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color != NULL"
	.size	.L.str.8, 14

	.type	.L__func__.gimp_color_frame_set_invalid,@object # @__func__.gimp_color_frame_set_invalid
.L__func__.gimp_color_frame_set_invalid:
	.asciz	"gimp_color_frame_set_invalid"
	.size	.L__func__.gimp_color_frame_set_invalid, 29

	.type	gimp_color_frame_parent_class,@object # @gimp_color_frame_parent_class
	.local	gimp_color_frame_parent_class
	.comm	gimp_color_frame_parent_class,8,8
	.type	GimpColorFrame_private_offset,@object # @GimpColorFrame_private_offset
	.local	GimpColorFrame_private_offset
	.comm	GimpColorFrame_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcolorframe.c"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%d"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"changed"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"type"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"drag-mask"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"draw-border"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"height-request"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" "
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Index:"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Red:"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Green:"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Blue:"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Value:"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%d %%"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Hex:"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%.2x%.2x%.2x"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Hue:"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Sat.:"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%d \302\260"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Cyan:"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Magenta:"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Yellow:"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Black:"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Alpha:"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"n/a"
	.size	.L.str.36, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
