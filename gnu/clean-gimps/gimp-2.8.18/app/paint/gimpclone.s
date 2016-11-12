	.text
	.file	"gimpclone.bc"
	.globl	gimp_clone_get_type
	.align	16, 0x90
	.type	gimp_clone_get_type,@function
gimp_clone_get_type:                    # @gimp_clone_get_type
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
	movq	gimp_clone_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_clone_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_clone_class_intern_init, %rdi
	movl	$6552, %r8d             # imm = 0x1998
	movabsq	$gimp_clone_init, %rcx
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
	movabsq	$gimp_clone_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_clone_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_clone_get_type, .Lfunc_end0-gimp_clone_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_class_intern_init,@function
gimp_clone_class_intern_init:           # @gimp_clone_class_intern_init
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
	movq	%rax, gimp_clone_parent_class
	cmpl	$0, GimpClone_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpClone_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_clone_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_clone_class_intern_init, .Lfunc_end1-gimp_clone_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_init,@function
gimp_clone_init:                        # @gimp_clone_init
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
	.size	gimp_clone_init, .Lfunc_end2-gimp_clone_init
	.cfi_endproc

	.globl	gimp_clone_register
	.align	16, 0x90
	.type	gimp_clone_register,@function
gimp_clone_register:                    # @gimp_clone_register
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
	callq	gimp_clone_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_clone_options_get_type
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
	.size	gimp_clone_register, .Lfunc_end3-gimp_clone_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_class_init,@function
gimp_clone_class_init:                  # @gimp_clone_class_init
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
	movabsq	$gimp_clone_motion, %rsi
	movabsq	$gimp_clone_start, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 256(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_clone_class_init, .Lfunc_end4-gimp_clone_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_start,@function
gimp_clone_start:                       # @gimp_clone_start
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
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_clone_options_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	gimp_clone_parent_class, %rax
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
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movq	-56(%rbp), %rax
	cmpl	$1, 488(%rax)
	jne	.LBB5_6
# BB#3:                                 # %if.then.5
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	cmpq	$0, %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.10
	movq	-48(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.4, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_7
.LBB5_5:                                # %if.end.13
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.14
	movl	$1, -4(%rbp)
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_clone_start, .Lfunc_end5-gimp_clone_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_clone_motion,@function
gimp_clone_motion:                      # @gimp_clone_motion
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
	subq	$448, %rsp              # imm = 0x1C0
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
	movq	-40(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_paint_core_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_clone_options_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_source_options_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -160(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -180(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -272(%rbp)
	movq	-136(%rbp), %rax
	movl	488(%rax), %r10d
	testl	%r10d, %r10d
	movl	%r10d, -348(%rbp)       # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_30
.LBB6_30:                               # %entry
	movl	-348(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_15
.LBB6_1:                                # %sw.bb
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -168(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -180(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_bytes
	movq	-88(%rbp), %rdi
	cmpl	52(%rdi), %eax
	jge	.LBB6_13
# BB#2:                                 # %if.then
	cmpl	$0, -180(%rbp)
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$1, -180(%rbp)
	jne	.LBB6_5
.LBB6_4:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB6_12
.LBB6_5:                                # %cond.false
	cmpl	$2, -180(%rbp)
	je	.LBB6_7
# BB#6:                                 # %lor.lhs.false.17
	cmpl	$3, -180(%rbp)
	jne	.LBB6_8
.LBB6_7:                                # %cond.true.19
	movl	$3, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB6_11
.LBB6_8:                                # %cond.false.20
	movb	$1, %al
	cmpl	$4, -180(%rbp)
	movb	%al, -361(%rbp)         # 1-byte Spill
	je	.LBB6_10
# BB#9:                                 # %lor.rhs
	cmpl	$5, -180(%rbp)
	sete	%al
	movb	%al, -361(%rbp)         # 1-byte Spill
.LBB6_10:                               # %lor.end
	movb	-361(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
.LBB6_11:                               # %cond.end
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB6_12:                               # %cond.end.24
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)
.LBB6_13:                               # %if.end
	leaq	-264(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	callq	pixel_region_init_temp_buf
	movl	$2, %edi
	leaq	-264(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -192(%rbp)
	jmp	.LBB6_15
.LBB6_14:                               # %sw.bb.27
	movq	-152(%rbp), %rdi
	callq	gimp_context_get_pattern
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -272(%rbp)
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-104(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	movl	$1, %edi
	leaq	-264(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -192(%rbp)
.LBB6_15:                               # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -184(%rbp)
.LBB6_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_18 Depth 2
	cmpq	$0, -192(%rbp)
	je	.LBB6_26
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -304(%rbp)
	movl	$0, -196(%rbp)
.LBB6_18:                               # %for.cond.33
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-196(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB6_24
# BB#19:                                # %for.body.35
                                        #   in Loop: Header=BB6_18 Depth=2
	movq	-136(%rbp), %rax
	movl	488(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	je	.LBB6_20
	jmp	.LBB6_31
.LBB6_31:                               # %for.body.35
                                        #   in Loop: Header=BB6_18 Depth=2
	movl	-368(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB6_21
	jmp	.LBB6_22
.LBB6_20:                               # %sw.bb.37
                                        #   in Loop: Header=BB6_18 Depth=2
	movq	-160(%rbp), %rdi
	movl	-184(%rbp), %esi
	movq	-168(%rbp), %rdx
	movl	-180(%rbp), %ecx
	movq	-296(%rbp), %r8
	movq	-304(%rbp), %r9
	movq	-88(%rbp), %rax
	movl	52(%rax), %r10d
	movl	-212(%rbp), %r11d
	movl	-220(%rbp), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	gimp_clone_line_image
	movq	-88(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-296(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB6_22
.LBB6_21:                               # %sw.bb.40
                                        #   in Loop: Header=BB6_18 Depth=2
	movq	-160(%rbp), %rdi
	movl	-184(%rbp), %esi
	movq	-272(%rbp), %rdx
	movq	-304(%rbp), %rcx
	movq	-104(%rbp), %rax
	movl	12(%rax), %r8d
	addl	-92(%rbp), %r8d
	movq	-104(%rbp), %rax
	movl	16(%rax), %r9d
	addl	-196(%rbp), %r9d
	addl	-96(%rbp), %r9d
	movl	-212(%rbp), %r10d
	movl	-220(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	gimp_clone_line_pattern
.LBB6_22:                               # %sw.epilog.46
                                        #   in Loop: Header=BB6_18 Depth=2
	movl	-232(%rbp), %eax
	movq	-304(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -304(%rbp)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_18
.LBB6_24:                               # %for.end
                                        #   in Loop: Header=BB6_16 Depth=1
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc.50
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -192(%rbp)
	jmp	.LBB6_16
.LBB6_26:                               # %for.end.52
	movq	-128(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	368(%rax), %rdi
	callq	gimp_dynamics_get_output
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-128(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_paint_options_get_fade
	movsd	%xmm0, -280(%rbp)
	movq	-176(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gimp_dynamics_output_get_linear_value
	movsd	%xmm0, -288(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_brush_core_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	ucomisd	-72(%rbp), %xmm0
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	jbe	.LBB6_28
# BB#27:                                # %cond.true.61
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	jmp	.LBB6_29
.LBB6_28:                               # %cond.false.62
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	jmp	.LBB6_29
.LBB6_29:                               # %cond.end.63
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-152(%rbp), %rdi
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	callq	gimp_context_get_opacity
	movq	-152(%rbp), %rdi
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movq	-56(%rbp), %rdi
	movl	%eax, -444(%rbp)        # 4-byte Spill
	callq	gimp_paint_options_get_brush_mode
	xorl	%ecx, %ecx
	movl	$1, %edx
	movsd	-288(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-144(%rbp), %rdi
	cmpl	$3, 472(%rdi)
	cmovel	%edx, %ecx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-444(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -448(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%eax, %r8d
	movl	-448(%rbp), %r9d        # 4-byte Reload
	callq	gimp_brush_core_paste_canvas
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_clone_motion, .Lfunc_end6-gimp_clone_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_line_image,@function
gimp_clone_line_image:                  # @gimp_clone_line_image
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
	subq	$80, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	je	.LBB7_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gimp_image_get_color
	xorl	%ecx, %ecx
	leaq	-64(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-48(%rbp), %rdx
	callq	gimp_image_transform_color
	movb	-61(%rbp), %al
	movslq	-68(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movb	%al, (%rdi,%rdx)
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movslq	%ecx, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -40(%rbp)
	movl	-56(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movslq	%ecx, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -48(%rbp)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_clone_line_image, .Lfunc_end7-gimp_clone_line_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_clone_line_pattern,@function
gimp_clone_line_pattern:                # @gimp_clone_line_pattern
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
	subq	$112, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	(%rcx), %eax
	movl	%eax, -76(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB8_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	4(%rax), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	jmp	.LBB8_4
.LBB8_4:                                # %while.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jge	.LBB8_6
# BB#5:                                 # %while.body.5
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	8(%rax), %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB8_4
.LBB8_6:                                # %while.end.8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movb	$1, %cl
	movl	-40(%rbp), %edx
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	8(%rdi)
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	imull	4(%rdi), %edx
	imull	-76(%rbp), %edx
	movslq	%edx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	cmpl	$3, -76(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB8_8
# BB#7:                                 # %lor.rhs
	cmpl	$4, -76(%rbp)
	sete	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB8_8:                                # %lor.end
	movb	-89(%rbp), %al          # 1-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -68(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movl	$0, -80(%rbp)
.LBB8_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_16
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB8_9 Depth=1
	movq	-56(%rbp), %rax
	movl	-80(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	cltd
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivl	4(%rsi)
	imull	-76(%rbp), %edx
	movslq	%edx, %rdi
	movq	-104(%rbp), %r8         # 8-byte Reload
	addq	%rdi, %r8
	movq	%r8, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	gimp_image_transform_color
	cmpl	$2, -76(%rbp)
	je	.LBB8_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_9 Depth=1
	cmpl	$4, -76(%rbp)
	jne	.LBB8_13
.LBB8_12:                               # %if.then
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	jmp	.LBB8_14
.LBB8_13:                               # %if.else
                                        #   in Loop: Header=BB8_9 Depth=1
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB8_14:                               # %if.end
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_9
.LBB8_16:                               # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_clone_line_pattern, .Lfunc_end8-gimp_clone_line_pattern
	.cfi_endproc

	.type	gimp_clone_get_type.g_define_type_id__volatile,@object # @gimp_clone_get_type.g_define_type_id__volatile
	.local	gimp_clone_get_type.g_define_type_id__volatile
	.comm	gimp_clone_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpClone"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-clone"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Clone"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-clone"
	.size	.L.str.3, 16

	.type	gimp_clone_parent_class,@object # @gimp_clone_parent_class
	.local	gimp_clone_parent_class
	.comm	gimp_clone_parent_class,8,8
	.type	GimpClone_private_offset,@object # @GimpClone_private_offset
	.local	GimpClone_private_offset
	.comm	GimpClone_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"No patterns available for use with this tool."
	.size	.L.str.4, 46


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
