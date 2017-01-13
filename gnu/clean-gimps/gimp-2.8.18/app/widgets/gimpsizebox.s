	.text
	.file	"gimpsizebox.bc"
	.globl	gimp_size_box_get_type
	.align	16, 0x90
	.type	gimp_size_box_get_type,@function
gimp_size_box_get_type:                 # @gimp_size_box_get_type
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
	movq	gimp_size_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_size_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_size_box_class_intern_init, %rdi
	movl	$176, %r8d
	movabsq	$gimp_size_box_init, %rcx
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
	movabsq	$gimp_size_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_size_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_size_box_get_type, .Lfunc_end0-gimp_size_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_box_class_intern_init,@function
gimp_size_box_class_intern_init:        # @gimp_size_box_class_intern_init
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
	movq	%rax, gimp_size_box_parent_class
	cmpl	$0, GimpSizeBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSizeBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_size_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_size_box_class_intern_init, .Lfunc_end1-gimp_size_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_box_init,@function
gimp_size_box_init:                     # @gimp_size_box_init
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
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	-8(%rbp), %rcx
	movq	%rax, 128(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_size_box_init, .Lfunc_end2-gimp_size_box_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI3_1:
	.quad	4679240012837945344     # double 65536
.LCPI3_2:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	gimp_size_box_class_init,@function
gimp_size_box_class_init:               # @gimp_size_box_class_init
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
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_size_box_get_property, %rdi
	movabsq	$gimp_size_box_set_property, %rdx
	movabsq	$gimp_size_box_dispose, %r8
	movabsq	$gimp_size_box_constructed, %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$256, %r9d              # imm = 0x100
	movl	$231, %r10d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	movl	%r10d, -28(%rbp)        # 4-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$256, %r9d              # imm = 0x100
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	$231, (%rsp)
	callq	gimp_param_spec_unit
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movl	$231, (%rsp)
	callq	gimp_param_spec_unit
	movl	$6, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$235, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_size_box_class_init, .Lfunc_end3-gimp_size_box_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4688247212092686336     # double 262144
.LCPI4_2:
	.quad	4605681218924226942     # double 0.83333333333329995
.LCPI4_3:
	.quad	4621819117588971520     # double 10
.LCPI4_4:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.align	16, 0x90
	.type	gimp_size_box_constructed,@function
gimp_size_box_constructed:              # @gimp_size_box_constructed
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
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_size_box_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_size_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rdi
	movq	-16(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rsi
	cvtsi2sdl	136(%rsi), %xmm0
	movq	-16(%rbp), %rsi
	movsd	152(%rsi), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	cvtsi2sdl	136(%rsi), %xmm5
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movsd	%xmm5, -176(%rbp)       # 8-byte Spill
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movl	$1, %ecx
	movl	$8, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm5, %xmm5
	movq	-16(%rbp), %rdi
	cvtsi2sdl	140(%rdi), %xmm6
	movq	-16(%rbp), %rdi
	movsd	160(%rdi), %xmm7        # xmm7 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	140(%rdi), %xmm2
	movl	-160(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movsd	-184(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-192(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-208(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	movaps	%xmm8, %xmm2
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movaps	%xmm5, %xmm4
	movsd	-176(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm5, -232(%rbp)       # 8-byte Spill
	movaps	%xmm9, %xmm5
	movq	%rax, 24(%rsp)
	movsd	%xmm8, 32(%rsp)
	movsd	-216(%rbp), %xmm10      # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	%xmm10, 40(%rsp)
	movsd	-232(%rbp), %xmm11      # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	%xmm11, 48(%rsp)
	movsd	-224(%rbp), %xmm12      # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	%xmm12, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-40(%rbp), %r8
	movq	-16(%rbp), %rdi
	movsd	152(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	160(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_prop_coordinates_connect
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_size_box_chain_toggled, %rcx
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_18
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_label_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.41
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB4_11
.LBB4_6:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_9
# BB#8:                                 # %if.then.45
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.46
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_10:                               # %if.end.48
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.49
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.51
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
.LBB4_13:                               # %if.end.53
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false
                                        #   in Loop: Header=BB4_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB4_17
.LBB4_17:                               # %cond.end
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB4_3
.LBB4_18:                               # %for.end
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %ecx
	movl	$2, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-56(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -332(%rbp)       # 4-byte Spill
	movss	-332(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rax
	cmpl	$0, 172(%rax)
	je	.LBB4_39
# BB#19:                                # %if.then.66
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	152(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	160(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_21
# BB#20:                                # %cond.true.75
	movq	-16(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	160(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	jmp	.LBB4_22
.LBB4_21:                               # %cond.false.80
	movq	-16(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	160(%rax), %xmm0
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
.LBB4_22:                               # %cond.end.84
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.15, %rdi
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -100(%rbp)
	movq	-16(%rbp), %rdx
	movl	168(%rdx), %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rdi
	movl	-100(%rbp), %ecx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rdx
	movsd	152(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movl	$2, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	160(%rdx), %xmm6        # xmm6 = mem[0],zero
	movl	-380(%rbp), %edi        # 4-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-396(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movq	-408(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movsd	-416(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-424(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -432(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-424(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-432(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, 24(%rsp)
	movsd	-424(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	-424(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm8, 32(%rsp)
	movsd	%xmm8, 40(%rsp)
	movsd	%xmm8, 48(%rsp)
	movsd	-432(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB4_23:                               # %for.cond.99
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_38
# BB#24:                                # %for.body.101
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	callq	gtk_label_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_26
# BB#25:                                # %if.then.111
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB4_31
.LBB4_26:                               # %if.else.112
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_29
# BB#27:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_29
# BB#28:                                # %if.then.120
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.121
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_30:                               # %if.end.123
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.124
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.127
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
.LBB4_33:                               # %if.end.130
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc.131
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_36
# BB#35:                                # %cond.true.133
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false.135
                                        #   in Loop: Header=BB4_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_37:                               # %cond.end.136
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB4_23
.LBB4_38:                               # %for.end.138
	movq	-64(%rbp), %rdi
	callq	g_list_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %r8
	movq	%rax, %rdi
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_prop_coordinates_connect
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.141
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-56(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -500(%rbp)       # 4-byte Spill
	movss	-500(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -516(%rbp)        # 4-byte Spill
	movl	-516(%rbp), %ecx        # 4-byte Reload
	movl	-516(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
.LBB4_40:                               # %if.end.149
	movq	-16(%rbp), %rdi
	callq	gimp_size_box_update_size
	movq	-16(%rbp), %rdi
	callq	gimp_size_box_update_resolution
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_size_box_constructed, .Lfunc_end4-gimp_size_box_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_box_dispose,@function
gimp_size_box_dispose:                  # @gimp_size_box_dispose
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_size_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_size_box_dispose, .Lfunc_end5-gimp_size_box_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_box_set_property,@function
gimp_size_box_set_property:             # @gimp_size_box_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB6_15
# BB#19:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 136(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_size_box_update_size
	jmp	.LBB6_18
.LBB6_2:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 140(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_size_box_update_size
	jmp	.LBB6_18
.LBB6_3:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 144(%rdi)
	jmp	.LBB6_18
.LBB6_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 152(%rdi)
	movq	-48(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB6_6
# BB#5:                                 # %if.then
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_resolution
.LBB6_6:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_size_box_update_resolution
	jmp	.LBB6_18
.LBB6_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 160(%rdi)
	movq	-48(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB6_9
# BB#8:                                 # %if.then.17
	movl	$1, %eax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movsd	160(%rcx), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_size_entry_set_resolution
.LBB6_9:                                # %if.end.20
	movq	-40(%rbp), %rdi
	callq	gimp_size_box_update_resolution
	jmp	.LBB6_18
.LBB6_10:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 168(%rdi)
	jmp	.LBB6_18
.LBB6_11:                               # %sw.bb.23
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_13
# BB#12:                                # %if.then.25
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boolean
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_chain_button_set_active
.LBB6_13:                               # %if.end.28
	jmp	.LBB6_18
.LBB6_14:                               # %sw.bb.29
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 172(%rdi)
	jmp	.LBB6_18
.LBB6_15:                               # %sw.default
	jmp	.LBB6_16
.LBB6_16:                               # %do.body
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
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movl	$370, %edx              # imm = 0x172
	movabsq	$.L.str.24, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#17:                                # %do.end
	jmp	.LBB6_18
.LBB6_18:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_size_box_set_property, .Lfunc_end6-gimp_size_box_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_7
	.quad	.LBB6_10
	.quad	.LBB6_11
	.quad	.LBB6_14

	.text
	.align	16, 0x90
	.type	gimp_size_box_get_property,@function
gimp_size_box_get_property:             # @gimp_size_box_get_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB7_9
# BB#13:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	136(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_12
.LBB7_2:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	140(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_12
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	144(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_12
.LBB7_4:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	152(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_12
.LBB7_5:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_12
.LBB7_6:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	168(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_12
.LBB7_7:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB7_12
.LBB7_8:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	172(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_12
.LBB7_9:                                # %sw.default
	jmp	.LBB7_10
.LBB7_10:                               # %do.body
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
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movl	$420, %edx              # imm = 0x1A4
	movabsq	$.L.str.24, %rcx
	movl	-116(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB7_12
.LBB7_12:                               # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_size_box_get_property, .Lfunc_end7-gimp_size_box_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8

	.text
	.align	16, 0x90
	.type	gimp_size_box_chain_toggled,@function
gimp_size_box_chain_toggled:            # @gimp_size_box_chain_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_active
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_size_box_chain_toggled, .Lfunc_end8-gimp_size_box_chain_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_box_update_size,@function
gimp_size_box_update_size:              # @gimp_size_box_update_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rax
	movslq	140(%rax), %rdx
	callq	ngettext
	movq	-8(%rbp), %rdx
	movl	136(%rdx), %esi
	movq	-8(%rbp), %rdx
	movl	140(%rdx), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB9_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_size_box_update_size, .Lfunc_end9-gimp_size_box_update_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_size_box_update_resolution,@function
gimp_size_box_update_resolution:        # @gimp_size_box_update_resolution
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	136(%rax), %xmm0
	callq	gimp_size_entry_set_refval
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	140(%rax), %xmm0
	callq	gimp_size_entry_set_refval
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_7
# BB#3:                                 # %if.then.6
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	addsd	152(%rax), %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	addsd	160(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	je	.LBB10_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movl	-32(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
.LBB10_6:                               # %if.end.16
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB10_7:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_size_box_update_resolution, .Lfunc_end10-gimp_size_box_update_resolution
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
	movl	$.L.str.25, %r9d
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

	.type	gimp_size_box_get_type.g_define_type_id__volatile,@object # @gimp_size_box_get_type.g_define_type_id__volatile
	.local	gimp_size_box_get_type.g_define_type_id__volatile
	.comm	gimp_size_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSizeBox"
	.size	.L.str, 12

	.type	gimp_size_box_parent_class,@object # @gimp_size_box_parent_class
	.local	gimp_size_box_parent_class
	.comm	gimp_size_box_parent_class,8,8
	.type	GimpSizeBox_private_offset,@object # @GimpSizeBox_private_offset
	.local	GimpSizeBox_private_offset
	.comm	GimpSizeBox_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"width"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"height"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"unit"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"xresolution"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"yresolution"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"resolution-unit"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"keep-aspect"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"edit-resolution"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%p"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_Width:"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"H_eight:"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"chainbutton"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"constrains-ratio"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"toggled"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pixels/%a"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_X resolution:"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Y resolution:"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%d \303\227 %d pixel"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d \303\227 %d pixels"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%d \303\227 %d ppi"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%d ppi"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.22, 54

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimpsizebox.c"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"property"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Gimp-Widgets"
	.size	.L.str.25, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
