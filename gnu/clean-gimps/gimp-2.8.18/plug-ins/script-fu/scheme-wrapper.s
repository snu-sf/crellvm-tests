	.text
	.file	"scheme-wrapper.bc"
	.globl	tinyscheme_init
	.align	16, 0x90
	.type	tinyscheme_init,@function
tinyscheme_init:                        # @tinyscheme_init
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
	subq	$48, %rsp
	movabsq	$sc, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, %rdi
	callq	scheme_init
	cmpl	$0, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB0_15
.LBB0_2:                                # %if.end
	movabsq	$sc, %rdi
	movq	stdin, %rsi
	callq	scheme_set_input_port_file
	movabsq	$sc, %rdi
	movq	stdout, %rsi
	callq	scheme_set_output_port_file
	movabsq	$ts_stdout_output_func, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	ts_register_output_func
	movabsq	$sc, %rdi
	callq	init_ftx
	movabsq	$sc, %rdi
	callq	script_fu_regex_init
	movabsq	$sc, %rdi
	callq	ts_init_constants
	movabsq	$sc, %rdi
	movl	-12(%rbp), %esi
	callq	ts_init_procedures
	cmpq	$0, -8(%rbp)
	je	.LBB0_15
# BB#3:                                 # %if.then.2
	movl	$256, %esi              # imm = 0x100
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_path_parse
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movabsq	$.L.str.1, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	ts_load_file
	cmpl	$0, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.2, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	ts_load_file
	movabsq	$.L.str.3, %rsi
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	ts_load_file
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB0_12
.LBB0_7:                                # %if.end.12
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               # %cond.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB0_4
.LBB0_12:                               # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.14
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB0_14:                               # %if.end.15
	movq	-24(%rbp), %rdi
	callq	gimp_path_free
.LBB0_15:                               # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tinyscheme_init, .Lfunc_end0-tinyscheme_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_message, .Lfunc_end1-g_message
	.cfi_endproc

	.globl	ts_stdout_output_func
	.align	16, 0x90
	.type	ts_stdout_output_func,@function
ts_stdout_output_func:                  # @ts_stdout_output_func
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB2_2:                                # %if.end
	movabsq	$.L.str.9, %rsi
	movq	stdout, %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movq	stdout, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -40(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ts_stdout_output_func, .Lfunc_end2-ts_stdout_output_func
	.cfi_endproc

	.align	16, 0x90
	.type	ts_init_constants,@function
ts_init_constants:                      # @ts_init_constants
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
	subq	$624, %rsp              # imm = 0x270
	movabsq	$.L.str.10, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	1048(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	callq	gimp_directory
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%r8, -176(%rbp)         # 8-byte Spill
	callq	gimp_data_directory
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-168(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-136(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%r8, -224(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_directory
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-216(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-184(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%r8, -272(%rbp)         # 8-byte Spill
	callq	gimp_locale_directory
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-264(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-232(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%r8, -320(%rbp)         # 8-byte Spill
	callq	gimp_sysconf_directory
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-312(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-280(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	leaq	-20(%rbp), %rdi
	callq	gimp_enums_get_type_names
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_from_name
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB3_3:                                # %for.cond.57
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_8
# BB#4:                                 # %for.body.58
                                        #   in Loop: Header=BB3_3 Depth=2
	movabsq	$.L.str.15, %rsi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	convert_string
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	1048(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	-64(%rbp), %r9
	movslq	(%r9), %r9
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-344(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
# BB#9:                                 # %for.inc.75
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_10:                               # %for.end.76
	movl	$0, -24(%rbp)
.LBB3_11:                               # %for.cond.77
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$script_constants, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_14
# BB#12:                                # %for.body.82
                                        #   in Loop: Header=BB3_11 Depth=1
	movabsq	$script_constants, %rax
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	callq	*%rcx
	movabsq	$script_constants, %rcx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	1048(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r8
	movq	5608(%r8), %r8
	movq	32(%r8), %r8
	movq	-8(%rbp), %r9
	movslq	-24(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %rcx
	movslq	8(%rcx), %rcx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-384(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
# BB#13:                                # %for.inc.101
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_11
.LBB3_14:                               # %for.end.103
	movabsq	$.L.str.16, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.17, %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r8
	movq	5608(%r8), %r8
	movq	64(%r8), %r8
	movq	-8(%rbp), %r9
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-408(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.19, %rsi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r8
	movq	5608(%r8), %r8
	movq	64(%r8), %r8
	movq	-8(%rbp), %r9
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-440(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movq	%r8, -496(%rbp)         # 8-byte Spill
	callq	gimp_directory
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-488(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-456(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	%r8, -544(%rbp)         # 8-byte Spill
	callq	gimp_data_directory
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-536(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	-528(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-504(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	%r8, -592(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_directory
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-584(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-552(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movl	$0, -24(%rbp)
.LBB3_15:                               # %for.cond.162
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$old_constants, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %for.body.168
                                        #   in Loop: Header=BB3_15 Depth=1
	movabsq	$old_constants, %rax
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	callq	*%rcx
	movabsq	$old_constants, %rcx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	1048(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %r8
	movq	5608(%r8), %r8
	movq	32(%r8), %r8
	movq	-8(%rbp), %r9
	movslq	-24(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %rcx
	movslq	8(%rcx), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	-608(%rbp), %rsi        # 8-byte Reload
	movq	-616(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-624(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
# BB#17:                                # %for.inc.187
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_15
.LBB3_18:                               # %for.end.189
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ts_init_constants, .Lfunc_end3-ts_init_constants
	.cfi_endproc

	.align	16, 0x90
	.type	ts_init_procedures,@function
ts_init_procedures:                     # @ts_init_procedures
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movabsq	$.L.str.117, %rax
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-152(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$script_fu_nil_call, %rcx
	movabsq	$script_fu_register_call, %rsi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	1048(%rdx), %rdx
	movq	-64(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	5608(%r9), %r9
	movq	96(%r9), %r9
	movq	-32(%rbp), %r10
	cmpl	$0, -36(%rbp)
	cmovneq	%rsi, %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	*%r9
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-184(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.118, %rsi
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$script_fu_nil_call, %rcx
	movabsq	$script_fu_menu_register_call, %rdx
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	1048(%rsi), %rsi
	movq	-64(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	5608(%r9), %r9
	movq	96(%r9), %r9
	movq	-32(%rbp), %r10
	cmpl	$0, -36(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	*%r9
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-216(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.119, %rsi
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$script_fu_quit_call, %rsi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	5608(%r8), %r8
	movq	96(%r8), %r8
	movq	-32(%rbp), %r9
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-240(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.120, %rsi
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movabsq	$script_fu_marshal_procedure_call, %rsi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	5608(%r8), %r8
	movq	96(%r8), %r8
	movq	-32(%rbp), %r9
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	*%r8
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-272(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	432(%rax), %rax
	movq	-64(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.121, %rax
	leaq	-52(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	%rax, %r9
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-288(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_procedural_db_query
	movl	$0, -56(%rbp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	leaq	-108(%rbp), %rax
	leaq	-112(%rbp), %rdi
	leaq	-116(%rbp), %r10
	leaq	-128(%rbp), %r11
	leaq	-136(%rbp), %rbx
	movslq	-56(%rbp), %r14
	movq	-48(%rbp), %r15
	movq	(%r15,%r14,8), %r14
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	callq	gimp_procedural_db_proc_info
	cmpl	$0, %eax
	je	.LBB4_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -112(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.44
                                        #   in Loop: Header=BB4_1 Depth=1
	movabsq	$.L.str.122, %rdi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -144(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movabsq	$.L.str.123, %rdi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -144(%rbp)
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	448(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	*%rax
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	movl	-112(%rbp), %esi
	callq	gimp_destroy_paramdefs
	movq	-136(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_paramdefs
.LBB4_7:                                # %if.end.56
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB4_1
.LBB4_9:                                # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ts_init_procedures, .Lfunc_end4-ts_init_procedures
	.cfi_endproc

	.align	16, 0x90
	.type	ts_load_file,@function
ts_load_file:                           # @ts_load_file
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movabsq	$.L.str.148, %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$sc, %rdi
	movq	-40(%rbp), %rsi
	callq	scheme_load_file
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ts_load_file, .Lfunc_end5-ts_load_file
	.cfi_endproc

	.globl	ts_set_run_mode
	.align	16, 0x90
	.type	ts_set_run_mode,@function
ts_set_run_mode:                        # @ts_set_run_mode
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
	subq	$48, %rsp
	movabsq	$sc, %rax
	movabsq	$.L.str.5, %rsi
	movl	%edi, -4(%rbp)
	movq	sc+5608, %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	movabsq	$sc, %rdi
	movq	%rax, -16(%rbp)
	movq	sc+5608, %rax
	movq	(%rax), %rax
	movq	sc+1048, %rsi
	movq	-16(%rbp), %rdx
	movq	sc+5608, %rcx
	movq	32(%rcx), %rcx
	movl	-4(%rbp), %r8d
	movl	%r8d, %r9d
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	*%rcx
	movabsq	$sc, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	-40(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	sc+5608, %rax
	movq	432(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ts_set_run_mode, .Lfunc_end6-ts_set_run_mode
	.cfi_endproc

	.globl	ts_set_print_flag
	.align	16, 0x90
	.type	ts_set_print_flag,@function
ts_set_print_flag:                      # @ts_set_print_flag
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, sc+876
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ts_set_print_flag, .Lfunc_end7-ts_set_print_flag
	.cfi_endproc

	.globl	ts_print_welcome
	.align	16, 0x90
	.type	ts_print_welcome,@function
ts_print_welcome:                       # @ts_print_welcome
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
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	ts_output_string
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	ts_output_string
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ts_print_welcome, .Lfunc_end8-ts_print_welcome
	.cfi_endproc

	.globl	ts_interpret_stdin
	.align	16, 0x90
	.type	ts_interpret_stdin,@function
ts_interpret_stdin:                     # @ts_interpret_stdin
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
	movabsq	$sc, %rdi
	movq	stdin, %rsi
	callq	scheme_load_file
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ts_interpret_stdin, .Lfunc_end9-ts_interpret_stdin
	.cfi_endproc

	.globl	ts_interpret_string
	.align	16, 0x90
	.type	ts_interpret_string,@function
ts_interpret_string:                    # @ts_interpret_string
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
	subq	$16, %rsp
	movabsq	$sc, %rax
	movq	%rdi, -8(%rbp)
	movq	sc+5608, %rdi
	movq	448(%rdi), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	sc+16, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ts_interpret_string, .Lfunc_end10-ts_interpret_string
	.cfi_endproc

	.globl	ts_get_success_msg
	.align	16, 0x90
	.type	ts_get_success_msg,@function
ts_get_success_msg:                     # @ts_get_success_msg
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
	subq	$16, %rsp
	movq	sc+5608, %rax
	movq	128(%rax), %rax
	movq	sc+5576, %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	sc+5608, %rax
	movq	144(%rax), %rax
	movq	sc+5576, %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movabsq	$.L.str.8, %rax
	movq	%rax, -8(%rbp)
.LBB11_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ts_get_success_msg, .Lfunc_end11-ts_get_success_msg
	.cfi_endproc

	.globl	ts_gstring_output_func
	.align	16, 0x90
	.type	ts_gstring_output_func,@function
ts_gstring_output_func:                 # @ts_gstring_output_func
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	g_string_append_len
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ts_gstring_output_func, .Lfunc_end12-ts_gstring_output_func
	.cfi_endproc

	.align	16, 0x90
	.type	convert_string,@function
convert_string:                         # @convert_string
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
	movq	%rdi, -8(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movb	$45, (%rax)
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_1
.LBB13_5:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end13:
	.size	convert_string, .Lfunc_end13-convert_string
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_register_call,@function
script_fu_register_call:                # @script_fu_register_call
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	script_fu_add_script
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	script_fu_register_call, .Lfunc_end14-script_fu_register_call
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_nil_call,@function
script_fu_nil_call:                     # @script_fu_nil_call
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	script_fu_nil_call, .Lfunc_end15-script_fu_nil_call
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_menu_register_call,@function
script_fu_menu_register_call:           # @script_fu_menu_register_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	script_fu_add_menu
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	script_fu_menu_register_call, .Lfunc_end16-script_fu_menu_register_call
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_quit_call,@function
script_fu_quit_call:                    # @script_fu_quit_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	script_fu_server_quit
	movq	-8(%rbp), %rdi
	callq	scheme_deinit
	movq	-8(%rbp), %rsi
	movq	936(%rsi), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	script_fu_quit_call, .Lfunc_end17-script_fu_quit_call
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	script_fu_marshal_procedure_call,@function
script_fu_marshal_procedure_call:       # @script_fu_marshal_procedure_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$3008, %rsp             # imm = 0xBC0
.Ltmp60:
	.cfi_offset %rbx, -32
.Ltmp61:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -1176(%rbp)
	movq	-32(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	%rsi, -1184(%rbp)
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.124, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	280(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1520(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
.LBB18_5:                               # %if.end.13
	movq	-72(%rbp), %rdi
	callq	script_fu_interface_report_cc
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %r8
	leaq	-112(%rbp), %r9
	leaq	-116(%rbp), %rdi
	leaq	-120(%rbp), %rax
	leaq	-124(%rbp), %r10
	leaq	-136(%rbp), %r11
	leaq	-144(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	movq	%r14, %rdi
	movq	-1528(%rbp), %r14       # 8-byte Reload
	movq	%r14, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	callq	gimp_procedural_db_proc_info
	cmpl	$0, %eax
	jne	.LBB18_7
# BB#6:                                 # %if.then.16
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.125, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1532(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_7:                               # %if.end.20
	movl	$0, -1172(%rbp)
.LBB18_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1172(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB18_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB18_8 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-136(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movslq	-1172(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-136(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB18_8
.LBB18_11:                              # %for.end
	movl	$0, -1172(%rbp)
.LBB18_12:                              # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-1172(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB18_15
# BB#13:                                # %for.body.26
                                        #   in Loop: Header=BB18_12 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-144(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movslq	-1172(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-144(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#14:                                # %for.inc.33
                                        #   in Loop: Header=BB18_12 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB18_12
.LBB18_15:                              # %for.end.35
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	*%rax
	subl	$1, %eax
	cmpl	-120(%rbp), %eax
	je	.LBB18_17
# BB#16:                                # %if.then.39
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movl	-120(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdi, -1544(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movl	%r8d, -1548(%rbp)       # 4-byte Spill
	movq	%rcx, -1560(%rbp)       # 8-byte Spill
	callq	*%rax
	movl	$1024, %r8d             # imm = 0x400
	movl	%r8d, %esi
	movabsq	$.L.str.126, %rdx
	subl	$1, %eax
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	movl	-1548(%rbp), %r8d       # 4-byte Reload
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_snprintf
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_17:                              # %if.end.48
	cmpl	$0, -120(%rbp)
	je	.LBB18_19
# BB#18:                                # %if.then.50
	movl	$40, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	jmp	.LBB18_20
.LBB18_19:                              # %if.else.52
	movq	$0, -48(%rbp)
.LBB18_20:                              # %if.end.53
	movl	$0, -1172(%rbp)
.LBB18_21:                              # %for.cond.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_164 Depth 2
                                        #     Child Loop BB18_111 Depth 2
                                        #     Child Loop BB18_97 Depth 2
                                        #     Child Loop BB18_83 Depth 2
                                        #     Child Loop BB18_69 Depth 2
                                        #     Child Loop BB18_55 Depth 2
	movl	-1172(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB18_208
# BB#22:                                # %for.body.57
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movslq	-1172(%rbp), %rax
	movq	-136(%rbp), %rdi
	leaq	(%rax,%rax,2), %rcx
	movl	(%rdi,%rcx,8), %edx
	movq	-48(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	%edx, (%rcx,%rax,8)
	movslq	-1172(%rbp), %rax
	movq	-136(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$21, %rcx
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	movq	%rcx, -1584(%rbp)       # 8-byte Spill
	ja	.LBB18_203
# BB#287:                               # %for.body.57
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_23:                              # %sw.bb
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1592(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_25
# BB#24:                                # %if.then.74
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_25:                              # %if.end.75
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_27
# BB#26:                                # %if.then.77
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1600(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
.LBB18_27:                              # %if.end.86
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_28:                              # %sw.bb.87
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1608(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_30
# BB#29:                                # %if.then.95
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_30:                              # %if.end.96
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_32
# BB#31:                                # %if.then.98
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1616(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movw	%ax, %dx
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movw	%dx, 8(%rax)
.LBB18_32:                              # %if.end.109
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_33:                              # %sw.bb.110
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1624(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_35
# BB#34:                                # %if.then.118
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_35:                              # %if.end.119
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_37
# BB#36:                                # %if.then.121
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1632(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movb	%al, %dl
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movb	%dl, 8(%rax)
.LBB18_37:                              # %if.end.132
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_38:                              # %sw.bb.133
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1640(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_40
# BB#39:                                # %if.then.141
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_40:                              # %if.end.142
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_42
# BB#41:                                # %if.then.144
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1648(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB18_42:                              # %if.end.153
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_43:                              # %sw.bb.154
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1656(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_45
# BB#44:                                # %if.then.161
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_45:                              # %if.end.162
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_47
# BB#46:                                # %if.then.164
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1664(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movslq	-1172(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB18_47:                              # %if.end.174
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_48:                              # %sw.bb.175
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_50
# BB#49:                                # %if.then.182
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_50:                              # %if.end.183
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_61
# BB#51:                                # %if.then.185
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_53
# BB#52:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdi
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1672(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB18_54
.LBB18_53:                              # %if.then.198
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdx
	movq	%rdi, -1680(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -1688(%rbp)        # 8-byte Spill
	movl	%eax, -1692(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %esi             # imm = 0x400
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.127, %rdx
	movl	-1188(%rbp), %r9d
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movl	-1692(%rbp), %ecx       # 4-byte Reload
	movq	-1688(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -1696(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	-1696(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_54:                              # %if.end.206
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_55:                              # %for.cond.212
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_60
# BB#56:                                # %for.body.215
                                        #   in Loop: Header=BB18_55 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	256(%rax), %rax
	movq	-1200(%rbp), %rdi
	movl	-1204(%rbp), %esi
	callq	*%rax
	movq	%rax, -1216(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-1216(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_58
# BB#57:                                # %if.then.222
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -1704(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1704(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -1708(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_58:                              # %if.end.229
                                        #   in Loop: Header=BB18_55 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-1216(%rbp), %rdi
	callq	*%rax
	movl	%eax, %ecx
	movslq	-1204(%rbp), %rax
	movslq	-1172(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%ecx, (%rdi,%rax,4)
# BB#59:                                # %for.inc.240
                                        #   in Loop: Header=BB18_55 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_55
.LBB18_60:                              # %for.end.242
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_61
.LBB18_61:                              # %if.end.243
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_62:                              # %sw.bb.244
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_64
# BB#63:                                # %if.then.252
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_64:                              # %if.end.253
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_75
# BB#65:                                # %if.then.255
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_67
# BB#66:                                # %lor.lhs.false.263
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdi
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1720(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB18_68
.LBB18_67:                              # %if.then.270
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdx
	movq	%rdi, -1728(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -1736(%rbp)        # 8-byte Spill
	movl	%eax, -1740(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %esi             # imm = 0x400
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.129, %rdx
	movl	-1188(%rbp), %r9d
	movq	-1728(%rbp), %rdi       # 8-byte Reload
	movl	-1740(%rbp), %ecx       # 4-byte Reload
	movq	-1736(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -1744(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	-1744(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1748(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_68:                              # %if.end.279
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_69:                              # %for.cond.285
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_74
# BB#70:                                # %for.body.288
                                        #   in Loop: Header=BB18_69 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	256(%rax), %rax
	movq	-1200(%rbp), %rdi
	movl	-1204(%rbp), %esi
	callq	*%rax
	movq	%rax, -1224(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-1224(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_72
# BB#71:                                # %if.then.297
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -1752(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1752(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -1756(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_72:                              # %if.end.304
                                        #   in Loop: Header=BB18_69 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-1224(%rbp), %rdi
	callq	*%rax
	movw	%ax, %cx
	movslq	-1204(%rbp), %rax
	movslq	-1172(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movw	%cx, (%rdi,%rax,2)
# BB#73:                                # %for.inc.315
                                        #   in Loop: Header=BB18_69 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_69
.LBB18_74:                              # %for.end.317
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_75
.LBB18_75:                              # %if.end.318
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_76:                              # %sw.bb.319
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_78
# BB#77:                                # %if.then.327
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_78:                              # %if.end.328
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_89
# BB#79:                                # %if.then.330
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_81
# BB#80:                                # %lor.lhs.false.338
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdi
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1768(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB18_82
.LBB18_81:                              # %if.then.345
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdx
	movq	%rdi, -1776(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -1784(%rbp)        # 8-byte Spill
	movl	%eax, -1788(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %esi             # imm = 0x400
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.130, %rdx
	movl	-1188(%rbp), %r9d
	movq	-1776(%rbp), %rdi       # 8-byte Reload
	movl	-1788(%rbp), %ecx       # 4-byte Reload
	movq	-1784(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -1792(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	-1792(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1796(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_82:                              # %if.end.354
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_83:                              # %for.cond.360
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_88
# BB#84:                                # %for.body.363
                                        #   in Loop: Header=BB18_83 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	256(%rax), %rax
	movq	-1200(%rbp), %rdi
	movl	-1204(%rbp), %esi
	callq	*%rax
	movq	%rax, -1232(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-1232(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_86
# BB#85:                                # %if.then.372
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -1800(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1800(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -1804(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_86:                              # %if.end.379
                                        #   in Loop: Header=BB18_83 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-1232(%rbp), %rdi
	callq	*%rax
	movb	%al, %cl
	movslq	-1204(%rbp), %rax
	movslq	-1172(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	%cl, (%rdi,%rax)
# BB#87:                                # %for.inc.390
                                        #   in Loop: Header=BB18_83 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_83
.LBB18_88:                              # %for.end.392
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_89
.LBB18_89:                              # %if.end.393
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_90:                              # %sw.bb.394
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_92
# BB#91:                                # %if.then.402
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_92:                              # %if.end.403
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_103
# BB#93:                                # %if.then.405
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_95
# BB#94:                                # %lor.lhs.false.413
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdi
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1816(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB18_96
.LBB18_95:                              # %if.then.420
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdx
	movq	%rdi, -1824(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -1832(%rbp)        # 8-byte Spill
	movl	%eax, -1836(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %esi             # imm = 0x400
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.131, %rdx
	movl	-1188(%rbp), %r9d
	movq	-1824(%rbp), %rdi       # 8-byte Reload
	movl	-1836(%rbp), %ecx       # 4-byte Reload
	movq	-1832(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -1840(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	-1840(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1844(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_96:                              # %if.end.429
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_97:                              # %for.cond.435
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_102
# BB#98:                                # %for.body.438
                                        #   in Loop: Header=BB18_97 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	256(%rax), %rax
	movq	-1200(%rbp), %rdi
	movl	-1204(%rbp), %esi
	callq	*%rax
	movq	%rax, -1240(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-1240(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_100
# BB#99:                                # %if.then.447
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.128, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -1848(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1848(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -1852(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_100:                             # %if.end.454
                                        #   in Loop: Header=BB18_97 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-1240(%rbp), %rdi
	callq	*%rax
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movslq	-1204(%rbp), %rax
	movslq	-1172(%rbp), %rdi
	imulq	$40, %rdi, %rdi
	addq	-48(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsd	%xmm0, (%rdi,%rax,8)
# BB#101:                               # %for.inc.466
                                        #   in Loop: Header=BB18_97 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_97
.LBB18_102:                             # %for.end.468
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_103
.LBB18_103:                             # %if.end.469
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_104:                             # %sw.bb.470
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_106
# BB#105:                               # %if.then.477
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_106:                             # %if.end.478
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_117
# BB#107:                               # %if.then.480
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_109
# BB#108:                               # %lor.lhs.false.488
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1188(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	232(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rsi
	movl	%eax, -1856(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	-1856(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB18_110
.LBB18_109:                             # %if.then.494
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	232(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	-1200(%rbp), %rsi
	movq	%rdi, -1864(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -1872(%rbp)        # 8-byte Spill
	movl	%eax, -1876(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %r9d             # imm = 0x400
	movl	%r9d, %esi
	movabsq	$.L.str.132, %rdx
	movl	-1188(%rbp), %r9d
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	movl	-1876(%rbp), %ecx       # 4-byte Reload
	movq	-1872(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -1880(%rbp)       # 4-byte Spill
	movl	%eax, %r9d
	movl	-1880(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -1884(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_110:                             # %if.end.503
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_111:                             # %for.cond.509
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_116
# BB#112:                               # %for.body.512
                                        #   in Loop: Header=BB18_111 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1248(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-1248(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_114
# BB#113:                               # %if.then.521
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.133, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -1888(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1888(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -1892(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_114:                             # %if.end.528
                                        #   in Loop: Header=BB18_111 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-1248(%rbp), %rdi
	callq	*%rax
	movslq	-1204(%rbp), %rdi
	movslq	-1172(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
# BB#115:                               # %for.inc.541
                                        #   in Loop: Header=BB18_111 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_111
.LBB18_116:                             # %for.end.543
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_117
.LBB18_117:                             # %if.end.544
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_118:                             # %sw.bb.545
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1904(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_122
# BB#119:                               # %if.then.553
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	144(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	288(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rax, -1912(%rbp)       # 8-byte Spill
	movq	%rcx, -1920(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-1920(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-1912(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_rgb_parse_css
	cmpl	$0, %eax
	jne	.LBB18_121
# BB#120:                               # %if.then.565
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_121:                             # %if.end.566
                                        #   in Loop: Header=BB18_21 Depth=1
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	jmp	.LBB18_156
.LBB18_122:                             # %if.else.571
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -1928(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1928(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-1936(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_154
# BB#123:                               # %land.lhs.true
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -1944(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1944(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-1952(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$3, %eax
	jne	.LBB18_154
# BB#124:                               # %if.then.587
                                        #   in Loop: Header=BB18_21 Depth=1
	movb	$0, -1257(%rbp)
	movb	$0, -1258(%rbp)
	movb	$0, -1259(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1256(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1256(%rbp), %rcx
	movq	%rdi, -1960(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1960(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1968(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_132
# BB#125:                               # %if.then.598
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1976(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_127
# BB#126:                               # %cond.true
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -1984(%rbp)       # 8-byte Spill
	jmp	.LBB18_131
.LBB18_127:                             # %cond.false
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-1992(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_129
# BB#128:                               # %cond.true.615
                                        #   in Loop: Header=BB18_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2000(%rbp)       # 8-byte Spill
	jmp	.LBB18_130
.LBB18_129:                             # %cond.false.616
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2008(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2000(%rbp)       # 8-byte Spill
.LBB18_130:                             # %cond.end
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-2000(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1984(%rbp)       # 8-byte Spill
.LBB18_131:                             # %cond.end.623
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-1984(%rbp), %rax       # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -1257(%rbp)
	jmp	.LBB18_133
.LBB18_132:                             # %if.else.626
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_133:                             # %if.end.627
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1256(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1256(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1256(%rbp), %rcx
	movq	%rdi, -2016(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2016(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2024(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_141
# BB#134:                               # %if.then.638
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2032(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2032(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_136
# BB#135:                               # %cond.true.647
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -2040(%rbp)       # 8-byte Spill
	jmp	.LBB18_140
.LBB18_136:                             # %cond.false.648
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2048(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_138
# BB#137:                               # %cond.true.657
                                        #   in Loop: Header=BB18_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2056(%rbp)       # 8-byte Spill
	jmp	.LBB18_139
.LBB18_138:                             # %cond.false.658
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2064(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2056(%rbp)       # 8-byte Spill
.LBB18_139:                             # %cond.end.665
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-2056(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2040(%rbp)       # 8-byte Spill
.LBB18_140:                             # %cond.end.667
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-2040(%rbp), %rax       # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -1258(%rbp)
	jmp	.LBB18_142
.LBB18_141:                             # %if.else.670
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_142:                             # %if.end.671
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1256(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1256(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1256(%rbp), %rcx
	movq	%rdi, -2072(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2072(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2080(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_150
# BB#143:                               # %if.then.682
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2088(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_145
# BB#144:                               # %cond.true.691
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -2096(%rbp)       # 8-byte Spill
	jmp	.LBB18_149
.LBB18_145:                             # %cond.false.692
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2104(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_147
# BB#146:                               # %cond.true.701
                                        #   in Loop: Header=BB18_21 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2112(%rbp)       # 8-byte Spill
	jmp	.LBB18_148
.LBB18_147:                             # %cond.false.702
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1256(%rbp), %rdi
	movq	%rax, -2120(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2120(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2112(%rbp)       # 8-byte Spill
.LBB18_148:                             # %cond.end.709
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2096(%rbp)       # 8-byte Spill
.LBB18_149:                             # %cond.end.711
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -1259(%rbp)
	jmp	.LBB18_151
.LBB18_150:                             # %if.else.714
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_151:                             # %if.end.715
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_153
# BB#152:                               # %if.then.717
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$255, %r8d
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	addq	$8, %rax
	movb	-1257(%rbp), %cl
	movb	-1258(%rbp), %dl
	movq	%rax, %rdi
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	-1259(%rbp), %ecx
	callq	gimp_rgba_set_uchar
.LBB18_153:                             # %if.end.722
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_155
.LBB18_154:                             # %if.else.723
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_155:                             # %if.end.724
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_156
.LBB18_156:                             # %if.end.725
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_157:                             # %sw.bb.726
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1200(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	224(%rax), %rax
	movq	-1200(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_159
# BB#158:                               # %if.then.734
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_159:                             # %if.end.735
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_189
# BB#160:                               # %if.then.737
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -1188(%rbp)
	cmpl	$0, -1188(%rbp)
	jl	.LBB18_162
# BB#161:                               # %lor.lhs.false.745
                                        #   in Loop: Header=BB18_21 Depth=1
	movslq	-1188(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdi
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB18_163
.LBB18_162:                             # %if.then.752
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	240(%rcx), %rcx
	movq	-1200(%rbp), %rdx
	movq	%rdi, -2136(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%r8, -2144(%rbp)        # 8-byte Spill
	movl	%eax, -2148(%rbp)       # 4-byte Spill
	callq	*%rcx
	movl	$1024, %esi             # imm = 0x400
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.134, %rdx
	movl	-1188(%rbp), %r9d
	movq	-2136(%rbp), %rdi       # 8-byte Reload
	movl	-2148(%rbp), %ecx       # 4-byte Reload
	movq	-2144(%rbp), %r8        # 8-byte Reload
	movl	%r9d, -2152(%rbp)       # 4-byte Spill
	movq	%rax, %r9
	movl	-2152(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -2156(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_163:                             # %if.end.761
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$32, %eax
	movl	%eax, %esi
	movslq	-1188(%rbp), %rdi
	callq	g_malloc_n
	movslq	-1172(%rbp), %rsi
	imulq	$40, %rsi, %rsi
	addq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	$0, -1204(%rbp)
.LBB18_164:                             # %for.cond.767
                                        #   Parent Loop BB18_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax
	cmpl	-1188(%rbp), %eax
	jge	.LBB18_188
# BB#165:                               # %for.body.770
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	256(%rax), %rax
	movq	-1200(%rbp), %rdi
	movl	-1204(%rbp), %esi
	callq	*%rax
	movq	%rax, -1272(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1272(%rbp), %rdx
	movq	%rdi, -2168(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2176(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_167
# BB#166:                               # %land.lhs.true.786
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1272(%rbp), %rdx
	movq	%rdi, -2184(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2192(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$3, %eax
	je	.LBB18_168
.LBB18_167:                             # %if.then.795
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.135, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %r9
	movl	%ecx, -2196(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-2196(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	g_snprintf
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-1200(%rbp), %rdx
	movl	%eax, -2200(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_168:                             # %if.end.802
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-1272(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1280(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1280(%rbp), %rcx
	movq	%rdi, -2208(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2208(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -2216(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2216(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_170
# BB#169:                               # %cond.true.814
                                        #   in Loop: Header=BB18_164 Depth=2
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -2224(%rbp)       # 8-byte Spill
	jmp	.LBB18_174
.LBB18_170:                             # %cond.false.815
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2232(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_172
# BB#171:                               # %cond.true.824
                                        #   in Loop: Header=BB18_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2240(%rbp)       # 8-byte Spill
	jmp	.LBB18_173
.LBB18_172:                             # %cond.false.825
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2248(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2240(%rbp)       # 8-byte Spill
.LBB18_173:                             # %cond.end.832
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2240(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2224(%rbp)       # 8-byte Spill
.LBB18_174:                             # %cond.end.834
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2224(%rbp), %rax       # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -1281(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1280(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1280(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1280(%rbp), %rdx
	movq	%rdi, -2256(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	-2256(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-2264(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_176
# BB#175:                               # %cond.true.848
                                        #   in Loop: Header=BB18_164 Depth=2
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB18_180
.LBB18_176:                             # %cond.false.849
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2280(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_178
# BB#177:                               # %cond.true.858
                                        #   in Loop: Header=BB18_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2288(%rbp)       # 8-byte Spill
	jmp	.LBB18_179
.LBB18_178:                             # %cond.false.859
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2296(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
.LBB18_179:                             # %cond.end.866
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2288(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2272(%rbp)       # 8-byte Spill
.LBB18_180:                             # %cond.end.868
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2272(%rbp), %rax       # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -1282(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1280(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1280(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1280(%rbp), %rdx
	movq	%rdi, -2304(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	-2304(%rbp), %rdx       # 8-byte Reload
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-2312(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB18_182
# BB#181:                               # %cond.true.882
                                        #   in Loop: Header=BB18_164 Depth=2
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB18_186
.LBB18_182:                             # %cond.false.883
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2328(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2328(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB18_184
# BB#183:                               # %cond.true.892
                                        #   in Loop: Header=BB18_164 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -2336(%rbp)       # 8-byte Spill
	jmp	.LBB18_185
.LBB18_184:                             # %cond.false.893
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1280(%rbp), %rdi
	movq	%rax, -2344(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2344(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2336(%rbp)       # 8-byte Spill
.LBB18_185:                             # %cond.end.900
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2336(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2320(%rbp)       # 8-byte Spill
.LBB18_186:                             # %cond.end.902
                                        #   in Loop: Header=BB18_164 Depth=2
	movq	-2320(%rbp), %rax       # 8-byte Reload
	movl	$255, %r8d
	movb	%al, %cl
	movb	%cl, -1283(%rbp)
	movslq	-1204(%rbp), %rax
	movslq	-1172(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	-48(%rbp), %rdx
	shlq	$5, %rax
	addq	8(%rdx), %rax
	movb	-1281(%rbp), %cl
	movb	-1282(%rbp), %sil
	movq	%rax, %rdi
	movzbl	%cl, %r9d
	movb	%sil, -2345(%rbp)       # 1-byte Spill
	movl	%r9d, %esi
	movb	-2345(%rbp), %cl        # 1-byte Reload
	movzbl	%cl, %edx
	movzbl	-1283(%rbp), %ecx
	callq	gimp_rgba_set_uchar
# BB#187:                               # %for.inc.911
                                        #   in Loop: Header=BB18_164 Depth=2
	movl	-1204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1204(%rbp)
	jmp	.LBB18_164
.LBB18_188:                             # %for.end.913
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_189
.LBB18_189:                             # %if.end.914
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_190:                             # %sw.bb.915
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -2360(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2368(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2368(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB18_192
# BB#191:                               # %lor.lhs.false.923
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -2376(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2384(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2384(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$3, %eax
	je	.LBB18_193
.LBB18_192:                             # %if.then.932
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
.LBB18_193:                             # %if.end.933
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	je	.LBB18_201
# BB#194:                               # %if.then.935
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1296(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-1296(%rbp), %rcx
	movq	%rdi, -2392(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-2392(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2400(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_196
# BB#195:                               # %if.then.946
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
	jmp	.LBB18_204
.LBB18_196:                             # %if.end.947
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -2408(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2408(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movslq	-1172(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1296(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1296(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	152(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -2416(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2416(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_198
# BB#197:                               # %if.then.968
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
	jmp	.LBB18_204
.LBB18_198:                             # %if.end.969
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -2424(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2424(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-1296(%rbp), %rdi
	callq	*%rax
	movq	%rax, -1296(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -2432(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2432(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB18_200
# BB#199:                               # %if.then.991
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	$0, -1176(%rbp)
	jmp	.LBB18_204
.LBB18_200:                             # %if.end.992
                                        #   in Loop: Header=BB18_21 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-1296(%rbp), %rdi
	movq	%rax, -2440(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-2440(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movslq	-1172(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	callq	strlen
	movl	%eax, %edx
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%edx, 20(%rax)
.LBB18_201:                             # %if.end.1015
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_204
.LBB18_202:                             # %sw.bb.1016
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rdi, -2448(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	*%rax
	movabsq	$.L.str.136, %rsi
	movq	-2448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_203:                             # %sw.default
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.137, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -2452(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_204:                             # %sw.epilog
                                        #   in Loop: Header=BB18_21 Depth=1
	cmpl	$0, -1176(%rbp)
	jne	.LBB18_206
# BB#205:                               # %if.then.1027
	jmp	.LBB18_208
.LBB18_206:                             # %if.end.1028
                                        #   in Loop: Header=BB18_21 Depth=1
	jmp	.LBB18_207
.LBB18_207:                             # %for.inc.1029
                                        #   in Loop: Header=BB18_21 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB18_21
.LBB18_208:                             # %for.end.1031
	cmpl	$0, -1176(%rbp)
	je	.LBB18_210
# BB#209:                               # %if.then.1033
	leaq	-60(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	-120(%rbp), %edx
	movq	-48(%rbp), %rcx
	callq	gimp_run_procedure2
	movq	%rax, -56(%rbp)
	jmp	.LBB18_211
.LBB18_210:                             # %if.else.1035
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.138, %rdx
	leaq	-1168(%rbp), %rdi
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movq	-72(%rbp), %r8
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -2456(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_211:                             # %if.end.1041
	cmpq	$0, -56(%rbp)
	jne	.LBB18_213
# BB#212:                               # %if.then.1043
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.139, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -2460(%rbp)       # 4-byte Spill
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_213:                             # %if.end.1048
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -2472(%rbp)       # 8-byte Spill
	movq	%rdx, -2480(%rbp)       # 8-byte Spill
	ja	.LBB18_278
# BB#288:                               # %if.end.1048
	movq	-2472(%rbp), %rax       # 8-byte Reload
	movq	.LJTI18_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_214:                             # %sw.bb.1051
	cmpl	$1, -60(%rbp)
	jle	.LBB18_217
# BB#215:                               # %land.lhs.true.1054
	movq	-56(%rbp), %rax
	cmpl	$4, 40(%rax)
	jne	.LBB18_217
# BB#216:                               # %if.then.1059
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.140, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	48(%r8), %r8
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -2484(%rbp)       # 4-byte Spill
	jmp	.LBB18_218
.LBB18_217:                             # %if.else.1065
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.141, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -2488(%rbp)       # 4-byte Spill
.LBB18_218:                             # %if.end.1068
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_219:                             # %sw.bb.1071
	cmpl	$1, -60(%rbp)
	jle	.LBB18_222
# BB#220:                               # %land.lhs.true.1074
	movq	-56(%rbp), %rax
	cmpl	$4, 40(%rax)
	jne	.LBB18_222
# BB#221:                               # %if.then.1079
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.142, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	48(%r8), %r8
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -2492(%rbp)       # 4-byte Spill
	jmp	.LBB18_223
.LBB18_222:                             # %if.else.1085
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.143, %rdx
	leaq	-1168(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -2496(%rbp)       # 4-byte Spill
.LBB18_223:                             # %if.end.1088
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-1168(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_224:                             # %sw.bb.1091
	movl	-60(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -1172(%rbp)
.LBB18_225:                             # %for.cond.1093
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_264 Depth 2
                                        #     Child Loop BB18_255 Depth 2
                                        #     Child Loop BB18_250 Depth 2
                                        #     Child Loop BB18_245 Depth 2
                                        #     Child Loop BB18_240 Depth 2
                                        #     Child Loop BB18_235 Depth 2
	cmpl	$0, -1172(%rbp)
	jl	.LBB18_276
# BB#226:                               # %for.body.1096
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	movq	-144(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$21, %rcx
	movq	%rax, -2504(%rbp)       # 8-byte Spill
	movq	%rcx, -2512(%rbp)       # 8-byte Spill
	ja	.LBB18_273
# BB#289:                               # %for.body.1096
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-2504(%rbp), %rax       # 8-byte Reload
	movq	.LJTI18_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_227:                             # %sw.bb.1101
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movl	-1172(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %r8
	imulq	$40, %r8, %r8
	addq	-56(%rbp), %r8
	movslq	8(%r8), %rsi
	movq	%rdi, -2520(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1184(%rbp), %rdx
	movq	-2520(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2528(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_228:                             # %sw.bb.1112
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movl	-1172(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %r8
	imulq	$40, %r8, %r8
	addq	-56(%rbp), %r8
	movswq	8(%r8), %rsi
	movq	%rdi, -2536(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2544(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1184(%rbp), %rdx
	movq	-2536(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2544(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_229:                             # %sw.bb.1125
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movl	-1172(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %r8
	imulq	$40, %r8, %r8
	addq	-56(%rbp), %r8
	movzbl	8(%r8), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rdi, -2552(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2560(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1184(%rbp), %rdx
	movq	-2552(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2560(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_230:                             # %sw.bb.1138
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movl	-1172(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %r8
	imulq	$40, %r8, %r8
	addq	-56(%rbp), %r8
	movsd	8(%r8), %xmm0           # xmm0 = mem[0],zero
	movq	%rdi, -2568(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1184(%rbp), %rdx
	movq	-2568(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2576(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_231:                             # %sw.bb.1149
                                        #   in Loop: Header=BB18_225 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -1304(%rbp)
	cmpq	$0, -1304(%rbp)
	jne	.LBB18_233
# BB#232:                               # %if.then.1156
                                        #   in Loop: Header=BB18_225 Depth=1
	movabsq	$.L.str.144, %rax
	movq	%rax, -1304(%rbp)
.LBB18_233:                             # %if.end.1157
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	-1304(%rbp), %rsi
	movq	%rdi, -2584(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2592(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-1184(%rbp), %rdx
	movq	-2584(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2592(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_234:                             # %sw.bb.1163
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1312(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1320(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-1312(%rbp), %esi
	callq	*%rax
	movq	%rax, -1328(%rbp)
	movl	$0, -1308(%rbp)
.LBB18_235:                             # %for.cond.1176
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1308(%rbp), %eax
	cmpl	-1312(%rbp), %eax
	jge	.LBB18_238
# BB#236:                               # %for.body.1179
                                        #   in Loop: Header=BB18_235 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	264(%rax), %rax
	movq	-1328(%rbp), %rdi
	movl	-1308(%rbp), %esi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	-1308(%rbp), %r8
	movq	-1320(%rbp), %r9
	movslq	(%r9,%r8,4), %r8
	movq	%rdi, -2600(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movl	%esi, -2604(%rbp)       # 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -2616(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2600(%rbp), %rdi       # 8-byte Reload
	movl	-2604(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movq	-2616(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2624(%rbp)       # 8-byte Spill
# BB#237:                               # %for.inc.1188
                                        #   in Loop: Header=BB18_235 Depth=2
	movl	-1308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_235
.LBB18_238:                             # %for.end.1190
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1328(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_239:                             # %sw.bb.1194
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1332(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1344(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-1332(%rbp), %esi
	callq	*%rax
	movq	%rax, -1352(%rbp)
	movl	$0, -1308(%rbp)
.LBB18_240:                             # %for.cond.1209
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1308(%rbp), %eax
	cmpl	-1332(%rbp), %eax
	jge	.LBB18_243
# BB#241:                               # %for.body.1212
                                        #   in Loop: Header=BB18_240 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	264(%rax), %rax
	movq	-1352(%rbp), %rdi
	movl	-1308(%rbp), %esi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	-1308(%rbp), %r8
	movq	-1344(%rbp), %r9
	movswq	(%r9,%r8,2), %r8
	movq	%rdi, -2632(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movl	%esi, -2636(%rbp)       # 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2632(%rbp), %rdi       # 8-byte Reload
	movl	-2636(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movq	-2648(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2656(%rbp)       # 8-byte Spill
# BB#242:                               # %for.inc.1222
                                        #   in Loop: Header=BB18_240 Depth=2
	movl	-1308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_240
.LBB18_243:                             # %for.end.1224
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1352(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_244:                             # %sw.bb.1228
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1356(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1368(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-1356(%rbp), %esi
	callq	*%rax
	movq	%rax, -1376(%rbp)
	movl	$0, -1308(%rbp)
.LBB18_245:                             # %for.cond.1243
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1308(%rbp), %eax
	cmpl	-1356(%rbp), %eax
	jge	.LBB18_248
# BB#246:                               # %for.body.1246
                                        #   in Loop: Header=BB18_245 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	264(%rax), %rax
	movq	-1376(%rbp), %rdi
	movl	-1308(%rbp), %esi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	-1308(%rbp), %r8
	movq	-1368(%rbp), %r9
	movzbl	(%r9,%r8), %r10d
	movl	%r10d, %r8d
	movq	%rdi, -2664(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movl	%esi, -2668(%rbp)       # 4-byte Spill
	movq	%r8, %rsi
	movq	%rax, -2680(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	movl	-2668(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movq	-2680(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2688(%rbp)       # 8-byte Spill
# BB#247:                               # %for.inc.1256
                                        #   in Loop: Header=BB18_245 Depth=2
	movl	-1308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_245
.LBB18_248:                             # %for.end.1258
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1376(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_249:                             # %sw.bb.1262
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1380(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1392(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-1380(%rbp), %esi
	callq	*%rax
	movq	%rax, -1400(%rbp)
	movl	$0, -1308(%rbp)
.LBB18_250:                             # %for.cond.1277
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1308(%rbp), %eax
	cmpl	-1380(%rbp), %eax
	jge	.LBB18_253
# BB#251:                               # %for.body.1280
                                        #   in Loop: Header=BB18_250 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	264(%rax), %rax
	movq	-1400(%rbp), %rdi
	movl	-1308(%rbp), %esi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	-1308(%rbp), %r8
	movq	-1392(%rbp), %r9
	movsd	(%r9,%r8,8), %xmm0      # xmm0 = mem[0],zero
	movq	%rdi, -2696(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2704(%rbp)       # 8-byte Spill
	movl	%esi, -2708(%rbp)       # 4-byte Spill
	callq	*%rcx
	movq	-2696(%rbp), %rdi       # 8-byte Reload
	movl	-2708(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movq	-2704(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -2720(%rbp)       # 8-byte Spill
# BB#252:                               # %for.inc.1289
                                        #   in Loop: Header=BB18_250 Depth=2
	movl	-1308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_250
.LBB18_253:                             # %for.end.1291
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1400(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_254:                             # %sw.bb.1295
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1404(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1416(%rbp)
	movq	-32(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -1424(%rbp)
	movl	-1404(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -1308(%rbp)
.LBB18_255:                             # %for.cond.1308
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -1308(%rbp)
	jl	.LBB18_261
# BB#256:                               # %for.body.1311
                                        #   in Loop: Header=BB18_255 Depth=2
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movslq	-1308(%rbp), %rsi
	movq	-1416(%rbp), %r8
	cmpq	$0, (%r8,%rsi,8)
	movq	%rax, -2728(%rbp)       # 8-byte Spill
	movq	%rdi, -2736(%rbp)       # 8-byte Spill
	movq	%rcx, -2744(%rbp)       # 8-byte Spill
	movq	%rdx, -2752(%rbp)       # 8-byte Spill
	je	.LBB18_258
# BB#257:                               # %cond.true.1319
                                        #   in Loop: Header=BB18_255 Depth=2
	movslq	-1308(%rbp), %rax
	movq	-1416(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -2760(%rbp)       # 8-byte Spill
	jmp	.LBB18_259
.LBB18_258:                             # %cond.false.1322
                                        #   in Loop: Header=BB18_255 Depth=2
	movabsq	$.L.str.144, %rax
	movq	%rax, -2760(%rbp)       # 8-byte Spill
	jmp	.LBB18_259
.LBB18_259:                             # %cond.end.1323
                                        #   in Loop: Header=BB18_255 Depth=2
	movq	-2760(%rbp), %rax       # 8-byte Reload
	movq	-2752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2744(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-1424(%rbp), %rdx
	movq	-2736(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2728(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1424(%rbp)
# BB#260:                               # %for.inc.1327
                                        #   in Loop: Header=BB18_255 Depth=2
	movl	-1308(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_255
.LBB18_261:                             # %for.end.1328
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1424(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_262:                             # %sw.bb.1332
                                        #   in Loop: Header=BB18_225 Depth=1
	leaq	-1425(%rbp), %rsi
	leaq	-1426(%rbp), %rdx
	leaq	-1427(%rbp), %rcx
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	imulq	$40, %rdi, %rdi
	addq	-56(%rbp), %rdi
	addq	$8, %rdi
	callq	gimp_rgb_get_uchar
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movzbl	-1425(%rbp), %eax
	movl	%eax, %r8d
	movq	%rdi, -2768(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rcx, -2776(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movzbl	-1426(%rbp), %r9d
	movl	%r9d, %r8d
	movq	%rdi, -2784(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -2792(%rbp)       # 8-byte Spill
	movq	%rcx, -2800(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movzbl	-1427(%rbp), %r9d
	movl	%r9d, %r8d
	movq	%rdi, -2808(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -2816(%rbp)       # 8-byte Spill
	movq	%rcx, -2824(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	-32(%rbp), %rcx
	movq	936(%rcx), %rdx
	movq	-2808(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2824(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2784(%rbp), %rdi       # 8-byte Reload
	movq	-2816(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2800(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2768(%rbp), %rdi       # 8-byte Reload
	movq	-2792(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2776(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1440(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1440(%rbp), %rcx
	movq	-1184(%rbp), %rdx
	movq	%rcx, %rsi
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_263:                             # %sw.bb.1367
                                        #   in Loop: Header=BB18_225 Depth=1
	movslq	-1172(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -1444(%rbp)
	movl	-1172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	imulq	$40, %rax, %rax
	addq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1456(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-1444(%rbp), %esi
	callq	*%rax
	movq	%rax, -1464(%rbp)
	movl	$0, -1308(%rbp)
.LBB18_264:                             # %for.cond.1382
                                        #   Parent Loop BB18_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1308(%rbp), %eax
	cmpl	-1444(%rbp), %eax
	jge	.LBB18_267
# BB#265:                               # %for.body.1385
                                        #   in Loop: Header=BB18_264 Depth=2
	leaq	-1465(%rbp), %rsi
	leaq	-1466(%rbp), %rdx
	leaq	-1467(%rbp), %rcx
	movslq	-1308(%rbp), %rax
	shlq	$5, %rax
	addq	-1456(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_rgb_get_uchar
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movzbl	-1465(%rbp), %r8d
	movl	%r8d, %esi
	movq	%rdi, -2832(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -2840(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movzbl	-1466(%rbp), %r8d
	movl	%r8d, %r9d
	movq	%rdi, -2848(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r9, %rsi
	movq	%rax, -2856(%rbp)       # 8-byte Spill
	movq	%rcx, -2864(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movzbl	-1467(%rbp), %r8d
	movl	%r8d, %r9d
	movq	%rdi, -2872(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r9, %rsi
	movq	%rax, -2880(%rbp)       # 8-byte Spill
	movq	%rcx, -2888(%rbp)       # 8-byte Spill
	callq	*%rdx
	movq	-32(%rbp), %rcx
	movq	936(%rcx), %rdx
	movq	-2872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2888(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2848(%rbp), %rdi       # 8-byte Reload
	movq	-2880(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2864(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2832(%rbp), %rdi       # 8-byte Reload
	movq	-2856(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2840(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1480(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	264(%rax), %rax
	movq	-1464(%rbp), %rdi
	movl	-1308(%rbp), %esi
	movq	-1480(%rbp), %rdx
	callq	*%rax
	movq	%rax, -2896(%rbp)       # 8-byte Spill
# BB#266:                               # %for.inc.1417
                                        #   in Loop: Header=BB18_264 Depth=2
	movl	-1308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1308(%rbp)
	jmp	.LBB18_264
.LBB18_267:                             # %for.end.1419
                                        #   in Loop: Header=BB18_225 Depth=1
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1464(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_274
.LBB18_268:                             # %sw.bb.1423
                                        #   in Loop: Header=BB18_225 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-56(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	jne	.LBB18_270
# BB#269:                               # %if.then.1432
                                        #   in Loop: Header=BB18_225 Depth=1
	movabsq	$.L.str.145, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_271
.LBB18_270:                             # %if.else.1434
                                        #   in Loop: Header=BB18_225 Depth=1
	movl	-1172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-56(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -1488(%rbp)
	movq	-1488(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-1488(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, %esi
	callq	g_strndup
	movq	%rax, -1496(%rbp)
	movq	-1496(%rbp), %rdi
	movq	-1488(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, %esi
	callq	g_utf8_strlen
	movl	%eax, %edx
	movl	%edx, -1500(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	64(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movq	-1488(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdi, -2904(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -2912(%rbp)       # 8-byte Spill
	callq	*%rcx
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	5608(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-32(%rbp), %r8
	movq	-1488(%rbp), %r9
	movl	8(%r9), %edx
	movl	%edx, %r9d
	movq	%rdi, -2920(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -2928(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	-2928(%rbp), %r8        # 8-byte Reload
	movq	%rax, -2936(%rbp)       # 8-byte Spill
	movq	%rcx, -2944(%rbp)       # 8-byte Spill
	callq	*%r8
	movq	-32(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	5608(%rsi), %rsi
	movq	72(%rsi), %rsi
	movq	-32(%rbp), %r8
	movq	-1496(%rbp), %r9
	movl	-1500(%rbp), %edx
	movq	%rdi, -2952(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -2960(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	-2960(%rbp), %r8        # 8-byte Reload
	movq	%rax, -2968(%rbp)       # 8-byte Spill
	movq	%rcx, -2976(%rbp)       # 8-byte Spill
	callq	*%r8
	movq	-32(%rbp), %rcx
	movq	936(%rcx), %rdx
	movq	-2952(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-2976(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2920(%rbp), %rdi       # 8-byte Reload
	movq	-2968(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2944(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	-2904(%rbp), %rdi       # 8-byte Reload
	movq	-2936(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	-2912(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movq	%rax, -1512(%rbp)
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-1512(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	movq	-1496(%rbp), %rdi
	callq	g_free
.LBB18_271:                             # %if.end.1474
                                        #   in Loop: Header=BB18_225 Depth=1
	jmp	.LBB18_274
.LBB18_272:                             # %sw.bb.1475
	movabsq	$.L.str.146, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_273:                             # %sw.default.1477
	movabsq	$.L.str.147, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -24(%rbp)
	jmp	.LBB18_286
.LBB18_274:                             # %sw.epilog.1479
                                        #   in Loop: Header=BB18_225 Depth=1
	jmp	.LBB18_275
.LBB18_275:                             # %for.inc.1480
                                        #   in Loop: Header=BB18_225 Depth=1
	movl	-1172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1172(%rbp)
	jmp	.LBB18_225
.LBB18_276:                             # %for.end.1482
	jmp	.LBB18_277
.LBB18_277:                             # %sw.bb.1483
	jmp	.LBB18_278
.LBB18_278:                             # %sw.epilog.1484
	movq	-1184(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB18_283
# BB#279:                               # %if.then.1488
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB18_281
# BB#280:                               # %if.then.1494
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	968(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	936(%rcx), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
	jmp	.LBB18_282
.LBB18_281:                             # %if.else.1499
	movq	-32(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	1000(%rcx), %rsi
	movq	-32(%rbp), %rcx
	movq	936(%rcx), %rdx
	callq	*%rax
	movq	%rax, -1184(%rbp)
.LBB18_282:                             # %if.end.1504
	jmp	.LBB18_283
.LBB18_283:                             # %if.end.1505
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params
	movq	-48(%rbp), %rdi
	movl	-120(%rbp), %esi
	callq	script_fu_marshal_destroy_args
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	callq	script_fu_server_get_mode
	cmpl	$0, %eax
	je	.LBB18_285
# BB#284:                               # %if.then.1508
	movl	$10, %edi
	callq	script_fu_server_listen
.LBB18_285:                             # %if.end.1509
	movq	-1184(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB18_286:                             # %return
	movq	-24(%rbp), %rax
	addq	$3008, %rsp             # imm = 0xBC0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	script_fu_marshal_procedure_call, .Lfunc_end18-script_fu_marshal_procedure_call
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_23
	.quad	.LBB18_28
	.quad	.LBB18_33
	.quad	.LBB18_38
	.quad	.LBB18_43
	.quad	.LBB18_48
	.quad	.LBB18_62
	.quad	.LBB18_76
	.quad	.LBB18_90
	.quad	.LBB18_104
	.quad	.LBB18_118
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_157
	.quad	.LBB18_23
	.quad	.LBB18_190
	.quad	.LBB18_202
.LJTI18_1:
	.quad	.LBB18_214
	.quad	.LBB18_219
	.quad	.LBB18_277
	.quad	.LBB18_224
	.quad	.LBB18_277
.LJTI18_2:
	.quad	.LBB18_227
	.quad	.LBB18_228
	.quad	.LBB18_229
	.quad	.LBB18_230
	.quad	.LBB18_231
	.quad	.LBB18_234
	.quad	.LBB18_239
	.quad	.LBB18_244
	.quad	.LBB18_249
	.quad	.LBB18_254
	.quad	.LBB18_262
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_227
	.quad	.LBB18_263
	.quad	.LBB18_227
	.quad	.LBB18_268
	.quad	.LBB18_272

	.text
	.align	16, 0x90
	.type	script_fu_marshal_destroy_args,@function
script_fu_marshal_destroy_args:         # @script_fu_marshal_destroy_args
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB19_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$22, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB19_11
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_3:                               # %sw.bb
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_11
.LBB19_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_5:                               # %sw.bb.4
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_6:                               # %sw.bb.8
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_7:                               # %sw.bb.12
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_8:                               # %sw.bb.16
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_9:                               # %sw.bb.20
                                        #   in Loop: Header=BB19_1 Depth=1
	movslq	-16(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_10:                              # %sw.bb.24
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_11
.LBB19_11:                              # %sw.epilog
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_12
.LBB19_12:                              # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB19_1
.LBB19_13:                              # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	script_fu_marshal_destroy_args, .Lfunc_end19-script_fu_marshal_destroy_args
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_3
	.quad	.LBB19_4
	.quad	.LBB19_5
	.quad	.LBB19_6
	.quad	.LBB19_7
	.quad	.LBB19_8
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_9
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10
	.quad	.LBB19_10

	.type	sc,@object              # @sc
	.local	sc
	.comm	sc,5640,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not initialize TinyScheme!"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"script-fu.init"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"script-fu-compat.init"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-compat.init"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unable to read initialization file script-fu.init\n"
	.size	.L.str.4, 51

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"SF-RUN-MODE"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Welcome to TinyScheme, Version 1.40\n"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Copyright (c) Dimitrios Souflis\n"
	.size	.L.str.7, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Success"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%.*s"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-directory"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-data-directory"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-plug-in-directory"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-locale-directory"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-sysconf-directory"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_"
	.size	.L.str.15, 6

	.type	script_constants,@object # @script_constants
	.section	.rodata,"a",@progbits
	.align	16
script_constants:
	.quad	.L.str.23
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.long	262144                  # 0x40000
	.zero	4
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.long	65536                   # 0x10000
	.zero	4
	.quad	.L.str.27
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.28
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.31
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.33
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.34
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.36
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.37
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.38
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.39
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.40
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.41
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.42
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.43
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.44
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.45
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.46
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.47
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.48
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.49
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.50
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.51
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.52
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.53
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.54
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.55
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.56
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.size	script_constants, 560

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"DIR-SEPARATOR"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"SEARCHPATH-SEPARATOR"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	":"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-dir"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-data-dir"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-plugin-dir"
	.size	.L.str.22, 16

	.type	old_constants,@object   # @old_constants
	.section	.rodata,"a",@progbits
	.align	16
old_constants:
	.quad	.L.str.57
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.58
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.59
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.60
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.61
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.62
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.63
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.64
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.65
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.66
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.67
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.68
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.69
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.70
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.71
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.72
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.73
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.74
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.75
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.76
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.77
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.78
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.79
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.80
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.81
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.82
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.83
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.84
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.85
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.86
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.87
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.88
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.89
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.90
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.91
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.92
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.93
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.94
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.95
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.96
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.97
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.98
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.99
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.101
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.102
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.103
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.104
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.105
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.106
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.107
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.108
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.109
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.110
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.111
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.112
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.113
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.114
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.115
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.116
	.long	4                       # 0x4
	.zero	4
	.zero	16
	.size	old_constants, 976

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"MIN-IMAGE-SIZE"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"MAX-IMAGE-SIZE"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MIN-RESOLUTION"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"MAX-RESOLUTION"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"TRUE"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"FALSE"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UNIT-PIXEL"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UNIT-INCH"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"UNIT-MM"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"UNIT-POINT"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UNIT-PICA"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"SF-IMAGE"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SF-DRAWABLE"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"SF-LAYER"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"SF-CHANNEL"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"SF-VECTORS"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"SF-COLOR"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"SF-TOGGLE"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"SF-VALUE"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"SF-STRING"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"SF-FILENAME"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"SF-DIRNAME"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"SF-ADJUSTMENT"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"SF-FONT"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"SF-PATTERN"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"SF-BRUSH"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"SF-GRADIENT"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"SF-OPTION"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"SF-PALETTE"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"SF-TEXT"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"SF-ENUM"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"SF-DISPLAY"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"SF-SLIDER"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"SF-SPINNER"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"NORMAL"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"DISSOLVE"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"BEHIND"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"MULTIPLY"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"SCREEN"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"OVERLAY"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"DIFFERENCE"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"ADDITION"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"SUBTRACT"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"DARKEN-ONLY"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"LIGHTEN-ONLY"
	.size	.L.str.67, 13

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"HUE"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SATURATION"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"COLOR"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"VALUE"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"DIVIDE"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"BLUR"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"SHARPEN"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"WHITE-MASK"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"BLACK-MASK"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"ALPHA-MASK"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"SELECTION-MASK"
	.size	.L.str.78, 15

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"COPY-MASK"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"ADD"
	.size	.L.str.80, 4

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"SUB"
	.size	.L.str.81, 4

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"REPLACE"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"INTERSECT"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"FG-BG-RGB"
	.size	.L.str.84, 10

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"FG-BG-HSV"
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"FG-TRANS"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"CUSTOM"
	.size	.L.str.87, 7

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"FG-IMAGE-FILL"
	.size	.L.str.88, 14

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"BG-IMAGE-FILL"
	.size	.L.str.89, 14

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"WHITE-IMAGE-FILL"
	.size	.L.str.90, 17

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"TRANS-IMAGE-FILL"
	.size	.L.str.91, 17

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"APPLY"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"DISCARD"
	.size	.L.str.93, 8

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"HARD"
	.size	.L.str.94, 5

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"SOFT"
	.size	.L.str.95, 5

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"CONTINUOUS"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"INCREMENTAL"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"HORIZONTAL"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"VERTICAL"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"UNKNOWN"
	.size	.L.str.100, 8

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"LINEAR"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"BILINEAR"
	.size	.L.str.102, 9

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"RADIAL"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"SQUARE"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"CONICAL-SYMMETRIC"
	.size	.L.str.105, 18

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"CONICAL-ASYMMETRIC"
	.size	.L.str.106, 19

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"SHAPEBURST-ANGULAR"
	.size	.L.str.107, 19

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"SHAPEBURST-SPHERICAL"
	.size	.L.str.108, 21

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"SHAPEBURST-DIMPLED"
	.size	.L.str.109, 19

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"SPIRAL-CLOCKWISE"
	.size	.L.str.110, 17

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"SPIRAL-ANTICLOCKWISE"
	.size	.L.str.111, 21

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"VALUE-LUT"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"RED-LUT"
	.size	.L.str.113, 8

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"GREEN-LUT"
	.size	.L.str.114, 10

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"BLUE-LUT"
	.size	.L.str.115, 9

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"ALPHA-LUT"
	.size	.L.str.116, 10

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"script-fu-register"
	.size	.L.str.117, 19

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"script-fu-menu-register"
	.size	.L.str.118, 24

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"script-fu-quit"
	.size	.L.str.119, 15

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-proc-db-call"
	.size	.L.str.120, 18

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	".*"
	.size	.L.str.121, 3

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	" (define (%s) (gimp-proc-db-call \"%s\"))"
	.size	.L.str.122, 40

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	" (define %s (lambda x (apply gimp-proc-db-call (cons \"%s\" x))))"
	.size	.L.str.123, 64

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Procedure argument marshaller was called with no arguments. The procedure to be executed and the arguments it requires (possibly none) must be specified."
	.size	.L.str.124, 154

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Invalid procedure name %s specified"
	.size	.L.str.125, 36

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Invalid number of arguments for %s (expected %d but received %d)"
	.size	.L.str.126, 65

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"INT32 vector (argument %d) for function %s has size of %ld but expected size of %d"
	.size	.L.str.127, 83

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Item %d in vector is not a number (argument %d for function %s)"
	.size	.L.str.128, 64

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"INT16 vector (argument %d) for function %s has size of %ld but expected size of %d"
	.size	.L.str.129, 83

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"INT8 vector (argument %d) for function %s has size of %ld but expected size of %d"
	.size	.L.str.130, 82

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"FLOAT vector (argument %d) for function %s has size of %ld but expected size of %d"
	.size	.L.str.131, 83

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"STRING vector (argument %d) for function %s has length of %d but expected length of %d"
	.size	.L.str.132, 87

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Item %d in vector is not a string (argument %d for function %s)"
	.size	.L.str.133, 64

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"COLOR vector (argument %d) for function %s has size of %ld but expected size of %d"
	.size	.L.str.134, 83

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Item %d in vector is not a color (argument %d for function %s)"
	.size	.L.str.135, 63

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Status is for return types, not arguments"
	.size	.L.str.136, 42

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Argument %d for %s is an unknown type"
	.size	.L.str.137, 38

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Invalid type for argument %d to %s"
	.size	.L.str.138, 35

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Procedure execution of %s did not return a status"
	.size	.L.str.139, 50

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Procedure execution of %s failed: %s"
	.size	.L.str.140, 37

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Procedure execution of %s failed"
	.size	.L.str.141, 33

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Procedure execution of %s failed on invalid input arguments: %s"
	.size	.L.str.142, 64

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Procedure execution of %s failed on invalid input arguments"
	.size	.L.str.143, 60

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.zero	1
	.size	.L.str.144, 1

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Error: null parasite"
	.size	.L.str.145, 21

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Procedure execution returned multiple status values"
	.size	.L.str.146, 52

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Unknown return type"
	.size	.L.str.147, 20

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"rb"
	.size	.L.str.148, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
