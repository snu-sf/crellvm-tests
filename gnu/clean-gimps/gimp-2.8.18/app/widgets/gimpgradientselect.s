	.text
	.file	"gimpgradientselect.bc"
	.globl	gimp_gradient_select_get_type
	.align	16, 0x90
	.type	gimp_gradient_select_get_type,@function
gimp_gradient_select_get_type:          # @gimp_gradient_select_get_type
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
	movq	gimp_gradient_select_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_gradient_select_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_pdb_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1000, %edx             # imm = 0x3E8
	movabsq	$gimp_gradient_select_class_intern_init, %rdi
	movl	$344, %r8d              # imm = 0x158
	movabsq	$gimp_gradient_select_init, %rcx
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
	movabsq	$gimp_gradient_select_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_gradient_select_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gradient_select_get_type, .Lfunc_end0-gimp_gradient_select_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_select_class_intern_init,@function
gimp_gradient_select_class_intern_init: # @gimp_gradient_select_class_intern_init
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
	movq	%rax, gimp_gradient_select_parent_class
	cmpl	$0, GimpGradientSelect_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGradientSelect_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_gradient_select_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gradient_select_class_intern_init, .Lfunc_end1-gimp_gradient_select_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_select_init,@function
gimp_gradient_select_init:              # @gimp_gradient_select_init
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
	.size	gimp_gradient_select_init, .Lfunc_end2-gimp_gradient_select_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_select_class_init,@function
gimp_gradient_select_class_init:        # @gimp_gradient_select_class_init
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$10000, %r8d            # imm = 0x2710
	movl	$84, %r9d
	movl	$234, %edx
	movabsq	$gimp_gradient_select_run_callback, %r10
	movabsq	$gimp_gradient_select_set_property, %r11
	movabsq	$gimp_gradient_select_constructed, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%r10, 992(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	$234, (%rsp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gradient_select_class_init, .Lfunc_end3-gimp_gradient_select_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_select_constructed,@function
gimp_gradient_select_constructed:       # @gimp_gradient_select_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_gradient_select_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_gradient_select_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	xorl	%edi, %edi
	movl	$32, %ecx
	movl	$1, %r8d
	movabsq	$.L.str.2, %rax
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %r9
	movq	280(%r9), %r9
	movq	32(%r9), %r9
	movq	488(%r9), %r9
	movq	-16(%rbp), %r10
	movq	280(%r10), %r10
	movq	-16(%rbp), %r11
	movq	320(%r11), %r11
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, %r9
	movq	%rax, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_data_factory_view_new
	movq	-16(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$204, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_container_box_set_size_request
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_show
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gradient_select_constructed, .Lfunc_end4-gimp_gradient_select_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_select_set_property,@function
gimp_gradient_select_set_property:      # @gimp_gradient_select_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_gradient_select_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 336(%rdi)
	jmp	.LBB5_5
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$132, %edx
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gradient_select_set_property, .Lfunc_end5-gimp_gradient_select_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_gradient_select_run_callback,@function
gimp_gradient_select_run_callback:      # @gimp_gradient_select_run_callback
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_gradient_select_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$8, %edx
	movl	%edx, %esi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	336(%rax), %edx
	movl	%edx, -116(%rbp)
	movsd	%xmm1, -72(%rbp)
	movl	-116(%rbp), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movl	-116(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%ecx, %ecx
	leaq	-112(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rsi
	movq	-48(%rbp), %rdx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_gradient_get_color_at
	movq	%rax, -48(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -64(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -64(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -64(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -64(%rbp)
	movsd	%xmm0, (%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB6_1
.LBB6_3:                                # %while.end
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_gradient_select_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	336(%rax), %r8d
	shll	$2, %r8d
	movslq	%r8d, %rax
	shlq	$3, %rax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_array_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	272(%rax), %rsi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	304(%rax), %r8
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	shrq	$3, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_float_array_get_type
	movq	-128(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$4, %r10d
	movl	%r10d, %ecx
	movl	-20(%rbp), %r10d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	-240(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	%r10d, 48(%rsp)
	movq	$4, 56(%rsp)
	movb	$0, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_array_free
	movq	-136(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_gradient_select_run_callback, .Lfunc_end6-gimp_gradient_select_run_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	movl	$.L.str.8, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_warning, .Lfunc_end7-g_warning
	.cfi_endproc

	.type	gimp_gradient_select_get_type.g_define_type_id__volatile,@object # @gimp_gradient_select_get_type.g_define_type_id__volatile
	.local	gimp_gradient_select_get_type.g_define_type_id__volatile
	.comm	gimp_gradient_select_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGradientSelect"
	.size	.L.str, 19

	.type	gimp_gradient_select_parent_class,@object # @gimp_gradient_select_parent_class
	.local	gimp_gradient_select_parent_class
	.comm	gimp_gradient_select_parent_class,8,8
	.type	GimpGradientSelect_private_offset,@object # @GimpGradientSelect_private_offset
	.local	GimpGradientSelect_private_offset
	.comm	GimpGradientSelect_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sample-size"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<Gradients>"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/gradients-popup"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gradients"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpgradientselect.c"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"property"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-Widgets"
	.size	.L.str.8, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
