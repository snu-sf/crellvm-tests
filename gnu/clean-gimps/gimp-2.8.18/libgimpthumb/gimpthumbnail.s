	.text
	.file	"gimpthumbnail.bc"
	.globl	gimp_thumbnail_get_type
	.align	16, 0x90
	.type	gimp_thumbnail_get_type,@function
gimp_thumbnail_get_type:                # @gimp_thumbnail_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_thumbnail_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_thumbnail_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$168, %edx
	leaq	gimp_thumbnail_class_intern_init(%rip), %rsi
	movl	$144, %r8d
	leaq	gimp_thumbnail_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_thumbnail_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_thumbnail_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_thumbnail_get_type, .Lfunc_end0-gimp_thumbnail_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_class_intern_init,@function
gimp_thumbnail_class_intern_init:       # @gimp_thumbnail_class_intern_init
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
	movq	%rax, gimp_thumbnail_parent_class(%rip)
	cmpl	$0, GimpThumbnail_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpThumbnail_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_thumbnail_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_thumbnail_class_intern_init, .Lfunc_end1-gimp_thumbnail_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_init,@function
gimp_thumbnail_init:                    # @gimp_thumbnail_init
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
	movl	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 68(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 92(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 96(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_thumbnail_init, .Lfunc_end2-gimp_thumbnail_init
	.cfi_endproc

	.globl	gimp_thumbnail_new
	.align	16, 0x90
	.type	gimp_thumbnail_new,@function
gimp_thumbnail_new:                     # @gimp_thumbnail_new
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
	callq	gimp_thumbnail_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_thumbnail_new, .Lfunc_end3-gimp_thumbnail_new
	.cfi_endproc

	.globl	gimp_thumbnail_set_uri
	.align	16, 0x90
	.type	gimp_thumbnail_set_uri,@function
gimp_thumbnail_set_uri:                 # @gimp_thumbnail_set_uri
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_uri(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_19
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
.LBB4_14:                               # %if.end.14
	movq	-48(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_16
# BB#15:                                # %if.then.18
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
.LBB4_16:                               # %if.end.21
	movq	-40(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB4_18
# BB#17:                                # %if.then.23
	movq	-40(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 104(%rax)
.LBB4_18:                               # %if.end.26
	leaq	.L.str.3(%rip), %rsi
	xorl	%edx, %edx
	leaq	.L.str.4(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	.L.str.5(%rip), %r9
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %r10
	leaq	.L.str.8(%rip), %r11
	leaq	.L.str.9(%rip), %rbx
	leaq	.L.str.10(%rip), %r14
	leaq	.L.str.11(%rip), %r15
	movq	-40(%rbp), %r12
	movl	$-1, 96(%r12)
	movq	-40(%rbp), %r12
	movq	$0, 112(%r12)
	movq	-40(%rbp), %r12
	movq	$0, 120(%r12)
	movq	-40(%rbp), %r12
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	$0, (%rsp)
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	%rbx, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	%r14, 72(%rsp)
	movl	$0, 80(%rsp)
	movq	%r15, 88(%rsp)
	movl	$0, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, %al
	callq	g_object_set@PLT
.LBB4_19:                               # %return
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_thumbnail_set_uri, .Lfunc_end4-gimp_thumbnail_set_uri
	.cfi_endproc

	.globl	gimp_thumbnail_set_filename
	.align	16, 0x90
	.type	gimp_thumbnail_set_filename,@function
gimp_thumbnail_set_filename:            # @gimp_thumbnail_set_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_filename(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_filename(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_23
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	g_filename_to_uri@PLT
	movq	%rax, -40(%rbp)
.LBB5_20:                               # %if.end.21
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_thumbnail_set_uri@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movb	$1, %al
	cmpq	$0, -24(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
	je	.LBB5_22
# BB#21:                                # %lor.rhs
	cmpq	$0, -40(%rbp)
	setne	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB5_22:                               # %lor.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB5_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_thumbnail_set_filename, .Lfunc_end5-gimp_thumbnail_set_filename
	.cfi_endproc

	.globl	gimp_thumbnail_set_from_thumb
	.align	16, 0x90
	.type	gimp_thumbnail_set_from_thumb,@function
gimp_thumbnail_set_from_thumb:          # @gimp_thumbnail_set_from_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_from_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_28
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_from_thumb(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_28
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB6_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_21
.LBB6_20:                               # %if.then.20
	jmp	.LBB6_22
.LBB6_21:                               # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_set_from_thumb(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_28
.LBB6_22:                               # %if.end.22
	jmp	.LBB6_23
.LBB6_23:                               # %do.end.23
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gdk_pixbuf_new_from_file@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_25
# BB#24:                                # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB6_28
.LBB6_25:                               # %if.end.27
	leaq	.L.str.14(%rip), %rsi
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_27
# BB#26:                                # %if.then.30
	movq	-32(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_thumb_error_quark@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_28
.LBB6_27:                               # %if.end.33
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_thumbnail_set_uri@PLT
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref@PLT
	movl	$1, -4(%rbp)
.LBB6_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_thumbnail_set_from_thumb, .Lfunc_end6-gimp_thumbnail_set_from_thumb
	.cfi_endproc

	.globl	gimp_thumbnail_peek_image
	.align	16, 0x90
	.type	gimp_thumbnail_peek_image,@function
gimp_thumbnail_peek_image:              # @gimp_thumbnail_peek_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_peek_image(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_thumbnail_update_image
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movl	%edx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_thumbnail_peek_image, .Lfunc_end7-gimp_thumbnail_peek_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_update_image,@function
gimp_thumbnail_update_image:            # @gimp_thumbnail_update_image
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_33
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -12(%rbp)
	testl	%ecx, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_34
.LBB8_34:                               # %if.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB8_11
	jmp	.LBB8_12
.LBB8_3:                                # %sw.bb
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB8_6
# BB#5:                                 # %if.then.1
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_update_image(%rip), %rsi
	leaq	.L.str.42(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_33
.LBB8_7:                                # %if.end.2
	jmp	.LBB8_8
.LBB8_8:                                # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_gimp_thumb_filename_from_uri
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB8_10
# BB#9:                                 # %if.then.7
	movl	$1, -12(%rbp)
.LBB8_10:                               # %if.end.8
	jmp	.LBB8_18
.LBB8_11:                               # %sw.bb.9
	jmp	.LBB8_18
.LBB8_12:                               # %sw.default
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.10
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_update_image(%rip), %rsi
	leaq	.L.str.43(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_33
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %sw.epilog
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB8_20
	jmp	.LBB8_19
.LBB8_19:                               # %sw.bb.17
	jmp	.LBB8_26
.LBB8_20:                               # %sw.default.18
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	addq	$64, %rax
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rcx
	callq	gimp_thumb_file_test@PLT
	movl	%eax, %r8d
	subl	$1, %eax
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB8_21
	jmp	.LBB8_35
.LBB8_35:                               # %sw.default.18
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB8_22
	jmp	.LBB8_36
.LBB8_36:                               # %sw.default.18
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB8_23
	jmp	.LBB8_24
.LBB8_21:                               # %sw.bb.21
	movl	$5, -12(%rbp)
	jmp	.LBB8_25
.LBB8_22:                               # %sw.bb.22
	movl	$2, -12(%rbp)
	jmp	.LBB8_25
.LBB8_23:                               # %sw.bb.23
	movl	$3, -12(%rbp)
	jmp	.LBB8_25
.LBB8_24:                               # %sw.default.24
	movl	$4, -12(%rbp)
.LBB8_25:                               # %sw.epilog.25
	jmp	.LBB8_26
.LBB8_26:                               # %sw.epilog.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	je	.LBB8_28
# BB#27:                                # %if.then.29
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
.LBB8_28:                               # %if.end.30
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB8_30
# BB#29:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	48(%rcx), %rax
	je	.LBB8_33
.LBB8_30:                               # %if.then.33
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.4(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rcx
	cmpl	$8, 92(%rcx)
	jne	.LBB8_32
# BB#31:                                # %if.then.35
	leaq	.L.str.11(%rip), %rsi
	movl	$6, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set@PLT
.LBB8_32:                               # %if.end.36
	jmp	.LBB8_33
.LBB8_33:                               # %if.end.37
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_thumbnail_update_image, .Lfunc_end8-gimp_thumbnail_update_image
	.cfi_endproc

	.globl	gimp_thumbnail_peek_thumb
	.align	16, 0x90
	.type	gimp_thumbnail_peek_thumb,@function
gimp_thumbnail_peek_thumb:              # @gimp_thumbnail_peek_thumb
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_peek_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_thumbnail_update_image
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_thumbnail_update_thumb
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movl	%edx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_thumbnail_peek_thumb, .Lfunc_end9-gimp_thumbnail_peek_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_update_thumb,@function
gimp_thumbnail_update_thumb:            # @gimp_thumbnail_update_thumb
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_23
.LBB10_2:                               # %if.end
	leaq	-12(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_thumb_find_thumb@PLT
	movq	%rax, -24(%rbp)
	cmpl	$7, -28(%rbp)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	jne	.LBB10_5
# BB#4:                                 # %if.then.3
	movl	$4, -28(%rbp)
.LBB10_5:                               # %if.end.4
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-5, %ecx
	subl	$2, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jb	.LBB10_6
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.4
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB10_16
	jmp	.LBB10_6
.LBB10_6:                               # %sw.bb
	jmp	.LBB10_7
.LBB10_7:                               # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB10_9
# BB#8:                                 # %if.then.6
	jmp	.LBB10_10
.LBB10_9:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_update_thumb(%rip), %rsi
	leaq	.L.str.44(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_23
.LBB10_10:                              # %if.end.7
	jmp	.LBB10_11
.LBB10_11:                              # %do.end
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB10_15
# BB#12:                                # %land.lhs.true.9
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_15
# BB#13:                                # %land.lhs.true.11
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_15
# BB#14:                                # %if.then.13
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB10_23
.LBB10_15:                              # %if.end.14
	jmp	.LBB10_17
.LBB10_16:                              # %sw.default
	jmp	.LBB10_17
.LBB10_17:                              # %sw.epilog
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB10_19
# BB#18:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free@PLT
.LBB10_19:                              # %if.end.19
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	cmpq	$0, -24(%rbp)
	je	.LBB10_21
# BB#20:                                # %if.then.22
	movl	$7, %eax
	movl	$5, %ecx
	cmpl	$0, -12(%rbp)
	cmoval	%ecx, %eax
	movl	%eax, -28(%rbp)
.LBB10_21:                              # %if.end.24
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 112(%rdx)
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 120(%rdx)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	92(%rcx), %eax
	je	.LBB10_23
# BB#22:                                # %if.then.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	leaq	.L.str.11(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_thumbnail_reset_info
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB10_23:                              # %if.end.33
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_thumbnail_update_thumb, .Lfunc_end10-gimp_thumbnail_update_thumb
	.cfi_endproc

	.globl	gimp_thumbnail_check_thumb
	.align	16, 0x90
	.type	gimp_thumbnail_check_thumb,@function
gimp_thumbnail_check_thumb:             # @gimp_thumbnail_check_thumb
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_check_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_17
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_thumbnail_peek_thumb@PLT
	cmpl	$8, %eax
	jne	.LBB11_14
# BB#13:                                # %if.then.13
	movl	$8, -4(%rbp)
	jmp	.LBB11_17
.LBB11_14:                              # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_thumbnail_load_thumb@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_16
# BB#15:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB11_16:                              # %if.end.18
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_thumbnail_check_thumb, .Lfunc_end11-gimp_thumbnail_check_thumb
	.cfi_endproc

	.globl	gimp_thumbnail_load_thumb
	.align	16, 0x90
	.type	gimp_thumbnail_load_thumb,@function
gimp_thumbnail_load_thumb:              # @gimp_thumbnail_load_thumb
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_load_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB12_14
# BB#13:                                # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_14:                              # %if.end.13
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_thumbnail_peek_thumb@PLT
	movl	%eax, -36(%rbp)
	cmpl	$5, -36(%rbp)
	jb	.LBB12_16
# BB#15:                                # %lor.lhs.false
	cmpl	$7, -36(%rbp)
	jne	.LBB12_17
.LBB12_16:                              # %if.then.17
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_17:                              # %if.end.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rdi
	callq	gdk_pixbuf_new_from_file@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_19
# BB#18:                                # %if.then.21
	movq	$0, -8(%rbp)
	jmp	.LBB12_48
.LBB12_19:                              # %if.end.22
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	leaq	.L.str.14(%rip), %rsi
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_21
# BB#20:                                # %if.then.26
	jmp	.LBB12_43
.LBB12_21:                              # %if.end.27
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB12_26
# BB#22:                                # %if.then.31
	movl	$47, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	strrchr@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB12_24
# BB#23:                                # %lor.lhs.false.36
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB12_25
.LBB12_24:                              # %if.then.39
	jmp	.LBB12_43
.LBB12_25:                              # %if.end.40
	jmp	.LBB12_26
.LBB12_26:                              # %if.end.41
	leaq	.L.str.17(%rip), %rsi
	movl	$6, -36(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB12_28
# BB#27:                                # %lor.lhs.false.44
	leaq	.L.str.18(%rip), %rsi
	leaq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB12_29
.LBB12_28:                              # %if.then.47
	jmp	.LBB12_43
.LBB12_29:                              # %if.end.48
	leaq	.L.str.19(%rip), %rsi
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB12_32
# BB#30:                                # %land.lhs.true.51
	leaq	.L.str.18(%rip), %rsi
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB12_32
# BB#31:                                # %if.then.54
	jmp	.LBB12_43
.LBB12_32:                              # %if.end.55
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB12_39
# BB#33:                                # %land.lhs.true.58
	cmpq	$0, -56(%rbp)
	je	.LBB12_35
# BB#34:                                # %lor.lhs.false.60
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB12_39
.LBB12_35:                              # %if.then.62
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jne	.LBB12_37
# BB#36:                                # %if.then.64
	movl	$7, -36(%rbp)
	jmp	.LBB12_38
.LBB12_37:                              # %if.else.65
	movl	$8, -36(%rbp)
.LBB12_38:                              # %if.end.66
	jmp	.LBB12_39
.LBB12_39:                              # %if.end.67
	cmpl	$7, -36(%rbp)
	jne	.LBB12_41
# BB#40:                                # %if.then.69
	movq	-16(%rbp), %rdi
	callq	gimp_thumbnail_reset_info
	jmp	.LBB12_42
.LBB12_41:                              # %if.else.70
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_thumbnail_set_info_from_pixbuf
.LBB12_42:                              # %if.end.71
	jmp	.LBB12_43
.LBB12_43:                              # %finish
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB12_46
# BB#44:                                # %lor.lhs.false.74
	cmpl	$6, -36(%rbp)
	je	.LBB12_47
# BB#45:                                # %land.lhs.true.76
	cmpl	$8, -36(%rbp)
	je	.LBB12_47
.LBB12_46:                              # %if.then.78
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	$0, -48(%rbp)
.LBB12_47:                              # %if.end.79
	leaq	.L.str.11(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_48:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_thumbnail_load_thumb, .Lfunc_end12-gimp_thumbnail_load_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_reset_info,@function
gimp_thumbnail_reset_info:              # @gimp_thumbnail_reset_info
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
	subq	$48, %rsp
	leaq	.L.str.7(%rip), %rsi
	xorl	%eax, %eax
	leaq	.L.str.8(%rip), %rcx
	leaq	.L.str.9(%rip), %r9
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	.L.str.10(%rip), %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %edx
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movl	%eax, %r8d
	movq	$0, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_set@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_thumbnail_reset_info, .Lfunc_end13-gimp_thumbnail_reset_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_set_info_from_pixbuf,@function
gimp_thumbnail_set_info_from_pixbuf:    # @gimp_thumbnail_set_info_from_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_thumbnail_reset_info
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free@PLT
	leaq	.L.str.45(%rip), %rsi
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, %rdi
	callq	g_strdup@PLT
	leaq	.L.str.46(%rip), %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_3
# BB#1:                                 # %land.lhs.true
	leaq	.L.str.47(%rip), %rsi
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 68(%rcx)
.LBB14_3:                               # %if.end
	leaq	.L.str.48(%rip), %rsi
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true.8
	leaq	.L.str.47(%rip), %rsi
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB14_6
# BB#5:                                 # %if.then.11
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 72(%rcx)
.LBB14_6:                               # %if.end.12
	leaq	.L.str.49(%rip), %rsi
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, %rdi
	callq	g_strdup@PLT
	leaq	.L.str.50(%rip), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_9
# BB#7:                                 # %land.lhs.true.17
	leaq	.L.str.47(%rip), %rsi
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB14_9
# BB#8:                                 # %if.then.20
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
.LBB14_9:                               # %if.end.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_thumbnail_set_info_from_pixbuf, .Lfunc_end14-gimp_thumbnail_set_info_from_pixbuf
	.cfi_endproc

	.globl	gimp_thumbnail_save_thumb
	.align	16, 0x90
	.type	gimp_thumbnail_save_thumb,@function
gimp_thumbnail_save_thumb:              # @gimp_thumbnail_save_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB15_20
# BB#19:                                # %if.then.26
	movl	$0, -108(%rbp)
	jmp	.LBB15_25
.LBB15_20:                              # %if.else.27
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_23
# BB#21:                                # %land.lhs.true.30
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB15_23
# BB#22:                                # %if.then.34
	movl	$1, -108(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.35
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -108(%rbp)
.LBB15_24:                              # %if.end.37
	jmp	.LBB15_25
.LBB15_25:                              # %if.end.38
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB15_27
# BB#26:                                # %if.then.41
	jmp	.LBB15_28
.LBB15_27:                              # %if.else.42
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_28:                              # %if.end.43
	jmp	.LBB15_29
.LBB15_29:                              # %do.end.44
	jmp	.LBB15_30
.LBB15_30:                              # %do.body.45
	cmpq	$0, -32(%rbp)
	je	.LBB15_32
# BB#31:                                # %if.then.47
	jmp	.LBB15_33
.LBB15_32:                              # %if.else.48
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_33:                              # %if.end.49
	jmp	.LBB15_34
.LBB15_34:                              # %do.end.50
	jmp	.LBB15_35
.LBB15_35:                              # %do.body.51
	cmpq	$0, -40(%rbp)
	je	.LBB15_37
# BB#36:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB15_38
.LBB15_37:                              # %if.then.54
	jmp	.LBB15_39
.LBB15_38:                              # %if.else.55
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_39:                              # %if.end.56
	jmp	.LBB15_40
.LBB15_40:                              # %do.end.57
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height@PLT
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB15_42
# BB#41:                                # %cond.true
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB15_43
.LBB15_42:                              # %cond.false
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB15_43:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jae	.LBB15_45
# BB#44:                                # %if.then.64
	movl	$1, -4(%rbp)
	jmp	.LBB15_50
.LBB15_45:                              # %if.end.65
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_47
# BB#46:                                # %if.then.69
	movl	$1, -4(%rbp)
	jmp	.LBB15_50
.LBB15_47:                              # %if.end.70
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	gimp_thumb_ensure_thumb_dir@PLT
	cmpl	$0, %eax
	jne	.LBB15_49
# BB#48:                                # %if.then.73
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB15_50
.LBB15_49:                              # %if.end.74
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	gimp_thumbnail_save
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB15_50:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_thumbnail_save_thumb, .Lfunc_end15-gimp_thumbnail_save_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_save,@function
gimp_thumbnail_save:                    # @gimp_thumbnail_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	leaq	.L.str.51(%rip), %rax
	leaq	.L.str.25(%rip), %r10
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -272(%rbp)
	movslq	-272(%rbp), %rcx
	movq	%r10, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.26(%rip), %rcx
	movslq	-272(%rbp), %rdx
	movq	%rax, -240(%rbp,%rdx,8)
	movl	-272(%rbp), %r11d
	addl	$1, %r11d
	movl	%r11d, -272(%rbp)
	movslq	-272(%rbp), %rax
	movq	%rcx, -144(%rbp,%rax,8)
	movq	-40(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.14(%rip), %rcx
	movslq	-272(%rbp), %rdx
	movq	%rax, -240(%rbp,%rdx,8)
	movl	-272(%rbp), %r11d
	addl	$1, %r11d
	movl	%r11d, -272(%rbp)
	movslq	-272(%rbp), %rax
	movq	%rcx, -144(%rbp,%rax,8)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.17(%rip), %rcx
	movslq	-272(%rbp), %rdx
	movq	%rax, -240(%rbp,%rdx,8)
	movl	-272(%rbp), %r11d
	addl	$1, %r11d
	movl	%r11d, -272(%rbp)
	movslq	-272(%rbp), %rax
	movq	%rcx, -144(%rbp,%rax,8)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.19(%rip), %rcx
	movslq	-272(%rbp), %rdx
	movq	%rax, -240(%rbp,%rdx,8)
	movl	-272(%rbp), %r11d
	addl	$1, %r11d
	movl	%r11d, -272(%rbp)
	movslq	-272(%rbp), %rax
	movq	%rcx, -144(%rbp,%rax,8)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %r11d
	addl	$1, %r11d
	movl	%r11d, -272(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	leaq	.L.str.45(%rip), %rax
	movslq	-272(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_strdup@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -272(%rbp)
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jle	.LBB16_4
# BB#3:                                 # %if.then.35
	leaq	.L.str.47(%rip), %rdi
	leaq	.L.str.46(%rip), %rax
	movslq	-272(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movl	68(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -272(%rbp)
.LBB16_4:                               # %if.end.43
	movq	-8(%rbp), %rax
	cmpl	$0, 72(%rax)
	jle	.LBB16_6
# BB#5:                                 # %if.then.45
	leaq	.L.str.47(%rip), %rdi
	leaq	.L.str.48(%rip), %rax
	movslq	-272(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movl	72(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -272(%rbp)
.LBB16_6:                               # %if.end.53
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB16_8
# BB#7:                                 # %if.then.55
	leaq	.L.str.49(%rip), %rax
	movslq	-272(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_strdup@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -272(%rbp)
.LBB16_8:                               # %if.end.63
	movq	-8(%rbp), %rax
	cmpl	$0, 88(%rax)
	jle	.LBB16_10
# BB#9:                                 # %if.then.65
	leaq	.L.str.47(%rip), %rdi
	leaq	.L.str.50(%rip), %rax
	movslq	-272(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movslq	-272(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
	movl	-272(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -272(%rbp)
.LBB16_10:                              # %if.end.73
	movslq	-272(%rbp), %rax
	movq	$0, -144(%rbp,%rax,8)
	movslq	-272(%rbp), %rax
	movq	$0, -240(%rbp,%rax,8)
	movq	-24(%rbp), %rdi
	callq	g_path_get_basename@PLT
	movq	%rax, -248(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	getpid@PLT
	leaq	.L.str.52(%rip), %rdi
	movl	$47, %edx
	movq	-248(%rbp), %r8
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -264(%rbp)
	movq	-256(%rbp), %rdi
	callq	g_free@PLT
	movq	-248(%rbp), %rdi
	callq	g_free@PLT
	leaq	.L.str.24(%rip), %rdx
	leaq	-240(%rbp), %r8
	leaq	-144(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-48(%rbp), %r9
	callq	gdk_pixbuf_savev@PLT
	movl	%eax, -268(%rbp)
	movl	$0, -272(%rbp)
.LBB16_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-272(%rbp), %rax
	cmpq	$0, -144(%rbp,%rax,8)
	je	.LBB16_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB16_11 Depth=1
	movslq	-272(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rdi
	callq	g_free@PLT
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB16_11 Depth=1
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB16_11
.LBB16_14:                              # %for.end
	cmpl	$0, -268(%rbp)
	je	.LBB16_18
# BB#15:                                # %if.then.91
	movq	-264(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	rename@PLT
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -268(%rbp)
	cmpl	$0, -268(%rbp)
	jne	.LBB16_17
# BB#16:                                # %if.then.95
	movq	-48(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	g_file_error_quark@PLT
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_file_error_from_errno@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.53(%rip), %rsi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %r8
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%r8, -312(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movl	-296(%rbp), %edx        # 4-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB16_17:                              # %if.end.103
	jmp	.LBB16_18
.LBB16_18:                              # %if.end.104
	cmpl	$0, -268(%rbp)
	je	.LBB16_26
# BB#19:                                # %if.then.106
	movl	$384, %esi              # imm = 0x180
	movq	-24(%rbp), %rdi
	callq	chmod@PLT
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -268(%rbp)
	cmpl	$0, -268(%rbp)
	jne	.LBB16_21
# BB#20:                                # %if.then.111
	movq	-48(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	g_file_error_quark@PLT
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_file_error_from_errno@PLT
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %r8
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movq	%r8, -336(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	leaq	.L.str.54(%rip), %rcx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-324(%rbp), %esi        # 4-byte Reload
	movl	-328(%rbp), %edx        # 4-byte Reload
	movq	-336(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB16_21:                              # %if.end.118
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_thumbnail_update_thumb
	cmpl	$0, -268(%rbp)
	je	.LBB16_25
# BB#22:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$5, 92(%rax)
	jne	.LBB16_25
# BB#23:                                # %land.lhs.true.123
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	104(%rax), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB16_25
# BB#24:                                # %if.then.127
	movq	-8(%rbp), %rax
	movl	$8, 92(%rax)
.LBB16_25:                              # %if.end.129
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB16_26:                              # %if.end.131
	movq	-264(%rbp), %rdi
	callq	g_unlink@PLT
	movq	-264(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	g_free@PLT
	movl	-268(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_thumbnail_save, .Lfunc_end16-gimp_thumbnail_save
	.cfi_endproc

	.globl	gimp_thumbnail_save_thumb_local
	.align	16, 0x90
	.type	gimp_thumbnail_save_thumb_local,@function
gimp_thumbnail_save_thumb_local:        # @gimp_thumbnail_save_thumb_local
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb_local(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB17_15
# BB#14:                                # %if.then.13
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb_local(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	jmp	.LBB17_18
.LBB17_18:                              # %do.body.17
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB17_20
# BB#19:                                # %if.then.26
	movl	$0, -124(%rbp)
	jmp	.LBB17_25
.LBB17_20:                              # %if.else.27
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_23
# BB#21:                                # %land.lhs.true.30
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB17_23
# BB#22:                                # %if.then.34
	movl	$1, -124(%rbp)
	jmp	.LBB17_24
.LBB17_23:                              # %if.else.35
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB17_24:                              # %if.end.37
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.38
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB17_27
# BB#26:                                # %if.then.41
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.42
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb_local(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_28:                              # %if.end.43
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.44
	jmp	.LBB17_30
.LBB17_30:                              # %do.body.45
	cmpq	$0, -32(%rbp)
	je	.LBB17_32
# BB#31:                                # %if.then.47
	jmp	.LBB17_33
.LBB17_32:                              # %if.else.48
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb_local(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_33:                              # %if.end.49
	jmp	.LBB17_34
.LBB17_34:                              # %do.end.50
	jmp	.LBB17_35
.LBB17_35:                              # %do.body.51
	cmpq	$0, -40(%rbp)
	je	.LBB17_37
# BB#36:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB17_38
.LBB17_37:                              # %if.then.54
	jmp	.LBB17_39
.LBB17_38:                              # %if.else.55
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_thumb_local(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_39:                              # %if.end.56
	jmp	.LBB17_40
.LBB17_40:                              # %do.end.57
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height@PLT
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB17_42
# BB#41:                                # %cond.true
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB17_43
.LBB17_42:                              # %cond.false
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB17_43:                              # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jae	.LBB17_45
# BB#44:                                # %if.then.64
	movl	$1, -4(%rbp)
	jmp	.LBB17_52
.LBB17_45:                              # %if.end.65
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_gimp_thumb_filename_from_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB17_47
# BB#46:                                # %if.then.69
	movl	$1, -4(%rbp)
	jmp	.LBB17_52
.LBB17_47:                              # %if.end.70
	movq	-64(%rbp), %rdi
	callq	g_path_get_dirname@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_thumb_name_from_uri_local@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_49
# BB#48:                                # %if.then.75
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB17_52
.LBB17_49:                              # %if.end.76
	movq	-72(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	gimp_thumb_ensure_thumb_dir_local@PLT
	cmpl	$0, %eax
	jne	.LBB17_51
# BB#50:                                # %if.then.79
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_52
.LBB17_51:                              # %if.end.80
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	gimp_thumbnail_save
	movl	%eax, -76(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_52:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_thumbnail_save_thumb_local, .Lfunc_end17-gimp_thumbnail_save_thumb_local
	.cfi_endproc

	.globl	gimp_thumbnail_save_failure
	.align	16, 0x90
	.type	gimp_thumbnail_save_failure,@function
gimp_thumbnail_save_failure:            # @gimp_thumbnail_save_failure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -140(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_failure(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -44(%rbp)
	jmp	.LBB18_32
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_failure(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -44(%rbp)
	jmp	.LBB18_32
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	jmp	.LBB18_18
.LBB18_18:                              # %do.body.17
	cmpq	$0, -64(%rbp)
	je	.LBB18_20
# BB#19:                                # %if.then.19
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.20
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_save_failure(%rip), %rsi
	leaq	.L.str.22(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -44(%rbp)
	jmp	.LBB18_32
.LBB18_21:                              # %if.end.21
	jmp	.LBB18_22
.LBB18_22:                              # %do.end.22
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB18_24
# BB#23:                                # %if.then.26
	movl	$1, -44(%rbp)
	jmp	.LBB18_32
.LBB18_24:                              # %if.end.27
	xorl	%edi, %edi
	movq	-72(%rbp), %rsi
	callq	gimp_thumb_ensure_thumb_dir@PLT
	cmpl	$0, %eax
	jne	.LBB18_26
# BB#25:                                # %if.then.30
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movl	$0, -44(%rbp)
	jmp	.LBB18_32
.LBB18_26:                              # %if.end.31
	xorl	%eax, %eax
	movl	$8, %edx
	movl	$1, %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gdk_pixbuf_new@PLT
	leaq	.L.str.23(%rip), %rdi
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rdi
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.18(%rip), %rdi
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	.L.str.24(%rip), %rdx
	leaq	.L.str.25(%rip), %r8
	leaq	.L.str.26(%rip), %rsi
	leaq	.L.str.14(%rip), %rdi
	leaq	.L.str.17(%rip), %r9
	leaq	.L.str.19(%rip), %r10
	xorl	%ecx, %ecx
	movl	%ecx, %r11d
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rbx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	-56(%rbp), %r12
	movq	32(%r12), %r12
	movq	-104(%rbp), %r13
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	%r15, 8(%rsp)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	-192(%rbp), %r15        # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%r10, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r11, -200(%rbp)        # 8-byte Spill
	callq	gdk_pixbuf_save@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB18_31
# BB#27:                                # %if.then.40
	movl	$384, %esi              # imm = 0x180
	movq	-88(%rbp), %rdi
	callq	chmod@PLT
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB18_29
# BB#28:                                # %if.then.44
	movl	$128, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_thumbnail_update_thumb
	jmp	.LBB18_30
.LBB18_29:                              # %if.else.45
	movq	-72(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	g_file_error_quark@PLT
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_file_error_from_errno@PLT
	movq	-88(%rbp), %r8
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movq	%r8, -224(%rbp)         # 8-byte Spill
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	leaq	.L.str.27(%rip), %rcx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	movl	-216(%rbp), %edx        # 4-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error@PLT
.LBB18_30:                              # %if.end.51
	jmp	.LBB18_31
.LBB18_31:                              # %if.end.52
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-112(%rbp), %rdi
	callq	g_free@PLT
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movl	-116(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB18_32:                              # %return
	movl	-44(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_thumbnail_save_failure, .Lfunc_end18-gimp_thumbnail_save_failure
	.cfi_endproc

	.globl	gimp_thumbnail_delete_failure
	.align	16, 0x90
	.type	gimp_thumbnail_delete_failure,@function
gimp_thumbnail_delete_failure:          # @gimp_thumbnail_delete_failure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_delete_failure(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB19_19
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_delete_failure(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB19_19
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB19_19
# BB#18:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	g_unlink@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB19_19:                              # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_thumbnail_delete_failure, .Lfunc_end19-gimp_thumbnail_delete_failure
	.cfi_endproc

	.globl	gimp_thumbnail_delete_others
	.align	16, 0x90
	.type	gimp_thumbnail_delete_others,@function
gimp_thumbnail_delete_others:           # @gimp_thumbnail_delete_others
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_delete_others(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB20_18
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB20_15
# BB#14:                                # %if.then.13
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_delete_others(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB20_18
.LBB20_16:                              # %if.end.15
	jmp	.LBB20_17
.LBB20_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	_gimp_thumbs_delete_others
.LBB20_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_thumbnail_delete_others, .Lfunc_end20-gimp_thumbnail_delete_others
	.cfi_endproc

	.globl	gimp_thumbnail_has_failed
	.align	16, 0x90
	.type	gimp_thumbnail_has_failed,@function
gimp_thumbnail_has_failed:              # @gimp_thumbnail_has_failed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -60(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_thumbnail_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_has_failed(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_thumbnail_has_failed(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_thumb_name_from_uri@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_19
# BB#18:                                # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_19:                              # %if.end.21
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_new_from_file@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.LBB21_21
# BB#20:                                # %if.then.24
	movl	$0, -4(%rbp)
	jmp	.LBB21_38
.LBB21_21:                              # %if.end.25
	movq	-16(%rbp), %rdi
	callq	gimp_thumbnail_peek_image@PLT
	cmpl	$5, %eax
	jae	.LBB21_23
# BB#22:                                # %if.then.28
	jmp	.LBB21_37
.LBB21_23:                              # %if.end.29
	leaq	.L.str.14(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_25
# BB#24:                                # %lor.lhs.false
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB21_26
.LBB21_25:                              # %if.then.35
	jmp	.LBB21_37
.LBB21_26:                              # %if.end.36
	leaq	.L.str.17(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_28
# BB#27:                                # %lor.lhs.false.39
	leaq	.L.str.18(%rip), %rsi
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB21_29
.LBB21_28:                              # %if.then.42
	jmp	.LBB21_37
.LBB21_29:                              # %if.end.43
	leaq	.L.str.19(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_option@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_32
# BB#30:                                # %land.lhs.true.46
	leaq	.L.str.18(%rip), %rsi
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB21_32
# BB#31:                                # %if.then.49
	jmp	.LBB21_37
.LBB21_32:                              # %if.end.50
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB21_36
# BB#33:                                # %land.lhs.true.53
	cmpq	$0, -32(%rbp)
	je	.LBB21_35
# BB#34:                                # %lor.lhs.false.55
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB21_36
.LBB21_35:                              # %if.then.57
	movl	$1, -60(%rbp)
.LBB21_36:                              # %if.end.58
	jmp	.LBB21_37
.LBB21_37:                              # %finish
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	-60(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB21_38:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_thumbnail_has_failed, .Lfunc_end21-gimp_thumbnail_has_failed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_class_init,@function
gimp_thumbnail_class_init:              # @gimp_thumbnail_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp78:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_thumbnail_get_property(%rip), %rsi
	leaq	gimp_thumbnail_set_property(%rip), %rdi
	leaq	gimp_thumbnail_finalize(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_thumb_state_get_type@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	.L.str.28(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.29(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.30(%rip), %rdx
	movl	$227, %r8d
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string@PLT
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.31(%rip), %rdx
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	movl	$227, %esi
	movq	-24(%rbp), %r10
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %r9
	movl	$227, (%rsp)
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_int64@PLT
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.32(%rip), %rdx
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	movl	$227, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r9
	movl	$227, (%rsp)
	callq	g_param_spec_int64@PLT
	movl	$4, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	leaq	.L.str.33(%rip), %rdx
	movl	$227, %r8d
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string@PLT
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	.L.str.34(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	movl	$227, %ebx
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	callq	g_param_spec_int@PLT
	movl	$6, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.35(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %r9d
	movq	-24(%rbp), %rax
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	-104(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$227, (%rsp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_param_spec_int@PLT
	movl	$7, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.9(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	leaq	.L.str.36(%rip), %rdx
	movl	$227, %r8d
	movq	-24(%rbp), %r10
	movq	%rax, %rsi
	movq	%rax, %rcx
	movq	%r10, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$8, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.10(%rip), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	leaq	.L.str.37(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	movl	$227, %r11d
	movq	-24(%rbp), %rax
	movl	%r8d, %ecx
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	$227, (%rsp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	callq	g_param_spec_int@PLT
	movl	$9, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_thumb_state_get_type@PLT
	leaq	.L.str.11(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	.L.str.38(%rip), %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$10, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_thumbnail_class_init, .Lfunc_end22-gimp_thumbnail_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_finalize,@function
gimp_thumbnail_finalize:                # @gimp_thumbnail_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumbnail_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB23_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB23_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB23_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB23_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB23_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.LBB23_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB23_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB23_10:                              # %if.end.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_thumbnail_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_thumbnail_finalize, .Lfunc_end23-gimp_thumbnail_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumbnail_set_property,@function
gimp_thumbnail_set_property:            # @gimp_thumbnail_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_thumbnail_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$9, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB24_11
# BB#15:                                # %entry
	leaq	.LJTI24_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB24_14
.LBB24_2:                               # %sw.bb.3
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_thumbnail_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_value_get_string@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_thumbnail_set_uri@PLT
	jmp	.LBB24_14
.LBB24_3:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int64@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 56(%rdi)
	jmp	.LBB24_14
.LBB24_4:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int64@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB24_14
.LBB24_5:                               # %sw.bb.11
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB24_14
.LBB24_6:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 68(%rdi)
	jmp	.LBB24_14
.LBB24_7:                               # %sw.bb.16
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 72(%rdi)
	jmp	.LBB24_14
.LBB24_8:                               # %sw.bb.18
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 80(%rdi)
	jmp	.LBB24_14
.LBB24_9:                               # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_int@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 88(%rdi)
	jmp	.LBB24_14
.LBB24_10:                              # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, 92(%rdi)
	jmp	.LBB24_14
.LBB24_11:                              # %sw.default
	jmp	.LBB24_12
.LBB24_12:                              # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.39(%rip), %rdi
	leaq	.L.str.40(%rip), %rsi
	movl	$321, %edx              # imm = 0x141
	leaq	.L.str.41(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB24_14
.LBB24_14:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_thumbnail_set_property, .Lfunc_end24-gimp_thumbnail_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI24_0:
	.long	.LBB24_1-.LJTI24_0
	.long	.LBB24_2-.LJTI24_0
	.long	.LBB24_3-.LJTI24_0
	.long	.LBB24_4-.LJTI24_0
	.long	.LBB24_5-.LJTI24_0
	.long	.LBB24_6-.LJTI24_0
	.long	.LBB24_7-.LJTI24_0
	.long	.LBB24_8-.LJTI24_0
	.long	.LBB24_9-.LJTI24_0
	.long	.LBB24_10-.LJTI24_0

	.text
	.align	16, 0x90
	.type	gimp_thumbnail_get_property,@function
gimp_thumbnail_get_property:            # @gimp_thumbnail_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_thumbnail_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$9, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB25_11
# BB#15:                                # %entry
	leaq	.LJTI25_0(%rip), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB25_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB25_14
.LBB25_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB25_14
.LBB25_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	callq	g_value_set_int64@PLT
	jmp	.LBB25_14
.LBB25_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_int64@PLT
	jmp	.LBB25_14
.LBB25_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB25_14
.LBB25_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	68(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB25_14
.LBB25_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB25_14
.LBB25_8:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rsi
	callq	g_value_set_string@PLT
	jmp	.LBB25_14
.LBB25_9:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	88(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB25_14
.LBB25_10:                              # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	92(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB25_14
.LBB25_11:                              # %sw.default
	jmp	.LBB25_12
.LBB25_12:                              # %do.body
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
	leaq	.L.str.39(%rip), %rdi
	leaq	.L.str.40(%rip), %rsi
	movl	$368, %edx              # imm = 0x170
	leaq	.L.str.41(%rip), %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#13:                                # %do.end
	jmp	.LBB25_14
.LBB25_14:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_thumbnail_get_property, .Lfunc_end25-gimp_thumbnail_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI25_0:
	.long	.LBB25_1-.LJTI25_0
	.long	.LBB25_2-.LJTI25_0
	.long	.LBB25_3-.LJTI25_0
	.long	.LBB25_4-.LJTI25_0
	.long	.LBB25_5-.LJTI25_0
	.long	.LBB25_6-.LJTI25_0
	.long	.LBB25_7-.LJTI25_0
	.long	.LBB25_8-.LJTI25_0
	.long	.LBB25_9-.LJTI25_0
	.long	.LBB25_10-.LJTI25_0

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.type	gimp_thumbnail_get_type.g_define_type_id__volatile,@object # @gimp_thumbnail_get_type.g_define_type_id__volatile
	.local	gimp_thumbnail_get_type.g_define_type_id__volatile
	.comm	gimp_thumbnail_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpThumbnail"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpThumb"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_thumbnail_set_uri,@object # @__func__.gimp_thumbnail_set_uri
.L__func__.gimp_thumbnail_set_uri:
	.asciz	"gimp_thumbnail_set_uri"
	.size	.L__func__.gimp_thumbnail_set_uri, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_THUMBNAIL (thumbnail)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image-state"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image-filesize"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image-mtime"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image-mimetype"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"image-width"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image-height"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"image-type"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image-num-layers"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"thumb-state"
	.size	.L.str.11, 12

	.type	.L__func__.gimp_thumbnail_set_filename,@object # @__func__.gimp_thumbnail_set_filename
.L__func__.gimp_thumbnail_set_filename:
	.asciz	"gimp_thumbnail_set_filename"
	.size	.L__func__.gimp_thumbnail_set_filename, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.12, 32

	.type	.L__func__.gimp_thumbnail_set_from_thumb,@object # @__func__.gimp_thumbnail_set_from_thumb
.L__func__.gimp_thumbnail_set_from_thumb:
	.asciz	"gimp_thumbnail_set_from_thumb"
	.size	.L__func__.gimp_thumbnail_set_from_thumb, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"filename != NULL"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tEXt::Thumb::URI"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp20-libgimp"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Thumbnail contains no Thumb::URI tag"
	.size	.L.str.16, 37

	.type	.L__func__.gimp_thumbnail_peek_image,@object # @__func__.gimp_thumbnail_peek_image
.L__func__.gimp_thumbnail_peek_image:
	.asciz	"gimp_thumbnail_peek_image"
	.size	.L__func__.gimp_thumbnail_peek_image, 26

	.type	.L__func__.gimp_thumbnail_peek_thumb,@object # @__func__.gimp_thumbnail_peek_thumb
.L__func__.gimp_thumbnail_peek_thumb:
	.asciz	"gimp_thumbnail_peek_thumb"
	.size	.L__func__.gimp_thumbnail_peek_thumb, 26

	.type	.L__func__.gimp_thumbnail_check_thumb,@object # @__func__.gimp_thumbnail_check_thumb
.L__func__.gimp_thumbnail_check_thumb:
	.asciz	"gimp_thumbnail_check_thumb"
	.size	.L__func__.gimp_thumbnail_check_thumb, 27

	.type	.L__func__.gimp_thumbnail_load_thumb,@object # @__func__.gimp_thumbnail_load_thumb
.L__func__.gimp_thumbnail_load_thumb:
	.asciz	"gimp_thumbnail_load_thumb"
	.size	.L__func__.gimp_thumbnail_load_thumb, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"tEXt::Thumb::MTime"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%li"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tEXt::Thumb::Size"
	.size	.L.str.19, 18

	.type	.L__func__.gimp_thumbnail_save_thumb,@object # @__func__.gimp_thumbnail_save_thumb
.L__func__.gimp_thumbnail_save_thumb:
	.asciz	"gimp_thumbnail_save_thumb"
	.size	.L__func__.gimp_thumbnail_save_thumb, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"thumbnail->image_uri != NULL"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"software != NULL"
	.size	.L.str.22, 17

	.type	.L__func__.gimp_thumbnail_save_thumb_local,@object # @__func__.gimp_thumbnail_save_thumb_local
.L__func__.gimp_thumbnail_save_thumb_local:
	.asciz	"gimp_thumbnail_save_thumb_local"
	.size	.L__func__.gimp_thumbnail_save_thumb_local, 32

	.type	.L__func__.gimp_thumbnail_save_failure,@object # @__func__.gimp_thumbnail_save_failure
.L__func__.gimp_thumbnail_save_failure:
	.asciz	"gimp_thumbnail_save_failure"
	.size	.L__func__.gimp_thumbnail_save_failure, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Thumbnail failure for %s"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"png"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tEXt::Description"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tEXt::Software"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Could not set permissions of thumbnail '%s': %s"
	.size	.L.str.27, 48

	.type	.L__func__.gimp_thumbnail_delete_failure,@object # @__func__.gimp_thumbnail_delete_failure
.L__func__.gimp_thumbnail_delete_failure:
	.asciz	"gimp_thumbnail_delete_failure"
	.size	.L__func__.gimp_thumbnail_delete_failure, 30

	.type	.L__func__.gimp_thumbnail_delete_others,@object # @__func__.gimp_thumbnail_delete_others
.L__func__.gimp_thumbnail_delete_others:
	.asciz	"gimp_thumbnail_delete_others"
	.size	.L__func__.gimp_thumbnail_delete_others, 29

	.type	.L__func__.gimp_thumbnail_has_failed,@object # @__func__.gimp_thumbnail_has_failed
.L__func__.gimp_thumbnail_has_failed:
	.asciz	"gimp_thumbnail_has_failed"
	.size	.L__func__.gimp_thumbnail_has_failed, 26

	.type	gimp_thumbnail_parent_class,@object # @gimp_thumbnail_parent_class
	.local	gimp_thumbnail_parent_class
	.comm	gimp_thumbnail_parent_class,8,8
	.type	GimpThumbnail_private_offset,@object # @GimpThumbnail_private_offset
	.local	GimpThumbnail_private_offset
	.comm	GimpThumbnail_private_offset,4,4
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"State of the image associated to the thumbnail object"
	.size	.L.str.28, 54

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"image-uri"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"URI of the image file"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Modification time of the image file in seconds since the Epoch"
	.size	.L.str.31, 63

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Size of the image file in bytes"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Image mimetype"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Width of the image in pixels"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Height of the image in pixels"
	.size	.L.str.35, 30

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"String describing the type of the image format"
	.size	.L.str.36, 47

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"The number of layers in the image"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"State of the thumbnail file"
	.size	.L.str.38, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.39, 54

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimpthumbnail.c"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"property"
	.size	.L.str.41, 9

	.type	.L__func__.gimp_thumbnail_update_image,@object # @__func__.gimp_thumbnail_update_image
.L__func__.gimp_thumbnail_update_image:
	.asciz	"gimp_thumbnail_update_image"
	.size	.L__func__.gimp_thumbnail_update_image, 28

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"thumbnail->image_filename == NULL"
	.size	.L.str.42, 34

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"thumbnail->image_filename != NULL"
	.size	.L.str.43, 34

	.type	.L__func__.gimp_thumbnail_update_thumb,@object # @__func__.gimp_thumbnail_update_thumb
.L__func__.gimp_thumbnail_update_thumb:
	.asciz	"gimp_thumbnail_update_thumb"
	.size	.L__func__.gimp_thumbnail_update_thumb, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"thumbnail->thumb_filename != NULL"
	.size	.L.str.44, 34

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"tEXt::Thumb::Mimetype"
	.size	.L.str.45, 22

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"tEXt::Thumb::Image::Width"
	.size	.L.str.46, 26

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%d"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"tEXt::Thumb::Image::Height"
	.size	.L.str.48, 27

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"tEXt::Thumb::X-GIMP::Type"
	.size	.L.str.49, 26

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"tEXt::Thumb::X-GIMP::Layers"
	.size	.L.str.50, 28

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Thumbnail of %s"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s%cgimp-thumb-%d-%.8s"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Could not create thumbnail for %s: %s"
	.size	.L.str.53, 38

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Could not set permissions of thumbnail for %s: %s"
	.size	.L.str.54, 50

	.hidden	_gimp_thumb_filename_from_uri
	.hidden	_gimp_thumbs_delete_others

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
