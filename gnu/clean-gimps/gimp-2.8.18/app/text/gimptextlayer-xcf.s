	.text
	.file	"gimptextlayer-xcf.bc"
	.globl	gimp_text_layer_xcf_load_hack
	.align	16, 0x90
	.type	gimp_text_layer_xcf_load_hack,@function
gimp_text_layer_xcf_load_hack:          # @gimp_text_layer_xcf_load_hack
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
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layer_xcf_load_hack, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.2
	movl	$0, -60(%rbp)
	jmp	.LBB0_13
.LBB0_8:                                # %if.else.3
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_11
# BB#9:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_11
# BB#10:                                # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_12:                               # %if.end.10
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.11
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layer_xcf_load_hack, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_27
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	callq	gimp_text_parasite_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_21
# BB#18:                                # %if.then.22
	leaq	-72(%rbp), %rsi
	movq	$0, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_text_from_parasite
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.3, %rdi
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %r9
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_message
	leaq	-72(%rbp), %rdi
	callq	g_clear_error
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_24
.LBB0_21:                               # %if.else.33
	callq	gimp_text_gdyntext_parasite_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.39
	movq	-40(%rbp), %rdi
	callq	gimp_text_from_gdyntext_parasite
	movq	%rax, -32(%rbp)
.LBB0_23:                               # %if.end.41
	jmp	.LBB0_24
.LBB0_24:                               # %if.end.42
	cmpq	$0, -32(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_text_layer_from_layer
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, 112(%rax)
.LBB0_26:                               # %if.end.48
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB0_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layer_xcf_load_hack, .Lfunc_end0-gimp_text_layer_xcf_load_hack
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_layer_from_layer,@function
gimp_text_layer_from_layer:             # @gimp_text_layer_from_layer
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layer_from_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layer_from_layer, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	callq	gimp_text_layer_get_type
	movq	-16(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_replace_item
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_opacity
	xorl	%esi, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	gimp_layer_set_opacity
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_mode
	xorl	%edx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_layer_set_mode
	movq	-32(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_lock_alpha
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_layer_set_lock_alpha
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_text_layer_set_text
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB1_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_layer_from_layer, .Lfunc_end1-gimp_text_layer_from_layer
	.cfi_endproc

	.globl	gimp_text_layer_xcf_save_prepare
	.align	16, 0x90
	.type	gimp_text_layer_xcf_save_prepare,@function
gimp_text_layer_xcf_save_prepare:       # @gimp_text_layer_xcf_save_prepare
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layer_get_type
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
	movabsq	$.L__func__.gimp_text_layer_xcf_save_prepare, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_16
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.12
	jmp	.LBB2_16
.LBB2_14:                               # %if.end.13
	movq	-8(%rbp), %rdi
	callq	gimp_text_layer_get_text
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gimp_text_to_parasite
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_parasite_attach
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_free
.LBB2_16:                               # %if.end.21
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_layer_xcf_save_prepare, .Lfunc_end2-gimp_text_layer_xcf_save_prepare
	.cfi_endproc

	.globl	gimp_text_layer_get_xcf_flags
	.align	16, 0x90
	.type	gimp_text_layer_get_xcf_flags,@function
gimp_text_layer_get_xcf_flags:          # @gimp_text_layer_get_xcf_flags
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
	movl	$0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_layer_get_xcf_flags, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_17
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 120(%rax)
	jne	.LBB3_14
# BB#13:                                # %if.then.12
	movl	-20(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB3_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpl	$0, 124(%rax)
	je	.LBB3_16
# BB#15:                                # %if.then.15
	movl	-20(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -20(%rbp)
.LBB3_16:                               # %if.end.17
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_layer_get_xcf_flags, .Lfunc_end3-gimp_text_layer_get_xcf_flags
	.cfi_endproc

	.globl	gimp_text_layer_set_xcf_flags
	.align	16, 0x90
	.type	gimp_text_layer_set_xcf_flags,@function
gimp_text_layer_set_xcf_flags:          # @gimp_text_layer_set_xcf_flags
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_text_layer_get_type
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
	movabsq	$.L__func__.gimp_text_layer_set_xcf_flags, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %eax
	movl	-12(%rbp), %r8d
	andl	$2, %r8d
	cmpl	$0, %r8d
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_layer_set_xcf_flags, .Lfunc_end4-gimp_text_layer_set_xcf_flags
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Text"
	.size	.L.str, 10

	.type	.L__func__.gimp_text_layer_xcf_load_hack,@object # @__func__.gimp_text_layer_xcf_load_hack
.L__func__.gimp_text_layer_xcf_load_hack:
	.asciz	"gimp_text_layer_xcf_load_hack"
	.size	.L__func__.gimp_text_layer_xcf_load_hack, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"layer != NULL"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LAYER (*layer)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Problems parsing the text parasite for layer '%s':\n%s\n\nSome text properties may be wrong. Unless you want to edit the text layer, you don't need to worry about this."
	.size	.L.str.3, 166

	.type	.L__func__.gimp_text_layer_xcf_save_prepare,@object # @__func__.gimp_text_layer_xcf_save_prepare
.L__func__.gimp_text_layer_xcf_save_prepare:
	.asciz	"gimp_text_layer_xcf_save_prepare"
	.size	.L__func__.gimp_text_layer_xcf_save_prepare, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEXT_LAYER (layer)"
	.size	.L.str.4, 27

	.type	.L__func__.gimp_text_layer_get_xcf_flags,@object # @__func__.gimp_text_layer_get_xcf_flags
.L__func__.gimp_text_layer_get_xcf_flags:
	.asciz	"gimp_text_layer_get_xcf_flags"
	.size	.L__func__.gimp_text_layer_get_xcf_flags, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_TEXT_LAYER (text_layer)"
	.size	.L.str.5, 32

	.type	.L__func__.gimp_text_layer_set_xcf_flags,@object # @__func__.gimp_text_layer_set_xcf_flags
.L__func__.gimp_text_layer_set_xcf_flags:
	.asciz	"gimp_text_layer_set_xcf_flags"
	.size	.L__func__.gimp_text_layer_set_xcf_flags, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"auto-rename"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"modified"
	.size	.L.str.7, 9

	.type	.L__func__.gimp_text_layer_from_layer,@object # @__func__.gimp_text_layer_from_layer
.L__func__.gimp_text_layer_from_layer:
	.asciz	"gimp_text_layer_from_layer"
	.size	.L__func__.gimp_text_layer_from_layer, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image"
	.size	.L.str.10, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
