	.text
	.file	"gimppickable.bc"
	.globl	gimp_pickable_interface_get_type
	.align	16, 0x90
	.type	gimp_pickable_interface_get_type,@function
gimp_pickable_interface_get_type:       # @gimp_pickable_interface_get_type
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
	subq	$16, %rsp
	cmpq	$0, gimp_pickable_interface_get_type.pickable_iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_pickable_interface_get_type.pickable_iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_pickable_interface_get_type.pickable_iface_type
	movq	gimp_pickable_interface_get_type.pickable_iface_type, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gimp_object_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_add_prerequisite
.LBB0_2:                                # %if.end
	movq	gimp_pickable_interface_get_type.pickable_iface_type, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pickable_interface_get_type, .Lfunc_end0-gimp_pickable_interface_get_type
	.cfi_endproc

	.globl	gimp_pickable_flush
	.align	16, 0x90
	.type	gimp_pickable_flush,@function
gimp_pickable_flush:                    # @gimp_pickable_flush
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_flush, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB1_14:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pickable_flush, .Lfunc_end1-gimp_pickable_flush
	.cfi_endproc

	.globl	gimp_pickable_get_image
	.align	16, 0x90
	.type	gimp_pickable_get_image,@function
gimp_pickable_get_image:                # @gimp_pickable_get_image
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pickable_get_image, .Lfunc_end2-gimp_pickable_get_image
	.cfi_endproc

	.globl	gimp_pickable_get_image_type
	.align	16, 0x90
	.type	gimp_pickable_get_image_type,@function
gimp_pickable_get_image_type:           # @gimp_pickable_get_image_type
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pickable_interface_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_image_type, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.18
	movl	$-1, -4(%rbp)
.LBB3_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pickable_get_image_type, .Lfunc_end3-gimp_pickable_get_image_type
	.cfi_endproc

	.globl	gimp_pickable_get_bytes
	.align	16, 0x90
	.type	gimp_pickable_get_bytes,@function
gimp_pickable_get_bytes:                # @gimp_pickable_get_bytes
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_bytes, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.end.18
	movl	$0, -4(%rbp)
.LBB4_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pickable_get_bytes, .Lfunc_end4-gimp_pickable_get_bytes
	.cfi_endproc

	.globl	gimp_pickable_get_tiles
	.align	16, 0x90
	.type	gimp_pickable_get_tiles,@function
gimp_pickable_get_tiles:                # @gimp_pickable_get_tiles
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pickable_get_tiles, .Lfunc_end5-gimp_pickable_get_tiles
	.cfi_endproc

	.globl	gimp_pickable_get_pixel_at
	.align	16, 0x90
	.type	gimp_pickable_get_pixel_at,@function
gimp_pickable_get_pixel_at:             # @gimp_pickable_get_pixel_at
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_pixel_at, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_pixel_at, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB6_19
# BB#18:                                # %if.then.21
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.end.24
	movl	$0, -4(%rbp)
.LBB6_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pickable_get_pixel_at, .Lfunc_end6-gimp_pickable_get_pixel_at
	.cfi_endproc

	.globl	gimp_pickable_get_color_at
	.align	16, 0x90
	.type	gimp_pickable_get_color_at,@function
gimp_pickable_get_color_at:             # @gimp_pickable_get_color_at
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
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_color_at, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_color_at, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	leaq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	jne	.LBB7_19
# BB#18:                                # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_pickable_get_image_type
	leaq	-40(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_get_color
	movq	-32(%rbp), %rdi
	movb	-40(%rbp), %r8b
	movb	-39(%rbp), %r9b
	movb	-38(%rbp), %r10b
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movzbl	%r10b, %ecx
	movzbl	-37(%rbp), %r8d
	callq	gimp_rgba_set_uchar
	movl	$1, -4(%rbp)
.LBB7_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pickable_get_color_at, .Lfunc_end7-gimp_pickable_get_color_at
	.cfi_endproc

	.globl	gimp_pickable_get_opacity_at
	.align	16, 0x90
	.type	gimp_pickable_get_opacity_at,@function
gimp_pickable_get_opacity_at:           # @gimp_pickable_get_opacity_at
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_get_opacity_at, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.15
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.18
	movl	$0, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pickable_get_opacity_at, .Lfunc_end8-gimp_pickable_get_opacity_at
	.cfi_endproc

	.globl	gimp_pickable_pick_color
	.align	16, 0x90
	.type	gimp_pickable_pick_color,@function
gimp_pickable_pick_color:               # @gimp_pickable_pick_color
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_pickable_pick_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_35
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	jne	.LBB9_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB9_35
.LBB9_14:                               # %if.end.14
	movq	-16(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movl	%eax, -68(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB9_26
# BB#15:                                # %if.then.18
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-128(%rbp), %rcx
	movl	$0, -108(%rbp)
	movq	%rcx, %rdi
	callq	memset
	cvttsd2si	-40(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-20(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB9_16:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_18 Depth 2
	movl	-136(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB9_25
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	-24(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	%eax, -140(%rbp)
.LBB9_18:                               # %for.cond.27
                                        #   Parent Loop BB9_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB9_23
# BB#19:                                # %for.body.31
                                        #   in Loop: Header=BB9_18 Depth=2
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	callq	gimp_pickable_get_pixel_at
	cmpl	$0, %eax
	je	.LBB9_21
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB9_18 Depth=2
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_get_color
	movzbl	-76(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	movzbl	-75(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movzbl	-74(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	movzbl	-73(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB9_21:                               # %if.end.53
                                        #   in Loop: Header=BB9_18 Depth=2
	jmp	.LBB9_22
.LBB9_22:                               # %for.inc
                                        #   in Loop: Header=BB9_18 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB9_18
.LBB9_23:                               # %for.end
                                        #   in Loop: Header=BB9_16 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %for.inc.55
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB9_16
.LBB9_25:                               # %for.end.57
	movl	$2, %eax
	movl	-128(%rbp), %ecx
	movl	-108(%rbp), %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-144(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	movb	%al, %dil
	movb	%dil, -76(%rbp)
	movl	-124(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-148(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	movb	%al, %dil
	movb	%dil, -75(%rbp)
	movl	-120(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-152(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	movb	%al, %dil
	movb	%dil, -74(%rbp)
	movl	-116(%rbp), %eax
	movl	-108(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	-156(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	-108(%rbp)
	movb	%al, %dil
	movb	%dil, -73(%rbp)
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.81
	leaq	-76(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_image_get_color
.LBB9_27:                               # %if.end.84
	movq	-48(%rbp), %rdi
	movb	-76(%rbp), %al
	movb	-75(%rbp), %cl
	movb	-74(%rbp), %dl
	movzbl	%al, %esi
	movzbl	%cl, %r8d
	movb	%dl, -157(%rbp)         # 1-byte Spill
	movl	%r8d, %edx
	movb	-157(%rbp), %al         # 1-byte Reload
	movzbl	%al, %ecx
	movzbl	-73(%rbp), %r8d
	callq	gimp_rgba_set_uchar
	cmpq	$0, -56(%rbp)
	je	.LBB9_34
# BB#28:                                # %if.then.90
	cmpl	$4, -68(%rbp)
	je	.LBB9_30
# BB#29:                                # %lor.lhs.false
	cmpl	$5, -68(%rbp)
	jne	.LBB9_32
.LBB9_30:                               # %land.lhs.true.95
	cmpl	$0, -28(%rbp)
	jne	.LBB9_32
# BB#31:                                # %if.then.97
	movzbl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB9_33
.LBB9_32:                               # %if.else.100
	movq	-56(%rbp), %rax
	movl	$-1, (%rax)
.LBB9_33:                               # %if.end.101
	jmp	.LBB9_34
.LBB9_34:                               # %if.end.102
	movl	$1, -4(%rbp)
.LBB9_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pickable_pick_color, .Lfunc_end9-gimp_pickable_pick_color
	.cfi_endproc

	.type	gimp_pickable_interface_get_type.pickable_iface_type,@object # @gimp_pickable_interface_get_type.pickable_iface_type
	.local	gimp_pickable_interface_get_type.pickable_iface_type
	.comm	gimp_pickable_interface_get_type.pickable_iface_type,8,8
	.type	gimp_pickable_interface_get_type.pickable_iface_info,@object # @gimp_pickable_interface_get_type.pickable_iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_pickable_interface_get_type.pickable_iface_info:
	.short	72                      # 0x48
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_pickable_interface_get_type.pickable_iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPickableInterface"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_pickable_flush,@object # @__func__.gimp_pickable_flush
.L__func__.gimp_pickable_flush:
	.asciz	"gimp_pickable_flush"
	.size	.L__func__.gimp_pickable_flush, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PICKABLE (pickable)"
	.size	.L.str.2, 28

	.type	.L__func__.gimp_pickable_get_image,@object # @__func__.gimp_pickable_get_image
.L__func__.gimp_pickable_get_image:
	.asciz	"gimp_pickable_get_image"
	.size	.L__func__.gimp_pickable_get_image, 24

	.type	.L__func__.gimp_pickable_get_image_type,@object # @__func__.gimp_pickable_get_image_type
.L__func__.gimp_pickable_get_image_type:
	.asciz	"gimp_pickable_get_image_type"
	.size	.L__func__.gimp_pickable_get_image_type, 29

	.type	.L__func__.gimp_pickable_get_bytes,@object # @__func__.gimp_pickable_get_bytes
.L__func__.gimp_pickable_get_bytes:
	.asciz	"gimp_pickable_get_bytes"
	.size	.L__func__.gimp_pickable_get_bytes, 24

	.type	.L__func__.gimp_pickable_get_tiles,@object # @__func__.gimp_pickable_get_tiles
.L__func__.gimp_pickable_get_tiles:
	.asciz	"gimp_pickable_get_tiles"
	.size	.L__func__.gimp_pickable_get_tiles, 24

	.type	.L__func__.gimp_pickable_get_pixel_at,@object # @__func__.gimp_pickable_get_pixel_at
.L__func__.gimp_pickable_get_pixel_at:
	.asciz	"gimp_pickable_get_pixel_at"
	.size	.L__func__.gimp_pickable_get_pixel_at, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pixel != NULL"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_pickable_get_color_at,@object # @__func__.gimp_pickable_get_color_at
.L__func__.gimp_pickable_get_color_at:
	.asciz	"gimp_pickable_get_color_at"
	.size	.L__func__.gimp_pickable_get_color_at, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color != NULL"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_pickable_get_opacity_at,@object # @__func__.gimp_pickable_get_opacity_at
.L__func__.gimp_pickable_get_opacity_at:
	.asciz	"gimp_pickable_get_opacity_at"
	.size	.L__func__.gimp_pickable_get_opacity_at, 29

	.type	.L__func__.gimp_pickable_pick_color,@object # @__func__.gimp_pickable_pick_color
.L__func__.gimp_pickable_pick_color:
	.asciz	"gimp_pickable_pick_color"
	.size	.L__func__.gimp_pickable_pick_color, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
