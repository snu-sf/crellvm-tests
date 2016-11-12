	.text
	.file	"print-utils.bc"
	.globl	print_utils_key_file_load_from_rcfile
	.align	16, 0x90
	.type	print_utils_key_file_load_from_rcfile,@function
print_utils_key_file_load_from_rcfile:  # @print_utils_key_file_load_from_rcfile
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_utils_key_file_load_from_rcfile, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	callq	gimp_directory
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	callq	g_key_file_new
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_key_file_load_from_file
	cmpl	$0, %eax
	jne	.LBB0_7
# BB#6:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	g_key_file_free
	movq	$0, -24(%rbp)
.LBB0_7:                                # %if.end.5
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB0_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_utils_key_file_load_from_rcfile, .Lfunc_end0-print_utils_key_file_load_from_rcfile
	.cfi_endproc

	.globl	print_utils_key_file_load_from_parasite
	.align	16, 0x90
	.type	print_utils_key_file_load_from_parasite,@function
print_utils_key_file_load_from_parasite: # @print_utils_key_file_load_from_parasite
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
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_utils_key_file_load_from_parasite, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_get_parasite
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.LBB1_7:                                # %if.end.2
	callq	g_key_file_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_parasite_data
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	xorl	%ecx, %ecx
	leaq	-48(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_key_file_load_from_data
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	callq	g_key_file_free
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_free
	movabsq	$.L.str.2, %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rdi
	callq	g_error_free
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                # %if.end.9
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB1_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_utils_key_file_load_from_parasite, .Lfunc_end1-print_utils_key_file_load_from_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.globl	print_utils_key_file_save_as_rcfile
	.align	16, 0x90
	.type	print_utils_key_file_save_as_rcfile,@function
print_utils_key_file_save_as_rcfile:    # @print_utils_key_file_save_as_rcfile
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_utils_key_file_save_as_rcfile, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_10
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	g_key_file_to_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.3, %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB3_10
.LBB3_7:                                # %if.end.2
	callq	gimp_directory
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-48(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	g_file_set_contents
	cmpl	$0, %eax
	jne	.LBB3_9
# BB#8:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.4, %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB3_9:                                # %if.end.10
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB3_10:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print_utils_key_file_save_as_rcfile, .Lfunc_end3-print_utils_key_file_save_as_rcfile
	.cfi_endproc

	.globl	print_utils_key_file_save_as_parasite
	.align	16, 0x90
	.type	print_utils_key_file_save_as_parasite,@function
print_utils_key_file_save_as_parasite:  # @print_utils_key_file_save_as_parasite
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_utils_key_file_save_as_parasite, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_8
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	g_key_file_to_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.1
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-56(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB4_8
.LBB4_7:                                # %if.end.2
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_parasite_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	-12(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-32(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_parasite_free
.LBB4_8:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	print_utils_key_file_save_as_parasite, .Lfunc_end4-print_utils_key_file_save_as_parasite
	.cfi_endproc

	.type	.L__func__.print_utils_key_file_load_from_rcfile,@object # @__func__.print_utils_key_file_load_from_rcfile
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.print_utils_key_file_load_from_rcfile:
	.asciz	"print_utils_key_file_load_from_rcfile"
	.size	.L__func__.print_utils_key_file_load_from_rcfile, 38

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"basename != NULL"
	.size	.L.str, 17

	.type	.L__func__.print_utils_key_file_load_from_parasite,@object # @__func__.print_utils_key_file_load_from_parasite
.L__func__.print_utils_key_file_load_from_parasite:
	.asciz	"print_utils_key_file_load_from_parasite"
	.size	.L__func__.print_utils_key_file_load_from_parasite, 40

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"parasite_name != NULL"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unable to create key file from image parasite '%s': %s"
	.size	.L.str.2, 55

	.type	.L__func__.print_utils_key_file_save_as_rcfile,@object # @__func__.print_utils_key_file_save_as_rcfile
.L__func__.print_utils_key_file_save_as_rcfile:
	.asciz	"print_utils_key_file_save_as_rcfile"
	.size	.L__func__.print_utils_key_file_save_as_rcfile, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Unable to get contents of key file for '%s': %s"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unable to write settings to '%s': %s"
	.size	.L.str.4, 37

	.type	.L__func__.print_utils_key_file_save_as_parasite,@object # @__func__.print_utils_key_file_save_as_parasite
.L__func__.print_utils_key_file_save_as_parasite:
	.asciz	"print_utils_key_file_save_as_parasite"
	.size	.L__func__.print_utils_key_file_save_as_parasite, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unable to get contents of key file for parasite '%s': %s"
	.size	.L.str.5, 57


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
