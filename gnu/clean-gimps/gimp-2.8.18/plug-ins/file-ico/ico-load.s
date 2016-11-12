	.text
	.file	"ico-load.bc"
	.globl	ico_get_bit_from_data
	.align	16, 0x90
	.type	ico_get_bit_from_data,@function
ico_get_bit_from_data:                  # @ico_get_bit_from_data
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
	movl	$32, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$32, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movl	$32, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB0_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$7, %esi
	movl	$8, %edi
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	idivl	-12(%rbp)
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	shll	$2, %edx
	movl	-28(%rbp), %r8d
	movl	%r8d, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	idivl	%edi
	movl	-56(%rbp), %r8d         # 4-byte Reload
	addl	%eax, %r8d
	movslq	%r8d, %r9
	movq	-8(%rbp), %r10
	movzbl	(%r10,%r9), %eax
	movl	-28(%rbp), %r8d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%edi
	subl	%edx, %esi
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-60(%rbp), %esi         # 4-byte Reload
	andl	%edx, %esi
	movl	%esi, -32(%rbp)
	cmpl	$0, -32(%rbp)
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	cmovnel	%esi, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ico_get_bit_from_data, .Lfunc_end0-ico_get_bit_from_data
	.cfi_endproc

	.globl	ico_get_nibble_from_data
	.align	16, 0x90
	.type	ico_get_nibble_from_data,@function
ico_get_nibble_from_data:               # @ico_get_nibble_from_data
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
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB1_2
# BB#1:                                 # %cond.true
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movl	$8, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-48(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB1_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	$2, %ecx
	movl	$15, %edx
	movl	$1, %esi
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	idivl	-12(%rbp)
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	shll	$2, %edx
	movl	-28(%rbp), %edi
	movl	%edi, %eax
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-56(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movslq	%edi, %r8
	movq	-8(%rbp), %r9
	movzbl	(%r9,%r8), %eax
	movl	-28(%rbp), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	subl	%edx, %esi
	shll	$2, %esi
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-60(%rbp), %esi         # 4-byte Reload
	andl	%edx, %esi
	movl	%esi, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	cltd
	movl	-64(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	-32(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, -32(%rbp)
.LBB1_5:                                # %if.end
	movl	-32(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ico_get_nibble_from_data, .Lfunc_end1-ico_get_nibble_from_data
	.cfi_endproc

	.globl	ico_get_byte_from_data
	.align	16, 0x90
	.type	ico_get_byte_from_data,@function
ico_get_byte_from_data:                 # @ico_get_byte_from_data
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
	movl	$4, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB2_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	$4, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB2_3:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %edx
	imull	-24(%rbp), %edx
	shll	$2, %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rcx), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ico_get_byte_from_data, .Lfunc_end2-ico_get_byte_from_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ico_load_image
	.align	16, 0x90
	.type	ico_load_image,@function
ico_load_image:                         # @ico_load_image
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
	subq	$160, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.2, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_22
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	ico_read_init
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB3_22
.LBB3_4:                                # %if.end.15
	movq	-32(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	ico_read_info
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.18
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB3_22
.LBB3_6:                                # %if.end.20
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB3_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-44(%rbp), %ecx
	jbe	.LBB3_10
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB3_7 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB3_10:                               # %if.end.26
                                        #   in Loop: Header=BB3_7 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-48(%rbp), %ecx
	jbe	.LBB3_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB3_7 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB3_12:                               # %if.end.34
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_7
.LBB3_14:                               # %for.end
	cmpl	$0, -44(%rbp)
	jle	.LBB3_16
# BB#15:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jg	.LBB3_17
.LBB3_16:                               # %if.then.37
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB3_22
.LBB3_17:                               # %if.end.39
	xorl	%edx, %edx
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	callq	gimp_image_new
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	$1, %edx
	movl	%edx, %esi
	movl	-44(%rbp), %edx
	imull	-48(%rbp), %edx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-44(%rbp), %edx
	imull	-48(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movl	$0, -52(%rbp)
.LBB3_18:                               # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB3_21
# BB#19:                                # %for.body.49
                                        #   in Loop: Header=BB3_18 Depth=1
	movq	-32(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	-64(%rbp), %rcx
	movl	-72(%rbp), %r8d
	movq	-40(%rbp), %rax
	movslq	-52(%rbp), %r9
	imulq	$20, %r9, %r9
	addq	%r9, %rax
	movq	%rax, %r9
	callq	ico_load_layer
	movl	%eax, -140(%rbp)        # 4-byte Spill
# BB#20:                                # %for.inc.51
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_18
.LBB3_21:                               # %for.end.53
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	fclose
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_progress_update
	movl	-56(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB3_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ico_load_image, .Lfunc_end3-ico_load_image
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_init,@function
ico_read_init:                          # @ico_read_init
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
	movl	$1, %edx
	leaq	-24(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	ico_read_int16
	cmpl	$0, %eax
	je	.LBB4_5
# BB#1:                                 # %lor.lhs.false
	movl	$1, %edx
	leaq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$2, %rax
	movq	%rax, %rsi
	callq	ico_read_int16
	cmpl	$0, %eax
	je	.LBB4_5
# BB#2:                                 # %lor.lhs.false.3
	movl	$1, %edx
	leaq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$4, %rax
	movq	%rax, %rsi
	callq	ico_read_int16
	cmpl	$0, %eax
	je	.LBB4_5
# BB#3:                                 # %lor.lhs.false.6
	movzwl	-24(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#4:                                 # %lor.lhs.false.9
	movzwl	-22(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB4_6
.LBB4_5:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.end
	movzwl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ico_read_init, .Lfunc_end4-ico_read_init
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_info,@function
ico_read_info:                          # @ico_read_info
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movslq	-20(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$16, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	fread
	cmpq	$0, %rax
	ja	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movl	$20, %eax
	movl	%eax, %esi
	movslq	-20(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	6(%rax), %ecx
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 16(%rax)
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB5_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB5_7
.LBB5_6:                                # %if.then.44
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movslq	-24(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	ico_read_size
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB5_7:                                # %if.end.46
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_3
.LBB5_9:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ico_read_info, .Lfunc_end5-ico_read_info
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	ico_load_layer,@function
ico_load_layer:                         # @ico_load_layer
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
	subq	$4272, %rsp             # imm = 0x10B0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movslq	12(%rcx), %rsi
	movl	%eax, %edx
	callq	fseek
	cmpl	$0, %eax
	jl	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	ico_read_int32
	cmpl	$0, %eax
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB6_14
.LBB6_3:                                # %if.end
	cmpl	$1196314761, -64(%rbp)  # imm = 0x474E5089
	jne	.LBB6_7
# BB#4:                                 # %if.then.5
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	ico_read_png
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.8
	movl	$-1, -4(%rbp)
	jmp	.LBB6_14
.LBB6_6:                                # %if.end.9
	jmp	.LBB6_13
.LBB6_7:                                # %if.else
	cmpl	$40, -64(%rbp)
	jne	.LBB6_11
# BB#8:                                 # %if.then.12
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	ico_read_icon
	cmpl	$0, %eax
	jne	.LBB6_10
# BB#9:                                 # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB6_14
.LBB6_10:                               # %if.end.16
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.17
	movl	$-1, -4(%rbp)
	jmp	.LBB6_14
.LBB6_12:                               # %if.end.18
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.19
	movabsq	$.L.str.5, %rdi
	leaq	-4224(%rbp), %rax
	movq	%rax, -4232(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, %esi
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movq	-4232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	$1, %r8d
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	leaq	-4224(%rbp), %rsi
	movl	-20(%rbp), %edi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	%eax, -4236(%rbp)       # 4-byte Spill
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	%eax, -60(%rbp)
	movl	-20(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-24(%rbp), %ecx
	callq	gimp_image_insert_layer
	movl	-60(%rbp), %edi
	movl	%eax, -4240(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-72(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -4244(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-72(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-60(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$4272, %rsp             # imm = 0x10B0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ico_load_layer, .Lfunc_end6-ico_load_layer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ico_load_thumbnail_image
	.align	16, 0x90
	.type	ico_load_thumbnail_image,@function
ico_load_thumbnail_image:               # @ico_load_thumbnail_image
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
	subq	$176, %rsp
	movabsq	$.L.str.3, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.2, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	-128(%rbp), %edx        # 4-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_24
.LBB7_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	ico_read_init
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.13
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB7_24
.LBB7_4:                                # %if.end.15
	movq	-48(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	ico_read_info
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.18
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB7_24
.LBB7_6:                                # %if.end.20
	movl	$0, -80(%rbp)
.LBB7_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB7_20
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jbe	.LBB7_10
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jl	.LBB7_12
.LBB7_10:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-68(%rbp), %ecx
	jbe	.LBB7_13
# BB#11:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB7_13
.LBB7_12:                               # %if.then.30
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB7_18
.LBB7_13:                               # %if.else
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-64(%rbp), %eax
	movslq	-80(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB7_17
# BB#14:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-68(%rbp), %eax
	movslq	-80(%rbp), %rcx
	imulq	$20, %rcx, %rcx
	addq	-56(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB7_17
# BB#15:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-72(%rbp), %ecx
	jle	.LBB7_17
# BB#16:                                # %if.then.54
                                        #   in Loop: Header=BB7_7 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -76(%rbp)
.LBB7_17:                               # %if.end.58
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.59
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_7
.LBB7_20:                               # %for.end
	cmpl	$0, -64(%rbp)
	jle	.LBB7_22
# BB#21:                                # %lor.lhs.false.61
	cmpl	$0, -68(%rbp)
	jg	.LBB7_23
.LBB7_22:                               # %if.then.63
	movl	$-1, -4(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.end.64
	xorl	%edx, %edx
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %esi
	callq	gimp_image_new
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	imull	-68(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-76(%rbp), %edx
	movq	-96(%rbp), %rcx
	movl	-64(%rbp), %r8d
	imull	-68(%rbp), %r8d
	shll	$2, %r8d
	movq	-56(%rbp), %rax
	movslq	-76(%rbp), %r9
	imulq	$20, %r9, %r9
	addq	%r9, %rax
	movq	%rax, %r9
	callq	ico_load_layer
	movq	-96(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_free
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	callq	gimp_progress_update
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	-60(%rbp), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB7_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ico_load_thumbnail_image, .Lfunc_end7-ico_load_thumbnail_image
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_int16,@function
ico_read_int16:                         # @ico_read_int16
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB8_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	ico_read_int8
	movl	$0, -24(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movw	(%rcx,%rax,2), %dx
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movw	%dx, (%rcx,%rax,2)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_2
.LBB8_5:                                # %for.end
	jmp	.LBB8_6
.LBB8_6:                                # %if.end
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ico_read_int16, .Lfunc_end8-ico_read_int16
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_int8,@function
ico_read_int8:                          # @ico_read_int8
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -24(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB9_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	jmp	.LBB9_1
.LBB9_5:                                # %while.end
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ico_read_int8, .Lfunc_end9-ico_read_int8
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_size,@function
ico_read_size:                          # @ico_read_size
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
	subq	$112, %rsp
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	12(%rsi), %rsi
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_17
.LBB10_2:                               # %if.end
	leaq	-60(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	ico_read_int32
	cmpl	$1196314761, -60(%rbp)  # imm = 0x474E5089
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB10_10
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.4, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_create_read_struct
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_5
# BB#4:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB10_17
.LBB10_5:                               # %if.end.8
	movq	-32(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then.11
	leaq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
	movl	$0, -4(%rbp)
	jmp	.LBB10_17
.LBB10_7:                               # %if.end.12
	movabsq	$longjmp, %rsi
	movl	$200, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB10_9
# BB#8:                                 # %if.then.16
	leaq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
	movl	$0, -4(%rbp)
	jmp	.LBB10_17
.LBB10_9:                               # %if.end.17
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_init_io
	movl	$4, %esi
	movq	-32(%rbp), %rdi
	callq	png_set_sig_bytes
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	png_read_info
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	png_get_IHDR
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	png_destroy_read_struct
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB10_17
.LBB10_10:                              # %if.else
	cmpl	$40, -60(%rbp)
	jne	.LBB10_15
# BB#11:                                # %if.then.21
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	ico_read_int32
	cmpl	$0, %eax
	je	.LBB10_14
# BB#12:                                # %land.lhs.true
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	callq	ico_read_int32
	cmpl	$0, %eax
	je	.LBB10_14
# BB#13:                                # %if.then.28
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	shrl	$1, %ecx
	movl	%ecx, 4(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB10_17
.LBB10_14:                              # %if.else.30
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB10_17
.LBB10_15:                              # %if.end.33
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.34
	movl	$0, -4(%rbp)
.LBB10_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	ico_read_size, .Lfunc_end10-ico_read_size
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_int32,@function
ico_read_int32:                         # @ico_read_int32
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB11_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	ico_read_int8
	movl	$0, -24(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB11_2
.LBB11_5:                               # %for.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end
	movl	-28(%rbp), %eax
	shll	$2, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ico_read_int32, .Lfunc_end11-ico_read_int32
	.cfi_endproc

	.align	16, 0x90
	.type	ico_read_png,@function
ico_read_png:                           # @ico_read_png
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
	subq	$160, %rsp
	movabsq	$.L.str.4, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, %rdi
	movq	%r11, %rsi
	movq	%r11, %rdx
	movq	%r11, %rcx
	callq	png_create_read_struct
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_30
.LBB12_2:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	leaq	-64(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
	movl	$0, -4(%rbp)
	jmp	.LBB12_30
.LBB12_4:                               # %if.end.4
	movabsq	$longjmp, %rsi
	movl	$200, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.8
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	png_destroy_read_struct
	movl	$0, -4(%rbp)
	jmp	.LBB12_30
.LBB12_6:                               # %if.end.9
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_init_io
	movl	$4, %esi
	movq	-64(%rbp), %rdi
	callq	png_set_sig_bytes
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	png_read_info
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %r8
	leaq	-88(%rbp), %r9
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %r10
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	png_get_IHDR
	movl	-76(%rbp), %r11d
	imull	-80(%rbp), %r11d
	shll	$2, %r11d
	cmpl	-36(%rbp), %r11d
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jbe	.LBB12_8
# BB#7:                                 # %if.then.12
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	png_destroy_read_struct
	movl	$0, -4(%rbp)
	jmp	.LBB12_30
.LBB12_8:                               # %if.end.13
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$6, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	ja	.LBB12_25
# BB#31:                                # %if.end.13
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_9:                               # %sw.bb
	movq	-64(%rbp), %rdi
	callq	png_set_expand_gray_1_2_4_to_8
	cmpl	$16, -84(%rbp)
	jne	.LBB12_11
# BB#10:                                # %if.then.15
	movq	-64(%rbp), %rdi
	callq	png_set_strip_16
.LBB12_11:                              # %if.end.16
	movq	-64(%rbp), %rdi
	callq	png_set_gray_to_rgb
	movl	$255, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	callq	png_set_add_alpha
	jmp	.LBB12_25
.LBB12_12:                              # %sw.bb.17
	movq	-64(%rbp), %rdi
	callq	png_set_expand_gray_1_2_4_to_8
	cmpl	$16, -84(%rbp)
	jne	.LBB12_14
# BB#13:                                # %if.then.19
	movq	-64(%rbp), %rdi
	callq	png_set_strip_16
.LBB12_14:                              # %if.end.20
	movq	-64(%rbp), %rdi
	callq	png_set_gray_to_rgb
	jmp	.LBB12_25
.LBB12_15:                              # %sw.bb.21
	movq	-64(%rbp), %rdi
	callq	png_set_palette_to_rgb
	movl	$16, %edx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB12_17
# BB#16:                                # %if.then.24
	movq	-64(%rbp), %rdi
	callq	png_set_tRNS_to_alpha
	jmp	.LBB12_18
.LBB12_17:                              # %if.else
	movl	$255, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	callq	png_set_add_alpha
.LBB12_18:                              # %if.end.25
	jmp	.LBB12_25
.LBB12_19:                              # %sw.bb.26
	cmpl	$16, -84(%rbp)
	jne	.LBB12_21
# BB#20:                                # %if.then.28
	movq	-64(%rbp), %rdi
	callq	png_set_strip_16
.LBB12_21:                              # %if.end.29
	movl	$255, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi
	callq	png_set_add_alpha
	jmp	.LBB12_25
.LBB12_22:                              # %sw.bb.30
	cmpl	$16, -84(%rbp)
	jne	.LBB12_24
# BB#23:                                # %if.then.32
	movq	-64(%rbp), %rdi
	callq	png_set_strip_16
.LBB12_24:                              # %if.end.33
	jmp	.LBB12_25
.LBB12_25:                              # %sw.epilog
	movl	$8, %eax
	movl	%eax, %esi
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -100(%rbp)
.LBB12_26:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jae	.LBB12_29
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB12_26 Depth=1
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movslq	-100(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB12_26 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB12_26
.LBB12_29:                              # %for.end
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	png_read_image
	leaq	-64(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	png_destroy_read_struct
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB12_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ico_read_png, .Lfunc_end12-ico_read_png
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_9
	.quad	.LBB12_25
	.quad	.LBB12_19
	.quad	.LBB12_15
	.quad	.LBB12_12
	.quad	.LBB12_25
	.quad	.LBB12_22

	.text
	.align	16, 0x90
	.type	ico_read_icon,@function
ico_read_icon:                          # @ico_read_icon
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
	subq	$320, %rsp              # imm = 0x140
	movl	$1, %eax
	leaq	-96(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -144(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-16(%rbp), %rdi
	addq	$4, %r10
	movq	%r10, %rsi
	movl	%eax, %edx
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$8, %rsi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$12, %rsi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	ico_read_int16
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$14, %rsi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	ico_read_int16
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$16, %rsi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$20, %rsi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$24, %rsi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$28, %rsi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$32, %rsi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movl	$1, %edx
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$36, %rsi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	ico_read_int32
	movzwl	-84(%rbp), %ecx
	cmpl	$1, %ecx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jne	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -80(%rbp)
	je	.LBB13_3
.LBB13_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_70
.LBB13_3:                               # %if.end
	movzwl	-82(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB13_9
# BB#4:                                 # %land.lhs.true
	movzwl	-82(%rbp), %eax
	cmpl	$4, %eax
	je	.LBB13_9
# BB#5:                                 # %land.lhs.true.26
	movzwl	-82(%rbp), %eax
	cmpl	$8, %eax
	je	.LBB13_9
# BB#6:                                 # %land.lhs.true.31
	movzwl	-82(%rbp), %eax
	cmpl	$24, %eax
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true.36
	movzwl	-82(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB13_9
# BB#8:                                 # %if.then.41
	movl	$0, -4(%rbp)
	jmp	.LBB13_70
.LBB13_9:                               # %if.end.42
	movl	-92(%rbp), %eax
	imull	-88(%rbp), %eax
	shll	$1, %eax
	cmpl	-36(%rbp), %eax
	jbe	.LBB13_11
# BB#10:                                # %if.then.48
	movl	$0, -4(%rbp)
	jmp	.LBB13_70
.LBB13_11:                              # %if.end.49
	movl	-92(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-88(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -116(%rbp)
	movzwl	-82(%rbp), %eax
	cmpl	$8, %eax
	jg	.LBB13_15
# BB#12:                                # %if.then.56
	cmpl	$0, -64(%rbp)
	jne	.LBB13_14
# BB#13:                                # %if.then.60
	movl	$1, %eax
	movzwl	-82(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -64(%rbp)
.LBB13_14:                              # %if.end.64
	movl	$4, %eax
	movl	%eax, %esi
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc0_n
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rdi
	movq	-144(%rbp), %rax
	movl	-64(%rbp), %ecx
	shll	$2, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	ico_read_int8
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB13_15:                              # %if.end.71
	movl	-112(%rbp), %edi
	movl	-116(%rbp), %esi
	movzwl	-82(%rbp), %edx
	leaq	-100(%rbp), %rax
	movq	%rax, %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	ico_alloc_map
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %edx
	movq	%rax, %rsi
	callq	ico_read_int8
	movl	-112(%rbp), %edi
	movl	-116(%rbp), %esi
	movl	$1, %edx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	ico_alloc_map
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rdi
	movl	-100(%rbp), %edx
	movq	%rax, %rsi
	callq	ico_read_int8
	movq	-32(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movzwl	-82(%rbp), %edx
	movl	%edx, %r8d
	subl	$1, %r8d
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%r8d, -296(%rbp)        # 4-byte Spill
	je	.LBB13_16
	jmp	.LBB13_71
.LBB13_71:                              # %if.end.71
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB13_28
	jmp	.LBB13_72
.LBB13_72:                              # %if.end.71
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB13_40
	jmp	.LBB13_52
.LBB13_16:                              # %sw.bb
	movl	$0, -108(%rbp)
.LBB13_17:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_19 Depth 2
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB13_27
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$0, -104(%rbp)
.LBB13_19:                              # %for.cond.82
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB13_25
# BB#20:                                # %for.body.85
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-128(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	movslq	%eax, %rdi
	movq	-144(%rbp), %rcx
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, -168(%rbp)
	movq	-152(%rbp), %rcx
	movl	-116(%rbp), %eax
	subl	$1, %eax
	subl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movslq	-104(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -176(%rbp)
	movb	-166(%rbp), %r8b
	movq	-176(%rbp), %rcx
	movb	%r8b, (%rcx)
	movb	-167(%rbp), %r8b
	movq	-176(%rbp), %rcx
	movb	%r8b, 1(%rcx)
	movb	-168(%rbp), %r8b
	movq	-176(%rbp), %rcx
	movb	%r8b, 2(%rcx)
	movq	-136(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB13_22
# BB#21:                                # %if.then.101
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-176(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB13_23
.LBB13_22:                              # %if.else
                                        #   in Loop: Header=BB13_19 Depth=2
	movq	-176(%rbp), %rax
	movb	$-1, 3(%rax)
.LBB13_23:                              # %if.end.104
                                        #   in Loop: Header=BB13_19 Depth=2
	jmp	.LBB13_24
.LBB13_24:                              # %for.inc
                                        #   in Loop: Header=BB13_19 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB13_19
.LBB13_25:                              # %for.end
                                        #   in Loop: Header=BB13_17 Depth=1
	jmp	.LBB13_26
.LBB13_26:                              # %for.inc.105
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_17
.LBB13_27:                              # %for.end.107
	jmp	.LBB13_67
.LBB13_28:                              # %sw.bb.108
	movl	$0, -108(%rbp)
.LBB13_29:                              # %for.cond.109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_31 Depth 2
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB13_39
# BB#30:                                # %for.body.112
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	$0, -104(%rbp)
.LBB13_31:                              # %for.cond.113
                                        #   Parent Loop BB13_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB13_37
# BB#32:                                # %for.body.116
                                        #   in Loop: Header=BB13_31 Depth=2
	movq	-128(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_nibble_from_data
	movslq	%eax, %rdi
	movq	-144(%rbp), %rcx
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, -180(%rbp)
	movq	-152(%rbp), %rcx
	movl	-116(%rbp), %eax
	subl	$1, %eax
	subl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movslq	-104(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -192(%rbp)
	movb	-178(%rbp), %r8b
	movq	-192(%rbp), %rcx
	movb	%r8b, (%rcx)
	movb	-179(%rbp), %r8b
	movq	-192(%rbp), %rcx
	movb	%r8b, 1(%rcx)
	movb	-180(%rbp), %r8b
	movq	-192(%rbp), %rcx
	movb	%r8b, 2(%rcx)
	movq	-136(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB13_34
# BB#33:                                # %if.then.141
                                        #   in Loop: Header=BB13_31 Depth=2
	movq	-192(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB13_35
.LBB13_34:                              # %if.else.143
                                        #   in Loop: Header=BB13_31 Depth=2
	movq	-192(%rbp), %rax
	movb	$-1, 3(%rax)
.LBB13_35:                              # %if.end.145
                                        #   in Loop: Header=BB13_31 Depth=2
	jmp	.LBB13_36
.LBB13_36:                              # %for.inc.146
                                        #   in Loop: Header=BB13_31 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB13_31
.LBB13_37:                              # %for.end.148
                                        #   in Loop: Header=BB13_29 Depth=1
	jmp	.LBB13_38
.LBB13_38:                              # %for.inc.149
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_29
.LBB13_39:                              # %for.end.151
	jmp	.LBB13_67
.LBB13_40:                              # %sw.bb.152
	movl	$0, -108(%rbp)
.LBB13_41:                              # %for.cond.153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_43 Depth 2
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB13_51
# BB#42:                                # %for.body.156
                                        #   in Loop: Header=BB13_41 Depth=1
	movl	$0, -104(%rbp)
.LBB13_43:                              # %for.cond.157
                                        #   Parent Loop BB13_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB13_49
# BB#44:                                # %for.body.160
                                        #   in Loop: Header=BB13_43 Depth=2
	movq	-128(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_byte_from_data
	movslq	%eax, %rdi
	movq	-144(%rbp), %rcx
	movl	(%rcx,%rdi,4), %eax
	movl	%eax, -196(%rbp)
	movq	-152(%rbp), %rcx
	movl	-116(%rbp), %eax
	subl	$1, %eax
	subl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movslq	-104(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -208(%rbp)
	movb	-194(%rbp), %r8b
	movq	-208(%rbp), %rcx
	movb	%r8b, (%rcx)
	movb	-195(%rbp), %r8b
	movq	-208(%rbp), %rcx
	movb	%r8b, 1(%rcx)
	movb	-196(%rbp), %r8b
	movq	-208(%rbp), %rcx
	movb	%r8b, 2(%rcx)
	movq	-136(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB13_46
# BB#45:                                # %if.then.185
                                        #   in Loop: Header=BB13_43 Depth=2
	movq	-208(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB13_47
.LBB13_46:                              # %if.else.187
                                        #   in Loop: Header=BB13_43 Depth=2
	movq	-208(%rbp), %rax
	movb	$-1, 3(%rax)
.LBB13_47:                              # %if.end.189
                                        #   in Loop: Header=BB13_43 Depth=2
	jmp	.LBB13_48
.LBB13_48:                              # %for.inc.190
                                        #   in Loop: Header=BB13_43 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB13_43
.LBB13_49:                              # %for.end.192
                                        #   in Loop: Header=BB13_41 Depth=1
	jmp	.LBB13_50
.LBB13_50:                              # %for.inc.193
                                        #   in Loop: Header=BB13_41 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_41
.LBB13_51:                              # %for.end.195
	jmp	.LBB13_67
.LBB13_52:                              # %sw.default
	movl	$8, %eax
	movzwl	-82(%rbp), %ecx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-308(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -212(%rbp)
	movl	-112(%rbp), %edi
	movzwl	-82(%rbp), %esi
	callq	ico_rowstride
	movl	%eax, -164(%rbp)
	movl	$0, -108(%rbp)
.LBB13_53:                              # %for.cond.202
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_55 Depth 2
	movl	-108(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB13_66
# BB#54:                                # %for.body.205
                                        #   in Loop: Header=BB13_53 Depth=1
	movq	-128(%rbp), %rax
	movl	-164(%rbp), %ecx
	imull	-108(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movl	$0, -104(%rbp)
.LBB13_55:                              # %for.cond.209
                                        #   Parent Loop BB13_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB13_64
# BB#56:                                # %for.body.212
                                        #   in Loop: Header=BB13_55 Depth=2
	movq	-152(%rbp), %rax
	movl	-116(%rbp), %ecx
	subl	$1, %ecx
	subl	-108(%rbp), %ecx
	imull	-112(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movslq	-104(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-160(%rbp), %rax
	movb	(%rax), %sil
	movq	-224(%rbp), %rax
	movb	%sil, 2(%rax)
	movq	-160(%rbp), %rax
	movb	1(%rax), %sil
	movq	-224(%rbp), %rax
	movb	%sil, 1(%rax)
	movq	-160(%rbp), %rax
	movb	2(%rax), %sil
	movq	-224(%rbp), %rax
	movb	%sil, (%rax)
	movzwl	-82(%rbp), %ecx
	cmpl	$32, %ecx
	jge	.LBB13_61
# BB#57:                                # %if.then.231
                                        #   in Loop: Header=BB13_55 Depth=2
	movq	-136(%rbp), %rdi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %eax
	imull	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, %edx
	callq	ico_get_bit_from_data
	cmpl	$0, %eax
	je	.LBB13_59
# BB#58:                                # %if.then.236
                                        #   in Loop: Header=BB13_55 Depth=2
	movq	-224(%rbp), %rax
	movb	$0, 3(%rax)
	jmp	.LBB13_60
.LBB13_59:                              # %if.else.238
                                        #   in Loop: Header=BB13_55 Depth=2
	movq	-224(%rbp), %rax
	movb	$-1, 3(%rax)
.LBB13_60:                              # %if.end.240
                                        #   in Loop: Header=BB13_55 Depth=2
	jmp	.LBB13_62
.LBB13_61:                              # %if.else.241
                                        #   in Loop: Header=BB13_55 Depth=2
	movq	-160(%rbp), %rax
	movb	3(%rax), %cl
	movq	-224(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB13_62:                              # %if.end.244
                                        #   in Loop: Header=BB13_55 Depth=2
	movl	-212(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
# BB#63:                                # %for.inc.247
                                        #   in Loop: Header=BB13_55 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB13_55
.LBB13_64:                              # %for.end.249
                                        #   in Loop: Header=BB13_53 Depth=1
	jmp	.LBB13_65
.LBB13_65:                              # %for.inc.250
                                        #   in Loop: Header=BB13_53 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB13_53
.LBB13_66:                              # %for.end.252
	jmp	.LBB13_67
.LBB13_67:                              # %sw.epilog
	cmpq	$0, -144(%rbp)
	je	.LBB13_69
# BB#68:                                # %if.then.254
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB13_69:                              # %if.end.255
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movl	-112(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-116(%rbp), %eax
	movq	-56(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	$1, -4(%rbp)
.LBB13_70:                              # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ico_read_icon, .Lfunc_end13-ico_read_icon
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Opening '%s'"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Opening thumbnail for '%s'"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.5.13"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Icon #%i"
	.size	.L.str.5, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
