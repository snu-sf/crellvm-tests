	.text
	.file	"gimpbrushcore.bc"
	.globl	gimp_brush_core_get_type
	.align	16, 0x90
	.type	gimp_brush_core_get_type,@function
gimp_brush_core_get_type:               # @gimp_brush_core_get_type
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
	movq	gimp_brush_core_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_core_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_paint_core_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_brush_core_class_intern_init, %rdi
	movl	$6480, %r8d             # imm = 0x1950
	movabsq	$gimp_brush_core_init, %rcx
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
	movabsq	$gimp_brush_core_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_core_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_core_get_type, .Lfunc_end0-gimp_brush_core_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_class_intern_init,@function
gimp_brush_core_class_intern_init:      # @gimp_brush_core_class_intern_init
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
	movq	%rax, gimp_brush_core_parent_class
	cmpl	$0, GimpBrushCore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushCore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_core_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_core_class_intern_init, .Lfunc_end1-gimp_brush_core_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4645040803167600640     # double 360
.LCPI2_2:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	gimp_brush_core_init,@function
gimp_brush_core_init:                   # @gimp_brush_core_init
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
	subq	$48, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 352(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 360(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 368(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 376(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 384(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 392(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 400(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 408(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 416(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 456(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 464(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 472(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 480(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 688(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 696(%rdi)
	callq	g_rand_new
	movq	-8(%rbp), %rdi
	movq	%rax, 6472(%rdi)
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	cmpl	$2, -12(%rbp)
	jge	.LBB2_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -16(%rbp)
.LBB2_3:                                # %for.cond.1
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -16(%rbp)
	jge	.LBB2_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB2_3 Depth=2
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %for.inc.6
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_8:                                # %for.end.8
	movl	$0, -12(%rbp)
.LBB2_9:                                # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$359, -12(%rbp)         # imm = 0x167
	jge	.LBB2_12
# BB#10:                                # %for.body.11
                                        #   in Loop: Header=BB2_9 Depth=1
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_2, %xmm1         # xmm1 = mem[0],zero
	movl	$360, %eax              # imm = 0x168
	imull	$360, -12(%rbp), %ecx   # imm = 0x168
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	cos
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 3592(%rdi,%rsi,8)
	imull	$360, -12(%rbp), %eax   # imm = 0x168
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	callq	sin
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 712(%rdi,%rsi,8)
# BB#11:                                # %for.inc.25
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_9
.LBB2_12:                               # %for.end.27
	jmp	.LBB2_13
.LBB2_13:                               # %do.body
	jmp	.LBB2_14
.LBB2_14:                               # %do.end
	movl	$0, -12(%rbp)
.LBB2_15:                               # %for.cond.28
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	cmpl	$5, -12(%rbp)
	jge	.LBB2_22
# BB#16:                                # %for.body.31
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	$0, -16(%rbp)
.LBB2_17:                               # %for.cond.32
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -16(%rbp)
	jge	.LBB2_20
# BB#18:                                # %for.body.35
                                        #   in Loop: Header=BB2_17 Depth=2
	movslq	-16(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
# BB#19:                                # %for.inc.40
                                        #   in Loop: Header=BB2_17 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_17
.LBB2_20:                               # %for.end.42
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_21
.LBB2_21:                               # %for.inc.43
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_15
.LBB2_22:                               # %for.end.45
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_core_init, .Lfunc_end2-gimp_brush_core_init
	.cfi_endproc

	.globl	gimp_brush_core_set_brush
	.align	16, 0x90
	.type	gimp_brush_core_set_brush,@function
gimp_brush_core_set_brush:              # @gimp_brush_core_set_brush
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_core_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_set_brush, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_27
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_20:                               # %if.end.32
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_23
.LBB3_22:                               # %if.then.36
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_set_brush, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_27
.LBB3_24:                               # %if.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	352(%rcx), %rax
	je	.LBB3_27
# BB#26:                                # %if.then.41
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	core_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB3_27:                               # %if.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_core_set_brush, .Lfunc_end3-gimp_brush_core_set_brush
	.cfi_endproc

	.globl	gimp_brush_core_set_dynamics
	.align	16, 0x90
	.type	gimp_brush_core_set_dynamics,@function
gimp_brush_core_set_dynamics:           # @gimp_brush_core_set_dynamics
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_brush_core_get_type
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
	movabsq	$.L__func__.gimp_brush_core_set_dynamics, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dynamics_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_set_dynamics, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_27
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	368(%rcx), %rax
	je	.LBB4_27
# BB#26:                                # %if.then.42
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	core_signals+4, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_27:                               # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_core_set_dynamics, .Lfunc_end4-gimp_brush_core_set_dynamics
	.cfi_endproc

	.globl	gimp_brush_core_paste_canvas
	.align	16, 0x90
	.type	gimp_brush_core_paste_canvas,@function
gimp_brush_core_paste_canvas:           # @gimp_brush_core_paste_canvas
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-48(%rbp), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_brush_core_get_brush_mask
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -148(%rbp)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-72(%rbp), %rax
	movl	8(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	$0, -148(%rbp)
	jge	.LBB5_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	subl	-148(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB5_4
.LBB5_4:                                # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	cmpl	$0, -152(%rbp)
	jge	.LBB5_6
# BB#5:                                 # %cond.true.14
	xorl	%eax, %eax
	subl	-152(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB5_7
.LBB5_6:                                # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %cond.end.17
	movl	-176(%rbp), %eax        # 4-byte Reload
	leaq	-144(%rbp), %rdi
	movl	%eax, -160(%rbp)
	movq	-72(%rbp), %rsi
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %ecx
	movq	-80(%rbp), %r8
	movq	336(%r8), %r8
	movl	4(%r8), %r8d
	movq	-80(%rbp), %r9
	movq	336(%r9), %r9
	movl	8(%r9), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-144(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	movl	-60(%rbp), %r8d
	callq	gimp_paint_core_paste
.LBB5_8:                                # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_core_paste_canvas, .Lfunc_end5-gimp_brush_core_paste_canvas
	.cfi_endproc

	.globl	gimp_brush_core_get_brush_mask
	.align	16, 0x90
	.type	gimp_brush_core_get_brush_mask,@function
gimp_brush_core_get_brush_mask:         # @gimp_brush_core_get_brush_mask
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	360(%rsi), %rsi
	callq	gimp_brush_core_transform_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_9
.LBB6_9:                                # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_10
.LBB6_10:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_6
.LBB6_3:                                # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_brush_core_subsample_mask
	movq	%rax, -8(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_brush_core_solidify_mask
	movq	%rax, -8(%rbp)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.bb.6
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_brush_core_pressurize_mask
	movq	%rax, -8(%rbp)
	jmp	.LBB6_8
.LBB6_6:                                # %sw.epilog
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	movl	$1441, %r8d             # imm = 0x5A1
	movabsq	$.L__func__.gimp_brush_core_get_brush_mask, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
.LBB6_8:                                # %do.end
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_core_get_brush_mask, .Lfunc_end6-gimp_brush_core_get_brush_mask
	.cfi_endproc

	.globl	gimp_brush_core_replace_canvas
	.align	16, 0x90
	.type	gimp_brush_core_replace_canvas,@function
gimp_brush_core_replace_canvas:         # @gimp_brush_core_replace_canvas
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movsd	%xmm2, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_brush_core_get_brush_mask
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-72(%rbp), %rax
	movl	4(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -148(%rbp)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-72(%rbp), %rax
	movl	8(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	$0, -148(%rbp)
	jge	.LBB7_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	subl	-148(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB7_4
.LBB7_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB7_4
.LBB7_4:                                # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	cmpl	$0, -152(%rbp)
	jge	.LBB7_6
# BB#5:                                 # %cond.true.14
	xorl	%eax, %eax
	subl	-152(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB7_7
.LBB7_6:                                # %cond.false.16
	xorl	%eax, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB7_7
.LBB7_7:                                # %cond.end.17
	movl	-176(%rbp), %eax        # 4-byte Reload
	leaq	-144(%rbp), %rdi
	movl	%eax, -160(%rbp)
	movq	-72(%rbp), %rsi
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %ecx
	movq	-80(%rbp), %r8
	movq	336(%r8), %r8
	movl	4(%r8), %r8d
	movq	-80(%rbp), %r9
	movq	336(%r9), %r9
	movl	8(%r9), %r9d
	callq	pixel_region_init_temp_buf
	leaq	-144(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %ecx
	callq	gimp_paint_core_replace
.LBB7_8:                                # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_core_replace_canvas, .Lfunc_end7-gimp_brush_core_replace_canvas
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_transform_mask,@function
gimp_brush_core_transform_mask:         # @gimp_brush_core_transform_mask
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
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	ucomisd	384(%rsi), %xmm0
	jb	.LBB8_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	392(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	400(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_mask
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	472(%rdi), %rax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.4
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 472(%rcx)
	movq	-16(%rbp), %rax
	movl	$1, 696(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 464(%rax)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_core_transform_mask, .Lfunc_end8-gimp_brush_core_transform_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	gimp_brush_core_subsample_mask,@function
gimp_brush_core_subsample_mask:         # @gimp_brush_core_subsample_mask
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movb	$0, -145(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB9_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB9_1
.LBB9_3:                                # %while.end
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
.LBB9_4:                                # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_6
# BB#5:                                 # %while.body.5
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB9_4
.LBB9_6:                                # %while.end.8
	movl	$2, %eax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %eax
	cltd
	movl	-180(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB9_10
# BB#7:                                 # %if.then
	movl	-84(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -84(%rbp)
	cmpl	$4, -84(%rbp)
	jle	.LBB9_9
# BB#8:                                 # %if.then.19
	movl	-84(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -84(%rbp)
	movl	$1, -92(%rbp)
.LBB9_9:                                # %if.end
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.21
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-196(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB9_14
# BB#11:                                # %if.then.26
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -88(%rbp)
	cmpl	$4, -88(%rbp)
	jle	.LBB9_13
# BB#12:                                # %if.then.30
	movl	-88(%rbp), %eax
	subl	$5, %eax
	movl	%eax, -88(%rbp)
	movl	$1, -96(%rbp)
.LBB9_13:                               # %if.end.32
	jmp	.LBB9_14
.LBB9_14:                               # %if.end.33
	movabsq	$subsample, %rax
	movslq	-84(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	imulq	$180, %rdx, %rdx
	addq	%rdx, %rax
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	688(%rcx), %rax
	jne	.LBB9_19
# BB#15:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 696(%rax)
	jne	.LBB9_19
# BB#16:                                # %if.then.38
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB9_18
# BB#17:                                # %if.then.44
	movslq	-84(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_65
.LBB9_18:                               # %if.end.50
	jmp	.LBB9_30
.LBB9_19:                               # %if.else
	movl	$0, -108(%rbp)
.LBB9_20:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_22 Depth 2
	cmpl	$5, -108(%rbp)
	jge	.LBB9_29
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	$0, -112(%rbp)
.LBB9_22:                               # %for.cond.53
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -112(%rbp)
	jge	.LBB9_27
# BB#23:                                # %for.body.56
                                        #   in Loop: Header=BB9_22 Depth=2
	movslq	-112(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB9_25
# BB#24:                                # %if.then.63
                                        #   in Loop: Header=BB9_22 Depth=2
	movslq	-112(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	temp_buf_free
	movslq	-112(%rbp), %rax
	movslq	-108(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
.LBB9_25:                               # %if.end.74
                                        #   in Loop: Header=BB9_22 Depth=2
	jmp	.LBB9_26
.LBB9_26:                               # %for.inc
                                        #   in Loop: Header=BB9_22 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_22
.LBB9_27:                               # %for.end
                                        #   in Loop: Header=BB9_20 Depth=1
	jmp	.LBB9_28
.LBB9_28:                               # %for.inc.75
                                        #   in Loop: Header=BB9_20 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_20
.LBB9_29:                               # %for.end.77
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 688(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 696(%rax)
.LBB9_30:                               # %if.end.80
	movl	$1, %edx
	xorl	%eax, %eax
	leaq	-145(%rbp), %r9
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %esi
	addl	$2, %esi
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	addl	$2, %edi
	movl	%edi, -200(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	-200(%rbp), %esi        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movl	$0, -108(%rbp)
.LBB9_31:                               # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -108(%rbp)
	jge	.LBB9_34
# BB#32:                                # %for.body.89
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movslq	-108(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
# BB#33:                                # %for.inc.96
                                        #   in Loop: Header=BB9_31 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_31
.LBB9_34:                               # %for.end.98
	movq	-48(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	-16(%rbp), %rsi
	addq	$488, %rsi              # imm = 0x1E8
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-24(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -64(%rbp)
	movl	$0, -108(%rbp)
.LBB9_35:                               # %for.cond.105
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_37 Depth 2
                                        #       Child Loop BB9_39 Depth 3
                                        #         Child Loop BB9_41 Depth 4
                                        #     Child Loop BB9_48 Depth 2
	movl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB9_53
# BB#36:                                # %for.body.109
                                        #   in Loop: Header=BB9_35 Depth=1
	movl	$0, -112(%rbp)
.LBB9_37:                               # %for.cond.110
                                        #   Parent Loop BB9_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_39 Depth 3
                                        #         Child Loop BB9_41 Depth 4
	movl	-112(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB9_47
# BB#38:                                # %for.body.114
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -116(%rbp)
.LBB9_39:                               # %for.cond.115
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_37 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_41 Depth 4
	cmpl	$3, -116(%rbp)
	jge	.LBB9_45
# BB#40:                                # %for.body.118
                                        #   in Loop: Header=BB9_39 Depth=3
	movl	-112(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	$3, -120(%rbp)
.LBB9_41:                               # %while.cond.120
                                        #   Parent Loop BB9_35 Depth=1
                                        #     Parent Loop BB9_37 Depth=2
                                        #       Parent Loop BB9_39 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-120(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -120(%rbp)
	cmpl	$0, %eax
	je	.LBB9_43
# BB#42:                                # %while.body.122
                                        #   in Loop: Header=BB9_41 Depth=4
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, -80(%rbp)
	imull	(%rax), %ecx
	movslq	%ecx, %rax
	movl	-152(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -152(%rbp)
	movslq	%ecx, %rdx
	movslq	-116(%rbp), %rdi
	movq	-144(%rbp,%rdi,8), %rdi
	addq	(%rdi,%rdx,8), %rax
	movq	%rax, (%rdi,%rdx,8)
	jmp	.LBB9_41
.LBB9_43:                               # %while.end.132
                                        #   in Loop: Header=BB9_39 Depth=3
	jmp	.LBB9_44
.LBB9_44:                               # %for.inc.133
                                        #   in Loop: Header=BB9_39 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_39
.LBB9_45:                               # %for.end.135
                                        #   in Loop: Header=BB9_37 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#46:                                # %for.inc.137
                                        #   in Loop: Header=BB9_37 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_37
.LBB9_47:                               # %for.end.139
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-108(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movq	-48(%rbp), %rdi
	imull	4(%rdi), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -112(%rbp)
.LBB9_48:                               # %for.cond.144
                                        #   Parent Loop BB9_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB9_51
# BB#49:                                # %for.body.148
                                        #   in Loop: Header=BB9_48 Depth=2
	movslq	-112(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$127, %rax
	shrq	$8, %rax
	movb	%al, %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
# BB#50:                                # %for.inc.155
                                        #   in Loop: Header=BB9_48 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_48
.LBB9_51:                               # %for.end.157
                                        #   in Loop: Header=BB9_35 Depth=1
	movl	$3, %esi
	leaq	-144(%rbp), %rdi
	callq	rotate_pointers
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	movq	-48(%rbp), %rax
	movslq	4(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdx
	callq	memset
# BB#52:                                # %for.inc.163
                                        #   in Loop: Header=BB9_35 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_35
.LBB9_53:                               # %for.end.165
	jmp	.LBB9_54
.LBB9_54:                               # %while.cond.166
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_56 Depth 2
	movl	-108(%rbp), %eax
	addl	-96(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB9_60
# BB#55:                                # %while.body.171
                                        #   in Loop: Header=BB9_54 Depth=1
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-108(%rbp), %ecx
	addl	-96(%rbp), %ecx
	movq	-48(%rbp), %rdi
	imull	4(%rdi), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -112(%rbp)
.LBB9_56:                               # %for.cond.178
                                        #   Parent Loop BB9_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB9_59
# BB#57:                                # %for.body.182
                                        #   in Loop: Header=BB9_56 Depth=2
	movslq	-112(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$128, %rax
	shrq	$8, %rax
	movb	%al, %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
# BB#58:                                # %for.inc.190
                                        #   in Loop: Header=BB9_56 Depth=2
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_56
.LBB9_59:                               # %for.end.192
                                        #   in Loop: Header=BB9_54 Depth=1
	movl	$3, %esi
	leaq	-144(%rbp), %rdi
	callq	rotate_pointers
	movl	-108(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -108(%rbp)
	jmp	.LBB9_54
.LBB9_60:                               # %while.end.195
	movl	$0, -108(%rbp)
.LBB9_61:                               # %for.cond.196
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -108(%rbp)
	jge	.LBB9_64
# BB#62:                                # %for.body.199
                                        #   in Loop: Header=BB9_61 Depth=1
	movslq	-108(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#63:                                # %for.inc.202
                                        #   in Loop: Header=BB9_61 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_61
.LBB9_64:                               # %for.end.204
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_65:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_core_subsample_mask, .Lfunc_end9-gimp_brush_core_subsample_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_brush_core_solidify_mask,@function
gimp_brush_core_solidify_mask:          # @gimp_brush_core_solidify_mask
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
	subq	$144, %rsp
	movl	$2, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movb	$0, -81(%rbp)
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_7
# BB#1:                                 # %if.then
	jmp	.LBB10_2
.LBB10_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB10_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-24(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB10_2
.LBB10_4:                               # %while.end
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_6
# BB#5:                                 # %if.then.5
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.6
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB10_14
# BB#8:                                 # %if.then.10
	jmp	.LBB10_9
.LBB10_9:                               # %while.cond.11
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB10_11
# BB#10:                                # %while.body.14
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	-24(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB10_9
.LBB10_11:                              # %while.end.18
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB10_13
# BB#12:                                # %if.then.23
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB10_13:                              # %if.end.25
	jmp	.LBB10_14
.LBB10_14:                              # %if.end.26
	movq	-16(%rbp), %rax
	cmpl	$0, 464(%rax)
	jne	.LBB10_19
# BB#15:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	456(%rcx), %rax
	jne	.LBB10_19
# BB#16:                                # %if.then.29
	movslq	-68(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB10_18
# BB#17:                                # %if.then.33
	movslq	-68(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_39
.LBB10_18:                              # %if.end.39
	jmp	.LBB10_30
.LBB10_19:                              # %if.else
	movl	$0, -76(%rbp)
.LBB10_20:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_22 Depth 2
	cmpl	$2, -76(%rbp)
	jge	.LBB10_29
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	$0, -80(%rbp)
.LBB10_22:                              # %for.cond.42
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -80(%rbp)
	jge	.LBB10_27
# BB#23:                                # %for.body.45
                                        #   in Loop: Header=BB10_22 Depth=2
	movslq	-80(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB10_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB10_22 Depth=2
	movslq	-80(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	temp_buf_free
	movslq	-80(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
.LBB10_25:                              # %if.end.63
                                        #   in Loop: Header=BB10_22 Depth=2
	jmp	.LBB10_26
.LBB10_26:                              # %for.inc
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB10_22
.LBB10_27:                              # %for.end
                                        #   in Loop: Header=BB10_20 Depth=1
	jmp	.LBB10_28
.LBB10_28:                              # %for.inc.65
                                        #   in Loop: Header=BB10_20 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB10_20
.LBB10_29:                              # %for.end.67
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 456(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 464(%rax)
.LBB10_30:                              # %if.end.70
	movl	$1, %edx
	xorl	%eax, %eax
	leaq	-81(%rbp), %r9
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %esi
	addl	$2, %esi
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	addl	$2, %edi
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movslq	-68(%rbp), %r9
	movslq	-72(%rbp), %r10
	movq	-16(%rbp), %r11
	addq	$424, %r11              # imm = 0x1A8
	shlq	$4, %r10
	addq	%r10, %r11
	movq	%rax, (%r11,%r9,8)
	movq	-24(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-72(%rbp), %ecx
	addl	$1, %ecx
	movq	-48(%rbp), %rdi
	imull	4(%rdi), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB10_31:                              # %for.cond.88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_33 Depth 2
	movl	-76(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB10_38
# BB#32:                                # %for.body.92
                                        #   in Loop: Header=BB10_31 Depth=1
	movl	$0, -80(%rbp)
.LBB10_33:                              # %for.cond.93
                                        #   Parent Loop BB10_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB10_36
# BB#34:                                # %for.body.97
                                        #   in Loop: Header=BB10_33 Depth=2
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movzbl	(%rdx), %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	movb	%al, %r8b
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
	movb	%r8b, (%rdx)
# BB#35:                                # %for.inc.102
                                        #   in Loop: Header=BB10_33 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB10_33
.LBB10_36:                              # %for.end.104
                                        #   in Loop: Header=BB10_31 Depth=1
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
# BB#37:                                # %for.inc.106
                                        #   in Loop: Header=BB10_31 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB10_31
.LBB10_38:                              # %for.end.108
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_39:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_core_solidify_mask, .Lfunc_end10-gimp_brush_core_solidify_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
.LCPI11_1:
	.quad	4636737291354636288     # double 100
.LCPI11_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gimp_brush_core_pressurize_mask,@function
gimp_brush_core_pressurize_mask:        # @gimp_brush_core_pressurize_mask
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movb	$0, -73(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_brush_core_subsample_mask
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -72(%rbp)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cmpl	$50, %ecx
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_15
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 416(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	416(%rax), %rdi
	callq	temp_buf_free
.LBB11_4:                               # %if.end.4
	movl	$1, %edx
	xorl	%eax, %eax
	leaq	-73(%rbp), %r9
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %esi
	addl	$2, %esi
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edi
	addl	$2, %edi
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %r9
	movq	%rax, 416(%r9)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	$0, -80(%rbp)
.LBB11_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -80(%rbp)         # imm = 0x100
	jge	.LBB11_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB11_5 Depth=1
	movsd	.LCPI11_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB11_5 Depth=1
	movslq	-80(%rbp), %rax
	movb	$-1, gimp_brush_core_pressurize_mask.mapi(,%rax)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_5 Depth=1
	cvttsd2si	-96(%rbp), %eax
	movb	%al, %cl
	movslq	-80(%rbp), %rdx
	movb	%cl, gimp_brush_core_pressurize_mask.mapi(,%rdx)
.LBB11_9:                               # %if.end.18
                                        #   in Loop: Header=BB11_5 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_5
.LBB11_11:                              # %for.end
	movq	-72(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rdi
	callq	temp_buf_get_data
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-72(%rbp), %rax
	imull	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB11_12:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %eax
	je	.LBB11_14
# BB#13:                                # %while.body
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movb	gimp_brush_core_pressurize_mask.mapi(,%rax), %sil
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB11_12
.LBB11_14:                              # %while.end
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_core_pressurize_mask, .Lfunc_end11-gimp_brush_core_pressurize_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	-4616189618054758400    # double -1
.LCPI12_1:
	.quad	4607182418800017408     # double 1
.LCPI12_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_brush_core_eval_transform_dynamics
	.align	16, 0x90
	.type	gimp_brush_core_eval_transform_dynamics,@function
gimp_brush_core_eval_transform_dynamics: # @gimp_brush_core_eval_transform_dynamics
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	$0, 352(%rcx)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	360(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	cmpl	8(%rax), %ecx
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jle	.LBB12_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB12_4:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 384(%rcx)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 384(%rax)
.LBB12_6:                               # %if.end
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	movq	-24(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 408(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dynamics_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_8
# BB#7:                                 # %if.then.12
	movl	$0, -52(%rbp)
	jmp	.LBB12_13
.LBB12_8:                               # %if.else.13
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_11
# BB#10:                                # %if.then.18
	movl	$1, -52(%rbp)
	jmp	.LBB12_12
.LBB12_11:                              # %if.else.19
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_12:                              # %if.end.21
	jmp	.LBB12_13
.LBB12_13:                              # %if.end.22
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.24
	jmp	.LBB12_24
.LBB12_15:                              # %if.end.25
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 224(%rax)
	je	.LBB12_24
# BB#16:                                # %if.then.28
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_18
# BB#17:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -80(%rbp)
.LBB12_18:                              # %if.end.42
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movl	$2, %esi
	movq	-8(%rbp), %rax
	mulsd	384(%rax), %xmm0
	movsd	%xmm0, 384(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_angular_value
	movl	$4, %esi
	movq	-8(%rbp), %rax
	addsd	392(%rax), %xmm0
	movsd	%xmm0, 392(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movl	$6, %esi
	movq	-8(%rbp), %rax
	movsd	%xmm0, 400(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_aspect_value
	movsd	%xmm0, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dynamics_output_is_enabled
	cmpl	$0, %eax
	je	.LBB12_23
# BB#19:                                # %if.then.59
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_21
	jp	.LBB12_21
# BB#20:                                # %if.then.63
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 408(%rax)
	jmp	.LBB12_22
.LBB12_21:                              # %if.else.66
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	408(%rax), %xmm0
	movsd	%xmm0, 408(%rax)
.LBB12_22:                              # %if.end.69
	jmp	.LBB12_23
.LBB12_23:                              # %if.end.70
	jmp	.LBB12_24
.LBB12_24:                              # %if.end.71
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_brush_core_eval_transform_dynamics, .Lfunc_end12-gimp_brush_core_eval_transform_dynamics
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_brush_core_color_area_with_pixmap
	.align	16, 0x90
	.type	gimp_brush_core_color_area_with_pixmap,@function
gimp_brush_core_color_area_with_pixmap: # @gimp_brush_core_color_area_with_pixmap
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
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp42:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_color_area_with_pixmap, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_34
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB13_15
# BB#14:                                # %if.then.14
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_color_area_with_pixmap, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_34
.LBB13_16:                              # %if.end.16
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rsi
	callq	gimp_brush_core_transform_pixmap
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB13_19
# BB#18:                                # %if.then.24
	jmp	.LBB13_34
.LBB13_19:                              # %if.end.25
	cmpl	$0, -44(%rbp)
	je	.LBB13_21
# BB#20:                                # %if.then.27
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rsi
	callq	gimp_brush_core_transform_mask
	movq	%rax, -176(%rbp)
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.30
	movq	$0, -176(%rbp)
.LBB13_22:                              # %if.end.31
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	pixel_region_init_temp_buf
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movl	$2, %ecx
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-168(%rbp), %rax
	movl	4(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -140(%rbp)
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-168(%rbp), %rax
	movl	8(%rax), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -144(%rbp)
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	movl	-212(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB13_24
# BB#23:                                # %if.then.44
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsi2sdl	-140(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -140(%rbp)
.LBB13_24:                              # %if.end.54
	movl	$2, %eax
	movq	-168(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-228(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB13_26
# BB#25:                                # %if.then.59
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	addsd	8(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsi2sdl	-144(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -144(%rbp)
.LBB13_26:                              # %if.end.70
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	subl	-144(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB13_27:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_29 Depth 2
	cmpq	$0, -128(%rbp)
	je	.LBB13_34
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -156(%rbp)
.LBB13_29:                              # %for.cond.77
                                        #   Parent Loop BB13_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB13_32
# BB#30:                                # %for.body.80
                                        #   in Loop: Header=BB13_29 Depth=2
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-136(%rbp), %r8
	movl	-148(%rbp), %r9d
	movl	-156(%rbp), %eax
	addl	-152(%rbp), %eax
	movl	-68(%rbp), %r10d
	movl	-76(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	callq	gimp_brush_core_paint_line_pixmap_mask
	movl	-88(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB13_29 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB13_29
.LBB13_32:                              # %for.end
                                        #   in Loop: Header=BB13_27 Depth=1
	jmp	.LBB13_33
.LBB13_33:                              # %for.inc.82
                                        #   in Loop: Header=BB13_27 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -128(%rbp)
	jmp	.LBB13_27
.LBB13_34:                              # %for.end.84
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_brush_core_color_area_with_pixmap, .Lfunc_end13-gimp_brush_core_color_area_with_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_transform_pixmap,@function
gimp_brush_core_transform_pixmap:       # @gimp_brush_core_transform_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	ucomisd	384(%rsi), %xmm0
	jb	.LBB14_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	392(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	400(%rax), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_brush_transform_pixmap
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	cmpq	480(%rdi), %rax
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 480(%rcx)
	movq	-16(%rbp), %rax
	movl	$1, 696(%rax)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_brush_core_transform_pixmap, .Lfunc_end14-gimp_brush_core_transform_pixmap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4571171284377095006     # double 0.0039215698599999998
	.text
	.align	16, 0x90
	.type	gimp_brush_core_paint_line_pixmap_mask,@function
gimp_brush_core_paint_line_pixmap_mask: # @gimp_brush_core_paint_line_pixmap_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp49:
	.cfi_offset %rbx, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movl	%eax, -68(%rbp)
	movsd	%xmm0, -112(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB15_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB15_1
.LBB15_3:                               # %while.end
	jmp	.LBB15_4
.LBB15_4:                               # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	jge	.LBB15_6
# BB#5:                                 # %while.body.4
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB15_4
.LBB15_6:                               # %while.end.6
	movq	-32(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-56(%rbp), %ecx
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	8(%rdi)
	movq	-32(%rbp), %rdi
	imull	4(%rdi), %edx
	movq	-32(%rbp), %rdi
	imull	(%rdi), %edx
	movslq	%edx, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, -88(%rbp)
	cmpl	$1, -68(%rbp)
	jne	.LBB15_19
# BB#7:                                 # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB15_19
# BB#8:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	temp_buf_get_data
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	8(%rdi)
	movq	-40(%rbp), %rdi
	imull	4(%rdi), %edx
	movslq	%edx, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movl	$0, -120(%rbp)
.LBB15_9:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_12 Depth 2
	movl	-120(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_18
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB15_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movl	-120(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	4(%rcx)
	movl	%edx, -116(%rbp)
	movq	-88(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-32(%rbp), %rsi
	imull	(%rsi), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -96(%rbp)
	movslq	-116(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movb	(%rsi,%rcx), %dil
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rsi
	movb	%dil, (%rsi,%rcx)
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -104(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB15_11
	jp	.LBB15_11
	jmp	.LBB15_16
.LBB15_11:                              # %if.then.35
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	$0, -124(%rbp)
.LBB15_12:                              # %for.cond.36
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_15
# BB#13:                                # %for.body.40
                                        #   in Loop: Header=BB15_12 Depth=2
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-124(%rbp), %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	cvtsi2sdl	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movb	%sil, %dil
	movb	%dil, (%rdx,%rcx)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB15_12 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB15_12
.LBB15_15:                              # %for.end
                                        #   in Loop: Header=BB15_9 Depth=1
	jmp	.LBB15_16
.LBB15_16:                              # %if.end
                                        #   in Loop: Header=BB15_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_color
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rdx
	movslq	%eax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -48(%rbp)
# BB#17:                                # %for.inc.49
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB15_9
.LBB15_18:                              # %for.end.51
	jmp	.LBB15_24
.LBB15_19:                              # %if.else
	movl	$0, -120(%rbp)
.LBB15_20:                              # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB15_23
# BB#21:                                # %for.body.55
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	-120(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	4(%rcx)
	movl	%edx, -116(%rbp)
	movq	-88(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-32(%rbp), %rsi
	imull	(%rsi), %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -96(%rbp)
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rsi
	movb	$-1, (%rsi,%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_color
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rdx
	movslq	%eax, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -48(%rbp)
# BB#22:                                # %for.inc.69
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB15_20
.LBB15_23:                              # %for.end.71
	jmp	.LBB15_24
.LBB15_24:                              # %if.end.72
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_brush_core_paint_line_pixmap_mask, .Lfunc_end15-gimp_brush_core_paint_line_pixmap_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_class_init,@function
gimp_brush_core_class_init:             # @gimp_brush_core_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp53:
	.cfi_offset %rbx, -48
.Ltmp54:
	.cfi_offset %r12, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movabsq	$.L.str.9, %rdi
	movl	$2, %edx
	movl	$232, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, core_signals
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_get_type
	movabsq	$.L.str.10, %rdi
	movl	$2, %edx
	movl	$240, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$1, %r15d
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movl	%r15d, -140(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_brush_core_real_set_dynamics, %rsi
	movabsq	$gimp_brush_core_real_set_brush, %rdi
	movabsq	$gimp_brush_core_get_paint_area, %r8
	movabsq	$gimp_brush_core_interpolate, %r9
	movabsq	$gimp_brush_core_post_paint, %r10
	movabsq	$gimp_brush_core_pre_paint, %r11
	movabsq	$gimp_brush_core_start, %rbx
	movabsq	$gimp_brush_core_finalize, %r14
	movl	%eax, core_signals+4
	movq	-48(%rbp), %r12
	movq	%r14, 48(%r12)
	movq	-56(%rbp), %r14
	movq	%rbx, 160(%r14)
	movq	-56(%rbp), %rbx
	movq	%r11, 168(%rbx)
	movq	-56(%rbp), %r11
	movq	%r10, 184(%r11)
	movq	-56(%rbp), %r10
	movq	%r9, 192(%r10)
	movq	-56(%rbp), %r9
	movq	%r8, 200(%r9)
	movq	-40(%rbp), %r8
	movl	$0, 216(%r8)
	movq	-40(%rbp), %r8
	movl	$1, 220(%r8)
	movq	-40(%rbp), %r8
	movl	$1, 224(%r8)
	movq	-40(%rbp), %r8
	movq	%rdi, 232(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 240(%rdi)
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_brush_core_class_init, .Lfunc_end16-gimp_brush_core_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_finalize,@function
gimp_brush_core_finalize:               # @gimp_brush_core_finalize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 416(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	416(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 416(%rax)
.LBB17_2:                               # %if.end
	movl	$0, -20(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	cmpl	$2, -20(%rbp)
	jge	.LBB17_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	$0, -24(%rbp)
.LBB17_5:                               # %for.cond.4
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -24(%rbp)
	jge	.LBB17_10
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB17_5 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB17_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB17_5 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	temp_buf_free
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$424, %rdx              # imm = 0x1A8
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
.LBB17_8:                               # %if.end.21
                                        #   in Loop: Header=BB17_5 Depth=2
	jmp	.LBB17_9
.LBB17_9:                               # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB17_5
.LBB17_10:                              # %for.end
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_11
.LBB17_11:                              # %for.inc.22
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_3
.LBB17_12:                              # %for.end.24
	movq	-16(%rbp), %rax
	cmpq	$0, 6472(%rax)
	je	.LBB17_14
# BB#13:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	6472(%rax), %rdi
	callq	g_rand_free
	movq	-16(%rbp), %rax
	movq	$0, 6472(%rax)
.LBB17_14:                              # %if.end.29
	movl	$0, -20(%rbp)
.LBB17_15:                              # %for.cond.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_17 Depth 2
	cmpl	$5, -20(%rbp)
	jge	.LBB17_24
# BB#16:                                # %for.body.32
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	$0, -24(%rbp)
.LBB17_17:                              # %for.cond.33
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$5, -24(%rbp)
	jge	.LBB17_22
# BB#18:                                # %for.body.35
                                        #   in Loop: Header=BB17_17 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB17_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB17_17 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	temp_buf_free
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$488, %rdx              # imm = 0x1E8
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rdx
	movq	$0, (%rdx,%rax,8)
.LBB17_20:                              # %if.end.52
                                        #   in Loop: Header=BB17_17 Depth=2
	jmp	.LBB17_21
.LBB17_21:                              # %for.inc.53
                                        #   in Loop: Header=BB17_17 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB17_17
.LBB17_22:                              # %for.end.55
                                        #   in Loop: Header=BB17_15 Depth=1
	jmp	.LBB17_23
.LBB17_23:                              # %for.inc.56
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_15
.LBB17_24:                              # %for.end.58
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB17_26
# BB#25:                                # %if.then.60
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_core_invalidate_cache, %rdx
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_brush_end_use
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rdi
	movq	$0, 352(%rdi)
.LBB17_26:                              # %if.end.66
	movq	-16(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB17_28
# BB#27:                                # %if.then.68
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 368(%rax)
.LBB17_28:                              # %if.end.71
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_core_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_brush_core_finalize, .Lfunc_end17-gimp_brush_core_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_brush_core_start,@function
gimp_brush_core_start:                  # @gimp_brush_core_start
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_brush
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_core_set_brush
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_dynamics
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_brush_core_set_dynamics
	movq	-56(%rbp), %rax
	cmpq	$0, 352(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.11, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB18_7
.LBB18_2:                               # %if.end
	movq	-56(%rbp), %rax
	cmpq	$0, 368(%rax)
	jne	.LBB18_4
# BB#3:                                 # %if.then.9
	movq	-48(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.12, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.end.12
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 220(%rax)
	je	.LBB18_6
# BB#5:                                 # %if.then.14
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_brush_core_eval_transform_dynamics
.LBB18_6:                               # %if.end.15
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gimp_brush_get_spacing
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-56(%rbp), %rdi
	movsd	%xmm1, 376(%rdi)
	movq	-56(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, 360(%rcx)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_paint_options_get_jitter
	movq	-56(%rbp), %rax
	movsd	%xmm0, 704(%rax)
	movl	$1, -4(%rbp)
.LBB18_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_brush_core_start, .Lfunc_end18-gimp_brush_core_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4502148214488346440     # double 9.9999999999999995E-8
	.text
	.align	16, 0x90
	.type	gimp_brush_core_pre_paint,@function
gimp_brush_core_pre_paint:              # @gimp_brush_core_pre_paint
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB19_17
# BB#1:                                 # %if.then
	leaq	-112(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_paint_core_get_last_coords
	leaq	-176(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_paint_core_get_current_coords
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jne	.LBB19_5
	jp	.LBB19_5
# BB#2:                                 # %land.lhs.true
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-168(%rbp), %xmm0
	jne	.LBB19_5
	jp	.LBB19_5
# BB#3:                                 # %land.lhs.true.6
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gimp_brush_want_null_motion
	cmpl	$0, %eax
	jne	.LBB19_5
# BB#4:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB19_18
.LBB19_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 220(%rax)
	je	.LBB19_14
# BB#6:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -192(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 224(%rax)
	je	.LBB19_13
# BB#7:                                 # %if.then.16
	movl	$1, %esi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -208(%rbp)
	movq	-32(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-16(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -200(%rbp)
	movq	-32(%rbp), %rax
	movsd	360(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	cmpl	8(%rax), %ecx
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jle	.LBB19_9
# BB#8:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false
	movq	-48(%rbp), %rax
	movq	352(%rax), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
.LBB19_10:                              # %cond.end
	movl	-236(%rbp), %eax        # 4-byte Reload
	leaq	-176(%rbp), %rsi
	cvtsi2sdl	%eax, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-208(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	gimp_dynamics_output_get_linear_value
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -184(%rbp)
	ucomisd	-184(%rbp), %xmm1
	jbe	.LBB19_12
# BB#11:                                # %if.then.32
	movl	$0, -4(%rbp)
	jmp	.LBB19_18
.LBB19_12:                              # %if.end.33
	jmp	.LBB19_13
.LBB19_13:                              # %if.end.34
	jmp	.LBB19_14
.LBB19_14:                              # %if.end.35
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 216(%rax)
	je	.LBB19_16
# BB#15:                                # %if.then.38
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gimp_brush_select_brush
	movq	-48(%rbp), %rdx
	movq	%rax, 360(%rdx)
.LBB19_16:                              # %if.end.41
	jmp	.LBB19_17
.LBB19_17:                              # %if.end.42
	movl	$1, -4(%rbp)
.LBB19_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_brush_core_pre_paint, .Lfunc_end19-gimp_brush_core_pre_paint
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_post_paint,@function
gimp_brush_core_post_paint:             # @gimp_brush_core_post_paint
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 360(%rcx)
.LBB20_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_brush_core_post_paint, .Lfunc_end20-gimp_brush_core_post_paint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
.LCPI21_1:
	.quad	4611686018427387904     # double 2
.LCPI21_2:
	.quad	4602678819172646912     # double 0.5
.LCPI21_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI21_5:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI21_6:
	.quad	4607182463836013682     # double 1.0000100000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_4:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_brush_core_interpolate,@function
gimp_brush_core_interpolate:            # @gimp_brush_core_interpolate
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
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -408(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -416(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -420(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-408(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-416(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.8
	movl	$1, -420(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.9
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -420(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.11
	movl	-420(%rbp), %eax
	movl	%eax, -424(%rbp)
	cmpl	$0, -424(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.13
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_brush_core_interpolate, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_68
.LBB21_11:                              # %if.end.15
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	leaq	-120(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_get_last_coords
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_get_current_coords
	leaq	-120(%rbp), %rdi
	callq	gimp_avoid_exact_integer
	leaq	-120(%rbp), %rsi
	addq	$8, %rsi
	movq	%rsi, %rdi
	callq	gimp_avoid_exact_integer
	leaq	-184(%rbp), %rdi
	callq	gimp_avoid_exact_integer
	leaq	-184(%rbp), %rsi
	addq	$8, %rsi
	movq	%rsi, %rdi
	callq	gimp_avoid_exact_integer
	xorps	%xmm0, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-112(%rbp), %xmm1
	movsd	%xmm1, -192(%rbp)
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-104(%rbp), %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-96(%rbp), %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movsd	%xmm1, -232(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-72(%rbp), %xmm1
	movsd	%xmm1, -240(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -248(%rbp)
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#13:                                # %land.lhs.true.37
	xorps	%xmm0, %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#14:                                # %land.lhs.true.40
	xorps	%xmm0, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#15:                                # %land.lhs.true.42
	xorps	%xmm0, %xmm0
	movsd	-216(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#16:                                # %land.lhs.true.44
	xorps	%xmm0, %xmm0
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#17:                                # %land.lhs.true.46
	xorps	%xmm0, %xmm0
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#18:                                # %land.lhs.true.48
	xorps	%xmm0, %xmm0
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_20
	jp	.LBB21_20
# BB#19:                                # %if.then.50
	jmp	.LBB21_68
.LBB21_20:                              # %if.end.51
	leaq	-200(%rbp), %rdi
	callq	gimp_vector2_length
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -344(%rbp)
	movq	-8(%rbp), %rdi
	movsd	264(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)
	movq	-40(%rbp), %rdi
	movsd	384(%rdi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB21_22
	jp	.LBB21_22
# BB#21:                                # %if.then.55
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_set_last_coords
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %r8d
	callq	gimp_paint_core_paint
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-344(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 264(%rdx)
	jmp	.LBB21_68
.LBB21_22:                              # %if.end.57
	movl	$7, %esi
	movq	-40(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -392(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_dynamics_output_is_enabled
	movl	%eax, -396(%rbp)
	cmpl	$0, -396(%rbp)
	je	.LBB21_27
# BB#23:                                # %if.then.63
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	.LCPI21_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
	movq	-40(%rbp), %rdx
	movsd	376(%rdx), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	subsd	376(%rdx), %xmm2
	subsd	-384(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -384(%rbp)
	movq	-40(%rbp), %rdx
	movsd	376(%rdx), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-384(%rbp), %xmm0
	jbe	.LBB21_25
# BB#24:                                # %cond.true
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	jmp	.LBB21_26
.LBB21_25:                              # %cond.false
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
.LBB21_26:                              # %cond.end
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)
.LBB21_27:                              # %if.end.73
	leaq	-264(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	56(%rax), %rcx
	movq	%rcx, -264(%rbp)
	movq	64(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-40(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vector2_mul
	leaq	-264(%rbp), %rdi
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_3, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	392(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_vector2_rotate
	leaq	-264(%rbp), %rdi
	callq	gimp_vector2_length
	leaq	-200(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	movsd	%xmm0, -376(%rbp)
	callq	gimp_vector2_inner_product
	leaq	-264(%rbp), %rdi
	movsd	-376(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-376(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -360(%rbp)
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	72(%rax), %rcx
	movq	%rcx, -264(%rbp)
	movq	80(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-40(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_vector2_mul
	leaq	-264(%rbp), %rdi
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_3, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	392(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_vector2_rotate
	leaq	-264(%rbp), %rdi
	callq	gimp_vector2_length
	leaq	-200(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	movsd	%xmm0, -376(%rbp)
	callq	gimp_vector2_inner_product
	movsd	.LCPI21_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-376(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-376(%rbp), %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -368(%rbp)
	movsd	-360(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-360(%rbp), %xmm0
	movsd	-368(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-368(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm1, -528(%rbp)       # 8-byte Spill
	callq	sqrt
	movsd	-528(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -328(%rbp)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	256(%rax), %xmm0
	movsd	%xmm0, -336(%rbp)
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_29
# BB#28:                                # %if.then.104
	movsd	.LCPI21_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -304(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -312(%rbp)
	jmp	.LBB21_30
.LBB21_29:                              # %if.else.108
	movsd	.LCPI21_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -304(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -312(%rbp)
.LBB21_30:                              # %if.end.112
	cmpl	$0, -396(%rbp)
	je	.LBB21_34
# BB#31:                                # %if.then.114
	movsd	.LCPI21_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-384(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -272(%rbp)
	addsd	-312(%rbp), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -428(%rbp)
	cvtsi2sdl	-428(%rbp), %xmm0
	subsd	-312(%rbp), %xmm0
	divsd	-304(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-328(%rbp), %xmm0
	movsd	%xmm0, -288(%rbp)
	cmpl	$0, -272(%rbp)
	jne	.LBB21_33
# BB#32:                                # %if.then.126
	jmp	.LBB21_68
.LBB21_33:                              # %if.end.127
	jmp	.LBB21_61
.LBB21_34:                              # %if.else.128
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI21_4(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-328(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	376(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_40
# BB#35:                                # %if.then.134
	movsd	.LCPI21_6, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI21_0, %xmm2        # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm3        # xmm3 = mem[0],zero
	divsd	-328(%rbp), %xmm3
	movsd	%xmm3, -288(%rbp)
	movsd	-320(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	376(%rax), %xmm3
	addsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -268(%rbp)
	cvtsi2sdl	-268(%rbp), %xmm1
	movq	-40(%rbp), %rax
	mulsd	376(%rax), %xmm1
	subsd	-320(%rbp), %xmm1
	divsd	-328(%rbp), %xmm1
	movsd	%xmm1, -280(%rbp)
	subsd	-280(%rbp), %xmm0
	divsd	-288(%rbp), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	addl	$1, %ecx
	movl	%ecx, -272(%rbp)
	cmpl	$0, -272(%rbp)
	jne	.LBB21_39
# BB#36:                                # %land.lhs.true.154
	xorps	%xmm0, %xmm0
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_37
	jp	.LBB21_37
	jmp	.LBB21_38
.LBB21_37:                              # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_39
	jp	.LBB21_39
.LBB21_38:                              # %if.then.161
	jmp	.LBB21_68
.LBB21_39:                              # %if.end.162
	jmp	.LBB21_60
.LBB21_40:                              # %if.else.163
	movsd	.LCPI21_5, %xmm0        # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI21_4(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_42
# BB#41:                                # %if.then.167
	leaq	-184(%rbp), %rsi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_set_current_coords
	jmp	.LBB21_68
.LBB21_42:                              # %if.else.172
	xorps	%xmm0, %xmm0
	movsd	.LCPI21_2, %xmm1        # xmm1 = mem[0],zero
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	cmoval	%ecx, %eax
	movl	%eax, -432(%rbp)
	movaps	%xmm1, %xmm2
	addsd	-312(%rbp), %xmm2
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -544(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -444(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-304(%rbp), %xmm0
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -448(%rbp)
	cvtsi2sdl	-444(%rbp), %xmm0
	subsd	-312(%rbp), %xmm0
	divsd	-304(%rbp), %xmm0
	movsd	%xmm0, -280(%rbp)
	cvtsi2sdl	-448(%rbp), %xmm0
	subsd	-312(%rbp), %xmm0
	divsd	-304(%rbp), %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -436(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -440(%rbp)
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-280(%rbp), %xmm0
	jbe	.LBB21_46
# BB#43:                                # %land.lhs.true.212
	movl	-436(%rbp), %eax
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-548(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB21_45
# BB#44:                                # %land.lhs.true.218
	movl	-440(%rbp), %eax
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -552(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-552(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB21_46
.LBB21_45:                              # %if.then.224
	movl	-432(%rbp), %eax
	addl	-444(%rbp), %eax
	movl	%eax, -444(%rbp)
	jmp	.LBB21_50
.LBB21_46:                              # %if.else.226
	movl	-436(%rbp), %eax
	movq	-8(%rbp), %rcx
	movsd	240(%rcx), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-556(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB21_49
# BB#47:                                # %land.lhs.true.232
	movl	-440(%rbp), %eax
	movq	-8(%rbp), %rcx
	movsd	248(%rcx), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -560(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-560(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB21_49
# BB#48:                                # %if.then.239
	movl	-432(%rbp), %eax
	addl	-444(%rbp), %eax
	movl	%eax, -444(%rbp)
.LBB21_49:                              # %if.end.241
	jmp	.LBB21_50
.LBB21_50:                              # %if.end.242
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-296(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-200(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -436(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-192(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -440(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-568(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB21_54
# BB#51:                                # %land.lhs.true.257
	movl	-436(%rbp), %eax
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-572(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB21_53
# BB#52:                                # %land.lhs.true.263
	movl	-440(%rbp), %eax
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-576(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB21_54
.LBB21_53:                              # %if.then.269
	movl	-432(%rbp), %eax
	movl	-448(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -448(%rbp)
.LBB21_54:                              # %if.end.271
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-444(%rbp), %xmm1
	subsd	-312(%rbp), %xmm1
	divsd	-304(%rbp), %xmm1
	movsd	%xmm1, -280(%rbp)
	cvtsi2sdl	-448(%rbp), %xmm1
	subsd	-312(%rbp), %xmm1
	divsd	-304(%rbp), %xmm1
	movsd	%xmm1, -296(%rbp)
	cvtsi2sdl	-432(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	divsd	-304(%rbp), %xmm1
	movsd	%xmm1, -288(%rbp)
	movl	-432(%rbp), %eax
	movl	-448(%rbp), %ecx
	subl	-444(%rbp), %ecx
	imull	%ecx, %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	cmpl	$1, -272(%rbp)
	jl	.LBB21_58
# BB#55:                                # %if.then.286
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-296(%rbp), %xmm0
	jbe	.LBB21_57
# BB#56:                                # %if.then.289
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-328(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -336(%rbp)
.LBB21_57:                              # %if.end.292
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI21_2, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	-336(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	divsd	376(%rax), %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -336(%rbp)
	subsd	-296(%rbp), %xmm0
	mulsd	-328(%rbp), %xmm0
	addsd	-336(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp)
.LBB21_58:                              # %if.end.303
	jmp	.LBB21_59
.LBB21_59:                              # %if.end.304
	jmp	.LBB21_60
.LBB21_60:                              # %if.end.305
	jmp	.LBB21_61
.LBB21_61:                              # %if.end.306
	movl	$0, -268(%rbp)
.LBB21_62:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-268(%rbp), %eax
	cmpl	-272(%rbp), %eax
	jge	.LBB21_67
# BB#63:                                # %for.body
                                        #   in Loop: Header=BB21_62 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	-268(%rbp), %xmm2
	mulsd	-288(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -456(%rbp)
	cvtsi2sdl	-268(%rbp), %xmm1
	cvtsi2sdl	-272(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -464(%rbp)
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-456(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-200(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-456(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-192(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -176(%rbp)
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-208(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-216(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-224(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-232(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -144(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-464(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-240(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-248(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -128(%rbp)
	movq	-40(%rbp), %rax
	movsd	704(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_65
# BB#64:                                # %if.then.350
                                        #   in Loop: Header=BB21_62 Depth=1
	movl	$10, %esi
	movq	-40(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	leaq	-184(%rbp), %rsi
	movq	%rax, -472(%rbp)
	movq	-40(%rbp), %rax
	movsd	704(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-472(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movsd	-392(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_dynamics_output_get_linear_value
	xorps	%xmm1, %xmm1
	movsd	-584(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -480(%rbp)
	movq	-40(%rbp), %rax
	movq	6472(%rax), %rdi
	movsd	-480(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-592(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	g_rand_double_range
	xorl	%esi, %esi
	movl	$360, %edx              # imm = 0x168
	movsd	%xmm0, -488(%rbp)
	movq	-40(%rbp), %rax
	movq	6472(%rax), %rdi
	callq	g_rand_int_range
	movl	%eax, -492(%rbp)
	movq	-40(%rbp), %rdi
	movq	360(%rdi), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movq	360(%rdi), %rdi
	addsd	72(%rdi), %xmm0
	mulsd	-488(%rbp), %xmm0
	movslq	-492(%rbp), %rdi
	movq	-40(%rbp), %rcx
	mulsd	712(%rcx,%rdi,8), %xmm0
	movq	-40(%rbp), %rcx
	mulsd	384(%rcx), %xmm0
	addsd	-184(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-40(%rbp), %rcx
	movq	360(%rcx), %rcx
	movsd	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movq	360(%rcx), %rcx
	addsd	64(%rcx), %xmm0
	mulsd	-488(%rbp), %xmm0
	movslq	-492(%rbp), %rcx
	movq	-40(%rbp), %rdi
	mulsd	3592(%rdi,%rcx,8), %xmm0
	movq	-40(%rbp), %rcx
	mulsd	384(%rcx), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
.LBB21_65:                              # %if.end.391
                                        #   in Loop: Header=BB21_62 Depth=1
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_set_current_coords
	movl	$1, %ecx
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-456(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-328(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 256(%rsi)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-456(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-344(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 264(%rsi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %r8d
	callq	gimp_paint_core_paint
# BB#66:                                # %for.inc
                                        #   in Loop: Header=BB21_62 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB21_62
.LBB21_67:                              # %for.end
	leaq	-184(%rbp), %rsi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-192(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-208(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-216(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-224(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-232(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-240(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_set_current_coords
	leaq	-184(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_paint_core_set_last_coords
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 256(%rsi)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-344(%rbp), %xmm0
	movq	-8(%rbp), %rsi
	movsd	%xmm0, 264(%rsi)
.LBB21_68:                              # %return
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_brush_core_interpolate, .Lfunc_end21-gimp_brush_core_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_get_paint_area,@function
gimp_brush_core_get_paint_area:         # @gimp_brush_core_get_paint_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 220(%rax)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_brush_core_eval_transform_dynamics
.LBB22_2:                               # %if.end
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-48(%rbp), %rax
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	408(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	392(%rax), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_brush_transform_size
	movl	$2, %ecx
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	-84(%rbp), %eax
	cltd
	movl	-108(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	-88(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -80(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB22_4
# BB#3:                                 # %cond.true
	movl	-76(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB22_8
.LBB22_4:                               # %cond.false
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB22_6
# BB#5:                                 # %cond.true.21
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB22_7
.LBB22_6:                               # %cond.false.22
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB22_7:                               # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB22_8:                               # %cond.end.24
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB22_10
# BB#9:                                 # %cond.true.29
	movl	-80(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB22_14
.LBB22_10:                              # %cond.false.30
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB22_12
# BB#11:                                # %cond.true.34
	xorl	%eax, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB22_13
.LBB22_12:                              # %cond.false.35
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB22_13:                              # %cond.end.37
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB22_14:                              # %cond.end.39
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB22_16
# BB#15:                                # %cond.true.44
	movl	-76(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB22_20
.LBB22_16:                              # %cond.false.45
	movl	-52(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB22_18
# BB#17:                                # %cond.true.50
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB22_19
.LBB22_18:                              # %cond.false.51
	movl	-52(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB22_19:                              # %cond.end.54
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB22_20:                              # %cond.end.56
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB22_22
# BB#21:                                # %cond.true.62
	movl	-80(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB22_26
.LBB22_22:                              # %cond.false.63
	movl	-56(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB22_24
# BB#23:                                # %cond.true.68
	xorl	%eax, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB22_25
.LBB22_24:                              # %cond.false.69
	movl	-56(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB22_25:                              # %cond.end.72
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB22_26:                              # %cond.end.74
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_29
# BB#27:                                # %land.lhs.true
	movl	-72(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB22_29
# BB#28:                                # %if.then.80
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_bytes_with_alpha
	movl	%eax, -92(%rbp)
	movq	-16(%rbp), %rdi
	movq	336(%rdi), %rdi
	movl	-92(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	-72(%rbp), %r8d
	subl	-64(%rbp), %r8d
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-164(%rbp), %r9d        # 4-byte Reload
	callq	temp_buf_resize
	movq	-16(%rbp), %rdi
	movq	%rax, 336(%rdi)
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_30
.LBB22_29:                              # %if.end.87
	movq	$0, -8(%rbp)
.LBB22_30:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_brush_core_get_paint_area, .Lfunc_end22-gimp_brush_core_get_paint_area
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_real_set_brush,@function
gimp_brush_core_real_set_brush:         # @gimp_brush_core_real_set_brush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	352(%rdi), %rsi
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_6
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB23_4
# BB#3:                                 # %if.then.2
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_core_invalidate_cache, %rdx
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_brush_end_use
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 352(%rdi)
.LBB23_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB23_6
# BB#5:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_begin_use
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_brush_core_invalidate_cache, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB23_6:                               # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_brush_core_real_set_brush, .Lfunc_end23-gimp_brush_core_real_set_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_real_set_dynamics,@function
gimp_brush_core_real_set_dynamics:      # @gimp_brush_core_real_set_dynamics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	368(%rdi), %rsi
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_6
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB24_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB24_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 368(%rax)
	je	.LBB24_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB24_6:                               # %if.end.11
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_brush_core_real_set_dynamics, .Lfunc_end24-gimp_brush_core_real_set_dynamics
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_core_invalidate_cache,@function
gimp_brush_core_invalidate_cache:       # @gimp_brush_core_invalidate_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$1, 696(%rsi)
	movq	-16(%rbp), %rsi
	movl	$1, 464(%rsi)
	movq	-16(%rbp), %rsi
	movl	core_signals, %eax
	movq	-8(%rbp), %rcx
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_brush_core_invalidate_cache, .Lfunc_end25-gimp_brush_core_invalidate_cache
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI26_1:
	.quad	4607182328728024861     # double 0.99999000000000004
	.text
	.align	16, 0x90
	.type	gimp_avoid_exact_integer,@function
gimp_avoid_exact_integer:               # @gimp_avoid_exact_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB26_2
# BB#1:                                 # %if.then
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB26_5
.LBB26_2:                               # %if.else
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_4
# BB#3:                                 # %if.then.2
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_avoid_exact_integer, .Lfunc_end26-gimp_avoid_exact_integer
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_pointers,@function
rotate_pointers:                        # @rotate_pointers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB27_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB27_1
.LBB27_4:                               # %for.end
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	rotate_pointers, .Lfunc_end27-rotate_pointers
	.cfi_endproc

	.type	gimp_brush_core_get_type.g_define_type_id__volatile,@object # @gimp_brush_core_get_type.g_define_type_id__volatile
	.local	gimp_brush_core_get_type.g_define_type_id__volatile
	.comm	gimp_brush_core_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushCore"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Paint"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_brush_core_set_brush,@object # @__func__.gimp_brush_core_set_brush
.L__func__.gimp_brush_core_set_brush:
	.asciz	"gimp_brush_core_set_brush"
	.size	.L__func__.gimp_brush_core_set_brush, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_BRUSH_CORE (core)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"brush == NULL || GIMP_IS_BRUSH (brush)"
	.size	.L.str.3, 39

	.type	core_signals,@object    # @core_signals
	.local	core_signals
	.comm	core_signals,8,4
	.type	.L__func__.gimp_brush_core_set_dynamics,@object # @__func__.gimp_brush_core_set_dynamics
.L__func__.gimp_brush_core_set_dynamics:
	.asciz	"gimp_brush_core_set_dynamics"
	.size	.L__func__.gimp_brush_core_set_dynamics, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dynamics == NULL || GIMP_IS_DYNAMICS (dynamics)"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpbrushcore.c"
	.size	.L.str.6, 16

	.type	.L__func__.gimp_brush_core_get_brush_mask,@object # @__func__.gimp_brush_core_get_brush_mask
.L__func__.gimp_brush_core_get_brush_mask:
	.asciz	"gimp_brush_core_get_brush_mask"
	.size	.L__func__.gimp_brush_core_get_brush_mask, 31

	.type	.L__func__.gimp_brush_core_color_area_with_pixmap,@object # @__func__.gimp_brush_core_color_area_with_pixmap
.L__func__.gimp_brush_core_color_area_with_pixmap:
	.asciz	"gimp_brush_core_color_area_with_pixmap"
	.size	.L__func__.gimp_brush_core_color_area_with_pixmap, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_BRUSH (core->brush)"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"core->brush->pixmap != NULL"
	.size	.L.str.8, 28

	.type	gimp_brush_core_parent_class,@object # @gimp_brush_core_parent_class
	.local	gimp_brush_core_parent_class
	.comm	gimp_brush_core_parent_class,8,8
	.type	GimpBrushCore_private_offset,@object # @GimpBrushCore_private_offset
	.local	GimpBrushCore_private_offset
	.comm	GimpBrushCore_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"set-brush"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"set-dynamics"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"No brushes available for use with this tool."
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"No paint dynamics available for use with this tool."
	.size	.L.str.12, 52

	.type	.L__func__.gimp_brush_core_interpolate,@object # @__func__.gimp_brush_core_interpolate
.L__func__.gimp_brush_core_interpolate:
	.asciz	"gimp_brush_core_interpolate"
	.size	.L__func__.gimp_brush_core_interpolate, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"invalidate-preview"
	.size	.L.str.13, 19

	.type	subsample,@object       # @subsample
	.section	.rodata,"a",@progbits
	.align	16
subsample:
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	44                      # 0x2c
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	162                     # 0xa2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	206                     # 0xce
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	162                     # 0xa2
	.long	44                      # 0x2c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	206                     # 0xce
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	206                     # 0xce
	.long	50                      # 0x32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	162                     # 0xa2
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	44                      # 0x2c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	206                     # 0xce
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	162                     # 0xa2
	.long	44                      # 0x2c
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	103                     # 0x67
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	103                     # 0x67
	.long	25                      # 0x19
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	64                      # 0x40
	.size	subsample, 900

	.type	gimp_brush_core_pressurize_mask.mapi,@object # @gimp_brush_core_pressurize_mask.mapi
	.local	gimp_brush_core_pressurize_mask.mapi
	.comm	gimp_brush_core_pressurize_mask.mapi,256,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
