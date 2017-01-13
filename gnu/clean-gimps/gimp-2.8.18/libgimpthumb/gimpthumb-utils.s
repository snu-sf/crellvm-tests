	.text
	.file	"gimpthumb-utils.bc"
	.globl	gimp_thumb_init
	.align	16, 0x90
	.type	gimp_thumb_init,@function
gimp_thumb_init:                        # @gimp_thumb_init
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_init(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute@PLT
	cmpl	$0, %eax
	je	.LBB0_9
.LBB0_8:                                # %if.then.3
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_init(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_10:                               # %if.end.5
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.6
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB0_13
# BB#12:                                # %if.then.8
	callq	gimp_thumb_exit
.LBB0_13:                               # %if.end.9
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.11
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, thumb_dir(%rip)
	jmp	.LBB0_21
.LBB0_15:                               # %if.else.13
	callq	g_get_home_dir@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true
	movl	$4, %esi
	movq	-56(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.18
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, thumb_dir(%rip)
.LBB0_18:                               # %if.end.20
	cmpq	$0, thumb_dir(%rip)
	jne	.LBB0_20
# BB#19:                                # %if.then.22
	callq	g_get_tmp_dir@PLT
	movq	%rax, %rdi
	callq	g_filename_display_name@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, -64(%rbp)
	callq	dgettext@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	callq	g_get_tmp_dir@PLT
	leaq	.L.str.3(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, thumb_dir(%rip)
.LBB0_20:                               # %if.end.28
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.29
	callq	gimp_thumb_size_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_ref@PLT
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, thumb_num_sizes(%rip)
	movslq	thumb_num_sizes(%rip), %rdi
	callq	g_malloc_n@PLT
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, thumb_sizes(%rip)
	movslq	thumb_num_sizes(%rip), %rdi
	callq	g_malloc_n@PLT
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, thumb_sizenames(%rip)
	movslq	thumb_num_sizes(%rip), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, thumb_subdirs(%rip)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB0_22:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	.LBB0_25
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	movslq	-44(%rbp), %rcx
	movq	thumb_sizes(%rip), %rsi
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-44(%rbp), %rsi
	movq	thumb_sizenames(%rip), %rdi
	movq	%rcx, (%rdi,%rsi,8)
	movq	thumb_dir(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movslq	-44(%rbp), %rcx
	movq	thumb_subdirs(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB0_22
.LBB0_25:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	thumb_subdirs(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, thumb_fail_subdir(%rip)
	movq	thumb_fail_subdir(%rip), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	thumb_subdirs(%rip), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	movl	$1, gimp_thumb_initialized(%rip)
	movl	gimp_thumb_initialized(%rip), %r8d
	movl	%r8d, -4(%rbp)
.LBB0_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_thumb_init, .Lfunc_end0-gimp_thumb_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_exit,@function
gimp_thumb_exit:                        # @gimp_thumb_exit
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
	movq	thumb_dir(%rip), %rdi
	callq	g_free@PLT
	movq	thumb_sizes(%rip), %rdi
	callq	g_free@PLT
	movq	thumb_sizenames(%rip), %rdi
	callq	g_free@PLT
	movl	$0, -4(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	thumb_subdirs(%rip), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free@PLT
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	thumb_subdirs(%rip), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	thumb_fail_subdir(%rip), %rdi
	callq	g_free@PLT
	movl	$0, thumb_num_sizes(%rip)
	movq	$0, thumb_sizes(%rip)
	movq	$0, thumb_sizenames(%rip)
	movq	$0, thumb_dir(%rip)
	movq	$0, thumb_subdirs(%rip)
	movq	$0, thumb_fail_subdir(%rip)
	movl	$0, gimp_thumb_initialized(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_thumb_exit, .Lfunc_end1-gimp_thumb_exit
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	leaq	.L.str(%rip), %rdi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_message, .Lfunc_end2-g_message
	.cfi_endproc

	.globl	gimp_thumb_get_thumb_dir
	.align	16, 0x90
	.type	gimp_thumb_get_thumb_dir,@function
gimp_thumb_get_thumb_dir:               # @gimp_thumb_get_thumb_dir
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
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_get_thumb_dir(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	-12(%rbp), %edi
	callq	gimp_thumb_size
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_subdirs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_thumb_get_thumb_dir, .Lfunc_end3-gimp_thumb_get_thumb_dir
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_size,@function
gimp_thumb_size:                        # @gimp_thumb_size
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
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jbe	.LBB4_10
# BB#1:                                 # %if.then
	movl	$1, -8(%rbp)
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-8(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jge	.LBB4_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB4_2 Depth=1
	movslq	-8(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-4(%rbp), %edx
	setb	%sil
	movb	%sil, -9(%rbp)          # 1-byte Spill
.LBB4_4:                                # %land.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_7
.LBB4_5:                                # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	jmp	.LBB4_6
.LBB4_6:                                # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_2
.LBB4_7:                                # %for.end
	movl	-8(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jne	.LBB4_9
# BB#8:                                 # %if.then.4
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
.LBB4_9:                                # %if.end
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.5
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_thumb_size, .Lfunc_end4-gimp_thumb_size
	.cfi_endproc

	.globl	gimp_thumb_get_thumb_dir_local
	.align	16, 0x90
	.type	gimp_thumb_get_thumb_dir_local,@function
gimp_thumb_get_thumb_dir_local:         # @gimp_thumb_get_thumb_dir_local
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_get_thumb_dir_local(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_16
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.2
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_get_thumb_dir_local(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_16
.LBB5_9:                                # %if.end.4
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.5
	jmp	.LBB5_11
.LBB5_11:                               # %do.body.6
	cmpl	$0, -20(%rbp)
	jbe	.LBB5_13
# BB#12:                                # %if.then.8
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_get_thumb_dir_local(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_16
.LBB5_14:                               # %if.end.10
	jmp	.LBB5_15
.LBB5_15:                               # %do.end.11
	movl	-20(%rbp), %edi
	callq	gimp_thumb_size
	xorl	%edi, %edi
	movl	%edi, %edx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_sizenames(%rip), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -8(%rbp)
.LBB5_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_thumb_get_thumb_dir_local, .Lfunc_end5-gimp_thumb_get_thumb_dir_local
	.cfi_endproc

	.globl	gimp_thumb_ensure_thumb_dir
	.align	16, 0x90
	.type	gimp_thumb_ensure_thumb_dir,@function
gimp_thumb_ensure_thumb_dir:            # @gimp_thumb_ensure_thumb_dir
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_21
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB6_8
# BB#7:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_9
.LBB6_8:                                # %if.then.3
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_21
.LBB6_10:                               # %if.end.5
	jmp	.LBB6_11
.LBB6_11:                               # %do.end.6
	movl	-8(%rbp), %edi
	callq	gimp_thumb_size
	movl	$4, %esi
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_subdirs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB6_13
# BB#12:                                # %if.then.9
	movl	$1, -4(%rbp)
	jmp	.LBB6_21
.LBB6_13:                               # %if.end.10
	movl	$4, %esi
	movq	thumb_dir(%rip), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	jne	.LBB6_15
# BB#14:                                # %lor.lhs.false.13
	movl	$448, %esi              # imm = 0x1C0
	movq	thumb_dir(%rip), %rdi
	callq	g_mkdir_with_parents@PLT
	cmpl	$0, %eax
	jne	.LBB6_18
.LBB6_15:                               # %if.then.16
	cmpl	$0, -8(%rbp)
	jne	.LBB6_17
# BB#16:                                # %if.then.18
	movl	$448, %esi              # imm = 0x1C0
	movq	thumb_fail_subdir(%rip), %rdi
	callq	g_mkdir_with_parents@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB6_17:                               # %if.end.20
	movl	$448, %esi              # imm = 0x1C0
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_subdirs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_mkdir_with_parents@PLT
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB6_18:                               # %if.end.24
	movl	$4, %esi
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_subdirs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB6_20
# BB#19:                                # %if.then.29
	movl	$1, -4(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.end.30
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_thumb_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movl	$2, %edx
	movl	-8(%rbp), %ecx
	movl	%ecx, %esi
	movq	thumb_subdirs(%rip), %rdi
	movq	(%rdi,%rsi,8), %r8
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error@PLT
	movl	$0, -4(%rbp)
.LBB6_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_thumb_ensure_thumb_dir, .Lfunc_end6-gimp_thumb_ensure_thumb_dir
	.cfi_endproc

	.globl	gimp_thumb_ensure_thumb_dir_local
	.align	16, 0x90
	.type	gimp_thumb_ensure_thumb_dir_local,@function
gimp_thumb_ensure_thumb_dir_local:      # @gimp_thumb_ensure_thumb_dir_local
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir_local(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_34
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.2
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir_local(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_34
.LBB7_9:                                # %if.end.4
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.5
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.6
	movq	-16(%rbp), %rdi
	callq	g_path_is_absolute@PLT
	cmpl	$0, %eax
	je	.LBB7_13
# BB#12:                                # %if.then.8
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir_local(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_34
.LBB7_14:                               # %if.end.10
	jmp	.LBB7_15
.LBB7_15:                               # %do.end.11
	jmp	.LBB7_16
.LBB7_16:                               # %do.body.12
	cmpl	$0, -20(%rbp)
	jbe	.LBB7_18
# BB#17:                                # %if.then.14
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir_local(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_34
.LBB7_19:                               # %if.end.16
	jmp	.LBB7_20
.LBB7_20:                               # %do.end.17
	jmp	.LBB7_21
.LBB7_21:                               # %do.body.18
	cmpq	$0, -32(%rbp)
	je	.LBB7_23
# BB#22:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_24
.LBB7_23:                               # %if.then.21
	jmp	.LBB7_25
.LBB7_24:                               # %if.else.22
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_ensure_thumb_dir_local(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_34
.LBB7_25:                               # %if.end.23
	jmp	.LBB7_26
.LBB7_26:                               # %do.end.24
	movl	-20(%rbp), %edi
	callq	gimp_thumb_size
	leaq	.L.str.12(%rip), %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	thumb_sizenames(%rip), %r8
	movq	(%r8,%rdx,8), %rdx
	movb	$0, %al
	callq	g_build_filename@PLT
	movl	$4, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB7_28
# BB#27:                                # %if.then.29
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB7_34
.LBB7_28:                               # %if.end.30
	leaq	.L.str.12(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movl	$4, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	jne	.LBB7_30
# BB#29:                                # %lor.lhs.false.34
	movl	$448, %esi              # imm = 0x1C0
	movq	thumb_dir(%rip), %rdi
	callq	mkdir@PLT
	cmpl	$0, %eax
	jne	.LBB7_31
.LBB7_30:                               # %if.then.37
	movl	$448, %esi              # imm = 0x1C0
	movq	-48(%rbp), %rdi
	callq	mkdir@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_31:                               # %if.end.39
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	$4, %esi
	movq	-48(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB7_33
# BB#32:                                # %if.then.42
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB7_34
.LBB7_33:                               # %if.end.43
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_thumb_error_quark@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	movl	$2, %edx
	movq	-48(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movl	$0, -4(%rbp)
.LBB7_34:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_thumb_ensure_thumb_dir_local, .Lfunc_end7-gimp_thumb_ensure_thumb_dir_local
	.cfi_endproc

	.globl	gimp_thumb_name_from_uri
	.align	16, 0x90
	.type	gimp_thumb_name_from_uri,@function
gimp_thumb_name_from_uri:               # @gimp_thumb_name_from_uri
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_name_from_uri(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.2
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_name_from_uri(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_9:                                # %if.end.4
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.5
	movq	-16(%rbp), %rdi
	movq	thumb_dir(%rip), %rsi
	callq	strstr@PLT
	cmpq	$0, %rax
	je	.LBB8_12
# BB#11:                                # %if.then.7
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_12:                               # %if.end.8
	movl	-20(%rbp), %edi
	callq	gimp_thumb_size
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	thumb_subdirs(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_thumb_png_name
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_thumb_name_from_uri, .Lfunc_end8-gimp_thumb_name_from_uri
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_png_name,@function
gimp_thumb_png_name:                    # @gimp_thumb_png_name
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	$16, -40(%rbp)
	movl	%eax, %edi
	callq	g_checksum_new@PLT
	movq	$-1, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	g_checksum_update@PLT
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	g_checksum_get_digest@PLT
	movq	-16(%rbp), %rdi
	callq	g_checksum_free@PLT
	movq	$0, -48(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB9_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	-32(%rbp,%rax), %ecx
	sarl	$4, %ecx
	andl	$15, %ecx
	movb	%cl, %dl
	movb	%dl, -49(%rbp)
	movzbl	-49(%rbp), %ecx
	cmpl	$9, %ecx
	jle	.LBB9_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	-49(%rbp), %eax
	addl	$97, %eax
	subl	$10, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	-49(%rbp), %eax
	addl	$48, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB9_5:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	leaq	gimp_thumb_png_name.name(%rip), %rcx
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movb	%dl, (%rcx,%rsi)
	movq	-48(%rbp), %rcx
	movzbl	-32(%rbp,%rcx), %eax
	andl	$15, %eax
	movb	%al, %dl
	movb	%dl, -49(%rbp)
	movzbl	-49(%rbp), %eax
	cmpl	$9, %eax
	jle	.LBB9_7
# BB#6:                                 # %cond.true.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	-49(%rbp), %eax
	addl	$97, %eax
	subl	$10, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %cond.false.21
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	-49(%rbp), %eax
	addl	$48, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB9_8:                                # %cond.end.24
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	leaq	gimp_thumb_png_name.name(%rip), %rcx
	movb	%al, %dl
	movq	-48(%rbp), %rsi
	shlq	$1, %rsi
	movb	%dl, 1(%rcx,%rsi)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_1
.LBB9_10:                               # %for.end
	leaq	gimp_thumb_png_name.name(%rip), %rax
	addq	$32, %rax
	leaq	.L.str.20(%rip), %rsi
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	strncpy@PLT
	leaq	gimp_thumb_png_name.name(%rip), %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_thumb_png_name, .Lfunc_end9-gimp_thumb_png_name
	.cfi_endproc

	.globl	gimp_thumb_name_from_uri_local
	.align	16, 0x90
	.type	gimp_thumb_name_from_uri_local,@function
gimp_thumb_name_from_uri_local:         # @gimp_thumb_name_from_uri_local
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_name_from_uri_local(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_24
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.2
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_name_from_uri_local(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_24
.LBB10_9:                               # %if.end.4
	jmp	.LBB10_10
.LBB10_10:                              # %do.end.5
	jmp	.LBB10_11
.LBB10_11:                              # %do.body.6
	cmpl	$0, -20(%rbp)
	jbe	.LBB10_13
# BB#12:                                # %if.then.8
	jmp	.LBB10_14
.LBB10_13:                              # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_name_from_uri_local(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_24
.LBB10_14:                              # %if.end.10
	jmp	.LBB10_15
.LBB10_15:                              # %do.end.11
	movq	-16(%rbp), %rdi
	movq	thumb_dir(%rip), %rsi
	callq	strstr@PLT
	cmpq	$0, %rax
	je	.LBB10_17
# BB#16:                                # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB10_24
.LBB10_17:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	_gimp_thumb_filename_from_uri
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_23
# BB#18:                                # %if.then.17
	movl	$47, %esi
	movq	-16(%rbp), %rdi
	callq	strrchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_22
# BB#19:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_22
# BB#20:                                # %land.lhs.true.21
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_22
# BB#21:                                # %if.then.25
	movq	-32(%rbp), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_thumb_size
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	movslq	-60(%rbp), %rcx
	movq	thumb_sizenames(%rip), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	-16(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_thumb_png_name
	leaq	.L.str.12(%rip), %rsi
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB10_22:                              # %if.end.31
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB10_23:                              # %if.end.32
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_thumb_name_from_uri_local, .Lfunc_end10-gimp_thumb_name_from_uri_local
	.cfi_endproc

	.hidden	_gimp_thumb_filename_from_uri
	.globl	_gimp_thumb_filename_from_uri
	.align	16, 0x90
	.type	_gimp_thumb_filename_from_uri,@function
_gimp_thumb_filename_from_uri:          # @_gimp_thumb_filename_from_uri
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_thumb_filename_from_uri(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB11_10
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	leaq	-32(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	g_filename_from_uri@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_7
# BB#6:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB11_10
.LBB11_7:                               # %if.end.2
	cmpq	$0, -32(%rbp)
	je	.LBB11_9
# BB#8:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB11_9:                               # %if.end.5
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gimp_thumb_filename_from_uri, .Lfunc_end11-_gimp_thumb_filename_from_uri
	.cfi_endproc

	.globl	gimp_thumb_find_thumb
	.align	16, 0x90
	.type	gimp_thumb_find_thumb,@function
gimp_thumb_find_thumb:                  # @gimp_thumb_find_thumb
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_find_thumb(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.2
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_find_thumb(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_9:                               # %if.end.4
	jmp	.LBB12_10
.LBB12_10:                              # %do.end.5
	jmp	.LBB12_11
.LBB12_11:                              # %do.body.6
	cmpq	$0, -24(%rbp)
	je	.LBB12_13
# BB#12:                                # %if.then.8
	jmp	.LBB12_14
.LBB12_13:                              # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_find_thumb(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_14:                              # %if.end.10
	jmp	.LBB12_15
.LBB12_15:                              # %do.end.11
	jmp	.LBB12_16
.LBB12_16:                              # %do.body.12
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	jbe	.LBB12_18
# BB#17:                                # %if.then.14
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_find_thumb(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_29
.LBB12_19:                              # %if.end.16
	jmp	.LBB12_20
.LBB12_20:                              # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_thumb_png_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_thumb_png_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_28
# BB#21:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	_gimp_thumb_filename_from_uri
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_27
# BB#22:                                # %if.then.23
	movl	$47, %esi
	movq	-16(%rbp), %rdi
	callq	strrchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_26
# BB#23:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB12_26
# BB#24:                                # %land.lhs.true.27
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB12_26
# BB#25:                                # %if.then.31
	movq	-40(%rbp), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	gimp_thumb_png_name
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_thumb_png_lookup
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB12_26:                              # %if.end.35
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
.LBB12_27:                              # %if.end.36
	jmp	.LBB12_28
.LBB12_28:                              # %if.end.37
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_thumb_find_thumb, .Lfunc_end12-gimp_thumb_find_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_png_lookup,@function
gimp_thumb_png_lookup:                  # @gimp_thumb_png_lookup
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_8
# BB#1:                                 # %if.then
	leaq	.L.str.12(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_build_filename@PLT
	movl	$4, %esi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB13_7
# BB#2:                                 # %if.then.3
	movl	$8, %eax
	movl	%eax, %esi
	movslq	thumb_num_sizes(%rip), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -68(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB13_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	movq	thumb_sizenames(%rip), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movslq	-68(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
	jmp	.LBB13_7
.LBB13_7:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB13_9
.LBB13_8:                               # %if.else
	movq	thumb_subdirs(%rip), %rax
	movq	%rax, -48(%rbp)
.LBB13_9:                               # %if.end.11
	cmpq	$0, -48(%rbp)
	jne	.LBB13_11
# BB#10:                                # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB13_35
.LBB13_11:                              # %if.end.14
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_thumb_size
	movl	%eax, -56(%rbp)
	movl	%eax, -52(%rbp)
.LBB13_12:                              # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB13_19
# BB#13:                                # %for.body.19
                                        #   in Loop: Header=BB13_12 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB13_12 Depth=1
	jmp	.LBB13_18
.LBB13_15:                              # %if.end.24
                                        #   in Loop: Header=BB13_12 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_thumb_file_test@PLT
	cmpl	$1, %eax
	jne	.LBB13_17
# BB#16:                                # %if.then.31
	movslq	-52(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.LBB13_28
.LBB13_17:                              # %if.end.34
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
.LBB13_18:                              # %for.inc.35
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_12
.LBB13_19:                              # %for.end.37
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB13_20:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jl	.LBB13_27
# BB#21:                                # %for.body.41
                                        #   in Loop: Header=BB13_20 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB13_23
# BB#22:                                # %if.then.45
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_26
.LBB13_23:                              # %if.end.46
                                        #   in Loop: Header=BB13_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_thumb_file_test@PLT
	cmpl	$1, %eax
	jne	.LBB13_25
# BB#24:                                # %if.then.53
	movslq	-52(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.LBB13_28
.LBB13_25:                              # %if.end.56
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
.LBB13_26:                              # %for.inc.57
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_20
.LBB13_27:                              # %for.end.58
	movq	$0, -40(%rbp)
.LBB13_28:                              # %finish
	cmpq	$0, -24(%rbp)
	je	.LBB13_34
# BB#29:                                # %if.then.60
	movl	$0, -52(%rbp)
.LBB13_30:                              # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB13_33
# BB#31:                                # %for.body.64
                                        #   in Loop: Header=BB13_30 Depth=1
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free@PLT
# BB#32:                                # %for.inc.67
                                        #   in Loop: Header=BB13_30 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_30
.LBB13_33:                              # %for.end.69
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB13_34:                              # %if.end.70
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_thumb_png_lookup, .Lfunc_end13-gimp_thumb_png_lookup
	.cfi_endproc

	.globl	gimp_thumb_file_test
	.align	16, 0x90
	.type	gimp_thumb_file_test,@function
gimp_thumb_file_test:                   # @gimp_thumb_file_test
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumb_file_test(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB14_25
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	g_file_new_for_path@PLT
	leaq	.L.str.17(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB14_17
# BB#6:                                 # %if.then.2
	cmpq	$0, -24(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.4
	leaq	.L.str.18(%rip), %rsi
	movq	-64(%rbp), %rdi
	callq	g_file_info_get_attribute_uint64@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB14_8:                               # %if.end.6
	cmpq	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	movq	-64(%rbp), %rdi
	callq	g_file_info_get_size@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB14_10:                              # %if.end.10
	cmpq	$0, -40(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.12
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB14_12:                              # %if.end.13
	movq	-64(%rbp), %rdi
	leaq	.L.str.19(%rip), %rsi
	callq	g_file_info_get_attribute_uint32@PLT
	movl	%eax, %ecx
	subl	$1, %eax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB14_13
	jmp	.LBB14_26
.LBB14_26:                              # %if.end.13
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_14
	jmp	.LBB14_15
.LBB14_13:                              # %sw.bb
	movl	$1, -44(%rbp)
	jmp	.LBB14_16
.LBB14_14:                              # %sw.bb.15
	movl	$2, -44(%rbp)
	jmp	.LBB14_16
.LBB14_15:                              # %sw.default
	movl	$3, -44(%rbp)
.LBB14_16:                              # %sw.epilog
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	jmp	.LBB14_24
.LBB14_17:                              # %if.else.16
	cmpq	$0, -24(%rbp)
	je	.LBB14_19
# BB#18:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB14_19:                              # %if.end.19
	cmpq	$0, -32(%rbp)
	je	.LBB14_21
# BB#20:                                # %if.then.21
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.LBB14_21:                              # %if.end.22
	cmpq	$0, -40(%rbp)
	je	.LBB14_23
# BB#22:                                # %if.then.24
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
.LBB14_23:                              # %if.end.25
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.26
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	-44(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_thumb_file_test, .Lfunc_end14-gimp_thumb_file_test
	.cfi_endproc

	.globl	gimp_thumbs_delete_for_uri
	.align	16, 0x90
	.type	gimp_thumbs_delete_for_uri,@function
gimp_thumbs_delete_for_uri:             # @gimp_thumbs_delete_for_uri
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumbs_delete_for_uri(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_16
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB15_8
# BB#7:                                 # %if.then.2
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumbs_delete_for_uri(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_16
.LBB15_9:                               # %if.end.4
	jmp	.LBB15_10
.LBB15_10:                              # %do.end.5
	movl	$0, -12(%rbp)
.LBB15_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB15_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB15_11 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB15_14
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB15_11 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_unlink@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB15_14:                              # %if.end.10
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %for.inc
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_11
.LBB15_16:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_thumbs_delete_for_uri, .Lfunc_end15-gimp_thumbs_delete_for_uri
	.cfi_endproc

	.globl	gimp_thumbs_delete_for_uri_local
	.align	16, 0x90
	.type	gimp_thumbs_delete_for_uri_local,@function
gimp_thumbs_delete_for_uri_local:       # @gimp_thumbs_delete_for_uri_local
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumbs_delete_for_uri_local(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_16
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.2
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_thumbs_delete_for_uri_local(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_16
.LBB16_9:                               # %if.end.4
	jmp	.LBB16_10
.LBB16_10:                              # %do.end.5
	movl	$0, -12(%rbp)
.LBB16_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB16_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB16_11 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_thumb_name_from_uri_local@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB16_14
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB16_11 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_unlink@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB16_14:                              # %if.end.10
                                        #   in Loop: Header=BB16_11 Depth=1
	jmp	.LBB16_15
.LBB16_15:                              # %for.inc
                                        #   in Loop: Header=BB16_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_11
.LBB16_16:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_thumbs_delete_for_uri_local, .Lfunc_end16-gimp_thumbs_delete_for_uri_local
	.cfi_endproc

	.hidden	_gimp_thumbs_delete_others
	.globl	_gimp_thumbs_delete_others
	.align	16, 0x90
	.type	_gimp_thumbs_delete_others,@function
_gimp_thumbs_delete_others:             # @_gimp_thumbs_delete_others
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, gimp_thumb_initialized(%rip)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_thumbs_delete_others(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB17_18
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	jmp	.LBB17_6
.LBB17_6:                               # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.2
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_thumbs_delete_others(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB17_18
.LBB17_9:                               # %if.end.4
	jmp	.LBB17_10
.LBB17_10:                              # %do.end.5
	movl	-12(%rbp), %edi
	callq	gimp_thumb_size
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB17_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	thumb_num_sizes(%rip), %eax
	jge	.LBB17_18
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB17_14
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB17_11 Depth=1
	jmp	.LBB17_17
.LBB17_14:                              # %if.end.9
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rax
	movq	thumb_sizes(%rip), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_16
# BB#15:                                # %if.then.12
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_unlink@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB17_16:                              # %if.end.14
                                        #   in Loop: Header=BB17_11 Depth=1
	jmp	.LBB17_17
.LBB17_17:                              # %for.inc
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB17_11
.LBB17_18:                              # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	_gimp_thumbs_delete_others, .Lfunc_end17-_gimp_thumbs_delete_others
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpThumb"
	.size	.L.str, 13

	.type	.L__func__.gimp_thumb_init,@object # @__func__.gimp_thumb_init
.L__func__.gimp_thumb_init:
	.asciz	"gimp_thumb_init"
	.size	.L__func__.gimp_thumb_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"creator != NULL"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"thumb_basedir == NULL || g_path_is_absolute (thumb_basedir)"
	.size	.L.str.2, 60

	.type	gimp_thumb_initialized,@object # @gimp_thumb_initialized
	.local	gimp_thumb_initialized
	.comm	gimp_thumb_initialized,4,4
	.type	thumb_dir,@object       # @thumb_dir
	.local	thumb_dir
	.comm	thumb_dir,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	".thumbnails"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp20-libgimp"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Cannot determine a valid home directory.\nThumbnails will be stored in the folder for temporary files (%s) instead."
	.size	.L.str.5, 115

	.type	thumb_num_sizes,@object # @thumb_num_sizes
	.local	thumb_num_sizes
	.comm	thumb_num_sizes,4,4
	.type	thumb_sizes,@object     # @thumb_sizes
	.local	thumb_sizes
	.comm	thumb_sizes,8,8
	.type	thumb_sizenames,@object # @thumb_sizenames
	.local	thumb_sizenames
	.comm	thumb_sizenames,8,8
	.type	thumb_subdirs,@object   # @thumb_subdirs
	.local	thumb_subdirs
	.comm	thumb_subdirs,8,8
	.type	thumb_fail_subdir,@object # @thumb_fail_subdir
	.local	thumb_fail_subdir
	.comm	thumb_fail_subdir,8,8
	.type	.L__func__.gimp_thumb_get_thumb_dir,@object # @__func__.gimp_thumb_get_thumb_dir
.L__func__.gimp_thumb_get_thumb_dir:
	.asciz	"gimp_thumb_get_thumb_dir"
	.size	.L__func__.gimp_thumb_get_thumb_dir, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_thumb_initialized"
	.size	.L.str.6, 23

	.type	.L__func__.gimp_thumb_get_thumb_dir_local,@object # @__func__.gimp_thumb_get_thumb_dir_local
.L__func__.gimp_thumb_get_thumb_dir_local:
	.asciz	"gimp_thumb_get_thumb_dir_local"
	.size	.L__func__.gimp_thumb_get_thumb_dir_local, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dirname != NULL"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"size > GIMP_THUMB_SIZE_FAIL"
	.size	.L.str.8, 28

	.type	.L__func__.gimp_thumb_ensure_thumb_dir,@object # @__func__.gimp_thumb_ensure_thumb_dir
.L__func__.gimp_thumb_ensure_thumb_dir:
	.asciz	"gimp_thumb_ensure_thumb_dir"
	.size	.L__func__.gimp_thumb_ensure_thumb_dir, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Failed to create thumbnail folder '%s'."
	.size	.L.str.10, 40

	.type	.L__func__.gimp_thumb_ensure_thumb_dir_local,@object # @__func__.gimp_thumb_ensure_thumb_dir_local
.L__func__.gimp_thumb_ensure_thumb_dir_local:
	.asciz	"gimp_thumb_ensure_thumb_dir_local"
	.size	.L__func__.gimp_thumb_ensure_thumb_dir_local, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"g_path_is_absolute (dirname)"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	".thumblocal"
	.size	.L.str.12, 12

	.type	.L__func__.gimp_thumb_name_from_uri,@object # @__func__.gimp_thumb_name_from_uri
.L__func__.gimp_thumb_name_from_uri:
	.asciz	"gimp_thumb_name_from_uri"
	.size	.L__func__.gimp_thumb_name_from_uri, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"uri != NULL"
	.size	.L.str.13, 12

	.type	.L__func__.gimp_thumb_name_from_uri_local,@object # @__func__.gimp_thumb_name_from_uri_local
.L__func__.gimp_thumb_name_from_uri_local:
	.asciz	"gimp_thumb_name_from_uri_local"
	.size	.L__func__.gimp_thumb_name_from_uri_local, 31

	.type	.L__func__.gimp_thumb_find_thumb,@object # @__func__.gimp_thumb_find_thumb
.L__func__.gimp_thumb_find_thumb:
	.asciz	"gimp_thumb_find_thumb"
	.size	.L__func__.gimp_thumb_find_thumb, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"size != NULL"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"*size > GIMP_THUMB_SIZE_FAIL"
	.size	.L.str.15, 29

	.type	.L__func__.gimp_thumb_file_test,@object # @__func__.gimp_thumb_file_test
.L__func__.gimp_thumb_file_test:
	.asciz	"gimp_thumb_file_test"
	.size	.L__func__.gimp_thumb_file_test, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"filename != NULL"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"standard::type,standard::size,time::modified"
	.size	.L.str.17, 45

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"time::modified"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"standard::type"
	.size	.L.str.19, 15

	.type	.L__func__.gimp_thumbs_delete_for_uri,@object # @__func__.gimp_thumbs_delete_for_uri
.L__func__.gimp_thumbs_delete_for_uri:
	.asciz	"gimp_thumbs_delete_for_uri"
	.size	.L__func__.gimp_thumbs_delete_for_uri, 27

	.type	.L__func__.gimp_thumbs_delete_for_uri_local,@object # @__func__.gimp_thumbs_delete_for_uri_local
.L__func__.gimp_thumbs_delete_for_uri_local:
	.asciz	"gimp_thumbs_delete_for_uri_local"
	.size	.L__func__.gimp_thumbs_delete_for_uri_local, 33

	.type	.L__func__._gimp_thumbs_delete_others,@object # @__func__._gimp_thumbs_delete_others
.L__func__._gimp_thumbs_delete_others:
	.asciz	"_gimp_thumbs_delete_others"
	.size	.L__func__._gimp_thumbs_delete_others, 27

	.type	.L__func__._gimp_thumb_filename_from_uri,@object # @__func__._gimp_thumb_filename_from_uri
.L__func__._gimp_thumb_filename_from_uri:
	.asciz	"_gimp_thumb_filename_from_uri"
	.size	.L__func__._gimp_thumb_filename_from_uri, 30

	.type	gimp_thumb_png_name.name,@object # @gimp_thumb_png_name.name
	.local	gimp_thumb_png_name.name
	.comm	gimp_thumb_png_name.name,40,16
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	".png"
	.size	.L.str.20, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
