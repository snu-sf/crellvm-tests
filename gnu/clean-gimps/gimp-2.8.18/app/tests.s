	.text
	.file	"tests.bc"
	.globl	gimp_init_for_testing
	.align	16, 0x90
	.type	gimp_init_for_testing,@function
gimp_init_for_testing:                  # @gimp_init_for_testing
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
	callq	gimp_log_init
	movabsq	$.L.str, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	$1, %eax
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gimp_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	units_init
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_load_config
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	base_init
	movabsq	$gimp_status_func_dummy, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gimp_initialize
	movabsq	$gimp_status_func_dummy, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_restore
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_init_for_testing, .Lfunc_end0-gimp_init_for_testing
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_status_func_dummy,@function
gimp_status_func_dummy:                 # @gimp_status_func_dummy
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_status_func_dummy, .Lfunc_end1-gimp_status_func_dummy
	.cfi_endproc

	.globl	gimp_test_run_temp_mainloop
	.align	16, 0x90
	.type	gimp_test_run_temp_mainloop,@function
gimp_test_run_temp_mainloop:            # @gimp_test_run_temp_mainloop
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_main_loop_new
	movabsq	$gimp_tests_quit_mainloop, %rcx
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_main_loop_run
	movq	-16(%rbp), %rdi
	callq	g_main_loop_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_test_run_temp_mainloop, .Lfunc_end2-gimp_test_run_temp_mainloop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tests_quit_mainloop,@function
gimp_tests_quit_mainloop:               # @gimp_tests_quit_mainloop
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_main_loop_quit
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tests_quit_mainloop, .Lfunc_end3-gimp_tests_quit_mainloop
	.cfi_endproc

	.globl	gimp_test_run_mainloop_until_idle
	.align	16, 0x90
	.type	gimp_test_run_mainloop_until_idle,@function
gimp_test_run_mainloop_until_idle:      # @gimp_test_run_mainloop_until_idle
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movabsq	$gimp_tests_quit_mainloop, %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	g_main_loop_run
	movq	-8(%rbp), %rdi
	callq	g_main_loop_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_test_run_mainloop_until_idle, .Lfunc_end4-gimp_test_run_mainloop_until_idle
	.cfi_endproc

	.globl	gimp_test_bail_if_no_display
	.align	16, 0x90
	.type	gimp_test_bail_if_no_display,@function
gimp_test_bail_if_no_display:           # @gimp_test_bail_if_no_display
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
	movabsq	$.L.str.1, %rdi
	callq	g_getenv
	cmpq	$0, %rax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_message
	xorl	%edi, %edi
	callq	exit
.LBB5_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_test_bail_if_no_display, .Lfunc_end5-gimp_test_bail_if_no_display
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_message, .Lfunc_end6-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unit Tested GIMP"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DISPLAY"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"No DISPLAY set, not running UI tests\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp"
	.size	.L.str.3, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
