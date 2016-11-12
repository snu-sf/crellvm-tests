	.text
	.file	"tools-commands.bc"
	.globl	tools_select_cmd_callback
	.align	16, 0x90
	.type	tools_select_cmd_callback,@function
tools_select_cmd_callback:              # @tools_select_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_12
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	$.L.str, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.1, %rax
	movl	$1, -60(%rbp)
	movq	%rax, -16(%rbp)
.LBB0_4:                                # %if.end.3
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_get_tool_info
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_tool
	cmpq	-40(%rbp), %rax
	je	.LBB0_8
# BB#5:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_context_set_tool
	cmpl	$0, -60(%rbp)
	je	.LBB0_7
# BB#6:                                 # %if.then.10
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB0_7:                                # %if.end.11
	jmp	.LBB0_9
.LBB0_8:                                # %if.else
	movq	-48(%rbp), %rdi
	callq	gimp_context_tool_changed
.LBB0_9:                                # %if.end.12
	movq	-48(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_12
# BB#10:                                # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB0_12
# BB#11:                                # %if.then.17
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	tool_manager_initialize_active
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB0_12:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tools_select_cmd_callback, .Lfunc_end0-tools_select_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4621819117588971520     # double 10
.LCPI1_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	tools_color_average_radius_cmd_callback
	.align	16, 0x90
	.type	tools_color_average_radius_cmd_callback,@function
tools_color_average_radius_cmd_callback: # @tools_color_average_radius_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB1_10
.LBB1_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_9:                                # %if.end.12
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI1_2, %xmm3         # xmm3 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	action_select_property
.LBB1_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tools_color_average_radius_cmd_callback, .Lfunc_end1-tools_color_average_radius_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	tools_paint_brush_size_cmd_callback
	.align	16, 0x90
	.type	tools_paint_brush_size_cmd_callback,@function
tools_paint_brush_size_cmd_callback:    # @tools_paint_brush_size_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_12
.LBB2_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB2_10
.LBB2_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_9:                                # %if.end.12
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rcx
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB2_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tools_paint_brush_size_cmd_callback, .Lfunc_end2-tools_paint_brush_size_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4624633867356078080     # double 15
	.text
	.globl	tools_paint_brush_angle_cmd_callback
	.align	16, 0x90
	.type	tools_paint_brush_angle_cmd_callback,@function
tools_paint_brush_angle_cmd_callback:   # @tools_paint_brush_angle_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB3_10
.LBB3_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_9:                                # %if.end.12
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rcx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB3_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tools_paint_brush_angle_cmd_callback, .Lfunc_end3-tools_paint_brush_angle_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4576918229304087675     # double 0.01
.LCPI4_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	tools_paint_brush_aspect_ratio_cmd_callback
	.align	16, 0x90
	.type	tools_paint_brush_aspect_ratio_cmd_callback,@function
tools_paint_brush_aspect_ratio_cmd_callback: # @tools_paint_brush_aspect_ratio_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_12
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_9:                                # %if.end.12
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rcx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB4_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tools_paint_brush_aspect_ratio_cmd_callback, .Lfunc_end4-tools_paint_brush_aspect_ratio_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4621819117588971520     # double 10
.LCPI5_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	tools_ink_blob_size_cmd_callback
	.align	16, 0x90
	.type	tools_ink_blob_size_cmd_callback,@function
tools_ink_blob_size_cmd_callback:       # @tools_ink_blob_size_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_12
.LBB5_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ink_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_9:                                # %if.end.12
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rcx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	action_select_property
.LBB5_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tools_ink_blob_size_cmd_callback, .Lfunc_end5-tools_ink_blob_size_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	tools_ink_blob_aspect_cmd_callback
	.align	16, 0x90
	.type	tools_ink_blob_aspect_cmd_callback,@function
tools_ink_blob_aspect_cmd_callback:     # @tools_ink_blob_aspect_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_12
.LBB6_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ink_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB6_10
.LBB6_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_9:                                # %if.end.12
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rcx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB6_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tools_ink_blob_aspect_cmd_callback, .Lfunc_end6-tools_ink_blob_aspect_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4624633867356078080     # double 15
.LCPI7_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	tools_ink_blob_angle_cmd_callback
	.align	16, 0x90
	.type	tools_ink_blob_angle_cmd_callback,@function
tools_ink_blob_angle_cmd_callback:      # @tools_ink_blob_angle_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_12
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_ink_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_9:                                # %if.end.12
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rcx
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_2, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	action_select_property
.LBB7_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tools_ink_blob_angle_cmd_callback, .Lfunc_end7-tools_ink_blob_angle_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4616189618054758400     # double 4
.LCPI8_2:
	.quad	4625196817309499392     # double 16
.LCPI8_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	tools_fg_select_brush_size_cmd_callback
	.align	16, 0x90
	.type	tools_fg_select_brush_size_cmd_callback,@function
tools_fg_select_brush_size_cmd_callback: # @tools_fg_select_brush_size_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_12
.LBB8_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_foreground_select_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB8_10
.LBB8_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_9:                                # %if.end.12
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rcx
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_3, %xmm3         # xmm3 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	action_select_property
.LBB8_12:                               # %if.end.19
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tools_fg_select_brush_size_cmd_callback, .Lfunc_end8-tools_fg_select_brush_size_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4576918229304087675     # double 0.01
.LCPI9_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI9_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	tools_transform_preview_opacity_cmd_callback
	.align	16, 0x90
	.type	tools_transform_preview_opacity_cmd_callback,@function
tools_transform_preview_opacity_cmd_callback: # @tools_transform_preview_opacity_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_12
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_12
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_transform_options_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then.5
	movl	$0, -60(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_9:                                # %if.end.12
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.13
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_12
# BB#11:                                # %if.then.15
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rcx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	xorl	%r8d, %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	action_select_property
.LBB9_12:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tools_transform_preview_opacity_cmd_callback, .Lfunc_end9-tools_transform_preview_opacity_cmd_callback
	.cfi_endproc

	.globl	tools_value_1_cmd_callback
	.align	16, 0x90
	.type	tools_value_1_cmd_callback,@function
tools_value_1_cmd_callback:             # @tools_value_1_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_6
.LBB10_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_value_1
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB10_5:                               # %if.end.7
	jmp	.LBB10_6
.LBB10_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tools_value_1_cmd_callback, .Lfunc_end10-tools_value_1_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	tools_activate_enum_action,@function
tools_activate_enum_action:             # @tools_activate_enum_action
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movl	$47, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_12
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$0, (%rax)
	callq	gimp_ui_managers_from_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_find_action
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_enum_action_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then.6
	movl	$0, -68(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.9
	movl	$1, -68(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.10
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.12
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_11
# BB#9:                                 # %land.lhs.true.14
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_enum_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 68(%rax)
	je	.LBB11_11
# BB#10:                                # %if.then.18
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_enum_action_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_enum_action_selected
.LBB11_11:                              # %if.end.21
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.22
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tools_activate_enum_action, .Lfunc_end11-tools_activate_enum_action
	.cfi_endproc

	.globl	tools_value_2_cmd_callback
	.align	16, 0x90
	.type	tools_value_2_cmd_callback,@function
tools_value_2_cmd_callback:             # @tools_value_2_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_6
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_value_2
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB12_5:                               # %if.end.7
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tools_value_2_cmd_callback, .Lfunc_end12-tools_value_2_cmd_callback
	.cfi_endproc

	.globl	tools_value_3_cmd_callback
	.align	16, 0x90
	.type	tools_value_3_cmd_callback,@function
tools_value_3_cmd_callback:             # @tools_value_3_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_6
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB13_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_value_3
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB13_5:                               # %if.end.7
	jmp	.LBB13_6
.LBB13_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tools_value_3_cmd_callback, .Lfunc_end13-tools_value_3_cmd_callback
	.cfi_endproc

	.globl	tools_value_4_cmd_callback
	.align	16, 0x90
	.type	tools_value_4_cmd_callback,@function
tools_value_4_cmd_callback:             # @tools_value_4_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_6
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB14_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_value_4
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB14_5:                               # %if.end.7
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tools_value_4_cmd_callback, .Lfunc_end14-tools_value_4_cmd_callback
	.cfi_endproc

	.globl	tools_object_1_cmd_callback
	.align	16, 0x90
	.type	tools_object_1_cmd_callback,@function
tools_object_1_cmd_callback:            # @tools_object_1_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_6
.LBB15_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_object_1
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB15_5:                               # %if.end.7
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	tools_object_1_cmd_callback, .Lfunc_end15-tools_object_1_cmd_callback
	.cfi_endproc

	.globl	tools_object_2_cmd_callback
	.align	16, 0x90
	.type	tools_object_2_cmd_callback,@function
tools_object_2_cmd_callback:            # @tools_object_2_cmd_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_6
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_6
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_action_object_2
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB16_5
# BB#4:                                 # %if.then.6
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	tools_activate_enum_action
.LBB16_5:                               # %if.end.7
	jmp	.LBB16_6
.LBB16_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	tools_object_2_cmd_callback, .Lfunc_end16-tools_object_2_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-rotate-layer"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-rotate-tool"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"type"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"average-radius"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"brush-size"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"brush-angle"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"brush-aspect-ratio"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"size"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"blob-aspect"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"blob-angle"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stroke-width"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"preview-opacity"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Image>"
	.size	.L.str.12, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
