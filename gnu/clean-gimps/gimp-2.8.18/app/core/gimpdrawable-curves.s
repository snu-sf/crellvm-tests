	.text
	.file	"gimpdrawable-curves.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
.LCPI0_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_drawable_curves_spline
	.align	16, 0x90
	.type	gimp_drawable_curves_spline,@function
gimp_drawable_curves_spline:            # @gimp_drawable_curves_spline
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.23
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_21:                               # %if.end.25
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.26
	jmp	.LBB0_23
.LBB0_23:                               # %do.body.27
	cmpl	$0, -20(%rbp)
	jl	.LBB0_26
# BB#24:                                # %land.lhs.true.29
	cmpl	$4, -20(%rbp)
	jg	.LBB0_26
# BB#25:                                # %if.then.31
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_27:                               # %if.end.33
	jmp	.LBB0_28
.LBB0_28:                               # %do.end.34
	cmpl	$4, -20(%rbp)
	jne	.LBB0_35
# BB#29:                                # %if.then.36
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.37
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB0_32
# BB#31:                                # %if.then.40
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.41
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_33:                               # %if.end.42
	jmp	.LBB0_34
.LBB0_34:                               # %do.end.43
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.44
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB0_43
# BB#36:                                # %if.then.47
	jmp	.LBB0_37
.LBB0_37:                               # %do.body.48
	cmpl	$0, -20(%rbp)
	je	.LBB0_39
# BB#38:                                # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB0_40
.LBB0_39:                               # %if.then.51
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_spline, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_41:                               # %if.end.53
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.54
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.55
	callq	gimp_curves_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	48(%rsi,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	movl	$2, %ecx
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-56(%rbp), %rdi
	cmpl	36(%rdi), %eax
	jge	.LBB0_45
# BB#44:                                # %cond.true
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-116(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_46
.LBB0_45:                               # %cond.false
	movq	-56(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB0_46:                               # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	$0, -60(%rbp)
.LBB0_47:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_50
# BB#48:                                # %for.body
                                        #   in Loop: Header=BB0_47 Depth=1
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movl	%eax, %edx
	leal	1(%rdx,%rdx), %ecx
	movslq	%ecx, %rdx
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	movl	%eax, %esi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_curve_set_point
# BB#49:                                # %for.inc
                                        #   in Loop: Header=BB0_47 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_47
.LBB0_50:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_drawable_curves
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_51:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_curves_spline, .Lfunc_end0-gimp_drawable_curves_spline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_curves,@function
gimp_drawable_curves:                   # @gimp_drawable_curves
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
	subq	$1392, %rsp             # imm = 0x570
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	gegl_node_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.9, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r9
	movq	%r9, -1336(%rbp)        # 8-byte Spill
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %r8d
	movq	-32(%rbp), %rcx
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	callq	gimp_lut_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_is_rgb
	leaq	-1320(%rbp), %rsi
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_curves_config_to_cruft
	leaq	-1320(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -1360(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -1368(%rbp)       # 8-byte Spill
	callq	gimp_drawable_bytes
	movabsq	$curves_lut_func, %rcx
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, %rsi
	movq	-1368(%rbp), %rdx       # 8-byte Reload
	movl	%eax, %ecx
	callq	gimp_lut_setup
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	%r9, -1376(%rbp)        # 8-byte Spill
	movq	%r8, -1384(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-40(%rbp), %rcx
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_process_lut
	movq	-40(%rbp), %rdi
	callq	gimp_lut_free
.LBB1_3:                                # %if.end
	addq	$1392, %rsp             # imm = 0x570
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_curves, .Lfunc_end1-gimp_drawable_curves
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_drawable_curves_explicit
	.align	16, 0x90
	.type	gimp_drawable_curves_explicit,@function
gimp_drawable_curves_explicit:          # @gimp_drawable_curves_explicit
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.14
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_16:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.17
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.18
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_20
# BB#19:                                # %if.then.23
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_21:                               # %if.end.25
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.26
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.27
	cmpl	$0, -20(%rbp)
	jl	.LBB2_26
# BB#24:                                # %land.lhs.true.29
	cmpl	$4, -20(%rbp)
	jg	.LBB2_26
# BB#25:                                # %if.then.31
	jmp	.LBB2_27
.LBB2_26:                               # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_27:                               # %if.end.33
	jmp	.LBB2_28
.LBB2_28:                               # %do.end.34
	cmpl	$4, -20(%rbp)
	jne	.LBB2_35
# BB#29:                                # %if.then.36
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.37
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB2_32
# BB#31:                                # %if.then.40
	jmp	.LBB2_33
.LBB2_32:                               # %if.else.41
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_33:                               # %if.end.42
	jmp	.LBB2_34
.LBB2_34:                               # %do.end.43
	jmp	.LBB2_35
.LBB2_35:                               # %if.end.44
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB2_43
# BB#36:                                # %if.then.47
	jmp	.LBB2_37
.LBB2_37:                               # %do.body.48
	cmpl	$0, -20(%rbp)
	je	.LBB2_39
# BB#38:                                # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	jne	.LBB2_40
.LBB2_39:                               # %if.then.51
	jmp	.LBB2_41
.LBB2_40:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_curves_explicit, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_48
.LBB2_41:                               # %if.end.53
	jmp	.LBB2_42
.LBB2_42:                               # %do.end.54
	jmp	.LBB2_43
.LBB2_43:                               # %if.end.55
	callq	gimp_curves_config_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	48(%rsi,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_curve_set_curve_type
	movl	$0, -60(%rbp)
.LBB2_44:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jge	.LBB2_47
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB2_44 Depth=1
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_curve_set_curve
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_44
.LBB2_47:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_drawable_curves
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_48:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_curves_explicit, .Lfunc_end2-gimp_drawable_curves_explicit
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_curves_spline,@object # @__func__.gimp_drawable_curves_spline
.L__func__.gimp_drawable_curves_spline:
	.asciz	"gimp_drawable_curves_spline"
	.size	.L__func__.gimp_drawable_curves_spline, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"! gimp_drawable_is_indexed (drawable)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"channel >= GIMP_HISTOGRAM_VALUE && channel <= GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_drawable_has_alpha (drawable)"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"channel == GIMP_HISTOGRAM_VALUE || channel == GIMP_HISTOGRAM_ALPHA"
	.size	.L.str.6, 67

	.type	.L__func__.gimp_drawable_curves_explicit,@object # @__func__.gimp_drawable_curves_explicit
.L__func__.gimp_drawable_curves_explicit:
	.asciz	"gimp_drawable_curves_explicit"
	.size	.L__func__.gimp_drawable_curves_explicit, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"operation"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp:curves"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"config"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Curves"
	.size	.L.str.10, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
