	.text
	.file	"gimphelpui.bc"
	.globl	gimp_help_enable_tooltips
	.align	16, 0x90
	.type	gimp_help_enable_tooltips,@function
gimp_help_enable_tooltips:              # @gimp_help_enable_tooltips
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
	cmpl	$0, tooltips_enable_called(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, tooltips_enable_called(%rip)
	movl	$1, tooltips_enabled(%rip)
.LBB0_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_enable_tooltips, .Lfunc_end0-gimp_help_enable_tooltips
	.cfi_endproc

	.globl	gimp_help_disable_tooltips
	.align	16, 0x90
	.type	gimp_help_disable_tooltips,@function
gimp_help_disable_tooltips:             # @gimp_help_disable_tooltips
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
	cmpl	$0, tooltips_enable_called(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, tooltips_enable_called(%rip)
	movl	$0, tooltips_enabled(%rip)
.LBB1_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_disable_tooltips, .Lfunc_end1-gimp_help_disable_tooltips
	.cfi_endproc

	.globl	gimp_standard_help_func
	.align	16, 0x90
	.type	gimp_standard_help_func,@function
gimp_standard_help_func:                # @gimp_standard_help_func
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
	movq	_gimp_standard_help_func@GOTPCREL(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_standard_help_func(%rip), %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	_gimp_standard_help_func@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB2_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_standard_help_func, .Lfunc_end2-gimp_standard_help_func
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.globl	gimp_help_connect
	.align	16, 0x90
	.type	gimp_help_connect,@function
gimp_help_connect:                      # @gimp_help_connect
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_help_connect(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_help_connect(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	cmpl	$0, gimp_help_connect.initialized(%rip)
	jne	.LBB4_19
# BB#18:                                # %if.then.18
	callq	gtk_widget_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, %rdi
	callq	gtk_binding_set_by_class@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_help_type_get_type@PLT
	movl	$65470, %esi            # imm = 0xFFBE
	xorl	%edx, %edx
	leaq	.L.str.4(%rip), %rcx
	movl	$1, %r8d
	movl	$255, %r9d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$255, (%rsp)
	movb	$0, %al
	callq	gtk_binding_entry_add_signal@PLT
	movq	-64(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_help_type_get_type@PLT
	movl	$65425, %esi            # imm = 0xFF91
	xorl	%edx, %edx
	leaq	.L.str.4(%rip), %rcx
	movl	$1, %r8d
	movl	$255, %r10d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r9
	movl	$255, (%rsp)
	movb	$0, %al
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gtk_binding_entry_add_signal@PLT
	movl	$1, gimp_help_connect.initialized(%rip)
.LBB4_19:                               # %if.end.25
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_help_set_help_data@PLT
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_help_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$256, %esi              # imm = 0x100
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_add_events@PLT
.LBB4_20:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_help_connect, .Lfunc_end4-gimp_help_connect
	.cfi_endproc

	.globl	gimp_help_set_help_data
	.align	16, 0x90
	.type	gimp_help_set_help_data,@function
gimp_help_set_help_data:                # @gimp_help_set_help_data
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_help_set_help_data(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_24
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	cmpl	$0, tooltips_enabled(%rip)
	je	.LBB5_23
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_tooltip_text@PLT
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	callq	gtk_menu_item_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB5_19:                               # %if.end.32
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.36
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_help_menu_item_set_tooltip
.LBB5_22:                               # %if.end.37
	jmp	.LBB5_23
.LBB5_23:                               # %if.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark@PLT
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_set_qdata@PLT
.LBB5_24:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_help_set_help_data, .Lfunc_end5-gimp_help_set_help_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_callback,@function
gimp_help_callback:                     # @gimp_help_callback
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB6_5
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	cmpq	$0, -32(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	callq	*%rax
.LBB6_3:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %sw.bb.5
	leaq	gimp_context_help_idle_start(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add@PLT
	movl	$1, -4(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_7
.LBB6_5:                                # %sw.default
	jmp	.LBB6_6
.LBB6_6:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB6_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_help_callback, .Lfunc_end6-gimp_help_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_menu_item_set_tooltip,@function
gimp_help_menu_item_set_tooltip:        # @gimp_help_menu_item_set_tooltip
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_menu_item_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_help_menu_item_set_tooltip(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#13:                                # %land.lhs.true.12
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.14
	leaq	.L.str.10(%rip), %rsi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_help_menu_item_query_tooltip(%rip), %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r8
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_18
.LBB7_15:                               # %if.else.16
	cmpq	$0, -16(%rbp)
	jne	.LBB7_17
# BB#16:                                # %if.then.18
	leaq	.L.str.10(%rip), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_help_menu_item_query_tooltip(%rip), %rcx
	movq	-8(%rbp), %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_17:                               # %if.end.20
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_help_menu_item_set_tooltip, .Lfunc_end7-gimp_help_menu_item_set_tooltip
	.cfi_endproc

	.globl	gimp_help_id_quark
	.align	16, 0x90
	.type	gimp_help_id_quark,@function
gimp_help_id_quark:                     # @gimp_help_id_quark
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
	cmpl	$0, gimp_help_id_quark.quark(%rip)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	.L.str.6(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, gimp_help_id_quark.quark(%rip)
.LBB8_2:                                # %if.end
	movl	gimp_help_id_quark.quark(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_help_id_quark, .Lfunc_end8-gimp_help_id_quark
	.cfi_endproc

	.globl	gimp_help_set_help_data_with_markup
	.align	16, 0x90
	.type	gimp_help_set_help_data_with_markup,@function
gimp_help_set_help_data_with_markup:    # @gimp_help_set_help_data_with_markup
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_help_set_help_data_with_markup(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_24
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	cmpl	$0, tooltips_enabled(%rip)
	je	.LBB9_23
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_tooltip_markup@PLT
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	callq	gtk_menu_item_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB9_19:                               # %if.end.32
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.36
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_help_menu_item_set_tooltip
.LBB9_22:                               # %if.end.37
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark@PLT
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_set_qdata@PLT
.LBB9_24:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_help_set_help_data_with_markup, .Lfunc_end9-gimp_help_set_help_data_with_markup
	.cfi_endproc

	.globl	gimp_context_help
	.align	16, 0x90
	.type	gimp_context_help,@function
gimp_context_help:                      # @gimp_context_help
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_context_help(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_help_callback
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_context_help, .Lfunc_end10-gimp_context_help
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_help_idle_start,@function
gimp_context_help_idle_start:           # @gimp_context_help_idle_start
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	callq	gtk_grab_get_current@PLT
	cmpq	$0, %rax
	jne	.LBB11_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_widget_get_screen@PLT
	movq	%rax, %rdi
	callq	gtk_invisible_new_for_screen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movl	$92, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movl	$1, %esi
	movl	$13056, %edx            # imm = 0x3300
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r8
	movq	%rax, %rdi
	callq	gdk_pointer_grab@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref@PLT
	cmpl	$0, -36(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_7
.LBB11_3:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_keyboard_grab@PLT
	cmpl	$0, %eax
	je	.LBB11_5
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_7
.LBB11_5:                               # %if.end.13
	movq	-24(%rbp), %rdi
	callq	gtk_grab_add@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_context_help_button_press(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_context_help_key_press(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB11_6:                               # %if.end.16
	movl	$0, -4(%rbp)
.LBB11_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_context_help_idle_start, .Lfunc_end11-gimp_context_help_idle_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_help_button_press,@function
gimp_context_help_button_press:         # @gimp_context_help_button_press
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gtk_get_event_widget@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_6
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB12_6
# BB#2:                                 # %land.lhs.true.1
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB12_6
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	gdk_display_keyboard_ungrab@PLT
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	gdk_display_pointer_ungrab@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB12_5
# BB#4:                                 # %if.then.6
	leaq	gimp_context_help_idle_show_help(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.8
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_context_help_button_press, .Lfunc_end12-gimp_context_help_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_help_key_press,@function
gimp_context_help_key_press:            # @gimp_context_help_key_press
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$65307, 28(%rdx)        # imm = 0xFF1B
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	gdk_display_keyboard_ungrab@PLT
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	callq	gdk_display_pointer_ungrab@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy@PLT
.LBB13_2:                               # %if.end
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_context_help_key_press, .Lfunc_end13-gimp_context_help_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_help_idle_show_help,@function
gimp_context_help_idle_show_help:       # @gimp_context_help_idle_show_help
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-16(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_help_get_help_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_standard_help_func@PLT
.LBB14_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_context_help_idle_show_help, .Lfunc_end14-gimp_context_help_idle_show_help
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_help_get_help_data,@function
gimp_help_get_help_data:                # @gimp_help_get_help_data
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB15_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_8
# BB#3:                                 # %if.then
	cmpq	$0, -24(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB15_5:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB15_7
# BB#6:                                 # %if.then.9
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB15_7:                               # %if.end.10
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_15
.LBB15_8:                               # %if.end.11
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_9
.LBB15_9:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_parent@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB15_1
.LBB15_10:                              # %for.end
	cmpq	$0, -24(%rbp)
	je	.LBB15_12
# BB#11:                                # %if.then.14
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB15_12:                              # %if.end.15
	cmpq	$0, -32(%rbp)
	je	.LBB15_14
# BB#13:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB15_14:                              # %if.end.18
	movq	$0, -8(%rbp)
.LBB15_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_help_get_help_data, .Lfunc_end15-gimp_help_get_help_data
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_1:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.align	16, 0x90
	.type	gimp_help_menu_item_query_tooltip,@function
gimp_help_menu_item_query_tooltip:      # @gimp_help_menu_item_query_tooltip
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	$1, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_tooltip_markup@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_tooltip_text@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB16_2:                               # %if.end
	cmpq	$0, -64(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.4
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_label_set_use_markup@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -100(%rbp)       # 4-byte Spill
	movss	-100(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	leaq	.L.str.12(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$2, %edx
	movl	$15, %ecx
	movsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes@PLT
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tooltip_set_custom@PLT
	movl	$1, -4(%rbp)
.LBB16_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_help_menu_item_query_tooltip, .Lfunc_end16-gimp_help_menu_item_query_tooltip
	.cfi_endproc

	.type	tooltips_enable_called,@object # @tooltips_enable_called
	.local	tooltips_enable_called
	.comm	tooltips_enable_called,4,4
	.type	tooltips_enabled,@object # @tooltips_enabled
	.data
	.align	4
tooltips_enabled:
	.long	1                       # 0x1
	.size	tooltips_enabled, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: you must call gimp_widgets_init() before using the help system"
	.size	.L.str, 67

	.type	.L__func__.gimp_standard_help_func,@object # @__func__.gimp_standard_help_func
.L__func__.gimp_standard_help_func:
	.asciz	"gimp_standard_help_func"
	.size	.L__func__.gimp_standard_help_func, 24

	.type	gimp_help_connect.initialized,@object # @gimp_help_connect.initialized
	.local	gimp_help_connect.initialized
	.comm	gimp_help_connect.initialized,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_help_connect,@object # @__func__.gimp_help_connect
.L__func__.gimp_help_connect:
	.asciz	"gimp_help_connect"
	.size	.L__func__.gimp_help_connect, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help_func != NULL"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"show-help"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-help-data"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_help_set_help_data,@object # @__func__.gimp_help_set_help_data
.L__func__.gimp_help_set_help_data:
	.asciz	"gimp_help_set_help_data"
	.size	.L__func__.gimp_help_set_help_data, 24

	.type	.L__func__.gimp_help_set_help_data_with_markup,@object # @__func__.gimp_help_set_help_data_with_markup
.L__func__.gimp_help_set_help_data_with_markup:
	.asciz	"gimp_help_set_help_data_with_markup"
	.size	.L__func__.gimp_help_set_help_data_with_markup, 36

	.type	.L__func__.gimp_context_help,@object # @__func__.gimp_context_help
.L__func__.gimp_context_help:
	.asciz	"gimp_context_help"
	.size	.L__func__.gimp_context_help, 18

	.type	gimp_help_id_quark.quark,@object # @gimp_help_id_quark.quark
	.local	gimp_help_id_quark.quark
	.comm	gimp_help_id_quark.quark,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-help-id"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"button-press-event"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"key-press-event"
	.size	.L.str.8, 16

	.type	.L__func__.gimp_help_menu_item_set_tooltip,@object # @__func__.gimp_help_menu_item_set_tooltip
.L__func__.gimp_help_menu_item_set_tooltip:
	.asciz	"gimp_help_menu_item_set_tooltip"
	.size	.L__func__.gimp_help_menu_item_set_tooltip, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GTK_IS_MENU_ITEM (widget)"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"has-tooltip"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"query-tooltip"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp20-libgimp"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Press F1 for more help"
	.size	.L.str.13, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
