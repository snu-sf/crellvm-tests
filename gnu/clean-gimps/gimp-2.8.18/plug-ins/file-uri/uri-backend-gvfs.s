	.text
	.file	"uri-backend-gvfs.bc"
	.globl	uri_backend_init
	.align	16, 0x90
	.type	uri_backend_init,@function
uri_backend_init:                       # @uri_backend_init
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_ui_init
.LBB0_2:                                # %if.end
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	uri_backend_init, .Lfunc_end0-uri_backend_init
	.cfi_endproc

	.globl	uri_backend_shutdown
	.align	16, 0x90
	.type	uri_backend_shutdown,@function
uri_backend_shutdown:                   # @uri_backend_shutdown
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
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uri_backend_shutdown, .Lfunc_end1-uri_backend_shutdown
	.cfi_endproc

	.globl	uri_backend_get_load_help
	.align	16, 0x90
	.type	uri_backend_get_load_help,@function
uri_backend_get_load_help:              # @uri_backend_get_load_help
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
	movabsq	$.L.str, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	uri_backend_get_load_help, .Lfunc_end2-uri_backend_get_load_help
	.cfi_endproc

	.globl	uri_backend_get_save_help
	.align	16, 0x90
	.type	uri_backend_get_save_help,@function
uri_backend_get_save_help:              # @uri_backend_get_save_help
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
	movabsq	$.L.str.1, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	uri_backend_get_save_help, .Lfunc_end3-uri_backend_get_save_help
	.cfi_endproc

	.globl	uri_backend_get_load_protocols
	.align	16, 0x90
	.type	uri_backend_get_load_protocols,@function
uri_backend_get_load_protocols:         # @uri_backend_get_load_protocols
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
	cmpq	$0, supported_protocols
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	get_protocols
	movq	%rax, supported_protocols
.LBB4_2:                                # %if.end
	movq	supported_protocols, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	uri_backend_get_load_protocols, .Lfunc_end4-uri_backend_get_load_protocols
	.cfi_endproc

	.align	16, 0x90
	.type	get_protocols,@function
get_protocols:                          # @get_protocols
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -16(%rbp)
	callq	g_vfs_get_default
	movq	%rax, %rdi
	callq	g_vfs_get_supported_uri_schemes
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB5_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	setne	%dl
	movb	%dl, -21(%rbp)          # 1-byte Spill
.LBB5_3:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_8
.LBB5_4:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB5_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$44, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	g_string_append
	movl	$58, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_protocols, .Lfunc_end5-get_protocols
	.cfi_endproc

	.globl	uri_backend_get_save_protocols
	.align	16, 0x90
	.type	uri_backend_get_save_protocols,@function
uri_backend_get_save_protocols:         # @uri_backend_get_save_protocols
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
	cmpq	$0, supported_protocols
	jne	.LBB6_2
# BB#1:                                 # %if.then
	callq	get_protocols
	movq	%rax, supported_protocols
.LBB6_2:                                # %if.end
	movq	supported_protocols, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	uri_backend_get_save_protocols, .Lfunc_end6-uri_backend_get_save_protocols
	.cfi_endproc

	.globl	uri_backend_load_image
	.align	16, 0x90
	.type	uri_backend_load_image,@function
uri_backend_load_image:                 # @uri_backend_load_image
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%r8, %rsi
	callq	g_filename_to_uri
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	copy_uri
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	uri_backend_load_image, .Lfunc_end7-uri_backend_load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	copy_uri,@function
copy_uri:                               # @copy_uri
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.2, %rax
	xorl	%r9d, %r9d
	movl	$24, %r10d
	movl	%r10d, %r11d
	leaq	-80(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rbx, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	memset
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	-28(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_file_new_for_uri
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_file_new_for_uri
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movabsq	$uri_progress_callback, %r8
	leaq	-80(%rbp), %rdi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %r11
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_file_copy
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -84(%rbp)
	callq	gimp_progress_update
	cmpl	$0, -84(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB8_10
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jne	.LBB8_10
# BB#2:                                 # %land.lhs.true.7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	callq	g_io_error_quark
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB8_10
# BB#3:                                 # %land.lhs.true.10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$16, 4(%rax)
	jne	.LBB8_10
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	g_clear_error
	cmpl	$0, -28(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB8_7:                                # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	mount_enclosing_volume
	cmpl	$0, %eax
	je	.LBB8_9
# BB#8:                                 # %if.then.15
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$uri_progress_callback, %r8
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_file_copy
	movl	%eax, -84(%rbp)
.LBB8_9:                                # %if.end
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.17
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-84(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	copy_uri, .Lfunc_end8-copy_uri
	.cfi_endproc

	.globl	uri_backend_save_image
	.align	16, 0x90
	.type	uri_backend_save_image,@function
uri_backend_save_image:                 # @uri_backend_save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%r8, %rsi
	callq	g_filename_to_uri
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	copy_uri
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB9_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	uri_backend_save_image, .Lfunc_end9-uri_backend_save_image
	.cfi_endproc

	.globl	uri_backend_map_image
	.align	16, 0x90
	.type	uri_backend_map_image,@function
uri_backend_map_image:                  # @uri_backend_map_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_file_new_for_uri
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_12
.LBB10_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB10_9
# BB#3:                                 # %if.then.1
	leaq	-56(%rbp), %rsi
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	mount_enclosing_volume
	cmpl	$0, %eax
	jne	.LBB10_8
# BB#4:                                 # %if.then.4
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	g_io_error_quark
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB10_6
# BB#5:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	cmpl	$17, 4(%rax)
	je	.LBB10_7
.LBB10_6:                               # %if.then.8
	movl	$0, -44(%rbp)
.LBB10_7:                               # %if.end.9
	movq	-56(%rbp), %rdi
	callq	g_error_free
.LBB10_8:                               # %if.end.10
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.11
	cmpl	$0, -44(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.13
	movq	-32(%rbp), %rdi
	callq	g_file_get_path
	movq	%rax, -40(%rbp)
.LBB10_11:                              # %if.end.15
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	uri_backend_map_image, .Lfunc_end10-uri_backend_map_image
	.cfi_endproc

	.align	16, 0x90
	.type	mount_enclosing_volume,@function
mount_enclosing_volume:                 # @mount_enclosing_volume
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	gtk_mount_operation_new
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movabsq	$mount_volume_ready, %rdi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%r8, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	callq	g_file_mount_enclosing_volume
	callq	gtk_main
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mount_enclosing_volume, .Lfunc_end11-mount_enclosing_volume
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
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
	jae	.LBB12_2
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
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB12_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_string_append_c_inline, .Lfunc_end12-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	mount_volume_ready,@function
mount_volume_ready:                     # @mount_volume_ready
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_file_mount_enclosing_volume_finish
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gtk_main_quit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	mount_volume_ready, .Lfunc_end13-mount_volume_ready
	.cfi_endproc

	.align	16, 0x90
	.type	uri_progress_callback,@function
uri_progress_callback:                  # @uri_progress_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, %rdi
	callq	g_get_current_time
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	movl	$1000, %eax             # imm = 0x3E8
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	subq	8(%rsi), %rdx
	imulq	$1000, %rdx, %rdx       # imm = 0x3E8
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	subq	16(%rdi), %rsi
	movq	%rsi, %rax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	cmpq	$100, %rcx
	jge	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_16
.LBB14_3:                               # %if.end
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	cmpq	$0, -16(%rbp)
	jle	.LBB14_10
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB14_5
	jmp	.LBB14_18
.LBB14_18:                              # %if.then.9
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB14_6
	jmp	.LBB14_7
.LBB14_5:                               # %sw.bb
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB14_9
.LBB14_6:                               # %sw.bb.12
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
	jmp	.LBB14_9
.LBB14_7:                               # %sw.default
	jmp	.LBB14_8
.LBB14_8:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.5, %rsi
	movl	$241, %edx
	movabsq	$.L__func__.uri_progress_callback, %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB14_9:                               # %sw.epilog
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movb	$0, %al
	callq	gimp_progress_set_text_printf
	cvtsi2sdq	-8(%rbp), %xmm0
	cvtsi2sdq	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	movq	-72(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB14_16
.LBB14_10:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB14_11
	jmp	.LBB14_17
.LBB14_17:                              # %if.else
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB14_12
	jmp	.LBB14_13
.LBB14_11:                              # %sw.bb.22
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
	jmp	.LBB14_15
.LBB14_12:                              # %sw.bb.24
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
	jmp	.LBB14_15
.LBB14_13:                              # %sw.default.26
	jmp	.LBB14_14
.LBB14_14:                              # %do.body.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.5, %rsi
	movl	$267, %edx              # imm = 0x10B
	movabsq	$.L__func__.uri_progress_callback, %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB14_15:                              # %sw.epilog.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movb	$0, %al
	callq	gimp_progress_set_text_printf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_progress_pulse
	movq	-88(%rbp), %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	g_free
.LBB14_16:                              # %if.end.32
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	uri_progress_callback, .Lfunc_end14-uri_progress_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Loads a file using the GIO Virtual File System"
	.size	.L.str, 47

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Saves a file using the GIO Virtual File System"
	.size	.L.str.1, 47

	.type	supported_protocols,@object # @supported_protocols
	.local	supported_protocols
	.comm	supported_protocols,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Connecting to server"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Downloading image (%s of %s)"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Uploading image (%s of %s)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"uri-backend-gvfs.c"
	.size	.L.str.5, 19

	.type	.L__func__.uri_progress_callback,@object # @__func__.uri_progress_callback
.L__func__.uri_progress_callback:
	.asciz	"uri_progress_callback"
	.size	.L__func__.uri_progress_callback, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Downloaded %s of image data"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Uploaded %s of image data"
	.size	.L.str.7, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
