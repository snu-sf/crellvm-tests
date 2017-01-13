	.text
	.file	"errors.bc"
	.globl	errors_init
	.align	16, 0x90
	.type	errors_init,@function
errors_init:                            # @errors_init
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.errors_init, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.errors_init, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, full_prog_name
	jne	.LBB0_20
# BB#19:                                # %if.then.19
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.errors_init, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_21:                               # %if.end.21
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.22
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, the_errors_gimp
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, use_debug_handler
	movl	-24(%rbp), %eax
	movl	%eax, stack_trace_mode
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, full_prog_name
	movl	$0, -28(%rbp)
.LBB0_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$20, %rax
	jae	.LBB0_26
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$32, %esi
	movabsq	$gimp_message_log_func, %rdx
	movslq	-28(%rbp), %rax
	movq	errors_init.log_domains(,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	g_log_set_handler
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_23
.LBB0_26:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$6, %esi
	movabsq	$gimp_error_log_func, %rdx
	movq	-8(%rbp), %rcx
	callq	g_log_set_handler
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB0_27:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	errors_init, .Lfunc_end0-errors_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_log_func,@function
gimp_message_log_func:                  # @gimp_message_log_func
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	callq	gimp_show_message
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	full_prog_name, %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.25, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB1_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_message_log_func, .Lfunc_end1-gimp_message_log_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_error_log_func,@function
gimp_error_log_func:                    # @gimp_error_log_func
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_fatal_error
.Lfunc_end2:
	.size	gimp_error_log_func, .Lfunc_end2-gimp_error_log_func
	.cfi_endproc

	.globl	errors_exit
	.align	16, 0x90
	.type	errors_exit,@function
errors_exit:                            # @errors_exit
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
	movq	$0, the_errors_gimp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	errors_exit, .Lfunc_end3-errors_exit
	.cfi_endproc

	.globl	gimp_fatal_error
	.align	16, 0x90
	.type	gimp_fatal_error,@function
gimp_fatal_error:                       # @gimp_fatal_error
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
	movabsq	$.L.str.23, %rax
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_eek
.Lfunc_end4:
	.size	gimp_fatal_error, .Lfunc_end4-gimp_fatal_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_eek,@function
gimp_eek:                               # @gimp_eek
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	full_prog_name, %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.26, %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	cmpl	$0, -20(%rbp)
	je	.LBB5_9
# BB#1:                                 # %if.then
	movl	stack_trace_mode(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_10
.LBB5_10:                               # %if.then
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_11
.LBB5_11:                               # %if.then
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_7
.LBB5_2:                                # %sw.bb
	jmp	.LBB5_8
.LBB5_3:                                # %sw.bb.1
	leaq	-152(%rbp), %rdi
	callq	sigemptyset
	movl	$2, %edi
	leaq	-152(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	sigprocmask
	cmpq	$0, the_errors_gimp
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB5_5
# BB#4:                                 # %if.then.5
	movq	the_errors_gimp, %rdi
	callq	gimp_gui_ungrab
.LBB5_5:                                # %if.end
	movq	full_prog_name, %rdi
	callq	g_on_error_query
	jmp	.LBB5_8
.LBB5_6:                                # %sw.bb.6
	leaq	-280(%rbp), %rdi
	callq	sigemptyset
	movl	$2, %edi
	leaq	-280(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	sigprocmask
	movq	full_prog_name, %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_on_error_stack_trace
	jmp	.LBB5_8
.LBB5_7:                                # %sw.default
	jmp	.LBB5_8
.LBB5_8:                                # %sw.epilog
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.10
	movl	$1, %edi
	callq	exit
.Lfunc_end5:
	.size	gimp_eek, .Lfunc_end5-gimp_eek
	.cfi_endproc

	.globl	gimp_terminate
	.align	16, 0x90
	.type	gimp_terminate,@function
gimp_terminate:                         # @gimp_terminate
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
	subq	$16, %rsp
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	use_debug_handler, %edx
	movq	%rax, %rdi
	callq	gimp_eek
.Lfunc_end6:
	.size	gimp_terminate, .Lfunc_end6-gimp_terminate
	.cfi_endproc

	.type	errors_init.log_domains,@object # @errors_init.log_domains
	.section	.rodata,"a",@progbits
	.align	16
errors_init.log_domains:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.size	errors_init.log_domains, 160

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Actions"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Base"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-Composite"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Config"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-Core"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Gimp-Dialogs"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gimp-Display"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Gimp-File"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Gimp-GUI"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Gimp-Menus"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Gimp-PDB"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gimp-Paint"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Gimp-Paint-Funcs"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Gimp-Text"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Gimp-Tools"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Gimp-Vectors"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Gimp-Widgets"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Gimp-XCF"
	.size	.L.str.19, 9

	.type	.L__func__.errors_init,@object # @__func__.errors_init
.L__func__.errors_init:
	.asciz	"errors_init"
	.size	.L__func__.errors_init, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_full_prog_name != NULL"
	.size	.L.str.21, 24

	.type	full_prog_name,@object  # @full_prog_name
	.local	full_prog_name
	.comm	full_prog_name,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"full_prog_name == NULL"
	.size	.L.str.22, 23

	.type	the_errors_gimp,@object # @the_errors_gimp
	.local	the_errors_gimp
	.comm	the_errors_gimp,8,8
	.type	use_debug_handler,@object # @use_debug_handler
	.local	use_debug_handler
	.comm	use_debug_handler,4,4
	.type	stack_trace_mode,@object # @stack_trace_mode
	.data
	.align	4
stack_trace_mode:
	.long	1                       # 0x1
	.size	stack_trace_mode, 4

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"fatal error"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"terminated"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s: %s\n\n"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s: %s: %s\n"
	.size	.L.str.26, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
