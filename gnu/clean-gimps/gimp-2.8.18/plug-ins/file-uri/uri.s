	.text
	.file	"uri.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	subq	$152, %rsp
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
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	movq	$0, -48(%rbp)
	callq	uri_backend_init
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	callq	uri_backend_get_load_protocols
	cmpq	$0, %rax
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	callq	uri_backend_get_load_help
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.19, %rdx
	callq	gimp_plugin_icon_register
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	uri_backend_get_load_protocols
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdx
	callq	gimp_register_load_handler
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB0_4:                                # %if.end.8
	callq	uri_backend_get_save_protocols
	cmpq	$0, %rax
	je	.LBB0_6
# BB#5:                                 # %if.then.11
	callq	uri_backend_get_save_help
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.26, %r10
	movl	$1, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.save_args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.19, %rdx
	callq	gimp_plugin_icon_register
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	uri_backend_get_save_protocols
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdx
	callq	gimp_register_save_handler
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB0_6:                                # %if.end.16
	callq	uri_backend_shutdown
.LBB0_7:                                # %return
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$80, %rsp
	movabsq	$.L.str.12, %rax
	movl	$1, %r9d
	leaq	-64(%rbp), %r10
	movabsq	$run.values, %r11
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%r11, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	movl	%r9d, %esi
	movq	%r10, %rcx
	callq	uri_backend_init
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#1:                                 # %if.then
	cmpq	$0, -64(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_3:                                # %if.end
	jmp	.LBB1_18
.LBB1_4:                                # %if.end.3
	movl	$1, %edi
	callq	gimp_plugin_set_pdb_error_handler
	movq	-8(%rbp), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#5:                                 # %land.lhs.true
	callq	uri_backend_get_load_protocols
	cmpq	$0, %rax
	je	.LBB1_9
# BB#6:                                 # %if.then.9
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$3, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
.LBB1_8:                                # %if.end.14
	jmp	.LBB1_14
.LBB1_9:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#10:                                # %land.lhs.true.17
	callq	uri_backend_get_save_protocols
	cmpq	$0, %rax
	je	.LBB1_12
# BB#11:                                # %if.then.20
	leaq	-64(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	movq	-24(%rbp), %rax
	movl	88(%rax), %edx
	movl	-44(%rbp), %ecx
	callq	save_image
	movl	%eax, -48(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.31
	movl	$1, -48(%rbp)
.LBB1_13:                               # %if.end.32
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.33
	callq	uri_backend_shutdown
	cmpl	$3, -48(%rbp)
	je	.LBB1_17
# BB#15:                                # %land.lhs.true.35
	cmpq	$0, -64(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.37
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_17:                               # %if.end.39
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_message, .Lfunc_end3-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	uri_backend_map_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, -52(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	get_temp_name
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	uri_backend_load_image
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	movl	$-1, -4(%rbp)
	jmp	.LBB4_15
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.5
	movl	-20(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_file_load
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.LBB4_11
# BB#6:                                 # %if.then.7
	cmpl	$0, -52(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -40(%rbp)
	je	.LBB4_9
.LBB4_8:                                # %if.then.10
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.12
	movabsq	$.L.str.20, %rsi
	movl	-36(%rbp), %edi
	callq	gimp_image_set_filename
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_10:                               # %if.end.14
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_get_pdb_error
	movl	$24, %edx
	movabsq	$.L.str.13, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB4_12:                               # %if.end.18
	cmpl	$0, -52(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.20
	movq	-48(%rbp), %rdi
	callq	g_unlink
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB4_14:                               # %if.end.22
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_image, .Lfunc_end4-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	uri_backend_map_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -52(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	get_temp_name
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %if.end
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	gimp_file_save
	cmpl	$0, %eax
	je	.LBB5_13
# BB#4:                                 # %if.then.4
	cmpl	$0, -52(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.6
	movl	$3, -36(%rbp)
	jmp	.LBB5_12
.LBB5_6:                                # %if.else.7
	movq	-48(%rbp), %rdi
	callq	valid_file
	cmpl	$0, %eax
	je	.LBB5_10
# BB#7:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	uri_backend_save_image
	cmpl	$0, %eax
	je	.LBB5_9
# BB#8:                                 # %if.then.13
	movl	$3, -36(%rbp)
.LBB5_9:                                # %if.end.14
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.15
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.28, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB5_11:                               # %if.end.19
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.21
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_get_pdb_error
	movl	$24, %edx
	movabsq	$.L.str.13, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB5_14:                               # %if.end.24
	cmpl	$0, -52(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	g_unlink
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB5_16:                               # %if.end.28
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	get_temp_name,@function
get_temp_name:                          # @get_temp_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_9
# BB#3:                                 # %if.then.2
	movl	$46, %esi
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_8
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB6_8
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gimp_temp_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB6_7:                                # %if.end.11
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.12
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB6_9:                                # %if.end.13
	cmpq	$0, -32(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.15
	movabsq	$.L.str.27, %rdi
	callq	gimp_temp_name
	movq	%rax, -32(%rbp)
.LBB6_11:                               # %if.end.17
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_temp_name, .Lfunc_end6-get_temp_name
	.cfi_endproc

	.align	16, 0x90
	.type	valid_file,@function
valid_file:                             # @valid_file
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
	subq	$160, %rsp
	leaq	-152(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stat
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB7_2
# BB#1:                                 # %land.rhs
	cmpq	$0, -104(%rbp)
	setg	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB7_2:                                # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	valid_file, .Lfunc_end7-valid_file
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.11
	.size	query.save_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"file-uri"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file-uri-load"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"loads files given an URI"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1995-2008"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"URI"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-web"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-uri-save"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"saves files given an URI"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Michael Natterer, Sven Neumann"
	.size	.L.str.23, 31

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Michael Natterer"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"2005-2008"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.26, 22

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"xxx"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Failed to save to temporary file '%s'"
	.size	.L.str.28, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
