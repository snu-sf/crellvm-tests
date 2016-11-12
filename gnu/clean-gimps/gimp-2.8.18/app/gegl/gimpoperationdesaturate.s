	.text
	.file	"gimpoperationdesaturate.bc"
	.globl	gimp_operation_desaturate_get_type
	.align	16, 0x90
	.type	gimp_operation_desaturate_get_type,@function
gimp_operation_desaturate_get_type:     # @gimp_operation_desaturate_get_type
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
	movq	gimp_operation_desaturate_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_desaturate_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_operation_point_filter_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$400, %edx              # imm = 0x190
	movabsq	$gimp_operation_desaturate_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_desaturate_init, %rcx
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
	movabsq	$gimp_operation_desaturate_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_desaturate_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_desaturate_get_type, .Lfunc_end0-gimp_operation_desaturate_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_desaturate_class_intern_init,@function
gimp_operation_desaturate_class_intern_init: # @gimp_operation_desaturate_class_intern_init
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
	movq	%rax, gimp_operation_desaturate_parent_class
	cmpl	$0, GimpOperationDesaturate_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationDesaturate_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_desaturate_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_desaturate_class_intern_init, .Lfunc_end1-gimp_operation_desaturate_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_desaturate_init,@function
gimp_operation_desaturate_init:         # @gimp_operation_desaturate_init
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
	.size	gimp_operation_desaturate_init, .Lfunc_end2-gimp_operation_desaturate_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_desaturate_class_init,@function
gimp_operation_desaturate_class_init:   # @gimp_operation_desaturate_class_init
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
	subq	$96, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gegl_operation_point_filter_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movabsq	$gimp_operation_point_filter_get_property, %rbx
	movabsq	$gimp_operation_point_filter_set_property, %r14
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -80(%rbp)         # 8-byte Spill
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_desaturate_process, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_desaturate_config_get_type
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_desaturate_class_init, .Lfunc_end3-gimp_operation_desaturate_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1077936128              # float 3
.LCPI4_4:
	.long	1073741824              # float 2
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI4_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI4_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.align	16, 0x90
	.type	gimp_operation_desaturate_process,@function
gimp_operation_desaturate_process:      # @gimp_operation_desaturate_process
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_filter_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_desaturate_config_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_28
.LBB4_2:                                # %if.end
	movq	-72(%rbp), %rax
	movl	40(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_29
.LBB4_29:                               # %if.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB4_19
	jmp	.LBB4_30
.LBB4_30:                               # %if.end
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB4_23
	jmp	.LBB4_27
.LBB4_3:                                # %sw.bb
	jmp	.LBB4_4
.LBB4_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_18
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	ucomiss	4(%rax), %xmm0
	jbe	.LBB4_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)       # 4-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)       # 4-byte Spill
.LBB4_8:                                # %cond.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-144(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	ucomiss	8(%rax), %xmm0
	jbe	.LBB4_10
# BB#9:                                 # %cond.true.11
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)       # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.12
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)       # 4-byte Spill
.LBB4_11:                               # %cond.end.14
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-148(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_13
# BB#12:                                # %cond.true.19
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -152(%rbp)       # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.21
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -152(%rbp)       # 4-byte Spill
.LBB4_14:                               # %cond.end.23
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-152(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_16
# BB#15:                                # %cond.true.27
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)       # 4-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false.28
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-80(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)       # 4-byte Spill
.LBB4_17:                               # %cond.end.30
                                        #   in Loop: Header=BB4_4 Depth=1
	movss	-156(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-92(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movss	-100(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-100(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-100(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB4_4
.LBB4_18:                               # %while.end
	jmp	.LBB4_27
.LBB4_19:                               # %sw.bb.38
	jmp	.LBB4_20
.LBB4_20:                               # %while.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_22
# BB#21:                                # %while.body.42
                                        #   in Loop: Header=BB4_20 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movq	-80(%rbp), %rax
	cvtss2sd	(%rax), %xmm3
	mulsd	%xmm2, %xmm3
	movq	-80(%rbp), %rax
	cvtss2sd	4(%rax), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm3
	movq	-80(%rbp), %rax
	cvtss2sd	8(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm3
	cvtsd2ss	%xmm3, %xmm0
	movss	%xmm0, -104(%rbp)
	movss	-104(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-104(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-104(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB4_20
.LBB4_22:                               # %while.end.61
	jmp	.LBB4_27
.LBB4_23:                               # %sw.bb.62
	jmp	.LBB4_24
.LBB4_24:                               # %while.cond.63
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_26
# BB#25:                                # %while.body.66
                                        #   in Loop: Header=BB4_24 Depth=1
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	addss	4(%rax), %xmm1
	movq	-80(%rbp), %rax
	addss	8(%rax), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -108(%rbp)
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movss	-108(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB4_24
.LBB4_26:                               # %while.end.81
	jmp	.LBB4_27
.LBB4_27:                               # %sw.epilog
	movl	$1, -4(%rbp)
.LBB4_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_desaturate_process, .Lfunc_end4-gimp_operation_desaturate_process
	.cfi_endproc

	.type	gimp_operation_desaturate_get_type.g_define_type_id__volatile,@object # @gimp_operation_desaturate_get_type.g_define_type_id__volatile
	.local	gimp_operation_desaturate_get_type.g_define_type_id__volatile
	.comm	gimp_operation_desaturate_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationDesaturate"
	.size	.L.str, 24

	.type	gimp_operation_desaturate_parent_class,@object # @gimp_operation_desaturate_parent_class
	.local	gimp_operation_desaturate_parent_class
	.comm	gimp_operation_desaturate_parent_class,8,8
	.type	GimpOperationDesaturate_private_offset,@object # @GimpOperationDesaturate_private_offset
	.local	GimpOperationDesaturate_private_offset
	.comm	GimpOperationDesaturate_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:desaturate"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"categories"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"description"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP Desaturate operation"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"config"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Config"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The config object"
	.size	.L.str.9, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
