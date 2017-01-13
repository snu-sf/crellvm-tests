	.text
	.file	"gimp-fonts.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gimp_fonts_init
	.align	16, 0x90
	.type	gimp_fonts_init,@function
gimp_fonts_init:                        # @gimp_fonts_init
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_fonts_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_font_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 456(%rcx)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_fonts_load, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_fonts_init, .Lfunc_end0-gimp_fonts_init
	.cfi_endproc

	.globl	gimp_fonts_load
	.align	16, 0x90
	.type	gimp_fonts_load,@function
gimp_fonts_load:                        # @gimp_fonts_load
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
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_fonts_load_with_status
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_fonts_load, .Lfunc_end1-gimp_fonts_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4681608360884174848     # double 1.0E+5
.LCPI2_1:
	.quad	4603579539098121011     # double 0.59999999999999998
	.text
	.globl	gimp_fonts_load_with_status
	.align	16, 0x90
	.type	gimp_fonts_load_with_status,@function
gimp_fonts_load_with_status:            # @gimp_fonts_load_with_status
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_font_list_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_fonts_load_with_status, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_30
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_set_busy
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	je	.LBB2_14
# BB#13:                                # %if.then.12
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_print
.LBB2_14:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_clear
	callq	FcInitLoadConfig
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.22
	jmp	.LBB2_29
.LBB2_16:                               # %if.end.23
	movabsq	$.L.str.6, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_fonts_load_fonts_conf
	cmpl	$0, %eax
	jne	.LBB2_18
# BB#17:                                # %if.then.27
	jmp	.LBB2_29
.LBB2_18:                               # %if.end.28
	callq	gimp_sysconf_directory
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_fonts_load_fonts_conf
	cmpl	$0, %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.33
	jmp	.LBB2_29
.LBB2_20:                               # %if.end.34
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	200(%rcx), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_fonts_add_directories
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	je	.LBB2_27
# BB#21:                                # %if.then.38
	leaq	-120(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_mutex_init
	leaq	-120(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	g_cond_init
	movabsq	$.L.str.7, %rdi
	movabsq	$gimp_fonts_load_thread, %rax
	leaq	-120(%rbp), %rcx
	movb	-88(%rbp), %dl
	andb	$-2, %dl
	movb	%dl, -88(%rbp)
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_thread_new
	leaq	-120(%rbp), %rcx
	movq	%rax, -80(%rbp)
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	g_mutex_lock
	callq	g_get_monotonic_time
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movq	%rax, -72(%rbp)
.LBB2_22:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	-88(%rbp), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_23
	jmp	.LBB2_26
.LBB2_23:                               # %while.body
                                        #   in Loop: Header=BB2_22 Depth=1
	leaq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	addq	$8, %rax
	movq	-72(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	g_cond_wait_until
	cmpl	$0, %eax
	jne	.LBB2_25
# BB#24:                                # %if.then.54
                                        #   in Loop: Header=BB2_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	*-16(%rbp)
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdq	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB2_22
.LBB2_25:                               # %if.end.58
                                        #   in Loop: Header=BB2_22 Depth=1
	jmp	.LBB2_22
.LBB2_26:                               # %while.end
	leaq	-120(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_mutex_unlock
	movq	-80(%rbp), %rdi
	callq	g_thread_join
	leaq	-120(%rbp), %rdi
	addq	$8, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_mutex_clear
	leaq	-120(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	g_cond_clear
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.63
	movq	-24(%rbp), %rdi
	callq	gimp_fonts_load_func
.LBB2_28:                               # %if.end.64
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_font_list_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_font_list_restore
.LBB2_29:                               # %cleanup
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_thaw
	movq	-8(%rbp), %rdi
	callq	gimp_unset_busy
.LBB2_30:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_fonts_load_with_status, .Lfunc_end2-gimp_fonts_load_with_status
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fonts_load_fonts_conf,@function
gimp_fonts_load_fonts_conf:             # @gimp_fonts_load_fonts_conf
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
	subq	$32, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	FcConfigParseAndLoad
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FcConfigDestroy
	movl	$0, -20(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_fonts_load_fonts_conf, .Lfunc_end3-gimp_fonts_load_fonts_conf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fonts_add_directories,@function
gimp_fonts_add_directories:             # @gimp_fonts_add_directories
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_fonts_add_directories, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_15
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_fonts_add_directories, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_15
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movl	$256, %esi              # imm = 0x100
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	gimp_path_parse
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	FcConfigAppFontAddDir
	movq	-40(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_free
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_11
.LBB4_14:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	gimp_path_free
.LBB4_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_fonts_add_directories, .Lfunc_end4-gimp_fonts_add_directories
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fonts_load_thread,@function
gimp_fonts_load_thread:                 # @gimp_fonts_load_thread
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gimp_fonts_load_func
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	g_mutex_lock
	movq	-8(%rbp), %rdi
	movb	32(%rdi), %al
	andb	$-2, %al
	orb	$1, %al
	movb	%al, 32(%rdi)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	g_cond_signal
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	g_mutex_unlock
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_thread_exit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_fonts_load_thread, .Lfunc_end5-gimp_fonts_load_thread
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fonts_load_func,@function
gimp_fonts_load_func:                   # @gimp_fonts_load_func
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FcConfigBuildFonts
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FcConfigDestroy
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	FcConfigSetCurrent
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB6_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_fonts_load_func, .Lfunc_end6-gimp_fonts_load_func
	.cfi_endproc

	.globl	gimp_fonts_reset
	.align	16, 0x90
	.type	gimp_fonts_reset,@function
gimp_fonts_reset:                       # @gimp_fonts_reset
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_fonts_reset, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_15
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	jmp	.LBB7_15
.LBB7_14:                               # %if.end.13
	callq	FcInitReinitialize
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB7_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_fonts_reset, .Lfunc_end7-gimp_fonts_reset
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Text"
	.size	.L.str, 10

	.type	.L__func__.gimp_fonts_init,@object # @__func__.gimp_fonts_init
.L__func__.gimp_fonts_init:
	.asciz	"gimp_fonts_init"
	.size	.L__func__.gimp_fonts_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fonts"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"notify::font-path"
	.size	.L.str.3, 18

	.type	.L__func__.gimp_fonts_load_with_status,@object # @__func__.gimp_fonts_load_with_status
.L__func__.gimp_fonts_load_with_status:
	.asciz	"gimp_fonts_load_with_status"
	.size	.L__func__.gimp_fonts_load_with_status, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_FONT_LIST (gimp->fonts)"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Loading fonts\n"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fonts.conf"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"font-cacher"
	.size	.L.str.7, 12

	.type	.L__func__.gimp_fonts_reset,@object # @__func__.gimp_fonts_reset
.L__func__.gimp_fonts_reset:
	.asciz	"gimp_fonts_reset"
	.size	.L__func__.gimp_fonts_reset, 17

	.type	.L__func__.gimp_fonts_add_directories,@object # @__func__.gimp_fonts_add_directories
.L__func__.gimp_fonts_add_directories:
	.asciz	"gimp_fonts_add_directories"
	.size	.L__func__.gimp_fonts_add_directories, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"config != NULL"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"path_str != NULL"
	.size	.L.str.9, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
