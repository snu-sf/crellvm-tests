	.text
	.file	"fits-io.bc"
	.globl	fits_get_error
	.align	16, 0x90
	.type	fits_get_error,@function
fits_get_error:                         # @fits_get_error
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
	subq	$32, %rsp
	cmpl	$0, fits_n_error
	jg	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movl	$fits_get_error.errmsg, %eax
	movl	%eax, %edi
	movl	$fits_error, %eax
	movl	%eax, %esi
	callq	strcpy
	movl	$1, -12(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	fits_n_error, %eax
	jge	.LBB0_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$fits_error, %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$8, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movslq	-12(%rbp), %rdx
	shlq	$8, %rdx
	addq	%rdx, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
	movabsq	$fits_get_error.errmsg, %rax
	movl	fits_n_error, %ecx
	addl	$-1, %ecx
	movl	%ecx, fits_n_error
	movq	%rax, -8(%rbp)
.LBB0_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fits_get_error, .Lfunc_end0-fits_get_error
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_1:
	.long	1065353216              # float 1
	.text
	.globl	fits_open
	.align	16, 0x90
	.type	fits_open,@function
fits_open:                              # @fits_open
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
	subq	$144, %rsp
	leaq	-112(%rbp), %rax
	leaq	-100(%rbp), %rcx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movss	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movss	%xmm1, -100(%rbp)
	movsd	%xmm0, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movzbl	3(%rax), %edx
	cmpl	$63, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, fits_ieee32_intel
	movq	-120(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	$63, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, fits_ieee32_motorola
	movq	-128(%rbp), %rax
	movzbl	7(%rax), %edx
	cmpl	$63, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, fits_ieee64_intel
	movq	-128(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	$63, %edx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, fits_ieee64_motorola
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_3
# BB#2:                                 # %lor.lhs.false.19
	cmpq	$0, -24(%rbp)
	jne	.LBB1_4
.LBB1_3:                                # %if.then
	movabsq	$.L.str, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_32
.LBB1_4:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB1_7
# BB#5:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.28
	movabsq	$.L.str.3, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_32
.LBB1_7:                                # %if.end.29
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.4, %rcx
	movq	-16(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_9
# BB#8:                                 # %if.then.34
	movabsq	$.L.str.6, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_32
.LBB1_9:                                # %if.end.35
	callq	fits_new_filestruct
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.39
	movq	-64(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.7, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB1_32
.LBB1_11:                               # %if.end.41
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movb	(%rax), %dl
	movq	-72(%rbp), %rax
	movb	%dl, 8(%rax)
	cmpl	$0, -32(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.45
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_32
.LBB1_13:                               # %if.end.46
	movl	$0, -40(%rbp)
.LBB1_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	callq	ftell
	leaq	-36(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	callq	fits_read_header
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_18
# BB#15:                                # %if.then.51
	cmpl	$0, -40(%rbp)
	jle	.LBB1_17
# BB#16:                                # %if.then.54
	callq	fits_drop_error
.LBB1_17:                               # %if.end.55
	jmp	.LBB1_31
.LBB1_18:                               # %if.end.56
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-64(%rbp), %rdi
	callq	ftell
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	fits_decode_header
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.61
	movq	-80(%rbp), %rdi
	callq	fits_delete_recordlist
	jmp	.LBB1_31
.LBB1_20:                               # %if.end.62
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-72(%rbp), %rax
	movl	12(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rax)
	movq	-88(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-72(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, 16(%rax)
	movq	-88(%rbp), %rax
	cmpb	$0, 10285(%rax)
	je	.LBB1_22
# BB#21:                                # %if.then.64
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-72(%rbp), %rax
	movl	$1, 24(%rax)
.LBB1_22:                               # %if.end.65
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 10284(%rax)
	je	.LBB1_24
# BB#23:                                # %if.then.68
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-72(%rbp), %rax
	movl	$1, 20(%rax)
.LBB1_24:                               # %if.end.69
                                        #   in Loop: Header=BB1_14 Depth=1
	cmpl	$0, -40(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.72
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB1_27
.LBB1_26:                               # %if.else
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 14480(%rcx)
.LBB1_27:                               # %if.end.73
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	fits_eval_pixrange
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-88(%rbp), %rcx
	addq	16(%rcx), %rsi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB1_29
# BB#28:                                # %if.then.79
	jmp	.LBB1_31
.LBB1_29:                               # %if.end.80
                                        #   in Loop: Header=BB1_14 Depth=1
	jmp	.LBB1_30
.LBB1_30:                               # %for.inc
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_14
.LBB1_31:                               # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fits_open, .Lfunc_end1-fits_open
	.cfi_endproc

	.align	16, 0x90
	.type	fits_set_error,@function
fits_set_error:                         # @fits_set_error
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
	movq	%rdi, -8(%rbp)
	cmpl	$16, fits_n_error
	jge	.LBB2_2
# BB#1:                                 # %if.then
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movabsq	$fits_error, %rcx
	movslq	fits_n_error, %rsi
	shlq	$8, %rsi
	addq	%rsi, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movabsq	$fits_error, %rcx
	movl	fits_n_error, %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, fits_n_error
	movslq	%r8d, %rdx
	shlq	$8, %rdx
	addq	%rdx, %rcx
	movb	$0, 255(%rcx)
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fits_set_error, .Lfunc_end2-fits_set_error
	.cfi_endproc

	.align	16, 0x90
	.type	fits_new_filestruct,@function
fits_new_filestruct:                    # @fits_new_filestruct
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
	movl	$40, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	xorl	%esi, %esi
	movl	$40, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fits_new_filestruct, .Lfunc_end3-fits_new_filestruct
	.cfi_endproc

	.align	16, 0x90
	.type	fits_read_header,@function
fits_read_header:                       # @fits_read_header
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
	subq	$2976, %rsp             # imm = 0xBA0
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$2880, %eax             # imm = 0xB40
	movl	%eax, %edx
	leaq	-2912(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -2920(%rbp)
	movq	$0, -2928(%rbp)
	movq	-24(%rbp), %rsi
	movl	$0, (%rsi)
	movq	-16(%rbp), %rsi
	movq	%r8, %rdi
	movq	%rsi, -2968(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-2968(%rbp), %rcx       # 8-byte Reload
	callq	fread
	movl	%eax, %r9d
	movl	%r9d, -2948(%rbp)
	cmpl	$2880, -2948(%rbp)      # imm = 0xB40
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.79, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_2:                                # %if.end
	movabsq	$.L.str.80, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-2912(%rbp), %rdi
	callq	strncmp
	movabsq	$.L.str.42, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	leaq	-2912(%rbp), %rdi
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -2952(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -2956(%rbp)
	cmpl	$0, -2952(%rbp)
	jne	.LBB4_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -2956(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.81, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_5:                                # %if.end.12
	cmpl	$0, -2952(%rbp)
	je	.LBB4_10
# BB#6:                                 # %if.then.14
	movl	$5, %esi
	leaq	-2912(%rbp), %rdi
	callq	fits_decode_card
	movq	%rax, -2944(%rbp)
	cmpq	$0, -2944(%rbp)
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true.18
	movq	-2944(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB4_9
# BB#8:                                 # %if.then.20
	movabsq	$.L.str.82, %rdi
	callq	fits_set_error
.LBB4_9:                                # %if.end.21
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.22
	jmp	.LBB4_11
.LBB4_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$2888, %eax             # imm = 0xB48
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -2936(%rbp)
	cmpq	$0, -2936(%rbp)
	jne	.LBB4_13
# BB#12:                                # %if.then.26
	movq	-2920(%rbp), %rdi
	callq	fits_delete_recordlist
	movabsq	$.L.str.83, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_13:                               # %if.end.27
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$2880, %eax             # imm = 0xB40
	movl	%eax, %edx
	leaq	-2912(%rbp), %rcx
	movq	-2936(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-2936(%rbp), %rcx
	movq	$0, 2880(%rcx)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	addl	$1, %eax
	movl	%eax, (%rcx)
	cmpq	$0, -2920(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-2936(%rbp), %rax
	movq	%rax, -2920(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-2936(%rbp), %rax
	movq	-2928(%rbp), %rcx
	movq	%rax, 2880(%rcx)
.LBB4_16:                               # %if.end.32
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$.L.str.61, %rsi
	movq	-2936(%rbp), %rax
	movq	%rax, -2928(%rbp)
	movq	-2928(%rbp), %rdi
	callq	fits_search_card
	cmpq	$0, %rax
	je	.LBB4_18
# BB#17:                                # %if.then.36
	jmp	.LBB4_21
.LBB4_18:                               # %if.end.37
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2880, %eax             # imm = 0xB40
	movl	%eax, %edx
	leaq	-2912(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -2948(%rbp)
	cmpl	$2880, -2948(%rbp)      # imm = 0xB40
	je	.LBB4_20
# BB#19:                                # %if.then.43
	movabsq	$.L.str.84, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_20:                               # %if.end.44
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_11
.LBB4_21:                               # %for.end
	movq	-2920(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$2976, %rsp             # imm = 0xBA0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fits_read_header, .Lfunc_end4-fits_read_header
	.cfi_endproc

	.align	16, 0x90
	.type	fits_drop_error,@function
fits_drop_error:                        # @fits_drop_error
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
	cmpl	$0, fits_n_error
	jle	.LBB5_2
# BB#1:                                 # %if.then
	movl	fits_n_error, %eax
	addl	$-1, %eax
	movl	%eax, fits_n_error
.LBB5_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fits_drop_error, .Lfunc_end5-fits_drop_error
	.cfi_endproc

	.align	16, 0x90
	.type	fits_decode_header,@function
fits_decode_header:                     # @fits_decode_header
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	fits_new_hdulist
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.85, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB6_103
.LBB6_2:                                # %if.end
	movabsq	$.L.str.80, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rcx, (%rdi)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rcx, 8(%rdi)
	movq	-16(%rbp), %rdi
	callq	strncmp
	movabsq	$.L.str.42, %rsi
	movl	$8, %r8d
	movl	%r8d, %edx
	cmpl	$0, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movb	%al, %r9b
	movq	-40(%rbp), %rcx
	movb	%r9b, 10289(%rcx)
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movb	%al, %r9b
	movq	-40(%rbp), %rcx
	movb	%r9b, 10290(%rcx)
	movq	-40(%rbp), %rcx
	cmpb	$0, 10290(%rcx)
	je	.LBB6_7
# BB#3:                                 # %if.then.13
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$8, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.18
	movq	-40(%rbp), %rax
	addq	$14352, %rax            # imm = 0x3810
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	leaq	-128(%rbp), %rdi
	movl	$.L.str.86, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_6:                                # %if.end.25
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.26
	movabsq	$.L.str.45, %rsi
	leaq	-137(%rbp), %rdi
	movl	$.L.str.45, %eax
	movl	%eax, %ecx
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_9
# BB#8:                                 # %if.then.33
	jmp	.LBB6_101
.LBB6_9:                                # %if.end.34
	movabsq	$.L.str.44, %rsi
	leaq	-137(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 10320(%rax)
	movl	$.L.str.44, %ecx
	movl	%ecx, %eax
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	strcpy
	movq	-16(%rbp), %rdi
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_11
# BB#10:                                # %if.then.42
	jmp	.LBB6_101
.LBB6_11:                               # %if.end.43
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 14320(%rax)
	movl	%ecx, -148(%rbp)
	cmpl	$8, -148(%rbp)
	je	.LBB6_17
# BB#12:                                # %land.lhs.true
	cmpl	$16, -148(%rbp)
	je	.LBB6_17
# BB#13:                                # %land.lhs.true.50
	cmpl	$32, -148(%rbp)
	je	.LBB6_17
# BB#14:                                # %land.lhs.true.53
	cmpl	$-32, -148(%rbp)
	je	.LBB6_17
# BB#15:                                # %land.lhs.true.56
	cmpl	$-64, -148(%rbp)
	je	.LBB6_17
# BB#16:                                # %if.then.59
	leaq	-128(%rbp), %rdi
	movl	$.L.str.87, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_17:                               # %if.end.62
	cmpl	$0, -148(%rbp)
	jge	.LBB6_19
# BB#18:                                # %if.then.65
	xorl	%eax, %eax
	subl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB6_19:                               # %if.end.66
	movabsq	$.L.str.51, %rsi
	movl	$8, %eax
	movl	-148(%rbp), %ecx
	movl	%eax, -492(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-492(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movb	%cl, %r8b
	movq	-40(%rbp), %rax
	movb	%r8b, 10291(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10291(%rax)
	je	.LBB6_21
# BB#20:                                # %if.then.77
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 14432(%rcx)
.LBB6_21:                               # %if.end.80
	movabsq	$.L.str.50, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10292(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10292(%rax)
	je	.LBB6_23
# BB#22:                                # %if.then.91
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 14440(%rcx)
.LBB6_23:                               # %if.end.94
	movabsq	$.L.str.49, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$5, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10295(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10295(%rax)
	je	.LBB6_25
# BB#24:                                # %if.then.105
	movq	-200(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 14464(%rax)
.LBB6_25:                               # %if.end.107
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	10295(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -493(%rbp)         # 1-byte Spill
	je	.LBB6_27
# BB#26:                                # %land.rhs
	movq	-40(%rbp), %rax
	cmpl	$0, 14464(%rax)
	setne	%cl
	movb	%cl, -493(%rbp)         # 1-byte Spill
.LBB6_27:                               # %land.end
	movb	-493(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.47, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -152(%rbp)
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$5, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rax
	movb	%dl, 10296(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10296(%rax)
	je	.LBB6_29
# BB#28:                                # %if.then.124
	movq	-208(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 14468(%rax)
.LBB6_29:                               # %if.end.127
	movq	-40(%rbp), %rax
	cmpb	$0, 10290(%rax)
	je	.LBB6_34
# BB#30:                                # %if.then.131
	movq	-40(%rbp), %rax
	cmpb	$0, 10291(%rax)
	je	.LBB6_32
# BB#31:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpb	$0, 10292(%rax)
	jne	.LBB6_33
.LBB6_32:                               # %if.then.138
	leaq	-128(%rbp), %rdi
	movl	$.L.str.88, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_33:                               # %if.end.141
	jmp	.LBB6_34
.LBB6_34:                               # %if.end.142
	movq	$1, -160(%rbp)
	movl	$1, -144(%rbp)
.LBB6_35:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$999, -144(%rbp)        # imm = 0x3E7
	jg	.LBB6_48
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB6_35 Depth=1
	movabsq	$.L.str.89, %rsi
	leaq	-217(%rbp), %rdi
	movl	-144(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-217(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_38
# BB#37:                                # %if.then.152
	movl	-144(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_48
.LBB6_38:                               # %if.end.153
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	-144(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-40(%rbp), %rsi
	movl	%ecx, 10324(%rsi,%rax,4)
	movl	-144(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rsi
	cmpl	$0, 10324(%rsi,%rax,4)
	jge	.LBB6_40
# BB#39:                                # %if.then.164
	leaq	-128(%rbp), %rdi
	movl	$.L.str.90, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_40:                               # %if.end.167
                                        #   in Loop: Header=BB6_35 Depth=1
	cmpl	$1, -144(%rbp)
	jne	.LBB6_45
# BB#41:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB6_35 Depth=1
	cmpl	$0, -152(%rbp)
	je	.LBB6_45
# BB#42:                                # %if.then.172
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 10324(%rax)
	je	.LBB6_44
# BB#43:                                # %if.then.177
	leaq	-128(%rbp), %rdi
	movl	$.L.str.91, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_44:                               # %if.end.180
                                        #   in Loop: Header=BB6_35 Depth=1
	jmp	.LBB6_46
.LBB6_45:                               # %if.else.181
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	-144(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movslq	10324(%rdx,%rcx,4), %rcx
	imulq	-160(%rbp), %rcx
	movq	%rcx, -160(%rbp)
.LBB6_46:                               # %if.end.187
                                        #   in Loop: Header=BB6_35 Depth=1
	jmp	.LBB6_47
.LBB6_47:                               # %for.inc
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_35
.LBB6_48:                               # %for.end
	movq	-40(%rbp), %rax
	cmpl	$0, 10320(%rax)
	jle	.LBB6_51
# BB#49:                                # %land.lhs.true.191
	movl	-144(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	10320(%rcx), %eax
	jge	.LBB6_51
# BB#50:                                # %if.then.195
	leaq	-128(%rbp), %rdi
	movl	$.L.str.92, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB6_102
.LBB6_51:                               # %if.end.198
	movq	-40(%rbp), %rax
	cmpl	$2, 10320(%rax)
	jge	.LBB6_53
# BB#52:                                # %if.then.202
	movq	-40(%rbp), %rax
	movl	$1, 10328(%rax)
.LBB6_53:                               # %if.end.205
	movq	-40(%rbp), %rax
	cmpl	$1, 10320(%rax)
	jge	.LBB6_55
# BB#54:                                # %if.then.209
	movq	$0, -160(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, 10324(%rax)
.LBB6_55:                               # %if.end.212
	movq	-40(%rbp), %rax
	cmpb	$0, 10290(%rax)
	je	.LBB6_57
# BB#56:                                # %if.then.216
	movslq	-148(%rbp), %rax
	movq	-40(%rbp), %rcx
	imulq	14432(%rcx), %rax
	movq	-40(%rbp), %rcx
	movq	14440(%rcx), %rcx
	addq	-160(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB6_58
.LBB6_57:                               # %if.else.222
	movslq	-148(%rbp), %rax
	imulq	-160(%rbp), %rax
	movq	%rax, -168(%rbp)
.LBB6_58:                               # %if.end.225
	movabsq	$.L.str.59, %rsi
	movl	$2880, %eax             # imm = 0xB40
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdx, 24(%rdi)
	movq	-168(%rbp), %rdx
	addq	$2880, %rdx             # imm = 0xB40
	subq	$1, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	%rax, -168(%rbp)
	imulq	$2880, -168(%rbp), %rax # imm = 0xB40
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$6, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -232(%rbp)
	cmpq	$0, -232(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	movb	%sil, %r8b
	movq	-40(%rbp), %rax
	movb	%r8b, 10286(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB6_60
# BB#59:                                # %if.then.241
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 14328(%rcx)
.LBB6_60:                               # %if.end.244
	movabsq	$.L.str.57, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$7, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10287(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10287(%rax)
	je	.LBB6_62
# BB#61:                                # %if.then.255
	movq	-240(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 14336(%rax)
.LBB6_62:                               # %if.end.257
	movabsq	$.L.str.58, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$7, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10288(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10288(%rax)
	je	.LBB6_64
# BB#63:                                # %if.then.268
	movq	-248(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 14344(%rax)
.LBB6_64:                               # %if.end.271
	movabsq	$.L.str.55, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$7, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10293(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10293(%rax)
	je	.LBB6_66
# BB#65:                                # %if.then.282
	movq	-256(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 14448(%rax)
.LBB6_66:                               # %if.end.285
	movabsq	$.L.str.56, %rsi
	movq	-16(%rbp), %rdi
	callq	fits_search_card
	movl	$7, %esi
	movq	%rax, %rdi
	callq	fits_decode_card
	movq	%rax, -264(%rbp)
	cmpq	$0, -264(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movb	%sil, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 10294(%rax)
	movq	-40(%rbp), %rax
	cmpb	$0, 10294(%rax)
	je	.LBB6_68
# BB#67:                                # %if.then.296
	movq	-264(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 14456(%rax)
.LBB6_68:                               # %if.end.299
	movb	$1, %al
	movq	-40(%rbp), %rcx
	movl	$0, 36(%rcx)
	movq	-40(%rbp), %rcx
	cmpl	$0, 14320(%rcx)
	movb	%al, -537(%rbp)         # 1-byte Spill
	jg	.LBB6_79
# BB#69:                                # %lor.lhs.false.303
	movq	-40(%rbp), %rax
	cmpl	$-64, 14320(%rax)
	jne	.LBB6_72
# BB#70:                                # %land.lhs.true.307
	movb	$1, %al
	cmpl	$0, fits_ieee64_intel
	movb	%al, -537(%rbp)         # 1-byte Spill
	jne	.LBB6_79
# BB#71:                                # %lor.lhs.false.309
	movb	$1, %al
	cmpl	$0, fits_ieee64_motorola
	movb	%al, -537(%rbp)         # 1-byte Spill
	jne	.LBB6_79
.LBB6_72:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpl	$-32, 14320(%rdx)
	movb	%cl, -538(%rbp)         # 1-byte Spill
	jne	.LBB6_78
# BB#73:                                # %land.rhs.314
	movb	$1, %al
	cmpl	$0, fits_ieee32_intel
	movb	%al, -539(%rbp)         # 1-byte Spill
	jne	.LBB6_77
# BB#74:                                # %lor.lhs.false.316
	movb	$1, %al
	cmpl	$0, fits_ieee32_motorola
	movb	%al, -539(%rbp)         # 1-byte Spill
	jne	.LBB6_77
# BB#75:                                # %lor.lhs.false.318
	movb	$1, %al
	cmpl	$0, fits_ieee64_intel
	movb	%al, -539(%rbp)         # 1-byte Spill
	jne	.LBB6_77
# BB#76:                                # %lor.rhs.320
	cmpl	$0, fits_ieee64_motorola
	setne	%al
	movb	%al, -539(%rbp)         # 1-byte Spill
.LBB6_77:                               # %lor.end
	movb	-539(%rbp), %al         # 1-byte Reload
	movb	%al, -538(%rbp)         # 1-byte Spill
.LBB6_78:                               # %land.end.322
	movb	-538(%rbp), %al         # 1-byte Reload
	movb	%al, -537(%rbp)         # 1-byte Spill
.LBB6_79:                               # %lor.end.324
	movb	-537(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB6_99
# BB#80:                                # %if.then.327
	movq	-40(%rbp), %rax
	cmpb	$0, 10289(%rax)
	je	.LBB6_88
# BB#81:                                # %if.then.331
	movq	-40(%rbp), %rax
	cmpl	$0, 10320(%rax)
	jle	.LBB6_87
# BB#82:                                # %if.then.335
	movq	-40(%rbp), %rax
	movl	$1, 36(%rax)
	movl	$3, -144(%rbp)
.LBB6_83:                               # %for.cond.337
                                        # =>This Inner Loop Header: Depth=1
	movl	-144(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	10320(%rcx), %eax
	jg	.LBB6_86
# BB#84:                                # %for.body.341
                                        #   in Loop: Header=BB6_83 Depth=1
	movl	-144(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movl	10324(%rdx,%rcx,4), %eax
	movq	-40(%rbp), %rcx
	imull	36(%rcx), %eax
	movl	%eax, 36(%rcx)
# BB#85:                                # %for.inc.348
                                        #   in Loop: Header=BB6_83 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_83
.LBB6_86:                               # %for.end.350
	jmp	.LBB6_87
.LBB6_87:                               # %if.end.351
	jmp	.LBB6_98
.LBB6_88:                               # %if.else.352
	movq	-40(%rbp), %rax
	movsbl	10290(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_97
# BB#89:                                # %land.lhs.true.357
	movabsq	$.L.str.93, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	addq	$14352, %rcx            # imm = 0x3810
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB6_97
# BB#90:                                # %if.then.363
	movq	-40(%rbp), %rax
	cmpl	$0, 10320(%rax)
	jle	.LBB6_96
# BB#91:                                # %if.then.367
	movq	-40(%rbp), %rax
	movl	$1, 36(%rax)
	movl	$3, -144(%rbp)
.LBB6_92:                               # %for.cond.369
                                        # =>This Inner Loop Header: Depth=1
	movl	-144(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	10320(%rcx), %eax
	jg	.LBB6_95
# BB#93:                                # %for.body.373
                                        #   in Loop: Header=BB6_92 Depth=1
	movl	-144(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movl	10324(%rdx,%rcx,4), %eax
	movq	-40(%rbp), %rcx
	imull	36(%rcx), %eax
	movl	%eax, 36(%rcx)
# BB#94:                                # %for.inc.380
                                        #   in Loop: Header=BB6_92 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB6_92
.LBB6_95:                               # %for.end.382
	jmp	.LBB6_96
.LBB6_96:                               # %if.end.383
	jmp	.LBB6_97
.LBB6_97:                               # %if.end.384
	jmp	.LBB6_98
.LBB6_98:                               # %if.end.385
	jmp	.LBB6_100
.LBB6_99:                               # %if.else.386
	movabsq	$.L.str.94, %rsi
	leaq	-432(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	14320(%rax), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-432(%rbp), %rdi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	fits_set_error
.LBB6_100:                              # %if.end.391
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 14472(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_103
.LBB6_101:                              # %err_missing
	movabsq	$.L.str.95, %rsi
	leaq	-137(%rbp), %rdx
	leaq	-128(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB6_102:                              # %err_return
	movq	-40(%rbp), %rdi
	callq	fits_delete_hdulist
	leaq	-128(%rbp), %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
.LBB6_103:                              # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fits_decode_header, .Lfunc_end6-fits_decode_header
	.cfi_endproc

	.align	16, 0x90
	.type	fits_delete_recordlist,@function
fits_delete_recordlist:                 # @fits_delete_recordlist
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movq	2880(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 2880(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fits_delete_recordlist, .Lfunc_end7-fits_delete_recordlist
	.cfi_endproc

	.align	16, 0x90
	.type	fits_eval_pixrange,@function
fits_eval_pixrange:                     # @fits_eval_pixrange
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
	subq	$4384, %rsp             # imm = 0x1120
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -4140(%rbp)
	movl	$0, -4144(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.96, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4136(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4136(%rbp), %rdx
	movq	%rdx, -4344(%rbp)       # 8-byte Spill
	cqto
	movq	-4344(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movq	-24(%rbp), %rax
	movl	14320(%rax), %ecx
	movl	%ecx, %edi
	subl	$-64, %edi
	movl	%ecx, -4348(%rbp)       # 4-byte Spill
	movl	%edi, -4352(%rbp)       # 4-byte Spill
	je	.LBB8_126
	jmp	.LBB8_157
.LBB8_157:                              # %if.end
	movl	-4348(%rbp), %eax       # 4-byte Reload
	subl	$-32, %eax
	movl	%eax, -4356(%rbp)       # 4-byte Spill
	je	.LBB8_93
	jmp	.LBB8_158
.LBB8_158:                              # %if.end
	movl	-4348(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -4360(%rbp)       # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_159
.LBB8_159:                              # %if.end
	movl	-4348(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -4364(%rbp)       # 4-byte Spill
	je	.LBB8_33
	jmp	.LBB8_160
.LBB8_160:                              # %if.end
	movl	-4348(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -4368(%rbp)       # 4-byte Spill
	je	.LBB8_63
	jmp	.LBB8_151
.LBB8_3:                                # %sw.bb
	movb	$-1, -4161(%rbp)
	movb	$0, -4162(%rbp)
.LBB8_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_11 Depth 2
                                        #     Child Loop BB8_23 Depth 2
	cmpl	$0, -4132(%rbp)
	jle	.LBB8_32
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movslq	-4136(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-4132(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jge	.LBB8_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-4132(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end.11
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-4128(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	-4132(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movslq	-4136(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_9
# BB#8:                                 # %if.then.18
	movabsq	$.L.str.97, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_9:                                # %if.end.19
                                        #   in Loop: Header=BB8_4 Depth=1
	leaq	-4128(%rbp), %rax
	movq	%rax, -4160(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB8_22
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movb	%al, %cl
	movb	%cl, -4163(%rbp)
.LBB8_11:                               # %while.cond.24
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_21
# BB#12:                                # %while.body.27
                                        #   in Loop: Header=BB8_11 Depth=2
	movq	-4160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4160(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4145(%rbp)
	movzbl	-4145(%rbp), %esi
	movzbl	-4163(%rbp), %edi
	cmpl	%edi, %esi
	je	.LBB8_19
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB8_11 Depth=2
	movzbl	-4145(%rbp), %eax
	movzbl	-4161(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_15
# BB#14:                                # %if.then.37
                                        #   in Loop: Header=BB8_11 Depth=2
	movb	-4145(%rbp), %al
	movb	%al, -4161(%rbp)
	jmp	.LBB8_18
.LBB8_15:                               # %if.else
                                        #   in Loop: Header=BB8_11 Depth=2
	movzbl	-4145(%rbp), %eax
	movzbl	-4162(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_17
# BB#16:                                # %if.then.42
                                        #   in Loop: Header=BB8_11 Depth=2
	movb	-4145(%rbp), %al
	movb	%al, -4162(%rbp)
.LBB8_17:                               # %if.end.43
                                        #   in Loop: Header=BB8_11 Depth=2
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.44
                                        #   in Loop: Header=BB8_11 Depth=2
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.45
                                        #   in Loop: Header=BB8_11 Depth=2
	movl	$1, -4140(%rbp)
.LBB8_20:                               # %if.end.46
                                        #   in Loop: Header=BB8_11 Depth=2
	jmp	.LBB8_11
.LBB8_21:                               # %while.end
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_31
.LBB8_22:                               # %if.else.47
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_23
.LBB8_23:                               # %while.cond.48
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_30
# BB#24:                                # %while.body.52
                                        #   in Loop: Header=BB8_23 Depth=2
	movq	-4160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4160(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4145(%rbp)
	movzbl	-4145(%rbp), %esi
	movzbl	-4161(%rbp), %edi
	cmpl	%edi, %esi
	jge	.LBB8_26
# BB#25:                                # %if.then.58
                                        #   in Loop: Header=BB8_23 Depth=2
	movb	-4145(%rbp), %al
	movb	%al, -4161(%rbp)
	jmp	.LBB8_29
.LBB8_26:                               # %if.else.59
                                        #   in Loop: Header=BB8_23 Depth=2
	movzbl	-4145(%rbp), %eax
	movzbl	-4162(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB8_23 Depth=2
	movb	-4145(%rbp), %al
	movb	%al, -4162(%rbp)
.LBB8_28:                               # %if.end.65
                                        #   in Loop: Header=BB8_23 Depth=2
	jmp	.LBB8_29
.LBB8_29:                               # %if.end.66
                                        #   in Loop: Header=BB8_23 Depth=2
	jmp	.LBB8_23
.LBB8_30:                               # %while.end.67
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.68
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_4
.LBB8_32:                               # %while.end.69
	movzbl	-4161(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 10304(%rcx)
	movzbl	-4162(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 10312(%rcx)
	jmp	.LBB8_151
.LBB8_33:                               # %sw.bb.72
	movw	$32767, -4178(%rbp)     # imm = 0x7FFF
	movw	$-32768, -4180(%rbp)    # imm = 0xFFFFFFFFFFFF8000
.LBB8_34:                               # %while.cond.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_41 Depth 2
                                        #     Child Loop BB8_53 Depth 2
	cmpl	$0, -4132(%rbp)
	jle	.LBB8_62
# BB#35:                                # %while.body.80
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movslq	-4136(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-4132(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jge	.LBB8_37
# BB#36:                                # %if.then.86
                                        #   in Loop: Header=BB8_34 Depth=1
	movl	-4132(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_37:                               # %if.end.87
                                        #   in Loop: Header=BB8_34 Depth=1
	leaq	-4128(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	-4132(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movslq	-4136(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_39
# BB#38:                                # %if.then.96
	movabsq	$.L.str.98, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_39:                               # %if.end.97
                                        #   in Loop: Header=BB8_34 Depth=1
	leaq	-4128(%rbp), %rax
	movq	%rax, -4176(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB8_52
# BB#40:                                # %if.then.102
                                        #   in Loop: Header=BB8_34 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movw	%ax, %cx
	movw	%cx, -4182(%rbp)
.LBB8_41:                               # %while.cond.106
                                        #   Parent Loop BB8_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_51
# BB#42:                                # %while.body.110
                                        #   in Loop: Header=BB8_41 Depth=2
	movq	-4176(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-4176(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -4166(%rbp)
	movq	-4176(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -4176(%rbp)
	movswl	-4166(%rbp), %ecx
	movswl	-4182(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB8_49
# BB#43:                                # %if.then.119
                                        #   in Loop: Header=BB8_41 Depth=2
	movswl	-4166(%rbp), %eax
	movswl	-4178(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_45
# BB#44:                                # %if.then.124
                                        #   in Loop: Header=BB8_41 Depth=2
	movw	-4166(%rbp), %ax
	movw	%ax, -4178(%rbp)
	jmp	.LBB8_48
.LBB8_45:                               # %if.else.125
                                        #   in Loop: Header=BB8_41 Depth=2
	movswl	-4166(%rbp), %eax
	movswl	-4180(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_47
# BB#46:                                # %if.then.130
                                        #   in Loop: Header=BB8_41 Depth=2
	movw	-4166(%rbp), %ax
	movw	%ax, -4180(%rbp)
.LBB8_47:                               # %if.end.131
                                        #   in Loop: Header=BB8_41 Depth=2
	jmp	.LBB8_48
.LBB8_48:                               # %if.end.132
                                        #   in Loop: Header=BB8_41 Depth=2
	jmp	.LBB8_50
.LBB8_49:                               # %if.else.133
                                        #   in Loop: Header=BB8_41 Depth=2
	movl	$1, -4140(%rbp)
.LBB8_50:                               # %if.end.134
                                        #   in Loop: Header=BB8_41 Depth=2
	jmp	.LBB8_41
.LBB8_51:                               # %while.end.135
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_61
.LBB8_52:                               # %if.else.136
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_53
.LBB8_53:                               # %while.cond.137
                                        #   Parent Loop BB8_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_60
# BB#54:                                # %while.body.141
                                        #   in Loop: Header=BB8_53 Depth=2
	movq	-4176(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-4176(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -4166(%rbp)
	movq	-4176(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -4176(%rbp)
	movswl	-4166(%rbp), %ecx
	movswl	-4178(%rbp), %edx
	cmpl	%edx, %ecx
	jge	.LBB8_56
# BB#55:                                # %if.then.154
                                        #   in Loop: Header=BB8_53 Depth=2
	movw	-4166(%rbp), %ax
	movw	%ax, -4178(%rbp)
	jmp	.LBB8_59
.LBB8_56:                               # %if.else.155
                                        #   in Loop: Header=BB8_53 Depth=2
	movswl	-4166(%rbp), %eax
	movswl	-4180(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_58
# BB#57:                                # %if.then.160
                                        #   in Loop: Header=BB8_53 Depth=2
	movw	-4166(%rbp), %ax
	movw	%ax, -4180(%rbp)
.LBB8_58:                               # %if.end.161
                                        #   in Loop: Header=BB8_53 Depth=2
	jmp	.LBB8_59
.LBB8_59:                               # %if.end.162
                                        #   in Loop: Header=BB8_53 Depth=2
	jmp	.LBB8_53
.LBB8_60:                               # %while.end.163
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_61
.LBB8_61:                               # %if.end.164
                                        #   in Loop: Header=BB8_34 Depth=1
	jmp	.LBB8_34
.LBB8_62:                               # %while.end.165
	movswl	-4178(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 10304(%rcx)
	movswl	-4180(%rbp), %eax
	movw	%ax, %dx
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 10312(%rcx)
	movw	%dx, -4370(%rbp)        # 2-byte Spill
	jmp	.LBB8_151
.LBB8_63:                               # %sw.bb.170
	movq	$2147483647, -4208(%rbp) # imm = 0x7FFFFFFF
	movq	$-2147483648, -4216(%rbp) # imm = 0xFFFFFFFF80000000
.LBB8_64:                               # %while.cond.175
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_71 Depth 2
                                        #     Child Loop BB8_83 Depth 2
	cmpl	$0, -4132(%rbp)
	jle	.LBB8_92
# BB#65:                                # %while.body.178
                                        #   in Loop: Header=BB8_64 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movslq	-4136(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-4132(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jge	.LBB8_67
# BB#66:                                # %if.then.184
                                        #   in Loop: Header=BB8_64 Depth=1
	movl	-4132(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_67:                               # %if.end.185
                                        #   in Loop: Header=BB8_64 Depth=1
	leaq	-4128(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	-4132(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movslq	-4136(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_69
# BB#68:                                # %if.then.194
	movabsq	$.L.str.99, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_69:                               # %if.end.195
                                        #   in Loop: Header=BB8_64 Depth=1
	leaq	-4128(%rbp), %rax
	movq	%rax, -4200(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB8_82
# BB#70:                                # %if.then.200
                                        #   in Loop: Header=BB8_64 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movq	%rax, -4224(%rbp)
.LBB8_71:                               # %while.cond.203
                                        #   Parent Loop BB8_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_81
# BB#72:                                # %while.body.207
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-4200(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-4200(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-4200(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-4200(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -4192(%rbp)
	movq	-4200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -4200(%rbp)
	movq	-4192(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	je	.LBB8_79
# BB#73:                                # %if.then.226
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-4192(%rbp), %rax
	cmpq	-4208(%rbp), %rax
	jge	.LBB8_75
# BB#74:                                # %if.then.229
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-4192(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB8_78
.LBB8_75:                               # %if.else.230
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-4192(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jle	.LBB8_77
# BB#76:                                # %if.then.233
                                        #   in Loop: Header=BB8_71 Depth=2
	movq	-4192(%rbp), %rax
	movq	%rax, -4216(%rbp)
.LBB8_77:                               # %if.end.234
                                        #   in Loop: Header=BB8_71 Depth=2
	jmp	.LBB8_78
.LBB8_78:                               # %if.end.235
                                        #   in Loop: Header=BB8_71 Depth=2
	jmp	.LBB8_80
.LBB8_79:                               # %if.else.236
                                        #   in Loop: Header=BB8_71 Depth=2
	movl	$1, -4140(%rbp)
.LBB8_80:                               # %if.end.237
                                        #   in Loop: Header=BB8_71 Depth=2
	jmp	.LBB8_71
.LBB8_81:                               # %while.end.238
                                        #   in Loop: Header=BB8_64 Depth=1
	jmp	.LBB8_91
.LBB8_82:                               # %if.else.239
                                        #   in Loop: Header=BB8_64 Depth=1
	jmp	.LBB8_83
.LBB8_83:                               # %while.cond.240
                                        #   Parent Loop BB8_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_90
# BB#84:                                # %while.body.244
                                        #   in Loop: Header=BB8_83 Depth=2
	movq	-4200(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-4200(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-4200(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-4200(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -4192(%rbp)
	movq	-4200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -4200(%rbp)
	movq	-4192(%rbp), %rax
	cmpq	-4208(%rbp), %rax
	jge	.LBB8_86
# BB#85:                                # %if.then.263
                                        #   in Loop: Header=BB8_83 Depth=2
	movq	-4192(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB8_89
.LBB8_86:                               # %if.else.264
                                        #   in Loop: Header=BB8_83 Depth=2
	movq	-4192(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jle	.LBB8_88
# BB#87:                                # %if.then.267
                                        #   in Loop: Header=BB8_83 Depth=2
	movq	-4192(%rbp), %rax
	movq	%rax, -4216(%rbp)
.LBB8_88:                               # %if.end.268
                                        #   in Loop: Header=BB8_83 Depth=2
	jmp	.LBB8_89
.LBB8_89:                               # %if.end.269
                                        #   in Loop: Header=BB8_83 Depth=2
	jmp	.LBB8_83
.LBB8_90:                               # %while.end.270
                                        #   in Loop: Header=BB8_64 Depth=1
	jmp	.LBB8_91
.LBB8_91:                               # %if.end.271
                                        #   in Loop: Header=BB8_64 Depth=1
	jmp	.LBB8_64
.LBB8_92:                               # %while.end.272
	cvtsi2sdq	-4208(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10304(%rax)
	cvtsi2sdq	-4216(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10312(%rax)
	jmp	.LBB8_151
.LBB8_93:                               # %sw.bb.277
	xorps	%xmm0, %xmm0
	movl	$1, -4252(%rbp)
	movss	%xmm0, -4228(%rbp)
	movss	%xmm0, -4244(%rbp)
	movss	%xmm0, -4248(%rbp)
.LBB8_94:                               # %while.cond.282
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_100 Depth 2
	cmpl	$0, -4132(%rbp)
	jle	.LBB8_125
# BB#95:                                # %while.body.285
                                        #   in Loop: Header=BB8_94 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movslq	-4136(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-4132(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jge	.LBB8_97
# BB#96:                                # %if.then.291
                                        #   in Loop: Header=BB8_94 Depth=1
	movl	-4132(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_97:                               # %if.end.292
                                        #   in Loop: Header=BB8_94 Depth=1
	leaq	-4128(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	-4132(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movslq	-4136(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_99
# BB#98:                                # %if.then.301
	movabsq	$.L.str.100, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_99:                               # %if.end.302
                                        #   in Loop: Header=BB8_94 Depth=1
	leaq	-4128(%rbp), %rax
	movq	%rax, -4240(%rbp)
.LBB8_100:                              # %while.cond.304
                                        #   Parent Loop BB8_94 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_124
# BB#101:                               # %while.body.308
                                        #   in Loop: Header=BB8_100 Depth=2
	movq	-4240(%rbp), %rdi
	callq	fits_nan_32
	cmpl	$0, %eax
	jne	.LBB8_122
# BB#102:                               # %if.then.311
                                        #   in Loop: Header=BB8_100 Depth=2
	cmpl	$0, fits_ieee32_intel
	je	.LBB8_104
# BB#103:                               # %if.then.313
                                        #   in Loop: Header=BB8_100 Depth=2
	movq	-4240(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -4256(%rbp)
	movq	-4240(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -4255(%rbp)
	movq	-4240(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -4254(%rbp)
	movq	-4240(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -4253(%rbp)
	movss	-4256(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4228(%rbp)
	jmp	.LBB8_113
.LBB8_104:                              # %if.else.323
                                        #   in Loop: Header=BB8_100 Depth=2
	cmpl	$0, fits_ieee32_motorola
	je	.LBB8_106
# BB#105:                               # %if.then.325
                                        #   in Loop: Header=BB8_100 Depth=2
	movq	-4240(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4228(%rbp)
	jmp	.LBB8_112
.LBB8_106:                              # %if.else.326
                                        #   in Loop: Header=BB8_100 Depth=2
	cmpl	$0, fits_ieee64_motorola
	je	.LBB8_108
# BB#107:                               # %if.then.328
                                        #   in Loop: Header=BB8_100 Depth=2
	leaq	-4264(%rbp), %rax
	movq	%rax, -4272(%rbp)
	movq	-4240(%rbp), %rax
	movb	(%rax), %cl
	movq	-4272(%rbp), %rax
	movb	%cl, (%rax)
	movq	-4240(%rbp), %rax
	movb	1(%rax), %cl
	movq	-4272(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-4240(%rbp), %rax
	movb	2(%rax), %cl
	movq	-4272(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-4240(%rbp), %rax
	movb	3(%rax), %cl
	movq	-4272(%rbp), %rax
	movb	%cl, 3(%rax)
	movq	-4272(%rbp), %rax
	movb	$0, 7(%rax)
	movq	-4272(%rbp), %rax
	movb	$0, 6(%rax)
	movq	-4272(%rbp), %rax
	movb	$0, 5(%rax)
	movq	-4272(%rbp), %rax
	movb	$0, 4(%rax)
	cvtsd2ss	-4264(%rbp), %xmm0
	movss	%xmm0, -4228(%rbp)
	jmp	.LBB8_111
.LBB8_108:                              # %if.else.343
                                        #   in Loop: Header=BB8_100 Depth=2
	cmpl	$0, fits_ieee64_intel
	je	.LBB8_110
# BB#109:                               # %if.then.345
                                        #   in Loop: Header=BB8_100 Depth=2
	leaq	-4280(%rbp), %rax
	movq	%rax, -4288(%rbp)
	movq	-4288(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-4288(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-4288(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-4288(%rbp), %rax
	movb	$0, (%rax)
	movq	-4240(%rbp), %rax
	movb	(%rax), %cl
	movq	-4288(%rbp), %rax
	movb	%cl, 7(%rax)
	movq	-4240(%rbp), %rax
	movb	1(%rax), %cl
	movq	-4288(%rbp), %rax
	movb	%cl, 6(%rax)
	movq	-4240(%rbp), %rax
	movb	2(%rax), %cl
	movq	-4288(%rbp), %rax
	movb	%cl, 5(%rax)
	movq	-4240(%rbp), %rax
	movb	3(%rax), %cl
	movq	-4288(%rbp), %rax
	movb	%cl, 4(%rax)
	cvtsd2ss	-4280(%rbp), %xmm0
	movss	%xmm0, -4228(%rbp)
.LBB8_110:                              # %if.end.360
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_111
.LBB8_111:                              # %if.end.361
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_112
.LBB8_112:                              # %if.end.362
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_113
.LBB8_113:                              # %if.end.363
                                        #   in Loop: Header=BB8_100 Depth=2
	movq	-4240(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -4240(%rbp)
	cmpl	$0, -4252(%rbp)
	je	.LBB8_115
# BB#114:                               # %if.then.366
                                        #   in Loop: Header=BB8_100 Depth=2
	movl	$0, -4252(%rbp)
	movss	-4228(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4248(%rbp)
	movss	%xmm0, -4244(%rbp)
	jmp	.LBB8_121
.LBB8_115:                              # %if.else.367
                                        #   in Loop: Header=BB8_100 Depth=2
	movss	-4228(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	-4244(%rbp), %xmm1      # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB8_117
# BB#116:                               # %if.then.370
                                        #   in Loop: Header=BB8_100 Depth=2
	movss	-4228(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4244(%rbp)
	jmp	.LBB8_120
.LBB8_117:                              # %if.else.371
                                        #   in Loop: Header=BB8_100 Depth=2
	movss	-4228(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	-4248(%rbp), %xmm0
	jbe	.LBB8_119
# BB#118:                               # %if.then.374
                                        #   in Loop: Header=BB8_100 Depth=2
	movss	-4228(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4248(%rbp)
.LBB8_119:                              # %if.end.375
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_120
.LBB8_120:                              # %if.end.376
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_121
.LBB8_121:                              # %if.end.377
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_123
.LBB8_122:                              # %if.else.378
                                        #   in Loop: Header=BB8_100 Depth=2
	movl	$1, -4144(%rbp)
.LBB8_123:                              # %if.end.379
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_100
.LBB8_124:                              # %while.end.380
                                        #   in Loop: Header=BB8_94 Depth=1
	jmp	.LBB8_94
.LBB8_125:                              # %while.end.381
	cvtss2sd	-4244(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10304(%rax)
	cvtss2sd	-4248(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10312(%rax)
	jmp	.LBB8_151
.LBB8_126:                              # %sw.bb.386
	xorps	%xmm0, %xmm0
	movl	$1, -4324(%rbp)
	movsd	%xmm0, -4312(%rbp)
	movsd	%xmm0, -4320(%rbp)
.LBB8_127:                              # %while.cond.392
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_133 Depth 2
	cmpl	$0, -4132(%rbp)
	jle	.LBB8_150
# BB#128:                               # %while.body.395
                                        #   in Loop: Header=BB8_127 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movslq	-4136(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-4132(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jge	.LBB8_130
# BB#129:                               # %if.then.401
                                        #   in Loop: Header=BB8_127 Depth=1
	movl	-4132(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB8_130:                              # %if.end.402
                                        #   in Loop: Header=BB8_127 Depth=1
	leaq	-4128(%rbp), %rdi
	movl	-28(%rbp), %eax
	movl	-4132(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -4132(%rbp)
	movslq	-4136(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_132
# BB#131:                               # %if.then.411
	movabsq	$.L.str.101, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB8_156
.LBB8_132:                              # %if.end.412
                                        #   in Loop: Header=BB8_127 Depth=1
	leaq	-4128(%rbp), %rax
	movq	%rax, -4304(%rbp)
.LBB8_133:                              # %while.cond.414
                                        #   Parent Loop BB8_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_149
# BB#134:                               # %while.body.418
                                        #   in Loop: Header=BB8_133 Depth=2
	movq	-4304(%rbp), %rdi
	callq	fits_nan_64
	cmpl	$0, %eax
	jne	.LBB8_147
# BB#135:                               # %if.then.421
                                        #   in Loop: Header=BB8_133 Depth=2
	cmpl	$0, fits_ieee64_intel
	je	.LBB8_137
# BB#136:                               # %if.then.423
                                        #   in Loop: Header=BB8_133 Depth=2
	movq	-4304(%rbp), %rax
	movb	7(%rax), %cl
	movb	%cl, -4332(%rbp)
	movq	-4304(%rbp), %rax
	movb	6(%rax), %cl
	movb	%cl, -4331(%rbp)
	movq	-4304(%rbp), %rax
	movb	5(%rax), %cl
	movb	%cl, -4330(%rbp)
	movq	-4304(%rbp), %rax
	movb	4(%rax), %cl
	movb	%cl, -4329(%rbp)
	movq	-4304(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -4328(%rbp)
	movq	-4304(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -4327(%rbp)
	movq	-4304(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -4326(%rbp)
	movq	-4304(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -4325(%rbp)
	movsd	-4332(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -4296(%rbp)
	jmp	.LBB8_138
.LBB8_137:                              # %if.else.442
                                        #   in Loop: Header=BB8_133 Depth=2
	movq	-4304(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -4296(%rbp)
.LBB8_138:                              # %if.end.443
                                        #   in Loop: Header=BB8_133 Depth=2
	movq	-4304(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -4304(%rbp)
	cmpl	$0, -4324(%rbp)
	je	.LBB8_140
# BB#139:                               # %if.then.446
                                        #   in Loop: Header=BB8_133 Depth=2
	movl	$0, -4324(%rbp)
	movsd	-4296(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -4320(%rbp)
	movsd	%xmm0, -4312(%rbp)
	jmp	.LBB8_146
.LBB8_140:                              # %if.else.447
                                        #   in Loop: Header=BB8_133 Depth=2
	movsd	-4296(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-4312(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_142
# BB#141:                               # %if.then.450
                                        #   in Loop: Header=BB8_133 Depth=2
	movsd	-4296(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -4312(%rbp)
	jmp	.LBB8_145
.LBB8_142:                              # %if.else.451
                                        #   in Loop: Header=BB8_133 Depth=2
	movsd	-4296(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	-4320(%rbp), %xmm0
	jbe	.LBB8_144
# BB#143:                               # %if.then.454
                                        #   in Loop: Header=BB8_133 Depth=2
	movsd	-4296(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -4320(%rbp)
.LBB8_144:                              # %if.end.455
                                        #   in Loop: Header=BB8_133 Depth=2
	jmp	.LBB8_145
.LBB8_145:                              # %if.end.456
                                        #   in Loop: Header=BB8_133 Depth=2
	jmp	.LBB8_146
.LBB8_146:                              # %if.end.457
                                        #   in Loop: Header=BB8_133 Depth=2
	jmp	.LBB8_148
.LBB8_147:                              # %if.else.458
                                        #   in Loop: Header=BB8_133 Depth=2
	movl	$1, -4144(%rbp)
.LBB8_148:                              # %if.end.459
                                        #   in Loop: Header=BB8_133 Depth=2
	jmp	.LBB8_133
.LBB8_149:                              # %while.end.460
                                        #   in Loop: Header=BB8_127 Depth=1
	jmp	.LBB8_127
.LBB8_150:                              # %while.end.461
	movsd	-4312(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10304(%rax)
	movsd	-4320(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 10312(%rax)
.LBB8_151:                              # %sw.epilog
	cmpl	$0, -4144(%rbp)
	je	.LBB8_153
# BB#152:                               # %if.then.465
	movq	-24(%rbp), %rax
	movb	$1, 10284(%rax)
.LBB8_153:                              # %if.end.467
	cmpl	$0, -4140(%rbp)
	je	.LBB8_155
# BB#154:                               # %if.then.469
	movq	-24(%rbp), %rax
	movb	$1, 10285(%rax)
.LBB8_155:                              # %if.end.471
	movl	$0, -4(%rbp)
.LBB8_156:                              # %return
	movl	-4(%rbp), %eax
	addq	$4384, %rsp             # imm = 0x1120
	popq	%rbp
	retq
.Lfunc_end8:
	.size	fits_eval_pixrange, .Lfunc_end8-fits_eval_pixrange
	.cfi_endproc

	.globl	fits_close
	.align	16, 0x90
	.type	fits_close,@function
fits_close:                             # @fits_close
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	callq	fits_set_error
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	fits_delete_filestruct
.LBB9_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	fits_close, .Lfunc_end9-fits_close
	.cfi_endproc

	.align	16, 0x90
	.type	fits_delete_filestruct,@function
fits_delete_filestruct:                 # @fits_delete_filestruct
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fits_delete_hdulist
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB10_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	fits_delete_filestruct, .Lfunc_end10-fits_delete_filestruct
	.cfi_endproc

	.globl	fits_add_hdu
	.align	16, 0x90
	.type	fits_add_hdu,@function
fits_add_hdu:                           # @fits_add_hdu
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	8(%rdi), %eax
	cmpl	$119, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.9, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB11_11
.LBB11_2:                               # %if.end
	callq	fits_new_hdulist
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB11_11
.LBB11_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB11_6
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB11_10
.LBB11_6:                               # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB11_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 14480(%rax)
	je	.LBB11_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB11_7 Depth=1
	movq	-32(%rbp), %rax
	movq	14480(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_7
.LBB11_9:                               # %while.end
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 14480(%rcx)
.LBB11_10:                              # %if.end.15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fits_add_hdu, .Lfunc_end11-fits_add_hdu
	.cfi_endproc

	.align	16, 0x90
	.type	fits_new_hdulist,@function
fits_new_hdulist:                       # @fits_new_hdulist
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
	subq	$32, %rsp
	movl	$14488, %eax            # imm = 0x3898
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movl	$14488, %eax            # imm = 0x3898
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	memset
	movq	-16(%rbp), %rcx
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 14344(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 14336(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 10312(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 10304(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 14456(%rcx)
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 14448(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB12_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	fits_new_hdulist, .Lfunc_end12-fits_new_hdulist
	.cfi_endproc

	.globl	fits_add_card
	.align	16, 0x90
	.type	fits_add_card,@function
fits_add_card:                          # @fits_add_card
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$128, 40(%rsi)
	jl	.LBB13_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB13_6
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$80, -28(%rbp)
	jge	.LBB13_4
# BB#3:                                 # %if.then.3
	movl	$32, %esi
	movl	$80, %eax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	40(%rdx), %rdx
	movq	-16(%rbp), %rdi
	addq	$44, %rdi
	imulq	$80, %rdx, %rdx
	addq	%rdx, %rdi
	addq	%rcx, %rdi
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, 40(%rcx)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	addq	$44, %rdx
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memcpy
	jmp	.LBB13_5
.LBB13_4:                               # %if.else
	movl	$80, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, 40(%rcx)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	addq	$44, %rdi
	imulq	$80, %rcx, %rcx
	addq	%rcx, %rdi
	movq	-24(%rbp), %rsi
	callq	memcpy
.LBB13_5:                               # %if.end.18
	movl	$0, -4(%rbp)
.LBB13_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	fits_add_card, .Lfunc_end13-fits_add_card
	.cfi_endproc

	.globl	fits_print_header
	.align	16, 0x90
	.type	fits_print_header,@function
fits_print_header:                      # @fits_print_header
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpb	$0, 10289(%rdi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movabsq	$.L.str.11, %rdi
	movq	-8(%rbp), %rax
	addq	$14352, %rax            # imm = 0x3810
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB14_3:                               # %if.end
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.13, %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.14, %rdi
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.15, %rdi
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.16, %rdi
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %esi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	10304(%rcx), %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	10312(%rcx), %xmm0      # xmm0 = mem[0],zero
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.19, %rdi
	movq	-8(%rbp), %rcx
	movl	10320(%rcx), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$1, -12(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	10320(%rcx), %eax
	jg	.LBB14_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movabsq	$.L.str.20, %rdi
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movl	10324(%rdx,%rcx,4), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB14_4
.LBB14_7:                               # %for.end
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movl	14320(%rax), %esi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	cmpb	$0, 10286(%rdi)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB14_9
# BB#8:                                 # %if.then.19
	movabsq	$.L.str.22, %rdi
	movq	-8(%rbp), %rax
	movq	14328(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %if.else.22
	movabsq	$.L.str.23, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB14_10:                              # %if.end.24
	movq	-8(%rbp), %rax
	cmpb	$0, 10287(%rax)
	je	.LBB14_12
# BB#11:                                # %if.then.27
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	14336(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.32
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB14_13:                              # %if.end.34
	movq	-8(%rbp), %rax
	cmpb	$0, 10288(%rax)
	je	.LBB14_15
# BB#14:                                # %if.then.37
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	14344(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.42
	movabsq	$.L.str.27, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB14_16:                              # %if.end.44
	movq	-8(%rbp), %rax
	cmpb	$0, 10291(%rax)
	je	.LBB14_18
# BB#17:                                # %if.then.47
	movabsq	$.L.str.28, %rdi
	movq	-8(%rbp), %rax
	movq	14432(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %if.else.50
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB14_19:                              # %if.end.52
	movq	-8(%rbp), %rax
	cmpb	$0, 10292(%rax)
	je	.LBB14_21
# BB#20:                                # %if.then.55
	movabsq	$.L.str.30, %rdi
	movq	-8(%rbp), %rax
	movq	14440(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB14_22
.LBB14_21:                              # %if.else.58
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB14_22:                              # %if.end.60
	movq	-8(%rbp), %rax
	cmpb	$0, 10294(%rax)
	je	.LBB14_24
# BB#23:                                # %if.then.63
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	14456(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB14_25
.LBB14_24:                              # %if.else.68
	movabsq	$.L.str.33, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB14_25:                              # %if.end.70
	movq	-8(%rbp), %rax
	cmpb	$0, 10293(%rax)
	je	.LBB14_27
# BB#26:                                # %if.then.73
	movl	$39, %esi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	14448(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_dtostr
	movabsq	$.L.str.34, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB14_28
.LBB14_27:                              # %if.else.78
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB14_28:                              # %if.end.80
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	fits_print_header, .Lfunc_end14-fits_print_header
	.cfi_endproc

	.globl	fits_write_header
	.align	16, 0x90
	.type	fits_write_header,@function
fits_write_header:                      # @fits_write_header
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
	subq	$1904, %rsp             # imm = 0x770
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsbl	8(%rsi), %eax
	cmpl	$119, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.36, %rdi
	callq	fits_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB15_52
.LBB15_2:                               # %if.end
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10289(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movabsq	$.L.str.39, %rcx
	movabsq	$.L.str.40, %r8
	leaq	-128(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-128(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1604(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB15_14
.LBB15_4:                               # %if.else
	movq	-24(%rbp), %rax
	cmpb	$0, 10290(%rax)
	je	.LBB15_13
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	leaq	-224(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$14352, %rax            # imm = 0x3810
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	leaq	-224(%rbp), %rdi
	movl	%eax, -1620(%rbp)       # 4-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movl	%r8d, -228(%rbp)
.LBB15_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$81, -228(%rbp)
	jge	.LBB15_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB15_6 Depth=1
	movslq	-228(%rbp), %rax
	movb	$32, -224(%rbp,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB15_6
.LBB15_9:                               # %for.end
	movl	$8, -228(%rbp)
	cmpl	$8, -228(%rbp)
	jge	.LBB15_11
# BB#10:                                # %if.then.22
	movb	$39, -205(%rbp)
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.24
	movl	-228(%rbp), %eax
	addl	$11, %eax
	movslq	%eax, %rcx
	movb	$39, -224(%rbp,%rcx)
.LBB15_12:                              # %if.end.27
	movl	$1, %eax
	movl	%eax, %esi
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-224(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	callq	fwrite
	movl	-28(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -28(%rbp)
	movq	%rax, -1632(%rbp)       # 8-byte Spill
.LBB15_13:                              # %if.end.32
	jmp	.LBB15_14
.LBB15_14:                              # %if.end.33
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-320(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	14320(%rax), %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-320(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1636(%rbp)       # 4-byte Spill
	callq	fwrite
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-416(%rbp), %rdi
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	-24(%rbp), %rcx
	movslq	10320(%rcx), %rcx
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-416(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1652(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB15_15:                              # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	10320(%rcx), %eax
	jge	.LBB15_18
# BB#16:                                # %for.body.54
                                        #   in Loop: Header=BB15_15 Depth=1
	movabsq	$.L.str.46, %rsi
	leaq	-426(%rbp), %rdi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.40, %r8
	leaq	-426(%rbp), %rdx
	leaq	-512(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %r9
	movslq	10324(%r9,%rcx,4), %rcx
	movl	%eax, -1668(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	sprintf
	movl	$1, %r10d
	movl	%r10d, %esi
	movl	$80, %r10d
	movl	%r10d, %edx
	leaq	-512(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1672(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r10d
	addl	$1, %r10d
	movl	%r10d, -28(%rbp)
	movq	%rax, -1680(%rbp)       # 8-byte Spill
# BB#17:                                # %for.inc.70
                                        #   in Loop: Header=BB15_15 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_15
.LBB15_18:                              # %for.end.72
	movq	-24(%rbp), %rax
	cmpb	$0, 10296(%rax)
	je	.LBB15_20
# BB#19:                                # %if.then.75
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.40, %r8
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.39, %rcx
	leaq	-608(%rbp), %rdi
	movq	-24(%rbp), %r9
	cmpl	$0, 14468(%r9)
	cmovneq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r10d
	movl	%r10d, %esi
	movl	$80, %r10d
	movl	%r10d, %edx
	leaq	-608(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r10d
	addl	$1, %r10d
	movl	%r10d, -28(%rbp)
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB15_20:                              # %if.end.85
	movq	-24(%rbp), %rax
	cmpb	$0, 10295(%rax)
	je	.LBB15_22
# BB#21:                                # %if.then.88
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.49, %rdx
	movabsq	$.L.str.40, %r8
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.39, %rcx
	leaq	-704(%rbp), %rdi
	movq	-24(%rbp), %r9
	cmpl	$0, 14464(%r9)
	cmovneq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r10d
	movl	%r10d, %esi
	movl	$80, %r10d
	movl	%r10d, %edx
	leaq	-704(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r10d
	addl	$1, %r10d
	movl	%r10d, -28(%rbp)
	movq	%rax, -1712(%rbp)       # 8-byte Spill
.LBB15_22:                              # %if.end.99
	movq	-24(%rbp), %rax
	cmpb	$0, 10292(%rax)
	je	.LBB15_24
# BB#23:                                # %if.then.102
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-800(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	14440(%rax), %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-800(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1716(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1728(%rbp)       # 8-byte Spill
.LBB15_24:                              # %if.end.111
	movq	-24(%rbp), %rax
	cmpb	$0, 10291(%rax)
	je	.LBB15_26
# BB#25:                                # %if.then.114
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-896(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	14432(%rax), %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-896(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1732(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB15_26:                              # %if.end.123
	movq	-24(%rbp), %rax
	cmpb	$0, 10293(%rax)
	je	.LBB15_30
# BB#27:                                # %if.then.126
	movl	$21, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-1024(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	14448(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.53, %rsi
	leaq	-1024(%rbp), %rdi
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	callq	strstr
	movq	%rax, -1032(%rbp)
	cmpq	$0, -1032(%rbp)
	je	.LBB15_29
# BB#28:                                # %if.then.134
	movq	-1032(%rbp), %rax
	movb	$69, (%rax)
.LBB15_29:                              # %if.end.135
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-1024(%rbp), %rcx
	leaq	-992(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-992(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1756(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1768(%rbp)       # 8-byte Spill
.LBB15_30:                              # %if.end.143
	movq	-24(%rbp), %rax
	cmpb	$0, 10294(%rax)
	je	.LBB15_34
# BB#31:                                # %if.then.146
	movl	$21, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-1152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	14456(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.53, %rsi
	leaq	-1152(%rbp), %rdi
	movq	%rax, -1776(%rbp)       # 8-byte Spill
	callq	strstr
	movq	%rax, -1160(%rbp)
	cmpq	$0, -1160(%rbp)
	je	.LBB15_33
# BB#32:                                # %if.then.156
	movq	-1160(%rbp), %rax
	movb	$69, (%rax)
.LBB15_33:                              # %if.end.157
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.56, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-1152(%rbp), %rcx
	leaq	-1120(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-1120(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1780(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1792(%rbp)       # 8-byte Spill
.LBB15_34:                              # %if.end.165
	movq	-24(%rbp), %rax
	cmpb	$0, 10287(%rax)
	je	.LBB15_38
# BB#35:                                # %if.then.168
	movl	$21, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-1280(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	14336(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.53, %rsi
	leaq	-1280(%rbp), %rdi
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	callq	strstr
	movq	%rax, -1288(%rbp)
	cmpq	$0, -1288(%rbp)
	je	.LBB15_37
# BB#36:                                # %if.then.178
	movq	-1288(%rbp), %rax
	movb	$69, (%rax)
.LBB15_37:                              # %if.end.179
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-1280(%rbp), %rcx
	leaq	-1248(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-1248(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1804(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB15_38:                              # %if.end.187
	movq	-24(%rbp), %rax
	cmpb	$0, 10288(%rax)
	je	.LBB15_42
# BB#39:                                # %if.then.190
	movl	$21, %esi
	movabsq	$.L.str.52, %rdx
	leaq	-1408(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	14344(%rax), %xmm0      # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.53, %rsi
	leaq	-1408(%rbp), %rdi
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	callq	strstr
	movq	%rax, -1416(%rbp)
	cmpq	$0, -1416(%rbp)
	je	.LBB15_41
# BB#40:                                # %if.then.200
	movq	-1416(%rbp), %rax
	movb	$69, (%rax)
.LBB15_41:                              # %if.end.201
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-1408(%rbp), %rcx
	leaq	-1376(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-1376(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1828(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB15_42:                              # %if.end.209
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB15_44
# BB#43:                                # %if.then.212
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.59, %rdx
	movabsq	$.L.str.40, %r8
	leaq	-1504(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rcx
	movb	$0, %al
	callq	sprintf
	movl	$1, %r9d
	movl	%r9d, %esi
	movl	$80, %r9d
	movl	%r9d, %edx
	leaq	-1504(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -1844(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	-28(%rbp), %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	%rax, -1856(%rbp)       # 8-byte Spill
.LBB15_44:                              # %if.end.221
	movq	-24(%rbp), %rax
	cmpl	$0, 40(%rax)
	jle	.LBB15_46
# BB#45:                                # %if.then.224
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	addq	$44, %rcx
	movq	-24(%rbp), %rdx
	movslq	40(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -1864(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1864(%rbp), %rcx       # 8-byte Reload
	callq	fwrite
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %r8d
	addl	-28(%rbp), %r8d
	movl	%r8d, -28(%rbp)
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB15_46:                              # %if.end.232
	movabsq	$.L.str.60, %rsi
	movabsq	$.L.str.61, %rdx
	leaq	-1600(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-1600(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8), %rcx
	movl	%eax, -1876(%rbp)       # 4-byte Spill
	callq	fwrite
	movl	$2880, %r9d             # imm = 0xB40
	movl	-28(%rbp), %r10d
	addl	$1, %r10d
	movl	%r10d, -28(%rbp)
	imull	$80, -28(%rbp), %r10d
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	movl	%r10d, %eax
	cltd
	idivl	%r9d
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB15_51
# BB#47:                                # %if.then.241
	jmp	.LBB15_48
.LBB15_48:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$2880, %eax             # imm = 0xB40
	jge	.LBB15_50
# BB#49:                                # %while.body
                                        #   in Loop: Header=BB15_48 Depth=1
	movl	$32, %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -1892(%rbp)       # 4-byte Spill
	jmp	.LBB15_48
.LBB15_50:                              # %while.end
	jmp	.LBB15_51
.LBB15_51:                              # %if.end.247
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	ferror
	xorl	%ecx, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, -4(%rbp)
.LBB15_52:                              # %return
	movl	-4(%rbp), %eax
	addq	$1904, %rsp             # imm = 0x770
	popq	%rbp
	retq
.Lfunc_end15:
	.size	fits_write_header, .Lfunc_end15-fits_write_header
	.cfi_endproc

	.globl	fits_decode_card
	.align	16, 0x90
	.type	fits_decode_card,@function
fits_decode_card:                       # @fits_decode_card
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -412(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB16_49
.LBB16_2:                               # %if.end
	movabsq	$.L.str.62, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movl	$80, %eax
	movl	%eax, %ecx
	leaq	-128(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	callq	memcpy
	movb	$0, -48(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.63, %rsi
	leaq	-128(%rbp), %rdx
	leaq	-384(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	leaq	-384(%rbp), %rdi
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
.LBB16_4:                               # %if.end.6
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$8, %rdx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	ja	.LBB16_48
# BB#50:                                # %if.end.6
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_5:                               # %sw.bb
	movb	-118(%rbp), %al
	movb	%al, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_6:                               # %sw.bb.8
	movabsq	$.L.str.64, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB16_8
# BB#7:                                 # %if.then.13
	movabsq	$.L.str.65, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_8:                               # %if.end.15
	movq	-32(%rbp), %rax
	movw	%ax, %cx
	movw	%cx, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_9:                               # %sw.bb.16
	movabsq	$.L.str.64, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB16_11
# BB#10:                                # %if.then.22
	movabsq	$.L.str.66, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_11:                              # %if.end.24
	movq	-32(%rbp), %rax
	movq	%rax, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_12:                              # %sw.bb.25
	leaq	-40(%rbp), %rsi
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	callq	fits_scanfdouble
	cmpl	$1, %eax
	je	.LBB16_14
# BB#13:                                # %if.then.31
	movabsq	$.L.str.67, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_14:                              # %if.end.33
	cvtsd2ss	-40(%rbp), %xmm0
	movss	%xmm0, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_15:                              # %sw.bb.35
	leaq	-40(%rbp), %rsi
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	callq	fits_scanfdouble
	cmpl	$1, %eax
	je	.LBB16_17
# BB#16:                                # %if.then.41
	movabsq	$.L.str.68, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_17:                              # %if.end.43
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_18:                              # %sw.bb.44
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, -392(%rbp)
.LBB16_19:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-392(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB16_21
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB16_19
.LBB16_21:                              # %while.end
	movq	-392(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$84, %ecx
	jne	.LBB16_23
# BB#22:                                # %if.then.53
	movl	$1, fits_decode_card.data
	jmp	.LBB16_27
.LBB16_23:                              # %if.else
	movq	-392(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$70, %ecx
	jne	.LBB16_25
# BB#24:                                # %if.then.57
	movl	$0, fits_decode_card.data
	jmp	.LBB16_26
.LBB16_25:                              # %if.else.58
	movabsq	$.L.str.69, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_26:                              # %if.end.60
	jmp	.LBB16_27
.LBB16_27:                              # %if.end.61
	jmp	.LBB16_48
.LBB16_28:                              # %sw.bb.62
	movabsq	$.L.str.64, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB16_30
# BB#29:                                # %if.then.68
	movabsq	$.L.str.70, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_30:                              # %if.end.70
	movq	-32(%rbp), %rax
	movq	%rax, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_31:                              # %sw.bb.71
	leaq	-40(%rbp), %rsi
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	callq	fits_scanfdouble
	cmpl	$1, %eax
	je	.LBB16_33
# BB#32:                                # %if.then.77
	movabsq	$.L.str.71, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_33:                              # %if.end.79
	cvtsd2ss	-40(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, fits_decode_card.data
	jmp	.LBB16_48
.LBB16_34:                              # %sw.bb.82
	leaq	-128(%rbp), %rax
	addq	$10, %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB16_36
# BB#35:                                # %if.then.88
	movabsq	$.L.str.72, %rdi
	callq	fits_set_error
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB16_48
.LBB16_36:                              # %if.end.90
	leaq	-128(%rbp), %rax
	movabsq	$fits_decode_card.data, %rcx
	movq	%rcx, -400(%rbp)
	movq	-392(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -392(%rbp)
	addq	$80, %rax
	addq	$-1, %rax
	movq	%rax, -408(%rbp)
.LBB16_37:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-392(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB16_39
# BB#38:                                # %if.then.98
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	movb	(%rax), %cl
	movq	-400(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -400(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB16_44
.LBB16_39:                              # %if.else.100
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	cmpq	-408(%rbp), %rax
	jb	.LBB16_41
# BB#40:                                # %if.then.103
	jmp	.LBB16_47
.LBB16_41:                              # %if.end.104
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB16_43
# BB#42:                                # %if.then.109
	jmp	.LBB16_47
.LBB16_43:                              # %if.end.110
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -392(%rbp)
	movb	(%rax), %dl
	movq	-400(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -400(%rbp)
	movb	%dl, (%rax)
.LBB16_44:                              # %if.end.113
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	cmpq	-408(%rbp), %rax
	jb	.LBB16_46
# BB#45:                                # %if.then.116
	jmp	.LBB16_47
.LBB16_46:                              # %if.end.117
                                        #   in Loop: Header=BB16_37 Depth=1
	movq	-392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB16_37
.LBB16_47:                              # %for.end
	movq	-400(%rbp), %rax
	movb	$0, (%rax)
.LBB16_48:                              # %sw.epilog
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$fits_decode_card.data, %rdx
	cmpl	$0, -412(%rbp)
	cmoveq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
.LBB16_49:                              # %return
	movq	-8(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fits_decode_card, .Lfunc_end16-fits_decode_card
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_5
	.quad	.LBB16_6
	.quad	.LBB16_9
	.quad	.LBB16_12
	.quad	.LBB16_15
	.quad	.LBB16_18
	.quad	.LBB16_28
	.quad	.LBB16_31
	.quad	.LBB16_34

	.text
	.align	16, 0x90
	.type	fits_scanfdouble,@function
fits_scanfdouble:                       # @fits_scanfdouble
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_15
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_strchug
	movq	-40(%rbp), %rdi
	movsbl	(%rdi), %ecx
	cmpl	$45, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	je	.LBB17_3
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	jne	.LBB17_4
.LBB17_3:                               # %if.then.7
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB17_4:                               # %if.end
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jne	.LBB17_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$88, %edi
	jne	.LBB17_7
# BB#6:                                 # %if.then.16
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -20(%rbp)
	jmp	.LBB17_14
.LBB17_7:                               # %if.else
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_9
# BB#8:                                 # %if.then.20
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB17_9:                               # %if.end.22
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB17_13
# BB#10:                                # %if.then.27
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -56(%rbp)
	callq	__errno_location
	cmpl	$0, (%rax)
	jne	.LBB17_12
# BB#11:                                # %if.then.32
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -20(%rbp)
.LBB17_12:                              # %if.end.33
	jmp	.LBB17_13
.LBB17_13:                              # %if.end.34
	jmp	.LBB17_14
.LBB17_14:                              # %if.end.35
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB17_15:                              # %if.end.36
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	fits_scanfdouble, .Lfunc_end17-fits_scanfdouble
	.cfi_endproc

	.globl	fits_search_card
	.align	16, 0x90
	.type	fits_search_card,@function
fits_search_card:                       # @fits_search_card
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$8, -28(%rbp)
	jle	.LBB18_2
# BB#1:                                 # %if.then
	movl	$8, -28(%rbp)
.LBB18_2:                               # %if.end
	cmpl	$0, -28(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.73, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB18_14
.LBB18_4:                               # %if.end.5
	leaq	-49(%rbp), %rax
	movl	$.L.str.74, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	memcpy
.LBB18_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB18_13
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB18_7:                               # %for.cond
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$36, -32(%rbp)
	jge	.LBB18_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB18_7 Depth=2
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-49(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB18_10
# BB#9:                                 # %if.then.17
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_14
.LBB18_10:                              # %if.end.18
                                        #   in Loop: Header=BB18_7 Depth=2
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -40(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB18_7
.LBB18_12:                              # %for.end
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-16(%rbp), %rax
	movq	2880(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB18_5
.LBB18_13:                              # %while.end
	movq	$0, -8(%rbp)
.LBB18_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	fits_search_card, .Lfunc_end18-fits_search_card
	.cfi_endproc

	.globl	fits_image_info
	.align	16, 0x90
	.type	fits_image_info,@function
fits_image_info:                        # @fits_image_info
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.75, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB19_16
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	8(%rax), %ecx
	cmpl	$114, %ecx
	je	.LBB19_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.76, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB19_16
.LBB19_4:                               # %if.end.4
	cmpl	$1, -20(%rbp)
	jl	.LBB19_6
# BB#5:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jle	.LBB19_7
.LBB19_6:                               # %if.then.9
	movabsq	$.L.str.77, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB19_16
.LBB19_7:                               # %if.end.10
	movl	$1, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB19_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_15
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 36(%rax)
	jg	.LBB19_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB19_8 Depth=1
	jmp	.LBB19_14
.LBB19_11:                              # %if.end.16
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	36(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB19_13
# BB#12:                                # %if.then.20
	jmp	.LBB19_15
.LBB19_13:                              # %if.end.21
                                        #   in Loop: Header=BB19_8 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB19_14:                              # %for.inc
                                        #   in Loop: Header=BB19_8 Depth=1
	movq	-40(%rbp), %rax
	movq	14480(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_8
.LBB19_15:                              # %for.end
	movl	-20(%rbp), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB19_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	fits_image_info, .Lfunc_end19-fits_image_info
	.cfi_endproc

	.globl	fits_seek_image
	.align	16, 0x90
	.type	fits_seek_image,@function
fits_seek_image:                        # @fits_seek_image
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
	leaq	-36(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	fits_image_info
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB20_5
.LBB20_2:                               # %if.end
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	10324(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	10328(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	imulq	-56(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB20_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.78, %rdi
	callq	fits_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB20_5
.LBB20_4:                               # %if.end.10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	fits_seek_image, .Lfunc_end20-fits_seek_image
	.cfi_endproc

	.globl	fits_read_pixel
	.align	16, 0x90
	.type	fits_read_pixel,@function
fits_read_pixel:                        # @fits_read_pixel
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
	subq	$4352, %rsp             # imm = 0x1100
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -4200(%rbp)
	movss	%xmm0, -4260(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	8(%rcx), %edx
	cmpl	$114, %edx
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_2:                               # %if.end
	movq	-40(%rbp), %rax
	movsbl	40(%rax), %ecx
	cmpl	$99, %ecx
	je	.LBB21_4
# BB#3:                                 # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_4:                               # %if.end.6
	cmpl	$0, -28(%rbp)
	jg	.LBB21_6
# BB#5:                                 # %if.then.9
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_160
.LBB21_6:                               # %if.end.10
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	divsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-80(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	16(%rax), %rax
	movq	%rax, -4216(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %rax
	movq	%rax, -4224(%rbp)
	cmpq	$0, -4216(%rbp)
	jge	.LBB21_8
# BB#7:                                 # %if.then.22
	movq	$0, -4216(%rbp)
	jmp	.LBB21_11
.LBB21_8:                               # %if.else
	cmpq	$255, -4216(%rbp)
	jle	.LBB21_10
# BB#9:                                 # %if.then.25
	movq	$255, -4216(%rbp)
.LBB21_10:                              # %if.end.26
	jmp	.LBB21_11
.LBB21_11:                              # %if.end.27
	cmpq	$0, -4224(%rbp)
	jge	.LBB21_13
# BB#12:                                # %if.then.30
	movq	$0, -4224(%rbp)
	jmp	.LBB21_16
.LBB21_13:                              # %if.else.31
	cmpq	$255, -4224(%rbp)
	jle	.LBB21_15
# BB#14:                                # %if.then.34
	movq	$255, -4224(%rbp)
.LBB21_15:                              # %if.end.35
	jmp	.LBB21_16
.LBB21_16:                              # %if.end.36
	movq	-48(%rbp), %rax
	movq	%rax, -4192(%rbp)
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -4193(%rbp)
	movq	-24(%rbp), %rax
	movl	14320(%rax), %ecx
	movl	%ecx, %esi
	subl	$-64, %esi
	movl	%ecx, -4324(%rbp)       # 4-byte Spill
	movl	%esi, -4328(%rbp)       # 4-byte Spill
	je	.LBB21_137
	jmp	.LBB21_161
.LBB21_161:                             # %if.end.36
	movl	-4324(%rbp), %eax       # 4-byte Reload
	subl	$-32, %eax
	movl	%eax, -4332(%rbp)       # 4-byte Spill
	je	.LBB21_107
	jmp	.LBB21_162
.LBB21_162:                             # %if.end.36
	movl	-4324(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -4336(%rbp)       # 4-byte Spill
	je	.LBB21_17
	jmp	.LBB21_163
.LBB21_163:                             # %if.end.36
	movl	-4324(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -4340(%rbp)       # 4-byte Spill
	je	.LBB21_47
	jmp	.LBB21_164
.LBB21_164:                             # %if.end.36
	movl	-4324(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -4344(%rbp)       # 4-byte Spill
	je	.LBB21_77
	jmp	.LBB21_159
.LBB21_17:                              # %sw.bb
	jmp	.LBB21_18
.LBB21_18:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_25 Depth 2
                                        #     Child Loop BB21_37 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB21_46
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB21_18 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movq	-24(%rbp), %rcx
	movslq	32(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -4228(%rbp)
	movl	-4228(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jle	.LBB21_21
# BB#20:                                # %if.then.45
                                        #   in Loop: Header=BB21_18 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4228(%rbp)
.LBB21_21:                              # %if.end.46
                                        #   in Loop: Header=BB21_18 Depth=1
	leaq	-4176(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	32(%rax), %rsi
	movslq	-4228(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	fread
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_23
# BB#22:                                # %if.then.53
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_23:                              # %if.end.54
                                        #   in Loop: Header=BB21_18 Depth=1
	leaq	-4176(%rbp), %rax
	movl	-4228(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	%rax, -4184(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB21_36
# BB#24:                                # %if.then.57
                                        #   in Loop: Header=BB21_18 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movb	%al, %cl
	movb	%cl, -4230(%rbp)
.LBB21_25:                              # %while.cond.60
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_35
# BB#26:                                # %while.body.62
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-4184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4184(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4229(%rbp)
	movzbl	-4229(%rbp), %esi
	movzbl	-4230(%rbp), %edi
	cmpl	%edi, %esi
	jne	.LBB21_28
# BB#27:                                # %if.then.67
                                        #   in Loop: Header=BB21_25 Depth=2
	movb	-4193(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB21_34
.LBB21_28:                              # %if.else.69
                                        #   in Loop: Header=BB21_25 Depth=2
	movzbl	-4229(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, -4208(%rbp)
	movq	-4208(%rbp), %rcx
	cmpq	-4216(%rbp), %rcx
	jge	.LBB21_30
# BB#29:                                # %if.then.76
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_33
.LBB21_30:                              # %if.else.77
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_32
# BB#31:                                # %if.then.80
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_32:                              # %if.end.81
                                        #   in Loop: Header=BB21_25 Depth=2
	jmp	.LBB21_33
.LBB21_33:                              # %if.end.82
                                        #   in Loop: Header=BB21_25 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
.LBB21_34:                              # %if.end.85
                                        #   in Loop: Header=BB21_25 Depth=2
	movl	-4200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4200(%rbp)
	jmp	.LBB21_25
.LBB21_35:                              # %while.end
                                        #   in Loop: Header=BB21_18 Depth=1
	jmp	.LBB21_45
.LBB21_36:                              # %if.else.86
                                        #   in Loop: Header=BB21_18 Depth=1
	jmp	.LBB21_37
.LBB21_37:                              # %while.cond.87
                                        #   Parent Loop BB21_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_44
# BB#38:                                # %while.body.90
                                        #   in Loop: Header=BB21_37 Depth=2
	movq	-4184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4184(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4229(%rbp)
	movzbl	-4229(%rbp), %esi
	cvtsi2sdl	%esi, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_40
# BB#39:                                # %if.then.99
                                        #   in Loop: Header=BB21_37 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_43
.LBB21_40:                              # %if.else.100
                                        #   in Loop: Header=BB21_37 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_42
# BB#41:                                # %if.then.103
                                        #   in Loop: Header=BB21_37 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_42:                              # %if.end.104
                                        #   in Loop: Header=BB21_37 Depth=2
	jmp	.LBB21_43
.LBB21_43:                              # %if.end.105
                                        #   in Loop: Header=BB21_37 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
	movl	-4200(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -4200(%rbp)
	jmp	.LBB21_37
.LBB21_44:                              # %while.end.109
                                        #   in Loop: Header=BB21_18 Depth=1
	jmp	.LBB21_45
.LBB21_45:                              # %if.end.110
                                        #   in Loop: Header=BB21_18 Depth=1
	jmp	.LBB21_18
.LBB21_46:                              # %while.end.111
	jmp	.LBB21_159
.LBB21_47:                              # %sw.bb.112
	jmp	.LBB21_48
.LBB21_48:                              # %while.cond.113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_55 Depth 2
                                        #     Child Loop BB21_67 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB21_76
# BB#49:                                # %while.body.116
                                        #   in Loop: Header=BB21_48 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movq	-24(%rbp), %rcx
	movslq	32(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -4228(%rbp)
	movl	-4228(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jle	.LBB21_51
# BB#50:                                # %if.then.123
                                        #   in Loop: Header=BB21_48 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4228(%rbp)
.LBB21_51:                              # %if.end.124
                                        #   in Loop: Header=BB21_48 Depth=1
	leaq	-4176(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	32(%rax), %rsi
	movslq	-4228(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	fread
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_53
# BB#52:                                # %if.then.134
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_53:                              # %if.end.135
                                        #   in Loop: Header=BB21_48 Depth=1
	leaq	-4176(%rbp), %rax
	movl	-4228(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	%rax, -4184(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB21_66
# BB#54:                                # %if.then.141
                                        #   in Loop: Header=BB21_48 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movw	%ax, %cx
	movw	%cx, -4234(%rbp)
.LBB21_55:                              # %while.cond.144
                                        #   Parent Loop BB21_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_65
# BB#56:                                # %while.body.147
                                        #   in Loop: Header=BB21_55 Depth=2
	movq	-4184(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-4184(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -4232(%rbp)
	movswl	-4232(%rbp), %ecx
	movswl	-4234(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB21_58
# BB#57:                                # %if.then.156
                                        #   in Loop: Header=BB21_55 Depth=2
	movb	-4193(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB21_64
.LBB21_58:                              # %if.else.158
                                        #   in Loop: Header=BB21_55 Depth=2
	movswl	-4232(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, -4208(%rbp)
	movq	-4208(%rbp), %rcx
	cmpq	-4216(%rbp), %rcx
	jge	.LBB21_60
# BB#59:                                # %if.then.166
                                        #   in Loop: Header=BB21_55 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_63
.LBB21_60:                              # %if.else.167
                                        #   in Loop: Header=BB21_55 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_62
# BB#61:                                # %if.then.170
                                        #   in Loop: Header=BB21_55 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_62:                              # %if.end.171
                                        #   in Loop: Header=BB21_55 Depth=2
	jmp	.LBB21_63
.LBB21_63:                              # %if.end.172
                                        #   in Loop: Header=BB21_55 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
.LBB21_64:                              # %if.end.175
                                        #   in Loop: Header=BB21_55 Depth=2
	movl	-4200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4200(%rbp)
	movq	-4184(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -4184(%rbp)
	jmp	.LBB21_55
.LBB21_65:                              # %while.end.177
                                        #   in Loop: Header=BB21_48 Depth=1
	jmp	.LBB21_75
.LBB21_66:                              # %if.else.178
                                        #   in Loop: Header=BB21_48 Depth=1
	jmp	.LBB21_67
.LBB21_67:                              # %while.cond.179
                                        #   Parent Loop BB21_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_74
# BB#68:                                # %while.body.182
                                        #   in Loop: Header=BB21_67 Depth=2
	movq	-4184(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-4184(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movw	%cx, %si
	movw	%si, -4232(%rbp)
	movswl	-4232(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_70
# BB#69:                                # %if.then.197
                                        #   in Loop: Header=BB21_67 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_73
.LBB21_70:                              # %if.else.198
                                        #   in Loop: Header=BB21_67 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_72
# BB#71:                                # %if.then.201
                                        #   in Loop: Header=BB21_67 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_72:                              # %if.end.202
                                        #   in Loop: Header=BB21_67 Depth=2
	jmp	.LBB21_73
.LBB21_73:                              # %if.end.203
                                        #   in Loop: Header=BB21_67 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
	movl	-4200(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -4200(%rbp)
	movq	-4184(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -4184(%rbp)
	jmp	.LBB21_67
.LBB21_74:                              # %while.end.208
                                        #   in Loop: Header=BB21_48 Depth=1
	jmp	.LBB21_75
.LBB21_75:                              # %if.end.209
                                        #   in Loop: Header=BB21_48 Depth=1
	jmp	.LBB21_48
.LBB21_76:                              # %while.end.210
	jmp	.LBB21_159
.LBB21_77:                              # %sw.bb.211
	jmp	.LBB21_78
.LBB21_78:                              # %while.cond.212
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_85 Depth 2
                                        #     Child Loop BB21_97 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB21_106
# BB#79:                                # %while.body.215
                                        #   in Loop: Header=BB21_78 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movq	-24(%rbp), %rcx
	movslq	32(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -4228(%rbp)
	movl	-4228(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jle	.LBB21_81
# BB#80:                                # %if.then.222
                                        #   in Loop: Header=BB21_78 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4228(%rbp)
.LBB21_81:                              # %if.end.223
                                        #   in Loop: Header=BB21_78 Depth=1
	leaq	-4176(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	32(%rax), %rsi
	movslq	-4228(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	fread
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_83
# BB#82:                                # %if.then.233
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_83:                              # %if.end.234
                                        #   in Loop: Header=BB21_78 Depth=1
	leaq	-4176(%rbp), %rax
	movl	-4228(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	%rax, -4184(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 10286(%rax)
	je	.LBB21_96
# BB#84:                                # %if.then.240
                                        #   in Loop: Header=BB21_78 Depth=1
	movq	-24(%rbp), %rax
	movq	14328(%rax), %rax
	movq	%rax, -4256(%rbp)
.LBB21_85:                              # %while.cond.242
                                        #   Parent Loop BB21_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_95
# BB#86:                                # %while.body.245
                                        #   in Loop: Header=BB21_85 Depth=2
	movq	-4184(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-4184(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-4184(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-4184(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -4248(%rbp)
	movq	-4248(%rbp), %rax
	cmpq	-4256(%rbp), %rax
	jne	.LBB21_88
# BB#87:                                # %if.then.263
                                        #   in Loop: Header=BB21_85 Depth=2
	movb	-4193(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB21_94
.LBB21_88:                              # %if.else.265
                                        #   in Loop: Header=BB21_85 Depth=2
	cvtsi2sdq	-4248(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_90
# BB#89:                                # %if.then.272
                                        #   in Loop: Header=BB21_85 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_93
.LBB21_90:                              # %if.else.273
                                        #   in Loop: Header=BB21_85 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_92
# BB#91:                                # %if.then.276
                                        #   in Loop: Header=BB21_85 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_92:                              # %if.end.277
                                        #   in Loop: Header=BB21_85 Depth=2
	jmp	.LBB21_93
.LBB21_93:                              # %if.end.278
                                        #   in Loop: Header=BB21_85 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
.LBB21_94:                              # %if.end.281
                                        #   in Loop: Header=BB21_85 Depth=2
	movl	-4200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4200(%rbp)
	movq	-4184(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -4184(%rbp)
	jmp	.LBB21_85
.LBB21_95:                              # %while.end.284
                                        #   in Loop: Header=BB21_78 Depth=1
	jmp	.LBB21_105
.LBB21_96:                              # %if.else.285
                                        #   in Loop: Header=BB21_78 Depth=1
	jmp	.LBB21_97
.LBB21_97:                              # %while.cond.286
                                        #   Parent Loop BB21_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_104
# BB#98:                                # %while.body.289
                                        #   in Loop: Header=BB21_97 Depth=2
	movq	-4184(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$24, %ecx
	movq	-4184(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$16, %edx
	orl	%edx, %ecx
	movq	-4184(%rbp), %rax
	movzbl	2(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-4184(%rbp), %rax
	movzbl	3(%rax), %edx
	orl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -4248(%rbp)
	cvtsi2sdq	-4248(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_100
# BB#99:                                # %if.then.311
                                        #   in Loop: Header=BB21_97 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_103
.LBB21_100:                             # %if.else.312
                                        #   in Loop: Header=BB21_97 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_102
# BB#101:                               # %if.then.315
                                        #   in Loop: Header=BB21_97 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_102:                             # %if.end.316
                                        #   in Loop: Header=BB21_97 Depth=2
	jmp	.LBB21_103
.LBB21_103:                             # %if.end.317
                                        #   in Loop: Header=BB21_97 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
	movl	-4200(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -4200(%rbp)
	movq	-4184(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -4184(%rbp)
	jmp	.LBB21_97
.LBB21_104:                             # %while.end.322
                                        #   in Loop: Header=BB21_78 Depth=1
	jmp	.LBB21_105
.LBB21_105:                             # %if.end.323
                                        #   in Loop: Header=BB21_78 Depth=1
	jmp	.LBB21_78
.LBB21_106:                             # %while.end.324
	jmp	.LBB21_159
.LBB21_107:                             # %sw.bb.325
	jmp	.LBB21_108
.LBB21_108:                             # %while.cond.326
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_114 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB21_136
# BB#109:                               # %while.body.329
                                        #   in Loop: Header=BB21_108 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movq	-24(%rbp), %rcx
	movslq	32(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -4228(%rbp)
	movl	-4228(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jle	.LBB21_111
# BB#110:                               # %if.then.336
                                        #   in Loop: Header=BB21_108 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4228(%rbp)
.LBB21_111:                             # %if.end.337
                                        #   in Loop: Header=BB21_108 Depth=1
	leaq	-4176(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	32(%rax), %rsi
	movslq	-4228(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	fread
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_113
# BB#112:                               # %if.then.347
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_113:                             # %if.end.348
                                        #   in Loop: Header=BB21_108 Depth=1
	leaq	-4176(%rbp), %rax
	movl	-4228(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	%rax, -4184(%rbp)
.LBB21_114:                             # %while.cond.351
                                        #   Parent Loop BB21_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_135
# BB#115:                               # %while.body.354
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4184(%rbp), %rdi
	callq	fits_nan_32
	cmpl	$0, %eax
	je	.LBB21_117
# BB#116:                               # %if.then.357
                                        #   in Loop: Header=BB21_114 Depth=2
	movb	-4193(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB21_134
.LBB21_117:                             # %if.else.359
                                        #   in Loop: Header=BB21_114 Depth=2
	cmpl	$0, fits_ieee32_intel
	je	.LBB21_119
# BB#118:                               # %if.then.361
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4184(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -4276(%rbp)
	movq	-4184(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -4275(%rbp)
	movq	-4184(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -4274(%rbp)
	movq	-4184(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -4273(%rbp)
	movss	-4276(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4260(%rbp)
	jmp	.LBB21_128
.LBB21_119:                             # %if.else.371
                                        #   in Loop: Header=BB21_114 Depth=2
	cmpl	$0, fits_ieee32_motorola
	je	.LBB21_121
# BB#120:                               # %if.then.373
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4184(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4260(%rbp)
	jmp	.LBB21_127
.LBB21_121:                             # %if.else.374
                                        #   in Loop: Header=BB21_114 Depth=2
	cmpl	$0, fits_ieee64_motorola
	je	.LBB21_123
# BB#122:                               # %if.then.376
                                        #   in Loop: Header=BB21_114 Depth=2
	leaq	-4288(%rbp), %rax
	movq	%rax, -4296(%rbp)
	movq	-4184(%rbp), %rax
	movb	(%rax), %cl
	movq	-4296(%rbp), %rax
	movb	%cl, (%rax)
	movq	-4184(%rbp), %rax
	movb	1(%rax), %cl
	movq	-4296(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-4184(%rbp), %rax
	movb	2(%rax), %cl
	movq	-4296(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-4184(%rbp), %rax
	movb	3(%rax), %cl
	movq	-4296(%rbp), %rax
	movb	%cl, 3(%rax)
	movq	-4296(%rbp), %rax
	movb	$0, 7(%rax)
	movq	-4296(%rbp), %rax
	movb	$0, 6(%rax)
	movq	-4296(%rbp), %rax
	movb	$0, 5(%rax)
	movq	-4296(%rbp), %rax
	movb	$0, 4(%rax)
	cvtsd2ss	-4288(%rbp), %xmm0
	movss	%xmm0, -4260(%rbp)
	jmp	.LBB21_126
.LBB21_123:                             # %if.else.391
                                        #   in Loop: Header=BB21_114 Depth=2
	cmpl	$0, fits_ieee64_intel
	je	.LBB21_125
# BB#124:                               # %if.then.393
                                        #   in Loop: Header=BB21_114 Depth=2
	leaq	-4304(%rbp), %rax
	movq	%rax, -4312(%rbp)
	movq	-4312(%rbp), %rax
	movb	$0, 3(%rax)
	movq	-4312(%rbp), %rax
	movb	$0, 2(%rax)
	movq	-4312(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-4312(%rbp), %rax
	movb	$0, (%rax)
	movq	-4184(%rbp), %rax
	movb	(%rax), %cl
	movq	-4312(%rbp), %rax
	movb	%cl, 7(%rax)
	movq	-4184(%rbp), %rax
	movb	1(%rax), %cl
	movq	-4312(%rbp), %rax
	movb	%cl, 6(%rax)
	movq	-4184(%rbp), %rax
	movb	2(%rax), %cl
	movq	-4312(%rbp), %rax
	movb	%cl, 5(%rax)
	movq	-4184(%rbp), %rax
	movb	3(%rax), %cl
	movq	-4312(%rbp), %rax
	movb	%cl, 4(%rax)
	cvtsd2ss	-4304(%rbp), %xmm0
	movss	%xmm0, -4260(%rbp)
.LBB21_125:                             # %if.end.408
                                        #   in Loop: Header=BB21_114 Depth=2
	jmp	.LBB21_126
.LBB21_126:                             # %if.end.409
                                        #   in Loop: Header=BB21_114 Depth=2
	jmp	.LBB21_127
.LBB21_127:                             # %if.end.410
                                        #   in Loop: Header=BB21_114 Depth=2
	jmp	.LBB21_128
.LBB21_128:                             # %if.end.411
                                        #   in Loop: Header=BB21_114 Depth=2
	cvtss2sd	-4260(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_130
# BB#129:                               # %if.then.418
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_133
.LBB21_130:                             # %if.else.419
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_132
# BB#131:                               # %if.then.422
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_132:                             # %if.end.423
                                        #   in Loop: Header=BB21_114 Depth=2
	jmp	.LBB21_133
.LBB21_133:                             # %if.end.424
                                        #   in Loop: Header=BB21_114 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
.LBB21_134:                             # %if.end.427
                                        #   in Loop: Header=BB21_114 Depth=2
	movl	-4200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4200(%rbp)
	movq	-4184(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -4184(%rbp)
	jmp	.LBB21_114
.LBB21_135:                             # %while.end.430
                                        #   in Loop: Header=BB21_108 Depth=1
	jmp	.LBB21_108
.LBB21_136:                             # %while.end.431
	jmp	.LBB21_159
.LBB21_137:                             # %sw.bb.432
	jmp	.LBB21_138
.LBB21_138:                             # %while.cond.433
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_144 Depth 2
	cmpl	$0, -28(%rbp)
	jle	.LBB21_158
# BB#139:                               # %while.body.436
                                        #   in Loop: Header=BB21_138 Depth=1
	movl	$4096, %eax             # imm = 0x1000
                                        # kill: RAX<def> EAX<kill>
	movq	-24(%rbp), %rcx
	movslq	32(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -4228(%rbp)
	movl	-4228(%rbp), %esi
	cmpl	-28(%rbp), %esi
	jle	.LBB21_141
# BB#140:                               # %if.then.443
                                        #   in Loop: Header=BB21_138 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4228(%rbp)
.LBB21_141:                             # %if.end.444
                                        #   in Loop: Header=BB21_138 Depth=1
	leaq	-4176(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	32(%rax), %rsi
	movslq	-4228(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	fread
	movslq	-4228(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB21_143
# BB#142:                               # %if.then.454
	movl	$-1, -4(%rbp)
	jmp	.LBB21_160
.LBB21_143:                             # %if.end.455
                                        #   in Loop: Header=BB21_138 Depth=1
	leaq	-4176(%rbp), %rax
	movl	-4228(%rbp), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	%rax, -4184(%rbp)
.LBB21_144:                             # %while.cond.458
                                        #   Parent Loop BB21_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4228(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -4228(%rbp)
	cmpl	$0, %eax
	je	.LBB21_157
# BB#145:                               # %while.body.461
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4184(%rbp), %rdi
	callq	fits_nan_64
	cmpl	$0, %eax
	je	.LBB21_147
# BB#146:                               # %if.then.464
                                        #   in Loop: Header=BB21_144 Depth=2
	movb	-4193(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB21_156
.LBB21_147:                             # %if.else.466
                                        #   in Loop: Header=BB21_144 Depth=2
	cmpl	$0, fits_ieee64_intel
	je	.LBB21_149
# BB#148:                               # %if.then.468
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4184(%rbp), %rax
	movb	7(%rax), %cl
	movb	%cl, -4320(%rbp)
	movq	-4184(%rbp), %rax
	movb	6(%rax), %cl
	movb	%cl, -4319(%rbp)
	movq	-4184(%rbp), %rax
	movb	5(%rax), %cl
	movb	%cl, -4318(%rbp)
	movq	-4184(%rbp), %rax
	movb	4(%rax), %cl
	movb	%cl, -4317(%rbp)
	movq	-4184(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -4316(%rbp)
	movq	-4184(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -4315(%rbp)
	movq	-4184(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -4314(%rbp)
	movq	-4184(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -4313(%rbp)
	movsd	-4320(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -4272(%rbp)
	jmp	.LBB21_150
.LBB21_149:                             # %if.else.487
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4184(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -4272(%rbp)
.LBB21_150:                             # %if.end.488
                                        #   in Loop: Header=BB21_144 Depth=2
	movsd	-4272(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -4208(%rbp)
	movq	-4208(%rbp), %rax
	cmpq	-4216(%rbp), %rax
	jge	.LBB21_152
# BB#151:                               # %if.then.494
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4216(%rbp), %rax
	movq	%rax, -4208(%rbp)
	jmp	.LBB21_155
.LBB21_152:                             # %if.else.495
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4208(%rbp), %rax
	cmpq	-4224(%rbp), %rax
	jle	.LBB21_154
# BB#153:                               # %if.then.498
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4224(%rbp), %rax
	movq	%rax, -4208(%rbp)
.LBB21_154:                             # %if.end.499
                                        #   in Loop: Header=BB21_144 Depth=2
	jmp	.LBB21_155
.LBB21_155:                             # %if.end.500
                                        #   in Loop: Header=BB21_144 Depth=2
	movq	-4208(%rbp), %rax
	movb	%al, %cl
	movq	-4192(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)
	movb	%cl, (%rax)
.LBB21_156:                             # %if.end.503
                                        #   in Loop: Header=BB21_144 Depth=2
	movl	-4200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4200(%rbp)
	movq	-4184(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -4184(%rbp)
	jmp	.LBB21_144
.LBB21_157:                             # %while.end.506
                                        #   in Loop: Header=BB21_138 Depth=1
	jmp	.LBB21_138
.LBB21_158:                             # %while.end.507
	jmp	.LBB21_159
.LBB21_159:                             # %sw.epilog
	movl	-4200(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB21_160:                             # %return
	movl	-4(%rbp), %eax
	addq	$4352, %rsp             # imm = 0x1100
	popq	%rbp
	retq
.Lfunc_end21:
	.size	fits_read_pixel, .Lfunc_end21-fits_read_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	fits_nan_32,@function
fits_nan_32:                            # @fits_nan_32
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	orl	%ecx, %eax
	movslq	%eax, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$2147483647, %rdi       # imm = 0x7FFFFFFF
	movq	%rdi, -16(%rbp)
	cmpq	$2139095039, -16(%rbp)  # imm = 0x7F7FFFFF
	jb	.LBB22_2
# BB#1:                                 # %land.lhs.true
	movb	$1, %al
	cmpq	$2147483647, -16(%rbp)  # imm = 0x7FFFFFFF
	movb	%al, -17(%rbp)          # 1-byte Spill
	jbe	.LBB22_5
.LBB22_2:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$1, -16(%rbp)
	movb	%cl, -18(%rbp)          # 1-byte Spill
	jb	.LBB22_4
# BB#3:                                 # %land.rhs
	cmpq	$8388608, -16(%rbp)     # imm = 0x800000
	setbe	%al
	movb	%al, -18(%rbp)          # 1-byte Spill
.LBB22_4:                               # %land.end
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB22_5:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	fits_nan_32, .Lfunc_end22-fits_nan_32
	.cfi_endproc

	.align	16, 0x90
	.type	fits_nan_64,@function
fits_nan_64:                            # @fits_nan_64
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	shll	$24, %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	orl	%ecx, %eax
	movslq	%eax, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$2147483647, %rdi       # imm = 0x7FFFFFFF
	movq	%rdi, -16(%rbp)
	cmpq	$2139095039, -16(%rbp)  # imm = 0x7F7FFFFF
	jb	.LBB23_2
# BB#1:                                 # %land.lhs.true
	movb	$1, %al
	cmpq	$2147483647, -16(%rbp)  # imm = 0x7FFFFFFF
	movb	%al, -17(%rbp)          # 1-byte Spill
	jbe	.LBB23_5
.LBB23_2:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$1, -16(%rbp)
	movb	%cl, -18(%rbp)          # 1-byte Spill
	jb	.LBB23_4
# BB#3:                                 # %land.rhs
	cmpq	$8388608, -16(%rbp)     # imm = 0x800000
	setbe	%al
	movb	%al, -18(%rbp)          # 1-byte Spill
.LBB23_4:                               # %land.end
	movb	-18(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB23_5:                               # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	fits_nan_64, .Lfunc_end23-fits_nan_64
	.cfi_endproc

	.align	16, 0x90
	.type	fits_delete_hdulist,@function
fits_delete_hdulist:                    # @fits_delete_hdulist
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB24_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movq	14472(%rax), %rdi
	callq	fits_delete_recordlist
	movq	-8(%rbp), %rax
	movq	14480(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 14480(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_1
.LBB24_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	fits_delete_hdulist, .Lfunc_end24-fits_delete_hdulist
	.cfi_endproc

	.type	fits_get_error.errmsg,@object # @fits_get_error.errmsg
	.local	fits_get_error.errmsg
	.comm	fits_get_error.errmsg,256,16
	.type	fits_n_error,@object    # @fits_n_error
	.local	fits_n_error
	.comm	fits_n_error,4,4
	.type	fits_error,@object      # @fits_error
	.local	fits_error
	.comm	fits_error,4096,16
	.type	fits_ieee32_intel,@object # @fits_ieee32_intel
	.local	fits_ieee32_intel
	.comm	fits_ieee32_intel,4,4
	.type	fits_ieee32_motorola,@object # @fits_ieee32_motorola
	.local	fits_ieee32_motorola
	.comm	fits_ieee32_motorola,4,4
	.type	fits_ieee64_intel,@object # @fits_ieee64_intel
	.local	fits_ieee64_intel
	.comm	fits_ieee64_intel,4,4
	.type	fits_ieee64_motorola,@object # @fits_ieee64_motorola
	.local	fits_ieee64_motorola
	.comm	fits_ieee64_motorola,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fits_open: Invalid parameters"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"w"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"fits_open: Invalid openmode"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fits_open: fopen() failed"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fits_open: No more memory"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"fits_close: Invalid parameter"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"fits_add_hdu: file not open for writing"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Content of SIMPLE-header:\n"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Content of XTENSION-header %s:\n"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"header_offset : %ld\n"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"data_offset   : %ld\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"data_size     : %ld\n"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"used data_size: %ld\n"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"bytes p.pixel : %d\n"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pixmin        : %s\n"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pixmax        : %s\n"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"naxis         : %d\n"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"naxis%-3d      : %d\n"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"bitpix        : %d\n"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"blank         : %ld\n"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"blank         : not used\n"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"datamin       : %s\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"datamin       : not used\n"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"datamax       : %s\n"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"datamax       : not used\n"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gcount        : %ld\n"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gcount        : not used\n"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"pcount        : %ld\n"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"pcount        : not used\n"
	.size	.L.str.31, 26

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"bscale        : %s\n"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"bscale        : not used\n"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"bzero         : %s\n"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"bzero         : not used\n"
	.size	.L.str.35, 26

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"fits_write_header: file not open for writing"
	.size	.L.str.36, 45

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%-8.8s= %20s%50s"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"SIMPLE"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"T"
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	" "
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%-8.8s= '%s"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"XTENSION"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%-8.8s= %20ld%50s"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"BITPIX"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"NAXIS"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"NAXIS%d"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"EXTEND"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"F"
	.size	.L.str.48, 2

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GROUPS"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"PCOUNT"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"GCOUNT"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%f"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"e"
	.size	.L.str.53, 2

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%-8.8s= %20.20s%50s"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"BZERO"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"BSCALE"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"DATAMIN"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"DATAMAX"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"BLANK"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%-80.80s"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"END"
	.size	.L.str.61, 4

	.type	fits_decode_card.data,@object # @fits_decode_card.data
	.local	fits_decode_card.data
	.comm	fits_decode_card.data,80,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"= "
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"fits_decode_card (warning): Missing value indicator '= ' for %8.8s"
	.size	.L.str.63, 67

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%ld"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"fits_decode_card: error decoding typ_bitpix16"
	.size	.L.str.65, 46

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"fits_decode_card: error decoding typ_bitpix32"
	.size	.L.str.66, 46

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"fits_decode_card: error decoding typ_bitpixm32"
	.size	.L.str.67, 47

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"fits_decode_card: error decoding typ_bitpixm64"
	.size	.L.str.68, 47

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"fits_decode_card: error decoding typ_fbool"
	.size	.L.str.69, 43

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"fits_decode_card: error decoding typ_flong"
	.size	.L.str.70, 43

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"fits_decode_card: error decoding typ_fdouble"
	.size	.L.str.71, 45

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"fits_decode_card: missing ' decoding typ_fstring"
	.size	.L.str.72, 49

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"fits_search_card: Invalid parameter"
	.size	.L.str.73, 36

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"        "
	.size	.L.str.74, 9

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"fits_image_info: ff is NULL"
	.size	.L.str.75, 28

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"fits_image_info: file not open for reading"
	.size	.L.str.76, 43

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"fits_image_info: picind out of range"
	.size	.L.str.77, 37

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"fits_seek_image: Unable to position to image"
	.size	.L.str.78, 45

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"fits_read_header: Error in read of first record"
	.size	.L.str.79, 48

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"SIMPLE  "
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"fits_read_header: Missing keyword SIMPLE or XTENSION"
	.size	.L.str.81, 53

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"fits_read_header (warning): keyword SIMPLE does not have value T"
	.size	.L.str.82, 65

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"fits_read_header: Not enough memory"
	.size	.L.str.83, 36

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"fits_read_header: Error in read of record"
	.size	.L.str.84, 42

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"fits_decode_header: Not enough memory"
	.size	.L.str.85, 38

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"No valid XTENSION header found."
	.size	.L.str.86, 32

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"fits_decode_header: Invalid BITPIX-value"
	.size	.L.str.87, 41

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"fits_decode_header: Missing GCOUNT/PCOUNT for XTENSION"
	.size	.L.str.88, 55

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"NAXIS%-3d"
	.size	.L.str.89, 10

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"fits_decode_header: Negative value in NAXISn"
	.size	.L.str.90, 45

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"fits_decode_header: Random groups with NAXIS1 != 0"
	.size	.L.str.91, 51

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"fits_decode_card: Not enough NAXISn-cards"
	.size	.L.str.92, 42

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"IMAGE"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"fits_decode_header: IEEE floating point format required for BITPIX=%d\nis not supported on this machine"
	.size	.L.str.94, 103

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"fits_decode_header: missing/invalid %s card"
	.size	.L.str.95, 44

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"fits_eval_pixrange: cant position file"
	.size	.L.str.96, 39

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"fits_eval_pixrange: error on read bitpix 8 data"
	.size	.L.str.97, 48

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"fits_eval_pixrange: error on read bitpix 16 data"
	.size	.L.str.98, 49

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"fits_eval_pixrange: error on read bitpix 32 data"
	.size	.L.str.99, 49

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"fits_eval_pixrange: error on read bitpix -32 data"
	.size	.L.str.100, 50

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"fits_eval_pixrange: error on read bitpix -64 data"
	.size	.L.str.101, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
