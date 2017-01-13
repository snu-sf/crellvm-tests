	.text
	.file	"gimpimage-colormap.bc"
	.globl	gimp_image_colormap_init
	.align	16, 0x90
	.type	gimp_image_colormap_init,@function
gimp_image_colormap_init:               # @gimp_image_colormap_init
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L__func__.gimp_image_colormap_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB0_15
# BB#14:                                # %if.then.15
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_16:                               # %if.end.17
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.18
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.19
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB0_20
# BB#19:                                # %if.then.21
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_21:                               # %if.end.23
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.24
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_ID
	movq	-8(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_display_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_ID
	movabsq	$.L.str.5, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$768, %esi              # imm = 0x300
	movl	%esi, %edi
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 88(%rax)
	callq	g_malloc0_n
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-32(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_palette_set_columns
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_data_make_internal
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-32(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB0_23:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_colormap_init, .Lfunc_end0-gimp_image_colormap_init
	.cfi_endproc

	.globl	gimp_image_colormap_dispose
	.align	16, 0x90
	.type	gimp_image_colormap_dispose,@function
gimp_image_colormap_dispose:            # @gimp_image_colormap_dispose
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_dispose, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_30
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB1_15
# BB#14:                                # %if.then.15
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_dispose, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_30
.LBB1_16:                               # %if.end.17
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.18
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.28
	movl	$0, -68(%rbp)
	jmp	.LBB1_25
.LBB1_20:                               # %if.else.29
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.32
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_23
# BB#22:                                # %if.then.36
	movl	$1, -68(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.37
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_24:                               # %if.end.39
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.40
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.43
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_dispose, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_30
.LBB1_28:                               # %if.end.45
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.46
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_30:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_colormap_dispose, .Lfunc_end1-gimp_image_colormap_dispose
	.cfi_endproc

	.globl	gimp_image_colormap_free
	.align	16, 0x90
	.type	gimp_image_colormap_free,@function
gimp_image_colormap_free:               # @gimp_image_colormap_free
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_30
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_15
# BB#14:                                # %if.then.15
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_free, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_30
.LBB2_16:                               # %if.end.17
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.18
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_palette_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then.28
	movl	$0, -60(%rbp)
	jmp	.LBB2_25
.LBB2_20:                               # %if.else.29
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_23
# BB#21:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_23
# BB#22:                                # %if.then.36
	movl	$1, -60(%rbp)
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.37
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_24:                               # %if.end.39
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.43
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_colormap_free, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_30
.LBB2_28:                               # %if.end.45
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.46
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB2_30:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_colormap_free, .Lfunc_end2-gimp_image_colormap_free
	.cfi_endproc

	.globl	gimp_image_get_colormap_palette
	.align	16, 0x90
	.type	gimp_image_get_colormap_palette,@function
gimp_image_get_colormap_palette:        # @gimp_image_get_colormap_palette
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_palette, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_get_colormap_palette, .Lfunc_end3-gimp_image_get_colormap_palette
	.cfi_endproc

	.globl	gimp_image_get_colormap
	.align	16, 0x90
	.type	gimp_image_get_colormap,@function
gimp_image_get_colormap:                # @gimp_image_get_colormap
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_get_colormap, .Lfunc_end4-gimp_image_get_colormap
	.cfi_endproc

	.globl	gimp_image_get_colormap_size
	.align	16, 0x90
	.type	gimp_image_get_colormap_size,@function
gimp_image_get_colormap_size:           # @gimp_image_get_colormap_size
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_size, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	88(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_get_colormap_size, .Lfunc_end5-gimp_image_get_colormap_size
	.cfi_endproc

	.globl	gimp_image_set_colormap
	.align	16, 0x90
	.type	gimp_image_set_colormap,@function
gimp_image_set_colormap:                # @gimp_image_set_colormap
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	jne	.LBB6_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB6_16
.LBB6_15:                               # %if.then.14
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_17:                               # %if.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.17
	jmp	.LBB6_19
.LBB6_19:                               # %do.body.18
	cmpl	$0, -20(%rbp)
	jl	.LBB6_22
# BB#20:                                # %land.lhs.true.20
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jg	.LBB6_22
# BB#21:                                # %if.then.22
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_42
.LBB6_23:                               # %if.end.24
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.25
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB6_26
# BB#25:                                # %if.then.29
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_colormap
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB6_26:                               # %if.end.32
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_28
# BB#27:                                # %if.then.35
	xorl	%esi, %esi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	80(%rcx), %rdi
	callq	memset
.LBB6_28:                               # %if.end.37
	cmpq	$0, -16(%rbp)
	je	.LBB6_32
# BB#29:                                # %if.then.39
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB6_31
# BB#30:                                # %if.then.42
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_init
.LBB6_31:                               # %if.end.43
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rsi
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	memcpy
.LBB6_32:                               # %if.end.45
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-32(%rbp), %rcx
	cmpq	$0, 96(%rcx)
	je	.LBB6_41
# BB#33:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
.LBB6_34:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_palette_get_entry
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB6_36
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB6_34 Depth=1
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_palette_delete_entry
	jmp	.LBB6_34
.LBB6_36:                               # %while.end
	movl	$0, -68(%rbp)
.LBB6_37:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB6_40
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB6_37 Depth=1
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_colormap_set_palette_entry
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB6_37 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_37
.LBB6_40:                               # %for.end
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
.LBB6_41:                               # %if.end.65
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_changed
.LBB6_42:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_set_colormap, .Lfunc_end6-gimp_image_set_colormap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_colormap_set_palette_entry,@function
gimp_image_colormap_set_palette_entry:  # @gimp_image_colormap_set_palette_entry
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-56(%rbp), %rdi
	movl	$255, %r8d
	movq	%rax, -24(%rbp)
	imull	$3, -12(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movb	(%rsi,%rax), %dl
	imull	$3, -12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movb	(%rsi,%rax), %r9b
	imull	$3, -12(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movzbl	%dl, %ecx
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movzbl	%r9b, %edx
	movq	-144(%rbp), %r10        # 8-byte Reload
	movzbl	(%r10,%rax), %ecx
	callq	gimp_rgba_set_uchar
	movl	$64, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.17, %rdx
	leaq	-128(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-24(%rbp), %rdx
	movq	96(%rdx), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_palette_get_n_colors
	movq	-24(%rbp), %rdx
	cmpl	88(%rdx), %eax
	jge	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_palette_add_entry
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	leaq	-56(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_palette_set_entry
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB7_3:                                # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_colormap_set_palette_entry, .Lfunc_end7-gimp_image_colormap_set_palette_entry
	.cfi_endproc

	.globl	gimp_image_unset_colormap
	.align	16, 0x90
	.type	gimp_image_unset_colormap,@function
gimp_image_unset_colormap:              # @gimp_image_unset_colormap
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_unset_colormap, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_17
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_colormap
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB8_14:                               # %if.end.17
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB8_16
# BB#15:                                # %if.then.19
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_dispose
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_free
.LBB8_16:                               # %if.end.20
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_changed
.LBB8_17:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_unset_colormap, .Lfunc_end8-gimp_image_unset_colormap
	.cfi_endproc

	.globl	gimp_image_get_colormap_entry
	.align	16, 0x90
	.type	gimp_image_get_colormap_entry,@function
gimp_image_get_colormap_entry:          # @gimp_image_get_colormap_entry
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_entry, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.13
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB9_15
# BB#14:                                # %if.then.15
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_entry, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_16:                               # %if.end.17
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.18
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.19
	cmpl	$0, -12(%rbp)
	jl	.LBB9_21
# BB#19:                                # %land.lhs.true.21
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB9_21
# BB#20:                                # %if.then.23
	jmp	.LBB9_22
.LBB9_21:                               # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_entry, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_22:                               # %if.end.25
	jmp	.LBB9_23
.LBB9_23:                               # %do.end.26
	jmp	.LBB9_24
.LBB9_24:                               # %do.body.27
	cmpq	$0, -24(%rbp)
	je	.LBB9_26
# BB#25:                                # %if.then.29
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.30
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_colormap_entry, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_29
.LBB9_27:                               # %if.end.31
	jmp	.LBB9_28
.LBB9_28:                               # %do.end.32
	movl	$255, %r8d
	movq	-24(%rbp), %rdi
	imull	$3, -12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movb	(%rdx,%rcx), %r9b
	imull	$3, -12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rdx
	movzbl	%sil, %esi
	movzbl	%r9b, %eax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movzbl	(%r10,%rcx), %ecx
	callq	gimp_rgba_set_uchar
.LBB9_29:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_get_colormap_entry, .Lfunc_end9-gimp_image_get_colormap_entry
	.cfi_endproc

	.globl	gimp_image_set_colormap_entry
	.align	16, 0x90
	.type	gimp_image_set_colormap_entry,@function
gimp_image_set_colormap_entry:          # @gimp_image_set_colormap_entry
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap_entry, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_33
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.body.13
	movq	-40(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB10_15
# BB#14:                                # %if.then.15
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap_entry, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_33
.LBB10_16:                              # %if.end.17
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.18
	jmp	.LBB10_18
.LBB10_18:                              # %do.body.19
	cmpl	$0, -12(%rbp)
	jl	.LBB10_21
# BB#19:                                # %land.lhs.true.21
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	88(%rcx), %eax
	jge	.LBB10_21
# BB#20:                                # %if.then.23
	jmp	.LBB10_22
.LBB10_21:                              # %if.else.24
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap_entry, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_33
.LBB10_22:                              # %if.end.25
	jmp	.LBB10_23
.LBB10_23:                              # %do.end.26
	jmp	.LBB10_24
.LBB10_24:                              # %do.body.27
	cmpq	$0, -24(%rbp)
	je	.LBB10_26
# BB#25:                                # %if.then.29
	jmp	.LBB10_27
.LBB10_26:                              # %if.else.30
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_colormap_entry, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_33
.LBB10_27:                              # %if.end.31
	jmp	.LBB10_28
.LBB10_28:                              # %do.end.32
	cmpl	$0, -28(%rbp)
	je	.LBB10_30
# BB#29:                                # %if.then.34
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.14, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_colormap
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB10_30:                              # %if.end.37
	movq	-24(%rbp), %rdi
	imull	$3, -12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	addq	80(%rdx), %rcx
	imull	$3, -12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	addq	80(%rsi), %rdx
	imull	$3, -12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %r8
	addq	80(%r8), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movq	-40(%rbp), %rcx
	cmpq	$0, 96(%rcx)
	je	.LBB10_32
# BB#31:                                # %if.then.49
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_colormap_set_palette_entry
.LBB10_32:                              # %if.end.50
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_colormap_changed
.LBB10_33:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_set_colormap_entry, .Lfunc_end10-gimp_image_set_colormap_entry
	.cfi_endproc

	.globl	gimp_image_add_colormap_entry
	.align	16, 0x90
	.type	gimp_image_add_colormap_entry,@function
gimp_image_add_colormap_entry:          # @gimp_image_add_colormap_entry
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_colormap_entry, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_30
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB11_15
# BB#14:                                # %if.then.15
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_colormap_entry, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_30
.LBB11_16:                              # %if.end.17
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.18
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.19
	movq	-24(%rbp), %rax
	cmpl	$256, 88(%rax)          # imm = 0x100
	jge	.LBB11_20
# BB#19:                                # %if.then.21
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_colormap_entry, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_30
.LBB11_21:                              # %if.end.23
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.24
	jmp	.LBB11_23
.LBB11_23:                              # %do.body.25
	cmpq	$0, -16(%rbp)
	je	.LBB11_25
# BB#24:                                # %if.then.27
	jmp	.LBB11_26
.LBB11_25:                              # %if.else.28
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_add_colormap_entry, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_30
.LBB11_26:                              # %if.end.29
	jmp	.LBB11_27
.LBB11_27:                              # %do.end.30
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_colormap
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	imull	$3, 88(%rcx), %r8d
	movslq	%r8d, %rcx
	movq	-24(%rbp), %rdx
	addq	80(%rdx), %rcx
	movq	-24(%rbp), %rdx
	imull	$3, 88(%rdx), %r8d
	addl	$1, %r8d
	movslq	%r8d, %rdx
	movq	-24(%rbp), %rsi
	addq	80(%rsi), %rdx
	movq	-24(%rbp), %rsi
	imull	$3, 88(%rsi), %r8d
	addl	$2, %r8d
	movslq	%r8d, %rsi
	movq	-24(%rbp), %r9
	addq	80(%r9), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_rgb_get_uchar
	movq	-24(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB11_29
# BB#28:                                # %if.then.47
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	gimp_image_colormap_set_palette_entry
.LBB11_29:                              # %if.end.49
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 88(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_image_colormap_changed
.LBB11_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_add_colormap_entry, .Lfunc_end11-gimp_image_add_colormap_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_colormap_init,@object # @__func__.gimp_image_colormap_init
.L__func__.gimp_image_colormap_init:
	.asciz	"gimp_image_colormap_init"
	.size	.L__func__.gimp_image_colormap_init, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"private->colormap == NULL"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"private->palette == NULL"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Colormap of Image #%d (%s)"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-indexed-image-palette-%d"
	.size	.L.str.5, 30

	.type	.L__func__.gimp_image_colormap_dispose,@object # @__func__.gimp_image_colormap_dispose
.L__func__.gimp_image_colormap_dispose:
	.asciz	"gimp_image_colormap_dispose"
	.size	.L__func__.gimp_image_colormap_dispose, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"private->colormap != NULL"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_PALETTE (private->palette)"
	.size	.L.str.7, 35

	.type	.L__func__.gimp_image_colormap_free,@object # @__func__.gimp_image_colormap_free
.L__func__.gimp_image_colormap_free:
	.asciz	"gimp_image_colormap_free"
	.size	.L__func__.gimp_image_colormap_free, 25

	.type	.L__func__.gimp_image_get_colormap_palette,@object # @__func__.gimp_image_get_colormap_palette
.L__func__.gimp_image_get_colormap_palette:
	.asciz	"gimp_image_get_colormap_palette"
	.size	.L__func__.gimp_image_get_colormap_palette, 32

	.type	.L__func__.gimp_image_get_colormap,@object # @__func__.gimp_image_get_colormap
.L__func__.gimp_image_get_colormap:
	.asciz	"gimp_image_get_colormap"
	.size	.L__func__.gimp_image_get_colormap, 24

	.type	.L__func__.gimp_image_get_colormap_size,@object # @__func__.gimp_image_get_colormap_size
.L__func__.gimp_image_get_colormap_size:
	.asciz	"gimp_image_get_colormap_size"
	.size	.L__func__.gimp_image_get_colormap_size, 29

	.type	.L__func__.gimp_image_set_colormap,@object # @__func__.gimp_image_set_colormap
.L__func__.gimp_image_set_colormap:
	.asciz	"gimp_image_set_colormap"
	.size	.L__func__.gimp_image_set_colormap, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"colormap != NULL || n_colors == 0"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"n_colors >= 0 && n_colors <= 256"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Set Colormap"
	.size	.L.str.10, 23

	.type	.L__func__.gimp_image_unset_colormap,@object # @__func__.gimp_image_unset_colormap
.L__func__.gimp_image_unset_colormap:
	.asciz	"gimp_image_unset_colormap"
	.size	.L__func__.gimp_image_unset_colormap, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Unset Colormap"
	.size	.L.str.11, 25

	.type	.L__func__.gimp_image_get_colormap_entry,@object # @__func__.gimp_image_get_colormap_entry
.L__func__.gimp_image_get_colormap_entry:
	.asciz	"gimp_image_get_colormap_entry"
	.size	.L__func__.gimp_image_get_colormap_entry, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"color_index >= 0 && color_index < private->n_colors"
	.size	.L.str.12, 52

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color != NULL"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_image_set_colormap_entry,@object # @__func__.gimp_image_set_colormap_entry
.L__func__.gimp_image_set_colormap_entry:
	.asciz	"gimp_image_set_colormap_entry"
	.size	.L__func__.gimp_image_set_colormap_entry, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo-type\004Change Colormap entry"
	.size	.L.str.14, 32

	.type	.L__func__.gimp_image_add_colormap_entry,@object # @__func__.gimp_image_add_colormap_entry
.L__func__.gimp_image_add_colormap_entry:
	.asciz	"gimp_image_add_colormap_entry"
	.size	.L__func__.gimp_image_add_colormap_entry, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"private->n_colors < 256"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Add Color to Colormap"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"#%d"
	.size	.L.str.17, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
