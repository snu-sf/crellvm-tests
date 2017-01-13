	.text
	.file	"gimppreviewarea.bc"
	.globl	gimp_preview_area_get_type
	.align	16, 0x90
	.type	gimp_preview_area_get_type,@function
gimp_preview_area_get_type:             # @gimp_preview_area_get_type
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
	movq	gimp_preview_area_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_preview_area_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_drawing_area_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$784, %edx              # imm = 0x310
	leaq	gimp_preview_area_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_preview_area_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_preview_area_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_preview_area_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_preview_area_get_type, .Lfunc_end0-gimp_preview_area_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_class_intern_init,@function
gimp_preview_area_class_intern_init:    # @gimp_preview_area_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_preview_area_parent_class(%rip)
	cmpl	$0, GimpPreviewArea_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpPreviewArea_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_preview_area_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_preview_area_class_intern_init, .Lfunc_end1-gimp_preview_area_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_init,@function
gimp_preview_area_init:                 # @gimp_preview_area_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 108(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 124(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 116(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 132(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_preview_area_init, .Lfunc_end2-gimp_preview_area_init
	.cfi_endproc

	.globl	gimp_preview_area_new
	.align	16, 0x90
	.type	gimp_preview_area_new,@function
gimp_preview_area_new:                  # @gimp_preview_area_new
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
	callq	gimp_preview_area_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_preview_area_new, .Lfunc_end3-gimp_preview_area_new
	.cfi_endproc

	.globl	gimp_preview_area_draw
	.align	16, 0x90
	.type	gimp_preview_area_draw,@function
gimp_preview_area_draw:                 # @gimp_preview_area_draw
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
	subq	$304, %rsp              # imm = 0x130
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%r10, -40(%rbp)
	movl	%eax, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB4_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -24(%rbp)
	jl	.LBB4_16
# BB#15:                                # %if.then.15
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_17:                               # %if.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.18
	cmpl	$0, -20(%rbp)
	je	.LBB4_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB4_21
.LBB4_20:                               # %if.then.21
	jmp	.LBB4_139
.LBB4_21:                               # %if.end.22
	jmp	.LBB4_22
.LBB4_22:                               # %do.body.23
	cmpq	$0, -40(%rbp)
	je	.LBB4_24
# BB#23:                                # %if.then.25
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.26
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_25:                               # %if.end.27
	jmp	.LBB4_26
.LBB4_26:                               # %do.end.28
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.29
	cmpl	$0, -44(%rbp)
	jle	.LBB4_29
# BB#28:                                # %if.then.31
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.32
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_30:                               # %if.end.33
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.34
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB4_33
# BB#32:                                # %lor.lhs.false.36
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB4_34
.LBB4_33:                               # %if.then.39
	jmp	.LBB4_139
.LBB4_34:                               # %if.end.40
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB4_36
# BB#35:                                # %lor.lhs.false.43
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jl	.LBB4_37
.LBB4_36:                               # %if.then.46
	jmp	.LBB4_139
.LBB4_37:                               # %if.end.47
	cmpl	$0, -12(%rbp)
	jge	.LBB4_39
# BB#38:                                # %if.then.49
	movl	-28(%rbp), %edi
	callq	gimp_preview_area_image_type_bytes
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	%eax, -108(%rbp)
	movl	-12(%rbp), %eax
	imull	-108(%rbp), %eax
	movq	-40(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -40(%rbp)
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -12(%rbp)
.LBB4_39:                               # %if.end.53
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jle	.LBB4_41
# BB#40:                                # %if.then.57
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB4_41:                               # %if.end.59
	cmpl	$0, -16(%rbp)
	jge	.LBB4_43
# BB#42:                                # %if.then.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	imull	-44(%rbp), %eax
	movq	-40(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -40(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB4_43:                               # %if.end.67
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jle	.LBB4_45
# BB#44:                                # %if.then.71
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, -24(%rbp)
.LBB4_45:                               # %if.end.74
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB4_47
# BB#46:                                # %if.then.77
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	imull	$3, 112(%rcx), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	116(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB4_47:                               # %if.end.87
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	addl	$2, %ecx
	movb	%cl, %dl
	movl	$1, %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-236(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	movl	%esi, -68(%rbp)
	movq	-8(%rbp), %rax
	movl	108(%rax), %edi
	leaq	-69(%rbp), %rsi
	leaq	-70(%rbp), %rdx
	callq	gimp_checks_get_shades@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movl	-12(%rbp), %edi
	movl	%edi, %esi
	leal	(%rsi,%rsi,2), %edi
	movslq	%edi, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %edi
	movl	120(%rax), %r8d
	imull	%r8d, %edi
	movslq	%edi, %rax
	addq	%rax, %rdx
	movq	%rdx, -64(%rbp)
	movl	-28(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	ja	.LBB4_138
# BB#140:                               # %if.end.87
	leaq	.LJTI4_0(%rip), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB4_48:                               # %sw.bb
	movl	$0, -76(%rbp)
.LBB4_49:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_52
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	imull	$3, -20(%rbp), %eax
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movq	-8(%rbp), %rdx
	movl	120(%rdx), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
# BB#51:                                # %for.inc
                                        #   in Loop: Header=BB4_49 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_49
.LBB4_52:                               # %for.end
	jmp	.LBB4_138
.LBB4_53:                               # %sw.bb.106
	movl	-16(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB4_54:                               # %for.cond.107
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_56 Depth 2
	movl	-76(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_71
# BB#55:                                # %for.body.111
                                        #   in Loop: Header=BB4_54 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB4_56:                               # %for.cond.114
                                        #   Parent Loop BB4_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_69
# BB#57:                                # %for.body.118
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	-120(%rbp), %rax
	movzbl	3(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	je	.LBB4_58
	jmp	.LBB4_143
.LBB4_143:                              # %for.body.118
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	-260(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB4_62
	jmp	.LBB4_63
.LBB4_58:                               # %sw.bb.120
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_60
# BB#59:                                # %cond.true
                                        #   in Loop: Header=BB4_56 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB4_61
.LBB4_60:                               # %cond.false
                                        #   in Loop: Header=BB4_56 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_61:                               # %cond.end
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	-268(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-128(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-128(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-128(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB4_67
.LBB4_62:                               # %sw.bb.132
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	-120(%rbp), %rax
	movb	(%rax), %cl
	movq	-128(%rbp), %rax
	movb	%cl, (%rax)
	movq	-120(%rbp), %rax
	movb	1(%rax), %cl
	movq	-128(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-120(%rbp), %rax
	movb	2(%rax), %cl
	movq	-128(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB4_67
.LBB4_63:                               # %sw.default
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	-120(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_65
# BB#64:                                # %cond.true.152
                                        #   in Loop: Header=BB4_56 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB4_66
.LBB4_65:                               # %cond.false.154
                                        #   in Loop: Header=BB4_56 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB4_66:                               # %cond.end.156
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %eax
	shll	$8, %eax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-136(%rbp), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-128(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-136(%rbp), %eax
	shll	$8, %eax
	movq	-120(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-136(%rbp), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-128(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-136(%rbp), %eax
	shll	$8, %eax
	movq	-120(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-136(%rbp), %edx
	imull	-132(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-128(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB4_67:                               # %sw.epilog
                                        #   in Loop: Header=BB4_56 Depth=2
	jmp	.LBB4_68
.LBB4_68:                               # %for.inc.184
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-120(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -120(%rbp)
	movq	-128(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB4_56
.LBB4_69:                               # %for.end.188
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#70:                                # %for.inc.194
                                        #   in Loop: Header=BB4_54 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_54
.LBB4_71:                               # %for.end.196
	jmp	.LBB4_138
.LBB4_72:                               # %sw.bb.197
	movl	$0, -76(%rbp)
.LBB4_73:                               # %for.cond.198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_75 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_80
# BB#74:                                # %for.body.201
                                        #   in Loop: Header=BB4_73 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -80(%rbp)
.LBB4_75:                               # %for.cond.206
                                        #   Parent Loop BB4_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_78
# BB#76:                                # %for.body.209
                                        #   in Loop: Header=BB4_75 Depth=2
	movq	-144(%rbp), %rax
	movb	(%rax), %cl
	movq	-152(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-152(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-152(%rbp), %rax
	movb	%cl, (%rax)
# BB#77:                                # %for.inc.214
                                        #   in Loop: Header=BB4_75 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movq	-152(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -152(%rbp)
	jmp	.LBB4_75
.LBB4_78:                               # %for.end.217
                                        #   in Loop: Header=BB4_73 Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#79:                                # %for.inc.223
                                        #   in Loop: Header=BB4_73 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_73
.LBB4_80:                               # %for.end.225
	jmp	.LBB4_138
.LBB4_81:                               # %sw.bb.226
	movl	-16(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB4_82:                               # %for.cond.227
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_84 Depth 2
	movl	-76(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_99
# BB#83:                                # %for.body.231
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB4_84:                               # %for.cond.236
                                        #   Parent Loop BB4_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_97
# BB#85:                                # %for.body.240
                                        #   in Loop: Header=BB4_84 Depth=2
	movq	-160(%rbp), %rax
	movzbl	1(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	je	.LBB4_86
	jmp	.LBB4_142
.LBB4_142:                              # %for.body.240
                                        #   in Loop: Header=BB4_84 Depth=2
	movl	-276(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB4_90
	jmp	.LBB4_91
.LBB4_86:                               # %sw.bb.243
                                        #   in Loop: Header=BB4_84 Depth=2
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_88
# BB#87:                                # %cond.true.252
                                        #   in Loop: Header=BB4_84 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB4_89
.LBB4_88:                               # %cond.false.254
                                        #   in Loop: Header=BB4_84 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB4_89:                               # %cond.end.256
                                        #   in Loop: Header=BB4_84 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-168(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-168(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-168(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB4_95
.LBB4_90:                               # %sw.bb.262
                                        #   in Loop: Header=BB4_84 Depth=2
	movq	-160(%rbp), %rax
	movb	(%rax), %cl
	movq	-168(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-168(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-168(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB4_95
.LBB4_91:                               # %sw.default.267
                                        #   in Loop: Header=BB4_84 Depth=2
	movq	-160(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -172(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_93
# BB#92:                                # %cond.true.283
                                        #   in Loop: Header=BB4_84 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB4_94
.LBB4_93:                               # %cond.false.285
                                        #   in Loop: Header=BB4_84 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB4_94:                               # %cond.end.287
                                        #   in Loop: Header=BB4_84 Depth=2
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	shll	$8, %eax
	movq	-160(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-176(%rbp), %edx
	imull	-172(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-168(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-168(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movq	-168(%rbp), %rcx
	movb	%sil, (%rcx)
.LBB4_95:                               # %sw.epilog.300
                                        #   in Loop: Header=BB4_84 Depth=2
	jmp	.LBB4_96
.LBB4_96:                               # %for.inc.301
                                        #   in Loop: Header=BB4_84 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-160(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -160(%rbp)
	movq	-168(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -168(%rbp)
	jmp	.LBB4_84
.LBB4_97:                               # %for.end.305
                                        #   in Loop: Header=BB4_82 Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#98:                                # %for.inc.311
                                        #   in Loop: Header=BB4_82 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_82
.LBB4_99:                               # %for.end.313
	jmp	.LBB4_138
.LBB4_100:                              # %sw.bb.314
	jmp	.LBB4_101
.LBB4_101:                              # %do.body.315
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_103
# BB#102:                               # %if.then.318
	jmp	.LBB4_104
.LBB4_103:                              # %if.else.319
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_104:                              # %if.end.320
	jmp	.LBB4_105
.LBB4_105:                              # %do.end.321
	movl	$0, -76(%rbp)
.LBB4_106:                              # %for.cond.322
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_108 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB4_113
# BB#107:                               # %for.body.325
                                        #   in Loop: Header=BB4_106 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	$0, -80(%rbp)
.LBB4_108:                              # %for.cond.330
                                        #   Parent Loop BB4_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_111
# BB#109:                               # %for.body.333
                                        #   in Loop: Header=BB4_108 Depth=2
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	-184(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movb	(%rax), %sil
	movq	-192(%rbp), %rax
	movb	%sil, (%rax)
	movq	-200(%rbp), %rax
	movb	1(%rax), %sil
	movq	-192(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-200(%rbp), %rax
	movb	2(%rax), %sil
	movq	-192(%rbp), %rax
	movb	%sil, 2(%rax)
# BB#110:                               # %for.inc.348
                                        #   in Loop: Header=BB4_108 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-184(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movq	-192(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -192(%rbp)
	jmp	.LBB4_108
.LBB4_111:                              # %for.end.352
                                        #   in Loop: Header=BB4_106 Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#112:                               # %for.inc.358
                                        #   in Loop: Header=BB4_106 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_106
.LBB4_113:                              # %for.end.360
	jmp	.LBB4_138
.LBB4_114:                              # %sw.bb.361
	jmp	.LBB4_115
.LBB4_115:                              # %do.body.362
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_117
# BB#116:                               # %if.then.366
	jmp	.LBB4_118
.LBB4_117:                              # %if.else.367
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_draw(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_139
.LBB4_118:                              # %if.end.368
	jmp	.LBB4_119
.LBB4_119:                              # %do.end.369
	movl	-16(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB4_120:                              # %for.cond.370
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_122 Depth 2
	movl	-76(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_137
# BB#121:                               # %for.body.374
                                        #   in Loop: Header=BB4_120 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB4_122:                              # %for.cond.379
                                        #   Parent Loop BB4_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_135
# BB#123:                               # %for.body.383
                                        #   in Loop: Header=BB4_122 Depth=2
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -292(%rbp)        # 4-byte Spill
	je	.LBB4_124
	jmp	.LBB4_141
.LBB4_141:                              # %for.body.383
                                        #   in Loop: Header=BB4_122 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB4_128
	jmp	.LBB4_129
.LBB4_124:                              # %sw.bb.394
                                        #   in Loop: Header=BB4_122 Depth=2
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_126
# BB#125:                               # %cond.true.403
                                        #   in Loop: Header=BB4_122 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB4_127
.LBB4_126:                              # %cond.false.405
                                        #   in Loop: Header=BB4_122 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_127:                              # %cond.end.407
                                        #   in Loop: Header=BB4_122 Depth=2
	movl	-300(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-216(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-216(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB4_133
.LBB4_128:                              # %sw.bb.413
                                        #   in Loop: Header=BB4_122 Depth=2
	movq	-224(%rbp), %rax
	movb	(%rax), %cl
	movq	-216(%rbp), %rax
	movb	%cl, (%rax)
	movq	-224(%rbp), %rax
	movb	1(%rax), %cl
	movq	-216(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-224(%rbp), %rax
	movb	2(%rax), %cl
	movq	-216(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB4_133
.LBB4_129:                              # %sw.default.420
                                        #   in Loop: Header=BB4_122 Depth=2
	movq	-208(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -228(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-76(%rbp), %ecx
	andl	-68(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	addl	-80(%rbp), %edx
	andl	-68(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB4_131
# BB#130:                               # %cond.true.436
                                        #   in Loop: Header=BB4_122 Depth=2
	movzbl	-70(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB4_132
.LBB4_131:                              # %cond.false.438
                                        #   in Loop: Header=BB4_122 Depth=2
	movzbl	-69(%rbp), %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB4_132:                              # %cond.end.440
                                        #   in Loop: Header=BB4_122 Depth=2
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	shll	$8, %eax
	movq	-224(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-232(%rbp), %edx
	imull	-228(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-232(%rbp), %eax
	shll	$8, %eax
	movq	-224(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-232(%rbp), %edx
	imull	-228(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-232(%rbp), %eax
	shll	$8, %eax
	movq	-224(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-232(%rbp), %edx
	imull	-228(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-216(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB4_133:                              # %sw.epilog.469
                                        #   in Loop: Header=BB4_122 Depth=2
	jmp	.LBB4_134
.LBB4_134:                              # %for.inc.470
                                        #   in Loop: Header=BB4_122 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	movq	-208(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -208(%rbp)
	movq	-216(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -216(%rbp)
	jmp	.LBB4_122
.LBB4_135:                              # %for.end.474
                                        #   in Loop: Header=BB4_120 Depth=1
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#136:                               # %for.inc.480
                                        #   in Loop: Header=BB4_120 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_120
.LBB4_137:                              # %for.end.482
	jmp	.LBB4_138
.LBB4_138:                              # %sw.epilog.483
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_preview_area_queue_draw
.LBB4_139:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_preview_area_draw, .Lfunc_end4-gimp_preview_area_draw
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI4_0:
	.long	.LBB4_48-.LJTI4_0
	.long	.LBB4_53-.LJTI4_0
	.long	.LBB4_72-.LJTI4_0
	.long	.LBB4_81-.LJTI4_0
	.long	.LBB4_100-.LJTI4_0
	.long	.LBB4_114-.LJTI4_0

	.text
	.align	16, 0x90
	.type	gimp_preview_area_image_type_bytes,@function
gimp_preview_area_image_type_bytes:     # @gimp_preview_area_image_type_bytes
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$5, %rcx
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	ja	.LBB5_5
# BB#8:                                 # %entry
	leaq	.LJTI5_0(%rip), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB5_1:                                # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %sw.bb.1
	movl	$2, -4(%rbp)
	jmp	.LBB5_7
.LBB5_3:                                # %sw.bb.2
	movl	$3, -4(%rbp)
	jmp	.LBB5_7
.LBB5_4:                                # %sw.bb.3
	movl	$4, -4(%rbp)
	jmp	.LBB5_7
.LBB5_5:                                # %sw.default
	jmp	.LBB5_6
.LBB5_6:                                # %do.body
	leaq	.L.str.1(%rip), %rdi
	movl	$8, %esi
	leaq	.L.str.23(%rip), %rdx
	leaq	.L.str.21(%rip), %rcx
	movl	$308, %r8d              # imm = 0x134
	leaq	.L__func__.gimp_preview_area_image_type_bytes(%rip), %r9
	movb	$0, %al
	callq	g_log@PLT
	movl	$0, -4(%rbp)
.LBB5_7:                                # %sw.epilog
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_preview_area_image_type_bytes, .Lfunc_end5-gimp_preview_area_image_type_bytes
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI5_0:
	.long	.LBB5_3-.LJTI5_0
	.long	.LBB5_4-.LJTI5_0
	.long	.LBB5_1-.LJTI5_0
	.long	.LBB5_2-.LJTI5_0
	.long	.LBB5_1-.LJTI5_0
	.long	.LBB5_2-.LJTI5_0

	.text
	.align	16, 0x90
	.type	gimp_preview_area_queue_draw,@function
gimp_preview_area_queue_draw:           # @gimp_preview_area_queue_draw
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movl	$2, %ecx
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	subl	112(%rax), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rsi
	subl	116(%rsi), %eax
	cltd
	idivl	%ecx
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	%eax, %edx
	callq	gtk_widget_queue_draw_area@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_preview_area_queue_draw, .Lfunc_end6-gimp_preview_area_queue_draw
	.cfi_endproc

	.globl	gimp_preview_area_blend
	.align	16, 0x90
	.type	gimp_preview_area_blend,@function
gimp_preview_area_blend:                # @gimp_preview_area_blend
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
	pushq	%r14
	pushq	%rbx
	subq	$480, %rsp              # imm = 0x1E0
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
	movb	48(%rbp), %al
	movl	40(%rbp), %r10d
	movq	32(%rbp), %r11
	movl	24(%rbp), %ebx
	movq	16(%rbp), %r14
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	%r14, -56(%rbp)
	movl	%ebx, -60(%rbp)
	movq	%r11, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movb	%al, -77(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -148(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpl	$0, -36(%rbp)
	jl	.LBB7_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -40(%rbp)
	jl	.LBB7_16
# BB#15:                                # %if.then.15
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_17:                               # %if.end.17
	jmp	.LBB7_18
.LBB7_18:                               # %do.end.18
	cmpl	$0, -36(%rbp)
	je	.LBB7_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -40(%rbp)
	jne	.LBB7_21
.LBB7_20:                               # %if.then.21
	jmp	.LBB7_180
.LBB7_21:                               # %if.end.22
	jmp	.LBB7_22
.LBB7_22:                               # %do.body.23
	cmpq	$0, -56(%rbp)
	je	.LBB7_24
# BB#23:                                # %if.then.25
	jmp	.LBB7_25
.LBB7_24:                               # %if.else.26
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_25:                               # %if.end.27
	jmp	.LBB7_26
.LBB7_26:                               # %do.end.28
	jmp	.LBB7_27
.LBB7_27:                               # %do.body.29
	cmpq	$0, -72(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.31
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.32
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_30:                               # %if.end.33
	jmp	.LBB7_31
.LBB7_31:                               # %do.end.34
	jmp	.LBB7_32
.LBB7_32:                               # %do.body.35
	cmpl	$0, -60(%rbp)
	jle	.LBB7_34
# BB#33:                                # %if.then.37
	jmp	.LBB7_35
.LBB7_34:                               # %if.else.38
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_35:                               # %if.end.39
	jmp	.LBB7_36
.LBB7_36:                               # %do.end.40
	jmp	.LBB7_37
.LBB7_37:                               # %do.body.41
	cmpl	$0, -76(%rbp)
	jle	.LBB7_39
# BB#38:                                # %if.then.43
	jmp	.LBB7_40
.LBB7_39:                               # %if.else.44
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_40:                               # %if.end.45
	jmp	.LBB7_41
.LBB7_41:                               # %do.end.46
	movzbl	-77(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	je	.LBB7_42
	jmp	.LBB7_181
.LBB7_181:                              # %do.end.46
	movl	-388(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	je	.LBB7_43
	jmp	.LBB7_44
.LBB7_42:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	jmp	.LBB7_180
.LBB7_43:                               # %sw.bb.47
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw@PLT
	jmp	.LBB7_180
.LBB7_44:                               # %sw.default
	jmp	.LBB7_45
.LBB7_45:                               # %sw.epilog
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_47
# BB#46:                                # %lor.lhs.false.50
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB7_48
.LBB7_47:                               # %if.then.54
	jmp	.LBB7_180
.LBB7_48:                               # %if.end.55
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB7_50
# BB#49:                                # %lor.lhs.false.59
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jl	.LBB7_51
.LBB7_50:                               # %if.then.63
	jmp	.LBB7_180
.LBB7_51:                               # %if.end.64
	cmpl	$0, -28(%rbp)
	jge	.LBB7_53
# BB#52:                                # %if.then.67
	movl	-44(%rbp), %edi
	callq	gimp_preview_area_image_type_bytes
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	%eax, -156(%rbp)
	movl	-28(%rbp), %eax
	imull	-156(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	%rdx, -56(%rbp)
	movl	-28(%rbp), %eax
	imull	-156(%rbp), %eax
	movq	-72(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -72(%rbp)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB7_53:                               # %if.end.75
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jle	.LBB7_55
# BB#54:                                # %if.then.80
	movq	-24(%rbp), %rax
	movl	112(%rax), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -36(%rbp)
.LBB7_55:                               # %if.end.82
	cmpl	$0, -32(%rbp)
	jge	.LBB7_57
# BB#56:                                # %if.then.85
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	imull	-60(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -56(%rbp)
	movl	-32(%rbp), %eax
	imull	-76(%rbp), %eax
	movq	-72(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -72(%rbp)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB7_57:                               # %if.end.95
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jle	.LBB7_59
# BB#58:                                # %if.then.100
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	subl	-32(%rbp), %ecx
	movl	%ecx, -40(%rbp)
.LBB7_59:                               # %if.end.103
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB7_61
# BB#60:                                # %if.then.105
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	imull	$3, 112(%rcx), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-24(%rbp), %rcx
	imull	116(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB7_61:                               # %if.end.115
	movq	-24(%rbp), %rax
	movl	104(%rax), %ecx
	addl	$2, %ecx
	movb	%cl, %dl
	movl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-396(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	movl	%esi, -108(%rbp)
	movq	-24(%rbp), %rax
	movl	108(%rax), %edi
	leaq	-109(%rbp), %rsi
	leaq	-110(%rbp), %rdx
	callq	gimp_checks_get_shades@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movl	-28(%rbp), %edi
	movl	%edi, %esi
	leal	(%rsi,%rsi,2), %edi
	movslq	%edi, %rsi
	addq	%rsi, %rdx
	movl	-32(%rbp), %edi
	movl	120(%rax), %r8d
	imull	%r8d, %edi
	movslq	%edi, %rax
	addq	%rax, %rdx
	movq	%rdx, -104(%rbp)
	movl	-44(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	ja	.LBB7_179
# BB#182:                               # %if.end.115
	leaq	.LJTI7_0(%rip), %rax
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB7_62:                               # %sw.bb.125
	movl	$0, -116(%rbp)
.LBB7_63:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_65 Depth 2
	movl	-116(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_70
# BB#64:                                # %for.body
                                        #   in Loop: Header=BB7_63 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -120(%rbp)
.LBB7_65:                               # %for.cond.131
                                        #   Parent Loop BB7_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_68
# BB#66:                                # %for.body.135
                                        #   in Loop: Header=BB7_65 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-176(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-168(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movb	%dil, (%rax)
	movq	-168(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-176(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-168(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movb	%dil, 1(%rax)
	movq	-168(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-176(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-168(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-184(%rbp), %rax
	movb	%dil, 2(%rax)
# BB#67:                                # %for.inc
                                        #   in Loop: Header=BB7_65 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-168(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -168(%rbp)
	movq	-176(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -176(%rbp)
	movq	-184(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -184(%rbp)
	jmp	.LBB7_65
.LBB7_68:                               # %for.end
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#69:                                # %for.inc.186
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_63
.LBB7_70:                               # %for.end.188
	jmp	.LBB7_179
.LBB7_71:                               # %sw.bb.189
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB7_72:                               # %for.cond.190
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_74 Depth 2
                                        #       Child Loop BB7_79 Depth 3
	movl	-116(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_98
# BB#73:                                # %for.body.194
                                        #   in Loop: Header=BB7_72 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -120(%rbp)
.LBB7_74:                               # %for.cond.201
                                        #   Parent Loop BB7_72 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_79 Depth 3
	movl	-120(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_96
# BB#75:                                # %for.body.205
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	-192(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-200(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB7_77
# BB#76:                                # %if.then.213
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-200(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-192(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -212(%rbp)
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-200(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -211(%rbp)
	movq	-192(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-200(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-192(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -210(%rbp)
	movq	-192(%rbp), %rax
	movb	3(%rax), %dil
	movb	%dil, -209(%rbp)
	jmp	.LBB7_84
.LBB7_77:                               # %if.else.258
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	-192(%rbp), %rax
	movzbl	3(%rax), %ecx
	shll	$8, %ecx
	movq	-200(%rbp), %rax
	movzbl	3(%rax), %edx
	movq	-192(%rbp), %rax
	movzbl	3(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -209(%rbp)
	cmpb	$0, -209(%rbp)
	je	.LBB7_83
# BB#78:                                # %if.then.275
                                        #   in Loop: Header=BB7_74 Depth=2
	movl	$0, -124(%rbp)
.LBB7_79:                               # %for.cond.276
                                        #   Parent Loop BB7_72 Depth=1
                                        #     Parent Loop BB7_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -124(%rbp)
	jge	.LBB7_82
# BB#80:                                # %for.body.279
                                        #   in Loop: Header=BB7_79 Depth=3
	movslq	-124(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-192(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -214(%rbp)
	movslq	-124(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-200(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -216(%rbp)
	movzwl	-214(%rbp), %edx
	shll	$8, %edx
	movzwl	-216(%rbp), %esi
	movzwl	-214(%rbp), %r8d
	subl	%r8d, %esi
	movzbl	-77(%rbp), %r8d
	imull	%r8d, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movzbl	-209(%rbp), %esi
	movl	%edx, %eax
	cltd
	idivl	%esi
	movb	%al, %r9b
	movslq	-124(%rbp), %rcx
	movb	%r9b, -212(%rbp,%rcx)
# BB#81:                                # %for.inc.309
                                        #   in Loop: Header=BB7_79 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB7_79
.LBB7_82:                               # %for.end.311
                                        #   in Loop: Header=BB7_74 Depth=2
	jmp	.LBB7_83
.LBB7_83:                               # %if.end.312
                                        #   in Loop: Header=BB7_74 Depth=2
	jmp	.LBB7_84
.LBB7_84:                               # %if.end.313
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-209(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB7_85
	jmp	.LBB7_185
.LBB7_185:                              # %if.end.313
                                        #   in Loop: Header=BB7_74 Depth=2
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	je	.LBB7_89
	jmp	.LBB7_90
.LBB7_85:                               # %sw.bb.316
                                        #   in Loop: Header=BB7_74 Depth=2
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-116(%rbp), %ecx
	andl	-108(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	124(%rax), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB7_87
# BB#86:                                # %cond.true
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB7_88
.LBB7_87:                               # %cond.false
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB7_88:                               # %cond.end
                                        #   in Loop: Header=BB7_74 Depth=2
	movl	-428(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-208(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-208(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB7_94
.LBB7_89:                               # %sw.bb.328
                                        #   in Loop: Header=BB7_74 Depth=2
	movb	-212(%rbp), %al
	movq	-208(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-211(%rbp), %al
	movq	-208(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-210(%rbp), %al
	movq	-208(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB7_94
.LBB7_90:                               # %sw.default.335
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-209(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-116(%rbp), %eax
	andl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB7_92
# BB#91:                                # %cond.true.349
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB7_93
.LBB7_92:                               # %cond.false.351
                                        #   in Loop: Header=BB7_74 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB7_93:                               # %cond.end.353
                                        #   in Loop: Header=BB7_74 Depth=2
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)
	movl	-224(%rbp), %eax
	shll	$8, %eax
	movzbl	-212(%rbp), %ecx
	subl	-224(%rbp), %ecx
	imull	-220(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-208(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-224(%rbp), %eax
	shll	$8, %eax
	movzbl	-211(%rbp), %ecx
	subl	-224(%rbp), %ecx
	imull	-220(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-208(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-224(%rbp), %eax
	shll	$8, %eax
	movzbl	-210(%rbp), %ecx
	subl	-224(%rbp), %ecx
	imull	-220(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-208(%rbp), %rsi
	movb	%dl, 2(%rsi)
.LBB7_94:                               # %sw.epilog.382
                                        #   in Loop: Header=BB7_74 Depth=2
	jmp	.LBB7_95
.LBB7_95:                               # %for.inc.383
                                        #   in Loop: Header=BB7_74 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-192(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -192(%rbp)
	movq	-200(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -200(%rbp)
	movq	-208(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -208(%rbp)
	jmp	.LBB7_74
.LBB7_96:                               # %for.end.388
                                        #   in Loop: Header=BB7_72 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#97:                                # %for.inc.396
                                        #   in Loop: Header=BB7_72 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_72
.LBB7_98:                               # %for.end.398
	jmp	.LBB7_179
.LBB7_99:                               # %sw.bb.399
	movl	$0, -116(%rbp)
.LBB7_100:                              # %for.cond.400
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_102 Depth 2
	movl	-116(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_107
# BB#101:                               # %for.body.403
                                        #   in Loop: Header=BB7_100 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	$0, -120(%rbp)
.LBB7_102:                              # %for.cond.410
                                        #   Parent Loop BB7_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB7_105
# BB#103:                               # %for.body.413
                                        #   in Loop: Header=BB7_102 Depth=2
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-240(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-248(%rbp), %rax
	movb	%dil, 2(%rax)
	movq	-248(%rbp), %rax
	movb	%dil, 1(%rax)
	movq	-248(%rbp), %rax
	movb	%dil, (%rax)
# BB#104:                               # %for.inc.430
                                        #   in Loop: Header=BB7_102 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-232(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)
	movq	-240(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movq	-248(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -248(%rbp)
	jmp	.LBB7_102
.LBB7_105:                              # %for.end.434
                                        #   in Loop: Header=BB7_100 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#106:                               # %for.inc.442
                                        #   in Loop: Header=BB7_100 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_100
.LBB7_107:                              # %for.end.444
	jmp	.LBB7_179
.LBB7_108:                              # %sw.bb.445
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB7_109:                              # %for.cond.446
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_111 Depth 2
	movl	-116(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_131
# BB#110:                               # %for.body.450
                                        #   in Loop: Header=BB7_109 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -120(%rbp)
.LBB7_111:                              # %for.cond.457
                                        #   Parent Loop BB7_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_129
# BB#112:                               # %for.body.461
                                        #   in Loop: Header=BB7_111 Depth=2
	xorl	%esi, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-274(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset@PLT
	movq	-256(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movq	-264(%rbp), %rcx
	movzbl	1(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB7_114
# BB#113:                               # %if.then.470
                                        #   in Loop: Header=BB7_111 Depth=2
	movq	-256(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-264(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-256(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -274(%rbp)
	movq	-256(%rbp), %rax
	movb	1(%rax), %dil
	movb	%dil, -273(%rbp)
	jmp	.LBB7_117
.LBB7_114:                              # %if.else.487
                                        #   in Loop: Header=BB7_111 Depth=2
	movq	-256(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-264(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-256(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -273(%rbp)
	cmpb	$0, -273(%rbp)
	je	.LBB7_116
# BB#115:                               # %if.then.504
                                        #   in Loop: Header=BB7_111 Depth=2
	movq	-256(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-256(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movw	%cx, %si
	movw	%si, -276(%rbp)
	movq	-264(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-264(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movw	%cx, %si
	movw	%si, -278(%rbp)
	movzwl	-276(%rbp), %ecx
	shll	$8, %ecx
	movzwl	-278(%rbp), %edx
	movzwl	-276(%rbp), %edi
	subl	%edi, %edx
	movzbl	-77(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movzbl	-273(%rbp), %edx
	movl	%ecx, %eax
	movl	%edx, -436(%rbp)        # 4-byte Spill
	cltd
	movl	-436(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movb	%r8b, -274(%rbp)
.LBB7_116:                              # %if.end.535
                                        #   in Loop: Header=BB7_111 Depth=2
	jmp	.LBB7_117
.LBB7_117:                              # %if.end.536
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-273(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	je	.LBB7_118
	jmp	.LBB7_184
.LBB7_184:                              # %if.end.536
                                        #   in Loop: Header=BB7_111 Depth=2
	movl	-440(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	je	.LBB7_122
	jmp	.LBB7_123
.LBB7_118:                              # %sw.bb.539
                                        #   in Loop: Header=BB7_111 Depth=2
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-116(%rbp), %ecx
	andl	-108(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	124(%rax), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB7_120
# BB#119:                               # %cond.true.548
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB7_121
.LBB7_120:                              # %cond.false.550
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB7_121:                              # %cond.end.552
                                        #   in Loop: Header=BB7_111 Depth=2
	movl	-448(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-272(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-272(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-272(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB7_127
.LBB7_122:                              # %sw.bb.558
                                        #   in Loop: Header=BB7_111 Depth=2
	movb	-274(%rbp), %al
	movq	-272(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-272(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-272(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB7_127
.LBB7_123:                              # %sw.default.563
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-273(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-116(%rbp), %eax
	andl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB7_125
# BB#124:                               # %cond.true.579
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB7_126
.LBB7_125:                              # %cond.false.581
                                        #   in Loop: Header=BB7_111 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB7_126:                              # %cond.end.583
                                        #   in Loop: Header=BB7_111 Depth=2
	movl	-452(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)
	movl	-288(%rbp), %eax
	shll	$8, %eax
	movzbl	-274(%rbp), %ecx
	subl	-288(%rbp), %ecx
	imull	-284(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-272(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movq	-272(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movq	-272(%rbp), %rsi
	movb	%dl, (%rsi)
.LBB7_127:                              # %sw.epilog.596
                                        #   in Loop: Header=BB7_111 Depth=2
	jmp	.LBB7_128
.LBB7_128:                              # %for.inc.597
                                        #   in Loop: Header=BB7_111 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-256(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -256(%rbp)
	movq	-264(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -264(%rbp)
	movq	-272(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -272(%rbp)
	jmp	.LBB7_111
.LBB7_129:                              # %for.end.602
                                        #   in Loop: Header=BB7_109 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#130:                               # %for.inc.610
                                        #   in Loop: Header=BB7_109 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_109
.LBB7_131:                              # %for.end.612
	jmp	.LBB7_179
.LBB7_132:                              # %sw.bb.613
	jmp	.LBB7_133
.LBB7_133:                              # %do.body.614
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_135
# BB#134:                               # %if.then.617
	jmp	.LBB7_136
.LBB7_135:                              # %if.else.618
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_136:                              # %if.end.619
	jmp	.LBB7_137
.LBB7_137:                              # %do.end.620
	movl	$0, -116(%rbp)
.LBB7_138:                              # %for.cond.621
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_140 Depth 2
	movl	-116(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB7_145
# BB#139:                               # %for.body.624
                                        #   in Loop: Header=BB7_138 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)
	movl	$0, -120(%rbp)
.LBB7_140:                              # %for.cond.631
                                        #   Parent Loop BB7_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB7_143
# BB#141:                               # %for.body.634
                                        #   in Loop: Header=BB7_140 Depth=2
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	-296(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	-304(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	movzbl	(%rax), %edx
	shll	$8, %edx
	movq	-328(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-320(%rbp), %rax
	movzbl	(%rax), %edi
	subl	%edi, %esi
	movzbl	-77(%rbp), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-312(%rbp), %rax
	movb	%r8b, (%rax)
	movq	-320(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %esi
	movq	-320(%rbp), %rax
	movzbl	1(%rax), %edi
	subl	%edi, %esi
	movzbl	-77(%rbp), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-312(%rbp), %rax
	movb	%r8b, 1(%rax)
	movq	-320(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	movq	-328(%rbp), %rax
	movzbl	2(%rax), %esi
	movq	-320(%rbp), %rax
	movzbl	2(%rax), %edi
	subl	%edi, %esi
	movzbl	-77(%rbp), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-312(%rbp), %rax
	movb	%r8b, 2(%rax)
# BB#142:                               # %for.inc.691
                                        #   in Loop: Header=BB7_140 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-296(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)
	movq	-304(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -304(%rbp)
	movq	-312(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -312(%rbp)
	jmp	.LBB7_140
.LBB7_143:                              # %for.end.696
                                        #   in Loop: Header=BB7_138 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#144:                               # %for.inc.704
                                        #   in Loop: Header=BB7_138 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_138
.LBB7_145:                              # %for.end.706
	jmp	.LBB7_179
.LBB7_146:                              # %sw.bb.707
	jmp	.LBB7_147
.LBB7_147:                              # %do.body.708
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_149
# BB#148:                               # %if.then.712
	jmp	.LBB7_150
.LBB7_149:                              # %if.else.713
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_blend(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_180
.LBB7_150:                              # %if.end.714
	jmp	.LBB7_151
.LBB7_151:                              # %do.end.715
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB7_152:                              # %for.cond.716
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_154 Depth 2
                                        #       Child Loop BB7_159 Depth 3
	movl	-116(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_178
# BB#153:                               # %for.body.720
                                        #   in Loop: Header=BB7_152 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -352(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -120(%rbp)
.LBB7_154:                              # %for.cond.727
                                        #   Parent Loop BB7_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_159 Depth 3
	movl	-120(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_176
# BB#155:                               # %for.body.731
                                        #   in Loop: Header=BB7_154 Depth=2
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	-336(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -360(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	-344(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -368(%rbp)
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-344(%rbp), %rax
	movzbl	1(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB7_157
# BB#156:                               # %if.then.756
                                        #   in Loop: Header=BB7_154 Depth=2
	movq	-360(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-368(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-360(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -372(%rbp)
	movq	-360(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-368(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-360(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -371(%rbp)
	movq	-360(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-368(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-360(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -370(%rbp)
	movq	-336(%rbp), %rax
	movb	1(%rax), %dil
	movb	%dil, -369(%rbp)
	jmp	.LBB7_164
.LBB7_157:                              # %if.else.801
                                        #   in Loop: Header=BB7_154 Depth=2
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-344(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movzbl	-77(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -369(%rbp)
	cmpb	$0, -369(%rbp)
	je	.LBB7_163
# BB#158:                               # %if.then.818
                                        #   in Loop: Header=BB7_154 Depth=2
	movl	$0, -124(%rbp)
.LBB7_159:                              # %for.cond.819
                                        #   Parent Loop BB7_152 Depth=1
                                        #     Parent Loop BB7_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -124(%rbp)
	jge	.LBB7_162
# BB#160:                               # %for.body.822
                                        #   in Loop: Header=BB7_159 Depth=3
	movslq	-124(%rbp), %rax
	movq	-360(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -374(%rbp)
	movslq	-124(%rbp), %rax
	movq	-368(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-344(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -376(%rbp)
	movzwl	-374(%rbp), %edx
	shll	$8, %edx
	movzwl	-376(%rbp), %esi
	movzwl	-374(%rbp), %r8d
	subl	%r8d, %esi
	movzbl	-77(%rbp), %r8d
	imull	%r8d, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movzbl	-369(%rbp), %esi
	movl	%edx, %eax
	cltd
	idivl	%esi
	movb	%al, %r9b
	movslq	-124(%rbp), %rcx
	movb	%r9b, -372(%rbp,%rcx)
# BB#161:                               # %for.inc.856
                                        #   in Loop: Header=BB7_159 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB7_159
.LBB7_162:                              # %for.end.858
                                        #   in Loop: Header=BB7_154 Depth=2
	jmp	.LBB7_163
.LBB7_163:                              # %if.end.859
                                        #   in Loop: Header=BB7_154 Depth=2
	jmp	.LBB7_164
.LBB7_164:                              # %if.end.860
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-369(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	je	.LBB7_165
	jmp	.LBB7_183
.LBB7_183:                              # %if.end.860
                                        #   in Loop: Header=BB7_154 Depth=2
	movl	-456(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	je	.LBB7_169
	jmp	.LBB7_170
.LBB7_165:                              # %sw.bb.863
                                        #   in Loop: Header=BB7_154 Depth=2
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-116(%rbp), %ecx
	andl	-108(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	124(%rax), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB7_167
# BB#166:                               # %cond.true.872
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB7_168
.LBB7_167:                              # %cond.false.874
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB7_168:                              # %cond.end.876
                                        #   in Loop: Header=BB7_154 Depth=2
	movl	-464(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-352(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB7_174
.LBB7_169:                              # %sw.bb.882
                                        #   in Loop: Header=BB7_154 Depth=2
	movb	-372(%rbp), %al
	movq	-352(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-371(%rbp), %al
	movq	-352(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-370(%rbp), %al
	movq	-352(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB7_174
.LBB7_170:                              # %sw.default.889
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-369(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-116(%rbp), %eax
	andl	-108(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-120(%rbp), %edx
	andl	-108(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB7_172
# BB#171:                               # %cond.true.905
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-110(%rbp), %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB7_173
.LBB7_172:                              # %cond.false.907
                                        #   in Loop: Header=BB7_154 Depth=2
	movzbl	-109(%rbp), %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB7_173:                              # %cond.end.909
                                        #   in Loop: Header=BB7_154 Depth=2
	movl	-468(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)
	movl	-384(%rbp), %eax
	shll	$8, %eax
	movzbl	-372(%rbp), %ecx
	subl	-384(%rbp), %ecx
	imull	-380(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-352(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-384(%rbp), %eax
	shll	$8, %eax
	movzbl	-371(%rbp), %ecx
	subl	-384(%rbp), %ecx
	imull	-380(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-352(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-384(%rbp), %eax
	shll	$8, %eax
	movzbl	-370(%rbp), %ecx
	subl	-384(%rbp), %ecx
	imull	-380(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-352(%rbp), %rsi
	movb	%dl, 2(%rsi)
.LBB7_174:                              # %sw.epilog.938
                                        #   in Loop: Header=BB7_154 Depth=2
	jmp	.LBB7_175
.LBB7_175:                              # %for.inc.939
                                        #   in Loop: Header=BB7_154 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movq	-336(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -336(%rbp)
	movq	-344(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -344(%rbp)
	movq	-352(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -352(%rbp)
	jmp	.LBB7_154
.LBB7_176:                              # %for.end.944
                                        #   in Loop: Header=BB7_152 Depth=1
	movl	-60(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#177:                               # %for.inc.952
                                        #   in Loop: Header=BB7_152 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB7_152
.LBB7_178:                              # %for.end.954
	jmp	.LBB7_179
.LBB7_179:                              # %sw.epilog.955
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	gimp_preview_area_queue_draw
.LBB7_180:                              # %return
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_preview_area_blend, .Lfunc_end7-gimp_preview_area_blend
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI7_0:
	.long	.LBB7_62-.LJTI7_0
	.long	.LBB7_71-.LJTI7_0
	.long	.LBB7_99-.LJTI7_0
	.long	.LBB7_108-.LJTI7_0
	.long	.LBB7_132-.LJTI7_0
	.long	.LBB7_146-.LJTI7_0

	.text
	.globl	gimp_preview_area_mask
	.align	16, 0x90
	.type	gimp_preview_area_mask,@function
gimp_preview_area_mask:                 # @gimp_preview_area_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movl	56(%rbp), %eax
	movq	48(%rbp), %r10
	movl	40(%rbp), %r11d
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movq	16(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r15, -64(%rbp)
	movl	%r14d, -68(%rbp)
	movq	%rbx, -80(%rbp)
	movl	%r11d, -84(%rbp)
	movq	%r10, -96(%rbp)
	movl	%eax, -100(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -180(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -180(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -180(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpl	$0, -44(%rbp)
	jl	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -48(%rbp)
	jl	.LBB8_16
# BB#15:                                # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	cmpl	$0, -44(%rbp)
	je	.LBB8_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jne	.LBB8_21
.LBB8_20:                               # %if.then.21
	jmp	.LBB8_258
.LBB8_21:                               # %if.end.22
	jmp	.LBB8_22
.LBB8_22:                               # %do.body.23
	cmpq	$0, -64(%rbp)
	je	.LBB8_24
# BB#23:                                # %if.then.25
	jmp	.LBB8_25
.LBB8_24:                               # %if.else.26
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_25:                               # %if.end.27
	jmp	.LBB8_26
.LBB8_26:                               # %do.end.28
	jmp	.LBB8_27
.LBB8_27:                               # %do.body.29
	cmpq	$0, -80(%rbp)
	je	.LBB8_29
# BB#28:                                # %if.then.31
	jmp	.LBB8_30
.LBB8_29:                               # %if.else.32
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_30:                               # %if.end.33
	jmp	.LBB8_31
.LBB8_31:                               # %do.end.34
	jmp	.LBB8_32
.LBB8_32:                               # %do.body.35
	cmpq	$0, -96(%rbp)
	je	.LBB8_34
# BB#33:                                # %if.then.37
	jmp	.LBB8_35
.LBB8_34:                               # %if.else.38
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_35:                               # %if.end.39
	jmp	.LBB8_36
.LBB8_36:                               # %do.end.40
	jmp	.LBB8_37
.LBB8_37:                               # %do.body.41
	cmpl	$0, -68(%rbp)
	jle	.LBB8_39
# BB#38:                                # %if.then.43
	jmp	.LBB8_40
.LBB8_39:                               # %if.else.44
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_40:                               # %if.end.45
	jmp	.LBB8_41
.LBB8_41:                               # %do.end.46
	jmp	.LBB8_42
.LBB8_42:                               # %do.body.47
	cmpl	$0, -84(%rbp)
	jle	.LBB8_44
# BB#43:                                # %if.then.49
	jmp	.LBB8_45
.LBB8_44:                               # %if.else.50
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_45:                               # %if.end.51
	jmp	.LBB8_46
.LBB8_46:                               # %do.end.52
	jmp	.LBB8_47
.LBB8_47:                               # %do.body.53
	cmpl	$0, -100(%rbp)
	jle	.LBB8_49
# BB#48:                                # %if.then.55
	jmp	.LBB8_50
.LBB8_49:                               # %if.else.56
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_50:                               # %if.end.57
	jmp	.LBB8_51
.LBB8_51:                               # %do.end.58
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB8_53
# BB#52:                                # %lor.lhs.false.60
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB8_54
.LBB8_53:                               # %if.then.63
	jmp	.LBB8_258
.LBB8_54:                               # %if.end.64
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB8_56
# BB#55:                                # %lor.lhs.false.67
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jl	.LBB8_57
.LBB8_56:                               # %if.then.70
	jmp	.LBB8_258
.LBB8_57:                               # %if.end.71
	cmpl	$0, -36(%rbp)
	jge	.LBB8_59
# BB#58:                                # %if.then.73
	movl	-52(%rbp), %edi
	callq	gimp_preview_area_image_type_bytes
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	%eax, -188(%rbp)
	movl	-36(%rbp), %eax
	imull	-188(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	%rdx, -64(%rbp)
	movl	-36(%rbp), %eax
	imull	-188(%rbp), %eax
	movq	-80(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %r8
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	%rdx, -80(%rbp)
	movl	-36(%rbp), %eax
	movq	-96(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -36(%rbp)
.LBB8_59:                               # %if.end.84
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jle	.LBB8_61
# BB#60:                                # %if.then.88
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB8_61:                               # %if.end.90
	cmpl	$0, -40(%rbp)
	jge	.LBB8_63
# BB#62:                                # %if.then.92
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-40(%rbp), %eax
	imull	-68(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -64(%rbp)
	movl	-40(%rbp), %eax
	imull	-84(%rbp), %eax
	movq	-80(%rbp), %rdx
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -80(%rbp)
	movl	-40(%rbp), %eax
	imull	-100(%rbp), %eax
	movq	-96(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -40(%rbp)
.LBB8_63:                               # %if.end.106
	movl	-40(%rbp), %eax
	addl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jle	.LBB8_65
# BB#64:                                # %if.then.110
	movq	-32(%rbp), %rax
	movl	116(%rax), %ecx
	subl	-40(%rbp), %ecx
	movl	%ecx, -48(%rbp)
.LBB8_65:                               # %if.end.113
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB8_67
# BB#66:                                # %if.then.115
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	imull	$3, 112(%rcx), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-32(%rbp), %rcx
	imull	116(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB8_67:                               # %if.end.124
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	addl	$2, %ecx
	movb	%cl, %dl
	movl	$1, %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-516(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	movl	%esi, -140(%rbp)
	movq	-32(%rbp), %rax
	movl	108(%rax), %edi
	leaq	-141(%rbp), %rsi
	leaq	-142(%rbp), %rdx
	callq	gimp_checks_get_shades@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdx
	movl	-36(%rbp), %edi
	movl	%edi, %esi
	leal	(%rsi,%rsi,2), %edi
	movslq	%edi, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %edi
	movl	120(%rax), %r8d
	imull	%r8d, %edi
	movslq	%edi, %rax
	addq	%rax, %rdx
	movq	%rdx, -136(%rbp)
	movl	-52(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	ja	.LBB8_257
# BB#259:                               # %if.end.124
	leaq	.LJTI8_0(%rip), %rax
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB8_68:                               # %sw.bb
	movl	$0, -148(%rbp)
.LBB8_69:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_71 Depth 2
	movl	-148(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_76
# BB#70:                                # %for.body
                                        #   in Loop: Header=BB8_69 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB8_71:                               # %for.cond.140
                                        #   Parent Loop BB8_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-152(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_74
# BB#72:                                # %for.body.144
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-208(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-200(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movq	-216(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-224(%rbp), %rax
	movb	%dil, (%rax)
	movq	-200(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-200(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movq	-216(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-224(%rbp), %rax
	movb	%dil, 1(%rax)
	movq	-200(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-208(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-200(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movq	-216(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-224(%rbp), %rax
	movb	%dil, 2(%rax)
# BB#73:                                # %for.inc
                                        #   in Loop: Header=BB8_71 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-200(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -200(%rbp)
	movq	-208(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -208(%rbp)
	movq	-216(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movq	-224(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -224(%rbp)
	jmp	.LBB8_71
.LBB8_74:                               # %for.end
                                        #   in Loop: Header=BB8_69 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#75:                                # %for.inc.200
                                        #   in Loop: Header=BB8_69 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_69
.LBB8_76:                               # %for.end.202
	jmp	.LBB8_257
.LBB8_77:                               # %sw.bb.203
	movl	-40(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB8_78:                               # %for.cond.204
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_80 Depth 2
                                        #       Child Loop BB8_108 Depth 3
	movl	-148(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_128
# BB#79:                                # %for.body.208
                                        #   in Loop: Header=BB8_78 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -256(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB8_80:                               # %for.cond.217
                                        #   Parent Loop BB8_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_108 Depth 3
	movl	-152(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_126
# BB#81:                                # %for.body.221
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-248(%rbp), %rax
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	je	.LBB8_82
	jmp	.LBB8_268
.LBB8_268:                              # %for.body.221
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-540(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	je	.LBB8_93
	jmp	.LBB8_104
.LBB8_82:                               # %sw.bb.224
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	je	.LBB8_83
	jmp	.LBB8_270
.LBB8_270:                              # %sw.bb.224
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-548(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	je	.LBB8_87
	jmp	.LBB8_88
.LBB8_83:                               # %sw.bb.227
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_85
# BB#84:                                # %cond.true
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB8_86
.LBB8_85:                               # %cond.false
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB8_86:                               # %cond.end
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-556(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-256(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_92
.LBB8_87:                               # %sw.bb.239
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movb	(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, (%rax)
	movq	-232(%rbp), %rax
	movb	1(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-232(%rbp), %rax
	movb	2(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB8_92
.LBB8_88:                               # %sw.default
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -260(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_90
# BB#89:                                # %cond.true.259
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB8_91
.LBB8_90:                               # %cond.false.261
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB8_91:                               # %cond.end.263
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)
	movl	-264(%rbp), %eax
	shll	$8, %eax
	movq	-232(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-264(%rbp), %edx
	imull	-260(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-264(%rbp), %eax
	shll	$8, %eax
	movq	-232(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-264(%rbp), %edx
	imull	-260(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-264(%rbp), %eax
	shll	$8, %eax
	movq	-232(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-264(%rbp), %edx
	imull	-260(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB8_92:                               # %sw.epilog
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_124
.LBB8_93:                               # %sw.bb.292
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-240(%rbp), %rax
	movzbl	3(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	je	.LBB8_94
	jmp	.LBB8_269
.LBB8_269:                              # %sw.bb.292
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-564(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	je	.LBB8_98
	jmp	.LBB8_99
.LBB8_94:                               # %sw.bb.295
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_96
# BB#95:                                # %cond.true.304
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	jmp	.LBB8_97
.LBB8_96:                               # %cond.false.306
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB8_97:                               # %cond.end.308
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-572(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-256(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_103
.LBB8_98:                               # %sw.bb.314
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-240(%rbp), %rax
	movb	(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, (%rax)
	movq	-240(%rbp), %rax
	movb	1(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-240(%rbp), %rax
	movb	2(%rax), %cl
	movq	-256(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB8_103
.LBB8_99:                               # %sw.default.321
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-240(%rbp), %rax
	movzbl	3(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -268(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_101
# BB#100:                               # %cond.true.337
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB8_102
.LBB8_101:                              # %cond.false.339
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB8_102:                              # %cond.end.341
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-576(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)
	movl	-272(%rbp), %eax
	shll	$8, %eax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-272(%rbp), %edx
	imull	-268(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-272(%rbp), %eax
	shll	$8, %eax
	movq	-240(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-272(%rbp), %edx
	imull	-268(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-272(%rbp), %eax
	shll	$8, %eax
	movq	-240(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-272(%rbp), %edx
	imull	-268(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-256(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB8_103:                              # %sw.epilog.370
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_124
.LBB8_104:                              # %sw.default.371
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-240(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB8_106
# BB#105:                               # %if.then.379
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-240(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movq	-248(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -276(%rbp)
	movq	-232(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-240(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movq	-248(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -275(%rbp)
	movq	-232(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-240(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movq	-248(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -274(%rbp)
	movq	-232(%rbp), %rax
	movb	3(%rax), %dil
	movb	%dil, -273(%rbp)
	jmp	.LBB8_113
.LBB8_106:                              # %if.else.427
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %ecx
	shll	$8, %ecx
	movq	-240(%rbp), %rax
	movzbl	3(%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %esi
	subl	%esi, %edx
	movq	-248(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -273(%rbp)
	cmpb	$0, -273(%rbp)
	je	.LBB8_112
# BB#107:                               # %if.then.445
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	$0, -156(%rbp)
.LBB8_108:                              # %for.cond.446
                                        #   Parent Loop BB8_78 Depth=1
                                        #     Parent Loop BB8_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -156(%rbp)
	jge	.LBB8_111
# BB#109:                               # %for.body.449
                                        #   in Loop: Header=BB8_108 Depth=3
	movslq	-156(%rbp), %rax
	movq	-232(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-232(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -278(%rbp)
	movslq	-156(%rbp), %rax
	movq	-240(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-240(%rbp), %rax
	movzbl	3(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -280(%rbp)
	movzwl	-278(%rbp), %edx
	shll	$8, %edx
	movzwl	-280(%rbp), %esi
	movzwl	-278(%rbp), %r8d
	subl	%r8d, %esi
	movq	-248(%rbp), %rax
	movzbl	(%rax), %r8d
	imull	%r8d, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movzbl	-273(%rbp), %esi
	movl	%edx, %eax
	cltd
	idivl	%esi
	movb	%al, %r9b
	movslq	-156(%rbp), %rcx
	movb	%r9b, -276(%rbp,%rcx)
# BB#110:                               # %for.inc.480
                                        #   in Loop: Header=BB8_108 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB8_108
.LBB8_111:                              # %for.end.482
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_112
.LBB8_112:                              # %if.end.483
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_113
.LBB8_113:                              # %if.end.484
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-273(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	je	.LBB8_114
	jmp	.LBB8_271
.LBB8_271:                              # %if.end.484
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-580(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	je	.LBB8_118
	jmp	.LBB8_119
.LBB8_114:                              # %sw.bb.487
                                        #   in Loop: Header=BB8_80 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_116
# BB#115:                               # %cond.true.496
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB8_117
.LBB8_116:                              # %cond.false.498
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB8_117:                              # %cond.end.500
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-588(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-256(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-256(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_123
.LBB8_118:                              # %sw.bb.506
                                        #   in Loop: Header=BB8_80 Depth=2
	movb	-276(%rbp), %al
	movq	-256(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-275(%rbp), %al
	movq	-256(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-274(%rbp), %al
	movq	-256(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB8_123
.LBB8_119:                              # %sw.default.513
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-273(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -284(%rbp)
	movq	-32(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-148(%rbp), %eax
	andl	-140(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB8_121
# BB#120:                               # %cond.true.529
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB8_122
.LBB8_121:                              # %cond.false.531
                                        #   in Loop: Header=BB8_80 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB8_122:                              # %cond.end.533
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)
	movl	-288(%rbp), %eax
	shll	$8, %eax
	movzbl	-276(%rbp), %ecx
	subl	-288(%rbp), %ecx
	imull	-284(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-256(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-288(%rbp), %eax
	shll	$8, %eax
	movzbl	-275(%rbp), %ecx
	subl	-288(%rbp), %ecx
	imull	-284(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-256(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-288(%rbp), %eax
	shll	$8, %eax
	movzbl	-274(%rbp), %ecx
	subl	-288(%rbp), %ecx
	imull	-284(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-256(%rbp), %rsi
	movb	%dl, 2(%rsi)
.LBB8_123:                              # %sw.epilog.562
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_124
.LBB8_124:                              # %sw.epilog.563
                                        #   in Loop: Header=BB8_80 Depth=2
	jmp	.LBB8_125
.LBB8_125:                              # %for.inc.564
                                        #   in Loop: Header=BB8_80 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-232(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -232(%rbp)
	movq	-240(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -240(%rbp)
	movq	-248(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -248(%rbp)
	movq	-256(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -256(%rbp)
	jmp	.LBB8_80
.LBB8_126:                              # %for.end.570
                                        #   in Loop: Header=BB8_78 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#127:                               # %for.inc.580
                                        #   in Loop: Header=BB8_78 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_78
.LBB8_128:                              # %for.end.582
	jmp	.LBB8_257
.LBB8_129:                              # %sw.bb.583
	movl	$0, -148(%rbp)
.LBB8_130:                              # %for.cond.584
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_132 Depth 2
	movl	-148(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_137
# BB#131:                               # %for.body.587
                                        #   in Loop: Header=BB8_130 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	$0, -152(%rbp)
.LBB8_132:                              # %for.cond.596
                                        #   Parent Loop BB8_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-152(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_135
# BB#133:                               # %for.body.599
                                        #   in Loop: Header=BB8_132 Depth=2
	movq	-296(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-304(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-296(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movq	-312(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-320(%rbp), %rax
	movb	%dil, 2(%rax)
	movq	-320(%rbp), %rax
	movb	%dil, 1(%rax)
	movq	-320(%rbp), %rax
	movb	%dil, (%rax)
# BB#134:                               # %for.inc.617
                                        #   in Loop: Header=BB8_132 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-296(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -296(%rbp)
	movq	-304(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -304(%rbp)
	movq	-312(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -312(%rbp)
	movq	-320(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -320(%rbp)
	jmp	.LBB8_132
.LBB8_135:                              # %for.end.623
                                        #   in Loop: Header=BB8_130 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#136:                               # %for.inc.633
                                        #   in Loop: Header=BB8_130 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_130
.LBB8_137:                              # %for.end.635
	jmp	.LBB8_257
.LBB8_138:                              # %sw.bb.636
	movl	-40(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB8_139:                              # %for.cond.637
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_141 Depth 2
	movl	-148(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_185
# BB#140:                               # %for.body.641
                                        #   in Loop: Header=BB8_139 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -352(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB8_141:                              # %for.cond.650
                                        #   Parent Loop BB8_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-152(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_183
# BB#142:                               # %for.body.654
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-344(%rbp), %rax
	movzbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	je	.LBB8_143
	jmp	.LBB8_264
.LBB8_264:                              # %for.body.654
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	je	.LBB8_154
	jmp	.LBB8_165
.LBB8_143:                              # %sw.bb.657
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	je	.LBB8_144
	jmp	.LBB8_266
.LBB8_266:                              # %sw.bb.657
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-604(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -608(%rbp)        # 4-byte Spill
	je	.LBB8_148
	jmp	.LBB8_149
.LBB8_144:                              # %sw.bb.660
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_146
# BB#145:                               # %cond.true.669
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
	jmp	.LBB8_147
.LBB8_146:                              # %cond.false.671
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -612(%rbp)        # 4-byte Spill
.LBB8_147:                              # %cond.end.673
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-612(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-352(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_153
.LBB8_148:                              # %sw.bb.679
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movb	(%rax), %cl
	movq	-352(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-352(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-352(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB8_153
.LBB8_149:                              # %sw.default.684
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -356(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_151
# BB#150:                               # %cond.true.700
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
	jmp	.LBB8_152
.LBB8_151:                              # %cond.false.702
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -616(%rbp)        # 4-byte Spill
.LBB8_152:                              # %cond.end.704
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-616(%rbp), %eax        # 4-byte Reload
	movl	%eax, -360(%rbp)
	movl	-360(%rbp), %eax
	shll	$8, %eax
	movq	-328(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-360(%rbp), %edx
	imull	-356(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-352(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-352(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movq	-352(%rbp), %rcx
	movb	%sil, (%rcx)
.LBB8_153:                              # %sw.epilog.717
                                        #   in Loop: Header=BB8_141 Depth=2
	jmp	.LBB8_181
.LBB8_154:                              # %sw.bb.718
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	je	.LBB8_155
	jmp	.LBB8_265
.LBB8_265:                              # %sw.bb.718
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-620(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	je	.LBB8_159
	jmp	.LBB8_160
.LBB8_155:                              # %sw.bb.721
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_157
# BB#156:                               # %cond.true.730
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB8_158
.LBB8_157:                              # %cond.false.732
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
.LBB8_158:                              # %cond.end.734
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-628(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-352(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_164
.LBB8_159:                              # %sw.bb.740
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-336(%rbp), %rax
	movb	(%rax), %cl
	movq	-352(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-352(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-352(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB8_164
.LBB8_160:                              # %sw.default.745
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -364(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_162
# BB#161:                               # %cond.true.761
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jmp	.LBB8_163
.LBB8_162:                              # %cond.false.763
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
.LBB8_163:                              # %cond.end.765
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-632(%rbp), %eax        # 4-byte Reload
	movl	%eax, -368(%rbp)
	movl	-368(%rbp), %eax
	shll	$8, %eax
	movq	-336(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-368(%rbp), %edx
	imull	-364(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-352(%rbp), %rcx
	movb	%sil, 2(%rcx)
	movq	-352(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movq	-352(%rbp), %rcx
	movb	%sil, (%rcx)
.LBB8_164:                              # %sw.epilog.778
                                        #   in Loop: Header=BB8_141 Depth=2
	jmp	.LBB8_181
.LBB8_165:                              # %sw.default.779
                                        #   in Loop: Header=BB8_141 Depth=2
	xorl	%esi, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-370(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset@PLT
	movq	-328(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movq	-336(%rbp), %rcx
	movzbl	1(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB8_167
# BB#166:                               # %if.then.788
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-336(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-328(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movq	-344(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -370(%rbp)
	movq	-328(%rbp), %rax
	movb	1(%rax), %dil
	movb	%dil, -369(%rbp)
	jmp	.LBB8_170
.LBB8_167:                              # %if.else.806
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movq	-344(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -369(%rbp)
	cmpb	$0, -369(%rbp)
	je	.LBB8_169
# BB#168:                               # %if.then.824
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-328(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-328(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movw	%cx, %si
	movw	%si, -372(%rbp)
	movq	-336(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-336(%rbp), %rax
	movzbl	1(%rax), %edx
	imull	%edx, %ecx
	movw	%cx, %si
	movw	%si, -374(%rbp)
	movzwl	-372(%rbp), %ecx
	shll	$8, %ecx
	movzwl	-374(%rbp), %edx
	movzwl	-372(%rbp), %edi
	subl	%edi, %edx
	movq	-344(%rbp), %rax
	movzbl	(%rax), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movzbl	-369(%rbp), %edx
	movl	%ecx, %eax
	movl	%edx, -636(%rbp)        # 4-byte Spill
	cltd
	movl	-636(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movb	%r8b, -370(%rbp)
.LBB8_169:                              # %if.end.856
                                        #   in Loop: Header=BB8_141 Depth=2
	jmp	.LBB8_170
.LBB8_170:                              # %if.end.857
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-369(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
	je	.LBB8_171
	jmp	.LBB8_267
.LBB8_267:                              # %if.end.857
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-640(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	je	.LBB8_175
	jmp	.LBB8_176
.LBB8_171:                              # %sw.bb.860
                                        #   in Loop: Header=BB8_141 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_173
# BB#172:                               # %cond.true.869
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB8_174
.LBB8_173:                              # %cond.false.871
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB8_174:                              # %cond.end.873
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-648(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-352(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-352(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_180
.LBB8_175:                              # %sw.bb.879
                                        #   in Loop: Header=BB8_141 Depth=2
	movb	-370(%rbp), %al
	movq	-352(%rbp), %rcx
	movb	%al, 2(%rcx)
	movq	-352(%rbp), %rcx
	movb	%al, 1(%rcx)
	movq	-352(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB8_180
.LBB8_176:                              # %sw.default.884
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-369(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -380(%rbp)
	movq	-32(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-148(%rbp), %eax
	andl	-140(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB8_178
# BB#177:                               # %cond.true.900
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB8_179
.LBB8_178:                              # %cond.false.902
                                        #   in Loop: Header=BB8_141 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB8_179:                              # %cond.end.904
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)
	movl	-384(%rbp), %eax
	shll	$8, %eax
	movzbl	-370(%rbp), %ecx
	subl	-384(%rbp), %ecx
	imull	-380(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-352(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movq	-352(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movq	-352(%rbp), %rsi
	movb	%dl, (%rsi)
.LBB8_180:                              # %sw.epilog.917
                                        #   in Loop: Header=BB8_141 Depth=2
	jmp	.LBB8_181
.LBB8_181:                              # %sw.epilog.918
                                        #   in Loop: Header=BB8_141 Depth=2
	jmp	.LBB8_182
.LBB8_182:                              # %for.inc.919
                                        #   in Loop: Header=BB8_141 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-328(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -328(%rbp)
	movq	-336(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -336(%rbp)
	movq	-344(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -344(%rbp)
	movq	-352(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -352(%rbp)
	jmp	.LBB8_141
.LBB8_183:                              # %for.end.925
                                        #   in Loop: Header=BB8_139 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#184:                               # %for.inc.935
                                        #   in Loop: Header=BB8_139 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_139
.LBB8_185:                              # %for.end.937
	jmp	.LBB8_257
.LBB8_186:                              # %sw.bb.938
	jmp	.LBB8_187
.LBB8_187:                              # %do.body.939
	movq	-32(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB8_189
# BB#188:                               # %if.then.942
	jmp	.LBB8_190
.LBB8_189:                              # %if.else.943
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_190:                              # %if.end.944
	jmp	.LBB8_191
.LBB8_191:                              # %do.end.945
	movl	$0, -148(%rbp)
.LBB8_192:                              # %for.cond.946
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_194 Depth 2
	movl	-148(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_199
# BB#193:                               # %for.body.949
                                        #   in Loop: Header=BB8_192 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -416(%rbp)
	movl	$0, -152(%rbp)
.LBB8_194:                              # %for.cond.958
                                        #   Parent Loop BB8_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-152(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB8_197
# BB#195:                               # %for.body.961
                                        #   in Loop: Header=BB8_194 Depth=2
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	-392(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -424(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	-400(%rbp), %rcx
	movzbl	(%rcx), %edx
	imull	$3, %edx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -432(%rbp)
	movq	-424(%rbp), %rax
	movzbl	(%rax), %edx
	shll	$8, %edx
	movq	-432(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-424(%rbp), %rax
	movzbl	(%rax), %edi
	subl	%edi, %esi
	movq	-408(%rbp), %rax
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-416(%rbp), %rax
	movb	%r8b, (%rax)
	movq	-424(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	movq	-432(%rbp), %rax
	movzbl	1(%rax), %esi
	movq	-424(%rbp), %rax
	movzbl	1(%rax), %edi
	subl	%edi, %esi
	movq	-408(%rbp), %rax
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-416(%rbp), %rax
	movb	%r8b, 1(%rax)
	movq	-424(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	movq	-432(%rbp), %rax
	movzbl	2(%rax), %esi
	movq	-424(%rbp), %rax
	movzbl	2(%rax), %edi
	subl	%edi, %esi
	movq	-408(%rbp), %rax
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movb	%dl, %r8b
	movq	-416(%rbp), %rax
	movb	%r8b, 2(%rax)
# BB#196:                               # %for.inc.1021
                                        #   in Loop: Header=BB8_194 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-392(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -392(%rbp)
	movq	-400(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -400(%rbp)
	movq	-408(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -408(%rbp)
	movq	-416(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -416(%rbp)
	jmp	.LBB8_194
.LBB8_197:                              # %for.end.1027
                                        #   in Loop: Header=BB8_192 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#198:                               # %for.inc.1037
                                        #   in Loop: Header=BB8_192 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_192
.LBB8_199:                              # %for.end.1039
	jmp	.LBB8_257
.LBB8_200:                              # %sw.bb.1040
	jmp	.LBB8_201
.LBB8_201:                              # %do.body.1041
	movq	-32(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB8_203
# BB#202:                               # %if.then.1045
	jmp	.LBB8_204
.LBB8_203:                              # %if.else.1046
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_mask(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_258
.LBB8_204:                              # %if.end.1047
	jmp	.LBB8_205
.LBB8_205:                              # %do.end.1048
	movl	-40(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB8_206:                              # %for.cond.1049
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_208 Depth 2
                                        #       Child Loop BB8_236 Depth 3
	movl	-148(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_256
# BB#207:                               # %for.body.1053
                                        #   in Loop: Header=BB8_206 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -464(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB8_208:                              # %for.cond.1062
                                        #   Parent Loop BB8_206 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_236 Depth 3
	movl	-152(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_254
# BB#209:                               # %for.body.1066
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	-440(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -472(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	-448(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)
	movq	-456(%rbp), %rax
	movzbl	(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -656(%rbp)        # 4-byte Spill
	je	.LBB8_210
	jmp	.LBB8_260
.LBB8_260:                              # %for.body.1066
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-656(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	je	.LBB8_221
	jmp	.LBB8_232
.LBB8_210:                              # %sw.bb.1085
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -664(%rbp)        # 4-byte Spill
	je	.LBB8_211
	jmp	.LBB8_262
.LBB8_262:                              # %sw.bb.1085
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-664(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB8_215
	jmp	.LBB8_216
.LBB8_211:                              # %sw.bb.1088
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_213
# BB#212:                               # %cond.true.1097
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB8_214
.LBB8_213:                              # %cond.false.1099
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB8_214:                              # %cond.end.1101
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-672(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_220
.LBB8_215:                              # %sw.bb.1107
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-472(%rbp), %rax
	movb	(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, (%rax)
	movq	-472(%rbp), %rax
	movb	1(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-472(%rbp), %rax
	movb	2(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB8_220
.LBB8_216:                              # %sw.default.1114
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -484(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_218
# BB#217:                               # %cond.true.1130
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB8_219
.LBB8_218:                              # %cond.false.1132
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB8_219:                              # %cond.end.1134
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	%eax, -488(%rbp)
	movl	-488(%rbp), %eax
	shll	$8, %eax
	movq	-472(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-488(%rbp), %edx
	imull	-484(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-488(%rbp), %eax
	shll	$8, %eax
	movq	-472(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-488(%rbp), %edx
	imull	-484(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-488(%rbp), %eax
	shll	$8, %eax
	movq	-472(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-488(%rbp), %edx
	imull	-484(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB8_220:                              # %sw.epilog.1163
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_252
.LBB8_221:                              # %sw.bb.1164
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-448(%rbp), %rax
	movzbl	1(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -680(%rbp)        # 4-byte Spill
	je	.LBB8_222
	jmp	.LBB8_261
.LBB8_261:                              # %sw.bb.1164
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-680(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	je	.LBB8_226
	jmp	.LBB8_227
.LBB8_222:                              # %sw.bb.1167
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_224
# BB#223:                               # %cond.true.1176
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jmp	.LBB8_225
.LBB8_224:                              # %cond.false.1178
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -688(%rbp)        # 4-byte Spill
.LBB8_225:                              # %cond.end.1180
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-688(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_231
.LBB8_226:                              # %sw.bb.1186
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-480(%rbp), %rax
	movb	(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, (%rax)
	movq	-480(%rbp), %rax
	movb	1(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-480(%rbp), %rax
	movb	2(%rax), %cl
	movq	-464(%rbp), %rax
	movb	%cl, 2(%rax)
	jmp	.LBB8_231
.LBB8_227:                              # %sw.default.1193
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-448(%rbp), %rax
	movzbl	1(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -492(%rbp)
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_229
# BB#228:                               # %cond.true.1209
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB8_230
.LBB8_229:                              # %cond.false.1211
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB8_230:                              # %cond.end.1213
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-692(%rbp), %eax        # 4-byte Reload
	movl	%eax, -496(%rbp)
	movl	-496(%rbp), %eax
	shll	$8, %eax
	movq	-480(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	-496(%rbp), %edx
	imull	-492(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, (%rcx)
	movl	-496(%rbp), %eax
	shll	$8, %eax
	movq	-480(%rbp), %rcx
	movzbl	1(%rcx), %edx
	subl	-496(%rbp), %edx
	imull	-492(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, 1(%rcx)
	movl	-496(%rbp), %eax
	shll	$8, %eax
	movq	-480(%rbp), %rcx
	movzbl	2(%rcx), %edx
	subl	-496(%rbp), %edx
	imull	-492(%rbp), %edx
	addl	%edx, %eax
	shrl	$8, %eax
	movb	%al, %sil
	movq	-464(%rbp), %rcx
	movb	%sil, 2(%rcx)
.LBB8_231:                              # %sw.epilog.1242
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_252
.LBB8_232:                              # %sw.default.1243
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-448(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB8_234
# BB#233:                               # %if.then.1252
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-472(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-480(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-472(%rbp), %rax
	movzbl	(%rax), %esi
	subl	%esi, %edx
	movq	-456(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -500(%rbp)
	movq	-472(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-480(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-472(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movq	-456(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -499(%rbp)
	movq	-472(%rbp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movq	-480(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-472(%rbp), %rax
	movzbl	2(%rax), %esi
	subl	%esi, %edx
	movq	-456(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -498(%rbp)
	movq	-440(%rbp), %rax
	movb	1(%rax), %dil
	movb	%dil, -497(%rbp)
	jmp	.LBB8_241
.LBB8_234:                              # %if.else.1300
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$8, %ecx
	movq	-448(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %esi
	subl	%esi, %edx
	movq	-456(%rbp), %rax
	movzbl	(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movb	%dil, -497(%rbp)
	cmpb	$0, -497(%rbp)
	je	.LBB8_240
# BB#235:                               # %if.then.1318
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	$0, -156(%rbp)
.LBB8_236:                              # %for.cond.1319
                                        #   Parent Loop BB8_206 Depth=1
                                        #     Parent Loop BB8_208 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -156(%rbp)
	jge	.LBB8_239
# BB#237:                               # %for.body.1322
                                        #   in Loop: Header=BB8_236 Depth=3
	movslq	-156(%rbp), %rax
	movq	-472(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -502(%rbp)
	movslq	-156(%rbp), %rax
	movq	-480(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-448(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	movw	%dx, %di
	movw	%di, -504(%rbp)
	movzwl	-502(%rbp), %edx
	shll	$8, %edx
	movzwl	-504(%rbp), %esi
	movzwl	-502(%rbp), %r8d
	subl	%r8d, %esi
	movq	-456(%rbp), %rax
	movzbl	(%rax), %r8d
	imull	%r8d, %esi
	addl	%esi, %edx
	sarl	$8, %edx
	movzbl	-497(%rbp), %esi
	movl	%edx, %eax
	cltd
	idivl	%esi
	movb	%al, %r9b
	movslq	-156(%rbp), %rcx
	movb	%r9b, -500(%rbp,%rcx)
# BB#238:                               # %for.inc.1357
                                        #   in Loop: Header=BB8_236 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB8_236
.LBB8_239:                              # %for.end.1359
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_240
.LBB8_240:                              # %if.end.1360
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_241
.LBB8_241:                              # %if.end.1361
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-497(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	je	.LBB8_242
	jmp	.LBB8_263
.LBB8_263:                              # %if.end.1361
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-696(%rbp), %eax        # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	je	.LBB8_246
	jmp	.LBB8_247
.LBB8_242:                              # %sw.bb.1364
                                        #   in Loop: Header=BB8_208 Depth=2
	movq	-32(%rbp), %rax
	movl	128(%rax), %ecx
	addl	-148(%rbp), %ecx
	andl	-140(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %ecx
	cmpl	$0, %ecx
	je	.LBB8_244
# BB#243:                               # %cond.true.1373
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB8_245
.LBB8_244:                              # %cond.false.1375
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB8_245:                              # %cond.end.1377
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-704(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-464(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movq	-464(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB8_251
.LBB8_246:                              # %sw.bb.1383
                                        #   in Loop: Header=BB8_208 Depth=2
	movb	-500(%rbp), %al
	movq	-464(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-499(%rbp), %al
	movq	-464(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-498(%rbp), %al
	movq	-464(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB8_251
.LBB8_247:                              # %sw.default.1390
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-497(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -508(%rbp)
	movq	-32(%rbp), %rcx
	movl	128(%rcx), %eax
	addl	-148(%rbp), %eax
	andl	-140(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	124(%rcx), %edx
	addl	-152(%rbp), %edx
	andl	-140(%rbp), %edx
	xorl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB8_249
# BB#248:                               # %cond.true.1406
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-142(%rbp), %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB8_250
.LBB8_249:                              # %cond.false.1408
                                        #   in Loop: Header=BB8_208 Depth=2
	movzbl	-141(%rbp), %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB8_250:                              # %cond.end.1410
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -512(%rbp)
	movl	-512(%rbp), %eax
	shll	$8, %eax
	movzbl	-500(%rbp), %ecx
	subl	-512(%rbp), %ecx
	imull	-508(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-464(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-512(%rbp), %eax
	shll	$8, %eax
	movzbl	-499(%rbp), %ecx
	subl	-512(%rbp), %ecx
	imull	-508(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-464(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-512(%rbp), %eax
	shll	$8, %eax
	movzbl	-498(%rbp), %ecx
	subl	-512(%rbp), %ecx
	imull	-508(%rbp), %ecx
	addl	%ecx, %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-464(%rbp), %rsi
	movb	%dl, 2(%rsi)
.LBB8_251:                              # %sw.epilog.1439
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_252
.LBB8_252:                              # %sw.epilog.1440
                                        #   in Loop: Header=BB8_208 Depth=2
	jmp	.LBB8_253
.LBB8_253:                              # %for.inc.1441
                                        #   in Loop: Header=BB8_208 Depth=2
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	movq	-440(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -440(%rbp)
	movq	-448(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -448(%rbp)
	movq	-456(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -456(%rbp)
	movq	-464(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -464(%rbp)
	jmp	.LBB8_208
.LBB8_254:                              # %for.end.1447
                                        #   in Loop: Header=BB8_206 Depth=1
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
	movl	-84(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	movl	-100(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#255:                               # %for.inc.1457
                                        #   in Loop: Header=BB8_206 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB8_206
.LBB8_256:                              # %for.end.1459
	jmp	.LBB8_257
.LBB8_257:                              # %sw.epilog.1460
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_preview_area_queue_draw
.LBB8_258:                              # %return
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_preview_area_mask, .Lfunc_end8-gimp_preview_area_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI8_0:
	.long	.LBB8_68-.LJTI8_0
	.long	.LBB8_77-.LJTI8_0
	.long	.LBB8_129-.LJTI8_0
	.long	.LBB8_138-.LJTI8_0
	.long	.LBB8_186-.LJTI8_0
	.long	.LBB8_200-.LJTI8_0

	.text
	.globl	gimp_preview_area_fill
	.align	16, 0x90
	.type	gimp_preview_area_fill,@function
gimp_preview_area_fill:                 # @gimp_preview_area_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%r9b, %al
	movb	24(%rbp), %r10b
	movb	16(%rbp), %r11b
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movb	%al, -25(%rbp)
	movb	%r11b, -26(%rbp)
	movb	%r10b, -27(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_fill(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_46
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB9_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -24(%rbp)
	jl	.LBB9_16
# BB#15:                                # %if.then.15
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_fill(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_46
.LBB9_17:                               # %if.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.18
	cmpl	$0, -20(%rbp)
	je	.LBB9_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB9_21
.LBB9_20:                               # %if.then.21
	jmp	.LBB9_46
.LBB9_21:                               # %if.end.22
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB9_23
# BB#22:                                # %lor.lhs.false.24
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jl	.LBB9_24
.LBB9_23:                               # %if.then.27
	jmp	.LBB9_46
.LBB9_24:                               # %if.end.28
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB9_26
# BB#25:                                # %lor.lhs.false.31
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jl	.LBB9_27
.LBB9_26:                               # %if.then.34
	jmp	.LBB9_46
.LBB9_27:                               # %if.end.35
	cmpl	$0, -12(%rbp)
	jge	.LBB9_29
# BB#28:                                # %if.then.37
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -12(%rbp)
.LBB9_29:                               # %if.end.39
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jle	.LBB9_31
# BB#30:                                # %if.then.43
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB9_31:                               # %if.end.45
	cmpl	$0, -16(%rbp)
	jge	.LBB9_33
# BB#32:                                # %if.then.47
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	$0, -16(%rbp)
.LBB9_33:                               # %if.end.49
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jle	.LBB9_35
# BB#34:                                # %if.then.53
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, -24(%rbp)
.LBB9_35:                               # %if.end.56
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB9_37
# BB#36:                                # %if.then.58
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	imull	$3, 112(%rcx), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	116(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
.LBB9_37:                               # %if.end.66
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	imull	$3, -12(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	120(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB9_38:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_41
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB9_38 Depth=1
	movb	-25(%rbp), %al
	movq	-48(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-26(%rbp), %al
	movq	-48(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-27(%rbp), %al
	movq	-48(%rbp), %rcx
	movb	%al, 2(%rcx)
# BB#40:                                # %for.inc
                                        #   in Loop: Header=BB9_38 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB9_38
.LBB9_41:                               # %for.end
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB9_42:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB9_45
# BB#43:                                # %for.body.81
                                        #   in Loop: Header=BB9_42 Depth=1
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	memcpy@PLT
# BB#44:                                # %for.inc.87
                                        #   in Loop: Header=BB9_42 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_42
.LBB9_45:                               # %for.end.89
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	gimp_preview_area_queue_draw
.LBB9_46:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_preview_area_fill, .Lfunc_end9-gimp_preview_area_fill
	.cfi_endproc

	.globl	gimp_preview_area_set_offsets
	.align	16, 0x90
	.type	gimp_preview_area_set_offsets,@function
gimp_preview_area_set_offsets:          # @gimp_preview_area_set_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_set_offsets(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 128(%rcx)
.LBB10_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_preview_area_set_offsets, .Lfunc_end10-gimp_preview_area_set_offsets
	.cfi_endproc

	.globl	gimp_preview_area_set_colormap
	.align	16, 0x90
	.type	gimp_preview_area_set_colormap,@function
gimp_preview_area_set_colormap:         # @gimp_preview_area_set_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_preview_area_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_set_colormap(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_30
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	jne	.LBB11_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB11_16
.LBB11_15:                              # %if.then.14
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_set_colormap(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_30
.LBB11_17:                              # %if.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.17
	jmp	.LBB11_19
.LBB11_19:                              # %do.body.18
	cmpl	$0, -20(%rbp)
	jl	.LBB11_22
# BB#20:                                # %land.lhs.true.20
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jg	.LBB11_22
# BB#21:                                # %if.then.22
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.23
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_set_colormap(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_30
.LBB11_23:                              # %if.end.24
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.25
	cmpl	$0, -20(%rbp)
	jle	.LBB11_29
# BB#25:                                # %if.then.27
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB11_27
# BB#26:                                # %if.then.30
	xorl	%esi, %esi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	memset@PLT
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.32
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc0_n@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 152(%rsi)
.LBB11_28:                              # %if.end.35
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rsi
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	memcpy@PLT
	jmp	.LBB11_30
.LBB11_29:                              # %if.else.37
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
.LBB11_30:                              # %if.end.40
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_preview_area_set_colormap, .Lfunc_end11-gimp_preview_area_set_colormap
	.cfi_endproc

	.globl	gimp_preview_area_set_max_size
	.align	16, 0x90
	.type	gimp_preview_area_set_max_size,@function
gimp_preview_area_set_max_size:         # @gimp_preview_area_set_max_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_set_max_size(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 132(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 136(%rcx)
.LBB12_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_preview_area_set_max_size, .Lfunc_end12-gimp_preview_area_set_max_size
	.cfi_endproc

	.globl	gimp_preview_area_menu_popup
	.align	16, 0x90
	.type	gimp_preview_area_menu_popup,@function
gimp_preview_area_menu_popup:           # @gimp_preview_area_menu_popup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_preview_area_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_menu_popup(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	callq	gtk_menu_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_screen@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_set_screen@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.15(%rip), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_menu_new
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_shell_append@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_menu_new
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_shell_append@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB13_14
# BB#13:                                # %if.then.24
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movl	52(%rdi), %r9d
	movq	-16(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup@PLT
	jmp	.LBB13_15
.LBB13_14:                              # %if.else.27
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_get_current_event_time@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_menu_popup@PLT
.LBB13_15:                              # %if.end.31
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_preview_area_menu_popup, .Lfunc_end13-gimp_preview_area_menu_popup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_menu_new,@function
gimp_preview_area_menu_new:             # @gimp_preview_area_menu_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	g_object_class_find_property@PLT
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.4
	movl	$1, -100(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.5
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.7
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.9
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_preview_area_menu_new(%rip), %rsi
	leaq	.L.str.24(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB14_17
.LBB14_11:                              # %if.end.11
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	leaq	-76(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get@PLT
	movq	g_param_spec_types@GOTPCREL(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rcx), %rcx
	movq	80(%rcx), %rsi
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_menu_new@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB14_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB14_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_enum_value_get_desc@PLT
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gtk_radio_menu_item_new_with_label@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.25(%rip), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.26(%rip), %rsi
	movq	-48(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_check_menu_item_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rdx
	movl	(%rdx), %ecx
	cmpl	-76(%rbp), %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movq	%rax, %rdi
	callq	gtk_check_menu_item_set_active@PLT
	leaq	.L.str.27(%rip), %rsi
	leaq	gimp_preview_area_menu_toggled(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-64(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_radio_menu_item_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_menu_item_get_group@PLT
	movq	%rax, -72(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB14_13
.LBB14_16:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	g_param_spec_get_nick@PLT
	movq	%rax, %rdi
	callq	gtk_menu_item_new_with_label@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_item_set_submenu@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_preview_area_menu_new, .Lfunc_end14-gimp_preview_area_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_class_init,@function
gimp_preview_area_class_init:           # @gimp_preview_area_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	leaq	gimp_preview_area_expose(%rip), %rcx
	leaq	gimp_preview_area_size_allocate(%rip), %rdx
	leaq	gimp_preview_area_get_property(%rip), %r8
	leaq	gimp_preview_area_set_property(%rip), %r9
	leaq	gimp_preview_area_finalize(%rip), %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 392(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_check_size_get_type@PLT
	leaq	.L.str.16(%rip), %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_check_type_get_type@PLT
	leaq	.L.str.15(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	$1, %r8d
	movl	$227, %r9d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$2, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_preview_area_class_init, .Lfunc_end15-gimp_preview_area_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_finalize,@function
gimp_preview_area_finalize:             # @gimp_preview_area_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 144(%rax)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB16_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_preview_area_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_preview_area_finalize, .Lfunc_end16-gimp_preview_area_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_set_property,@function
gimp_preview_area_set_property:         # @gimp_preview_area_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_7
.LBB17_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_3
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 104(%rdi)
	jmp	.LBB17_6
.LBB17_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 108(%rdi)
	jmp	.LBB17_6
.LBB17_3:                               # %sw.default
	jmp	.LBB17_4
.LBB17_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movl	$169, %edx
	leaq	.L.str.22(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB17_6
.LBB17_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_preview_area_set_property, .Lfunc_end17-gimp_preview_area_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_get_property,@function
gimp_preview_area_get_property:         # @gimp_preview_area_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB18_1
	jmp	.LBB18_7
.LBB18_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB18_2
	jmp	.LBB18_3
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	104(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB18_6
.LBB18_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	108(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB18_6
.LBB18_3:                               # %sw.default
	jmp	.LBB18_4
.LBB18_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movl	$192, %edx
	leaq	.L.str.22(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB18_6
.LBB18_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_preview_area_get_property, .Lfunc_end18-gimp_preview_area_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_size_allocate,@function
gimp_preview_area_size_allocate:        # @gimp_preview_area_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_preview_area_parent_class(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 248(%rax)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	gimp_preview_area_parent_class(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 132(%rax)
	jle	.LBB19_7
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	132(%rax), %ecx
	jge	.LBB19_5
# BB#4:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB19_6:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false.13
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB19_8:                               # %cond.end.15
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	jle	.LBB19_13
# BB#9:                                 # %cond.true.18
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	136(%rax), %ecx
	jge	.LBB19_11
# BB#10:                                # %cond.true.22
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB19_12
.LBB19_11:                              # %cond.false.24
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB19_12:                              # %cond.end.26
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB19_14
.LBB19_13:                              # %cond.false.28
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB19_14:                              # %cond.end.30
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jne	.LBB19_16
# BB#15:                                # %lor.lhs.false
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	116(%rcx), %eax
	je	.LBB19_19
.LBB19_16:                              # %if.then.36
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB19_18
# BB#17:                                # %if.then.38
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 120(%rax)
.LBB19_18:                              # %if.end.41
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 112(%rcx)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 116(%rcx)
.LBB19_19:                              # %if.end.44
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_preview_area_size_allocate, .Lfunc_end19-gimp_preview_area_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_expose,@function
gimp_preview_area_expose:               # @gimp_preview_area_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	xorl	%eax, %eax
	movl	$8, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$2, %edx
	movl	-40(%rbp), %r8d
	movq	-32(%rbp), %rdi
	subl	112(%rdi), %r8d
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -96(%rbp)         # 4-byte Spill
	cltd
	movl	-96(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movl	%eax, -72(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdi
	subl	116(%rdi), %eax
	cltd
	idivl	%r8d
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	movl	112(%rdi), %eax
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movl	116(%rdi), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	-64(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movq	-32(%rbp), %r10
	movl	120(%r10), %eax
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%r11d, %esi
	movl	%r11d, %edx
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gdk_pixbuf_new_from_data@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-80(%rbp), %rdi
	callq	cairo_clip@PLT
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	gdk_cairo_set_source_pixbuf@PLT
	movq	-80(%rbp), %rdi
	callq	cairo_paint@PLT
	movq	-80(%rbp), %rdi
	callq	cairo_destroy@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	$0, -4(%rbp)
.LBB20_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_preview_area_expose, .Lfunc_end20-gimp_preview_area_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB21_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB21_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end21:
	.size	g_warning, .Lfunc_end21-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_preview_area_menu_toggled,@function
gimp_preview_area_menu_toggled:         # @gimp_preview_area_menu_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_check_menu_item_get_active@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB22_4
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.25(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.26(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB22_3:                               # %if.end
	jmp	.LBB22_4
.LBB22_4:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_preview_area_menu_toggled, .Lfunc_end22-gimp_preview_area_menu_toggled
	.cfi_endproc

	.type	gimp_preview_area_get_type.g_define_type_id__volatile,@object # @gimp_preview_area_get_type.g_define_type_id__volatile
	.local	gimp_preview_area_get_type.g_define_type_id__volatile
	.comm	gimp_preview_area_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPreviewArea"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_preview_area_draw,@object # @__func__.gimp_preview_area_draw
.L__func__.gimp_preview_area_draw:
	.asciz	"gimp_preview_area_draw"
	.size	.L__func__.gimp_preview_area_draw, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PREVIEW_AREA (area)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"width >= 0 && height >= 0"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"buf != NULL"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rowstride > 0"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"area->colormap != NULL"
	.size	.L.str.6, 23

	.type	.L__func__.gimp_preview_area_blend,@object # @__func__.gimp_preview_area_blend
.L__func__.gimp_preview_area_blend:
	.asciz	"gimp_preview_area_blend"
	.size	.L__func__.gimp_preview_area_blend, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"buf1 != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"buf2 != NULL"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"rowstride1 > 0"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rowstride2 > 0"
	.size	.L.str.10, 15

	.type	.L__func__.gimp_preview_area_mask,@object # @__func__.gimp_preview_area_mask
.L__func__.gimp_preview_area_mask:
	.asciz	"gimp_preview_area_mask"
	.size	.L__func__.gimp_preview_area_mask, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"mask != NULL"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rowstride_mask > 0"
	.size	.L.str.12, 19

	.type	.L__func__.gimp_preview_area_fill,@object # @__func__.gimp_preview_area_fill
.L__func__.gimp_preview_area_fill:
	.asciz	"gimp_preview_area_fill"
	.size	.L__func__.gimp_preview_area_fill, 23

	.type	.L__func__.gimp_preview_area_set_offsets,@object # @__func__.gimp_preview_area_set_offsets
.L__func__.gimp_preview_area_set_offsets:
	.asciz	"gimp_preview_area_set_offsets"
	.size	.L__func__.gimp_preview_area_set_offsets, 30

	.type	.L__func__.gimp_preview_area_set_colormap,@object # @__func__.gimp_preview_area_set_colormap
.L__func__.gimp_preview_area_set_colormap:
	.asciz	"gimp_preview_area_set_colormap"
	.size	.L__func__.gimp_preview_area_set_colormap, 31

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"colormap != NULL || num_colors == 0"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"num_colors >= 0 && num_colors <= 256"
	.size	.L.str.14, 37

	.type	.L__func__.gimp_preview_area_set_max_size,@object # @__func__.gimp_preview_area_set_max_size
.L__func__.gimp_preview_area_set_max_size:
	.asciz	"gimp_preview_area_set_max_size"
	.size	.L__func__.gimp_preview_area_set_max_size, 31

	.type	.L__func__.gimp_preview_area_menu_popup,@object # @__func__.gimp_preview_area_menu_popup
.L__func__.gimp_preview_area_menu_popup:
	.asciz	"gimp_preview_area_menu_popup"
	.size	.L__func__.gimp_preview_area_menu_popup, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"check-type"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"check-size"
	.size	.L.str.16, 11

	.type	gimp_preview_area_parent_class,@object # @gimp_preview_area_parent_class
	.local	gimp_preview_area_parent_class
	.comm	gimp_preview_area_parent_class,8,8
	.type	GimpPreviewArea_private_offset,@object # @GimpPreviewArea_private_offset
	.local	GimpPreviewArea_private_offset
	.comm	GimpPreviewArea_private_offset,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-libgimp"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Check Size"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Check Style"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimppreviewarea.c"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.23, 45

	.type	.L__func__.gimp_preview_area_image_type_bytes,@object # @__func__.gimp_preview_area_image_type_bytes
.L__func__.gimp_preview_area_image_type_bytes:
	.asciz	"gimp_preview_area_image_type_bytes"
	.size	.L__func__.gimp_preview_area_image_type_bytes, 35

	.type	.L__func__.gimp_preview_area_menu_new,@object # @__func__.gimp_preview_area_menu_new
.L__func__.gimp_preview_area_menu_new:
	.asciz	"gimp_preview_area_menu_new"
	.size	.L__func__.gimp_preview_area_menu_new, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"G_IS_PARAM_SPEC_ENUM (pspec)"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-preview-area-prop-name"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-preview-area-prop-value"
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"toggled"
	.size	.L.str.27, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
