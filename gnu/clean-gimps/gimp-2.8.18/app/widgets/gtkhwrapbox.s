	.text
	.file	"gtkhwrapbox.bc"
	.globl	gtk_hwrap_box_get_type
	.align	16, 0x90
	.type	gtk_hwrap_box_get_type,@function
gtk_hwrap_box_get_type:                 # @gtk_hwrap_box_get_type
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
	cmpq	$0, gtk_hwrap_box_get_type.hwrap_box_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gtk_wrap_box_get_type
	movabsq	$.L.str, %rsi
	movabsq	$gtk_hwrap_box_get_type.hwrap_box_info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gtk_hwrap_box_get_type.hwrap_box_type
.LBB0_2:                                # %if.end
	movq	gtk_hwrap_box_get_type.hwrap_box_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gtk_hwrap_box_get_type, .Lfunc_end0-gtk_hwrap_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_hwrap_box_class_init,@function
gtk_hwrap_box_class_init:               # @gtk_hwrap_box_class_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$reverse_list_row_children, %rsi
	movabsq	$gtk_hwrap_box_size_allocate, %rdi
	movabsq	$gtk_hwrap_box_size_request, %rcx
	movq	%rax, parent_class
	movq	-16(%rbp), %rax
	movq	%rcx, 240(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gtk_hwrap_box_class_init, .Lfunc_end1-gtk_hwrap_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_hwrap_box_init,@function
gtk_hwrap_box_init:                     # @gtk_hwrap_box_init
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
	movl	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 140(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gtk_hwrap_box_init, .Lfunc_end2-gtk_hwrap_box_init
	.cfi_endproc

	.globl	gtk_hwrap_box_new
	.align	16, 0x90
	.type	gtk_hwrap_box_new,@function
gtk_hwrap_box_new:                      # @gtk_hwrap_box_new
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gtk_hwrap_box_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gtk_hwrap_box_new, .Lfunc_end3-gtk_hwrap_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_hwrap_box_size_request,@function
gtk_hwrap_box_size_request:             # @gtk_hwrap_box_size_request
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_hwrap_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movss	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gtk_hwrap_box_size_request, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_29
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_17
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB4_15
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_size_request
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jbe	.LBB4_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB4_11:                               # %cond.end
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 136(%rcx)
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %eax
	cmpl	-60(%rbp), %eax
	jbe	.LBB4_13
# BB#12:                                # %cond.true.19
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-24(%rbp), %rax
	movl	140(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.21
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB4_14:                               # %cond.end.23
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 140(%rcx)
.LBB4_15:                               # %if.end.26
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_6
.LBB4_17:                               # %for.end
	movl	$1191182336, -44(%rbp)  # imm = 0x47000000
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -48(%rbp)
.LBB4_18:                               # %do.body.28
                                        # =>This Inner Loop Header: Depth=1
	leaq	-52(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	-24(%rbp), %rdi
	cvttss2si	%xmm1, %rcx
	movl	%ecx, %eax
	movl	%eax, %esi
	callq	get_layout_size
	movss	%xmm0, -68(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-68(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	ucomiss	128(%rcx), %xmm0
	jbe	.LBB4_20
# BB#19:                                # %cond.true.34
                                        #   in Loop: Header=BB4_18 Depth=1
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)       # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false.35
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-32(%rbp), %rax
	movss	128(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -116(%rbp)       # 4-byte Spill
.LBB4_21:                               # %cond.end.37
                                        #   in Loop: Header=BB4_18 Depth=1
	movss	-116(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-72(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movss	128(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	movss	%xmm0, -120(%rbp)       # 4-byte Spill
	jbe	.LBB4_23
# BB#22:                                # %cond.true.42
                                        #   in Loop: Header=BB4_18 Depth=1
	movss	-72(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)       # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.43
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-32(%rbp), %rax
	movss	128(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -124(%rbp)       # 4-byte Spill
.LBB4_24:                               # %cond.end.45
                                        #   in Loop: Header=BB4_18 Depth=1
	movss	-124(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-120(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -76(%rbp)
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_26
# BB#25:                                # %if.then.49
                                        #   in Loop: Header=BB4_18 Depth=1
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	cvttss2si	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttss2si	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB4_26:                               # %if.end.54
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %do.cond
                                        #   in Loop: Header=BB4_18 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB4_18
# BB#28:                                # %do.end.56
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	104(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	shll	$1, %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	104(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	shll	$1, %ecx
	movq	-16(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
.LBB4_29:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gtk_hwrap_box_size_request, .Lfunc_end4-gtk_hwrap_box_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gtk_hwrap_box_size_allocate,@function
gtk_hwrap_box_size_allocate:            # @gtk_hwrap_box_size_allocate
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	104(%rax), %edx
	andl	$65535, %edx            # imm = 0xFFFF
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, 64(%rax)
	movq	8(%rsi), %rsi
	movq	%rsi, 72(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	addl	-44(%rbp), %edx
	movl	%edx, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	addl	-44(%rbp), %edx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movl	-44(%rbp), %r8d
	shll	$1, %r8d
	subl	%r8d, %edx
	cmpl	%edx, %ecx
	jle	.LBB5_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB5_3:                                # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	-44(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %eax
	cmpl	%eax, %ecx
	jle	.LBB5_5
# BB#4:                                 # %cond.true.15
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.16
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB5_6:                                # %cond.end.20
	movl	-72(%rbp), %eax         # 4-byte Reload
	leaq	-40(%rbp), %rsi
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	layout_rows
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gtk_hwrap_box_size_allocate, .Lfunc_end5-gtk_hwrap_box_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	reverse_list_row_children,@function
reverse_list_row_children:              # @reverse_list_row_children
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-40(%rbp), %rcx
	movl	$0, (%rcx)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -77(%rbp)          # 1-byte Spill
	je	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -77(%rbp)          # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-77(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	cmpq	$0, -64(%rbp)
	je	.LBB6_23
# BB#6:                                 # %if.then
	leaq	-72(%rbp), %rdx
	movl	$1, -76(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	movl	-72(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jbe	.LBB6_8
# BB#7:                                 # %cond.true
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB6_9:                                # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-64(%rbp), %rcx
	movb	8(%rcx), %dl
	shrb	$2, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movq	-40(%rbp), %rcx
	orl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB6_10:                               # %while.cond.10
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -93(%rbp)          # 1-byte Spill
	je	.LBB6_12
# BB#11:                                # %land.rhs.12
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	132(%rcx), %eax
	setb	%dl
	movb	%dl, -93(%rbp)          # 1-byte Spill
.LBB6_12:                               # %land.end.14
                                        #   in Loop: Header=BB6_10 Depth=1
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_13
	jmp	.LBB6_22
.LBB6_13:                               # %while.body.15
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB6_21
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB6_10 Depth=1
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %r8d
	addl	%r8d, %ecx
	addl	-72(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	ja	.LBB6_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-64(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB6_17
.LBB6_16:                               # %if.then.34
	jmp	.LBB6_22
.LBB6_17:                               # %if.end
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %ecx
	addl	-72(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jbe	.LBB6_19
# BB#18:                                # %cond.true.43
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false.44
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB6_20:                               # %cond.end.46
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-64(%rbp), %rcx
	movb	8(%rcx), %dl
	shrb	$2, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movq	-40(%rbp), %rcx
	orl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
	movl	-76(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -76(%rbp)
.LBB6_21:                               # %if.end.55
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB6_10
.LBB6_22:                               # %while.end.57
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.58
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	reverse_list_row_children, .Lfunc_end6-reverse_list_row_children
	.cfi_endproc

	.align	16, 0x90
	.type	get_layout_size,@function
get_layout_size:                        # @get_layout_size
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$1, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	136(%rax), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB7_30
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, -84(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_29
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	cmpl	$0, -56(%rbp)
	jne	.LBB7_9
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-72(%rbp), %edx
	subl	-48(%rbp), %edx
	cmpl	%edx, %ecx
	jae	.LBB7_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-72(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB7_8:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_9:                                # %if.end.10
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
.LBB7_10:                               # %for.cond.12
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -64(%rbp)
	movb	%cl, -109(%rbp)         # 1-byte Spill
	je	.LBB7_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-84(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	132(%rcx), %eax
	setb	%dl
	movb	%dl, -109(%rbp)         # 1-byte Spill
.LBB7_12:                               # %land.end
                                        #   in Loop: Header=BB7_10 Depth=2
	movb	-109(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_13
	jmp	.LBB7_22
.LBB7_13:                               # %for.body.15
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB7_20
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB7_10 Depth=2
	leaq	-72(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rax
	movzbl	114(%rax), %r8d
	addl	%r8d, %ecx
	addl	-72(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jbe	.LBB7_16
# BB#15:                                # %if.then.29
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_22
.LBB7_16:                               # %if.end.30
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-32(%rbp), %rax
	movzbl	114(%rax), %ecx
	addl	-72(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jbe	.LBB7_18
# BB#17:                                # %cond.true.39
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.40
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB7_19:                               # %cond.end.42
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB7_20:                               # %if.end.44
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB7_10
.LBB7_22:                               # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	132(%rcx), %eax
	setae	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_24
# BB#23:                                # %cond.true.50
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB7_25
.LBB7_24:                               # %cond.false.51
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	movl	-76(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movzbl	114(%rdx), %esi
	addl	%esi, %ecx
	subl	%ecx, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB7_25:                               # %cond.end.56
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB7_27
# BB#26:                                # %cond.true.59
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	115(%rax), %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	jmp	.LBB7_28
.LBB7_27:                               # %cond.false.61
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB7_28
.LBB7_28:                               # %cond.end.62
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	addl	-80(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB7_29:                               # %for.inc.67
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_30:                               # %for.end.69
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	136(%rax), %ecx
	jbe	.LBB7_32
# BB#31:                                # %if.then.73
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB7_32:                               # %if.end.74
	cmpl	$1, -52(%rbp)
	jbe	.LBB7_34
# BB#33:                                # %cond.true.77
	movl	-52(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false.78
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB7_35
.LBB7_35:                               # %cond.end.79
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_layout_size, .Lfunc_end7-get_layout_size
	.cfi_endproc

	.align	16, 0x90
	.type	get_child_requisition,@function
get_child_requisition:                  # @get_child_requisition
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movw	112(%rdx), %ax
	andw	$1, %ax
	movzwl	%ax, %ecx
	cmpl	$0, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_hwrap_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	140(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_widget_get_child_requisition
.LBB8_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_child_requisition, .Lfunc_end8-get_child_requisition
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_1:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	layout_rows,@function
layout_rows:                            # @layout_rows
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
	subq	$192, %rsp
	leaq	-24(%rbp), %rax
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	824(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-184(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_slist_length
	movl	%eax, -68(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB9_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-28(%rbp), %ecx
	movw	%cx, %dx
	movq	-80(%rbp), %rax
	movw	%dx, 8(%rax)
	movl	-28(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-32(%rbp), %ecx
	movq	-80(%rbp), %rax
	movb	%cl, %sil
	movb	10(%rax), %r8b
	andb	$1, %sil
	andb	$-2, %r8b
	orb	%sil, %r8b
	movb	%r8b, 10(%rax)
	cmpl	$0, -32(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-48(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-60(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -40(%rbp)
	jmp	.LBB9_1
.LBB9_5:                                # %while.end
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jbe	.LBB9_7
# BB#6:                                 # %if.then.12
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, -64(%rbp)
	jmp	.LBB9_8
.LBB9_7:                                # %if.else
	xorps	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
.LBB9_8:                                # %if.end.15
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, -100(%rbp)
.LBB9_9:                                # %while.cond.17
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB9_16
# BB#10:                                # %while.body.19
                                        #   in Loop: Header=BB9_9 Depth=1
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB9_11
	jp	.LBB9_11
	jmp	.LBB9_15
.LBB9_11:                               # %if.then.22
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movq	-120(%rbp), %rax
	movzwl	8(%rax), %ecx
	cmpl	-124(%rbp), %ecx
	jbe	.LBB9_13
# BB#12:                                # %if.then.33
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -64(%rbp)
	movl	-124(%rbp), %eax
	movq	-120(%rbp), %rcx
	movzwl	8(%rcx), %edx
	subl	%eax, %edx
	movw	%dx, %si
	movw	%si, 8(%rcx)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.40
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	-120(%rbp), %rax
	movzwl	8(%rax), %ecx
	subl	$1, %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -64(%rbp)
	movq	-120(%rbp), %rax
	movw	$1, 8(%rax)
.LBB9_14:                               # %if.end.47
                                        #   in Loop: Header=BB9_9 Depth=1
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.48
                                        #   in Loop: Header=BB9_9 Depth=1
	movss	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	-100(%rbp), %xmm0
	movss	%xmm0, -100(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_9
.LBB9_16:                               # %while.end.50
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB9_40
# BB#17:                                # %if.then.52
	movl	$0, -148(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2ssl	12(%rax), %xmm0
	movss	%xmm0, -144(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rax, %xmm1
	decl	%ecx
	movq	-8(%rbp), %rax
	movzbl	115(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	subss	%xmm2, %xmm0
	ucomiss	%xmm0, %xmm1
	jbe	.LBB9_19
# BB#18:                                # %cond.true
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, -188(%rbp)       # 4-byte Spill
	jmp	.LBB9_20
.LBB9_19:                               # %cond.false
	movss	-144(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	-60(%rbp), %eax
	decl	%eax
	movq	-8(%rbp), %rcx
	movzbl	115(%rcx), %edx
	imull	%edx, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -188(%rbp)       # 4-byte Spill
.LBB9_20:                               # %cond.end
	movss	-188(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	andw	$1, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	je	.LBB9_22
# BB#21:                                # %if.then.78
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtss2sd	-144(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB9_29
.LBB9_22:                               # %if.else.83
	cmpl	$0, -56(%rbp)
	je	.LBB9_27
# BB#23:                                # %if.then.85
	xorps	%xmm0, %xmm0
	movss	-144(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB9_25
# BB#24:                                # %cond.true.90
	xorps	%xmm0, %xmm0
	movss	%xmm0, -192(%rbp)       # 4-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.91
	movss	-144(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -192(%rbp)       # 4-byte Spill
.LBB9_26:                               # %cond.end.94
	movss	-192(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)
	movss	-144(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -148(%rbp)
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.100
	xorps	%xmm0, %xmm0
	movss	%xmm0, -144(%rbp)
.LBB9_28:                               # %if.end.101
	jmp	.LBB9_29
.LBB9_29:                               # %if.end.102
	movq	-16(%rbp), %rax
	cvtsi2ssl	4(%rax), %xmm0
	movss	%xmm0, -140(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB9_30:                               # %while.cond.105
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB9_37
# BB#31:                                # %while.body.107
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -168(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movq	-8(%rbp), %rax
	movw	112(%rax), %dx
	andw	$1, %dx
	movzwl	%dx, %ecx
	cmpl	$0, %ecx
	je	.LBB9_33
# BB#32:                                # %if.then.118
                                        #   in Loop: Header=BB9_30 Depth=1
	cvttss2si	-144(%rbp), %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB9_36
.LBB9_33:                               # %if.else.121
                                        #   in Loop: Header=BB9_30 Depth=1
	movq	-136(%rbp), %rax
	movzwl	8(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movq	-136(%rbp), %rax
	movb	10(%rax), %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB9_35
# BB#34:                                # %if.then.130
                                        #   in Loop: Header=BB9_30 Depth=1
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-156(%rbp), %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -156(%rbp)
.LBB9_35:                               # %if.end.135
                                        #   in Loop: Header=BB9_30 Depth=1
	jmp	.LBB9_36
.LBB9_36:                               # %if.end.136
                                        #   in Loop: Header=BB9_30 Depth=1
	leaq	-168(%rbp), %rsi
	cvttss2si	-140(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-156(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	115(%rcx), %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movq	(%rcx), %rdx
	movl	-68(%rbp), %ecx
	movq	-136(%rbp), %r8
	movb	10(%r8), %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	callq	layout_row
	movq	-136(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	g_slist_free
	movq	-176(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	jmp	.LBB9_30
.LBB9_37:                               # %while.end.151
	jmp	.LBB9_38
.LBB9_38:                               # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free_chain_with_offset
# BB#39:                                # %do.end
	jmp	.LBB9_40
.LBB9_40:                               # %if.end.152
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	layout_rows, .Lfunc_end9-layout_rows
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1073741824              # float 2
	.text
	.align	16, 0x90
	.type	layout_row,@function
layout_row:                             # @layout_row
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-96(%rbp), %rax
	movb	8(%rax), %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-104(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	movl	-104(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	%ecx, -56(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	-44(%rbp), %esi
	subl	$1, %esi
	movq	-8(%rbp), %rcx
	movzbl	114(%rcx), %edi
	imull	%edi, %esi
	subl	%esi, %edx
	cmpl	%edx, %eax
	jbe	.LBB10_8
# BB#7:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	subl	$1, %edx
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %esi
	imull	%esi, %edx
	subl	%edx, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB10_9:                               # %cond.end
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-56(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_11
# BB#10:                                # %if.then.17
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-56(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_12
.LBB10_11:                              # %if.else
	xorps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
.LBB10_12:                              # %if.end.20
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB10_14
# BB#13:                                # %land.rhs
	xorps	%xmm0, %xmm0
	movss	-68(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	setne	%al
	setp	%cl
	orb	%cl, %al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB10_14:                              # %land.end
	movb	-129(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdx
	cvtsi2ssl	(%rdx), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-8(%rbp), %rdx
	movw	112(%rdx), %si
	andw	$1, %si
	movzwl	%si, %ecx
	cmpl	$0, %ecx
	je	.LBB10_19
# BB#15:                                # %if.then.29
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movq	-8(%rbp), %rcx
	movzbl	114(%rcx), %edi
	imull	%edi, %esi
	subl	%esi, %edx
	cmpl	%edx, %eax
	jbe	.LBB10_17
# BB#16:                                # %cond.true.38
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false.39
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-28(%rbp), %edx
	subl	$1, %edx
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %esi
	imull	%esi, %edx
	subl	%edx, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
.LBB10_18:                              # %cond.end.46
	movl	-136(%rbp), %eax        # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm1
	movss	%xmm1, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	cvtss2sd	-64(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_35
.LBB10_19:                              # %if.else.52
	cmpl	$0, -52(%rbp)
	je	.LBB10_22
# BB#20:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$3, %edx
	je	.LBB10_22
# BB#21:                                # %if.then.59
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtss2sd	-68(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_34
.LBB10_22:                              # %if.else.64
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$3, %edx
	jne	.LBB10_24
# BB#23:                                # %if.then.72
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movl	$1, -52(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -48(%rbp)
	cvtsi2sdq	%rcx, %xmm0
	cvtss2sd	-68(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_33
.LBB10_24:                              # %if.else.77
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$2, %edx
	jne	.LBB10_26
# BB#25:                                # %if.then.85
	xorps	%xmm0, %xmm0
	movss	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	-68(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	addss	-60(%rbp), %xmm2
	movss	%xmm2, -60(%rbp)
	movss	%xmm0, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_32
.LBB10_26:                              # %if.else.88
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB10_28
# BB#27:                                # %if.then.96
	xorps	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	%xmm0, -68(%rbp)
	jmp	.LBB10_31
.LBB10_28:                              # %if.else.97
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$1, %edx
	jne	.LBB10_30
# BB#29:                                # %if.then.105
	xorps	%xmm0, %xmm0
	movss	-68(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	-60(%rbp), %xmm1
	movss	%xmm1, -60(%rbp)
	movss	%xmm0, -64(%rbp)
	movss	%xmm0, -68(%rbp)
.LBB10_30:                              # %if.end.107
	jmp	.LBB10_31
.LBB10_31:                              # %if.end.108
	jmp	.LBB10_32
.LBB10_32:                              # %if.end.109
	jmp	.LBB10_33
.LBB10_33:                              # %if.end.110
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.111
	jmp	.LBB10_35
.LBB10_35:                              # %if.end.112
	movl	$0, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB10_36:                              # %for.cond.113
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_67
# BB#37:                                # %for.body.115
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	cvttss2si	-60(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-8(%rbp), %rax
	movw	112(%rax), %dx
	andw	$1, %dx
	movzwl	%dx, %ecx
	cmpl	$0, %ecx
	je	.LBB10_39
# BB#38:                                # %if.then.126
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -76(%rbp)
	cvttss2si	-64(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %edx
	addl	%edx, %ecx
	cvtsi2ssl	%ecx, %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	jmp	.LBB10_65
.LBB10_39:                              # %if.else.136
                                        #   in Loop: Header=BB10_36 Depth=1
	leaq	-120(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	callq	get_child_requisition
	movl	-116(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB10_41
# BB#40:                                # %if.then.143
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB10_52
.LBB10_41:                              # %if.else.146
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rcx
	movw	112(%rcx), %dx
	shrw	$5, %dx
	andw	$15, %dx
	movzwl	%dx, %eax
	cmpl	$3, %eax
	je	.LBB10_43
# BB#42:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-112(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB10_44
.LBB10_43:                              # %if.then.160
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB10_51
.LBB10_44:                              # %if.else.163
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-112(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB10_46
# BB#45:                                # %lor.lhs.false.170
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$5, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$2, %edx
	jne	.LBB10_47
.LBB10_46:                              # %if.then.178
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	-116(%rbp), %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB10_50
.LBB10_47:                              # %if.else.185
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$5, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$1, %edx
	jne	.LBB10_49
# BB#48:                                # %if.then.193
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-116(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB10_49:                              # %if.end.199
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_50
.LBB10_50:                              # %if.end.200
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_51
.LBB10_51:                              # %if.end.201
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_52
.LBB10_52:                              # %if.end.202
                                        #   in Loop: Header=BB10_36 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB10_60
# BB#53:                                # %if.then.204
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-112(%rbp), %rcx
	movb	8(%rcx), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	jne	.LBB10_55
# BB#54:                                # %lor.lhs.false.212
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-8(%rbp), %rax
	movw	112(%rax), %cx
	shrw	$1, %cx
	andw	$15, %cx
	movzwl	%cx, %edx
	cmpl	$3, %edx
	jne	.LBB10_59
.LBB10_55:                              # %if.then.220
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-48(%rbp), %eax
	decl	%eax
	movl	%eax, -48(%rbp)
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm1
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm1
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %rcx
	movl	%ecx, %eax
	movl	%eax, -124(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	movss	-64(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, -64(%rbp)
	movq	-112(%rbp), %rcx
	movb	8(%rcx), %dl
	shrb	$1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB10_57
# BB#56:                                # %if.then.234
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-124(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB10_58
.LBB10_57:                              # %if.else.237
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-124(%rbp), %eax
	shrl	%eax
	movl	-88(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, %edx
	cvtsi2ssq	%rdx, %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
.LBB10_58:                              # %if.end.243
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_59
.LBB10_59:                              # %if.end.244
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_64
.LBB10_60:                              # %if.else.245
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2ssq	%rcx, %xmm0
	mulss	-68(%rbp), %xmm0
	cvtsi2ssl	-88(%rbp), %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, -88(%rbp)
	movl	-120(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-88(%rbp), %edx
	movq	-16(%rbp), %rcx
	addl	(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_62
# BB#61:                                # %cond.true.260
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-120(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB10_63
.LBB10_62:                              # %cond.false.262
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-88(%rbp), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
.LBB10_63:                              # %cond.end.268
                                        #   in Loop: Header=BB10_36 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB10_64:                              # %if.end.271
                                        #   in Loop: Header=BB10_36 Depth=1
	jmp	.LBB10_65
.LBB10_65:                              # %if.end.272
                                        #   in Loop: Header=BB10_36 Depth=1
	leaq	-88(%rbp), %rsi
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzbl	114(%rcx), %edx
	addl	%edx, %eax
	cvtsi2ssl	%eax, %xmm0
	addss	-60(%rbp), %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-112(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gtk_widget_size_allocate
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
# BB#66:                                # %for.inc.281
                                        #   in Loop: Header=BB10_36 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_36
.LBB10_67:                              # %for.end.283
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	layout_row, .Lfunc_end10-layout_row
	.cfi_endproc

	.type	gtk_hwrap_box_get_type.hwrap_box_type,@object # @gtk_hwrap_box_get_type.hwrap_box_type
	.local	gtk_hwrap_box_get_type.hwrap_box_type
	.comm	gtk_hwrap_box_get_type.hwrap_box_type,8,8
	.type	gtk_hwrap_box_get_type.hwrap_box_info,@object # @gtk_hwrap_box_get_type.hwrap_box_info
	.section	.rodata,"a",@progbits
	.align	8
gtk_hwrap_box_get_type.hwrap_box_info:
	.short	832                     # 0x340
	.zero	6
	.quad	0
	.quad	0
	.quad	gtk_hwrap_box_class_init
	.quad	0
	.quad	0
	.short	144                     # 0x90
	.short	0                       # 0x0
	.zero	4
	.quad	gtk_hwrap_box_init
	.quad	0
	.size	gtk_hwrap_box_get_type.hwrap_box_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GtkHWrapBox"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"homogeneous"
	.size	.L.str.1, 12

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gtk_hwrap_box_size_request,@object # @__func__.gtk_hwrap_box_size_request
.L__func__.gtk_hwrap_box_size_request:
	.asciz	"gtk_hwrap_box_size_request"
	.size	.L__func__.gtk_hwrap_box_size_request, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"requisition != NULL"
	.size	.L.str.3, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
