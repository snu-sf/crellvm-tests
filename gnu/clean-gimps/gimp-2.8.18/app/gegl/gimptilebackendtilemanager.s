	.text
	.file	"gimptilebackendtilemanager.bc"
	.globl	gimp_tile_backend_tile_manager_get_type
	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_get_type,@function
gimp_tile_backend_tile_manager_get_type: # @gimp_tile_backend_tile_manager_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gegl_tile_backend_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$200, %edx
	movabsq	$gimp_tile_backend_tile_manager_class_intern_init, %rdi
	movl	$80, %r8d
	movabsq	$gimp_tile_backend_tile_manager_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tile_backend_tile_manager_get_type, .Lfunc_end0-gimp_tile_backend_tile_manager_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_class_intern_init,@function
gimp_tile_backend_tile_manager_class_intern_init: # @gimp_tile_backend_tile_manager_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_tile_backend_tile_manager_parent_class
	cmpl	$0, GimpTileBackendTileManager_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTileBackendTileManager_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tile_backend_tile_manager_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tile_backend_tile_manager_class_intern_init, .Lfunc_end1-gimp_tile_backend_tile_manager_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_init,@function
gimp_tile_backend_tile_manager_init:    # @gimp_tile_backend_tile_manager_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gegl_tile_source_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tile_backend_tile_manager_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$gimp_tile_backend_tile_manager_command, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tile_backend_tile_manager_init, .Lfunc_end2-gimp_tile_backend_tile_manager_init
	.cfi_endproc

	.globl	gimp_tile_backend_tile_manager_new
	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_new,@function
gimp_tile_backend_tile_manager_new:     # @gimp_tile_backend_tile_manager_new
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -44(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	callq	gimp_tile_backend_tile_manager_get_type
	xorl	%esi, %esi
	movl	-44(%rbp), %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_bpp_to_babl_format
	movabsq	$.L.str.1, %rsi
	movl	$64, %edi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%r10, %rdi
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	-76(%rbp), %r11d        # 4-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movl	%r11d, %r8d
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tile_backend_tile_manager_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rdi
	callq	tile_manager_ref
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	gegl_tile_backend_set_extent
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tile_backend_tile_manager_new, .Lfunc_end3-gimp_tile_backend_tile_manager_new
	.cfi_endproc

	.globl	gimp_tile_manager_get_gegl_buffer
	.align	16, 0x90
	.type	gimp_tile_manager_get_gegl_buffer,@function
gimp_tile_manager_get_gegl_buffer:      # @gimp_tile_manager_get_gegl_buffer
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_tile_backend_tile_manager_new
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gegl_buffer_new_for_backend
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tile_manager_get_gegl_buffer, .Lfunc_end4-gimp_tile_manager_get_gegl_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_class_init,@function
gimp_tile_backend_tile_manager_class_init: # @gimp_tile_backend_tile_manager_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$16, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_tile_backend_tile_manager_dispose, %rdi
	movabsq	$gimp_tile_backend_tile_manager_finalize, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tile_backend_tile_manager_class_init, .Lfunc_end5-gimp_tile_backend_tile_manager_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_finalize,@function
gimp_tile_backend_tile_manager_finalize: # @gimp_tile_backend_tile_manager_finalize
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_tile_backend_tile_manager_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tile_backend_tile_manager_finalize, .Lfunc_end6-gimp_tile_backend_tile_manager_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_dispose,@function
gimp_tile_backend_tile_manager_dispose: # @gimp_tile_backend_tile_manager_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tile_backend_tile_manager_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	$0, (%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tile_backend_tile_manager_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tile_backend_tile_manager_dispose, .Lfunc_end7-gimp_tile_backend_tile_manager_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_backend_tile_manager_command,@function
gimp_tile_backend_tile_manager_command: # @gimp_tile_backend_tile_manager_command
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_tile_backend_tile_manager_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gegl_tile_backend_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	ja	.LBB8_20
# BB#29:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movl	$1, %ecx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	(%rax), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movl	8(%rax), %r8d
	callq	tile_manager_get_at
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_28
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
	cmpq	$0, -80(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.6
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_tile_backend_tile_manager_command, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_28
.LBB8_7:                                # %if.end.7
	jmp	.LBB8_8
.LBB8_8:                                # %do.end
	movq	-56(%rbp), %rdi
	callq	gegl_tile_backend_get_tile_size
	movl	%eax, -68(%rbp)
	movq	-80(%rbp), %rdi
	callq	tile_bpp
	shll	$6, %eax
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	tile_ewidth
	movq	-80(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	tile_bpp
	movl	-140(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jne	.LBB8_10
# BB#9:                                 # %if.then.14
	callq	gegl_tile_new_bare
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	tile_data_pointer
	movabsq	$tile_done, %rdi
	movl	-68(%rbp), %edx
	movq	-80(%rbp), %r8
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rax, %rsi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	gegl_tile_set_data_full
	jmp	.LBB8_15
.LBB8_10:                               # %if.else.17
	movl	-68(%rbp), %edi
	callq	gegl_tile_new
	movq	%rax, -64(%rbp)
	movl	$0, -92(%rbp)
.LBB8_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-80(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	tile_eheight
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB8_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB8_11 Depth=1
	movq	-64(%rbp), %rdi
	callq	gegl_tile_get_data
	xorl	%esi, %esi
	movl	-92(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	-80(%rbp), %rdi
	movl	-92(%rbp), %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	tile_data_pointer
	movslq	-88(%rbp), %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB8_11
.LBB8_14:                               # %for.end
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	callq	tile_release
.LBB8_15:                               # %if.end.24
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_28
.LBB8_16:                               # %sw.bb.25
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB8_18
# BB#17:                                # %if.then.31
	movq	$0, -8(%rbp)
	jmp	.LBB8_28
.LBB8_18:                               # %if.end.32
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-104(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	movl	%edx, -196(%rbp)        # 4-byte Spill
	callq	gegl_tile_get_data
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-192(%rbp), %esi        # 4-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	gimp_tile_write
	movq	-104(%rbp), %rdi
	callq	gegl_tile_mark_as_stored
	movq	$0, -8(%rbp)
	jmp	.LBB8_28
.LBB8_19:                               # %sw.bb.34
	movq	$0, -8(%rbp)
	jmp	.LBB8_28
.LBB8_20:                               # %sw.default
	jmp	.LBB8_21
.LBB8_21:                               # %do.body.35
	cmpl	$9, -20(%rbp)
	jge	.LBB8_24
# BB#22:                                # %land.lhs.true
	cmpl	$0, -20(%rbp)
	jl	.LBB8_24
# BB#23:                                # %if.then.40
	jmp	.LBB8_25
.LBB8_24:                               # %if.else.41
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$194, %edx
	movabsq	$.L__func__.gimp_tile_backend_tile_manager_command, %rcx
	movabsq	$.L.str.7, %r8
	callq	g_assertion_message_expr
.LBB8_25:                               # %if.end.42
	jmp	.LBB8_26
.LBB8_26:                               # %do.end.43
	jmp	.LBB8_27
.LBB8_27:                               # %sw.epilog
	movq	$0, -8(%rbp)
.LBB8_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tile_backend_tile_manager_command, .Lfunc_end8-gimp_tile_backend_tile_manager_command
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_19
	.quad	.LBB8_16
	.quad	.LBB8_1
	.quad	.LBB8_20
	.quad	.LBB8_19
	.quad	.LBB8_19

	.text
	.align	16, 0x90
	.type	tile_done,@function
tile_done:                              # @tile_done
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	tile_release
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_done, .Lfunc_end9-tile_done
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_write,@function
gimp_tile_write:                        # @gimp_tile_write
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	(%rdi), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_at
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	tile_data_pointer
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_8
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %rdi
	callq	tile_bpp
	shll	$6, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	tile_ewidth
	movq	-40(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	tile_bpp
	movl	-68(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	tile_eheight
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB10_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %edx
	callq	tile_data_pointer
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rdi
	movslq	-48(%rbp), %rdx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_4
.LBB10_7:                               # %for.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.11
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
.LBB10_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tile_write, .Lfunc_end10-gimp_tile_write
	.cfi_endproc

	.type	gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile,@object # @gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile
	.local	gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile
	.comm	gimp_tile_backend_tile_manager_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTileBackendTileManager"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tile-width"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tile-height"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"format"
	.size	.L.str.3, 7

	.type	gimp_tile_backend_tile_manager_parent_class,@object # @gimp_tile_backend_tile_manager_parent_class
	.local	gimp_tile_backend_tile_manager_parent_class
	.comm	gimp_tile_backend_tile_manager_parent_class,8,8
	.type	GimpTileBackendTileManager_private_offset,@object # @GimpTileBackendTileManager_private_offset
	.local	GimpTileBackendTileManager_private_offset
	.comm	GimpTileBackendTileManager_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-GEGL"
	.size	.L.str.4, 10

	.type	.L__func__.gimp_tile_backend_tile_manager_command,@object # @__func__.gimp_tile_backend_tile_manager_command
.L__func__.gimp_tile_backend_tile_manager_command:
	.asciz	"gimp_tile_backend_tile_manager_command"
	.size	.L__func__.gimp_tile_backend_tile_manager_command, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_tile != NULL"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimptilebackendtilemanager.c"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"command < GEGL_TILE_LAST_COMMAND && command >= 0"
	.size	.L.str.7, 49


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
