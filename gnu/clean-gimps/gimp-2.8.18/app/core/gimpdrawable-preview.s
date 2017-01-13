	.text
	.file	"gimpdrawable-preview.bc"
	.globl	gimp_drawable_get_preview
	.align	16, 0x90
	.type	gimp_drawable_get_preview,@function
gimp_drawable_get_preview:              # @gimp_drawable_get_preview
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB0_12
# BB#3:                                 # %land.lhs.true
	cmpl	$112, -28(%rbp)
	jg	.LBB0_12
# BB#4:                                 # %land.lhs.true.6
	cmpl	$112, -32(%rbp)
	jg	.LBB0_12
# BB#5:                                 # %land.lhs.true.8
	cmpq	$0, -48(%rbp)
	je	.LBB0_12
# BB#6:                                 # %land.lhs.true.10
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	cmpl	$112, %eax
	jle	.LBB0_12
# BB#7:                                 # %land.lhs.true.13
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_height
	cmpl	$112, %eax
	jle	.LBB0_12
# BB#8:                                 # %if.then.16
	movl	$112, %eax
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_drawable_preview_private
	movq	%rax, -56(%rbp)
	cmpl	$112, -28(%rbp)
	jne	.LBB0_11
# BB#9:                                 # %land.lhs.true.19
	cmpl	$112, -32(%rbp)
	jne	.LBB0_11
# BB#10:                                # %if.then.21
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.22
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.23
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_drawable_preview_private
	movq	%rax, -8(%rbp)
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_get_preview, .Lfunc_end0-gimp_drawable_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_preview_private,@function
gimp_drawable_preview_private:          # @gimp_drawable_preview_private
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpl	$0, 96(%rdi)
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	$88, %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_preview_cache_get
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_5
.LBB1_2:                                # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movl	-12(%rbp), %r9d
	movl	-16(%rbp), %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_get_sub_preview
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	callq	gimp_preview_cache_invalidate
.LBB1_4:                                # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 96(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	addq	$88, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_preview_cache_add
.LBB1_5:                                # %if.end.18
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_preview_private, .Lfunc_end1-gimp_drawable_preview_private
	.cfi_endproc

	.globl	gimp_drawable_preview_bytes
	.align	16, 0x90
	.type	gimp_drawable_preview_bytes,@function
gimp_drawable_preview_bytes:            # @gimp_drawable_preview_bytes
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
	movl	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_preview_bytes, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB2_14
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB2_15
.LBB2_14:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB2_22
.LBB2_15:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB2_17
# BB#16:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB2_18
.LBB2_17:                               # %cond.true.20
	movl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB2_21
.LBB2_18:                               # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB2_20
# BB#19:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB2_20:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB2_21:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB2_22:                               # %cond.end.27
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	%eax, %ecx
	subl	$2, %eax
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB2_23
	jmp	.LBB2_27
.LBB2_27:                               # %cond.end.27
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB2_24
	jmp	.LBB2_25
.LBB2_23:                               # %sw.bb
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -24(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %sw.bb.30
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	$3, %ecx
	movl	$4, %edx
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, -24(%rbp)
.LBB2_25:                               # %sw.epilog
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_preview_bytes, .Lfunc_end2-gimp_drawable_preview_bytes
	.cfi_endproc

	.globl	gimp_drawable_get_sub_preview
	.align	16, 0x90
	.type	gimp_drawable_get_sub_preview,@function
gimp_drawable_get_sub_preview:          # @gimp_drawable_get_sub_preview
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
	subq	$144, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jl	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.23
	cmpl	$0, -28(%rbp)
	jle	.LBB3_25
# BB#24:                                # %if.then.25
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_26:                               # %if.end.27
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.28
	jmp	.LBB3_28
.LBB3_28:                               # %do.body.29
	cmpl	$0, -32(%rbp)
	jle	.LBB3_30
# BB#29:                                # %if.then.31
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_31:                               # %if.end.33
	jmp	.LBB3_32
.LBB3_32:                               # %do.end.34
	jmp	.LBB3_33
.LBB3_33:                               # %do.body.35
	cmpl	$0, -36(%rbp)
	jle	.LBB3_35
# BB#34:                                # %if.then.37
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.38
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_36:                               # %if.end.39
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.40
	jmp	.LBB3_38
.LBB3_38:                               # %do.body.41
	cmpl	$0, -40(%rbp)
	jle	.LBB3_40
# BB#39:                                # %if.then.43
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_41:                               # %if.end.45
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.46
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
# BB#43:                                # %do.body.49
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_item_get_width
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_45
# BB#44:                                # %if.then.52
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.53
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_46:                               # %if.end.54
	jmp	.LBB3_47
.LBB3_47:                               # %do.end.55
	jmp	.LBB3_48
.LBB3_48:                               # %do.body.56
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_50
# BB#49:                                # %if.then.60
	jmp	.LBB3_51
.LBB3_50:                               # %if.else.61
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_get_sub_preview, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_51:                               # %if.end.62
	jmp	.LBB3_52
.LBB3_52:                               # %do.end.63
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB3_54
# BB#53:                                # %if.then.66
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_54:                               # %if.end.67
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB3_56
# BB#55:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB3_57
.LBB3_56:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB3_64
.LBB3_57:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB3_59
# BB#58:                                # %lor.lhs.false.74
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB3_60
.LBB3_59:                               # %cond.true.77
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB3_63
.LBB3_60:                               # %cond.false.78
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB3_62
# BB#61:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB3_62:                               # %lor.end
	movb	-105(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB3_63:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB3_64:                               # %cond.end.84
	movl	-100(%rbp), %eax        # 4-byte Reload
	cmpl	$2, %eax
	jne	.LBB3_66
# BB#65:                                # %if.then.87
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_get_colormap
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %r10d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_drawable_indexed_preview
	movq	%rax, -8(%rbp)
	jmp	.LBB3_67
.LBB3_66:                               # %if.end.90
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	tile_manager_get_sub_preview
	movq	%rax, -8(%rbp)
.LBB3_67:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_get_sub_preview, .Lfunc_end3-gimp_drawable_get_sub_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_indexed_preview,@function
gimp_drawable_indexed_preview:          # @gimp_drawable_indexed_preview
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
	subq	$208, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_preview_bytes
	movl	%eax, -180(%rbp)
	movl	$1, -184(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	-184(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %eax
	shll	$1, %eax
	cmpl	-28(%rbp), %eax
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jge	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-40(%rbp), %eax
	movl	-184(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	shll	$1, %eax
	cmpl	-28(%rbp), %eax
	setl	%dl
	movb	%dl, -185(%rbp)         # 1-byte Spill
.LBB4_3:                                # %land.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	-185(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB4_1
.LBB4_5:                                # %while.end
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%esi, -192(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-192(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	movl	-200(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-184(%rbp), %ecx
	callq	subsample_indexed_region
	movq	-48(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_indexed_preview, .Lfunc_end4-gimp_drawable_indexed_preview
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_preview_bytes,@object # @__func__.gimp_drawable_preview_bytes
.L__func__.gimp_drawable_preview_bytes:
	.asciz	"gimp_drawable_preview_bytes"
	.size	.L__func__.gimp_drawable_preview_bytes, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L__func__.gimp_drawable_get_sub_preview,@object # @__func__.gimp_drawable_get_sub_preview
.L__func__.gimp_drawable_get_sub_preview:
	.asciz	"gimp_drawable_get_sub_preview"
	.size	.L__func__.gimp_drawable_get_sub_preview, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"src_x >= 0"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"src_y >= 0"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"src_width > 0"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"src_height > 0"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dest_width > 0"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dest_height > 0"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(src_x + src_width) <= gimp_item_get_width (item)"
	.size	.L.str.8, 50

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(src_y + src_height) <= gimp_item_get_height (item)"
	.size	.L.str.9, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
