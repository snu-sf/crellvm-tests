	.text
	.file	"base.bc"
	.globl	base_init
	.align	16, 0x90
	.type	base_init,@function
base_init:                              # @base_init
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_base_config_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.base_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, base_config
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.base_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_26
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, base_config
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_cache_init
	movabsq	$.L.str.3, %rsi
	movabsq	$base_tile_cache_size_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB0_19
# BB#18:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB0_20
.LBB0_19:                               # %if.then.22
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
.LBB0_20:                               # %if.end.24
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	base_toast_old_swap_files
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_swap_init
	callq	tile_swap_test
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB0_22
# BB#21:                                # %lor.lhs.false.29
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB0_23
.LBB0_22:                               # %if.then.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
.LBB0_23:                               # %if.end.34
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	gimp_config_path_expand
	movl	$16, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB0_25
# BB#24:                                # %if.then.39
	movl	$493, %esi              # imm = 0x1ED
	movq	-40(%rbp), %rdi
	callq	g_mkdir_with_parents
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB0_25:                               # %if.end.41
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movl	40(%rdi), %edi
	callq	pixel_processor_init
	movabsq	$.L.str.6, %rsi
	movabsq	$base_num_processors_notify, %rax
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_composite_init
	callq	paint_funcs_setup
	movl	-28(%rbp), %esi
	movl	%esi, -4(%rbp)
.LBB0_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	base_init, .Lfunc_end0-base_init
	.cfi_endproc

	.align	16, 0x90
	.type	base_tile_cache_size_notify,@function
base_tile_cache_size_notify:            # @base_tile_cache_size_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rdi
	callq	tile_cache_set_size
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	base_tile_cache_size_notify, .Lfunc_end1-base_tile_cache_size_notify
	.cfi_endproc

	.align	16, 0x90
	.type	base_toast_old_swap_files,@function
base_toast_old_swap_files:              # @base_toast_old_swap_files
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_14
.LBB2_2:                                # %if.end
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_14
.LBB2_4:                                # %if.end.4
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_14
.LBB2_6:                                # %if.end.8
	jmp	.LBB2_7
.LBB2_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB2_13
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB2_7 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	-32(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB2_12
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	-32(%rbp), %rax
	addq	$9, %rax
	movq	%rax, %rdi
	callq	atoi
	xorl	%esi, %esi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	kill
	cmpl	$0, %eax
	je	.LBB2_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_unlink
	movq	-48(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_free
.LBB2_11:                               # %if.end.19
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.20
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_7
.LBB2_13:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	g_dir_close
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB2_14:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	base_toast_old_swap_files, .Lfunc_end2-base_toast_old_swap_files
	.cfi_endproc

	.align	16, 0x90
	.type	base_num_processors_notify,@function
base_num_processors_notify:             # @base_num_processors_notify
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_base_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	40(%rax), %edi
	callq	pixel_processor_set_num_threads
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	base_num_processors_notify, .Lfunc_end3-base_num_processors_notify
	.cfi_endproc

	.globl	base_exit
	.align	16, 0x90
	.type	base_exit,@function
base_exit:                              # @base_exit
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
	jmp	.LBB4_1
.LBB4_1:                                # %do.body
	cmpq	$0, base_config
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.base_exit, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	pixel_processor_exit
	callq	paint_funcs_free
	callq	tile_cache_exit
	callq	tile_swap_exit
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$base_tile_cache_size_notify, %rdx
	movq	base_config, %rdi
	movq	%rdx, -8(%rbp)          # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-8(%rbp), %r9           # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	base_config, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	$0, base_config
.LBB4_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	base_exit, .Lfunc_end4-base_exit
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.base_init,@object # @__func__.base_init
.L__func__.base_init:
	.asciz	"base_init"
	.size	.L__func__.base_init, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_BASE_CONFIG (config)"
	.size	.L.str.1, 29

	.type	base_config,@object     # @base_config
	.local	base_config
	.comm	base_config,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"base_config == NULL"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"notify::tile-cache-size"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"swap-path"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"temp-path"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::num-processors"
	.size	.L.str.6, 23

	.type	.L__func__.base_exit,@object # @__func__.base_exit
.L__func__.base_exit:
	.asciz	"base_exit"
	.size	.L__func__.base_exit, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"base_config != NULL"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpswap."
	.size	.L.str.8, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
