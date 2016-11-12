	.text
	.file	"gimpblobeditor.bc"
	.globl	gimp_blob_editor_get_type
	.align	16, 0x90
	.type	gimp_blob_editor_get_type,@function
gimp_blob_editor_get_type:              # @gimp_blob_editor_get_type
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
	movq	gimp_blob_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_blob_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_drawing_area_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$752, %edx              # imm = 0x2F0
	movabsq	$gimp_blob_editor_class_intern_init, %rdi
	movl	$136, %r8d
	movabsq	$gimp_blob_editor_init, %rcx
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
	movabsq	$gimp_blob_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_blob_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_blob_editor_get_type, .Lfunc_end0-gimp_blob_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_class_intern_init,@function
gimp_blob_editor_class_intern_init:     # @gimp_blob_editor_class_intern_init
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
	movq	%rax, gimp_blob_editor_parent_class
	cmpl	$0, GimpBlobEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBlobEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_blob_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_blob_editor_class_intern_init, .Lfunc_end1-gimp_blob_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_init,@function
gimp_blob_editor_init:                  # @gimp_blob_editor_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$774, %esi              # imm = 0x306
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_blob_editor_init, .Lfunc_end2-gimp_blob_editor_init
	.cfi_endproc

	.globl	gimp_blob_editor_new
	.align	16, 0x90
	.type	gimp_blob_editor_new,@function
gimp_blob_editor_new:                   # @gimp_blob_editor_new
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
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	callq	gimp_blob_editor_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r8
	xorl	%edi, %edi
	movl	%edi, %r9d
	movl	-4(%rbp), %edx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_blob_editor_new, .Lfunc_end3-gimp_blob_editor_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4587338432941916160    # double -90
.LCPI4_1:
	.quad	4636033603912859648     # double 90
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_blob_editor_class_init,@function
gimp_blob_editor_class_init:            # @gimp_blob_editor_class_init
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
	subq	$64, %rsp
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
	movabsq	$gimp_blob_editor_motion_notify, %rsi
	movabsq	$gimp_blob_editor_button_release, %rdi
	movabsq	$gimp_blob_editor_button_press, %rcx
	movabsq	$gimp_blob_editor_expose, %rdx
	movabsq	$gimp_blob_editor_get_property, %r8
	movabsq	$gimp_blob_editor_set_property, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 368(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_ink_blob_type_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_blob_editor_class_init, .Lfunc_end4-gimp_blob_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_set_property,@function
gimp_blob_editor_set_property:          # @gimp_blob_editor_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_8
.LBB5_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_4
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 104(%rdi)
	jmp	.LBB5_7
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 112(%rdi)
	jmp	.LBB5_7
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 120(%rdi)
	jmp	.LBB5_7
.LBB5_4:                                # %sw.default
	jmp	.LBB5_5
.LBB5_5:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$152, %edx
	movabsq	$.L.str.6, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_blob_editor_set_property, .Lfunc_end5-gimp_blob_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_get_property,@function
gimp_blob_editor_get_property:          # @gimp_blob_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	104(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_7
.LBB6_4:                                # %sw.default
	jmp	.LBB6_5
.LBB6_5:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$180, %edx
	movabsq	$.L.str.6, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_blob_editor_get_property, .Lfunc_end6-gimp_blob_editor_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_2:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI7_3:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_blob_editor_expose,@function
gimp_blob_editor_expose:                # @gimp_blob_editor_expose
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_state
	leaq	-64(%rbp), %rsi
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB7_2
# BB#1:                                 # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movl	-52(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -92(%rbp)
	cmpl	$2, -92(%rbp)
	jge	.LBB7_5
# BB#4:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cvtsi2sdl	-56(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	divsd	%xmm1, %xmm3
	cvtsi2sdl	-92(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_blob_editor_draw_blob
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_blob_editor_get_handle
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-84(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_rectangle
	movq	-72(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	addq	$144, %rsi
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-72(%rbp), %rdi
	callq	cairo_fill_preserve
	movq	-72(%rbp), %rdi
	movl	-44(%rbp), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	addq	$204, %rsi
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-72(%rbp), %rdi
	callq	cairo_stroke
	movq	-72(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -4(%rbp)
.LBB7_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_blob_editor_expose, .Lfunc_end7-gimp_blob_editor_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_button_press,@function
gimp_blob_editor_button_press:          # @gimp_blob_editor_button_press
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_blob_editor_get_handle
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_5
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_5
# BB#2:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_5
# BB#3:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_5
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, 128(%rax)
.LBB8_5:                                # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_blob_editor_button_press, .Lfunc_end8-gimp_blob_editor_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_editor_button_release,@function
gimp_blob_editor_button_release:        # @gimp_blob_editor_button_release
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 128(%rax)
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_blob_editor_button_release, .Lfunc_end9-gimp_blob_editor_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4621819117588971520     # double 10
.LCPI10_1:
	.quad	4605831338911806259     # double 0.84999999999999998
.LCPI10_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_blob_editor_motion_notify,@function
gimp_blob_editor_motion_notify:         # @gimp_blob_editor_motion_notify
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_blob_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 128(%rax)
	je	.LBB10_13
# BB#1:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	$2, %eax
	movq	-16(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movl	-32(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	-48(%rbp), %r8d
	imull	-48(%rbp), %r8d
	addl	%r8d, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.LBB10_12
# BB#2:                                 # %if.then.11
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_4
# BB#3:                                 # %cond.true
	movl	-32(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB10_5:                               # %cond.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -56(%rbp)
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	atan2
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	cvtsi2sdl	-52(%rbp), %xmm0
	movl	-56(%rbp), %eax
	imull	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm3, %xmm0
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jbe	.LBB10_7
# BB#6:                                 # %cond.true.31
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB10_11
.LBB10_7:                               # %cond.false.32
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB10_9
# BB#8:                                 # %cond.true.35
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false.36
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB10_10:                              # %cond.end.37
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB10_11:                              # %cond.end.39
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.2, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set
.LBB10_12:                              # %if.end
	jmp	.LBB10_13
.LBB10_13:                              # %if.end.41
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_blob_editor_motion_notify, .Lfunc_end10-gimp_blob_editor_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.7, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_blob_editor_draw_blob,@function
gimp_blob_editor_draw_blob:             # @gimp_blob_editor_draw_blob
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	gtk_widget_get_style
	movq	%rax, -56(%rbp)
	movq	$gimp_blob_ellipse, -72(%rbp)
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_23
.LBB12_23:                              # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB12_2
	jmp	.LBB12_24
.LBB12_24:                              # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_4
.LBB12_1:                               # %sw.bb
	movabsq	$gimp_blob_ellipse, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB12_4
.LBB12_2:                               # %sw.bb.3
	movabsq	$gimp_blob_square, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %sw.bb.4
	movabsq	$gimp_blob_diamond, %rax
	movq	%rax, -72(%rbp)
.LBB12_4:                               # %sw.epilog
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	-40(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-72(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm0
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	120(%rcx), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movsd	%xmm2, -136(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	divsd	112(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	divsd	112(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-184(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-192(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	-128(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB12_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	jg	.LBB12_8
# BB#7:                                 # %if.then
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cvtsi2sdl	8(%rcx,%rax,8), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	addl	-76(%rbp), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	jmp	.LBB12_10
.LBB12_8:                               # %if.end
                                        #   in Loop: Header=BB12_5 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               # %for.inc
                                        #   in Loop: Header=BB12_5 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_5
.LBB12_10:                              # %for.end
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB12_11:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_16
# BB#12:                                # %for.body.37
                                        #   in Loop: Header=BB12_11 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	jle	.LBB12_14
# BB#13:                                # %if.then.48
	jmp	.LBB12_16
.LBB12_14:                              # %if.end.49
                                        #   in Loop: Header=BB12_11 Depth=1
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cvtsi2sdl	8(%rcx,%rax,8), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	addl	-76(%rbp), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#15:                                # %for.inc.60
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_11
.LBB12_16:                              # %for.end.62
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB12_17:                              # %for.cond.64
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	jl	.LBB12_22
# BB#18:                                # %for.body.67
                                        #   in Loop: Header=BB12_17 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	jle	.LBB12_20
# BB#19:                                # %if.then.78
	jmp	.LBB12_22
.LBB12_20:                              # %if.end.79
                                        #   in Loop: Header=BB12_17 Depth=1
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	cvtsi2sdl	12(%rcx,%rax,8), %xmm1
	divsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	addl	-76(%rbp), %edx
	cvtsi2sdl	%edx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
# BB#21:                                # %for.inc.90
                                        #   in Loop: Header=BB12_17 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_17
.LBB12_22:                              # %for.end.91
	movq	-16(%rbp), %rdi
	callq	cairo_close_path
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	addq	$24, %rcx
	imulq	$12, %rdi, %rdi
	addq	%rdi, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gdk_cairo_set_source_color
	movq	-16(%rbp), %rdi
	callq	cairo_fill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_blob_editor_draw_blob, .Lfunc_end12-gimp_blob_editor_draw_blob
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4621819117588971520     # double 10
.LCPI13_1:
	.quad	4605831338911806259     # double 0.84999999999999998
	.text
	.align	16, 0x90
	.type	gimp_blob_editor_get_handle,@function
gimp_blob_editor_get_handle:            # @gimp_blob_editor_get_handle
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jge	.LBB13_2
# BB#1:                                 # %cond.true
	movl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	cvtsi2sdl	-52(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-8(%rbp), %rsi
	mulsd	112(%rsi), %xmm4
	divsd	%xmm0, %xmm4
	movq	-8(%rbp), %rsi
	movsd	120(%rsi), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movsd	%xmm4, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	%xmm2, -112(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movq	-8(%rbp), %rsi
	mulsd	112(%rsi), %xmm2
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm2
	movq	-8(%rbp), %rsi
	movsd	120(%rsi), %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -128(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	$5, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-48(%rbp), %eax
	subl	$5, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-16(%rbp), %rsi
	movl	$10, 8(%rsi)
	movq	-16(%rbp), %rsi
	movl	$10, 12(%rsi)
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_blob_editor_get_handle, .Lfunc_end13-gimp_blob_editor_get_handle
	.cfi_endproc

	.type	gimp_blob_editor_get_type.g_define_type_id__volatile,@object # @gimp_blob_editor_get_type.g_define_type_id__volatile
	.local	gimp_blob_editor_get_type.g_define_type_id__volatile
	.comm	gimp_blob_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBlobEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"blob-type"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"blob-aspect"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"blob-angle"
	.size	.L.str.3, 11

	.type	gimp_blob_editor_parent_class,@object # @gimp_blob_editor_parent_class
	.local	gimp_blob_editor_parent_class
	.comm	gimp_blob_editor_parent_class,8,8
	.type	GimpBlobEditor_private_offset,@object # @GimpBlobEditor_private_offset
	.local	GimpBlobEditor_private_offset
	.comm	GimpBlobEditor_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.4, 54

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpblobeditor.c"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"property"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Widgets"
	.size	.L.str.7, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
