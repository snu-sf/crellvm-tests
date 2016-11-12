	.text
	.file	"gimpdrawable-foreground-extract.bc"
	.globl	gimp_drawable_foreground_extract
	.align	16, 0x90
	.type	gimp_drawable_foreground_extract,@function
gimp_drawable_foreground_extract:       # @gimp_drawable_foreground_extract
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_foreground_extract, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_19
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_19
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_foreground_extract_siox_init
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_19
# BB#18:                                # %if.then.25
	movl	$255, %edx
	movl	$3, %ecx
	movabsq	$gimp_drawable_foreground_extract.sensitivity, %r8
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_drawable_foreground_extract_siox
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_foreground_extract_siox_done
.LBB0_19:                               # %if.end.26
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_foreground_extract, .Lfunc_end0-gimp_drawable_foreground_extract
	.cfi_endproc

	.globl	gimp_drawable_foreground_extract_siox_init
	.align	16, 0x90
	.type	gimp_drawable_foreground_extract_siox_init,@function
gimp_drawable_foreground_extract_siox_init: # @gimp_drawable_foreground_extract_siox_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox_init, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_22
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.16
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox_init, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_22
.LBB1_16:                               # %if.end.18
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.19
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_19
# BB#18:                                # %if.then.22
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -80(%rbp)
.LBB1_19:                               # %if.end.24
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-88(%rbp), %edi
	movl	-92(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movl	-140(%rbp), %ebx        # 4-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movl	-144(%rbp), %r14d       # 4-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movl	%r14d, %esi
	movl	-156(%rbp), %r15d       # 4-byte Reload
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movl	%r15d, %edx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-192(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.35
	movq	$0, -48(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.end.36
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-80(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	siox_init
	movq	%rax, -48(%rbp)
.LBB1_22:                               # %return
	movq	-48(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_foreground_extract_siox_init, .Lfunc_end1-gimp_drawable_foreground_extract_siox_init
	.cfi_endproc

	.globl	gimp_drawable_foreground_extract_siox
	.align	16, 0x90
	.type	gimp_drawable_foreground_extract_siox,@function
gimp_drawable_foreground_extract_siox:  # @gimp_drawable_foreground_extract_siox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp14:
	.cfi_offset %rbx, -48
.Ltmp15:
	.cfi_offset %r12, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_bytes
	cmpl	$1, %eax
	jne	.LBB2_15
# BB#14:                                # %if.then.14
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_16:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.17
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.18
	cmpq	$0, -48(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.20
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_21:                               # %if.end.22
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.23
	jmp	.LBB2_23
.LBB2_23:                               # %do.body.24
	cmpq	$0, -80(%rbp)
	je	.LBB2_32
# BB#24:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then.34
	movl	$0, -140(%rbp)
	jmp	.LBB2_31
.LBB2_26:                               # %if.else.35
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_29
# BB#27:                                # %land.lhs.true.38
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB2_29
# BB#28:                                # %if.then.42
	movl	$1, -140(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else.43
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB2_30:                               # %if.end.45
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.46
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB2_33
.LBB2_32:                               # %if.then.49
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_50
.LBB2_34:                               # %if.end.51
	jmp	.LBB2_35
.LBB2_35:                               # %do.end.52
	cmpq	$0, -80(%rbp)
	je	.LBB2_37
# BB#36:                                # %if.then.54
	movabsq	$.L.str.8, %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB2_37:                               # %if.end.57
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB2_39
# BB#38:                                # %if.then.66
	movl	$0, -164(%rbp)
	jmp	.LBB2_44
.LBB2_39:                               # %if.else.67
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_42
# BB#40:                                # %land.lhs.true.70
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB2_42
# BB#41:                                # %if.then.74
	movl	$1, -164(%rbp)
	jmp	.LBB2_43
.LBB2_42:                               # %if.else.75
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB2_43:                               # %if.end.77
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.78
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB2_46
# BB#45:                                # %if.then.81
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB2_47
.LBB2_46:                               # %if.else.85
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -96(%rbp)
.LBB2_47:                               # %if.end.92
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_tiles
	movabsq	$gimp_progress_set_value, %rdi
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %r10
	movl	-68(%rbp), %r11d
	movq	-80(%rbp), %rbx
	movq	-224(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movl	-228(%rbp), %r15d       # 4-byte Reload
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movl	%r15d, %esi
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-244(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, (%rsp)
	movl	-248(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	siox_foreground_extract
	cmpq	$0, -80(%rbp)
	je	.LBB2_49
# BB#48:                                # %if.then.95
	movq	-80(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_49:                               # %if.end.96
	movq	-40(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	callq	gimp_drawable_update
.LBB2_50:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_foreground_extract_siox, .Lfunc_end2-gimp_drawable_foreground_extract_siox
	.cfi_endproc

	.globl	gimp_drawable_foreground_extract_siox_done
	.align	16, 0x90
	.type	gimp_drawable_foreground_extract_siox_done,@function
gimp_drawable_foreground_extract_siox_done: # @gimp_drawable_foreground_extract_siox_done
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_foreground_extract_siox_done, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	siox_done
.LBB3_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_foreground_extract_siox_done, .Lfunc_end3-gimp_drawable_foreground_extract_siox_done
	.cfi_endproc

	.type	gimp_drawable_foreground_extract.sensitivity,@object # @gimp_drawable_foreground_extract.sensitivity
	.section	.rodata,"a",@progbits
	.align	16
gimp_drawable_foreground_extract.sensitivity:
	.quad	4603939827068310651     # double 6.400000e-01
	.quad	4608443426695681147     # double 1.280000e+00
	.quad	4612947026323051643     # double 2.560000e+00
	.size	gimp_drawable_foreground_extract.sensitivity, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_foreground_extract,@object # @__func__.gimp_drawable_foreground_extract
.L__func__.gimp_drawable_foreground_extract:
	.asciz	"gimp_drawable_foreground_extract"
	.size	.L__func__.gimp_drawable_foreground_extract, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (mask)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"mode == GIMP_FOREGROUND_EXTRACT_SIOX"
	.size	.L.str.2, 37

	.type	.L__func__.gimp_drawable_foreground_extract_siox_init,@object # @__func__.gimp_drawable_foreground_extract_siox_init
.L__func__.gimp_drawable_foreground_extract_siox_init:
	.asciz	"gimp_drawable_foreground_extract_siox_init"
	.size	.L__func__.gimp_drawable_foreground_extract_siox_init, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.4, 45

	.type	.L__func__.gimp_drawable_foreground_extract_siox,@object # @__func__.gimp_drawable_foreground_extract_siox
.L__func__.gimp_drawable_foreground_extract_siox:
	.asciz	"gimp_drawable_foreground_extract_siox"
	.size	.L__func__.gimp_drawable_foreground_extract_siox, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_drawable_bytes (mask) == 1"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"state != NULL"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.7, 48

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Foreground Extraction"
	.size	.L.str.8, 22

	.type	.L__func__.gimp_drawable_foreground_extract_siox_done,@object # @__func__.gimp_drawable_foreground_extract_siox_done
.L__func__.gimp_drawable_foreground_extract_siox_done:
	.asciz	"gimp_drawable_foreground_extract_siox_done"
	.size	.L__func__.gimp_drawable_foreground_extract_siox_done, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
