	.text
	.file	"gimpvectors-export.bc"
	.globl	gimp_vectors_export_file
	.align	16, 0x90
	.type	gimp_vectors_export_file,@function
gimp_vectors_export_file:               # @gimp_vectors_export_file
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_file, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_file, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	cmpq	$0, -32(%rbp)
	je	.LBB0_28
# BB#27:                                # %if.then.42
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_file, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_29:                               # %if.end.44
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.45
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.46
	cmpq	$0, -40(%rbp)
	je	.LBB0_33
# BB#32:                                # %lor.lhs.false.48
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_34
.LBB0_33:                               # %if.then.50
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_file, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_35:                               # %if.end.52
	jmp	.LBB0_36
.LBB0_36:                               # %do.end.53
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.56
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.6, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movl	-120(%rbp), %edx        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_38:                               # %if.end.64
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_export
	movabsq	$.L.str.7, %rsi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	fclose
	cmpl	$0, %eax
	je	.LBB0_40
# BB#39:                                # %if.then.71
	movq	-40(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.8, %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_41
.LBB0_40:                               # %if.end.79
	movl	$1, -4(%rbp)
.LBB0_41:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_export_file, .Lfunc_end0-gimp_vectors_export_file
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_export,@function
gimp_vectors_export:                    # @gimp_vectors_export
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movabsq	$.L.str.9, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.10, %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_vectors_export_image_size
	movl	$10, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.11, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_string_append_printf
	cmpq	$0, -16(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_export_path
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_vectors_iter
	movq	%rax, -32(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_vectors_export_path
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append
	movq	-24(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_export, .Lfunc_end1-gimp_vectors_export
	.cfi_endproc

	.globl	gimp_vectors_export_string
	.align	16, 0x90
	.type	gimp_vectors_export_string,@function
gimp_vectors_export_string:             # @gimp_vectors_export_string
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_string, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_26
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB2_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB2_21
.LBB2_16:                               # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_20:                               # %if.end.32
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_23
.LBB2_22:                               # %if.then.36
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_vectors_export_string, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_26
.LBB2_24:                               # %if.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.end.39
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_vectors_export
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	g_string_free
	movq	%rax, -8(%rbp)
.LBB2_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_export_string, .Lfunc_end2-gimp_vectors_export_string
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_vectors_export_image_size,@function
gimp_vectors_export_image_size:         # @gimp_vectors_export_image_size
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	callq	gimp_image_get_resolution
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_unit
	movl	%eax, -20(%rbp)
	decl	%eax
	movl	%eax, %edx
	subl	$3, %eax
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%eax, -172(%rbp)        # 4-byte Spill
	ja	.LBB3_5
# BB#7:                                 # %entry
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movabsq	$.L.str.13, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %sw.bb.5
	movabsq	$.L.str.14, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_6
.LBB3_3:                                # %sw.bb.6
	movabsq	$.L.str.15, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %sw.bb.7
	movabsq	$.L.str.16, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %sw.default
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.17, %rax
	movq	%rax, -32(%rbp)
	movl	$2, -20(%rbp)
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)
.LBB3_6:                                # %sw.epilog
	leaq	-80(%rbp), %rdi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movl	$39, %esi
	movabsq	$.L.str.18, %rdx
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	g_ascii_formatd
	leaq	-128(%rbp), %rdi
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor
	movl	$39, %esi
	movabsq	$.L.str.18, %rdx
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	g_ascii_formatd
	movabsq	$.L.str.19, %rsi
	leaq	-128(%rbp), %r8
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_export_image_size, .Lfunc_end3-gimp_vectors_export_image_size
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_1
	.quad	.LBB3_2
	.quad	.LBB3_3
	.quad	.LBB3_4

	.text
	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB4_2
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
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_string_append_c_inline, .Lfunc_end4-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_export_path,@function
gimp_vectors_export_path:               # @gimp_vectors_export_path
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_vectors_export_path_data
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_markup_escape_text
	movabsq	$.L.str.20, %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vectors_export_path, .Lfunc_end5-gimp_vectors_export_path
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_export_path_data,@function
gimp_vectors_export_path_data:          # @gimp_vectors_export_path_data
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
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	$0, -116(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
                                        #     Child Loop BB6_32 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB6_44
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	-116(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	gimp_stroke_control_points_get
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_bezier_stroke_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB6_11
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB6_9
# BB#8:                                 # %if.then.9
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -172(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.10
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB6_10:                               # %if.end.12
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.13
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB6_27
# BB#12:                                # %if.then.15
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$3, 8(%rax)
	jb	.LBB6_14
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-64(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-112(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.23, %rsi
	leaq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_14:                               # %if.end.25
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$3, 8(%rax)
	jbe	.LBB6_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.24, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_16:                               # %if.end.29
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$2, -148(%rbp)
.LBB6_17:                               # %for.cond.30
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$2, %ecx
	movl	-148(%rbp), %edx
	movq	-136(%rbp), %rsi
	movl	8(%rsi), %edi
	cmpl	$0, -116(%rbp)
	cmovnel	%ecx, %eax
	addl	%eax, %edi
	cmpl	%edi, %edx
	jae	.LBB6_23
# BB#18:                                # %for.body.34
                                        #   in Loop: Header=BB6_17 Depth=2
	cmpl	$2, -148(%rbp)
	jle	.LBB6_21
# BB#19:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	$3, %eax
	movl	-148(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$2, %edx
	jne	.LBB6_21
# BB#20:                                # %if.then.38
                                        #   in Loop: Header=BB6_17 Depth=2
	movabsq	$.L.str.25, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_21:                               # %if.end.39
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-64(%rbp), %rdi
	movl	-148(%rbp), %eax
	movq	-136(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-136(%rbp), %r9
	movq	(%r9), %r9
	imulq	$72, %rcx, %rcx
	addq	%rcx, %r9
	movq	%r9, -144(%rbp)
	movq	-144(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-208(%rbp), %rdx        # 8-byte Reload
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-112(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.26, %rsi
	leaq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_17
.LBB6_23:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -116(%rbp)
	je	.LBB6_26
# BB#24:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$3, 8(%rax)
	jbe	.LBB6_26
# BB#25:                                # %if.then.58
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.27, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_26:                               # %if.end.59
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_42
.LBB6_27:                               # %if.else.60
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	-136(%rbp), %rdi
	cmpl	$1, 8(%rdi)
	jb	.LBB6_29
# BB#28:                                # %if.then.63
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.29, %rdx
	leaq	-64(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.29, %rdx
	leaq	-112(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.23, %rsi
	leaq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_29:                               # %if.end.76
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 8(%rax)
	jbe	.LBB6_31
# BB#30:                                # %if.then.79
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.30, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_31:                               # %if.end.80
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -148(%rbp)
.LBB6_32:                               # %for.cond.81
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	movq	-136(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_38
# BB#33:                                # %for.body.84
                                        #   in Loop: Header=BB6_32 Depth=2
	cmpl	$1, -148(%rbp)
	jle	.LBB6_36
# BB#34:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$3, %eax
	movl	-148(%rbp), %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB6_36
# BB#35:                                # %if.then.89
                                        #   in Loop: Header=BB6_32 Depth=2
	movabsq	$.L.str.25, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_36:                               # %if.end.90
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-148(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rcx
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.22, %rdx
	leaq	-112(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.26, %rsi
	leaq	-112(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
# BB#37:                                # %for.inc.104
                                        #   in Loop: Header=BB6_32 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_32
.LBB6_38:                               # %for.end.106
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -116(%rbp)
	je	.LBB6_41
# BB#39:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-136(%rbp), %rax
	cmpl	$1, 8(%rax)
	jbe	.LBB6_41
# BB#40:                                # %if.then.111
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.27, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB6_41:                               # %if.end.112
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.113
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %esi
	movq	-136(%rbp), %rdi
	callq	g_array_free
	movq	%rax, -272(%rbp)        # 8-byte Spill
# BB#43:                                # %for.inc.115
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_44:                               # %for.end.116
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_string_free
	movq	%rax, %rdi
	callq	g_strchomp
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vectors_export_path_data, .Lfunc_end6-gimp_vectors_export_path_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Vectors"
	.size	.L.str, 13

	.type	.L__func__.gimp_vectors_export_file,@object # @__func__.gimp_vectors_export_file
.L__func__.gimp_vectors_export_file:
	.asciz	"gimp_vectors_export_file"
	.size	.L__func__.gimp_vectors_export_file, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vectors == NULL || GIMP_IS_VECTORS (vectors)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"filename != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error while writing '%s': %s"
	.size	.L.str.8, 29

	.type	.L__func__.gimp_vectors_export_string,@object # @__func__.gimp_vectors_export_string
.L__func__.gimp_vectors_export_string:
	.asciz	"gimp_vectors_export_string"
	.size	.L__func__.gimp_vectors_export_string, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 20010904//EN\"\n              \"http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd\">\n\n<svg xmlns=\"http://www.w3.org/2000/svg\"\n"
	.size	.L.str.9, 223

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"     "
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"     viewBox=\"0 0 %d %d\">\n"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"</svg>\n"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"in"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"mm"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pt"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pc"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cm"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%g"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"width=\"%s%s\" height=\"%s%s\""
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"  <path id=\"%s\"\n        fill=\"none\" stroke=\"black\" stroke-width=\"1\"\n        d=\"%s\" />\n"
	.size	.L.str.20, 87

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\n           "
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%.2f"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"M %s,%s"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\n           C"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\n            "
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" %s,%s"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" Z"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unknown stroke type\n"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	".2f"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\n           L"
	.size	.L.str.30, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
