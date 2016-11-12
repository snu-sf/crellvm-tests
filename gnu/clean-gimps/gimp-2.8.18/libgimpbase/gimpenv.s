	.text
	.file	"gimpenv.bc"
	.globl	gimp_env_init
	.align	16, 0x90
	.type	gimp_env_init,@function
gimp_env_init:                          # @gimp_env_init
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
	movl	%edi, -4(%rbp)
	callq	g_get_user_data_dir@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, gimp_env_init.gimp_env_initialized(%rip)
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	g_error
.LBB0_2:                                # %if.end
	movl	$1, gimp_env_init.gimp_env_initialized(%rip)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_gimp_reloc_init_lib
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_11
.LBB0_4:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_gimp_reloc_init
	cmpl	$0, %eax
	je	.LBB0_10
# BB#5:                                 # %if.then.6
	leaq	.L.str.1(%rip), %rdi
	callq	g_getenv@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	callq	_gimp_reloc_find_lib_dir
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_8
# BB#7:                                 # %if.then.11
	leaq	.L.str.2(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	g_strconcat@PLT
	leaq	.L.str.1(%rip), %rdi
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	callq	g_setenv@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	g_free@PLT
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	callq	g_setenv@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_9:                                # %if.end.16
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB0_10:                               # %if.end.17
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.18
	movl	$4, %esi
	movq	-16(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#12:                                # %if.then.21
	movl	$448, %esi              # imm = 0x1C0
	movq	-16(%rbp), %rdi
	callq	g_mkdir_with_parents@PLT
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.24
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
.LBB0_14:                               # %if.end.27
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.28
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_env_init, .Lfunc_end0-gimp_env_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB1_3
# BB#2:                                 # %entry
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
.LBB1_3:                                # %entry
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
	leaq	.L.str.20(%rip), %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_1
.Lfunc_end1:
	.size	g_error, .Lfunc_end1-g_error
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
	leaq	.L.str.20(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.globl	gimp_directory
	.align	16, 0x90
	.type	gimp_directory,@function
gimp_directory:                         # @gimp_directory
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
	leaq	.L.str.4(%rip), %rdi
	callq	g_getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, gimp_directory.gimp_dir(%rip)
	je	.LBB3_13
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %land.lhs.true
	movb	$1, %al
	cmpq	$0, gimp_directory.last_env_gimp_dir(%rip)
	movb	%al, -49(%rbp)          # 1-byte Spill
	jne	.LBB3_9
.LBB3_3:                                # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB3_5
# BB#4:                                 # %land.lhs.true.3
	movb	$1, %al
	cmpq	$0, gimp_directory.last_env_gimp_dir(%rip)
	movb	%al, -49(%rbp)          # 1-byte Spill
	je	.LBB3_9
.LBB3_5:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -50(%rbp)          # 1-byte Spill
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true.6
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, gimp_directory.last_env_gimp_dir(%rip)
	movb	%cl, -50(%rbp)          # 1-byte Spill
	je	.LBB3_8
# BB#7:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	movq	gimp_directory.last_env_gimp_dir(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -50(%rbp)          # 1-byte Spill
.LBB3_8:                                # %land.end
	movb	-50(%rbp), %al          # 1-byte Reload
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB3_9:                                # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.11
	movq	gimp_directory.gimp_dir(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_26
.LBB3_11:                               # %if.else
	movq	gimp_directory.gimp_dir(%rip), %rdi
	callq	g_free@PLT
	movq	$0, gimp_directory.gimp_dir(%rip)
# BB#12:                                # %if.end
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.12
	movq	gimp_directory.last_env_gimp_dir(%rip), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, gimp_directory.last_env_gimp_dir(%rip)
	callq	g_get_home_dir@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_21
# BB#14:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	g_path_is_absolute@PLT
	cmpl	$0, %eax
	je	.LBB3_16
# BB#15:                                # %if.then.19
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, gimp_directory.gimp_dir(%rip)
	jmp	.LBB3_20
.LBB3_16:                               # %if.else.21
	cmpq	$0, -24(%rbp)
	je	.LBB3_18
# BB#17:                                # %if.then.23
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, gimp_directory.gimp_dir(%rip)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.25
	callq	gimp_data_directory@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, gimp_directory.gimp_dir(%rip)
.LBB3_19:                               # %if.end.28
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.29
	jmp	.LBB3_25
.LBB3_21:                               # %if.else.30
	cmpq	$0, -24(%rbp)
	je	.LBB3_23
# BB#22:                                # %if.then.32
	leaq	.L.str.5(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, gimp_directory.gimp_dir(%rip)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.34
	callq	g_get_user_name@PLT
	movq	%rax, %rdi
	callq	g_strdup@PLT
	leaq	.L.str.6(%rip), %rdi
	movq	%rax, -40(%rbp)
	movb	$0, %al
	callq	g_message
	leaq	.L.str.7(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat@PLT
	movq	%rax, -48(%rbp)
	callq	gimp_data_directory@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, gimp_directory.gimp_dir(%rip)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
.LBB3_24:                               # %if.end.40
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.41
	movq	gimp_directory.gimp_dir(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB3_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_directory, .Lfunc_end3-gimp_directory
	.cfi_endproc

	.globl	gimp_data_directory
	.align	16, 0x90
	.type	gimp_data_directory,@function
gimp_data_directory:                    # @gimp_data_directory
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
	cmpq	$0, gimp_data_directory.gimp_data_dir(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.9(%rip), %rdi
	callq	_gimp_reloc_find_data_dir
	leaq	.L.str.10(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	gimp_env_get_dir
	movq	%rax, gimp_data_directory.gimp_data_dir(%rip)
	movq	-8(%rbp), %rdi
	callq	g_free@PLT
.LBB4_2:                                # %if.end
	movq	gimp_data_directory.gimp_data_dir(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_data_directory, .Lfunc_end4-gimp_data_directory
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	leaq	.L.str.20(%rip), %rdi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_message, .Lfunc_end5-g_message
	.cfi_endproc

	.globl	gimp_installation_directory
	.align	16, 0x90
	.type	gimp_installation_directory,@function
gimp_installation_directory:            # @gimp_installation_directory
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
	cmpq	$0, gimp_installation_directory.toplevel(%rip)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	gimp_installation_directory.toplevel(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	leaq	.L.str.8(%rip), %rdi
	callq	_gimp_reloc_find_prefix
	movq	%rax, gimp_installation_directory.toplevel(%rip)
	movq	gimp_installation_directory.toplevel(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB6_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_installation_directory, .Lfunc_end6-gimp_installation_directory
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_env_get_dir,@function
gimp_env_get_dir:                       # @gimp_env_get_dir
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_getenv@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	g_path_is_absolute@PLT
	cmpl	$0, %eax
	jne	.LBB7_3
# BB#2:                                 # %if.then.3
	leaq	.L.str.23(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_error
.LBB7_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	-40(%rbp), %rdi
	movq	%rax, -40(%rbp)
	callq	gimp_path_runtime_fix
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_env_get_dir, .Lfunc_end7-gimp_env_get_dir
	.cfi_endproc

	.globl	gimp_locale_directory
	.align	16, 0x90
	.type	gimp_locale_directory,@function
gimp_locale_directory:                  # @gimp_locale_directory
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
	subq	$16, %rsp
	cmpq	$0, gimp_locale_directory.gimp_locale_dir(%rip)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	.L.str.11(%rip), %rdi
	callq	_gimp_reloc_find_locale_dir
	leaq	.L.str.12(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	gimp_env_get_dir
	movq	%rax, gimp_locale_directory.gimp_locale_dir(%rip)
	movq	-8(%rbp), %rdi
	callq	g_free@PLT
.LBB8_2:                                # %if.end
	movq	gimp_locale_directory.gimp_locale_dir(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_locale_directory, .Lfunc_end8-gimp_locale_directory
	.cfi_endproc

	.globl	gimp_sysconf_directory
	.align	16, 0x90
	.type	gimp_sysconf_directory,@function
gimp_sysconf_directory:                 # @gimp_sysconf_directory
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
	subq	$16, %rsp
	cmpq	$0, gimp_sysconf_directory.gimp_sysconf_dir(%rip)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	leaq	.L.str.13(%rip), %rdi
	callq	_gimp_reloc_find_etc_dir
	leaq	.L.str.14(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	gimp_env_get_dir
	movq	%rax, gimp_sysconf_directory.gimp_sysconf_dir(%rip)
	movq	-8(%rbp), %rdi
	callq	g_free@PLT
.LBB9_2:                                # %if.end
	movq	gimp_sysconf_directory.gimp_sysconf_dir(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_sysconf_directory, .Lfunc_end9-gimp_sysconf_directory
	.cfi_endproc

	.globl	gimp_user_directory
	.align	16, 0x90
	.type	gimp_user_directory,@function
gimp_user_directory:                    # @gimp_user_directory
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	g_get_user_special_dir@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_user_directory, .Lfunc_end10-gimp_user_directory
	.cfi_endproc

	.globl	gimp_plug_in_directory
	.align	16, 0x90
	.type	gimp_plug_in_directory,@function
gimp_plug_in_directory:                 # @gimp_plug_in_directory
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
	cmpq	$0, gimp_plug_in_directory.gimp_plug_in_dir(%rip)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	leaq	.L.str.15(%rip), %rdi
	callq	_gimp_reloc_find_plugin_dir
	leaq	.L.str.16(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	gimp_env_get_dir
	movq	%rax, gimp_plug_in_directory.gimp_plug_in_dir(%rip)
	movq	-8(%rbp), %rdi
	callq	g_free@PLT
.LBB11_2:                               # %if.end
	movq	gimp_plug_in_directory.gimp_plug_in_dir(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_directory, .Lfunc_end11-gimp_plug_in_directory
	.cfi_endproc

	.globl	gimp_personal_rc_file
	.align	16, 0x90
	.type	gimp_personal_rc_file,@function
gimp_personal_rc_file:                  # @gimp_personal_rc_file
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
	movq	%rdi, -8(%rbp)
	callq	gimp_directory@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_personal_rc_file, .Lfunc_end12-gimp_personal_rc_file
	.cfi_endproc

	.globl	gimp_gtkrc
	.align	16, 0x90
	.type	gimp_gtkrc,@function
gimp_gtkrc:                             # @gimp_gtkrc
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
	cmpq	$0, gimp_gtkrc.gimp_gtkrc_filename(%rip)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	callq	gimp_data_directory@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	leaq	.L.str.19(%rip), %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, gimp_gtkrc.gimp_gtkrc_filename(%rip)
.LBB13_2:                               # %if.end
	movq	gimp_gtkrc.gimp_gtkrc_filename(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_gtkrc, .Lfunc_end13-gimp_gtkrc
	.cfi_endproc

	.globl	gimp_path_parse
	.align	16, 0x90
	.type	gimp_path_parse,@function
gimp_path_parse:                        # @gimp_path_parse
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -72(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_4
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB14_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$1, -20(%rbp)
	jl	.LBB14_4
# BB#3:                                 # %lor.lhs.false.3
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jle	.LBB14_5
.LBB14_4:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB14_25
.LBB14_5:                               # %if.end
	callq	g_get_home_dir@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	g_strsplit@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB14_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB14_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB14_9
# BB#8:                                 # %if.then.8
	jmp	.LBB14_21
.LBB14_9:                               # %if.end.9
                                        #   in Loop: Header=BB14_6 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	(%rax), %edx
	cmpl	$126, %edx
	jne	.LBB14_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_string_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	g_string_append@PLT
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_12
.LBB14_11:                              # %if.else
                                        #   in Loop: Header=BB14_6 Depth=1
	movslq	-68(%rbp), %rax
	shlq	$3, %rax
	addq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_path_runtime_fix
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi,%rax,8), %rdi
	callq	g_string_new@PLT
	movq	%rax, -80(%rbp)
.LBB14_12:                              # %if.end.24
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB14_14
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$4, %esi
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_file_test@PLT
	movl	%eax, -72(%rbp)
.LBB14_14:                              # %if.end.28
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB14_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB14_19
.LBB14_16:                              # %if.else.34
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_18
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend@PLT
	movq	%rax, -64(%rbp)
.LBB14_18:                              # %if.end.40
                                        #   in Loop: Header=BB14_6 Depth=1
	jmp	.LBB14_19
.LBB14_19:                              # %if.end.41
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB14_6
.LBB14_21:                              # %for.end
	movq	-48(%rbp), %rdi
	callq	g_strfreev@PLT
	movq	-56(%rbp), %rdi
	callq	g_list_reverse@PLT
	movq	%rax, -56(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB14_24
# BB#22:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB14_24
# BB#23:                                # %if.then.46
	movq	-64(%rbp), %rdi
	callq	g_list_reverse@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB14_24:                              # %if.end.48
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_path_parse, .Lfunc_end14-gimp_path_parse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_runtime_fix,@function
gimp_path_runtime_fix:                  # @gimp_path_runtime_fix
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
	leaq	.L.str.22(%rip), %rsi
	movl	$11, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_installation_directory@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	addq	$11, %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rdi
	callq	g_free@PLT
.LBB15_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_path_runtime_fix, .Lfunc_end15-gimp_path_runtime_fix
	.cfi_endproc

	.globl	gimp_path_to_str
	.align	16, 0x90
	.type	gimp_path_to_str,@function
gimp_path_to_str:                       # @gimp_path_to_str
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$58, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_string_append@PLT
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_string_new@PLT
	movq	%rax, -16(%rbp)
.LBB16_5:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_6
.LBB16_6:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_9
.LBB16_8:                               # %cond.false
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_9
.LBB16_9:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_10:                              # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.7
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -32(%rbp)
.LBB16_12:                              # %if.end.9
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_path_to_str, .Lfunc_end16-gimp_path_to_str
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB17_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB17_3
.LBB17_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB17_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	g_string_append_c_inline, .Lfunc_end17-g_string_append_c_inline
	.cfi_endproc

	.globl	gimp_path_free
	.align	16, 0x90
	.type	gimp_path_free,@function
gimp_path_free:                         # @gimp_path_free
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
	movq	g_free@GOTPCREL(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_list_free_full@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_path_free, .Lfunc_end18-gimp_path_free
	.cfi_endproc

	.globl	gimp_path_get_user_writable_dir
	.align	16, 0x90
	.type	gimp_path_get_user_writable_dir,@function
gimp_path_get_user_writable_dir:        # @gimp_path_get_user_writable_dir
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	leaq	.L.str.20(%rip), %rdi
	leaq	.L__func__.gimp_path_get_user_writable_dir(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB19_22
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	callq	geteuid@PLT
	movl	%eax, -28(%rbp)
	callq	getegid@PLT
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
.LBB19_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB19_6 Depth=1
	leaq	-176(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	stat@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jne	.LBB19_16
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-152(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB19_16
# BB#9:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-152(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB19_15
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-152(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB19_12
# BB#11:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB19_15
.LBB19_12:                              # %lor.lhs.false.14
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-152(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB19_16
# BB#13:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-148(%rbp), %eax
	je	.LBB19_16
# BB#14:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-144(%rbp), %eax
	je	.LBB19_16
.LBB19_15:                              # %if.then.23
	movq	-192(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB19_22
.LBB19_16:                              # %if.end.25
                                        #   in Loop: Header=BB19_6 Depth=1
	jmp	.LBB19_17
.LBB19_17:                              # %for.inc
                                        #   in Loop: Header=BB19_6 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB19_20
.LBB19_19:                              # %cond.false
                                        #   in Loop: Header=BB19_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB19_20
.LBB19_20:                              # %cond.end
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB19_6
.LBB19_21:                              # %for.end
	movq	$0, -8(%rbp)
.LBB19_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_path_get_user_writable_dir, .Lfunc_end19-gimp_path_get_user_writable_dir
	.cfi_endproc

	.type	gimp_major_version,@object # @gimp_major_version
	.section	.rodata,"a",@progbits
	.globl	gimp_major_version
	.align	4
gimp_major_version:
	.long	2                       # 0x2
	.size	gimp_major_version, 4

	.type	gimp_minor_version,@object # @gimp_minor_version
	.globl	gimp_minor_version
	.align	4
gimp_minor_version:
	.long	8                       # 0x8
	.size	gimp_minor_version, 4

	.type	gimp_micro_version,@object # @gimp_micro_version
	.globl	gimp_micro_version
	.align	4
gimp_micro_version:
	.long	18                      # 0x12
	.size	gimp_micro_version, 4

	.type	gimp_env_init.gimp_env_initialized,@object # @gimp_env_init.gimp_env_initialized
	.local	gimp_env_init.gimp_env_initialized
	.comm	gimp_env_init.gimp_env_initialized,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp_env_init() must only be called once!"
	.size	.L.str, 42

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LD_LIBRARY_PATH"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	":"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Failed to create the data directory '%s': %s"
	.size	.L.str.3, 45

	.type	gimp_directory.gimp_dir,@object # @gimp_directory.gimp_dir
	.local	gimp_directory.gimp_dir
	.comm	gimp_directory.gimp_dir,8,8
	.type	gimp_directory.last_env_gimp_dir,@object # @gimp_directory.last_env_gimp_dir
	.local	gimp_directory.last_env_gimp_dir
	.comm	gimp_directory.last_env_gimp_dir,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP2_DIRECTORY"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	".gimp-2.8"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"warning: no home directory."
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	".gimp-2.8."
	.size	.L.str.7, 11

	.type	gimp_installation_directory.toplevel,@object # @gimp_installation_directory.toplevel
	.local	gimp_installation_directory.toplevel
	.comm	gimp_installation_directory.toplevel,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/usr/local"
	.size	.L.str.8, 11

	.type	gimp_data_directory.gimp_data_dir,@object # @gimp_data_directory.gimp_data_dir
	.local	gimp_data_directory.gimp_data_dir
	.comm	gimp_data_directory.gimp_data_dir,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/usr/local/share/gimp/2.0"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP2_DATADIR"
	.size	.L.str.10, 14

	.type	gimp_locale_directory.gimp_locale_dir,@object # @gimp_locale_directory.gimp_locale_dir
	.local	gimp_locale_directory.gimp_locale_dir
	.comm	gimp_locale_directory.gimp_locale_dir,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/usr/local/share/locale"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP2_LOCALEDIR"
	.size	.L.str.12, 16

	.type	gimp_sysconf_directory.gimp_sysconf_dir,@object # @gimp_sysconf_directory.gimp_sysconf_dir
	.local	gimp_sysconf_directory.gimp_sysconf_dir
	.comm	gimp_sysconf_directory.gimp_sysconf_dir,8,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/usr/local/etc/gimp/2.0"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP2_SYSCONFDIR"
	.size	.L.str.14, 17

	.type	gimp_plug_in_directory.gimp_plug_in_dir,@object # @gimp_plug_in_directory.gimp_plug_in_dir
	.local	gimp_plug_in_directory.gimp_plug_in_dir
	.comm	gimp_plug_in_directory.gimp_plug_in_dir,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/usr/local/lib/gimp/2.0"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP2_PLUGINDIR"
	.size	.L.str.16, 16

	.type	gimp_gtkrc.gimp_gtkrc_filename,@object # @gimp_gtkrc.gimp_gtkrc_filename
	.local	gimp_gtkrc.gimp_gtkrc_filename
	.comm	gimp_gtkrc.gimp_gtkrc_filename,8,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"themes"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Default"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gtkrc"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"LibGimpBase"
	.size	.L.str.20, 12

	.type	.L__func__.gimp_path_get_user_writable_dir,@object # @__func__.gimp_path_get_user_writable_dir
.L__func__.gimp_path_get_user_writable_dir:
	.asciz	"gimp_path_get_user_writable_dir"
	.size	.L__func__.gimp_path_get_user_writable_dir, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"path != NULL"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/usr/local/"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s environment variable should be an absolute path."
	.size	.L.str.23, 52

	.hidden	_gimp_reloc_init_lib
	.hidden	_gimp_reloc_init
	.hidden	_gimp_reloc_find_lib_dir
	.hidden	_gimp_reloc_find_prefix
	.hidden	_gimp_reloc_find_data_dir
	.hidden	_gimp_reloc_find_locale_dir
	.hidden	_gimp_reloc_find_etc_dir
	.hidden	_gimp_reloc_find_plugin_dir

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
