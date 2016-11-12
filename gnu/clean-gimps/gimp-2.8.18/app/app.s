	.text
	.file	"app.bc"
	.globl	app_libs_init
	.align	16, 0x90
	.type	app_libs_init,@function
app_libs_init:                          # @app_libs_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	g_type_init
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gegl_get_option_group
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_option_context_add_group
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	app_libs_init, .Lfunc_end0-app_libs_init
	.cfi_endproc

	.globl	app_abort
	.align	16, 0x90
	.type	app_abort,@function
app_abort:                              # @app_abort
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
	movabsq	$.L.str, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_print
	movl	$1, %edi
	callq	app_exit
.Lfunc_end1:
	.size	app_abort, .Lfunc_end1-app_abort
	.cfi_endproc

	.globl	app_exit
	.align	16, 0x90
	.type	app_exit,@function
app_exit:                               # @app_exit
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	exit
.Lfunc_end2:
	.size	app_exit, .Lfunc_end2-app_exit
	.cfi_endproc

	.globl	app_run
	.align	16, 0x90
	.type	app_run,@function
app_run:                                # @app_run
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movl	112(%rbp), %eax
	movl	104(%rbp), %r10d
	movl	96(%rbp), %r11d
	movl	88(%rbp), %ebx
	movl	80(%rbp), %r14d
	movl	72(%rbp), %r15d
	movl	64(%rbp), %r12d
	movl	56(%rbp), %r13d
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	48(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	40(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	32(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	24(%rbp), %eax
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	16(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -96(%rbp)
	movl	%eax, -100(%rbp)
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)
	movl	%r13d, -116(%rbp)
	movl	%r12d, -120(%rbp)
	movl	%r15d, -124(%rbp)
	movl	%r14d, -128(%rbp)
	movl	%ebx, -132(%rbp)
	movl	%r11d, -136(%rbp)
	movl	%r10d, -140(%rbp)
	movl	-216(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	-124(%rbp), %r11d
	movl	-132(%rbp), %ebx
	movl	-140(%rbp), %r14d
	movl	-144(%rbp), %r15d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	callq	gimp_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	callq	errors_init
	movq	-160(%rbp), %rdi
	callq	units_init
	callq	gimp_directory
	movl	$4, %esi
	movq	%rax, %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	-120(%rbp), %edi
	callq	gimp_user_install_new
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	gimp_user_install_run
	movq	-200(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_user_install_free
.LBB3_2:                                # %if.end
	movq	-160(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_load_config
	movq	-160(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rdi
	callq	language_init
	movq	-168(%rbp), %rdi
	movl	-120(%rbp), %esi
	movl	-128(%rbp), %edx
	callq	base_init
	movl	%eax, -188(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_gegl_init
	cmpq	$0, -152(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.11
	movabsq	$app_init_update_noop, %rax
	movq	%rax, -152(%rbp)
.LBB3_4:                                # %if.end.12
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gimp_initialize
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gimp_restore
	cmpl	$0, -188(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.14
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-168(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	gimp_config_path_expand
	movabsq	$.L.str.1, %rdi
	movq	%rax, -208(%rbp)
	callq	gettext
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB3_6:                                # %if.end.17
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_rc_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_rc_set_autosave
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movabsq	$.L.str.2, %rsi
	movabsq	$app_exit_after_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	leaq	-184(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -56(%rbp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	je	.LBB3_14
# BB#7:                                 # %if.then.23
	movl	$0, -212(%rbp)
.LBB3_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-212(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-160(%rbp), %rdi
	movslq	-212(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movl	-100(%rbp), %edx
	callq	file_open_from_command_line
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB3_11:                               # %if.end.29
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB3_8
.LBB3_13:                               # %for.end
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.30
	cmpq	$0, -184(%rbp)
	je	.LBB3_16
# BB#15:                                # %if.then.32
	movq	-160(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	batch_run
.LBB3_16:                               # %if.end.33
	cmpq	$0, -184(%rbp)
	je	.LBB3_18
# BB#17:                                # %if.then.35
	movq	-160(%rbp), %rdi
	callq	gimp_threads_leave
	movq	-176(%rbp), %rdi
	callq	g_main_loop_run
	movq	-160(%rbp), %rdi
	callq	gimp_threads_enter
.LBB3_18:                               # %if.end.36
	movq	-176(%rbp), %rdi
	callq	g_main_loop_unref
	movq	-160(%rbp), %rdi
	callq	g_object_unref
	callq	gimp_debug_instances
	callq	errors_exit
	callq	gegl_exit
	callq	base_exit
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	app_run, .Lfunc_end3-app_run
	.cfi_endproc

	.align	16, 0x90
	.type	app_init_update_noop,@function
app_init_update_noop:                   # @app_init_update_noop
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	app_init_update_noop, .Lfunc_end4-app_init_update_noop
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
	movl	$.L.str.3, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_message, .Lfunc_end5-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	app_exit_after_callback,@function
app_exit_after_callback:                # @app_exit_after_callback
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$0, 56(%rdx)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.app_exit_after_callback, %rsi
	movb	$0, %al
	callq	g_print
.LBB6_2:                                # %if.end
	callq	gegl_exit
	callq	tile_swap_exit
	xorl	%edi, %edi
	callq	exit
.Lfunc_end6:
	.size	app_exit_after_callback, .Lfunc_end6-app_exit_after_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n\n"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Unable to open a test swap file.\n\nTo avoid data loss, please check the location and permissions of the swap directory defined in your Preferences (currently \"%s\")."
	.size	.L.str.1, 164

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"exit"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"EXIT: %s\n"
	.size	.L.str.4, 10

	.type	.L__func__.app_exit_after_callback,@object # @__func__.app_exit_after_callback
.L__func__.app_exit_after_callback:
	.asciz	"app_exit_after_callback"
	.size	.L__func__.app_exit_after_callback, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
