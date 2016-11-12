	.text
	.file	"gsicc_manage.bc"
	.globl	gsicc_getprofilesize
	.align	16, 0x90
	.type	gsicc_getprofilesize,@function
gsicc_getprofilesize:                   # @gsicc_getprofilesize
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$24, %eax
	movzbl	1(%rdi), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	2(%rdi), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	3(%rdi), %eax
	orl	%edx, %eax
	retq
.Lfunc_end0:
	.size	gsicc_getprofilesize, .Lfunc_end0-gsicc_getprofilesize
	.cfi_endproc

	.globl	gscms_set_icc_range
	.align	16, 0x90
	.type	gscms_set_icc_range,@function
gscms_set_icc_range:                    # @gscms_set_icc_range
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movzbl	(%rcx), %eax
	testl	%eax, %eax
	je	.LBB1_7
# BB#1:                                 # %for.body.lr.ph
	leal	-1(%rax), %r8d
	xorl	%esi, %esi
	testb	$3, %al
	je	.LBB1_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB1_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 20(%rcx,%rsi,8)
	incq	%rsi
	cmpl	%esi, %edi
	jne	.LBB1_3
.LBB1_4:                                # %for.body.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB1_7
# BB#5:                                 # %for.body.lr.ph.split.split
	subl	%esi, %eax
	leaq	48(%rcx,%rsi,8), %rcx
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -28(%rcx)
	movl	$1065353216, -24(%rcx)  # imm = 0x3F800000
	movl	$0, -20(%rcx)
	movl	$1065353216, -16(%rcx)  # imm = 0x3F800000
	movl	$0, -12(%rcx)
	movl	$1065353216, -8(%rcx)   # imm = 0x3F800000
	movq	%rdx, -4(%rcx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB1_6
.LBB1_7:                                # %for.end
	retq
.Lfunc_end1:
	.size	gscms_set_icc_range, .Lfunc_end1-gscms_set_icc_range
	.cfi_endproc

	.globl	gsicc_set_iccsmaskprofile
	.align	16, 0x90
	.type	gsicc_set_iccsmaskprofile,@function
gsicc_set_iccsmaskprofile:              # @gsicc_set_iccsmaskprofile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB2_1
# BB#2:                                 # %if.else
	movq	192(%r14), %rax
	movq	184(%rax), %rcx
	movl	192(%rax), %r8d
	leaq	(%rsp), %r9
	jmp	.LBB2_3
.LBB2_1:                                # %if.then
	leaq	(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
.LBB2_3:                                # %if.end
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	gsicc_open_search
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB2_17
# BB#4:                                 # %if.end
	movq	(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB2_17
# BB#5:                                 # %if.end.6
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	gsicc_profile_new
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	sfclose
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB2_17
# BB#6:                                 # %if.end.11
	movq	256(%rbx), %rcx
	movl	220(%rbx), %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB2_9
# BB#7:                                 # %if.end.11
	cmpl	$128, %edx
	jl	.LBB2_9
# BB#8:                                 # %if.end.i
	movq	200(%r14), %rdi
	movq	%rcx, %rsi
	callq	gscms_get_profile_handle_mem
	movq	256(%rbx), %rcx
	movl	220(%rbx), %edx
.LBB2_9:                                # %gsicc_get_profile_handle_buffer.exit
	movq	%rax, 280(%rbx)
	leaq	144(%rbx), %rsi
	movq	%rcx, %rdi
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_input_channel_count
	movb	%al, (%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_output_channel_count
	movb	%al, 1(%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_profile_data_space
	movl	%eax, 16(%rbx)
	movzbl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB2_16
# BB#10:                                # %for.body.lr.ph.i
	leal	-1(%rax), %ecx
	xorl	%edx, %edx
	testb	$3, %al
	je	.LBB2_13
# BB#11:                                # %for.body.i.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	movabsq	$4575657221408423936, %rdi # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB2_12:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 20(%rbx,%rdx,8)
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB2_12
.LBB2_13:                               # %for.body.lr.ph.i.split
	cmpl	$3, %ecx
	jb	.LBB2_16
# BB#14:                                # %for.body.lr.ph.i.split.split
	subl	%edx, %eax
	leaq	48(%rbx,%rdx,8), %rcx
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB2_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -28(%rcx)
	movl	$1065353216, -24(%rcx)  # imm = 0x3F800000
	movl	$0, -20(%rcx)
	movl	$1065353216, -16(%rcx)  # imm = 0x3F800000
	movl	$0, -12(%rcx)
	movl	$1065353216, -8(%rcx)   # imm = 0x3F800000
	movq	%rdx, -4(%rcx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB2_15
.LBB2_16:
	movq	%rbx, %rax
.LBB2_17:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gsicc_set_iccsmaskprofile, .Lfunc_end2-gsicc_set_iccsmaskprofile
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_open_search,@function
gsicc_open_search:                      # @gsicc_open_search
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%r8d, %r15d
	movq	%rcx, %r13
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbx
	testq	%r13, %r13
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leal	1(%r15,%r12), %esi
	movl	$.L.str.80, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB3_11
# BB#2:                                 # %if.end
	addl	%r12d, %r15d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	strcpy
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movslq	%r15d, %rax
	movb	$0, (%rbp,%rax)
	movl	$.L.str.81, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	sfopen
	movq	%rax, %r15
	movl	$.L.str.80, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
	testq	%r15, %r15
	movq	16(%rsp), %rbp          # 8-byte Reload
	je	.LBB3_4
# BB#3:                                 # %if.then.10
	movq	%r15, (%rbp)
	jmp	.LBB3_10
.LBB3_4:                                # %if.end.12
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	sfopen
	testq	%rax, %rax
	je	.LBB3_6
# BB#5:                                 # %if.then.15
	movq	%rax, (%rbp)
	jmp	.LBB3_10
.LBB3_6:                                # %if.end.16
	movq	%rbx, %r15
	movq	64(%r14), %rbx
	movl	$.L.str.60, %edi
	callq	strlen
	leal	1(%r12,%rax), %esi
	movl	$.L.str.80, %edx
	movq	%r14, %rdi
	callq	*%rbx
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB3_11
# BB#7:                                 # %if.end.27
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	strcpy
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	strcat
	movslq	%r12d, %rbx
	movl	$.L.str.60, %edi
	callq	strlen
	addq	%rbx, %rax
	movb	$0, (%r13,%rax)
	movl	$.L.str.81, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	sfopen
	movq	%rax, %rbx
	movl	$.L.str.80, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
	testq	%rbx, %rbx
	jne	.LBB3_9
# BB#8:                                 # %if.then.39
	movq	%r15, (%rsp)
	movl	$.L.str.80, %edi
	movl	$.L.str.1, %esi
	movl	$1050, %edx             # imm = 0x41A
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.82, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB3_9:                                # %if.end.41
	movq	%rbx, (%rbp)
.LBB3_10:                               # %cleanup
	xorl	%eax, %eax
.LBB3_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gsicc_open_search, .Lfunc_end3-gsicc_open_search
	.cfi_endproc

	.globl	gsicc_profile_new
	.align	16, 0x90
	.type	gsicc_profile_new,@function
gsicc_profile_new:                      # @gsicc_profile_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 64
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movq	%rdi, %r15
	movq	200(%rsi), %r14
	movl	$344, %esi              # imm = 0x158
	movl	$.L.str.46, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB4_20
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rdi
	callq	memset
	testl	%r13d, %r13d
	jle	.LBB4_5
# BB#2:                                 # %if.then.3
	movq	%r15, (%rsp)            # 8-byte Spill
	leal	1(%r13), %esi
	movl	$.L.str.46, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	testq	%rax, %rax
	je	.LBB4_3
# BB#4:                                 # %if.end.10
	movq	%rax, %r12
	movslq	%r13d, %r15
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%r12,%r15)
	movq	%r12, 320(%rbx)
	movq	(%rsp), %r15            # 8-byte Reload
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movq	$0, 320(%rbx)
	xorl	%r12d, %r12d
.LBB4_6:                                # %if.end.13
	movl	%r13d, 312(%rbx)
	testq	%r15, %r15
	je	.LBB4_16
# BB#7:                                 # %if.then.16
	movq	%r15, %rdi
	callq	srewind
	testl	%eax, %eax
	js	.LBB4_18
# BB#8:                                 # %if.end.i
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	sfseek
	testl	%eax, %eax
	js	.LBB4_18
# BB#9:                                 # %if.end.4.i
	movq	%r15, %rdi
	callq	sftell
	movq	%rax, %rbp
	movq	%r15, %rdi
	callq	srewind
	testl	%eax, %eax
	js	.LBB4_18
# BB#10:                                # %if.end.4.i
	cmpl	$128, %ebp
	jl	.LBB4_18
# BB#11:                                # %if.end.14.i
	movl	$.L.str.93, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*64(%r14)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB4_15
# BB#12:                                # %if.end.20.i
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r15, %rcx
	callq	sfread
	cmpl	%ebp, %eax
	jne	.LBB4_13
# BB#14:                                # %gsicc_load_profile_buffer.exit.thread54
	movq	%r13, 256(%rbx)
	movl	%ebp, 220(%rbx)
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.26
	movq	$0, 256(%rbx)
	movl	$0, 220(%rbx)
.LBB4_17:                               # %do.body
	movq	$1, 288(%rbx)
	movq	%r14, 296(%rbx)
	movq	$rc_free_icc_profile, 304(%rbx)
	movq	$0, 280(%rbx)
	movq	$0, 272(%rbx)
	movl	$0, 224(%rbx)
	movl	$0, 8(%rbx)
	movq	$0, 264(%rbx)
	movq	%r14, 328(%rbx)
	movq	%r14, %rdi
	callq	gx_monitor_alloc
	movq	%rax, 336(%rbx)
	testq	%rax, %rax
	jne	.LBB4_20
	jmp	.LBB4_18
.LBB4_3:                                # %if.then.8
	movl	$.L.str.46, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB4_19
.LBB4_15:                               # %gsicc_load_profile_buffer.exit
	movl	$.L__func__.gsicc_load_profile_buffer, %edi
	movl	$.L.str.1, %esi
	movl	$1950, %edx             # imm = 0x79E
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.94, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	testl	%eax, %eax
	jns	.LBB4_17
	jmp	.LBB4_18
.LBB4_13:                               # %if.then.25.i
	movl	$.L.str.93, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
.LBB4_18:                               # %if.then.39
	movl	$.L.str.46, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	movl	$.L.str.46, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
.LBB4_19:                               # %cleanup
	callq	*24(%r14)
	xorl	%ebx, %ebx
.LBB4_20:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gsicc_profile_new, .Lfunc_end4-gsicc_profile_new
	.cfi_endproc

	.globl	gsicc_get_profile_handle_buffer
	.align	16, 0x90
	.type	gsicc_get_profile_handle_buffer,@function
gsicc_get_profile_handle_buffer:        # @gsicc_get_profile_handle_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB5_2
# BB#1:                                 # %entry
	cmpl	$128, %eax
	jl	.LBB5_2
# BB#3:                                 # %if.end
	movq	200(%rdx), %rdi
	movq	%rcx, %rsi
	movl	%eax, %edx
	jmp	gscms_get_profile_handle_mem # TAILCALL
.LBB5_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gsicc_get_profile_handle_buffer, .Lfunc_end5-gsicc_get_profile_handle_buffer
	.cfi_endproc

	.globl	gsicc_new_iccsmask
	.align	16, 0x90
	.type	gsicc_new_iccsmask,@function
gsicc_new_iccsmask:                     # @gsicc_new_iccsmask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$40, %esi
	movl	$.L.str, %edx
	callq	*64(%rbx)
	testq	%rax, %rax
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%rbx, 24(%rax)
	movl	$0, 32(%rax)
.LBB6_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gsicc_new_iccsmask, .Lfunc_end6-gsicc_new_iccsmask
	.cfi_endproc

	.globl	gsicc_initialize_iccsmask
	.align	16, 0x90
	.type	gsicc_initialize_iccsmask,@function
gsicc_initialize_iccsmask:              # @gsicc_initialize_iccsmask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 32
.Ltmp40:
	.cfi_offset %rbx, -24
.Ltmp41:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	80(%rbx), %rax
	movq	(%rax), %r14
	movl	$40, %esi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	testq	%rax, %rax
	je	.LBB7_9
# BB#1:                                 # %gsicc_new_iccsmask.exit.thread
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%r14, 24(%rax)
	movl	$0, 32(%rax)
	movq	%rax, 56(%rbx)
	movl	$.L.str.3, %edi
	callq	strlen
	movl	$.L.str.3, %edi
	movl	%eax, %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	gsicc_set_iccsmaskprofile
	movq	56(%rbx), %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB7_2
# BB#4:                                 # %if.end.10
	movl	$.L.str.5, %edi
	callq	strlen
	movl	$.L.str.5, %edi
	movl	%eax, %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	gsicc_set_iccsmaskprofile
	movq	56(%rbx), %rcx
	movq	%rax, 8(%rcx)
	testq	%rax, %rax
	je	.LBB7_5
# BB#6:                                 # %if.end.19
	movl	$.L.str.7, %edi
	callq	strlen
	movl	$.L.str.7, %edi
	movl	%eax, %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	gsicc_set_iccsmaskprofile
	movq	56(%rbx), %rcx
	movq	%rax, 16(%rcx)
	testq	%rax, %rax
	je	.LBB7_7
# BB#8:                                 # %cleanup
	movq	(%rcx), %rdx
	movl	$1, 12(%rdx)
	movq	8(%rcx), %rcx
	movl	$2, 12(%rcx)
	movl	$3, 12(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB7_9:                                # %gsicc_new_iccsmask.exit
	movq	$0, 56(%rbx)
	movl	$.L__func__.gsicc_initialize_iccsmask, %edi
	movl	$.L.str.1, %esi
	movl	$199, %edx
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.2, %r9d
	jmp	.LBB7_3
.LBB7_2:                                # %if.then.8
	movl	$.L__func__.gsicc_initialize_iccsmask, %edi
	movl	$.L.str.1, %esi
	movl	$204, %edx
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.4, %r9d
	jmp	.LBB7_3
.LBB7_5:                                # %if.then.17
	movl	$.L__func__.gsicc_initialize_iccsmask, %edi
	movl	$.L.str.1, %esi
	movl	$209, %edx
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.6, %r9d
	jmp	.LBB7_3
.LBB7_7:                                # %if.then.26
	movl	$.L__func__.gsicc_initialize_iccsmask, %edi
	movl	$.L.str.1, %esi
	movl	$214, %edx
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.8, %r9d
.LBB7_3:                                # %if.then.8
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end7:
	.size	gsicc_initialize_iccsmask, .Lfunc_end7-gsicc_initialize_iccsmask
	.cfi_endproc

	.globl	gsicc_finddevicen
	.align	16, 0x90
	.type	gsicc_finddevicen,@function
gsicc_finddevicen:                      # @gsicc_finddevicen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 144
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	72(%rdi), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	48(%rsi), %rbx
	movq	%rbx, (%rsp)            # 8-byte Spill
	callq	gs_color_space_num_components
	movl	%eax, %ebp
	movl	16(%rbx), %ecx
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	movl	$0, %eax
	jle	.LBB8_14
# BB#1:                                 # %for.body.lr.ph
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	%ebp, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
.LBB8_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #       Child Loop BB8_6 Depth 3
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	xorl	%r14d, %r14d
	cmpl	%ebp, %eax
	movl	$0, %ebx
	jne	.LBB8_13
	.align	16, 0x90
.LBB8_3:                                # %for.cond.6
                                        #   Parent Loop BB8_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_6 Depth 3
	cmpq	64(%rsp), %r14          # 8-byte Folded Reload
	jge	.LBB8_11
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB8_3 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	80(%rax), %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%r14,8), %rsi
	leaq	80(%rsp), %rdx
	leaq	76(%rsp), %rcx
	movq	48(%rsp), %rax          # 8-byte Reload
	callq	*112(%rax)
	testl	%ebp, %ebp
	jle	.LBB8_10
# BB#5:                                 # %for.body.18.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	272(%rax), %r13
	addq	$8, %r13
	movq	80(%rsp), %rbx
	movl	76(%rsp), %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_6:                                # %for.body.18
                                        #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13), %r13
	movq	(%r13), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_7
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB8_6 Depth=3
	addq	$16, %r13
	incl	%r12d
	cmpl	%ebp, %r12d
	jl	.LBB8_6
# BB#9:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	72(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_7:                                # %if.then.23
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	72(%rsp), %ebx          # 4-byte Reload
	incl	%ebx
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%r12d, 156(%rax,%r14,4)
	cmpl	%r12d, %r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	$1, %ecx
	cmovnel	%ecx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB8_10:                               # %for.end
                                        #   in Loop: Header=BB8_3 Depth=2
	incq	%r14
	movslq	%ebx, %rax
	cmpq	%r14, %rax
	movl	$0, %eax
	jge	.LBB8_3
	jmp	.LBB8_14
	.align	16, 0x90
.LBB8_11:                               # %for.end.38
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	%ebp, %ebx
	je	.LBB8_15
# BB#12:                                # %for.end.38.for.inc.46_crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	movl	16(%rax), %ecx
.LBB8_13:                               # %for.inc.46
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	cmpl	%ecx, %eax
	movl	$0, %eax
	jl	.LBB8_2
	jmp	.LBB8_14
.LBB8_15:                               # %if.then.41
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 216(%rax)
.LBB8_14:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gsicc_finddevicen, .Lfunc_end8-gsicc_finddevicen
	.cfi_endproc

	.globl	gsicc_get_default_type
	.align	16, 0x90
	.type	gsicc_get_default_type,@function
gsicc_get_default_type:                 # @gsicc_get_default_type
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	decl	%eax
	cmpl	$15, %eax
	ja	.LBB9_2
# BB#1:                                 # %switch.lookup
	cltq
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB9_2:                                # %return
	movl	$12, %eax
	retq
.Lfunc_end9:
	.size	gsicc_get_default_type, .Lfunc_end9-gsicc_get_default_type
	.cfi_endproc

	.globl	gsicc_profile_from_ps
	.align	16, 0x90
	.type	gsicc_profile_from_ps,@function
gsicc_profile_from_ps:                  # @gsicc_profile_from_ps
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	addl	$-13, %eax
	cmpl	$4, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	retq
.Lfunc_end10:
	.size	gsicc_profile_from_ps, .Lfunc_end10-gsicc_profile_from_ps
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	gsicc_set_srcgtag_struct
	.align	16, 0x90
	.type	gsicc_set_srcgtag_struct,@function
gsicc_set_srcgtag_struct:               # @gsicc_set_srcgtag_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 160
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB11_60
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 72(%r13)
	jne	.LBB11_60
# BB#2:                                 # %if.else
	movq	80(%r13), %rax
	movq	200(%rax), %rbx
	movq	192(%rbx), %rax
	movq	184(%rax), %rcx
	movl	192(%rax), %r8d
	leaq	80(%rsp), %r9
	movq	%rbp, %rdi
	movl	%edx, %esi
	movq	%rbx, %rdx
	callq	gsicc_open_search
	testl	%eax, %eax
	js	.LBB11_60
# BB#3:                                 # %if.end.5
	movq	80(%rsp), %r14
	testq	%r14, %r14
	je	.LBB11_56
# BB#4:                                 # %if.then.7
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	sfseek
	movq	%r14, %rdi
	callq	sftell
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	srewind
	cmpl	$32769, %r15d           # imm = 0x8001
	jl	.LBB11_9
# BB#5:                                 # %if.then.13
	movq	%rbp, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$547, %edx              # imm = 0x223
	jmp	.LBB11_6
.LBB11_56:                              # %if.else.291
	movq	%rbp, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$697, %edx              # imm = 0x2B9
	jmp	.LBB11_6
.LBB11_9:                               # %if.end.15
	leal	1(%r15), %esi
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	testq	%rax, %rax
	je	.LBB11_10
# BB#11:                                # %if.end.21
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movslq	%r15d, %r12
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%rax, %rbx
	callq	sfread
	movl	%eax, %ebp
	movq	%r14, %rdi
	callq	sfclose
	movb	$0, (%rbx,%r12)
	cmpl	%r15d, %ebp
	jne	.LBB11_12
# BB#13:                                # %if.end.30
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	200(%r12), %rdi
	movl	$248, %esi
	movl	$.L.str.83, %edx
	callq	*64(%rdi)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB11_15
# BB#14:                                # %if.end.i
	movq	200(%r12), %rcx
	movq	%rcx, 200(%rax)
	movl	$8, 28(%rax)
	movl	$8, 24(%rax)
	movl	$0, 44(%rax)
	movl	$8, 32(%rax)
	movl	$0, 40(%rax)
	movl	$8, 124(%rax)
	movl	$8, 120(%rax)
	movl	$0, 140(%rax)
	movl	$8, 128(%rax)
	movl	$0, 136(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 96(%rax)
	movl	$8, 52(%rax)
	movl	$8, 48(%rax)
	movl	$8, 56(%rax)
	movl	$8, 148(%rax)
	movl	$8, 144(%rax)
	movl	$0, 164(%rax)
	movl	$8, 152(%rax)
	movl	$0, 160(%rax)
	movq	$0, 16(%rax)
	movq	$0, 112(%rax)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [0,0,8,8]
	movups	%xmm0, 64(%rax)
	movl	$0, 92(%rax)
	movl	$8, 80(%rax)
	movl	$0, 88(%rax)
	movl	$8, 172(%rax)
	movl	$8, 168(%rax)
	movl	$0, 188(%rax)
	movl	$8, 176(%rax)
	movl	$0, 184(%rax)
	movq	$0, 192(%rax)
	movq	$0, 216(%rax)
	movl	$0, 208(%rax)
	movq	$1, 224(%rax)
	movq	200(%r12), %rcx
	movq	%rcx, 232(%rax)
	movq	$rc_free_srcgtag_profile, 240(%rax)
	movq	%rax, %rbx
.LBB11_15:                              # %gsicc_new_srcgtag_profile.exit
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leaq	74(%rsp), %rdi
	movl	$.L.str.17, %esi
	movl	$12, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	leaq	68(%rsp), %rdi
	movl	$.L.str.17, %esi
	movl	$4096, %edx             # imm = 0x1000
	xorl	%eax, %eax
	callq	gs_sprintf
	movl	$0, 40(%rbx)
	leaq	120(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$0, 136(%rbx)
	movl	$0, 64(%rbx)
	leaq	144(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$0, 160(%rbx)
	movl	$0, 88(%rbx)
	leaq	168(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$0, 184(%rbx)
	movb	$1, %r14b
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB11_16
.LBB11_10:                              # %if.then.19
	movq	%rbp, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$554, %edx              # imm = 0x22A
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	jmp	.LBB11_7
.LBB11_12:                              # %if.then.27
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$562, %edx              # imm = 0x232
.LBB11_6:                               # %cleanup
	xorl	%ecx, %ecx
	movl	$-1, %r8d
.LBB11_7:                               # %cleanup
	movl	$.L.str.16, %r9d
.LBB11_8:                               # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB11_60:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_37:                              # %while.cond
                                        #   in Loop: Header=BB11_16 Depth=1
	callq	gsicc_fill_srcgtag_item
	xorl	%r14d, %r14d
.LBB11_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %r14b
	je	.LBB11_17
# BB#67:                                # %if.then.47
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.18, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB11_19
.LBB11_17:                              # %lor.rhs
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB11_57
# BB#18:                                # %if.else.49
                                        #   in Loop: Header=BB11_16 Depth=1
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
.LBB11_19:                              # %if.end.51
                                        #   in Loop: Header=BB11_16 Depth=1
	callq	strtok
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_57
# BB#20:                                # %for.cond.56.preheader
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.9, %edi
	callq	strlen
	movl	$.L.str.9, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#61:                                # %for.inc.143
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.10, %edi
	callq	strlen
	movl	$.L.str.10, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#62:                                # %for.inc.143.1
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.11, %edi
	callq	strlen
	movl	$.L.str.11, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$2, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#63:                                # %for.inc.143.2
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.12, %edi
	callq	strlen
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$3, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#64:                                # %for.inc.143.3
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.13, %edi
	callq	strlen
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$4, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#65:                                # %for.inc.143.4
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.14, %edi
	callq	strlen
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$5, %r14d
	testl	%eax, %eax
	je	.LBB11_21
# BB#66:                                # %for.inc.143.5
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.15, %edi
	callq	strlen
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	$6, %r14d
	testl	%eax, %eax
	jne	.LBB11_48
.LBB11_21:                              # %if.then.68
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, %rbp
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %r15
	movl	$.L.str.19, %edi
	callq	strlen
	movq	%rax, %rbx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB11_23
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	strlen
	movl	$1, %ecx
	cmpq	%rbx, %rax
	movl	$0, %r12d
	je	.LBB11_28
.LBB11_23:                              # %if.else.79
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.20, %edi
	callq	strlen
	movq	%rax, %rbx
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB11_25
# BB#24:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	strlen
	movl	$2, %ecx
	cmpq	%rbx, %rax
	movl	$0, %r12d
	je	.LBB11_28
.LBB11_25:                              # %if.else.90
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	strlen
	movq	192(%rbp), %rdx
	movq	184(%rdx), %rcx
	movl	192(%rdx), %r8d
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%rbp, %rdx
	leaq	80(%rsp), %r9
	callq	gsicc_open_search
	testl	%eax, %eax
	movq	56(%rsp), %r12          # 8-byte Reload
	js	.LBB11_60
# BB#26:                                # %if.end.101
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	80(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB11_30
# BB#27:                                # %if.then.104
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	gsicc_profile_new
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	sfclose
	movq	%r12, %rdi
	callq	gsicc_init_profile_info
	movq	280(%r12), %rdi
	callq	gscms_is_device_link
	movl	%eax, 8(%r12)
	xorl	%ecx, %ecx
.LBB11_28:                              # %for.end.145
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	%r14d, %eax
	cmpl	$6, %r14d
	ja	.LBB11_52
# BB#29:                                # %for.end.145
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	40(%rsp), %rbx          # 8-byte Reload
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_34:                              # %sw.bb
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 192(%rbx)
	xorl	%r14d, %r14d
	movq	%rbp, %r12
	jmp	.LBB11_16
.LBB11_35:                              # %sw.bb.146
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 96(%rbx)
	movl	%ecx, 136(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#36:                                # %if.then.153
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$1, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB11_37
.LBB11_38:                              # %sw.bb.157
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 104(%rbx)
	movl	%ecx, 160(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#39:                                # %if.then.165
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$1, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB11_37
.LBB11_40:                              # %sw.bb.169
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 112(%rbx)
	movl	%ecx, 184(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#41:                                # %if.then.177
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	$1, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	jmp	.LBB11_37
.LBB11_42:                              # %sw.bb.181
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, (%rbx)
	movl	%ecx, 40(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#43:                                # %if.then.188
                                        #   in Loop: Header=BB11_16 Depth=1
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	92(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	92(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 24(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	100(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	100(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 28(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	96(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	96(%rsp), %eax
	movl	%eax, 44(%rbx)
	movl	$8, 32(%rbx)
	jmp	.LBB11_16
.LBB11_44:                              # %sw.bb.192
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 8(%rbx)
	movl	%ecx, 64(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#45:                                # %if.then.200
                                        #   in Loop: Header=BB11_16 Depth=1
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	92(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	92(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 48(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	100(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	100(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 52(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	96(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	96(%rsp), %eax
	movl	%eax, 68(%rbx)
	movl	$8, 56(%rbx)
	jmp	.LBB11_16
.LBB11_46:                              # %sw.bb.204
                                        #   in Loop: Header=BB11_16 Depth=1
	movq	%r12, 16(%rbx)
	movl	%ecx, 88(%rbx)
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	%rbp, %r12
	jne	.LBB11_16
# BB#47:                                # %if.then.212
                                        #   in Loop: Header=BB11_16 Depth=1
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	92(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	92(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 72(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	100(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	100(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 76(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	96(%rsp), %rdx
	callq	__isoc99_sscanf
	movl	96(%rsp), %eax
	movl	%eax, 92(%rbx)
	movl	$8, 80(%rbx)
	jmp	.LBB11_16
.LBB11_52:                              # %sw.default
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	40(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB11_55
# BB#53:                                # %do.end.262
	decq	224(%rsi)
	jne	.LBB11_55
# BB#54:                                # %do.end.275
	movq	232(%rsi), %rdi
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	callq	*240(%rsi)
.LBB11_55:                              # %do.end.289
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$692, %edx              # imm = 0x2B4
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.22, %r9d
	jmp	.LBB11_8
.LBB11_57:                              # %if.end.293
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	strlen
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	%eax, 208(%rbp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	*64(%r12)
	movq	%rax, 216(%rbp)
	testq	%rax, %rax
	je	.LBB11_58
# BB#59:                                # %if.end.307
	movslq	208(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strncpy
	movq	%rbp, 72(%r13)
	xorl	%eax, %eax
	jmp	.LBB11_60
.LBB11_30:                              # %if.else.110
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbp)
	movq	40(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB11_33
# BB#31:                                # %do.end
	decq	224(%rsi)
	jne	.LBB11_33
# BB#32:                                # %do.end.127
	movq	232(%rsi), %rdi
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	callq	*240(%rsi)
.LBB11_33:                              # %do.end.140
	movq	%r12, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$628, %edx              # imm = 0x274
	jmp	.LBB11_6
.LBB11_58:                              # %if.then.305
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$704, %edx              # imm = 0x2C0
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.23, %r9d
	jmp	.LBB11_8
.LBB11_48:                              # %sw.bb.216
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r12)
	movq	40(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB11_51
# BB#49:                                # %do.end.225
	decq	224(%rsi)
	jne	.LBB11_51
# BB#50:                                # %do.end.238
	movq	232(%rsi), %rdi
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edx
	callq	*240(%rsi)
.LBB11_51:                              # %do.end.252
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$.L__func__.gsicc_set_srcgtag_struct, %edi
	movl	$.L.str.1, %esi
	movl	$686, %edx              # imm = 0x2AE
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.21, %r9d
	jmp	.LBB11_8
.Lfunc_end11:
	.size	gsicc_set_srcgtag_struct, .Lfunc_end11-gsicc_set_srcgtag_struct
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_34
	.quad	.LBB11_35
	.quad	.LBB11_38
	.quad	.LBB11_40
	.quad	.LBB11_42
	.quad	.LBB11_44
	.quad	.LBB11_46

	.text
	.globl	gsicc_init_profile_info
	.align	16, 0x90
	.type	gsicc_init_profile_info,@function
gsicc_init_profile_info:                # @gsicc_init_profile_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	256(%rbx), %rcx
	movl	220(%rbx), %edx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB12_3
# BB#1:                                 # %entry
	cmpl	$128, %edx
	jl	.LBB12_3
# BB#2:                                 # %if.end.i
	movq	328(%rbx), %rax
	movq	200(%rax), %rdi
	movq	%rcx, %rsi
	callq	gscms_get_profile_handle_mem
	movq	256(%rbx), %rcx
	movl	220(%rbx), %edx
.LBB12_3:                               # %gsicc_get_profile_handle_buffer.exit
	movq	%rax, 280(%rbx)
	leaq	144(%rbx), %rsi
	movq	%rcx, %rdi
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%rbx)
	movl	$0, 12(%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_input_channel_count
	movb	%al, (%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_output_channel_count
	movb	%al, 1(%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_profile_data_space
	movl	%eax, 16(%rbx)
	cmpb	$0, (%rbx)
	je	.LBB12_6
# BB#4:                                 # %for.body.preheader
	xorl	%eax, %eax
	movabsq	$4575657221408423936, %rcx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, 20(%rbx,%rax,8)
	incq	%rax
	movzbl	(%rbx), %edx
	cmpq	%rdx, %rax
	jl	.LBB12_5
.LBB12_6:                               # %for.end
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gsicc_init_profile_info, .Lfunc_end12-gsicc_init_profile_info
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_fill_srcgtag_item,@function
gsicc_fill_srcgtag_item:                # @gsicc_fill_srcgtag_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 48
.Ltmp73:
	.cfi_offset %rbx, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	leaq	8(%rsp), %rdx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	__isoc99_sscanf
	movl	8(%rsp), %eax
	orl	$4, %eax
	movl	%eax, (%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	leaq	20(%rsp), %rdx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	__isoc99_sscanf
	movl	20(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 4(%rbx)
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	leaq	16(%rsp), %rdx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	__isoc99_sscanf
	movl	16(%rsp), %eax
	movl	%eax, 20(%rbx)
	movl	$8, %eax
	testl	%ebp, %ebp
	je	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	$.L.str.18, %esi
	callq	strtok
	movq	%rax, %rcx
	leaq	12(%rsp), %rdx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	__isoc99_sscanf
	movl	12(%rsp), %eax
	orl	$4, %eax
.LBB13_2:                               # %if.end
	movl	%eax, 8(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gsicc_fill_srcgtag_item, .Lfunc_end13-gsicc_fill_srcgtag_item
	.cfi_endproc

	.globl	gsicc_set_profile
	.align	16, 0x90
	.type	gsicc_set_profile,@function
gsicc_set_profile:                      # @gsicc_set_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 128
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movl	%edx, %r10d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	56(%r12), %rdx
	movq	80(%r12), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB14_2
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	cmpl	$1, 32(%rdx)
	je	.LBB14_88
.LBB14_2:                               # %if.else
	xorl	%eax, %eax
	leal	-1(%rcx), %edx
	cmpl	$5, %edx
	ja	.LBB14_88
# BB#3:                                 # %if.else
	jmpq	*.LJTI14_0(,%rdx,8)
.LBB14_4:                               # %sw.bb
	leaq	8(%r12), %rsi
	movl	$1, %edx
	movb	$1, %al
	jmp	.LBB14_10
.LBB14_5:                               # %sw.bb.3
	leaq	16(%r12), %rsi
	movl	$2, %edx
	jmp	.LBB14_9
.LBB14_6:                               # %sw.bb.4
	leaq	24(%r12), %rsi
	movl	$3, %edx
	movb	$4, %al
	jmp	.LBB14_10
.LBB14_7:                               # %sw.bb.5
	movl	$7, %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	jmp	.LBB14_10
.LBB14_8:                               # %sw.bb.6
	leaq	32(%r12), %rsi
	movl	$6, %edx
.LBB14_9:                               # %land.lhs.true.10
	movb	$3, %al
.LBB14_10:                              # %land.lhs.true.10
	movq	(%rsi), %rbp
	testq	%rbp, %rbp
	je	.LBB14_11
# BB#12:                                # %if.then.12
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	320(%rbp), %r14
	cmpl	%r10d, 312(%rbp)
	jne	.LBB14_14
# BB#13:                                # %if.then.14
	movslq	%r10d, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r10, %r15
	movq	%rcx, %r13
	callq	memcmp
	movq	%r13, %rcx
	movq	%r15, %r10
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB14_88
.LBB14_14:                              # %if.end.19
	movq	%r14, %rdi
	movq	%r10, %r15
	movq	%rcx, %r13
	callq	strlen
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movq	%r15, %r10
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB14_88
# BB#15:                                # %do.end
	decq	288(%rbp)
	je	.LBB14_17
# BB#16:
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB14_35
.LBB14_11:
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%rcx, %r13
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB14_35
.LBB14_18:                              # %if.then.57
	movq	48(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB14_25
# BB#19:                                # %if.then.60
	movl	16(%rbp), %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB14_25
# BB#20:                                # %for.body.lr.ph
	movslq	%r10d, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB14_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rbp
	movq	(%rbp), %rax
	testq	%rax, %rax
	je	.LBB14_24
# BB#22:                                # %if.then.67
                                        #   in Loop: Header=BB14_21 Depth=1
	cmpl	%r10d, 312(%rax)
	jne	.LBB14_24
# BB#23:                                # %if.then.72
                                        #   in Loop: Header=BB14_21 Depth=1
	movq	320(%rax), %rsi
	movq	%rbx, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r10, %r13
	movq	%r12, %r14
	movq	%rcx, %r12
	callq	memcmp
	movq	%r12, %rcx
	movq	%r14, %r12
	movq	%r13, %r10
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	52(%rsp), %edx          # 4-byte Reload
	je	.LBB14_88
.LBB14_24:                              # %if.end.81
                                        #   in Loop: Header=BB14_21 Depth=1
	addq	$8, %rbp
	incl	%r15d
	cmpl	%edx, %r15d
	jl	.LBB14_21
.LBB14_25:                              # %if.end.82
	movq	%rcx, %r15
	movq	%r10, %r14
	movl	$st_gsicc_devicen_entry, %esi
	movl	$.L.str.75, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB14_26
# BB#29:                                # %if.end.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbp)
	movq	48(%r12), %rax
	testq	%rax, %rax
	movq	%r14, %r10
	je	.LBB14_30
# BB#33:                                # %if.else.i
	movq	8(%rax), %rcx
	movq	%rbp, 8(%rcx)
	movq	%rbp, 8(%rax)
	incl	16(%rax)
	jmp	.LBB14_34
.LBB14_17:                              # %do.end.40
	movq	296(%rbp), %rdi
	movl	$.L.str.25, %edx
	movq	%rbp, %rsi
	movq	%r10, %r14
	callq	*304(%rbp)
	movq	%r14, %r10
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB14_35
.LBB14_26:                              # %if.then.i
	movl	$.L.str.75, %edi
	movl	$.L.str.1, %esi
	movl	$233, %edx
	jmp	.LBB14_27
.LBB14_30:                              # %if.then.4.i
	movq	%r10, %r14
	movq	80(%r12), %rdi
	movl	$st_gsicc_devicen, %esi
	movl	$.L.str.75, %edx
	callq	*72(%rdi)
	movq	%rax, 48(%r12)
	testq	%rax, %rax
	je	.LBB14_31
# BB#32:                                # %if.end.15.i
	movq	%rbp, (%rax)
	movq	%rbp, 8(%rax)
	movl	$1, 16(%rax)
	movq	%r14, %r10
	jmp	.LBB14_34
.LBB14_31:                              # %if.then.13.i
	movl	$.L.str.75, %edi
	movl	$.L.str.1, %esi
	movl	$243, %edx
.LBB14_27:                              # %gsicc_new_devicen.exit
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.76, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	testl	%eax, %eax
	movq	%r14, %r10
	js	.LBB14_88
# BB#28:                                # %gsicc_new_devicen.exit.if.end.87_crit_edge
	movq	48(%r12), %rax
.LBB14_34:                              # %if.end.87
	movq	%r15, %r13
	movq	8(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movb	$1, %al
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	$4, 52(%rsp)            # 4-byte Folded Spill
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
.LBB14_35:                              # %if.end.90
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	192(%r15), %rax
	movq	184(%rax), %rcx
	movl	192(%rax), %r8d
	leaq	64(%rsp), %r9
	movq	%rbx, %rdi
	movl	%r10d, %esi
	movq	%r15, %rdx
	movq	%r10, %rbp
	callq	gsicc_open_search
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	testl	%eax, %eax
	js	.LBB14_88
# BB#36:                                # %if.end.96
	movq	64(%rsp), %r14
	movl	$-1, %eax
	testq	%r14, %r14
	je	.LBB14_88
# BB#37:                                # %if.then.99
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	callq	gsicc_profile_new
	movq	%rax, %rbp
	cmpl	$4, %r13d
	jne	.LBB14_53
# BB#38:                                # %if.then.99
	testq	%rbp, %rbp
	jne	.LBB14_53
# BB#39:                                # %if.then.106
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	callq	gsicc_profile_new
	movq	%rax, %r12
	movl	$7, 16(%r12)
	movq	%r14, %rdi
	callq	srewind
	testl	%eax, %eax
	js	.LBB14_46
# BB#40:                                # %if.end.i.63
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	sfseek
	testl	%eax, %eax
	js	.LBB14_46
# BB#41:                                # %if.end.4.i
	movq	%r14, %rdi
	callq	sftell
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	srewind
	testl	%eax, %eax
	js	.LBB14_46
# BB#42:                                # %if.end.10.i
	movl	$.L.str.93, %edx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	*64(%r15)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB14_45
# BB#43:                                # %if.end.16.i
	movslq	%r13d, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r14, %rcx
	callq	sfread
	cmpl	%r13d, %eax
	jne	.LBB14_44
# BB#49:                                # %gsicc_load_namedcolor_buffer.exit.thread101
	movq	%rbp, 256(%r12)
	movl	%r13d, 220(%r12)
	jmp	.LBB14_50
.LBB14_53:                              # %if.end.128
	movq	%r14, %rdi
	callq	sfclose
	testq	%rbp, %rbp
	je	.LBB14_54
# BB#55:                                # %if.end.134
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	%r13d, 12(%rbp)
	cmpl	$5, %r13d
	jne	.LBB14_57
# BB#56:                                # %if.then.137
	movl	$1, 4(%rbp)
.LBB14_57:                              # %if.end.138
	movl	32(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	movl	52(%rsp), %ebx          # 4-byte Reload
	je	.LBB14_79
# BB#58:                                # %if.then.141
	movq	80(%r12), %r14
	movq	280(%rbp), %r13
	testq	%r13, %r13
	jne	.LBB14_63
# BB#59:                                # %if.then.i.68
	movq	256(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_79
# BB#60:                                # %if.then.2.i
	movl	220(%rbp), %edx
	xorl	%r13d, %r13d
	cmpl	$128, %edx
	jl	.LBB14_62
# BB#61:                                # %if.end.i.i
	movq	200(%r14), %rdi
	callq	gscms_get_profile_handle_mem
	movq	%rax, %r13
.LBB14_62:                              # %gsicc_get_profile_handle_buffer.exit.i
	movq	%r13, 280(%rbp)
.LBB14_63:                              # %if.end.5.i
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	200(%r14), %r12
	movq	%r12, 56(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	gscms_get_numberclrtnames
	xorl	%r15d, %r15d
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.LBB14_78
# BB#64:                                # %if.end.i.10.i
	movq	200(%r12), %rdi
	movl	$40, %esi
	movl	$.L.str.87, %edx
	callq	*64(%rdi)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB14_78
# BB#65:                                # %gsicc_new_namelist.exit.i.i
	movq	%rax, %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	$0, 8(%r15)
	movq	$0, 16(%r15)
	movq	$0, 24(%r15)
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movl	%ebx, (%r15)
	testl	%ebx, %ebx
	jle	.LBB14_78
# BB#66:                                # %for.body.lr.ph.i.i
	movq	%rax, %r14
	addq	$8, %r14
	movq	%r14, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
.LBB14_67:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	gscms_get_clrtname
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB14_71
# BB#68:                                # %if.end.9.i.i
                                        #   in Loop: Header=BB14_67 Depth=1
	movl	$st_gsicc_colorname, %esi
	movl	$.L.str.88, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB14_70
# BB#69:                                # %gsicc_new_colorname.exit.i.i
                                        #   in Loop: Header=BB14_67 Depth=1
	movl	$0, 8(%r15)
	movq	%r15, %r12
	addq	$16, %r12
	movq	$0, 16(%r15)
	movq	%rbx, (%r15)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 8(%r15)
	movq	%r15, (%r14)
	incl	%ebp
	cmpl	32(%rsp), %ebp          # 4-byte Folded Reload
	movq	%r12, %r14
	movq	56(%rsp), %r12          # 8-byte Reload
	movq	40(%rsp), %r15          # 8-byte Reload
	jl	.LBB14_67
	jmp	.LBB14_78
.LBB14_54:                              # %if.then.132
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$.L.str.25, %edi
	movl	$.L.str.1, %esi
	movl	$845, %edx              # imm = 0x34D
	jmp	.LBB14_47
.LBB14_45:                              # %gsicc_load_namedcolor_buffer.exit
	movl	$.L__func__.gsicc_load_namedcolor_buffer, %edi
	movl	$.L.str.1, %esi
	movl	$1984, %edx             # imm = 0x7C0
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.94, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	testl	%eax, %eax
	js	.LBB14_46
.LBB14_50:                              # %if.end.113
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	movq	328(%r12), %rdi
	movq	16(%rsp), %rbx          # 8-byte Reload
	leal	1(%rbx), %esi
	movl	$.L.str.25, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB14_51
# BB#52:                                # %if.end.122
	movslq	%ebx, %r14
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r14)
	movq	%rbp, 320(%r12)
	movl	%ebx, 312(%r12)
	jmp	.LBB14_87
.LBB14_44:                              # %if.then.21.i
	movl	$.L.str.93, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*24(%r15)
.LBB14_46:                              # %if.then.111
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$.L.str.25, %edi
	movl	$.L.str.1, %esi
	movl	$831, %edx              # imm = 0x33F
.LBB14_47:                              # %cleanup.148
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.26, %r9d
.LBB14_48:                              # %cleanup.148
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB14_88
.LBB14_51:                              # %if.then.120
	movl	$.L.str.25, %edi
	movl	$.L.str.1, %esi
	movl	$836, %edx              # imm = 0x344
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.27, %r9d
	jmp	.LBB14_48
.LBB14_70:                              # %if.then.12.i.i
	movl	$.L.str.79, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	movq	40(%rsp), %r15          # 8-byte Reload
.LBB14_71:                              # %if.then.18.i.i
	cmpl	$0, (%r15)
	jle	.LBB14_74
# BB#72:                                # %for.body.lr.ph.i.i.i
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	xorl	%ebp, %ebp
.LBB14_73:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movq	16(%rbx), %r14
	movl	$.L.str.86, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L.str.86, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	incl	%ebp
	cmpl	(%r15), %ebp
	movq	%r14, %rbx
	jl	.LBB14_73
.LBB14_74:                              # %for.end.i.i.i
	movq	24(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB14_76
# BB#75:                                # %if.then.i.i.i
	movl	$.L.str.86, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
.LBB14_76:                              # %if.end.i.40.i.i
	movq	16(%r15), %rsi
	xorl	%r15d, %r15d
	testq	%rsi, %rsi
	je	.LBB14_78
# BB#77:                                # %if.then.8.i.i.i
	movl	$.L.str.86, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	xorl	%r15d, %r15d
.LBB14_78:                              # %gsicc_get_spotnames.exit.i
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	%r15, 272(%rbp)
	movl	52(%rsp), %ebx          # 4-byte Reload
.LBB14_79:                              # %if.end.143
	movl	36(%rsp), %esi          # 4-byte Reload
	movb	%sil, (%rbp)
	movb	$3, 1(%rbp)
	testb	%sil, %sil
	je	.LBB14_86
# BB#80:                                # %for.body.lr.ph.i
	movzbl	%sil, %eax
	leal	-1(%rax), %ecx
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB14_83
# BB#81:                                # %for.body.i.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	movabsq	$4575657221408423936, %rdi # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB14_82:                              # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, 20(%rbp,%rdx,8)
	incq	%rdx
	cmpl	%edx, %esi
	jne	.LBB14_82
.LBB14_83:                              # %for.body.lr.ph.i.split
	cmpl	$3, %ecx
	jb	.LBB14_86
# BB#84:                                # %for.body.lr.ph.i.split.split
	subl	%edx, %eax
	leaq	48(%rbp,%rdx,8), %rcx
	movabsq	$4575657221408423936, %rdx # imm = 0x3F80000000000000
	.align	16, 0x90
.LBB14_85:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -28(%rcx)
	movl	$1065353216, -24(%rcx)  # imm = 0x3F800000
	movl	$0, -20(%rcx)
	movl	$1065353216, -16(%rcx)  # imm = 0x3F800000
	movl	$0, -12(%rcx)
	movl	$1065353216, -8(%rcx)   # imm = 0x3F800000
	movq	%rdx, -4(%rcx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB14_85
.LBB14_86:                              # %gscms_set_icc_range.exit
	movl	%ebx, 16(%rbp)
.LBB14_87:                              # %cleanup.148
	xorl	%eax, %eax
.LBB14_88:                              # %cleanup.148
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gsicc_set_profile, .Lfunc_end14-gsicc_set_profile
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_4
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_8
	.quad	.LBB14_18

	.text
	.globl	gsicc_initialize_default_profile
	.align	16, 0x90
	.type	gsicc_initialize_default_profile,@function
gsicc_initialize_default_profile:       # @gsicc_initialize_default_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp92:
	.cfi_def_cfa_offset 48
.Ltmp93:
	.cfi_offset %rbx, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	12(%rbx), %ebp
	xorl	%edi, %edi
	cmpq	$0, 280(%rbx)
	je	.LBB15_6
# BB#1:                                 # %if.then
	movq	256(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_3
# BB#2:                                 # %if.then
	movl	220(%rbx), %edx
	cmpl	$127, %edx
	jle	.LBB15_3
# BB#4:                                 # %gsicc_get_profile_handle_buffer.exit
	movq	328(%rbx), %rax
	movq	200(%rax), %rdi
	callq	gscms_get_profile_handle_mem
	movq	%rax, %rdi
	movq	%rdi, 280(%rbx)
	testq	%rdi, %rdi
	je	.LBB15_5
.LBB15_6:                               # %if.end.6
	movq	256(%rbx), %rax
	testq	%rax, %rax
	je	.LBB15_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, 152(%rbx)
	jne	.LBB15_9
# BB#8:                                 # %if.then.10
	leaq	144(%rbx), %rsi
	movl	220(%rbx), %edx
	movq	%rax, %rdi
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%rbx)
	movq	280(%rbx), %rdi
.LBB15_9:                               # %if.end.14
	movb	(%rbx), %r14b
	callq	gscms_get_input_channel_count
	movb	%al, (%rbx)
	movb	1(%rbx), %r15b
	movq	280(%rbx), %rdi
	callq	gscms_get_output_channel_count
	movb	%al, 1(%rbx)
	movq	280(%rbx), %rdi
	callq	gscms_get_profile_data_space
	movl	%eax, 16(%rbx)
	decl	%ebp
	cmpl	$5, %ebp
	ja	.LBB15_14
# BB#10:                                # %switch.lookup
	movslq	%ebp, %rdx
	movl	.Lswitch.table.1(,%rdx,4), %ecx
	addq	$-3, %rdx
	cmpq	$2, %rdx
	ja	.LBB15_13
# BB#11:                                # %lor.lhs.false
	movzbl	(%rbx), %edx
	movzbl	%r14b, %esi
	cmpl	%edx, %esi
	jne	.LBB15_13
# BB#12:                                # %lor.lhs.false.64
	movzbl	1(%rbx), %edx
	movzbl	%r15b, %esi
	cmpl	%edx, %esi
	je	.LBB15_14
.LBB15_13:                              # %if.then.69
	cmpl	%ecx, %eax
	je	.LBB15_14
# BB#16:                                # %if.then.73
	movl	$.L__func__.gsicc_initialize_default_profile, %edi
	movl	$.L.str.1, %esi
	movl	$944, %edx              # imm = 0x3B0
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.LBB15_14:                              # %cleanup
	xorl	%eax, %eax
	jmp	.LBB15_15
.LBB15_3:                               # %gsicc_get_profile_handle_buffer.exit.thread
	movq	$0, 280(%rbx)
.LBB15_5:                               # %if.then.4
	movq	320(%rbx), %rax
	movq	%rax, (%rsp)
	movl	$.L__func__.gsicc_initialize_default_profile, %edi
	movl	$.L.str.1, %esi
	movl	$891, %edx              # imm = 0x37B
	movl	$1, %ecx
	movl	$-25, %r8d
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB15_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gsicc_initialize_default_profile, .Lfunc_end15-gsicc_initialize_default_profile
	.cfi_endproc

	.globl	gsicc_get_profile_handle_file
	.align	16, 0x90
	.type	gsicc_get_profile_handle_file,@function
gsicc_get_profile_handle_file:          # @gsicc_get_profile_handle_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 64
.Ltmp103:
	.cfi_offset %rbx, -48
.Ltmp104:
	.cfi_offset %r12, -40
.Ltmp105:
	.cfi_offset %r14, -32
.Ltmp106:
	.cfi_offset %r15, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	gsicc_open_search
	testl	%eax, %eax
	js	.LBB16_3
# BB#1:                                 # %entry
	movq	8(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB16_3
# BB#2:                                 # %if.end
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	gsicc_profile_new
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	sfclose
	movq	%rbx, %rdi
	callq	gsicc_init_profile_info
.LBB16_3:                               # %cleanup
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gsicc_get_profile_handle_file, .Lfunc_end16-gsicc_get_profile_handle_file
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	0                       # 0x0
.LCPI17_1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	gsicc_new_device_profile_array
	.align	16, 0x90
	.type	gsicc_new_device_profile_array,@function
gsicc_new_device_profile_array:         # @gsicc_new_device_profile_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	200(%rbx), %rdi
	movl	$224, %esi
	movl	$.L.str.30, %edx
	callq	*64(%rdi)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB17_2
# BB#1:                                 # %if.end
	movq	200(%rbx), %rcx
	movq	%rcx, 192(%rax)
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [8,8,8,0]
	movups	%xmm0, 56(%rax)
	xorps	%xmm1, %xmm1
	movups	%xmm1, (%rax)
	movaps	.LCPI17_1(%rip), %xmm2  # xmm2 = [0,0,8,8]
	movups	%xmm2, 72(%rax)
	movl	$8, %ecx
	movd	%ecx, %xmm3
	movups	%xmm3, 88(%rax)
	movq	$0, 16(%rax)
	movups	%xmm0, 104(%rax)
	movups	%xmm2, 120(%rax)
	movups	%xmm3, 136(%rax)
	movups	%xmm1, 24(%rax)
	movups	%xmm1, 40(%rax)
	movq	$0, 176(%rax)
	movl	$1, %ecx
	movd	%ecx, %xmm0
	movups	%xmm0, 152(%rax)
	movl	$1, 184(%rax)
	movl	$0, 168(%rax)
	movl	$1, 172(%rax)
	movq	$1, 200(%rax)
	movq	200(%rbx), %rcx
	movq	%rcx, 208(%rax)
	movq	$rc_free_profile_array, 216(%rax)
	movq	%rax, %rcx
.LBB17_2:                               # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end17:
	.size	gsicc_new_device_profile_array, .Lfunc_end17-gsicc_new_device_profile_array
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_profile_array,@function
rc_free_profile_array:                  # @rc_free_profile_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp116:
	.cfi_def_cfa_offset 64
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpq	$1, 200(%r14)
	jg	.LBB18_32
# BB#1:                                 # %for.cond.preheader
	movq	192(%r14), %r15
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_4
# BB#2:                                 # %do.end.12
	decq	288(%rsi)
	jne	.LBB18_4
# BB#3:                                 # %do.end.30
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, (%r14)
.LBB18_4:                               # %for.inc
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_7
# BB#5:                                 # %do.end.12.1
	decq	288(%rsi)
	jne	.LBB18_7
# BB#6:                                 # %do.end.30.1
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 8(%r14)
.LBB18_7:                               # %for.inc.1
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_10
# BB#8:                                 # %do.end.12.2
	decq	288(%rsi)
	jne	.LBB18_10
# BB#9:                                 # %do.end.30.2
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 16(%r14)
.LBB18_10:                              # %for.inc.2
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_13
# BB#11:                                # %do.end.12.3
	decq	288(%rsi)
	jne	.LBB18_13
# BB#12:                                # %do.end.30.3
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 24(%r14)
.LBB18_13:                              # %for.inc.3
	movq	40(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_16
# BB#14:                                # %do.end.67
	decq	288(%rsi)
	jne	.LBB18_16
# BB#15:                                # %do.end.82
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 40(%r14)
.LBB18_16:                              # %if.end.101
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_19
# BB#17:                                # %do.end.114
	decq	288(%rsi)
	jne	.LBB18_19
# BB#18:                                # %do.end.129
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 32(%r14)
.LBB18_19:                              # %if.end.148
	movq	48(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB18_22
# BB#20:                                # %do.end.161
	decq	288(%rsi)
	jne	.LBB18_22
# BB#21:                                # %do.end.176
	movq	296(%rsi), %rdi
	movl	$.L.str.85, %edx
	callq	*304(%rsi)
	movq	$0, 48(%r14)
.LBB18_22:                              # %if.end.195
	movq	176(%r14), %r12
	testq	%r12, %r12
	je	.LBB18_31
# BB#23:                                # %do.end.200
	cmpl	$0, (%r12)
	jle	.LBB18_26
# BB#24:                                # %for.body.lr.ph.i
	movq	8(%r12), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_25:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movq	16(%rbx), %r13
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	incl	%ebp
	cmpl	(%r12), %ebp
	movq	%r13, %rbx
	jl	.LBB18_25
.LBB18_26:                              # %for.end.i
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB18_28
# BB#27:                                # %if.then.i
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB18_28:                              # %if.end.i
	movq	16(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB18_30
# BB#29:                                # %if.then.8.i
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB18_30:                              # %gsicc_free_spotnames.exit
	movq	176(%r14), %rsi
	movl	$.L.str.85, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB18_31:                              # %do.end.206
	movq	24(%r15), %rax
	movl	$.L.str.85, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB18_32:                              # %if.end.209
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	rc_free_profile_array, .Lfunc_end18-rc_free_profile_array
	.cfi_endproc

	.globl	gsicc_set_device_blackpreserve
	.align	16, 0x90
	.type	gsicc_set_device_blackpreserve,@function
gsicc_set_device_blackpreserve:         # @gsicc_set_device_blackpreserve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp125:
	.cfi_def_cfa_offset 32
.Ltmp126:
	.cfi_offset %rbx, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	1680(%rdi), %rax
	testq	%rax, %rax
	je	.LBB19_1
# BB#2:                                 # %if.else
	leaq	(%rsp), %rsi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB19_6
# BB#3:                                 # %if.end.5thread-pre-split
	movq	(%rsp), %rcx
	jmp	.LBB19_4
.LBB19_1:                               # %if.then
	movq	1104(%rdi), %rcx
	movq	%rcx, (%rsp)
.LBB19_4:                               # %if.end.5
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB19_6
# BB#5:                                 # %if.end.8
	movl	%ebp, %edx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%ebx, 64(%rcx,%rdx,8)
.LBB19_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gsicc_set_device_blackpreserve, .Lfunc_end19-gsicc_set_device_blackpreserve
	.cfi_endproc

	.globl	gsicc_set_device_profile_intent
	.align	16, 0x90
	.type	gsicc_set_device_profile_intent,@function
gsicc_set_device_profile_intent:        # @gsicc_set_device_profile_intent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 32
.Ltmp131:
	.cfi_offset %rbx, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	1680(%rdi), %rax
	testq	%rax, %rax
	je	.LBB20_1
# BB#2:                                 # %if.else
	leaq	(%rsp), %rsi
	callq	*%rax
	testl	%eax, %eax
	js	.LBB20_6
# BB#3:                                 # %if.end.5thread-pre-split
	movq	(%rsp), %rcx
	jmp	.LBB20_4
.LBB20_1:                               # %if.then
	movq	1104(%rdi), %rcx
	movq	%rcx, (%rsp)
.LBB20_4:                               # %if.end.5
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB20_6
# BB#5:                                 # %if.end.8
	movl	%ebp, %edx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%ebx, 56(%rcx,%rdx,8)
.LBB20_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gsicc_set_device_profile_intent, .Lfunc_end20-gsicc_set_device_profile_intent
	.cfi_endproc

	.globl	gsicc_set_device_blackptcomp
	.align	16, 0x90
	.type	gsicc_set_device_blackptcomp,@function
gsicc_set_device_blackptcomp:           # @gsicc_set_device_blackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	1680(%rdi), %rax
	testq	%rax, %rax
	je	.LBB21_1
# BB#2:                                 # %if.else
	leaq	(%rsp), %rsi
	callq	*%rax
	movq	(%rsp), %rdx
	jmp	.LBB21_3
.LBB21_1:                               # %if.then
	movq	1104(%rdi), %rdx
	movq	%rdx, (%rsp)
	xorl	%eax, %eax
.LBB21_3:                               # %if.end
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	je	.LBB21_5
# BB#4:                                 # %if.end.5
	movl	%ebp, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%ebx, 60(%rdx,%rcx,8)
	movl	%eax, %ecx
.LBB21_5:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gsicc_set_device_blackptcomp, .Lfunc_end21-gsicc_set_device_blackptcomp
	.cfi_endproc

	.globl	gsicc_set_devicen_equiv_colors
	.align	16, 0x90
	.type	gsicc_set_devicen_equiv_colors,@function
gsicc_set_devicen_equiv_colors:         # @gsicc_set_devicen_equiv_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 32
	subq	$1920, %rsp             # imm = 0x780
.Ltmp141:
	.cfi_def_cfa_offset 1952
.Ltmp142:
	.cfi_offset %rbx, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	(%rsp), %rdi
	movl	$1920, %edx             # imm = 0x780
	callq	memcpy
	movq	8(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$gs_color_space_type_ICC, %esi
	callq	gs_cspace_alloc
	testq	%rax, %rax
	je	.LBB22_1
# BB#2:                                 # %if.end
	movq	%r14, 64(%rax)
	movq	%rax, 1744(%rsp)
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1616(%r15)
	jmp	.LBB22_3
.LBB22_1:                               # %if.then
	movl	$.L__func__.gsicc_set_devicen_equiv_colors, %edi
	movl	$.L.str.1, %esi
	movl	$1293, %edx             # imm = 0x50D
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
.LBB22_3:                               # %cleanup
	addq	$1920, %rsp             # imm = 0x780
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gsicc_set_devicen_equiv_colors, .Lfunc_end22-gsicc_set_devicen_equiv_colors
	.cfi_endproc

	.globl	gsicc_set_device_profile_colorants
	.align	16, 0x90
	.type	gsicc_set_device_profile_colorants,@function
gsicc_set_device_profile_colorants:     # @gsicc_set_device_profile_colorants
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 128
.Ltmp152:
	.cfi_offset %rbx, -56
.Ltmp153:
	.cfi_offset %r12, -48
.Ltmp154:
	.cfi_offset %r13, -40
.Ltmp155:
	.cfi_offset %r14, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rsi
	callq	*1680(%rdi)
	movl	%eax, %r15d
	movq	64(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB23_45
# BB#1:                                 # %if.then
	testq	%r13, %r13
	je	.LBB23_3
# BB#2:
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	jmp	.LBB23_8
.LBB23_3:                               # %if.then.2
	movq	(%rbx), %rax
	movzbl	(%rax), %r14d
	imull	$13, %r14d, %esi
	addl	$-22, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.32, %edx
	callq	*64(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB23_46
# BB#4:                                 # %if.end
	xorl	%ebx, %ebx
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	gs_sprintf
	cmpl	$6, %r14d
	jb	.LBB23_7
# BB#5:
	addl	$-5, %r14d
	leaq	50(%rsp), %rbp
	.align	16, 0x90
.LBB23_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcat
	incl	%ebx
	cmpl	%r14d, %ebx
	jl	.LBB23_6
.LBB23_7:                               # %cleanup.thread
	leaq	50(%rsp), %rbp
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	strcat
	movl	$1, 28(%rsp)            # 4-byte Folded Spill
	movq	64(%rsp), %rbx
.LBB23_8:                               # %if.end.27
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	176(%rbx), %r14
	testq	%r14, %r14
	je	.LBB23_14
# BB#9:                                 # %land.lhs.true
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB23_15
# BB#10:                                # %land.lhs.true.36
	movq	%rbx, %rdi
	callq	strlen
	movslq	%r12d, %rcx
	cmpq	%rcx, %rax
	jne	.LBB23_15
# BB#11:                                # %if.then.43
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB23_12
.LBB23_15:                              # %if.then.62
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %r13
	cmpl	$0, (%r14)
	jle	.LBB23_18
# BB#16:                                # %for.body.lr.ph.i
	movq	8(%r14), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB23_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rsi
	movq	16(%rbp), %r15
	movl	$.L.str.86, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movl	$.L.str.86, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*24(%r13)
	incl	%ebx
	cmpl	(%r14), %ebx
	movq	%r15, %rbp
	jl	.LBB23_17
.LBB23_18:                              # %for.end.i
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB23_20
# BB#19:                                # %if.then.i
	movl	$.L.str.86, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB23_20:                              # %if.end.i
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB23_22
# BB#21:                                # %if.then.8.i
	movl	$.L.str.86, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB23_22:                              # %gsicc_free_spotnames.exit
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	24(%rax), %rbx
	movq	64(%rsp), %rax
	movq	176(%rax), %rsi
	movl	$.L.str.32, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	jmp	.LBB23_23
.LBB23_14:                              # %if.end.57
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	24(%rax), %rbx
	movq	24(%rax), %rax
	movq	200(%rax), %r13
.LBB23_23:                              # %if.end.67
	movq	200(%r13), %rdi
	movl	$40, %esi
	movl	$.L.str.87, %edx
	callq	*64(%rdi)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB23_25
# BB#24:                                # %if.end.i.96
	movl	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	$0, 24(%rax)
	movq	%rax, %r14
.LBB23_25:                              # %gsicc_new_namelist.exit
	movq	64(%rsp), %rax
	movq	%r14, 176(%rax)
	movl	%r12d, %esi
	incl	%esi
	movl	$.L.str.32, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, %rbp
	movq	%rbp, 16(%r14)
	testq	%rbp, %rbp
	je	.LBB23_26
# BB#29:                                # %if.end.80
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	memcpy
	movslq	%r12d, %rax
	movq	16(%r14), %rcx
	movb	$0, (%rcx,%rax)
	leaq	8(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	strtok
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB23_37
# BB#30:                                # %while.cond.89.preheader.lr.ph
	xorl	%r12d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB23_31:                              # %while.body.91
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movzbl	(%rbp), %ecx
	leaq	1(%rbp), %rax
	cmpl	$32, %ecx
	je	.LBB23_31
# BB#32:                                # %while.end
                                        #   in Loop: Header=BB23_31 Depth=1
	movzbl	%cl, %ecx
	cmpl	$32, %ecx
	cmoveq	%rax, %rbp
	movl	$st_gsicc_colorname, %esi
	movl	$.L.str.88, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	testq	%rax, %rax
	movl	$0, %ebx
	je	.LBB23_34
# BB#33:                                # %if.end.i.101
                                        #   in Loop: Header=BB23_31 Depth=1
	movl	$0, 8(%rax)
	movq	$0, (%rax)
	movq	$0, 16(%rax)
	movq	%rax, %rbx
.LBB23_34:                              # %gsicc_new_colorname.exit
                                        #   in Loop: Header=BB23_31 Depth=1
	movq	%rbx, (%r15)
	movq	%rbp, %rdi
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$.L.str.32, %edx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	*64(%r13)
	movq	%rax, (%rbx)
	cmpq	$0, 16(%r14)
	je	.LBB23_35
# BB#36:                                # %if.end.109
                                        #   in Loop: Header=BB23_31 Depth=1
	movslq	8(%rbx), %rdx
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	(%r15), %r15
	addq	$16, %r15
	incl	%r12d
	xorl	%edi, %edi
	movl	$.L.str.38, %esi
	callq	strtok
	testq	%rax, %rax
	jne	.LBB23_31
.LBB23_37:                              # %while.end.116
	movl	%r12d, (%r14)
	movl	$280, %esi              # imm = 0x118
	movl	$.L.str.32, %edx
	movq	%r13, %rdi
	callq	*64(%r13)
	movq	%rax, 24(%r14)
	testq	%rax, %rax
	je	.LBB23_38
# BB#39:                                # %if.end.126
	movl	%r12d, 12(%rax)
	movl	%r12d, 8(%rax)
	testl	%r12d, %r12d
	movq	40(%rsp), %r13          # 8-byte Reload
	jle	.LBB23_42
# BB#40:                                # %for.body.133.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	movl	%r12d, %r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB23_41:                              # %for.body.133
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	movl	$1, %ecx
	movq	%r13, %rdi
	callq	*1544(%r13)
	movq	16(%rbx), %rbx
	movq	24(%r14), %rcx
	movl	%eax, 24(%rcx,%rbp,4)
	incq	%rbp
	cmpl	%ebp, %r15d
	jne	.LBB23_41
.LBB23_42:                              # %for.end.145
	movl	$0, 32(%r14)
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	24(%rsp), %r15d         # 4-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	je	.LBB23_45
# BB#43:                                # %if.then.147
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str.32, %edx
	jmp	.LBB23_44
.LBB23_26:                              # %if.then.78
	movl	$.L.str.32, %edi
	movl	$.L.str.1, %esi
	movl	$1378, %edx             # imm = 0x562
	jmp	.LBB23_27
.LBB23_35:                              # %if.then.107
	movl	$.L.str.32, %edi
	movl	$.L.str.1, %esi
	movl	$1404, %edx             # imm = 0x57C
.LBB23_27:                              # %cleanup.157
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.37, %r9d
	jmp	.LBB23_28
.LBB23_46:                              # %cleanup
	movl	$.L.str.32, %edi
	movl	$.L.str.1, %esi
	movl	$1342, %edx             # imm = 0x53E
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.33, %r9d
	jmp	.LBB23_28
.LBB23_38:                              # %if.then.124
	movl	$.L.str.32, %edi
	movl	$.L.str.1, %esi
	movl	$1422, %edx             # imm = 0x58E
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.39, %r9d
.LBB23_28:                              # %cleanup.157
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %r15d
	jmp	.LBB23_45
.LBB23_12:                              # %if.then.50
	xorl	%r15d, %r15d
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB23_45
# BB#13:                                # %if.then.51
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.32, %edx
	movq	%r13, %rsi
.LBB23_44:                              # %cleanup.157
	callq	*24(%rdi)
.LBB23_45:                              # %cleanup.157
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gsicc_set_device_profile_colorants, .Lfunc_end23-gsicc_set_device_profile_colorants
	.cfi_endproc

	.globl	gsicc_init_device_profile_struct
	.align	16, 0x90
	.type	gsicc_init_device_profile_struct,@function
gsicc_init_device_profile_struct:       # @gsicc_init_device_profile_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp160:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp161:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp162:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp164:
	.cfi_def_cfa_offset 64
.Ltmp165:
	.cfi_offset %rbx, -56
.Ltmp166:
	.cfi_offset %r12, -48
.Ltmp167:
	.cfi_offset %r13, -40
.Ltmp168:
	.cfi_offset %r14, -32
.Ltmp169:
	.cfi_offset %r15, -24
.Ltmp170:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	1104(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB24_13
# BB#1:                                 # %if.then
	cmpl	$3, %r15d
	ja	.LBB24_3
# BB#2:                                 # %if.then.2
	movl	%r15d, %eax
	leaq	(%rbx,%rax,8), %rax
	jmp	.LBB24_6
.LBB24_13:                              # %if.else.76
	movq	24(%r12), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, 1104(%r12)
	movl	$-25, %r13d
	testq	%rax, %rax
	jne	.LBB24_14
	jmp	.LBB24_24
.LBB24_3:                               # %if.else
	cmpl	$4, %r15d
	jne	.LBB24_5
# BB#4:                                 # %if.then.4
	leaq	32(%rbx), %rax
	jmp	.LBB24_6
.LBB24_5:                               # %if.else.5
	leaq	40(%rbx), %rax
.LBB24_6:                               # %if.end.6
	testq	%rbp, %rbp
	je	.LBB24_14
# BB#7:                                 # %if.end.6
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB24_14
# BB#8:                                 # %if.then.10
	movq	320(%rax), %r14
	movq	%rbp, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	strncmp
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB24_24
# BB#9:                                 # %land.lhs.true
	movq	%r14, %rdi
	callq	strlen
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB24_24
# BB#10:                                # %do.body
	movl	%r15d, %r14d
	movq	(%rbx,%r14,8), %rsi
	testq	%rsi, %rsi
	je	.LBB24_14
# BB#11:                                # %do.end
	decq	288(%rsi)
	jne	.LBB24_14
# BB#12:                                # %do.end.43
	movq	296(%rsi), %rdi
	movl	$.L.str.40, %edx
	callq	*304(%rsi)
	movq	1104(%r12), %rax
	movq	$0, (%rax,%r14,8)
.LBB24_14:                              # %if.end.84
	movq	24(%r12), %rax
	testq	%rbp, %rbp
	je	.LBB24_15
# BB#23:                                # %if.else.116
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gsicc_set_device_profile # TAILCALL
.LBB24_15:                              # %if.then.86
	movl	$17, %esi
	movl	$.L.str.40, %edx
	movq	%rax, %rdi
	callq	*64(%rax)
	movq	%rax, %r14
	movl	$-25, %r13d
	testq	%r14, %r14
	je	.LBB24_24
# BB#16:                                # %if.end.92
	movl	100(%r12), %eax
	cmpl	$4, %eax
	je	.LBB24_21
# BB#17:                                # %if.end.92
	cmpl	$3, %eax
	jne	.LBB24_18
# BB#20:                                # %sw.bb.97
	movl	$.L.str.42, %edi
	callq	strlen
	movl	$.L.str.42, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncpy
	movl	$.L.str.42, %edi
	jmp	.LBB24_22
.LBB24_24:                              # %cleanup
	movl	%r13d, %eax
	jmp	.LBB24_25
.LBB24_18:                              # %if.end.92
	cmpl	$1, %eax
	jne	.LBB24_21
# BB#19:                                # %sw.bb
	movl	$.L.str.41, %edi
	callq	strlen
	movl	$.L.str.41, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncpy
	movl	$.L.str.41, %edi
	jmp	.LBB24_22
.LBB24_21:                              # %sw.default
	movl	$.L.str.43, %edi
	callq	strlen
	movl	$.L.str.43, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	strncpy
	movl	$.L.str.43, %edi
.LBB24_22:                              # %sw.epilog
	callq	strlen
	movb	$0, (%r14,%rax)
	movq	24(%r12), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	gsicc_set_device_profile
	movl	%eax, %ebx
	movq	24(%r12), %rdi
	movl	$.L.str.40, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	%ebx, %eax
.LBB24_25:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gsicc_init_device_profile_struct, .Lfunc_end24-gsicc_init_device_profile_struct
	.cfi_endproc

	.globl	gsicc_set_device_profile
	.align	16, 0x90
	.type	gsicc_set_device_profile,@function
gsicc_set_device_profile:               # @gsicc_set_device_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp174:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp175:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp177:
	.cfi_def_cfa_offset 64
.Ltmp178:
	.cfi_offset %rbx, -56
.Ltmp179:
	.cfi_offset %r12, -48
.Ltmp180:
	.cfi_offset %r13, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
.Ltmp183:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r14
	testq	%rbp, %rbp
	je	.LBB25_1
# BB#2:                                 # %if.then
	movq	%rbp, %rdi
	callq	strlen
	movq	192(%r13), %rdx
	movq	184(%rdx), %rcx
	movl	192(%rdx), %r8d
	leaq	(%rsp), %r9
	movq	%rbp, %rdi
	movl	%eax, %esi
	movq	%r13, %rdx
	callq	gsicc_open_search
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB25_28
# BB#3:                                 # %if.end
	movq	(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB25_27
# BB#4:                                 # %if.then.8
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	%eax, %ecx
	callq	gsicc_profile_new
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sfclose
	movl	$-25, %ebx
	testq	%r15, %r15
	je	.LBB25_28
# BB#5:                                 # %if.end.16
	cmpl	$3, %r12d
	ja	.LBB25_7
# BB#6:                                 # %do.end
	movl	%r12d, %eax
	movq	1104(%r14), %rcx
	movq	%r15, (%rcx,%rax,8)
	jmp	.LBB25_10
.LBB25_1:
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.86
	movl	$.L__func__.gsicc_set_device_profile, %edi
	movl	$.L.str.1, %esi
	movl	$1651, %edx             # imm = 0x673
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.44, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebx
	jmp	.LBB25_28
.LBB25_7:                               # %if.else
	movq	1104(%r14), %rax
	cmpl	$4, %r12d
	jne	.LBB25_9
# BB#8:                                 # %do.end.25
	movq	%r15, 32(%rax)
	jmp	.LBB25_10
.LBB25_9:                               # %do.end.30
	movq	%r15, 40(%rax)
.LBB25_10:                              # %if.end.33
	movq	256(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB25_12
# BB#11:                                # %if.end.33
	movl	220(%r15), %edx
	cmpl	$127, %edx
	jle	.LBB25_12
# BB#13:                                # %gsicc_get_profile_handle_buffer.exit
	movq	200(%r13), %rdi
	callq	gscms_get_profile_handle_mem
	movq	%rax, 280(%r15)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB25_28
# BB#14:                                # %if.end.39
	movq	256(%r15), %rdi
	movq	%r15, %rsi
	addq	$144, %rsi
	movl	220(%r15), %edx
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%r15)
	movq	280(%r15), %rdi
	callq	gscms_get_input_channel_count
	movb	%al, (%r15)
	movq	280(%r15), %rdi
	callq	gscms_get_output_channel_count
	movb	%al, 1(%r15)
	movq	280(%r15), %rdi
	callq	gscms_get_profile_data_space
	movl	%eax, 16(%r15)
	movzbl	(%r15), %eax
	cmpl	$4, %eax
	je	.LBB25_23
# BB#15:                                # %if.end.39
	cmpl	$3, %eax
	jne	.LBB25_16
# BB#20:                                # %sw.bb.62
	movq	320(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB25_22
# BB#21:
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_12:                              # %gsicc_get_profile_handle_buffer.exit.thread
	movq	$0, 280(%r15)
	movl	$-1, %ebx
.LBB25_28:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_23:                              # %sw.bb.72
	movq	320(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB25_25
# BB#24:
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_16:                              # %if.end.39
	cmpl	$1, %eax
	jne	.LBB25_26
# BB#17:                                # %sw.bb
	movq	320(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB25_19
# BB#18:
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_26:                              # %sw.default
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gsicc_set_device_profile_colorants
	jmp	.LBB25_28
.LBB25_25:                              # %if.then.79
	movl	$3, 12(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_22:                              # %if.then.69
	movl	$2, 12(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.LBB25_19:                              # %if.then.60
	movl	$1, 12(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB25_28
.Lfunc_end25:
	.size	gsicc_set_device_profile, .Lfunc_end25-gsicc_set_device_profile
	.cfi_endproc

	.globl	gsicc_get_dev_icccolorants
	.align	16, 0x90
	.type	gsicc_get_dev_icccolorants,@function
gsicc_get_dev_icccolorants:             # @gsicc_get_dev_icccolorants
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB26_3
# BB#1:                                 # %lor.lhs.false
	movq	176(%rdi), %rax
	testq	%rax, %rax
	je	.LBB26_3
# BB#2:                                 # %lor.lhs.false.2
	movq	16(%rax), %rax
	retq
.LBB26_3:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	gsicc_get_dev_icccolorants, .Lfunc_end26-gsicc_get_dev_icccolorants
	.cfi_endproc

	.globl	gsicc_set_gscs_profile
	.align	16, 0x90
	.type	gsicc_set_gscs_profile,@function
gsicc_set_gscs_profile:                 # @gsicc_set_gscs_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp186:
	.cfi_def_cfa_offset 32
.Ltmp187:
	.cfi_offset %rbx, -24
.Ltmp188:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	je	.LBB27_7
# BB#1:                                 # %do.body
	testq	%r14, %r14
	je	.LBB27_3
# BB#2:                                 # %do.body.2
	incq	288(%r14)
.LBB27_3:                               # %do.end.6
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB27_6
# BB#4:                                 # %do.end.15
	decq	288(%rsi)
	jne	.LBB27_6
# BB#5:                                 # %do.end.27
	movq	296(%rsi), %rdi
	movl	$.L.str.45, %edx
	callq	*304(%rsi)
	movq	$0, 64(%rbx)
.LBB27_6:                               # %if.end.40
	movq	%r14, 64(%rbx)
	xorl	%eax, %eax
.LBB27_7:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end27:
	.size	gsicc_set_gscs_profile, .Lfunc_end27-gsicc_set_gscs_profile
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_icc_profile,@function
rc_free_icc_profile:                    # @rc_free_icc_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp192:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp193:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp194:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp195:
	.cfi_def_cfa_offset 64
.Ltmp196:
	.cfi_offset %rbx, -56
.Ltmp197:
	.cfi_offset %r12, -48
.Ltmp198:
	.cfi_offset %r13, -40
.Ltmp199:
	.cfi_offset %r14, -32
.Ltmp200:
	.cfi_offset %r15, -24
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpq	$1, 288(%r14)
	jg	.LBB28_19
# BB#1:                                 # %if.then
	movq	328(%r14), %r15
	movq	256(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB28_3
# BB#2:                                 # %if.then.2
	movl	$.L.str.90, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 256(%r14)
.LBB28_3:                               # %do.end.7
	movq	280(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB28_5
# BB#4:                                 # %if.then.9
	callq	gscms_release_profile
	movq	$0, 280(%r14)
.LBB28_5:                               # %if.end.12
	movq	320(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB28_7
# BB#6:                                 # %if.then.14
	movl	$.L.str.90, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 320(%r14)
	movl	$0, 312(%r14)
.LBB28_7:                               # %if.end.19
	movl	$0, 152(%r14)
	movq	336(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB28_9
# BB#8:                                 # %if.then.21
	movl	$.L.str.90, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB28_9:                               # %if.end.25
	movq	272(%r14), %r12
	testq	%r12, %r12
	je	.LBB28_18
# BB#10:                                # %if.then.27
	cmpl	$0, (%r12)
	jle	.LBB28_13
# BB#11:                                # %for.body.lr.ph.i
	movq	8(%r12), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB28_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movq	16(%rbx), %r13
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	incl	%ebp
	cmpl	(%r12), %ebp
	movq	%r13, %rbx
	jl	.LBB28_12
.LBB28_13:                              # %for.end.i
	movq	24(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB28_15
# BB#14:                                # %if.then.i
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB28_15:                              # %if.end.i
	movq	16(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB28_17
# BB#16:                                # %if.then.8.i
	movl	$.L.str.86, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB28_17:                              # %gsicc_free_spotnames.exit
	movq	272(%r14), %rsi
	movl	$.L.str.90, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB28_18:                              # %if.end.32
	movq	24(%r15), %rax
	movl	$.L.str.90, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB28_19:                              # %if.end.35
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	rc_free_icc_profile, .Lfunc_end28-rc_free_icc_profile
	.cfi_endproc

	.globl	gsicc_init_gs_colors
	.align	16, 0x90
	.type	gsicc_init_gs_colors,@function
gsicc_init_gs_colors:                   # @gsicc_init_gs_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp203:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp204:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp206:
	.cfi_def_cfa_offset 48
.Ltmp207:
	.cfi_offset %rbx, -40
.Ltmp208:
	.cfi_offset %r14, -32
.Ltmp209:
	.cfi_offset %r15, -24
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-21, %ebp
	cmpl	$0, 1848(%rbx)
	jne	.LBB29_8
# BB#1:                                 # %for.cond.preheader
	movq	1744(%rbx), %r14
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	rc_increment_cs
	movq	%r15, 1744(%rbx)
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*80(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_2
# BB#4:                                 # %if.else
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	rc_decrement_only_cs
	movq	1768(%rbx), %r14
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	rc_increment_cs
	movq	%r15, 1768(%rbx)
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*80(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_5
# BB#6:                                 # %if.else.1
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	jmp	.LBB29_7
.LBB29_2:
	addq	$1744, %rbx             # imm = 0x6D0
	jmp	.LBB29_3
.LBB29_5:
	addq	$1768, %rbx             # imm = 0x6E8
.LBB29_3:                               # %if.then.7
	movq	%r14, (%rbx)
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
.LBB29_7:                               # %cleanup
	callq	rc_decrement_only_cs
.LBB29_8:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gsicc_init_gs_colors, .Lfunc_end29-gsicc_init_gs_colors
	.cfi_endproc

	.globl	gsicc_init_iccmanager
	.align	16, 0x90
	.type	gsicc_init_iccmanager,@function
gsicc_init_iccmanager:                  # @gsicc_init_iccmanager
	.cfi_startproc
# BB#0:                                 # %sw.epilog
	pushq	%r14
.Ltmp211:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp213:
	.cfi_def_cfa_offset 32
.Ltmp214:
	.cfi_offset %rbx, -24
.Ltmp215:
	.cfi_offset %r14, -16
	movq	336(%rdi), %r14
	cmpq	$0, 8(%r14)
	jne	.LBB30_2
# BB#1:                                 # %if.end
	movl	$.L.str.41, %edi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.41, %esi
	movl	$1, %ecx
	movq	%r14, %rdi
	callq	gsicc_set_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_8
.LBB30_2:                               # %sw.epilog.1
	cmpq	$0, 16(%r14)
	jne	.LBB30_4
# BB#3:                                 # %if.end.1
	movl	$.L.str.42, %edi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.42, %esi
	movl	$2, %ecx
	movq	%r14, %rdi
	callq	gsicc_set_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_8
.LBB30_4:                               # %sw.epilog.2
	cmpq	$0, 24(%r14)
	jne	.LBB30_6
# BB#5:                                 # %if.end.2
	movl	$.L.str.43, %edi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.43, %esi
	movl	$3, %ecx
	movq	%r14, %rdi
	callq	gsicc_set_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_8
.LBB30_6:                               # %if.end.3
	movl	$.L.str.71, %edi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.71, %esi
	movl	$5, %ecx
	movq	%r14, %rdi
	callq	gsicc_set_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_8
# BB#7:                                 # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB30_8:                               # %if.then.13
	movl	$.L__func__.gsicc_init_iccmanager, %edi
	movl	$.L.str.1, %esi
	movl	$1848, %edx             # imm = 0x738
	movl	$1, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end30:
	.size	gsicc_init_iccmanager, .Lfunc_end30-gsicc_init_iccmanager
	.cfi_endproc

	.globl	gsicc_manager_new
	.align	16, 0x90
	.type	gsicc_manager_new,@function
gsicc_manager_new:                      # @gsicc_manager_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$st_gsicc_manager, %esi
	movl	$.L.str.49, %edx
	callq	*72(%rdi)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB31_2
# BB#1:                                 # %do.body
	movq	$1, 88(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 96(%rax)
	movq	$rc_gsicc_manager_free, 104(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, (%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	%rcx, 80(%rax)
	movq	$0, 72(%rax)
	movl	$0, 64(%rax)
	movq	%rax, %rcx
.LBB31_2:                               # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end31:
	.size	gsicc_manager_new, .Lfunc_end31-gsicc_manager_new
	.cfi_endproc

	.align	16, 0x90
	.type	rc_gsicc_manager_free,@function
rc_gsicc_manager_free:                  # @rc_gsicc_manager_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp222:
	.cfi_def_cfa_offset 48
.Ltmp223:
	.cfi_offset %rbx, -40
.Ltmp224:
	.cfi_offset %r14, -32
.Ltmp225:
	.cfi_offset %r15, -24
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_3
# BB#1:                                 # %do.end
	decq	288(%rsi)
	jne	.LBB32_3
# BB#2:                                 # %do.end.14
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, 24(%r14)
.LBB32_3:                               # %do.body.29
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_6
# BB#4:                                 # %do.end.35
	decq	288(%rsi)
	jne	.LBB32_6
# BB#5:                                 # %do.end.50
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, 8(%r14)
.LBB32_6:                               # %do.body.69
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_9
# BB#7:                                 # %do.end.75
	decq	288(%rsi)
	jne	.LBB32_9
# BB#8:                                 # %do.end.90
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, 16(%r14)
.LBB32_9:                               # %do.body.109
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_12
# BB#10:                                # %do.end.115
	decq	288(%rsi)
	jne	.LBB32_12
# BB#11:                                # %do.end.130
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, (%r14)
.LBB32_12:                              # %do.body.149
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_15
# BB#13:                                # %do.end.155
	decq	288(%rsi)
	jne	.LBB32_15
# BB#14:                                # %do.end.170
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, 32(%r14)
.LBB32_15:                              # %do.body.189
	movq	40(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_18
# BB#16:                                # %do.end.195
	decq	288(%rsi)
	jne	.LBB32_18
# BB#17:                                # %do.end.210
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, 40(%r14)
.LBB32_18:                              # %do.body.229
	movq	72(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_21
# BB#19:                                # %do.end.235
	decq	224(%rsi)
	jne	.LBB32_21
# BB#20:                                # %do.end.250
	movq	232(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*240(%rsi)
	movq	$0, 72(%r14)
.LBB32_21:                              # %do.end.268
	movq	48(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB32_29
# BB#22:                                # %if.then.270
	cmpl	$0, 16(%rsi)
	jle	.LBB32_28
# BB#23:                                # %do.body.274.lr.ph
	movq	(%rsi), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB32_24:                              # %do.body.274
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_27
# BB#25:                                # %do.end.280
                                        #   in Loop: Header=BB32_24 Depth=1
	decq	288(%rsi)
	jne	.LBB32_27
# BB#26:                                # %do.end.295
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	$0, (%rbx)
.LBB32_27:                              # %do.end.313
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	8(%rbx), %r15
	movq	80(%r14), %rdi
	movl	$.L.str.92, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	incl	%ebp
	movq	48(%r14), %rsi
	cmpl	16(%rsi), %ebp
	movq	%r15, %rbx
	jl	.LBB32_24
.LBB32_28:                              # %for.end
	movq	80(%r14), %rdi
	movl	$.L.str.92, %edx
	callq	*24(%rdi)
.LBB32_29:                              # %if.end.321
	movq	56(%r14), %rax
	testq	%rax, %rax
	je	.LBB32_39
# BB#30:                                # %do.body.324
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB32_33
# BB#31:                                # %do.end.331
	decq	288(%rsi)
	jne	.LBB32_33
# BB#32:                                # %do.end.348
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	56(%r14), %rax
	movq	$0, (%rax)
.LBB32_33:                              # %do.body.371
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB32_36
# BB#34:                                # %do.end.378
	decq	288(%rsi)
	jne	.LBB32_36
# BB#35:                                # %do.end.395
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	56(%r14), %rax
	movq	$0, 8(%rax)
.LBB32_36:                              # %do.body.418
	movq	16(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB32_39
# BB#37:                                # %do.end.425
	decq	288(%rsi)
	jne	.LBB32_39
# BB#38:                                # %do.end.442
	movq	296(%rsi), %rdi
	movl	$.L.str.92, %edx
	callq	*304(%rsi)
	movq	56(%r14), %rax
	movq	$0, 16(%rax)
.LBB32_39:                              # %if.end.465
	movq	80(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.92, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end32:
	.size	rc_gsicc_manager_free, .Lfunc_end32-rc_gsicc_manager_free
	.cfi_endproc

	.globl	gsicc_init_hash_cs
	.align	16, 0x90
	.type	gsicc_init_hash_cs,@function
gsicc_init_hash_cs:                     # @gsicc_init_hash_cs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp228:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp229:
	.cfi_def_cfa_offset 32
.Ltmp230:
	.cfi_offset %rbx, -24
.Ltmp231:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 152(%rbx)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	256(%rbx), %rdi
	leaq	144(%rbx), %rsi
	movl	220(%rbx), %edx
	callq	gsicc_get_icc_buff_hash
	movl	$1, 152(%rbx)
.LBB33_2:                               # %if.end
	cmpl	$0, 12(%rbx)
	jne	.LBB33_13
# BB#3:                                 # %if.then.i
	movl	16(%rbx), %ecx
	decl	%ecx
	cmpl	$5, %ecx
	ja	.LBB33_13
# BB#4:                                 # %if.then.i
	movq	336(%r14), %rdx
	movq	144(%rbx), %rax
	jmpq	*.LJTI33_0(,%rcx,8)
.LBB33_5:                               # %sw.bb.i
	movq	8(%rdx), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB33_13
# BB#6:                                 # %if.then.5.i
	movl	$7, 12(%rbx)
	jmp	.LBB33_13
.LBB33_7:                               # %sw.bb.7.i
	movq	16(%rdx), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB33_13
# BB#8:                                 # %if.then.10.i
	movl	$8, 12(%rbx)
	jmp	.LBB33_13
.LBB33_9:                               # %sw.bb.13.i
	movq	24(%rdx), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB33_13
# BB#10:                                # %if.then.16.i
	movl	$9, 12(%rbx)
	jmp	.LBB33_13
.LBB33_11:                              # %sw.bb.19.i
	movq	32(%rdx), %rcx
	cmpq	144(%rcx), %rax
	jne	.LBB33_13
# BB#12:                                # %if.then.22.i
	movl	$10, 12(%rbx)
.LBB33_13:                              # %gsicc_set_default_cs_value.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	gsicc_init_hash_cs, .Lfunc_end33-gsicc_init_hash_cs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI33_0:
	.quad	.LBB33_5
	.quad	.LBB33_7
	.quad	.LBB33_9
	.quad	.LBB33_13
	.quad	.LBB33_13
	.quad	.LBB33_11

	.text
	.globl	gsicc_get_profile_handle_clist
	.align	16, 0x90
	.type	gsicc_get_profile_handle_clist,@function
gsicc_get_profile_handle_clist:         # @gsicc_get_profile_handle_clist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp235:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp236:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp238:
	.cfi_def_cfa_offset 320
.Ltmp239:
	.cfi_offset %rbx, -56
.Ltmp240:
	.cfi_offset %r12, -48
.Ltmp241:
	.cfi_offset %r13, -40
.Ltmp242:
	.cfi_offset %r14, -32
.Ltmp243:
	.cfi_offset %r15, -24
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	264(%r14), %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB34_12
# BB#1:                                 # %if.then
	movq	10160(%r15), %rax
	movl	(%rax), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	movl	$0, %ebx
	jle	.LBB34_12
# BB#2:                                 # %for.body.lr.ph.i
	movq	144(%r14), %rsi
	addq	$16, %rax
	.align	16, 0x90
.LBB34_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	cmpq	%rsi, (%rax)
	je	.LBB34_5
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB34_3 Depth=1
	addq	$24, %rax
	incl	%edx
	cmpl	%ecx, %edx
	movl	$0, %ebx
	jl	.LBB34_3
	jmp	.LBB34_12
.LBB34_5:                               # %gsicc_search_icc_table.exit
	movq	8(%rax), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	js	.LBB34_12
# BB#6:                                 # %if.end
	movl	$-256, %ebp
	addl	16(%rax), %ebp
	movq	200(%r12), %rdi
	movl	$.L.str.50, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testq	%r13, %r13
	je	.LBB34_12
# BB#7:                                 # %if.end.9
	movq	%r13, 256(%r14)
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	256(%rax), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	clist_read_chunk
	movq	200(%r12), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	gscms_get_profile_handle_mem
	movq	%rax, %rbx
	leaq	8(%rsp), %rcx
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	clist_read_chunk
	movl	228(%rsp), %eax
	movl	%eax, 220(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 16(%r14)
	movl	20(%rsp), %eax
	movl	%eax, 12(%r14)
	movl	160(%rsp), %eax
	movl	%eax, 152(%r14)
	movq	152(%rsp), %rax
	movq	%rax, 144(%r14)
	movl	12(%rsp), %eax
	movl	%eax, 4(%r14)
	movzbl	8(%rsp), %eax
	testq	%rax, %rax
	movb	%al, (%r14)
	movl	232(%rsp), %ecx
	movl	%ecx, 224(%r14)
	movq	252(%rsp), %rcx
	movq	%rcx, 244(%r14)
	movups	236(%rsp), %xmm0
	movups	%xmm0, 228(%r14)
	movl	16(%rsp), %ecx
	movl	%ecx, 8(%r14)
	je	.LBB34_12
# BB#8:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB34_10
# BB#9:                                 # %for.body.prol
	movl	32(%rsp), %ecx
	movl	%ecx, 24(%r14)
	movl	28(%rsp), %ecx
	movl	%ecx, 20(%r14)
	movl	$1, %ecx
.LBB34_10:                              # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB34_12
	.align	16, 0x90
.LBB34_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	32(%rsp,%rcx,8), %edx
	movl	%edx, 24(%r14,%rcx,8)
	movl	28(%rsp,%rcx,8), %edx
	movl	%edx, 20(%r14,%rcx,8)
	movl	40(%rsp,%rcx,8), %edx
	movl	%edx, 32(%r14,%rcx,8)
	movl	36(%rsp,%rcx,8), %edx
	movl	%edx, 28(%r14,%rcx,8)
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB34_11
.LBB34_12:                              # %cleanup
	movq	%rbx, %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gsicc_get_profile_handle_clist, .Lfunc_end34-gsicc_get_profile_handle_clist
	.cfi_endproc

	.globl	gsicc_get_gscs_profile
	.align	16, 0x90
	.type	gsicc_get_gscs_profile,@function
gsicc_get_gscs_profile:                 # @gsicc_get_gscs_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp247:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp248:
	.cfi_def_cfa_offset 48
.Ltmp249:
	.cfi_offset %rbx, -32
.Ltmp250:
	.cfi_offset %r14, -24
.Ltmp251:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	64(%r14), %rbx
	callq	gs_color_space_get_index
	testq	%rbx, %rbx
	jne	.LBB35_21
# BB#1:                                 # %if.end
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	cmpl	$8, %eax
	ja	.LBB35_21
# BB#2:                                 # %if.end
	jmpq	*.LJTI35_0(,%rcx,8)
.LBB35_3:                               # %sw.bb
	movq	8(%r15), %rbx
	jmp	.LBB35_21
.LBB35_4:                               # %sw.bb.1
	movq	16(%r15), %rbx
	jmp	.LBB35_21
.LBB35_5:                               # %sw.bb.2
	movq	24(%r15), %rbx
	jmp	.LBB35_21
.LBB35_6:                               # %sw.bb.5
	movq	24(%r15), %rbx
	movq	%rbx, 64(%r14)
	testq	%rbx, %rbx
	je	.LBB35_21
# BB#7:                                 # %do.body.10
	incq	288(%rbx)
	jmp	.LBB35_21
.LBB35_8:                               # %sw.bb.19
	movq	16(%r15), %rbx
	movq	%rbx, 64(%r14)
	testq	%rbx, %rbx
	je	.LBB35_21
# BB#9:                                 # %do.body.26
	incq	288(%rbx)
	jmp	.LBB35_21
.LBB35_10:                              # %sw.bb.40
	movq	80(%r15), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	gsicc_profile_new
	movq	%rax, 64(%r14)
	leaq	256(%rax), %rsi
	leaq	220(%rax), %rdx
	movq	80(%r15), %rcx
	movq	72(%r14), %r9
	leaq	6512(%r9), %r8
	subq	$-128, %r9
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	callq	gsicc_create_fromabc
	testl	%eax, %eax
	js	.LBB35_11
# BB#14:                                # %if.end.93
	cmpl	$0, 12(%rsp)
	movq	64(%r14), %rbx
	je	.LBB35_19
# BB#15:                                # %do.body.96
	testq	%rbx, %rbx
	je	.LBB35_18
# BB#16:                                # %do.end.103
	decq	288(%rbx)
	jne	.LBB35_18
# BB#17:                                # %do.end.118
	movq	296(%rbx), %rdi
	movl	$.L__func__.gsicc_get_gscs_profile, %edx
	movq	%rbx, %rsi
	callq	*304(%rbx)
	movq	$0, 64(%r14)
.LBB35_18:                              # %do.end.136
	movq	32(%r15), %rbx
	jmp	.LBB35_21
.LBB35_20:                              # %sw.bb.140
	movq	80(%r15), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	gsicc_profile_new
	movq	%rax, 64(%r14)
	leaq	256(%rax), %rsi
	leaq	220(%rax), %rdx
	movq	80(%r15), %rcx
	movq	72(%r14), %r9
	leaq	6448(%r9), %r8
	subq	$-128, %r9
	movq	%r14, %rdi
	callq	gsicc_create_froma
	movq	64(%r14), %rbx
	movl	$13, 12(%rbx)
	jmp	.LBB35_21
.LBB35_11:                              # %if.then.53
	xorl	%ebx, %ebx
	movl	$.L__func__.gsicc_get_gscs_profile, %edi
	movl	$.L.str.1, %esi
	movl	$2182, %edx             # imm = 0x886
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movq	64(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB35_21
# BB#12:                                # %do.end.62
	xorl	%ebx, %ebx
	decq	288(%rsi)
	jne	.LBB35_21
# BB#13:                                # %do.end.76
	movq	296(%rsi), %rdi
	movl	$.L__func__.gsicc_get_gscs_profile, %edx
	callq	*304(%rsi)
	movq	$0, 64(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB35_21
.LBB35_19:                              # %if.end.137
	movl	$14, 12(%rbx)
.LBB35_21:                              # %cleanup
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end35:
	.size	gsicc_get_gscs_profile, .Lfunc_end35-gsicc_get_gscs_profile
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI35_0:
	.quad	.LBB35_3
	.quad	.LBB35_4
	.quad	.LBB35_5
	.quad	.LBB35_21
	.quad	.LBB35_21
	.quad	.LBB35_6
	.quad	.LBB35_8
	.quad	.LBB35_10
	.quad	.LBB35_20

	.text
	.globl	gsicc_read_serial_icc
	.align	16, 0x90
	.type	gsicc_read_serial_icc,@function
gsicc_read_serial_icc:                  # @gsicc_read_serial_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp252:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp253:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp254:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp255:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp256:
	.cfi_def_cfa_offset 48
.Ltmp257:
	.cfi_offset %rbx, -40
.Ltmp258:
	.cfi_offset %r12, -32
.Ltmp259:
	.cfi_offset %r14, -24
.Ltmp260:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	24(%r15), %rsi
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	gsicc_profile_new
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB36_10
# BB#1:                                 # %if.end
	movq	10160(%r15), %rax
	testq	%rax, %rax
	jne	.LBB36_4
# BB#2:                                 # %if.then.2
	movq	%r15, %rdi
	callq	clist_read_icctable
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	.LBB36_10
# BB#3:                                 # %if.then.2.if.end.7_crit_edge
	movq	10160(%r15), %rax
.LBB36_4:                               # %if.end.7
	movl	(%rax), %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	movl	$0, %ebx
	jle	.LBB36_10
# BB#5:                                 # %for.body.lr.ph.i
	addq	$16, %rax
	.align	16, 0x90
.LBB36_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	cmpq	%r12, (%rax)
	je	.LBB36_8
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB36_6 Depth=1
	addq	$24, %rax
	incl	%edx
	cmpl	%ecx, %edx
	movl	$0, %ebx
	jl	.LBB36_6
	jmp	.LBB36_10
.LBB36_8:                               # %gsicc_search_icc_table.exit
	movq	8(%rax), %rsi
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	js	.LBB36_10
# BB#9:                                 # %if.end.12
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	clist_read_chunk
	movq	%r14, %rbx
.LBB36_10:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end36:
	.size	gsicc_read_serial_icc, .Lfunc_end36-gsicc_read_serial_icc
	.cfi_endproc

	.globl	gsicc_profile_serialize
	.align	16, 0x90
	.type	gsicc_profile_serialize,@function
gsicc_profile_serialize:                # @gsicc_profile_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB37_1
# BB#2:                                 # %if.end
	movl	$256, %edx              # imm = 0x100
	jmp	memcpy                  # TAILCALL
.LBB37_1:                               # %return
	retq
.Lfunc_end37:
	.size	gsicc_profile_serialize, .Lfunc_end37-gsicc_profile_serialize
	.cfi_endproc

	.globl	gsicc_getsrc_channel_count
	.align	16, 0x90
	.type	gsicc_getsrc_channel_count,@function
gsicc_getsrc_channel_count:             # @gsicc_getsrc_channel_count
	.cfi_startproc
# BB#0:                                 # %entry
	movq	280(%rdi), %rdi
	jmp	gscms_get_input_channel_count # TAILCALL
.Lfunc_end38:
	.size	gsicc_getsrc_channel_count, .Lfunc_end38-gsicc_getsrc_channel_count
	.cfi_endproc

	.globl	gsicc_profile_reference
	.align	16, 0x90
	.type	gsicc_profile_reference,@function
gsicc_profile_reference:                # @gsicc_profile_reference
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB39_2
# BB#1:                                 # %do.end
	movslq	%esi, %rcx
	addq	288(%rax), %rcx
	movq	%rcx, 288(%rax)
	je	.LBB39_3
.LBB39_2:                               # %if.end.19
	retq
.LBB39_3:                               # %do.end.11
	movq	296(%rax), %rdi
	movq	304(%rax), %rcx
	movl	$.L.str.52, %edx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end39:
	.size	gsicc_profile_reference, .Lfunc_end39-gsicc_profile_reference
	.cfi_endproc

	.globl	gsicc_get_srcprofile
	.align	16, 0x90
	.type	gsicc_get_srcprofile,@function
gsicc_get_srcprofile:                   # @gsicc_get_srcprofile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rcx)
	movl	$0, (%r8)
	andl	$-129, %esi
	cmpl	$1, %esi
	je	.LBB40_11
# BB#1:                                 # %entry
	cmpl	$2, %esi
	jne	.LBB40_2
# BB#7:                                 # %sw.bb.8
	cmpl	$3, %edi
	jne	.LBB40_8
# BB#10:                                # %if.then.17
	movq	104(%rdx), %rax
	movq	%rax, (%rcx)
	movq	160(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	144(%rdx), %xmm0
	movups	%xmm0, (%r8)
	retq
.LBB40_11:                              # %sw.bb.24
	cmpl	$3, %edi
	jne	.LBB40_12
# BB#14:                                # %if.then.33
	movq	112(%rdx), %rax
	movq	%rax, (%rcx)
	movq	184(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	168(%rdx), %xmm0
	movups	%xmm0, (%r8)
	jmp	.LBB40_15
.LBB40_2:                               # %entry
	cmpl	$4, %esi
	jne	.LBB40_15
# BB#3:                                 # %sw.bb.1
	cmpl	$3, %edi
	jne	.LBB40_4
# BB#6:                                 # %if.then.4
	movq	96(%rdx), %rax
	movq	%rax, (%rcx)
	movq	136(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	120(%rdx), %xmm0
	movups	%xmm0, (%r8)
	retq
.LBB40_8:                               # %sw.bb.8
	cmpl	$2, %edi
	jne	.LBB40_15
# BB#9:                                 # %if.then.10
	movq	8(%rdx), %rax
	movq	%rax, (%rcx)
	movq	64(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	48(%rdx), %xmm0
	movups	%xmm0, (%r8)
	retq
.LBB40_12:                              # %sw.bb.24
	cmpl	$2, %edi
	jne	.LBB40_15
# BB#13:                                # %if.then.26
	movq	16(%rdx), %rax
	movq	%rax, (%rcx)
	movq	88(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	72(%rdx), %xmm0
	movups	%xmm0, (%r8)
	retq
.LBB40_4:                               # %sw.bb.1
	cmpl	$2, %edi
	jne	.LBB40_15
# BB#5:                                 # %if.then
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	movq	40(%rdx), %rax
	movq	%rax, 16(%r8)
	movups	24(%rdx), %xmm0
	movups	%xmm0, (%r8)
	retq
.LBB40_15:                              # %sw.epilog
	retq
.Lfunc_end40:
	.size	gsicc_get_srcprofile, .Lfunc_end40-gsicc_get_srcprofile
	.cfi_endproc

	.globl	gsicc_extract_profile
	.align	16, 0x90
	.type	gsicc_extract_profile,@function
gsicc_extract_profile:                  # @gsicc_extract_profile
	.cfi_startproc
# BB#0:                                 # %entry
	andl	$-129, %edi
	cmpl	$1, %edi
	je	.LBB41_5
# BB#1:                                 # %entry
	cmpl	$2, %edi
	jne	.LBB41_2
# BB#4:                                 # %sw.bb.11
	movq	120(%rsi), %rax
	movq	%rax, 16(%rcx)
	movups	104(%rsi), %xmm0
	movups	%xmm0, (%rcx)
	movq	16(%rsi), %rax
	jmp	.LBB41_6
.LBB41_5:                               # %sw.bb.24
	movq	144(%rsi), %rax
	movq	%rax, 16(%rcx)
	movups	128(%rsi), %xmm0
	movups	%xmm0, (%rcx)
	movq	24(%rsi), %rax
	jmp	.LBB41_6
.LBB41_2:                               # %entry
	cmpl	$4, %edi
	jne	.LBB41_9
# BB#3:                                 # %sw.bb.2
	movq	96(%rsi), %rax
	movq	%rax, 16(%rcx)
	movups	80(%rsi), %xmm0
	movups	%xmm0, (%rcx)
	movq	8(%rsi), %rax
.LBB41_6:                               # %sw.bb.24
	testq	%rax, %rax
	jne	.LBB41_8
# BB#7:                                 # %if.else.33
	movq	(%rsi), %rax
.LBB41_8:                               # %sw.epilog
	movq	%rax, (%rdx)
	retq
.LBB41_9:                               # %sw.default
	movq	(%rsi), %rax
	movq	%rax, (%rdx)
	movq	72(%rsi), %rax
	movq	%rax, 16(%rcx)
	movups	56(%rsi), %xmm0
	movups	%xmm0, (%rcx)
	retq
.Lfunc_end41:
	.size	gsicc_extract_profile, .Lfunc_end41-gsicc_extract_profile
	.cfi_endproc

	.globl	gs_setoverrideicc
	.align	16, 0x90
	.type	gs_setoverrideicc,@function
gs_setoverrideicc:                      # @gs_setoverrideicc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	336(%rdi), %rax
	testq	%rax, %rax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	%esi, 64(%rax)
.LBB42_2:                               # %if.end
	retq
.Lfunc_end42:
	.size	gs_setoverrideicc, .Lfunc_end42-gs_setoverrideicc
	.cfi_endproc

	.globl	gs_currentoverrideicc
	.align	16, 0x90
	.type	gs_currentoverrideicc,@function
gs_currentoverrideicc:                  # @gs_currentoverrideicc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	336(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB43_2
# BB#1:                                 # %if.then
	movl	64(%rcx), %eax
.LBB43_2:                               # %return
	retq
.Lfunc_end43:
	.size	gs_currentoverrideicc, .Lfunc_end43-gs_currentoverrideicc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI44_0:
	.long	0                       # float 0.000000e+00
	.long	1120403456              # float 1.000000e+02
	.long	3271557120              # float -1.280000e+02
	.long	1123942400              # float 1.270000e+02
	.text
	.globl	gsicc_setrange_lab
	.align	16, 0x90
	.type	gsicc_setrange_lab,@function
gsicc_setrange_lab:                     # @gsicc_setrange_lab
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI44_0(%rip), %xmm0  # xmm0 = [0.000000e+00,1.000000e+02,-1.280000e+02,1.270000e+02]
	movups	%xmm0, 20(%rdi)
	movl	$-1023410176, 36(%rdi)  # imm = 0xFFFFFFFFC3000000
	movl	$1123942400, 40(%rdi)   # imm = 0x42FE0000
	retq
.Lfunc_end44:
	.size	gsicc_setrange_lab, .Lfunc_end44-gsicc_setrange_lab
	.cfi_endproc

	.globl	gs_currentdevicenicc
	.align	16, 0x90
	.type	gs_currentdevicenicc,@function
gs_currentdevicenicc:                   # @gs_currentdevicenicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB45_1
# BB#2:                                 # %if.else
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rdi
	movq	%rdi, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB45_3
.LBB45_1:                               # %if.then
	movq	$.L.str.53, (%rbx)
	movl	$.L.str.53, %edi
	movl	$1, %eax
.LBB45_3:                               # %if.end
	movl	%eax, 12(%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end45:
	.size	gs_currentdevicenicc, .Lfunc_end45-gs_currentdevicenicc
	.cfi_endproc

	.globl	gs_setdevicenprofileicc
	.align	16, 0x90
	.type	gs_setdevicenprofileicc,@function
gs_setdevicenprofileicc:                # @gs_setdevicenprofileicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp267:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp268:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp269:
	.cfi_def_cfa_offset 64
.Ltmp270:
	.cfi_offset %rbx, -56
.Ltmp271:
	.cfi_offset %r12, -48
.Ltmp272:
	.cfi_offset %r13, -40
.Ltmp273:
	.cfi_offset %r14, -32
.Ltmp274:
	.cfi_offset %r15, -24
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r12
	movslq	8(%r13), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB46_17
# BB#1:                                 # %if.then
	movq	8(%r12), %r14
	leal	1(%rbx), %esi
	movl	$.L.str.54, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB46_17
# BB#2:                                 # %if.end
	movq	(%r13), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r15,%rbx)
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	callq	strtok
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB46_16
# BB#3:                                 # %while.body.lr.ph
	movabsq	$-4294967296, %r13      # imm = 0xFFFFFFFF00000000
	.align	16, 0x90
.LBB46_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_6 Depth 2
                                        #     Child Loop BB46_11 Depth 2
	movq	%rbx, %rdi
	callq	strlen
	testl	%eax, %eax
	jle	.LBB46_8
# BB#5:                                 # %land.rhs.preheader
                                        #   in Loop: Header=BB46_4 Depth=1
	incl	%eax
	.align	16, 0x90
.LBB46_6:                               # %land.rhs
                                        #   Parent Loop BB46_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %ecx
	cmpl	$32, %ecx
	jne	.LBB46_8
# BB#7:                                 # %while.body.18
                                        #   in Loop: Header=BB46_6 Depth=2
	incq	%rbx
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB46_6
.LBB46_8:                               # %while.end
                                        #   in Loop: Header=BB46_4 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	testl	%eax, %eax
	jle	.LBB46_9
# BB#10:                                # %land.rhs.27.lr.ph
                                        #   in Loop: Header=BB46_4 Depth=1
	movq	%rax, %rcx
	shlq	$32, %rcx
	addq	%r13, %rcx
	sarq	$32, %rcx
	leaq	(%rcx,%rbx), %rcx
	.align	16, 0x90
.LBB46_11:                              # %land.rhs.27
                                        #   Parent Loop BB46_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %edx
	cmpl	$32, %edx
	jne	.LBB46_12
# BB#13:                                # %while.body.33
                                        #   in Loop: Header=BB46_11 Depth=2
	decq	%rcx
	leal	-1(%rax), %edx
	cmpl	$1, %eax
	movl	%edx, %eax
	jg	.LBB46_11
	jmp	.LBB46_14
	.align	16, 0x90
.LBB46_9:                               #   in Loop: Header=BB46_4 Depth=1
	movl	%eax, %edx
	jmp	.LBB46_14
	.align	16, 0x90
.LBB46_12:                              #   in Loop: Header=BB46_4 Depth=1
	movl	%eax, %edx
.LBB46_14:                              # %while.end.36
                                        #   in Loop: Header=BB46_4 Depth=1
	movq	336(%r12), %rdi
	movl	$6, %ecx
	movq	%rbx, %rsi
	callq	gsicc_set_profile
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB46_18
# BB#15:                                # %if.end.42
                                        #   in Loop: Header=BB46_4 Depth=1
	xorl	%edi, %edi
	movl	$.L.str.55, %esi
	callq	strtok
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB46_4
.LBB46_16:                              # %while.end.44
	movl	$.L.str.54, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
.LBB46_17:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_18:                              # %if.then.40
	movl	$.L__func__.gs_setdevicenprofileicc, %edi
	movl	$.L.str.1, %esi
	movl	$2496, %edx             # imm = 0x9C0
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end46:
	.size	gs_setdevicenprofileicc, .Lfunc_end46-gs_setdevicenprofileicc
	.cfi_endproc

	.globl	gs_currentdefaultgrayicc
	.align	16, 0x90
	.type	gs_currentdefaultgrayicc,@function
gs_currentdefaultgrayicc:               # @gs_currentdefaultgrayicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB47_1
# BB#2:                                 # %if.else
	movq	320(%rax), %rdi
	movq	%rdi, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB47_3
.LBB47_1:                               # %if.then
	movq	$.L.str.41, (%rbx)
	movl	$.L.str.41, %edi
	movl	$1, %eax
.LBB47_3:                               # %if.end
	movl	%eax, 12(%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end47:
	.size	gs_currentdefaultgrayicc, .Lfunc_end47-gs_currentdefaultgrayicc
	.cfi_endproc

	.globl	gs_setdefaultgrayicc
	.align	16, 0x90
	.type	gs_setdefaultgrayicc,@function
gs_setdefaultgrayicc:                   # @gs_setdefaultgrayicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp280:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp281:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp282:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp284:
	.cfi_def_cfa_offset 64
.Ltmp285:
	.cfi_offset %rbx, -56
.Ltmp286:
	.cfi_offset %r12, -48
.Ltmp287:
	.cfi_offset %r13, -40
.Ltmp288:
	.cfi_offset %r14, -32
.Ltmp289:
	.cfi_offset %r15, -24
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	8(%r14), %r13
	leal	1(%r13), %r15d
	movq	8(%r12), %rbp
	movq	336(%r12), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$.L.str.57, %edx
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movl	$-25, %r8d
	testq	%rbx, %rbx
	je	.LBB48_7
# BB#1:                                 # %if.end
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r13)
	movq	336(%r12), %rdi
	movl	$1, %ecx
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	gsicc_set_profile
	movl	%eax, %r14d
	movl	$.L.str.57, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	%r14d, %r8d
	testl	%r8d, %r8d
	js	.LBB48_2
# BB#4:                                 # %if.end.13
	cmpq	$0, (%rsp)              # 8-byte Folded Reload
	jne	.LBB48_7
# BB#5:                                 # %if.end.16
	movq	%r12, %rdi
	callq	gsicc_init_gs_colors
	movl	%eax, %r8d
	testl	%r8d, %r8d
	js	.LBB48_6
.LBB48_7:                               # %cleanup
	movl	%r8d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_2:                               # %if.then.11
	movl	$.L__func__.gs_setdefaultgrayicc, %edi
	movl	$.L.str.1, %esi
	movl	$2547, %edx             # imm = 0x9F3
	xorl	%ecx, %ecx
	movl	$.L.str.58, %r9d
	jmp	.LBB48_3
.LBB48_6:                               # %if.then.19
	movl	$.L__func__.gs_setdefaultgrayicc, %edi
	movl	$.L.str.1, %esi
	movl	$2554, %edx             # imm = 0x9FA
	xorl	%ecx, %ecx
	movl	$.L.str.59, %r9d
.LBB48_3:                               # %if.then.11
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end48:
	.size	gs_setdefaultgrayicc, .Lfunc_end48-gs_setdefaultgrayicc
	.cfi_endproc

	.globl	gs_currenticcdirectory
	.align	16, 0x90
	.type	gs_currenticcdirectory,@function
gs_currenticcdirectory:                 # @gs_currenticcdirectory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rdi), %rax
	movq	192(%rax), %rax
	movq	184(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB49_1
# BB#2:                                 # %if.else
	movq	%rcx, (%rbx)
	movl	192(%rax), %eax
	xorl	%ecx, %ecx
	jmp	.LBB49_3
.LBB49_1:                               # %if.then
	movq	$.L.str.60, (%rbx)
	movl	$.L.str.60, %edi
	callq	strlen
	movl	$1, %ecx
.LBB49_3:                               # %if.end
	movl	%eax, 8(%rbx)
	movl	%ecx, 12(%rbx)
	popq	%rbx
	retq
.Lfunc_end49:
	.size	gs_currenticcdirectory, .Lfunc_end49-gs_currenticcdirectory
	.cfi_endproc

	.globl	gs_seticcdirectory
	.align	16, 0x90
	.type	gs_seticcdirectory,@function
gs_seticcdirectory:                     # @gs_seticcdirectory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp293:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp294:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp295:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp296:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp297:
	.cfi_def_cfa_offset 48
.Ltmp298:
	.cfi_offset %rbx, -48
.Ltmp299:
	.cfi_offset %r12, -40
.Ltmp300:
	.cfi_offset %r14, -32
.Ltmp301:
	.cfi_offset %r15, -24
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movslq	8(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB50_3
# BB#1:                                 # %if.then
	leal	1(%rbx), %r15d
	movq	8(%rdi), %r14
	movl	$.L.str.61, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*64(%r14)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB50_4
# BB#2:                                 # %if.end
	movq	(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rbp,%rbx)
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%r15d, %edx
	callq	gs_lib_ctx_set_icc_directory
	movl	$.L.str.61, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
.LBB50_3:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB50_4:                               # %if.then.3
	movl	$.L__func__.gs_seticcdirectory, %edi
	movl	$.L.str.1, %esi
	movl	$2587, %edx             # imm = 0xA1B
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.62, %r9d
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end50:
	.size	gs_seticcdirectory, .Lfunc_end50-gs_seticcdirectory
	.cfi_endproc

	.globl	gs_currentsrcgtagicc
	.align	16, 0x90
	.type	gs_currentsrcgtagicc,@function
gs_currentsrcgtagicc:                   # @gs_currentsrcgtagicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.LBB51_1
# BB#2:                                 # %if.else
	movq	216(%rax), %rdi
	movq	%rdi, (%rbx)
	callq	strlen
	xorl	%ecx, %ecx
	jmp	.LBB51_3
.LBB51_1:                               # %if.then
	movq	$0, (%rbx)
	movl	$1, %ecx
	xorl	%eax, %eax
.LBB51_3:                               # %if.end
	movl	%eax, 8(%rbx)
	movl	%ecx, 12(%rbx)
	popq	%rbx
	retq
.Lfunc_end51:
	.size	gs_currentsrcgtagicc, .Lfunc_end51-gs_currentsrcgtagicc
	.cfi_endproc

	.globl	gs_setsrcgtagicc
	.align	16, 0x90
	.type	gs_setsrcgtagicc,@function
gs_setsrcgtagicc:                       # @gs_setsrcgtagicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp306:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp307:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp308:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp309:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp310:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp311:
	.cfi_def_cfa_offset 64
.Ltmp312:
	.cfi_offset %rbx, -56
.Ltmp313:
	.cfi_offset %r12, -48
.Ltmp314:
	.cfi_offset %r13, -40
.Ltmp315:
	.cfi_offset %r14, -32
.Ltmp316:
	.cfi_offset %r15, -24
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r15
	movslq	8(%r13), %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB52_3
# BB#1:                                 # %if.end
	leal	1(%rbx), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	8(%r15), %r14
	movl	$.L.str.63, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB52_3
# BB#2:                                 # %if.end.4
	movq	(%r13), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%rbp,%rbx)
	movq	336(%r15), %rdi
	movq	%rbp, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gsicc_set_srcgtag_struct
	movl	%eax, %r12d
	movl	$.L.str.63, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*24(%r14)
	testl	%r12d, %r12d
	js	.LBB52_4
.LBB52_3:                               # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB52_4:                               # %if.then.11
	movl	$.L__func__.gs_setsrcgtagicc, %edi
	movl	$.L.str.1, %esi
	movl	$2628, %edx             # imm = 0xA44
	movl	$1, %ecx
	movl	$.L.str.64, %r9d
	xorl	%eax, %eax
	movl	%r12d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end52:
	.size	gs_setsrcgtagicc, .Lfunc_end52-gs_setsrcgtagicc
	.cfi_endproc

	.globl	gs_currentdefaultrgbicc
	.align	16, 0x90
	.type	gs_currentdefaultrgbicc,@function
gs_currentdefaultrgbicc:                # @gs_currentdefaultrgbicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB53_1
# BB#2:                                 # %if.else
	movq	320(%rax), %rdi
	movq	%rdi, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB53_3
.LBB53_1:                               # %if.then
	movq	$.L.str.42, (%rbx)
	movl	$.L.str.42, %edi
	movl	$1, %eax
.LBB53_3:                               # %if.end
	movl	%eax, 12(%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end53:
	.size	gs_currentdefaultrgbicc, .Lfunc_end53-gs_currentdefaultrgbicc
	.cfi_endproc

	.globl	gs_setdefaultrgbicc
	.align	16, 0x90
	.type	gs_setdefaultrgbicc,@function
gs_setdefaultrgbicc:                    # @gs_setdefaultrgbicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp320:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp321:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp322:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp323:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp324:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp325:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp326:
	.cfi_def_cfa_offset 64
.Ltmp327:
	.cfi_offset %rbx, -56
.Ltmp328:
	.cfi_offset %r12, -48
.Ltmp329:
	.cfi_offset %r13, -40
.Ltmp330:
	.cfi_offset %r14, -32
.Ltmp331:
	.cfi_offset %r15, -24
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	8(%r14), %r13
	leal	1(%r13), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	8(%r12), %rbx
	movl	$.L.str.65, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB54_2
# BB#1:                                 # %if.end
	movq	(%r14), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r13)
	movq	336(%r12), %rdi
	movl	$2, %ecx
	movq	%rbp, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gsicc_set_profile
	movl	%eax, %r15d
	movl	$.L.str.65, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	testl	%r15d, %r15d
	js	.LBB54_3
.LBB54_2:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_3:                               # %if.then.7
	movl	$.L__func__.gs_setdefaultrgbicc, %edi
	movl	$.L.str.1, %esi
	movl	$2666, %edx             # imm = 0xA6A
	movl	$1, %ecx
	movl	$.L.str.66, %r9d
	xorl	%eax, %eax
	movl	%r15d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end54:
	.size	gs_setdefaultrgbicc, .Lfunc_end54-gs_setdefaultrgbicc
	.cfi_endproc

	.globl	gs_currentnamedicc
	.align	16, 0x90
	.type	gs_currentnamedicc,@function
gs_currentnamedicc:                     # @gs_currentnamedicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB55_1
# BB#2:                                 # %if.else
	movq	320(%rax), %rdi
	movq	%rdi, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB55_3
.LBB55_1:                               # %if.then
	movq	$.L.str.53, (%rbx)
	movl	$.L.str.53, %edi
	movl	$1, %eax
.LBB55_3:                               # %if.end
	movl	%eax, 12(%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end55:
	.size	gs_currentnamedicc, .Lfunc_end55-gs_currentnamedicc
	.cfi_endproc

	.globl	gs_setnamedprofileicc
	.align	16, 0x90
	.type	gs_setnamedprofileicc,@function
gs_setnamedprofileicc:                  # @gs_setnamedprofileicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp335:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp336:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp337:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp338:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp339:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp340:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp341:
	.cfi_def_cfa_offset 64
.Ltmp342:
	.cfi_offset %rbx, -56
.Ltmp343:
	.cfi_offset %r12, -48
.Ltmp344:
	.cfi_offset %r13, -40
.Ltmp345:
	.cfi_offset %r14, -32
.Ltmp346:
	.cfi_offset %r15, -24
.Ltmp347:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movslq	8(%r12), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB56_3
# BB#1:                                 # %if.then
	leal	1(%rbx), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	8(%r15), %r14
	movl	$.L.str.67, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB56_3
# BB#2:                                 # %if.end
	movq	(%r12), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r13,%rbx)
	movq	336(%r15), %rdi
	movl	$4, %ecx
	movq	%r13, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gsicc_set_profile
	movl	%eax, %ebp
	movl	$.L.str.67, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	*24(%r14)
	testl	%ebp, %ebp
	js	.LBB56_4
.LBB56_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_4:                               # %if.then.10
	movl	$.L__func__.gs_setnamedprofileicc, %edi
	movl	$.L.str.1, %esi
	movl	$2706, %edx             # imm = 0xA92
	movl	$1, %ecx
	movl	$.L.str.68, %r9d
	xorl	%eax, %eax
	movl	%ebp, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end56:
	.size	gs_setnamedprofileicc, .Lfunc_end56-gs_setnamedprofileicc
	.cfi_endproc

	.globl	gs_currentdefaultcmykicc
	.align	16, 0x90
	.type	gs_currentdefaultcmykicc,@function
gs_currentdefaultcmykicc:               # @gs_currentdefaultcmykicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB57_1
# BB#2:                                 # %if.else
	movq	320(%rax), %rdi
	movq	%rdi, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB57_3
.LBB57_1:                               # %if.then
	movq	$.L.str.43, (%rbx)
	movl	$.L.str.43, %edi
	movl	$1, %eax
.LBB57_3:                               # %if.end
	movl	%eax, 12(%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end57:
	.size	gs_currentdefaultcmykicc, .Lfunc_end57-gs_currentdefaultcmykicc
	.cfi_endproc

	.globl	gs_setdefaultcmykicc
	.align	16, 0x90
	.type	gs_setdefaultcmykicc,@function
gs_setdefaultcmykicc:                   # @gs_setdefaultcmykicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp350:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp351:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp352:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp353:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp354:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp355:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp356:
	.cfi_def_cfa_offset 64
.Ltmp357:
	.cfi_offset %rbx, -56
.Ltmp358:
	.cfi_offset %r12, -48
.Ltmp359:
	.cfi_offset %r13, -40
.Ltmp360:
	.cfi_offset %r14, -32
.Ltmp361:
	.cfi_offset %r15, -24
.Ltmp362:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	8(%r14), %r13
	leal	1(%r13), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	8(%r12), %rbx
	movl	$.L.str.69, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB58_2
# BB#1:                                 # %if.end
	movq	(%r14), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r13)
	movq	336(%r12), %rdi
	movl	$3, %ecx
	movq	%rbp, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gsicc_set_profile
	movl	%eax, %r15d
	movl	$.L.str.69, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	testl	%r15d, %r15d
	js	.LBB58_3
.LBB58_2:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_3:                               # %if.then.7
	movl	$.L__func__.gs_setdefaultcmykicc, %edi
	movl	$.L.str.1, %esi
	movl	$2746, %edx             # imm = 0xABA
	xorl	%ecx, %ecx
	movl	$.L.str.70, %r9d
	xorl	%eax, %eax
	movl	%r15d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end58:
	.size	gs_setdefaultcmykicc, .Lfunc_end58-gs_setdefaultcmykicc
	.cfi_endproc

	.globl	gs_currentlabicc
	.align	16, 0x90
	.type	gs_currentlabicc,@function
gs_currentlabicc:                       # @gs_currentlabicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	336(%rdi), %rax
	movq	32(%rax), %rax
	movl	$.L.str.71, %edi
	testq	%rax, %rax
	je	.LBB59_2
# BB#1:                                 # %cond.false
	movq	320(%rax), %rdi
.LBB59_2:                               # %cond.end
	movq	%rdi, (%rbx)
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$1, 12(%rbx)
	popq	%rbx
	retq
.Lfunc_end59:
	.size	gs_currentlabicc, .Lfunc_end59-gs_currentlabicc
	.cfi_endproc

	.globl	gs_setlabicc
	.align	16, 0x90
	.type	gs_setlabicc,@function
gs_setlabicc:                           # @gs_setlabicc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp365:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp366:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp367:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp368:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp369:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp370:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp371:
	.cfi_def_cfa_offset 64
.Ltmp372:
	.cfi_offset %rbx, -56
.Ltmp373:
	.cfi_offset %r12, -48
.Ltmp374:
	.cfi_offset %r13, -40
.Ltmp375:
	.cfi_offset %r14, -32
.Ltmp376:
	.cfi_offset %r15, -24
.Ltmp377:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movslq	8(%r14), %r13
	leal	1(%r13), %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	8(%r12), %rbx
	movl	$.L.str.72, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r15d
	testq	%rbp, %rbp
	je	.LBB60_2
# BB#1:                                 # %if.end
	movq	(%r14), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, (%rbp,%r13)
	movq	336(%r12), %rdi
	movl	$5, %ecx
	movq	%rbp, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	gsicc_set_profile
	movl	%eax, %r15d
	movl	$.L.str.72, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	testl	%r15d, %r15d
	js	.LBB60_3
.LBB60_2:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_3:                               # %if.then.7
	movl	$.L__func__.gs_setlabicc, %edi
	movl	$.L.str.1, %esi
	movl	$2780, %edx             # imm = 0xADC
	xorl	%ecx, %ecx
	movl	$.L.str.73, %r9d
	xorl	%eax, %eax
	movl	%r15d, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.Lfunc_end60:
	.size	gs_setlabicc, .Lfunc_end60-gs_setlabicc
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_srcgtag_profile,@function
rc_free_srcgtag_profile:                # @rc_free_srcgtag_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp378:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp379:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp380:
	.cfi_def_cfa_offset 32
.Ltmp381:
	.cfi_offset %rbx, -32
.Ltmp382:
	.cfi_offset %r14, -24
.Ltmp383:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	cmpq	$1, 224(%r15)
	jg	.LBB61_13
# BB#1:                                 # %for.cond.preheader
	movq	200(%r15), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB61_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB61_5
# BB#3:                                 # %do.end
                                        #   in Loop: Header=BB61_2 Depth=1
	decq	288(%rsi)
	jne	.LBB61_5
# BB#4:                                 # %do.end.27
                                        #   in Loop: Header=BB61_2 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.84, %edx
	callq	*304(%rsi)
	movq	$0, (%r15,%rbx,8)
.LBB61_5:                               # %if.end.51
                                        #   in Loop: Header=BB61_2 Depth=1
	movq	96(%r15,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB61_8
# BB#6:                                 # %do.end.65
                                        #   in Loop: Header=BB61_2 Depth=1
	decq	288(%rsi)
	jne	.LBB61_8
# BB#7:                                 # %do.end.84
                                        #   in Loop: Header=BB61_2 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.84, %edx
	callq	*304(%rsi)
	movq	$0, 96(%r15,%rbx,8)
.LBB61_8:                               # %if.end.111
                                        #   in Loop: Header=BB61_2 Depth=1
	movq	192(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB61_11
# BB#9:                                 # %do.end.121
                                        #   in Loop: Header=BB61_2 Depth=1
	decq	288(%rsi)
	jne	.LBB61_11
# BB#10:                                # %do.end.136
                                        #   in Loop: Header=BB61_2 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.84, %edx
	callq	*304(%rsi)
	movq	$0, 192(%r15)
.LBB61_11:                              # %for.inc
                                        #   in Loop: Header=BB61_2 Depth=1
	incq	%rbx
	cmpq	$3, %rbx
	jne	.LBB61_2
# BB#12:                                # %for.end
	movq	216(%r15), %rsi
	movl	$.L.str.84, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	24(%r14), %rax
	movl	$.L.str.84, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB61_13:                              # %if.end.158
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end61:
	.size	rc_free_srcgtag_profile, .Lfunc_end61-rc_free_srcgtag_profile
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsicc_new_iccsmask"
	.size	.L.str, 19

	.type	.L__func__.gsicc_initialize_iccsmask,@object # @__func__.gsicc_initialize_iccsmask
.L__func__.gsicc_initialize_iccsmask:
	.asciz	"gsicc_initialize_iccsmask"
	.size	.L__func__.gsicc_initialize_iccsmask, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./base/gsicc_manage.c"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"insufficient memory to allocate smask profiles"
	.size	.L.str.2, 47

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ps_gray.icc"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"failed to load gray smask profile"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ps_rgb.icc"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"failed to load rgb smask profile"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ps_cmyk.icc"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"failed to load cmyk smask profile"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ColorTune"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Graphic_CMYK"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Image_CMYK"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Text_CMYK"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Graphic_RGB"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Image_RGB"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Text_RGB"
	.size	.L.str.15, 9

	.type	.L__func__.gsicc_set_srcgtag_struct,@object # @__func__.gsicc_set_srcgtag_struct
.L__func__.gsicc_set_srcgtag_struct:
	.asciz	"gsicc_set_srcgtag_struct"
	.size	.L__func__.gsicc_set_srcgtag_struct, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"setting of %s src obj color info failed"
	.size	.L.str.16, 40

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%%ds"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\t,\032\n\r"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"None"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Replace"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"failed to find key in %s"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Error in srcgtag data %s"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Insufficient memory for tag name"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"OIProfile"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gsicc_set_profile"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"problems with profile %s"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Insufficient memory for profile name"
	.size	.L.str.27, 37

	.type	.L__func__.gsicc_initialize_default_profile,@object # @__func__.gsicc_initialize_default_profile
.L__func__.gsicc_initialize_default_profile:
	.asciz	"gsicc_initialize_default_profile"
	.size	.L__func__.gsicc_initialize_default_profile, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"allocation of profile %s handle failed"
	.size	.L.str.28, 39

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A default profile has an incorrect color space"
	.size	.L.str.29, 47

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gsicc_new_device_profile_array"
	.size	.L.str.30, 31

	.type	.L__func__.gsicc_set_devicen_equiv_colors,@object # @__func__.gsicc_set_devicen_equiv_colors
.L__func__.gsicc_set_devicen_equiv_colors:
	.asciz	"gsicc_set_devicen_equiv_colors"
	.size	.L__func__.gsicc_set_devicen_equiv_colors, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Insufficient memory for devn equiv colors"
	.size	.L.str.31, 42

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gsicc_set_device_profile_colorants"
	.size	.L.str.32, 35

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Insufficient memory for colorant name"
	.size	.L.str.33, 38

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Cyan, Magenta, Yellow, Black,"
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ICC_COLOR_%d,"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"ICC_COLOR_%d"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Insufficient memory for spot name"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	","
	.size	.L.str.38, 2

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Insufficient memory for spot color map"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gsicc_init_device_profile_struct"
	.size	.L.str.40, 33

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"default_gray.icc"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"default_rgb.icc"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"default_cmyk.icc"
	.size	.L.str.43, 17

	.type	.L__func__.gsicc_set_device_profile,@object # @__func__.gsicc_set_device_profile
.L__func__.gsicc_set_device_profile:
	.asciz	"gsicc_set_device_profile"
	.size	.L__func__.gsicc_set_device_profile, 25

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cannot find device profile"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gsicc_set_gscs_profile"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gsicc_profile_new"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gsicc_init_gs_colors"
	.size	.L.str.47, 21

	.type	.L__func__.gsicc_init_iccmanager,@object # @__func__.gsicc_init_iccmanager
.L__func__.gsicc_init_iccmanager:
	.asciz	"gsicc_init_iccmanager"
	.size	.L__func__.gsicc_init_iccmanager, 22

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"cannot find default icc profile"
	.size	.L.str.48, 32

	.type	st_gsicc_manager,@object # @st_gsicc_manager
	.section	.rodata,"a",@progbits
	.align	8
st_gsicc_manager:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gsicc_manager_profile_reloc_ptrs
	.size	st_gsicc_manager, 64

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"gsicc_manager_new"
	.size	.L.str.49, 18

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gsicc_get_profile_handle_clist"
	.size	.L.str.50, 31

	.type	.L__func__.gsicc_get_gscs_profile,@object # @__func__.gsicc_get_gscs_profile
.L__func__.gsicc_get_gscs_profile:
	.asciz	"gsicc_get_gscs_profile"
	.size	.L__func__.gsicc_get_gscs_profile, 23

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Failed to create ICC profile from CIEABC"
	.size	.L.str.51, 41

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gsicc_profile_reference"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.zero	1
	.size	.L.str.53, 1

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"set_devicen_profile_icc"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	",;"
	.size	.L.str.55, 3

	.type	.L__func__.gs_setdevicenprofileicc,@object # @__func__.gs_setdevicenprofileicc
.L__func__.gs_setdevicenprofileicc:
	.asciz	"gs_setdevicenprofileicc"
	.size	.L__func__.gs_setdevicenprofileicc, 24

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"cannot find devicen icc profile"
	.size	.L.str.56, 32

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"set_default_gray_icc"
	.size	.L.str.57, 21

	.type	.L__func__.gs_setdefaultgrayicc,@object # @__func__.gs_setdefaultgrayicc
.L__func__.gs_setdefaultgrayicc:
	.asciz	"gs_setdefaultgrayicc"
	.size	.L__func__.gs_setdefaultgrayicc, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"cannot find default gray icc profile"
	.size	.L.str.58, 37

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"error initializing gstate color spaces to icc"
	.size	.L.str.59, 46

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%rom%iccprofiles/"
	.size	.L.str.60, 18

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"set_icc_directory"
	.size	.L.str.61, 18

	.type	.L__func__.gs_seticcdirectory,@object # @__func__.gs_seticcdirectory
.L__func__.gs_seticcdirectory:
	.asciz	"gs_seticcdirectory"
	.size	.L__func__.gs_seticcdirectory, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"cannot allocate directory name"
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"set_srcgtag_icc"
	.size	.L.str.63, 16

	.type	.L__func__.gs_setsrcgtagicc,@object # @__func__.gs_setsrcgtagicc
.L__func__.gs_setsrcgtagicc:
	.asciz	"gs_setsrcgtagicc"
	.size	.L__func__.gs_setsrcgtagicc, 17

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"cannot find srctag file"
	.size	.L.str.64, 24

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"set_default_rgb_icc"
	.size	.L.str.65, 20

	.type	.L__func__.gs_setdefaultrgbicc,@object # @__func__.gs_setdefaultrgbicc
.L__func__.gs_setdefaultrgbicc:
	.asciz	"gs_setdefaultrgbicc"
	.size	.L__func__.gs_setdefaultrgbicc, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"cannot find default rgb icc profile"
	.size	.L.str.66, 36

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"set_named_profile_icc"
	.size	.L.str.67, 22

	.type	.L__func__.gs_setnamedprofileicc,@object # @__func__.gs_setnamedprofileicc
.L__func__.gs_setnamedprofileicc:
	.asciz	"gs_setnamedprofileicc"
	.size	.L__func__.gs_setnamedprofileicc, 22

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"cannot find named color icc profile"
	.size	.L.str.68, 36

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"set_default_cmyk_icc"
	.size	.L.str.69, 21

	.type	.L__func__.gs_setdefaultcmykicc,@object # @__func__.gs_setdefaultcmykicc
.L__func__.gs_setdefaultcmykicc:
	.asciz	"gs_setdefaultcmykicc"
	.size	.L__func__.gs_setdefaultcmykicc, 21

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"cannot find default cmyk icc profile"
	.size	.L.str.70, 37

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"lab.icc"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"set_lab_icc"
	.size	.L.str.72, 12

	.type	.L__func__.gs_setlabicc,@object # @__func__.gs_setlabicc
.L__func__.gs_setlabicc:
	.asciz	"gs_setlabicc"
	.size	.L__func__.gs_setlabicc, 13

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"cannot find default lab icc profile"
	.size	.L.str.73, 36

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%d"
	.size	.L.str.74, 3

	.type	st_gsicc_devicen_entry,@object # @st_gsicc_devicen_entry
	.section	.rodata,"a",@progbits
	.align	8
st_gsicc_devicen_entry:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gsicc_devicen_entry_reloc_ptrs
	.size	st_gsicc_devicen_entry, 64

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"gsicc_new_devicen"
	.size	.L.str.75, 18

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"insufficient memory to allocate device n profile"
	.size	.L.str.76, 49

	.type	st_gsicc_devicen,@object # @st_gsicc_devicen
	.section	.rodata,"a",@progbits
	.align	8
st_gsicc_devicen:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gsicc_devicen_reloc_ptrs
	.size	st_gsicc_devicen, 64

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"gsicc_devicen_entry"
	.size	.L.str.77, 20

	.type	gsicc_devicen_entry_reloc_ptrs,@object # @gsicc_devicen_entry_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gsicc_devicen_entry_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gsicc_devicen_entry_enum_ptrs
	.size	gsicc_devicen_entry_reloc_ptrs, 24

	.type	gsicc_devicen_entry_enum_ptrs,@object # @gsicc_devicen_entry_enum_ptrs
	.align	2
gsicc_devicen_entry_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	gsicc_devicen_entry_enum_ptrs, 4

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"gsicc_devicen"
	.size	.L.str.78, 14

	.type	gsicc_devicen_reloc_ptrs,@object # @gsicc_devicen_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gsicc_devicen_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gsicc_devicen_enum_ptrs
	.size	gsicc_devicen_reloc_ptrs, 24

	.type	gsicc_devicen_enum_ptrs,@object # @gsicc_devicen_enum_ptrs
	.align	2
gsicc_devicen_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	gsicc_devicen_enum_ptrs, 8

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"gsicc_get_spotnames"
	.size	.L.str.79, 20

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gsicc_open_search"
	.size	.L.str.80, 18

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"rb"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Could not find %s "
	.size	.L.str.82, 19

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gsicc_new_srcgtag_profile"
	.size	.L.str.83, 26

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"rc_free_srcgtag_profile"
	.size	.L.str.84, 24

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"rc_free_profile_array"
	.size	.L.str.85, 22

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gsicc_free_spotnames"
	.size	.L.str.86, 21

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gsicc_new_namelist"
	.size	.L.str.87, 19

	.type	st_gsicc_colorname,@object # @st_gsicc_colorname
	.section	.rodata,"a",@progbits
	.align	8
st_gsicc_colorname:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gsicc_colorname_reloc_ptrs
	.size	st_gsicc_colorname, 64

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"gsicc_new_colorname"
	.size	.L.str.88, 20

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gsicc_colorname"
	.size	.L.str.89, 16

	.type	gsicc_colorname_reloc_ptrs,@object # @gsicc_colorname_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gsicc_colorname_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gsicc_colorname_enum_ptrs
	.size	gsicc_colorname_reloc_ptrs, 24

	.type	gsicc_colorname_enum_ptrs,@object # @gsicc_colorname_enum_ptrs
	.align	2
gsicc_colorname_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	gsicc_colorname_enum_ptrs, 8

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"rc_free_icc_profile"
	.size	.L.str.90, 20

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gsicc_manager"
	.size	.L.str.91, 14

	.type	gsicc_manager_profile_reloc_ptrs,@object # @gsicc_manager_profile_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gsicc_manager_profile_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gsicc_manager_enum_ptrs
	.size	gsicc_manager_profile_reloc_ptrs, 24

	.type	gsicc_manager_enum_ptrs,@object # @gsicc_manager_enum_ptrs
	.align	2
gsicc_manager_enum_ptrs:
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	48                      # 0x30
	.size	gsicc_manager_enum_ptrs, 8

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"rc_gsicc_manager_free"
	.size	.L.str.92, 22

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gsicc_load_profile"
	.size	.L.str.93, 19

	.type	.L__func__.gsicc_load_profile_buffer,@object # @__func__.gsicc_load_profile_buffer
.L__func__.gsicc_load_profile_buffer:
	.asciz	"gsicc_load_profile_buffer"
	.size	.L__func__.gsicc_load_profile_buffer, 26

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Insufficient memory for profile buffer"
	.size	.L.str.94, 39

	.type	.L__func__.gsicc_load_namedcolor_buffer,@object # @__func__.gsicc_load_namedcolor_buffer
.L__func__.gsicc_load_namedcolor_buffer:
	.asciz	"gsicc_load_namedcolor_buffer"
	.size	.L__func__.gsicc_load_namedcolor_buffer, 29

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	6                       # 0x6
	.long	5                       # 0x5
	.size	.Lswitch.table, 64

	.type	.Lswitch.table.1,@object # @switch.table.1
	.align	16
.Lswitch.table.1:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.Lswitch.table.1, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
