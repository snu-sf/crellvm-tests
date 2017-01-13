	.text
	.file	"menus.bc"
	.globl	menus_init
	.align	16, 0x90
	.type	menus_init,@function
menus_init:                             # @menus_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_30
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_action_factory_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_30
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, global_menu_factory
	jne	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_30
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	callq	gtk_menu_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	-48(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	menus_can_change_accels
	movabsq	$.L.str.4, %rsi
	movabsq	$menus_can_change_accels, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_menu_factory_new
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %r10
	movabsq	$.L.str.12, %r11
	movabsq	$.L.str.13, %rbx
	movabsq	$.L.str.14, %r14
	movabsq	$.L.str.15, %r15
	movabsq	$.L.str.16, %r12
	movabsq	$.L.str.17, %r13
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$.L.str.18, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$.L.str.19, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movabsq	$.L.str.20, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movabsq	$.L.str.21, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movabsq	$.L.str.22, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movabsq	$.L.str.23, %rax
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movabsq	$.L.str.24, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movabsq	$.L.str.25, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movabsq	$image_menu_setup, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movabsq	$.L.str.26, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movabsq	$.L.str.27, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movabsq	$.L.str.28, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, global_menu_factory
	movq	global_menu_factory, %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, 72(%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 80(%rsp)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, 88(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 96(%rsp)
	movq	-200(%rbp), %r12        # 8-byte Reload
	movq	%r12, 104(%rsp)
	movq	$0, 112(%rsp)
	movq	-208(%rbp), %r13        # 8-byte Reload
	movq	%r13, 120(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 136(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 152(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 160(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 168(%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 176(%rsp)
	movq	$0, 184(%rsp)
	movq	$0, 192(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %r10
	movabsq	$.L.str.13, %r11
	movabsq	$.L.str.14, %rbx
	movabsq	$.L.str.15, %r14
	movabsq	$.L.str.16, %r15
	movabsq	$.L.str.17, %r12
	movabsq	$.L.str.18, %r13
	movabsq	$.L.str.19, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movabsq	$.L.str.21, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movabsq	$.L.str.20, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movabsq	$.L.str.22, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movabsq	$.L.str.23, %rax
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	global_menu_factory, %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r11, 72(%rsp)
	movq	-288(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 80(%rsp)
	movq	-296(%rbp), %r14        # 8-byte Reload
	movq	%r14, 88(%rsp)
	movq	-312(%rbp), %r15        # 8-byte Reload
	movq	%r15, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %r10
	movabsq	$.L.str.14, %r11
	movabsq	$.L.str.15, %rbx
	movabsq	$.L.str.16, %r14
	movabsq	$.L.str.17, %r15
	movabsq	$.L.str.18, %r12
	movabsq	$.L.str.19, %r13
	movabsq	$.L.str.21, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movabsq	$.L.str.20, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movabsq	$.L.str.22, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movabsq	$.L.str.23, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movabsq	$.L.str.31, %rax
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	global_menu_factory, %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r10, 64(%rsp)
	movq	-344(%rbp), %r11        # 8-byte Reload
	movq	%r11, 72(%rsp)
	movq	-352(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 80(%rsp)
	movq	-360(%rbp), %r14        # 8-byte Reload
	movq	%r14, 88(%rsp)
	movq	-376(%rbp), %r15        # 8-byte Reload
	movq	%r15, 96(%rsp)
	movq	$0, 104(%rsp)
	movq	$0, 112(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.32, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.34, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-400(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.36, %r9
	movabsq	$.L.str.37, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-408(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.38, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.39, %r9
	movabsq	$.L.str.40, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-416(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.43, %r9
	movabsq	$.L.str.44, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-424(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.45, %rsi
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.31, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.47, %r9
	movabsq	$.L.str.48, %rdi
	movabsq	$dockable_menu_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-432(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.51, %r9
	movabsq	$.L.str.52, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-440(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.53, %rsi
	movabsq	$.L.str.54, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.55, %r9
	movabsq	$.L.str.56, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-448(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.59, %r9
	movabsq	$.L.str.60, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-456(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.61, %rsi
	movabsq	$.L.str.62, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.63, %r9
	movabsq	$.L.str.64, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-464(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.65, %rsi
	movabsq	$.L.str.66, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.67, %r9
	movabsq	$.L.str.68, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-472(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.70, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.71, %r9
	movabsq	$.L.str.72, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-480(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.73, %rsi
	movabsq	$.L.str.74, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.75, %r9
	movabsq	$.L.str.76, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-488(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.77, %rsi
	movabsq	$.L.str.78, %rdx
	movabsq	$.L.str.22, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.79, %r9
	movabsq	$.L.str.80, %rdi
	movabsq	$plug_in_menus_setup, %r10
	movq	global_menu_factory, %r11
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-496(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.81, %rsi
	movabsq	$.L.str.82, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.83, %r8
	movabsq	$.L.str.84, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.86, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.87, %r8
	movabsq	$.L.str.88, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.89, %rsi
	movabsq	$.L.str.90, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.91, %r8
	movabsq	$.L.str.92, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.94, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.95, %r8
	movabsq	$.L.str.96, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.97, %rsi
	movabsq	$.L.str.98, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.99, %r8
	movabsq	$.L.str.100, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.101, %rsi
	movabsq	$.L.str.102, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.103, %r8
	movabsq	$.L.str.104, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.105, %rsi
	movabsq	$.L.str.106, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.107, %r8
	movabsq	$.L.str.108, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.109, %rsi
	movabsq	$.L.str.110, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.111, %r8
	movabsq	$.L.str.112, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.113, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.18, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.114, %r9
	movabsq	$.L.str.115, %rdi
	movq	global_menu_factory, %r10
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.116, %rsi
	movabsq	$.L.str.13, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	global_menu_factory, %rdi
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movq	-512(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.117, %rsi
	movabsq	$.L.str.11, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.118, %r8
	movabsq	$.L.str.119, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.120, %rsi
	movabsq	$.L.str.121, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.122, %r8
	movabsq	$.L.str.123, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.124, %rsi
	movabsq	$.L.str.125, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.126, %r8
	movabsq	$.L.str.127, %r9
	movabsq	$tool_options_menu_setup, %rdi
	movq	global_menu_factory, %r10
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-520(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.128, %rsi
	movabsq	$.L.str.129, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.130, %r8
	movabsq	$.L.str.131, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.132, %rsi
	movabsq	$.L.str.133, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.134, %r8
	movabsq	$.L.str.135, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.136, %rsi
	movabsq	$.L.str.137, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.138, %r8
	movabsq	$.L.str.139, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
	movabsq	$.L.str.140, %rsi
	movabsq	$.L.str.141, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.142, %r8
	movabsq	$.L.str.143, %r9
	movq	global_menu_factory, %rdi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gimp_menu_factory_manager_register
.LBB0_30:                               # %return
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	menus_init, .Lfunc_end0-menus_init
	.cfi_endproc

	.align	16, 0x90
	.type	menus_can_change_accels,@function
menus_can_change_accels:                # @menus_can_change_accels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gdk_screen_get_default
	movq	%rax, %rdi
	callq	gtk_settings_get_for_screen
	movabsq	$.L.str.150, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movl	604(%rdi), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	menus_can_change_accels, .Lfunc_end1-menus_can_change_accels
	.cfi_endproc

	.globl	menus_exit
	.align	16, 0x90
	.type	menus_exit,@function
menus_exit:                             # @menus_exit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_18
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, global_menu_factory
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_exit, %rsi
	movabsq	$.L.str.144, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_18
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	movq	global_menu_factory, %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$menus_can_change_accels, %rax
	movq	$0, global_menu_factory
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB2_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	menus_exit, .Lfunc_end2-menus_exit
	.cfi_endproc

	.globl	menus_restore
	.align	16, 0x90
	.type	menus_restore,@function
menus_restore:                          # @menus_restore
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movabsq	$.L.str.145, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.146, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_14:                               # %if.end.15
	movq	-16(%rbp), %rdi
	callq	gtk_accel_map_load
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB3_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	menus_restore, .Lfunc_end3-menus_restore
	.cfi_endproc

	.globl	menus_save
	.align	16, 0x90
	.type	menus_save,@function
menus_save:                             # @menus_save
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
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
	movabsq	$.L__func__.menus_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpl	$0, menurc_deleted
	je	.LBB4_15
# BB#13:                                # %land.lhs.true.12
	cmpl	$0, -12(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_18
.LBB4_15:                               # %if.end.15
	movabsq	$.L.str.145, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_17
# BB#16:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.147, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_17:                               # %if.end.20
	movq	-24(%rbp), %rdi
	callq	gtk_accel_map_save
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	$0, menurc_deleted
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	menus_save, .Lfunc_end4-menus_save
	.cfi_endproc

	.globl	menus_clear
	.align	16, 0x90
	.type	menus_clear,@function
menus_clear:                            # @menus_clear
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_26
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_clear, %rsi
	movabsq	$.L.str.148, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_26
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	movabsq	$.L.str.145, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	callq	gimp_sysconf_directory
	movabsq	$.L.str.145, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_file_copy
	cmpl	$0, %eax
	je	.LBB5_20
# BB#19:                                # %if.then.23
	movl	$1, menurc_deleted
	jmp	.LBB5_25
.LBB5_20:                               # %if.else.24
	movq	-32(%rbp), %rdi
	callq	g_unlink
	cmpl	$0, %eax
	je	.LBB5_23
# BB#21:                                # %land.lhs.true.27
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB5_23
# BB#22:                                # %if.then.30
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.149, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-88(%rbp), %edx         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -44(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.38
	movl	$1, menurc_deleted
.LBB5_24:                               # %if.end.39
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.40
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	menus_clear, .Lfunc_end5-menus_clear
	.cfi_endproc

	.globl	menus_remove
	.align	16, 0x90
	.type	menus_remove,@function
menus_remove:                           # @menus_remove
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.menus_remove, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movabsq	$menus_remove_accels, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gtk_accel_map_foreach
.LBB6_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	menus_remove, .Lfunc_end6-menus_remove
	.cfi_endproc

	.align	16, 0x90
	.type	menus_remove_accels,@function
menus_remove_accels:                    # @menus_remove_accels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$1, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%r9d, %ecx
	callq	gtk_accel_map_change_entry
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	menus_remove_accels, .Lfunc_end7-menus_remove_accels
	.cfi_endproc

	.type	global_menu_factory,@object # @global_menu_factory
	.bss
	.globl	global_menu_factory
	.align	8
global_menu_factory:
	.quad	0
	.size	global_menu_factory, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Menus"
	.size	.L.str, 11

	.type	.L__func__.menus_init,@object # @__func__.menus_init
.L__func__.menus_init:
	.asciz	"menus_init"
	.size	.L__func__.menus_init, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_ACTION_FACTORY (action_factory)"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"global_menu_factory == NULL"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"notify::can-change-accels"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<Image>"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"file"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"config"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"context"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"debug"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"help"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"edit"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"select"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"view"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"image"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"drawable"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"layers"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"channels"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vectors"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tools"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dialogs"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"windows"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"quick-mask"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/image-menubar"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image-menu.xml"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/dummy-menubar"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/quick-mask-popup"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"quick-mask-menu.xml"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<Toolbox>"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"<Dock>"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"dock"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"<Layers>"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"/layers-popup"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"layers-menu.xml"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Channels>"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/channels-popup"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"channels-menu.xml"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"<Vectors>"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/vectors-popup"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"vectors-menu.xml"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"<Colormap>"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"colormap"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/colormap-popup"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"colormap-menu.xml"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"<Dockable>"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"dockable"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/dockable-popup"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"dockable-menu.xml"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"<Brushes>"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"brushes"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/brushes-popup"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"brushes-menu.xml"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"<Dynamics>"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"dynamics"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"/dynamics-popup"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"dynamics-menu.xml"
	.size	.L.str.56, 18

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<Patterns>"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"patterns"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/patterns-popup"
	.size	.L.str.59, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"patterns-menu.xml"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<Gradients>"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gradients"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/gradients-popup"
	.size	.L.str.63, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gradients-menu.xml"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"<Palettes>"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"palettes"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/palettes-popup"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"palettes-menu.xml"
	.size	.L.str.68, 18

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"<ToolPresets>"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"tool-presets"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/tool-presets-popup"
	.size	.L.str.71, 20

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"tool-presets-menu.xml"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"<Fonts>"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"fonts"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/fonts-popup"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"fonts-menu.xml"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"<Buffers>"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"buffers"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/buffers-popup"
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"buffers-menu.xml"
	.size	.L.str.80, 17

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"<Documents>"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"documents"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"/documents-popup"
	.size	.L.str.83, 17

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"documents-menu.xml"
	.size	.L.str.84, 19

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"<Templates>"
	.size	.L.str.85, 12

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"templates"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"/templates-popup"
	.size	.L.str.87, 17

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"templates-menu.xml"
	.size	.L.str.88, 19

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"<Images>"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"images"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"/images-popup"
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"images-menu.xml"
	.size	.L.str.92, 16

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"<BrushEditor>"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"brush-editor"
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"/brush-editor-popup"
	.size	.L.str.95, 20

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"brush-editor-menu.xml"
	.size	.L.str.96, 22

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"<DynamicsEditor>"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"dynamics-editor"
	.size	.L.str.98, 16

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/dynamics-editor-popup"
	.size	.L.str.99, 23

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"dynamics-editor-menu.xml"
	.size	.L.str.100, 25

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"<GradientEditor>"
	.size	.L.str.101, 17

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gradient-editor"
	.size	.L.str.102, 16

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"/gradient-editor-popup"
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gradient-editor-menu.xml"
	.size	.L.str.104, 25

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"<PaletteEditor>"
	.size	.L.str.105, 16

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"palette-editor"
	.size	.L.str.106, 15

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"/palette-editor-popup"
	.size	.L.str.107, 22

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"palette-editor-menu.xml"
	.size	.L.str.108, 24

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"<ToolPresetEditor>"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"tool-preset-editor"
	.size	.L.str.110, 19

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"/tool-preset-editor-popup"
	.size	.L.str.111, 26

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"tool-preset-editor-menu.xml"
	.size	.L.str.112, 28

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"<Selection>"
	.size	.L.str.113, 12

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"/selection-popup"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"selection-menu.xml"
	.size	.L.str.115, 19

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"<NavigationEditor>"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"<Undo>"
	.size	.L.str.117, 7

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"/undo-popup"
	.size	.L.str.118, 12

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"undo-menu.xml"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"<ErrorConsole>"
	.size	.L.str.120, 15

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"error-console"
	.size	.L.str.121, 14

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"/error-console-popup"
	.size	.L.str.122, 21

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"error-console-menu.xml"
	.size	.L.str.123, 23

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"<ToolOptions>"
	.size	.L.str.124, 14

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"tool-options"
	.size	.L.str.125, 13

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"/tool-options-popup"
	.size	.L.str.126, 20

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"tool-options-menu.xml"
	.size	.L.str.127, 22

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"<TextEditor>"
	.size	.L.str.128, 13

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"text-editor"
	.size	.L.str.129, 12

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"/text-editor-toolbar"
	.size	.L.str.130, 21

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"text-editor-toolbar.xml"
	.size	.L.str.131, 24

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"<TextTool>"
	.size	.L.str.132, 11

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"text-tool"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"/text-tool-popup"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"text-tool-menu.xml"
	.size	.L.str.135, 19

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"<CursorInfo>"
	.size	.L.str.136, 13

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"cursor-info"
	.size	.L.str.137, 12

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"/cursor-info-popup"
	.size	.L.str.138, 19

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"cursor-info-menu.xml"
	.size	.L.str.139, 21

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"<SamplePoints>"
	.size	.L.str.140, 15

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"sample-points"
	.size	.L.str.141, 14

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"/sample-points-popup"
	.size	.L.str.142, 21

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"sample-points-menu.xml"
	.size	.L.str.143, 23

	.type	.L__func__.menus_exit,@object # @__func__.menus_exit
.L__func__.menus_exit:
	.asciz	"menus_exit"
	.size	.L__func__.menus_exit, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"global_menu_factory != NULL"
	.size	.L.str.144, 28

	.type	.L__func__.menus_restore,@object # @__func__.menus_restore
.L__func__.menus_restore:
	.asciz	"menus_restore"
	.size	.L__func__.menus_restore, 14

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"menurc"
	.size	.L.str.145, 7

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.146, 14

	.type	.L__func__.menus_save,@object # @__func__.menus_save
.L__func__.menus_save:
	.asciz	"menus_save"
	.size	.L__func__.menus_save, 11

	.type	menurc_deleted,@object  # @menurc_deleted
	.local	menurc_deleted
	.comm	menurc_deleted,4,4
	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Writing '%s'\n"
	.size	.L.str.147, 14

	.type	.L__func__.menus_clear,@object # @__func__.menus_clear
.L__func__.menus_clear:
	.asciz	"menus_clear"
	.size	.L__func__.menus_clear, 12

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.148, 32

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Deleting \"%s\" failed: %s"
	.size	.L.str.149, 25

	.type	.L__func__.menus_remove,@object # @__func__.menus_remove
.L__func__.menus_remove:
	.asciz	"menus_remove"
	.size	.L__func__.menus_remove, 13

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gtk-can-change-accels"
	.size	.L.str.150, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
