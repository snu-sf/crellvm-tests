	.text
	.file	"gimpplugindebug.bc"
	.globl	gimp_plug_in_debug_new
	.align	16, 0x90
	.type	gimp_plug_in_debug_new,@function
gimp_plug_in_debug_new:                 # @gimp_plug_in_debug_new
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
	movabsq	$.L.str, %rdi
	movq	$0, -56(%rbp)
	callq	g_getenv
	movabsq	$.L.str.1, %rdi
	movq	%rax, -24(%rbp)
	callq	g_getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_9
.LBB0_3:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdi
	callq	g_shell_parse_argv
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.5
	movabsq	$.L.str.2, %rdi
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	movq	-56(%rbp), %rdi
	callq	g_error_free
	movq	$0, -8(%rbp)
	jmp	.LBB0_9
.LBB0_5:                                # %if.end.6
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movl	$44, %esi
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_7
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movabsq	$gimp_debug_wrap_keys, %rsi
	movl	$4, %edx
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_parse_debug_string
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	$4, 8(%rax)
.LBB0_8:                                # %if.end.17
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_debug_new, .Lfunc_end0-gimp_plug_in_debug_new
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.globl	gimp_plug_in_debug_free
	.align	16, 0x90
	.type	gimp_plug_in_debug_free,@function
gimp_plug_in_debug_free:                # @gimp_plug_in_debug_free
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_debug_free, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_11
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB2_7:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_9
# BB#8:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_strfreev
.LBB2_9:                                # %if.end.7
	jmp	.LBB2_10
.LBB2_10:                               # %do.body.8
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB2_11:                               # %do.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_debug_free, .Lfunc_end2-gimp_plug_in_debug_free
	.cfi_endproc

	.globl	gimp_plug_in_debug_argv
	.align	16, 0x90
	.type	gimp_plug_in_debug_argv,@function
gimp_plug_in_debug_argv:                # @gimp_plug_in_debug_argv
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_debug_argv, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_debug_argv, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_plug_in_debug_argv, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	movq	-24(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	andl	-28(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB3_17
# BB#16:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_18
.LBB3_17:                               # %if.then.16
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_18:                               # %if.end.17
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$8, %edi
	callq	g_ptr_array_sized_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_ptr_array_add
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_19
.LBB3_22:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_23:                               # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_26
# BB#24:                                # %for.body.23
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_ptr_array_add
# BB#25:                                # %for.inc.24
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_23
.LBB3_26:                               # %for.end.26
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	g_ptr_array_add
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	g_ptr_array_free
	movq	%rax, -8(%rbp)
.LBB3_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_debug_argv, .Lfunc_end3-gimp_plug_in_debug_argv
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_PLUGIN_DEBUG_WRAP"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_PLUGIN_DEBUG_WRAPPER"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unable to parse debug wrapper: \"%s\"\n%s"
	.size	.L.str.2, 39

	.type	gimp_debug_wrap_keys,@object # @gimp_debug_wrap_keys
	.section	.rodata,"a",@progbits
	.align	16
gimp_debug_wrap_keys:
	.quad	.L.str.7
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.size	gimp_debug_wrap_keys, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_plug_in_debug_free,@object # @__func__.gimp_plug_in_debug_free
.L__func__.gimp_plug_in_debug_free:
	.asciz	"gimp_plug_in_debug_free"
	.size	.L__func__.gimp_plug_in_debug_free, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"debug != NULL"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_plug_in_debug_argv,@object # @__func__.gimp_plug_in_debug_argv
.L__func__.gimp_plug_in_debug_argv:
	.asciz	"gimp_plug_in_debug_argv"
	.size	.L__func__.gimp_plug_in_debug_argv, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"args != NULL"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"query"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"init"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"run"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"on"
	.size	.L.str.10, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
