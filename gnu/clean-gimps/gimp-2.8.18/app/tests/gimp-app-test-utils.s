	.text
	.file	"gimp-app-test-utils.bc"
	.globl	gimp_test_utils_set_env_to_subpath
	.align	16, 0x90
	.type	gimp_test_utils_set_env_to_subpath,@function
gimp_test_utils_set_env_to_subpath:     # @gimp_test_utils_set_env_to_subpath
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
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	g_get_home_dir
	movabsq	$.L.str, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_printerr
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_setenv
	movq	-40(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_test_utils_set_env_to_subpath, .Lfunc_end0-gimp_test_utils_set_env_to_subpath
	.cfi_endproc

	.globl	gimp_test_utils_set_gimp2_directory
	.align	16, 0x90
	.type	gimp_test_utils_set_gimp2_directory,@function
gimp_test_utils_set_gimp2_directory:    # @gimp_test_utils_set_gimp2_directory
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
	movabsq	$.L.str.1, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_test_utils_set_env_to_subpath
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_test_utils_set_gimp2_directory, .Lfunc_end1-gimp_test_utils_set_gimp2_directory
	.cfi_endproc

	.globl	gimp_test_utils_setup_menus_dir
	.align	16, 0x90
	.type	gimp_test_utils_setup_menus_dir,@function
gimp_test_utils_setup_menus_dir:        # @gimp_test_utils_setup_menus_dir
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	callq	gimp_test_utils_set_env_to_subpath
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_test_utils_setup_menus_dir, .Lfunc_end2-gimp_test_utils_setup_menus_dir
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_test_utils_create_image
	.align	16, 0x90
	.type	gimp_test_utils_create_image,@function
gimp_test_utils_create_image:           # @gimp_test_utils_create_image
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
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_image_new
	movl	$1, %ecx
	movabsq	$.L.str.5, %r8
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_layer_new
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	gimp_image_add_layer
	xorl	%edx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_create_display
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_test_utils_create_image, .Lfunc_end3-gimp_test_utils_create_image
	.cfi_endproc

	.globl	gimp_test_utils_synthesize_key_event
	.align	16, 0x90
	.type	gimp_test_utils_synthesize_key_event,@function
gimp_test_utils_synthesize_key_event:   # @gimp_test_utils_synthesize_key_event
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	movl	$8, %r9d
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	movl	-16(%rbp), %edx         # 4-byte Reload
	callq	gdk_test_simulate_key
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_window
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	movl	$9, %r9d
	movl	-12(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	gdk_test_simulate_key
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_test_utils_synthesize_key_event, .Lfunc_end4-gimp_test_utils_synthesize_key_event
	.cfi_endproc

	.globl	gimp_test_utils_get_ui_manager
	.align	16, 0x90
	.type	gimp_test_utils_get_ui_manager,@function
gimp_test_utils_get_ui_manager:         # @gimp_test_utils_get_ui_manager
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_empty_display
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_test_utils_get_ui_manager, .Lfunc_end5-gimp_test_utils_get_ui_manager
	.cfi_endproc

	.globl	gimp_test_utils_create_image_from_dalog
	.align	16, 0x90
	.type	gimp_test_utils_create_image_from_dalog,@function
gimp_test_utils_create_image_from_dalog: # @gimp_test_utils_create_image_from_dalog
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_get_image_iter
	movq	%rax, %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)
	movl	$-1, -48(%rbp)
	movl	$100, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_test_utils_get_ui_manager
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_test_run_mainloop_until_idle
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gdk_screen_get_default
	movabsq	$.L.str.8, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_raise
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_focus
	movq	%rax, %rdi
	callq	gtk_widget_activate
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB6_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$20000, %eax            # imm = 0x4E20
	movl	%eax, %edi
	callq	g_usleep
	callq	gimp_test_run_mainloop_until_idle
	movq	-24(%rbp), %rdi
	callq	gimp_get_image_iter
	movq	%rax, %rdi
	callq	g_list_length
	movl	%eax, -48(%rbp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$-1, %edx
	movl	%edx, -52(%rbp)
	cmpl	$0, %eax
	movb	%cl, -125(%rbp)         # 1-byte Spill
	je	.LBB6_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	setne	%dl
	movb	%dl, -125(%rbp)         # 1-byte Spill
.LBB6_4:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-125(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_1
# BB#5:                                 # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.13
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jne	.LBB6_8
# BB#7:                                 # %if.then
	jmp	.LBB6_9
.LBB6_8:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.9, %rdx
	movl	$252, %eax
	movabsq	$.L__func__.gimp_test_utils_create_image_from_dalog, %rsi
	movabsq	$.L.str.10, %rdi
	movq	-72(%rbp), %r8
	movq	%r8, -96(%rbp)
	fildll	-96(%rbp)
	movq	-80(%rbp), %r8
	movq	%r8, -88(%rbp)
	fildll	-88(%rbp)
	movq	%rsp, %r8
	fstpt	16(%r8)
	fstpt	(%r8)
	movl	$105, 32(%r8)
	movl	$.L.str.9, %r9d
	movl	%r9d, %r8d
	movl	$.L__func__.gimp_test_utils_create_image_from_dalog, %r9d
	movl	%r9d, %r10d
	movl	$.L.str.10, %r9d
	movl	%r9d, %r11d
	movl	$.L.str.11, %r9d
                                        # kill: R9<def> R9D<kill>
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movl	$252, %ebx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%ebx, %edx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	%r11, %r8
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_assertion_message_cmpnum
.LBB6_9:                                # %if.end
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.21
	movq	-24(%rbp), %rdi
	callq	gimp_get_image_iter
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_test_utils_create_image_from_dalog, .Lfunc_end6-gimp_test_utils_create_image_from_dalog
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*\n*  The env var %s is not set, you are probably running\n*  in a debugger. Set it manually, e.g.:\n*\n*    set env %s=%s/source/gimp\n*\n"
	.size	.L.str, 134

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP2_DIRECTORY"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_TESTING_ABS_TOP_SRCDIR"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menus"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_TESTING_MENUS_DIR"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"layer1"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"image-new"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-image-new-dialog"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-app-test-utils.c"
	.size	.L.str.9, 22

	.type	.L__func__.gimp_test_utils_create_image_from_dalog,@object # @__func__.gimp_test_utils_create_image_from_dalog
.L__func__.gimp_test_utils_create_image_from_dalog:
	.asciz	"gimp_test_utils_create_image_from_dalog"
	.size	.L__func__.gimp_test_utils_create_image_from_dalog, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"n_images == n_initial_images + 1"
	.size	.L.str.10, 33

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"=="
	.size	.L.str.11, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
