	.text
	.file	"preview.bc"
	.globl	preview_set_button_label
	.align	16, 0x90
	.type	preview_set_button_label,@function
preview_set_button_label:               # @preview_set_button_label
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
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	previewbutton, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	g_object_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	preview_set_button_label, .Lfunc_end0-preview_set_button_label
	.cfi_endproc

	.globl	preview_free_resources
	.align	16, 0x90
	.type	preview_free_resources,@function
preview_free_resources:                 # @preview_free_resources
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
	movabsq	$preview_ppm, %rdi
	callq	ppm_kill
	movabsq	$alpha_ppm, %rdi
	callq	ppm_kill
	movabsq	$backup_ppm, %rdi
	callq	ppm_kill
	movabsq	$alpha_backup_ppm, %rdi
	callq	ppm_kill
	popq	%rbp
	retq
.Lfunc_end1:
	.size	preview_free_resources, .Lfunc_end1-preview_free_resources
	.cfi_endproc

	.globl	updatepreview
	.align	16, 0x90
	.type	updatepreview,@function
updatepreview:                          # @updatepreview
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, backup_ppm+8
	jne	.LBB2_10
# BB#1:                                 # %if.then
	movabsq	$backup_ppm, %rdi
	callq	infile_copy_to_ppm
	cmpl	$150, backup_ppm
	jne	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$150, backup_ppm+4
	je	.LBB2_4
.LBB2_3:                                # %if.then.3
	movabsq	$backup_ppm, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	resize_fast
.LBB2_4:                                # %if.end
	cmpl	$0, img_has_alpha
	je	.LBB2_9
# BB#5:                                 # %if.then.4
	movabsq	$alpha_backup_ppm, %rdi
	callq	infile_copy_alpha_to_ppm
	cmpl	$150, alpha_backup_ppm
	jne	.LBB2_7
# BB#6:                                 # %lor.lhs.false.6
	cmpl	$150, alpha_backup_ppm+4
	je	.LBB2_8
.LBB2_7:                                # %if.then.8
	movabsq	$alpha_backup_ppm, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	resize_fast
.LBB2_8:                                # %if.end.9
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.10
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.11
	cmpq	$0, preview_ppm+8
	jne	.LBB2_14
# BB#11:                                # %if.then.13
	movabsq	$backup_ppm, %rdi
	movabsq	$preview_ppm, %rsi
	callq	ppm_copy
	cmpl	$0, img_has_alpha
	je	.LBB2_13
# BB#12:                                # %if.then.15
	movabsq	$alpha_backup_ppm, %rdi
	movabsq	$alpha_ppm, %rsi
	callq	ppm_copy
.LBB2_13:                               # %if.end.16
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.17
	cmpq	$0, -16(%rbp)
	je	.LBB2_18
# BB#15:                                # %if.then.19
	callq	store_values
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB2_17
# BB#16:                                # %if.then.22
	movabsq	$preview_ppm, %rdi
	movabsq	$alpha_ppm, %rsi
	callq	repaint
.LBB2_17:                               # %if.end.23
	jmp	.LBB2_18
.LBB2_18:                               # %if.end.24
	cmpl	$0, img_has_alpha
	je	.LBB2_20
# BB#19:                                # %if.then.26
	movabsq	$preview_ppm, %rdi
	movabsq	$alpha_ppm, %rsi
	callq	drawalpha
.LBB2_20:                               # %if.end.27
	movq	preview, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %edx
	movl	$450, %r8d              # imm = 0x1C2
	movq	preview_ppm+8, %rsi
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-36(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	-40(%rbp), %r9d         # 4-byte Reload
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$450, 8(%rsp)           # imm = 0x1C2
	callq	gimp_preview_area_draw
	movabsq	$preview_ppm, %rdi
	callq	ppm_kill
	cmpl	$0, img_has_alpha
	je	.LBB2_22
# BB#21:                                # %if.then.30
	movabsq	$alpha_ppm, %rdi
	callq	ppm_kill
.LBB2_22:                               # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	updatepreview, .Lfunc_end2-updatepreview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	-4580196005407883264    # double -255
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	drawalpha,@function
drawalpha:                              # @drawalpha
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$16, -44(%rbp)
	movq	-8(%rbp), %rsi
	imull	$3, (%rsi), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -24(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB3_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$0, -20(%rbp)
.LBB3_3:                                # %for.cond.1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_8
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-24(%rbp), %eax
	imull	-48(%rbp), %eax
	imull	$3, -20(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpb	$0, (%rsi,%rdx)
	jne	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_7
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-24(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%esi
	movl	-60(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	movl	%edx, %edi
	addl	%eax, %edi
	andl	$-2, %edi
	subl	%edi, %edx
	imull	$60, %edx, %eax
	addl	$100, %eax
	movl	%eax, -28(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %r9b
	movb	%r9b, (%r8,%rcx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %r9b
	movb	%r9b, (%r8,%rcx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %r9b
	movb	%r9b, (%r8,%rcx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r9b
	movb	%r9b, (%r8,%rcx)
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	incl	%eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %r8
	movq	8(%r8), %r8
	movzbl	(%r8,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r9b
	movb	%r9b, (%r8,%rcx)
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	%rcx, %r8
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	movzbl	(%r10,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %r9b
	movb	%r9b, (%r10,%r8)
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_9
.LBB3_9:                                # %for.inc.65
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB3_1
.LBB3_10:                               # %for.end.67
	popq	%rbp
	retq
.Lfunc_end3:
	.size	drawalpha, .Lfunc_end3-drawalpha
	.cfi_endproc

	.globl	create_preview
	.align	16, 0x90
	.type	create_preview,@function
create_preview:                         # @create_preview
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
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, -16(%rbp)
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$5, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$150, %ecx
	movq	%rax, preview
	movq	preview, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rsi
	movabsq	$preview_size_allocate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	preview, %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movabsq	$.L.str.4, %rsi
	movabsq	$updatepreview, %rdi
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	%rax, previewbutton
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.6, %rdi
	callq	gtk_button_new_from_stock
	movabsq	$.L.str.4, %rsi
	movabsq	$updatepreview, %rdx
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_preview, .Lfunc_end4-create_preview
	.cfi_endproc

	.align	16, 0x90
	.type	preview_size_allocate,@function
preview_size_allocate:                  # @preview_size_allocate
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	updatepreview
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_size_allocate, .Lfunc_end5-preview_size_allocate
	.cfi_endproc

	.type	previewbutton,@object   # @previewbutton
	.local	previewbutton
	.comm	previewbutton,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"label"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"use-underline"
	.size	.L.str.1, 14

	.type	preview_ppm,@object     # @preview_ppm
	.local	preview_ppm
	.comm	preview_ppm,16,8
	.type	alpha_ppm,@object       # @alpha_ppm
	.local	alpha_ppm
	.comm	alpha_ppm,16,8
	.type	backup_ppm,@object      # @backup_ppm
	.local	backup_ppm
	.comm	backup_ppm,16,8
	.type	alpha_backup_ppm,@object # @alpha_backup_ppm
	.local	alpha_backup_ppm
	.comm	alpha_backup_ppm,16,8
	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"size-allocate"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"_Update"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"clicked"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Refresh the Preview window"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-reset"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Revert to the original image"
	.size	.L.str.7, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
