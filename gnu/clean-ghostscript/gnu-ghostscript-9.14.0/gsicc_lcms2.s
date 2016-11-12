	.text
	.file	"gsicc_lcms2.bc"
	.globl	gscms_get_input_channel_count
	.align	16, 0x90
	.type	gscms_get_input_channel_count,@function
gscms_get_input_channel_count:          # @gscms_get_input_channel_count
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	cmsChannelsOf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gscms_get_input_channel_count, .Lfunc_end0-gscms_get_input_channel_count
	.cfi_endproc

	.globl	gscms_get_output_channel_count
	.align	16, 0x90
	.type	gscms_get_output_channel_count,@function
gscms_get_output_channel_count:         # @gscms_get_output_channel_count
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
	callq	cmsGetPCS
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	cmsChannelsOf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gscms_get_output_channel_count, .Lfunc_end1-gscms_get_output_channel_count
	.cfi_endproc

	.globl	gscms_get_numberclrtnames
	.align	16, 0x90
	.type	gscms_get_numberclrtnames,@function
gscms_get_numberclrtnames:              # @gscms_get_numberclrtnames
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
	subq	$16, %rsp
	movl	$1668051572, %esi       # imm = 0x636C7274
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsReadTag
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	cmsNamedColorCount
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gscms_get_numberclrtnames, .Lfunc_end2-gscms_get_numberclrtnames
	.cfi_endproc

	.globl	gscms_get_clrtname
	.align	16, 0x90
	.type	gscms_get_clrtname,@function
gscms_get_clrtname:                     # @gscms_get_clrtname
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
	subq	$352, %rsp              # imm = 0x160
	movl	$1668051572, %eax       # imm = 0x636C7274
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	cmsReadTag
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rdi
	movl	%esi, -320(%rbp)        # 4-byte Spill
	callq	cmsNamedColorCount
	movl	-320(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jb	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-304(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	-328(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	cmsNamedColorInfo
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.5
	leaq	-304(%rbp), %rdi
	callq	strlen
	movabsq	$.L.str, %rdx
	movl	%eax, %ecx
	movl	%ecx, -316(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	-316(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	*%rax
	movq	%rax, -312(%rbp)
	cmpq	$0, -312(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.9
	leaq	-304(%rbp), %rsi
	movq	-312(%rbp), %rdi
	callq	strcpy
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB3_6:                                # %if.end.12
	movq	-312(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gscms_get_clrtname, .Lfunc_end3-gscms_get_clrtname
	.cfi_endproc

	.globl	gscms_is_device_link
	.align	16, 0x90
	.type	gscms_is_device_link,@function
gscms_is_device_link:                   # @gscms_is_device_link
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsGetDeviceClass
	cmpl	$1818848875, %eax       # imm = 0x6C696E6B
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gscms_is_device_link, .Lfunc_end4-gscms_is_device_link
	.cfi_endproc

	.globl	gscms_is_input
	.align	16, 0x90
	.type	gscms_is_input,@function
gscms_is_input:                         # @gscms_is_input
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsGetDeviceClass
	cmpl	$1935896178, %eax       # imm = 0x73636E72
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gscms_is_input, .Lfunc_end5-gscms_is_input
	.cfi_endproc

	.globl	gscms_get_profile_data_space
	.align	16, 0x90
	.type	gscms_get_profile_data_space,@function
gscms_get_profile_data_space:           # @gscms_get_profile_data_space
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	callq	cmsGetColorSpace
	movl	%eax, -20(%rbp)
	movl	%eax, %ecx
	subl	$1129142603, %eax       # imm = 0x434D594B
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$1196573017, %eax       # imm = 0x47524159
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB6_4
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$1281450528, %eax       # imm = 0x4C616220
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_10
.LBB6_10:                               # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$1380401696, %eax       # imm = 0x52474220
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_11
.LBB6_11:                               # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$1482250784, %eax       # imm = 0x58595A20
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB6_6
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movl	$5, -4(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.1
	movl	$6, -4(%rbp)
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.2
	movl	$2, -4(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %sw.bb.3
	movl	$1, -4(%rbp)
	jmp	.LBB6_7
.LBB6_5:                                # %sw.bb.4
	movl	$3, -4(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %sw.default
	movl	$4, -4(%rbp)
.LBB6_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gscms_get_profile_data_space, .Lfunc_end6-gscms_get_profile_data_space
	.cfi_endproc

	.globl	gscms_get_profile_handle_mem
	.align	16, 0x90
	.type	gscms_get_profile_handle_mem,@function
gscms_get_profile_handle_mem:           # @gscms_get_profile_handle_mem
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
	subq	$32, %rsp
	movabsq	$gscms_error, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rax, %rdi
	callq	cmsSetLogErrorHandler
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	cmsOpenProfileFromMemTHR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gscms_get_profile_handle_mem, .Lfunc_end7-gscms_get_profile_handle_mem
	.cfi_endproc

	.align	16, 0x90
	.type	gscms_error,@function
gscms_error:                            # @gscms_error
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gscms_error, .Lfunc_end8-gscms_error
	.cfi_endproc

	.globl	gscms_get_profile_handle_file
	.align	16, 0x90
	.type	gscms_get_profile_handle_file,@function
gscms_get_profile_handle_file:          # @gscms_get_profile_handle_file
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
	subq	$32, %rsp
	movabsq	$.L.str.1, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	cmsOpenProfileFromFileTHR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gscms_get_profile_handle_file, .Lfunc_end9-gscms_get_profile_handle_file
	.cfi_endproc

	.globl	gscms_transform_color_buffer
	.align	16, 0x90
	.type	gscms_transform_color_buffer,@function
gscms_transform_color_buffer:           # @gscms_transform_color_buffer
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	cmsGetTransformInputFormat
	shrl	$16, %eax
	andl	$31, %eax
	shll	$16, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	cmsGetTransformOutputFormat
	shrl	$16, %eax
	andl	$31, %eax
	shll	$16, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %eax
	movl	-76(%rbp), %r10d
	shll	$12, %r10d
	orl	%r10d, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-64(%rbp), %eax
	movl	-76(%rbp), %r10d
	shll	$12, %r10d
	orl	%r10d, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movl	%eax, -80(%rbp)
	cmpl	$2, -80(%rbp)
	jle	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -80(%rbp)
.LBB10_2:                               # %if.end
	movl	-60(%rbp), %eax
	orl	-80(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	movzbl	1(%rcx), %eax
	movl	%eax, -80(%rbp)
	cmpl	$2, -80(%rbp)
	jle	.LBB10_4
# BB#3:                                 # %if.then.15
	movl	$0, -80(%rbp)
.LBB10_4:                               # %if.end.16
	movl	-64(%rbp), %eax
	orl	-80(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -84(%rbp)
	movl	-60(%rbp), %eax
	movl	-84(%rbp), %esi
	shll	$11, %esi
	orl	%esi, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -84(%rbp)
	movl	-64(%rbp), %eax
	movl	-84(%rbp), %esi
	shll	$11, %esi
	orl	%esi, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	cmsGetTransformInputFormat
	shrl	$3, %eax
	andl	$15, %eax
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %rdi
	callq	cmsGetTransformOutputFormat
	shrl	$3, %eax
	andl	$15, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB10_6
# BB#5:                                 # %lor.lhs.false
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB10_7
.LBB10_6:                               # %if.then.39
	jmp	.LBB10_34
.LBB10_7:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$3, %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$3, %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -88(%rbp)
	movl	-60(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$7, %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$7, %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	cmsChangeBuffersFormat
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -112(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, 16(%rdi)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB10_29
# BB#8:                                 # %if.then.52
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	32(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	20(%rax), %ecx
	jne	.LBB10_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	32(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	20(%rax), %ecx
	jne	.LBB10_11
# BB#10:                                # %if.then.61
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	callq	cmsDoTransform
	jmp	.LBB10_28
.LBB10_11:                              # %if.else
	movabsq	$.L.str.2, %rdx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	32(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	32(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	40(%rsi), %rdi
	movl	-132(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movzbl	(%rsi), %r8d
	imull	%r8d, %ecx
	movl	%ecx, %esi
	callq	*%rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB10_13
# BB#12:                                # %if.then.79
	jmp	.LBB10_34
.LBB10_13:                              # %if.end.80
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	40(%rcx), %rdi
	movl	-136(%rbp), %esi
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %r8d
	imull	%r8d, %esi
	callq	*%rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.93
	jmp	.LBB10_34
.LBB10_15:                              # %if.end.94
	movl	$0, -140(%rbp)
.LBB10_16:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_18 Depth 2
                                        #     Child Loop BB10_22 Depth 2
	movl	-140(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB10_27
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	$0, -144(%rbp)
.LBB10_18:                              # %for.cond.98
                                        #   Parent Loop BB10_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-144(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_21
# BB#19:                                # %for.body.103
                                        #   in Loop: Header=BB10_18 Depth=2
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movslq	-132(%rbp), %rdx
	callq	memcpy
	movl	-132(%rbp), %ecx
	movq	-152(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -152(%rbp)
	movq	-24(%rbp), %rdx
	movl	20(%rdx), %ecx
	movq	-160(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -160(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB10_18 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB10_18
.LBB10_21:                              # %for.end
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-56(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	callq	cmsDoTransform
	movl	$0, -144(%rbp)
.LBB10_22:                              # %for.cond.110
                                        #   Parent Loop BB10_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-144(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB10_25
# BB#23:                                # %for.body.115
                                        #   in Loop: Header=BB10_22 Depth=2
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-136(%rbp), %rdx
	callq	memcpy
	movl	-136(%rbp), %ecx
	movq	-168(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -168(%rbp)
	movq	-32(%rbp), %rdx
	movl	20(%rdx), %ecx
	movq	-176(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -176(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
# BB#24:                                # %for.inc.123
                                        #   in Loop: Header=BB10_22 Depth=2
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB10_22
.LBB10_25:                              # %for.end.125
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-112(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
# BB#26:                                # %for.inc.131
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB10_16
.LBB10_27:                              # %for.end.133
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-128(%rbp), %rsi
	callq	*%rax
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	40(%rcx), %rdi
	movq	-120(%rbp), %rsi
	callq	*%rax
.LBB10_28:                              # %if.end.145
	jmp	.LBB10_34
.LBB10_29:                              # %if.else.146
	movl	$0, -92(%rbp)
.LBB10_30:                              # %for.cond.147
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB10_33
# BB#31:                                # %for.body.151
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	callq	cmsDoTransform
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-104(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-112(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
# BB#32:                                # %for.inc.159
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB10_30
.LBB10_33:                              # %for.end.161
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.162
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gscms_transform_color_buffer, .Lfunc_end10-gscms_transform_color_buffer
	.cfi_endproc

	.globl	gscms_transform_color
	.align	16, 0x90
	.type	gscms_transform_color,@function
gscms_transform_color:                  # @gscms_transform_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	cmpl	$2, -36(%rbp)
	jle	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB11_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	cmsGetTransformInputFormat
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	cmsGetTransformOutputFormat
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	andl	$-8, %eax
	orl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	andl	$-8, %eax
	orl	-36(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	cmsChangeBuffersFormat
	movl	$1, %ecx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	cmsDoTransform
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gscms_transform_color, .Lfunc_end11-gscms_transform_color
	.cfi_endproc

	.globl	gscms_avoid_white_fix_flag
	.align	16, 0x90
	.type	gscms_avoid_white_fix_flag,@function
gscms_avoid_white_fix_flag:             # @gscms_avoid_white_fix_flag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movl	$4, %eax
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gscms_avoid_white_fix_flag, .Lfunc_end12-gscms_avoid_white_fix_flag
	.cfi_endproc

	.globl	gscms_get_link_dim
	.align	16, 0x90
	.type	gscms_get_link_dim,@function
gscms_get_link_dim:                     # @gscms_get_link_dim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsGetTransformInputFormat
	shrl	$3, %eax
	andl	$15, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rdi
	callq	cmsGetTransformOutputFormat
	shrl	$3, %eax
	andl	$15, %eax
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gscms_get_link_dim, .Lfunc_end13-gscms_get_link_dim
	.cfi_endproc

	.globl	gscms_get_link
	.align	16, 0x90
	.type	gscms_get_link,@function
gscms_get_link:                         # @gscms_get_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -68(%rbp)
.LBB14_2:                               # %if.end
	movl	-52(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -60(%rbp)
	movl	-68(%rbp), %eax
	shll	$16, %eax
	movl	-60(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -56(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	cmsGetPCS
	movl	%eax, -56(%rbp)
.LBB14_5:                               # %if.end.9
	movl	-56(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jge	.LBB14_7
# BB#6:                                 # %if.then.12
	movl	$0, -72(%rbp)
.LBB14_7:                               # %if.end.13
	movl	-56(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -64(%rbp)
	movl	-72(%rbp), %eax
	shll	$16, %eax
	movl	-64(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -48(%rbp)
	movl	$1024, -76(%rbp)        # imm = 0x400
	movq	-24(%rbp), %rcx
	cmpl	$1, 4(%rcx)
	je	.LBB14_9
# BB#8:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB14_10
.LBB14_9:                               # %if.then.22
	movl	-76(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -76(%rbp)
.LBB14_10:                              # %if.end.24
	movq	-24(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB14_17
# BB#11:                                # %if.then.26
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB14_12
	jmp	.LBB14_25
.LBB14_25:                              # %if.then.26
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_13
	jmp	.LBB14_26
.LBB14_26:                              # %if.then.26
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB14_14
	jmp	.LBB14_15
.LBB14_12:                              # %sw.bb
	movq	-24(%rbp), %rax
	movl	$10, (%rax)
	jmp	.LBB14_16
.LBB14_13:                              # %sw.bb.28
	movq	-24(%rbp), %rax
	movl	$11, (%rax)
	jmp	.LBB14_16
.LBB14_14:                              # %sw.bb.30
	movq	-24(%rbp), %rax
	movl	$12, (%rax)
	jmp	.LBB14_16
.LBB14_15:                              # %sw.default
	jmp	.LBB14_16
.LBB14_16:                              # %sw.epilog
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.32
	movq	-24(%rbp), %rax
	cmpl	$2, 8(%rax)
	jne	.LBB14_24
# BB#18:                                # %if.then.35
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB14_19
	jmp	.LBB14_27
.LBB14_27:                              # %if.then.35
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB14_20
	jmp	.LBB14_28
.LBB14_28:                              # %if.then.35
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB14_21
	jmp	.LBB14_22
.LBB14_19:                              # %sw.bb.37
	movq	-24(%rbp), %rax
	movl	$13, (%rax)
	jmp	.LBB14_23
.LBB14_20:                              # %sw.bb.39
	movq	-24(%rbp), %rax
	movl	$14, (%rax)
	jmp	.LBB14_23
.LBB14_21:                              # %sw.bb.41
	movq	-24(%rbp), %rax
	movl	$15, (%rax)
	jmp	.LBB14_23
.LBB14_22:                              # %sw.default.43
	jmp	.LBB14_23
.LBB14_23:                              # %sw.epilog.44
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.45
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	(%rdi), %r9d
	movl	-76(%rbp), %r10d
	orl	-28(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	cmsCreateTransformTHR
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gscms_get_link, .Lfunc_end14-gscms_get_link
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4614838538166547251     # double 3.3999999999999999
	.text
	.globl	gscms_get_link_proof_devlink
	.align	16, 0x90
	.type	gscms_get_link_proof_devlink,@function
gscms_get_link_proof_devlink:           # @gscms_get_link_proof_devlink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -148(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB15_21
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	je	.LBB15_21
# BB#2:                                 # %land.lhs.true.2
	cmpl	$0, -52(%rbp)
	jne	.LBB15_21
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-56(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	gscms_get_link
	movq	%rax, -168(%rbp)
	movl	$1024, -152(%rbp)       # imm = 0x400
	movq	-48(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB15_5
# BB#4:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB15_6
.LBB15_5:                               # %if.then.6
	movl	-152(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -152(%rbp)
.LBB15_6:                               # %if.end
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movq	-168(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	cmsTransform2DeviceLink
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rdi
	callq	cmsDeleteTransform
	movq	-160(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB15_8
# BB#7:                                 # %if.then.11
	movl	$0, -92(%rbp)
.LBB15_8:                               # %if.end.12
	movl	-76(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -84(%rbp)
	movl	-92(%rbp), %eax
	shll	$16, %eax
	movl	-84(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_10
# BB#9:                                 # %if.then.18
	movq	-32(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -80(%rbp)
	jmp	.LBB15_11
.LBB15_10:                              # %if.else
	movq	-40(%rbp), %rdi
	callq	cmsGetPCS
	movl	%eax, -80(%rbp)
.LBB15_11:                              # %if.end.21
	movl	-80(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jge	.LBB15_13
# BB#12:                                # %if.then.24
	movl	$0, -96(%rbp)
.LBB15_13:                              # %if.end.25
	movl	-80(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	shll	$16, %eax
	movl	-88(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -72(%rbp)
	movq	-160(%rbp), %rcx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -148(%rbp)
	movslq	%eax, %rdx
	movq	%rcx, -144(%rbp,%rdx,8)
	movq	-24(%rbp), %rcx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -148(%rbp)
	movslq	%eax, %rdx
	movq	%rcx, -144(%rbp,%rdx,8)
	cmpq	$0, -32(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.35
	movq	-32(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
.LBB15_15:                              # %if.end.39
	cmpq	$0, -40(%rbp)
	je	.LBB15_17
# BB#16:                                # %if.then.41
	movq	-40(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
.LBB15_17:                              # %if.end.45
	movl	$1024, -152(%rbp)       # imm = 0x400
	movq	-48(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB15_19
# BB#18:                                # %lor.lhs.false.48
	movq	-48(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB15_20
.LBB15_19:                              # %if.then.51
	movl	-152(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -152(%rbp)
.LBB15_20:                              # %if.end.53
	movl	$1, %r9d
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	-148(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-152(%rbp), %edi
	movl	%edi, -172(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	cmsCreateMultiprofileTransformTHR
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	callq	cmsCloseProfile
	movq	-168(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB15_42
.LBB15_21:                              # %if.else.56
	movq	-16(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB15_23
# BB#22:                                # %if.then.60
	movl	$0, -92(%rbp)
.LBB15_23:                              # %if.end.61
	movl	-76(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -84(%rbp)
	movl	-92(%rbp), %eax
	shll	$16, %eax
	movl	-84(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -68(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_28
# BB#24:                                # %if.then.68
	cmpl	$0, -52(%rbp)
	je	.LBB15_26
# BB#25:                                # %if.then.70
	movq	-16(%rbp), %rdi
	callq	cmsGetPCS
	movl	%eax, -80(%rbp)
	jmp	.LBB15_27
.LBB15_26:                              # %if.else.72
	movq	-32(%rbp), %rdi
	callq	cmsGetColorSpace
	movl	%eax, -80(%rbp)
.LBB15_27:                              # %if.end.74
	jmp	.LBB15_29
.LBB15_28:                              # %if.else.75
	movq	-40(%rbp), %rdi
	callq	cmsGetPCS
	movl	%eax, -80(%rbp)
.LBB15_29:                              # %if.end.77
	movl	-80(%rbp), %edi
	callq	_cmsLCMScolorSpace
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jge	.LBB15_31
# BB#30:                                # %if.then.80
	movl	$0, -96(%rbp)
.LBB15_31:                              # %if.end.81
	movl	-80(%rbp), %edi
	callq	cmsChannelsOf
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	shll	$16, %eax
	movl	-88(%rbp), %edi
	shll	$3, %edi
	orl	%edi, %eax
	orl	$2, %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rcx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -148(%rbp)
	movslq	%eax, %rdx
	movq	%rcx, -144(%rbp,%rdx,8)
	cmpq	$0, -24(%rbp)
	je	.LBB15_34
# BB#32:                                # %land.lhs.true.91
	cmpl	$0, -52(%rbp)
	jne	.LBB15_34
# BB#33:                                # %if.then.93
	movq	-24(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
	movq	-24(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
.LBB15_34:                              # %if.end.100
	cmpq	$0, -32(%rbp)
	je	.LBB15_36
# BB#35:                                # %if.then.102
	movq	-32(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
.LBB15_36:                              # %if.end.106
	cmpq	$0, -40(%rbp)
	je	.LBB15_38
# BB#37:                                # %if.then.108
	movq	-40(%rbp), %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -148(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -144(%rbp,%rsi,8)
.LBB15_38:                              # %if.end.112
	movl	$1024, -152(%rbp)       # imm = 0x400
	movq	-48(%rbp), %rax
	cmpl	$1, 4(%rax)
	je	.LBB15_40
# BB#39:                                # %lor.lhs.false.115
	movq	-48(%rbp), %rax
	cmpl	$5, 4(%rax)
	jne	.LBB15_41
.LBB15_40:                              # %if.then.118
	movl	-152(%rbp), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, -152(%rbp)
.LBB15_41:                              # %if.end.120
	leaq	-144(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	-148(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movq	-48(%rbp), %rdi
	movl	(%rdi), %r9d
	movl	-152(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	cmsCreateMultiprofileTransformTHR
	movq	%rax, -8(%rbp)
.LBB15_42:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gscms_get_link_proof_devlink, .Lfunc_end15-gscms_get_link_proof_devlink
	.cfi_endproc

	.globl	gscms_create
	.align	16, 0x90
	.type	gscms_create,@function
gscms_create:                           # @gscms_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$gscms_error, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	cmsSetLogErrorHandler
	movabsq	$gs_cms_memhandler, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	cmsPluginTHR
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gscms_create, .Lfunc_end16-gscms_create
	.cfi_endproc

	.globl	gscms_destroy
	.align	16, 0x90
	.type	gscms_destroy,@function
gscms_destroy:                          # @gscms_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gscms_destroy, .Lfunc_end17-gscms_destroy
	.cfi_endproc

	.globl	gscms_release_link
	.align	16, 0x90
	.type	gscms_release_link,@function
gscms_release_link:                     # @gscms_release_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	cmsDeleteTransform
.LBB18_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gscms_release_link, .Lfunc_end18-gscms_release_link
	.cfi_endproc

	.globl	gscms_release_profile
	.align	16, 0x90
	.type	gscms_release_profile,@function
gscms_release_profile:                  # @gscms_release_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	cmsCloseProfile
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gscms_release_profile, .Lfunc_end19-gscms_release_profile
	.cfi_endproc

	.globl	gscms_transform_named_color
	.align	16, 0x90
	.type	gscms_transform_named_color,@function
gscms_transform_named_color:            # @gscms_transform_named_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	callq	cmsNamedColorIndex
	movl	%eax, -60(%rbp)
	cmpl	$0, %eax
	jge	.LBB20_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movl	$1, %ecx
	leaq	-60(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	callq	cmsDoTransform
	movl	$0, -4(%rbp)
.LBB20_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gscms_transform_named_color, .Lfunc_end20-gscms_transform_named_color
	.cfi_endproc

	.globl	gscms_get_name2device_link
	.align	16, 0x90
	.type	gscms_get_name2device_link,@function
gscms_get_name2device_link:             # @gscms_get_name2device_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$20480, -64(%rbp)       # imm = 0x5000
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movl	$0, -64(%rbp)
.LBB21_3:                               # %if.end
	movl	$10, %edx
	movl	$393249, %r8d           # imm = 0x60021
	xorl	%eax, %eax
	movl	$3, %ecx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	-32(%rbp), %r10
	movl	-64(%rbp), %r11d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r9
	movl	$0, (%rsp)
	movl	$3, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	cmsCreateProofingTransformTHR
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	cmsGetNamedColorList
	movq	%rax, %rdi
	callq	cmsNamedColorCount
	movl	$10, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	shll	$3, %eax
	movslq	%eax, %rcx
	orq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %edx
	callq	cmsChangeBuffersFormat
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rcx, (%rdi)
	movq	-16(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	cmsCloseProfile
	cmpq	$0, -24(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB21_5
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	cmsCloseProfile
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB21_5:                               # %if.end.8
	cmpq	$0, -32(%rbp)
	je	.LBB21_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	cmsCloseProfile
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB21_7:                               # %if.end.12
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gscms_get_name2device_link, .Lfunc_end21-gscms_get_name2device_link
	.cfi_endproc

	.align	16, 0x90
	.type	gs_lcms2_malloc,@function
gs_lcms2_malloc:                        # @gs_lcms2_malloc
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
	movabsq	$.L.str.3, %rdx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	64(%rdi), %rdi
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gs_lcms2_malloc, .Lfunc_end22-gs_lcms2_malloc
	.cfi_endproc

	.align	16, 0x90
	.type	gs_lcms2_free,@function
gs_lcms2_free:                          # @gs_lcms2_free
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB23_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gs_lcms2_free, .Lfunc_end23-gs_lcms2_free
	.cfi_endproc

	.align	16, 0x90
	.type	gs_lcms2_realloc,@function
gs_lcms2_realloc:                       # @gs_lcms2_realloc
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gs_lcms2_malloc
	movq	%rax, -8(%rbp)
	jmp	.LBB24_5
.LBB24_2:                               # %if.end
	cmpl	$0, -28(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gs_lcms2_free
	movq	$0, -8(%rbp)
	jmp	.LBB24_5
.LBB24_4:                               # %if.end.3
	movabsq	$.L.str.3, %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gs_lcms2_realloc, .Lfunc_end24-gs_lcms2_realloc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gscms_get_clrtname"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gscms_transform_color_buffer"
	.size	.L.str.2, 29

	.type	gs_cms_memhandler,@object # @gs_cms_memhandler
	.data
	.align	8
gs_cms_memhandler:
	.long	1633906800              # 0x61637070
	.long	2000                    # 0x7d0
	.long	1835363656              # 0x6d656d48
	.zero	4
	.quad	0
	.quad	gs_lcms2_malloc
	.quad	gs_lcms2_free
	.quad	gs_lcms2_realloc
	.quad	0
	.quad	0
	.quad	0
	.size	gs_cms_memhandler, 72

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"lcms"
	.size	.L.str.3, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
