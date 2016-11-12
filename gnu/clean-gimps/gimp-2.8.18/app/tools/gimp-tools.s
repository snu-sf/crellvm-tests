	.text
	.file	"gimp-tools.bc"
	.globl	gimp_tools_init
	.align	16, 0x90
	.type	gimp_tools_init,@function
gimp_tools_init:                        # @gimp_tools_init
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
	subq	$448, %rsp              # imm = 0x1C0
	movabsq	$.Lgimp_tools_init.register_funcs, %rax
	movl	$352, %ecx              # imm = 0x160
	movl	%ecx, %edx
	leaq	-368(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	$0, -376(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)
	callq	gimp_get_type
	movq	%rax, -408(%rbp)
	cmpq	$0, -400(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -412(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-400(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-400(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-408(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -412(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-400(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -412(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-412(%rbp), %eax
	movl	%eax, -416(%rbp)
	cmpl	$0, -416(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_24
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	callq	gimp_tool_options_create_folder
	movq	-8(%rbp), %rdi
	callq	tool_manager_init
	movq	-8(%rbp), %rdi
	movq	528(%rdi), %rdi
	callq	gimp_container_freeze
	movl	$0, -388(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-388(%rbp), %rax
	cmpq	$44, %rax
	jae	.LBB0_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movabsq	$gimp_tools_register, %rdi
	movslq	-388(%rbp), %rax
	movq	-368(%rbp,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	*%rax
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB0_13
.LBB0_16:                               # %for.end
	movq	-8(%rbp), %rax
	movq	528(%rax), %rdi
	callq	gimp_container_thaw
	movq	-8(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -384(%rbp)
.LBB0_17:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -384(%rbp)
	je	.LBB0_23
# BB#18:                                # %for.body.17
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-384(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_object_get_name
	movq	%rax, -424(%rbp)
	movq	-376(%rbp), %rdi
	movq	-424(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -376(%rbp)
# BB#19:                                # %for.inc.22
                                        #   in Loop: Header=BB0_17 Depth=1
	cmpq	$0, -384(%rbp)
	je	.LBB0_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-384(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               # %cond.false
                                        #   in Loop: Header=BB0_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               # %cond.end
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -384(%rbp)
	jmp	.LBB0_17
.LBB0_23:                               # %for.end.24
	movq	-376(%rbp), %rdi
	callq	g_list_reverse
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -376(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	-376(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
.LBB0_24:                               # %return
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tools_init, .Lfunc_end0-gimp_tools_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tools_register,@function
gimp_tools_register:                    # @gimp_tools_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movq	40(%rbp), %rbx
	movq	32(%rbp), %r14
	movq	24(%rbp), %r15
	movq	16(%rbp), %r12
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r12, -96(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r10, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
# BB#1:                                 # %do.body
	movq	-152(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_register, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_60
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-48(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.15
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_register, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_60
.LBB1_16:                               # %if.end.17
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.18
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.19
	cmpq	$4, -56(%rbp)
	je	.LBB1_20
# BB#19:                                # %lor.lhs.false
	movq	-56(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB1_21
.LBB1_20:                               # %if.then.24
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.25
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_register, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_60
.LBB1_22:                               # %if.end.26
	jmp	.LBB1_23
.LBB1_23:                               # %do.end.27
	cmpq	$4, -56(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.29
	callq	gimp_tool_options_get_type
	movq	%rax, -56(%rbp)
.LBB1_25:                               # %if.end.31
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_pencil_tool_get_type
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_27
# BB#26:                                # %if.then.34
	movabsq	$.L.str.13, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_58
.LBB1_27:                               # %if.else.35
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_paintbrush_tool_get_type
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_29
# BB#28:                                # %if.then.38
	movabsq	$.L.str.14, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_57
.LBB1_29:                               # %if.else.39
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_eraser_tool_get_type
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_31
# BB#30:                                # %if.then.42
	movabsq	$.L.str.15, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_56
.LBB1_31:                               # %if.else.43
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_airbrush_tool_get_type
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_33
# BB#32:                                # %if.then.46
	movabsq	$.L.str.16, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_55
.LBB1_33:                               # %if.else.47
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_clone_tool_get_type
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_35
# BB#34:                                # %if.then.50
	movabsq	$.L.str.17, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_54
.LBB1_35:                               # %if.else.51
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_heal_tool_get_type
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_37
# BB#36:                                # %if.then.54
	movabsq	$.L.str.18, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_53
.LBB1_37:                               # %if.else.55
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_perspective_clone_tool_get_type
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_39
# BB#38:                                # %if.then.58
	movabsq	$.L.str.19, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_52
.LBB1_39:                               # %if.else.59
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_convolve_tool_get_type
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_41
# BB#40:                                # %if.then.62
	movabsq	$.L.str.20, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_51
.LBB1_41:                               # %if.else.63
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_smudge_tool_get_type
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_43
# BB#42:                                # %if.then.66
	movabsq	$.L.str.21, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_50
.LBB1_43:                               # %if.else.67
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dodge_burn_tool_get_type
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_45
# BB#44:                                # %if.then.70
	movabsq	$.L.str.22, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_49
.LBB1_45:                               # %if.else.71
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_ink_tool_get_type
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_47
# BB#46:                                # %if.then.74
	movabsq	$.L.str.23, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_48
.LBB1_47:                               # %if.else.75
	movabsq	$.L.str.14, %rax
	movq	%rax, -168(%rbp)
.LBB1_48:                               # %if.end.76
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.77
	jmp	.LBB1_50
.LBB1_50:                               # %if.end.78
	jmp	.LBB1_51
.LBB1_51:                               # %if.end.79
	jmp	.LBB1_52
.LBB1_52:                               # %if.end.80
	jmp	.LBB1_53
.LBB1_53:                               # %if.end.81
	jmp	.LBB1_54
.LBB1_54:                               # %if.end.82
	jmp	.LBB1_55
.LBB1_55:                               # %if.end.83
	jmp	.LBB1_56
.LBB1_56:                               # %if.end.84
	jmp	.LBB1_57
.LBB1_57:                               # %if.end.85
	jmp	.LBB1_58
.LBB1_58:                               # %if.end.86
	movq	-152(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r10
	movq	-112(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	-128(%rbp), %r14
	movq	-168(%rbp), %r15
	movq	-136(%rbp), %r12
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_tool_info_new
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	cmpl	$0, %eax
	setne	%r13b
	xorb	$-1, %r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -172(%rbp)
	movq	-160(%rbp), %rdx
	movl	-172(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movslq	-172(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-152(%rbp), %rax
	movq	528(%rax), %rdi
	movq	-160(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-48(%rbp), %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_paintbrush_tool_get_type
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_60
# BB#59:                                # %if.then.99
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	gimp_tool_info_set_standard
.LBB1_60:                               # %if.end.100
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tools_register, .Lfunc_end1-gimp_tools_register
	.cfi_endproc

	.globl	gimp_tools_exit
	.align	16, 0x90
	.type	gimp_tools_exit,@function
gimp_tools_exit:                        # @gimp_tools_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_20
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$g_free, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_list_free_full
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-8(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -24(%rbp)
.LBB2_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tools_get_tool_options_gui
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_destroy
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tools_set_tool_options_gui
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false
                                        #   in Loop: Header=BB2_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:                               # %cond.end
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB2_13
.LBB2_19:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	tool_manager_exit
.LBB2_20:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tools_exit, .Lfunc_end2-gimp_tools_exit
	.cfi_endproc

	.globl	gimp_tools_restore
	.align	16, 0x90
	.type	gimp_tools_restore,@function
gimp_tools_restore:                     # @gimp_tools_restore
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_47
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_tool_info_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movabsq	$.L.str.3, %rdi
	movq	%rax, -16(%rbp)
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_14:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	je	.LBB3_28
# BB#15:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	528(%rax), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -72(%rbp)
.LBB3_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_27
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	528(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB3_22
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	112(%rax), %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	528(%rcx), %rdi
	movq	-88(%rbp), %rsi
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %r8d
	subl	$1, %r8d
	cmpl	%r8d, %edx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	jge	.LBB3_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %cond.false
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB3_21:                               # %cond.end
                                        #   in Loop: Header=BB3_16 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_container_reorder
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB3_22:                               # %if.end.46
                                        #   in Loop: Header=BB3_16 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %for.inc
                                        #   in Loop: Header=BB3_16 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_25
# BB#24:                                # %cond.true.48
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_25:                               # %cond.false.49
                                        #   in Loop: Header=BB3_16 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_26:                               # %cond.end.50
                                        #   in Loop: Header=BB3_16 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movl	-72(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB3_16
.LBB3_27:                               # %for.end
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.52
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -32(%rbp)
.LBB3_29:                               # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_35
# BB#30:                                # %for.body.56
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_reset
# BB#31:                                # %for.inc.61
                                        #   in Loop: Header=BB3_29 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_33
# BB#32:                                # %cond.true.63
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.65
                                        #   in Loop: Header=BB3_29 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_34:                               # %cond.end.66
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_29
.LBB3_35:                               # %for.end.68
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_contexts_load
	cmpl	$0, %eax
	jne	.LBB3_37
# BB#36:                                # %if.then.71
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB3_37:                               # %if.end.72
	movq	-8(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -32(%rbp)
.LBB3_38:                               # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_47
# BB#39:                                # %for.body.76
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-104(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movl	56(%rsi), %ecx
	orl	$16, %ecx
	orl	$32, %ecx
	xorl	$-1, %ecx
	andl	$1015804, %ecx          # imm = 0xF7FFC
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_context_copy_properties
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_deserialize
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_41
# BB#40:                                # %if.then.94
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	*%rax
	movq	%rax, -120(%rbp)
	jmp	.LBB3_42
.LBB3_41:                               # %if.else.97
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-104(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_gui
	movabsq	$.L.str.7, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify
	movq	-128(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-120(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$6, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_42:                               # %if.end.109
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-104(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tools_set_tool_options_gui
# BB#43:                                # %for.inc.112
                                        #   in Loop: Header=BB3_38 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_45
# BB#44:                                # %cond.true.114
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_45:                               # %cond.false.116
                                        #   in Loop: Header=BB3_38 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_46:                               # %cond.end.117
                                        #   in Loop: Header=BB3_38 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_38
.LBB3_47:                               # %for.end.119
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tools_restore, .Lfunc_end3-gimp_tools_restore
	.cfi_endproc

	.globl	gimp_tools_save
	.align	16, 0x90
	.type	gimp_tools_save,@function
gimp_tools_save:                        # @gimp_tools_save
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_28
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB4_25
# BB#13:                                # %land.lhs.true.12
	cmpl	$0, tool_options_deleted
	je	.LBB4_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	je	.LBB4_25
.LBB4_15:                               # %if.then.15
	leaq	-64(%rbp), %rsi
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_contexts_save
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#16:                                # %if.then.20
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-64(%rbp), %rdi
	callq	g_clear_error
.LBB4_17:                               # %if.end.21
	callq	gimp_tool_options_create_folder
	movq	-8(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -56(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_serialize
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false
                                        #   in Loop: Header=BB4_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB4_23
.LBB4_23:                               # %cond.end
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB4_18
.LBB4_24:                               # %for.end
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.29
	movabsq	$.L.str.3, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_27
# BB#26:                                # %if.then.32
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_27:                               # %if.end.34
	movq	-8(%rbp), %rax
	movq	528(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	callq	gimp_config_serialize_to_file
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_free
.LBB4_28:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tools_save, .Lfunc_end4-gimp_tools_save
	.cfi_endproc

	.globl	gimp_tools_clear
	.align	16, 0x90
	.type	gimp_tools_clear,@function
gimp_tools_clear:                       # @gimp_tools_clear
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_26
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_get_tool_info_iter
	movq	%rax, -32(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB5_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB5_15:                               # %land.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_16
	jmp	.LBB5_21
.LBB5_16:                               # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gimp_tool_options_delete
	movl	%eax, -36(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_20
.LBB5_20:                               # %cond.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_13
.LBB5_21:                               # %for.end
	cmpl	$0, -36(%rbp)
	je	.LBB5_23
# BB#22:                                # %if.then.20
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_contexts_clear
	movl	%eax, -36(%rbp)
.LBB5_23:                               # %if.end.22
	cmpl	$0, -36(%rbp)
	je	.LBB5_25
# BB#24:                                # %if.then.24
	movl	$1, tool_options_deleted
.LBB5_25:                               # %if.end.25
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tools_clear, .Lfunc_end5-gimp_tools_clear
	.cfi_endproc

	.globl	gimp_tools_get_default_order
	.align	16, 0x90
	.type	gimp_tools_get_default_order,@function
gimp_tools_get_default_order:           # @gimp_tools_get_default_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tools_get_default_order, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tools_get_default_order, .Lfunc_end6-gimp_tools_get_default_order
	.cfi_endproc

	.type	.Lgimp_tools_init.register_funcs,@object # @gimp_tools_init.register_funcs
	.section	.rodata,"a",@progbits
	.align	16
.Lgimp_tools_init.register_funcs:
	.quad	gimp_gegl_tool_register
	.quad	gimp_posterize_tool_register
	.quad	gimp_curves_tool_register
	.quad	gimp_levels_tool_register
	.quad	gimp_threshold_tool_register
	.quad	gimp_brightness_contrast_tool_register
	.quad	gimp_colorize_tool_register
	.quad	gimp_hue_saturation_tool_register
	.quad	gimp_color_balance_tool_register
	.quad	gimp_desaturate_tool_register
	.quad	gimp_dodge_burn_tool_register
	.quad	gimp_smudge_tool_register
	.quad	gimp_convolve_tool_register
	.quad	gimp_perspective_clone_tool_register
	.quad	gimp_heal_tool_register
	.quad	gimp_clone_tool_register
	.quad	gimp_ink_tool_register
	.quad	gimp_airbrush_tool_register
	.quad	gimp_eraser_tool_register
	.quad	gimp_paintbrush_tool_register
	.quad	gimp_pencil_tool_register
	.quad	gimp_blend_tool_register
	.quad	gimp_bucket_fill_tool_register
	.quad	gimp_text_tool_register
	.quad	gimp_cage_tool_register
	.quad	gimp_flip_tool_register
	.quad	gimp_perspective_tool_register
	.quad	gimp_shear_tool_register
	.quad	gimp_scale_tool_register
	.quad	gimp_rotate_tool_register
	.quad	gimp_crop_tool_register
	.quad	gimp_align_tool_register
	.quad	gimp_move_tool_register
	.quad	gimp_measure_tool_register
	.quad	gimp_magnify_tool_register
	.quad	gimp_color_picker_tool_register
	.quad	gimp_vector_tool_register
	.quad	gimp_foreground_select_tool_register
	.quad	gimp_iscissors_tool_register
	.quad	gimp_by_color_select_tool_register
	.quad	gimp_fuzzy_select_tool_register
	.quad	gimp_free_select_tool_register
	.quad	gimp_ellipse_select_tool_register
	.quad	gimp_rectangle_select_tool_register
	.size	.Lgimp_tools_init.register_funcs, 352

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Tools"
	.size	.L.str, 11

	.type	.L__func__.gimp_tools_init,@object # @__func__.gimp_tools_init
.L__func__.gimp_tools_init:
	.asciz	"gimp_tools_init"
	.size	.L__func__.gimp_tools_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-tools-default-order"
	.size	.L.str.2, 25

	.type	.L__func__.gimp_tools_exit,@object # @__func__.gimp_tools_exit
.L__func__.gimp_tools_exit:
	.asciz	"gimp_tools_exit"
	.size	.L__func__.gimp_tools_exit, 16

	.type	.L__func__.gimp_tools_restore,@object # @__func__.gimp_tools_restore
.L__func__.gimp_tools_restore:
	.asciz	"gimp_tools_restore"
	.size	.L__func__.gimp_tools_restore, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"toolrc"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"visible"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-options-gui-func"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"This tool has\nno options."
	.size	.L.str.7, 26

	.type	.L__func__.gimp_tools_save,@object # @__func__.gimp_tools_save
.L__func__.gimp_tools_save:
	.asciz	"gimp_tools_save"
	.size	.L__func__.gimp_tools_save, 16

	.type	tool_options_deleted,@object # @tool_options_deleted
	.local	tool_options_deleted
	.comm	tool_options_deleted,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Writing '%s'\n"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP toolrc"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"end of toolrc"
	.size	.L.str.10, 14

	.type	.L__func__.gimp_tools_clear,@object # @__func__.gimp_tools_clear
.L__func__.gimp_tools_clear:
	.asciz	"gimp_tools_clear"
	.size	.L__func__.gimp_tools_clear, 17

	.type	.L__func__.gimp_tools_get_default_order,@object # @__func__.gimp_tools_get_default_order
.L__func__.gimp_tools_get_default_order:
	.asciz	"gimp_tools_get_default_order"
	.size	.L__func__.gimp_tools_get_default_order, 29

	.type	.L__func__.gimp_tools_register,@object # @__func__.gimp_tools_register
.L__func__.gimp_tools_register:
	.asciz	"gimp_tools_register"
	.size	.L__func__.gimp_tools_register, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"g_type_is_a (tool_type, GIMP_TYPE_TOOL)"
	.size	.L.str.11, 40

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tool_options_type == G_TYPE_NONE || g_type_is_a (tool_options_type, GIMP_TYPE_TOOL_OPTIONS)"
	.size	.L.str.12, 92

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-pencil"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-paintbrush"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-eraser"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-airbrush"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-clone"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-heal"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-perspective-clone"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-convolve"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-smudge"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-dodge-burn"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-ink"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-tool-default-visible"
	.size	.L.str.24, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
