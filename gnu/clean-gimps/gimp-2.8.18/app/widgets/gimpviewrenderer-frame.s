	.text
	.file	"gimpviewrenderer-frame.bc"
	.globl	gimp_view_renderer_get_frame_pixbuf
	.align	16, 0x90
	.type	gimp_view_renderer_get_frame_pixbuf,@function
gimp_view_renderer_get_frame_pixbuf:    # @gimp_view_renderer_get_frame_pixbuf
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_renderer_get_frame_pixbuf, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_view_renderer_get_frame_pixbuf, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_view_renderer_ensure_frame
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rsi
	subl	144(%rsi), %eax
	movq	-40(%rbp), %rsi
	subl	148(%rsi), %eax
	movl	%eax, -60(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rsi
	subl	156(%rsi), %eax
	movq	-40(%rbp), %rsi
	subl	152(%rsi), %eax
	movl	%eax, -64(%rbp)
	cmpl	$12, -60(%rbp)
	jle	.LBB0_29
# BB#25:                                # %land.lhs.true.44
	cmpl	$12, -64(%rbp)
	jle	.LBB0_29
# BB#26:                                # %if.then.46
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.50
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.end.51
	movq	-40(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %eax
	addl	-68(%rbp), %eax
	movq	-40(%rbp), %rdx
	addl	148(%rdx), %eax
	movl	-64(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movq	-40(%rbp), %rdx
	addl	152(%rdx), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	gimp_view_renderer_get_frame
	movq	%rax, -48(%rbp)
	jmp	.LBB0_32
.LBB0_29:                               # %if.else.62
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-28(%rbp), %ecx
	subl	$2, %ecx
	movl	-32(%rbp), %edx
	subl	$2, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	callq	gimp_viewable_get_pixbuf
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.69
	movq	$0, -8(%rbp)
	jmp	.LBB0_33
.LBB0_31:                               # %if.end.70
	movl	$1, -68(%rbp)
	movl	$1, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	xorl	%ecx, %ecx
	movl	$8, %edx
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	$2, %eax
	movl	-64(%rbp), %esi
	addl	$2, %esi
	movl	%ecx, %edi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%eax, %ecx
	movl	-128(%rbp), %r8d        # 4-byte Reload
	callq	gdk_pixbuf_new
	xorl	%esi, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_pixbuf_fill
.LBB0_32:                               # %if.end.76
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-48(%rbp), %r9
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	movq	-48(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB0_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_view_renderer_get_frame_pixbuf, .Lfunc_end0-gimp_view_renderer_get_frame_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_ensure_frame,@function
gimp_view_renderer_ensure_frame:        # @gimp_view_renderer_ensure_frame
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 136(%rsi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rsi
	movl	$6, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	gtk_widget_render_icon
	movq	-24(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-24(%rbp), %rax
	movl	$2, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$2, 156(%rax)
	movq	-24(%rbp), %rax
	movl	$4, 148(%rax)
	movq	-24(%rbp), %rax
	movl	$4, 152(%rax)
.LBB1_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_view_renderer_ensure_frame, .Lfunc_end1-gimp_view_renderer_ensure_frame
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_view_renderer_get_frame,@function
gimp_view_renderer_get_frame:           # @gimp_view_renderer_get_frame
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-24(%rbp), %rax
	movl	144(%rax), %esi
	movq	-24(%rbp), %rax
	movl	156(%rax), %edx
	movq	-24(%rbp), %rax
	movl	148(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	152(%rax), %r8d
	movl	-12(%rbp), %r9d
	movl	-16(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	stretch_frame_image
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_view_renderer_get_frame, .Lfunc_end2-gimp_view_renderer_get_frame
	.cfi_endproc

	.globl	gimp_view_renderer_get_frame_size
	.align	16, 0x90
	.type	gimp_view_renderer_get_frame_size,@function
gimp_view_renderer_get_frame_size:      # @gimp_view_renderer_get_frame_size
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gimp_view_renderer_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	148(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movl	156(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	152(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_4:                                # %if.end.5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_view_renderer_get_frame_size, .Lfunc_end3-gimp_view_renderer_get_frame_size
	.cfi_endproc

	.align	16, 0x90
	.type	stretch_frame_image,@function
stretch_frame_image:                    # @stretch_frame_image
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
	subq	$192, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$8, %edx
	movl	%eax, -48(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gdk_pixbuf_new
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_fill
	movl	$4, %ecx
	movl	-28(%rbp), %edx
	subl	-12(%rbp), %edx
	subl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
	movl	-32(%rbp), %edx
	subl	-16(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-44(%rbp), %edx
	subl	-12(%rbp), %edx
	subl	-20(%rbp), %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %edx
	subl	-16(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movl	$4, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB4_3:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_5
# BB#4:                                 # %cond.true.16
	movl	$4, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false.18
	movl	$4, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB4_6:                                # %cond.end.20
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_8
# BB#7:                                 # %cond.true.26
	movl	$4, %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.28
	movl	$4, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB4_9:                                # %cond.end.30
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_11
# BB#10:                                # %cond.true.36
	movl	$4, %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-120(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false.38
	movl	$4, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB4_12:                               # %cond.end.40
	movl	-124(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-40(%rbp), %r9
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	draw_frame_row
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %esi
	subl	-20(%rbp), %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-40(%rbp), %r9
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	draw_frame_column
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %esi
	subl	-20(%rbp), %esi
	movl	-32(%rbp), %r10d
	subl	-24(%rbp), %r10d
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-48(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movq	-40(%rbp), %r9
	movl	-12(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-164(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	draw_frame_row
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-32(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	$0, (%rsp)
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movq	-40(%rbp), %r9
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r10d
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-176(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	draw_frame_column
	movq	-40(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	stretch_frame_image, .Lfunc_end4-stretch_frame_image
	.cfi_endproc

	.align	16, 0x90
	.type	draw_frame_row,@function
draw_frame_row:                         # @draw_frame_row
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
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB5_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB5_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB5_5:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-32(%rbp), %r9
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-24(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-52(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	draw_frame_row, .Lfunc_end5-draw_frame_row
	.cfi_endproc

	.align	16, 0x90
	.type	draw_frame_column,@function
draw_frame_column:                      # @draw_frame_column
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
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB6_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB6_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB6_5:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	-32(%rbp), %r9
	movl	-24(%rbp), %eax
	movl	-36(%rbp), %r10d
	addl	-48(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-52(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_1
.LBB6_6:                                # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	draw_frame_column, .Lfunc_end6-draw_frame_column
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_view_renderer_get_frame_pixbuf,@object # @__func__.gimp_view_renderer_get_frame_pixbuf
.L__func__.gimp_view_renderer_get_frame_pixbuf:
	.asciz	"gimp_view_renderer_get_frame_pixbuf"
	.size	.L__func__.gimp_view_renderer_get_frame_pixbuf, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_VIEW_RENDERER (renderer)"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_VIEWABLE (renderer->viewable)"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-frame"
	.size	.L.str.3, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
