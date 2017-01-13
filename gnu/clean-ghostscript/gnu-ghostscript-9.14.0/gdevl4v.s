	.text
	.file	"gdevl4v.bc"
	.align	16, 0x90
	.type	device_lips4v_enum_ptrs,@function
device_lips4v_enum_ptrs:                # @device_lips4v_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %r9d
	jmpq	*st_device_vector+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_lips4v_enum_ptrs, .Lfunc_end0-device_lips4v_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_lips4v_reloc_ptrs,@function
device_lips4v_reloc_ptrs:               # @device_lips4v_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %edx
	jmpq	*st_device_vector+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_lips4v_reloc_ptrs, .Lfunc_end1-device_lips4v_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_open,@function
lips4v_open:                            # @lips4v_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvttss2si	856(%rbx), %edi
	cvttss2si	860(%rbx), %esi
	cvttss2si	884(%rbx), %ecx
	cvttss2si	888(%rbx), %edx
	cmpl	%esi, %edi
	jle	.LBB2_1
# BB#5:                                 # %if.else.i
	leal	-419(%rdi), %eax
	cmpl	$771, %eax              # imm = 0x303
	ja	.LBB2_7
# BB#6:                                 # %if.else.i
	leal	-284(%rsi), %eax
	cmpl	$559, %eax              # imm = 0x22F
	jb	.LBB2_9
.LBB2_7:                                # %land.lhs.true.37.i
	movl	$-15, %eax
	cmpl	$1224, %edi             # imm = 0x4C8
	jne	.LBB2_18
# BB#8:                                 # %land.lhs.true.37.i
	cmpl	$792, %esi              # imm = 0x318
	je	.LBB2_10
	jmp	.LBB2_18
.LBB2_1:                                # %if.then.i
	leal	-284(%rdi), %eax
	cmpl	$558, %eax              # imm = 0x22E
	ja	.LBB2_3
# BB#2:                                 # %if.then.i
	leal	-419(%rsi), %eax
	cmpl	$772, %eax              # imm = 0x304
	jae	.LBB2_3
.LBB2_9:                                # %if.end.45.i
	movl	$-15, %eax
	jmp	.LBB2_10
.LBB2_3:                                # %land.lhs.true.i
	movl	$-15, %eax
	cmpl	$792, %edi              # imm = 0x318
	jne	.LBB2_18
# BB#4:                                 # %land.lhs.true.i
	cmpl	$1224, %esi             # imm = 0x4C8
	jne	.LBB2_18
.LBB2_10:                               # %if.end.45.i
	cmpl	%edx, %ecx
	jne	.LBB2_18
# BB#11:                                # %if.else.49.i
	cmpl	$1200, %ecx             # imm = 0x4B0
	je	.LBB2_13
# BB#12:                                # %if.else.49.i
	addl	$-60, %ecx
	movl	$-15, %eax
	cmpl	$540, %ecx              # imm = 0x21C
	ja	.LBB2_18
.LBB2_13:                               # %if.end
	movq	24(%rbx), %rax
	movq	%rax, 1728(%rbx)
	movq	$lips4v_vector_procs, 1736(%rbx)
	movl	$512, %esi              # imm = 0x200
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	testl	%eax, %eax
	js	.LBB2_18
# BB#14:                                # %if.end.4
	movq	8824(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_17
# BB#15:                                # %if.then.6
	cmpq	$0, 24(%rax)
	jne	.LBB2_17
# BB#16:                                # %if.then.10
	movq	24(%rbx), %rdi
	callq	*32(%rdi)
	movq	8824(%rbx), %rcx
	movq	%rax, 24(%rcx)
.LBB2_17:                               # %if.end.17
	movq	%rbx, %rdi
	callq	gdev_vector_init
	movl	$1, 8944(%rbx)
	xorl	%eax, %eax
.LBB2_18:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	lips4v_open, .Lfunc_end2-lips4v_open
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_output_page,@function
lips4v_output_page:                     # @lips4v_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8980(%r14)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB3_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB3_4:                                # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
.LBB3_5:                                # %if.end
	movl	$.L.str.81, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB3_7
# BB#6:                                 # %cond.true.20
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false.28
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB3_8:                                # %cond.end.30
	movl	$.L.str.82, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.82, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB3_10
# BB#9:                                 # %cond.true.40
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false.48
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB3_11:                               # %cond.end.50
	cmpl	$255, %r15d
	movl	$255, %ebp
	cmovlel	%r15d, %ebp
	cmpl	%ebp, 8892(%r14)
	je	.LBB3_13
# BB#12:                                # %if.then.56
	leaq	14(%rsp), %r15
	movl	$.L.str.83, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %ecx
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	leaq	20(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	%ebp, 8892(%r14)
.LBB3_13:                               # %if.end.61
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB3_15
# BB#14:                                # %cond.true.69
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$12, 1(%rax)
	jmp	.LBB3_16
.LBB3_15:                               # %cond.false.77
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB3_16:                               # %cond.end.79
	movq	%rbx, %rdi
	callq	*208(%rbx)
	movl	$0, 8816(%r14)
	movl	$0, 8944(%r14)
	movq	%r14, %rdi
	callq	gdev_vector_reset
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lips4v_output_page, .Lfunc_end3-lips4v_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_close,@function
lips4v_close:                           # @lips4v_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	5840(%rbx), %r14
	movl	$.L.str.84, %esi
	movl	$144, %edx
	movl	$156, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, 8864(%rbx)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$.L.str.85, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.86, %esi
	movl	$27, %edx
	movl	$27, %ecx
	movl	$27, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB4_2:                                # %if.end
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	lips4v_close, .Lfunc_end4-lips4v_close
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4652007308841189376     # double 1000
.LCPI5_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	lips4v_copy_mono,@function
lips4v_copy_mono:                       # @lips4v_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$1400, %rsp             # imm = 0x578
.Ltmp22:
	.cfi_def_cfa_offset 1456
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%r9d, 80(%rsp)          # 4-byte Spill
	movq	%r8, %r14
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	1488(%rsp), %r12
	movl	1472(%rsp), %r15d
	callq	gdev_vector_stream
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	jne	.LBB5_5
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB5_5
# BB#2:                                 # %entry
	cmpq	$-1, 1480(%rsp)
	jne	.LBB5_5
# BB#3:                                 # %entry
	cmpq	$-1, %r12
	je	.LBB5_5
# BB#4:                                 # %if.then
	movq	%r12, 96(%rsp)
	movq	$gx_dc_type_data_pure, 88(%rsp)
	movq	%r14, 32(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	88(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	lips4v_setfillcolor
	movl	%r15d, 8(%rsp)
	movl	1464(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	%rbx, %rbp
	movq	%r13, %rsi
	movl	72(%rsp), %edx          # 4-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	80(%rsp), %r8d          # 4-byte Reload
	movl	1456(%rsp), %r9d
	callq	lips4v_copy_text_char
	testl	%eax, %eax
	jns	.LBB5_76
.LBB5_5:                                # %if.end.15
	cmpl	$0, 8980(%rbp)
	movq	64(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_10
# BB#6:                                 # %if.then.16
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_8
# BB#7:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_9:                                # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%rbp)
.LBB5_10:                               # %if.end.31
	cmpq	$-1, 1480(%rsp)
	je	.LBB5_11
# BB#22:                                # %if.else.127
	cmpq	$-1, %r12
	je	.LBB5_23
# BB#33:                                # %if.else.229
	cmpq	%r12, 8840(%rbp)
	jne	.LBB5_45
# BB#34:                                # %if.then.232
	movl	112(%rbp), %r14d
	cmpl	$0, 8976(%rbp)
	je	.LBB5_39
# BB#35:                                # %if.then.241
	movl	$.L.str.100, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.100, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_37
# BB#36:                                # %cond.true.251
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB5_38
.LBB5_11:                               # %if.then.34
	movq	%rbp, %rax
	xorl	%r14d, %r14d
	cmpq	$-1, %r12
	je	.LBB5_76
# BB#12:                                # %if.end.38
	movq	%rax, %rbx
	cmpl	$1, 8976(%rbx)
	je	.LBB5_17
# BB#13:                                # %if.then.41
	movl	$.L.str.45, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB5_15
# BB#14:                                # %cond.true.51
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$30, 1(%rax)
	jmp	.LBB5_16
.LBB5_23:                               # %if.then.130
	movl	112(%rbp), %r14d
	cmpl	$1, 8976(%rbp)
	movl	1464(%rsp), %r12d
	je	.LBB5_28
# BB#24:                                # %if.then.138
	movl	$.L.str.45, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_26
# BB#25:                                # %cond.true.148
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB5_27
.LBB5_45:                               # %if.then.335
	movq	%rbp, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	movl	1456(%rsp), %edx
	movl	1464(%rsp), %ecx
	movl	%r15d, %r8d
	movq	1480(%rsp), %r9
	callq	*1200(%rbp)
	movq	%rbp, %rcx
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_76
# BB#46:                                # %if.end.341
	movq	%rcx, %r14
	cmpl	$1, 8976(%r14)
	je	.LBB5_51
# BB#47:                                # %if.then.345
	movl	$.L.str.45, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB5_49
# BB#48:                                # %cond.true.355
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB5_50
.LBB5_37:                               # %cond.false.259
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_38:                               # %cond.end.261
	movl	$0, 8976(%rbp)
.LBB5_39:                               # %if.end.264
	movzwl	108(%rbp), %eax
	cmpl	$8, %eax
	jne	.LBB5_43
# BB#40:                                # %if.then.270
	subq	1480(%rsp), %r14
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	movl	%r14d, %esi
	jmp	.LBB5_41
.LBB5_43:                               # %if.else.293
	movq	1480(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	cvtsi2sdq	%rax, %xmm2
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movzbl	%ch, %eax  # NOREX
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movzbl	%cl, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	32(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	24(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	16(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
.LBB5_41:                               # %if.then.270
	callq	sput_lips_int
	leaq	120(%rbx), %r14
	movq	120(%rbx), %rax
	movq	%rbx, %rcx
	subq	$-128, %rcx
	cmpq	128(%rbx), %rax
	jae	.LBB5_44
# BB#42:                                # %cond.true.281
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movb	$30, 1(%rax)
	jmp	.LBB5_53
.LBB5_44:                               # %cond.false.289
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB5_53
.LBB5_15:                               # %cond.false.59
	movl	$30, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB5_16:                               # %cond.end.61
	movl	$1, 8976(%rbx)
.LBB5_17:                               # %if.end.64
	movzwl	108(%rbx), %eax
	cmpl	$8, %eax
	movl	1464(%rsp), %r12d
	jne	.LBB5_21
# BB#18:                                # %if.then.68
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	112(%rbx), %ebp
	movq	1488(%rsp), %rax
	subl	%eax, %ebp
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	movl	%ebp, %esi
	jmp	.LBB5_19
.LBB5_21:                               # %if.else
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	1488(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	cvtsi2sdq	%rax, %xmm2
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movzbl	%ch, %eax  # NOREX
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movzbl	%cl, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	64(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB5_31
.LBB5_26:                               # %cond.false.156
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_27:                               # %cond.end.158
	movl	$1, 8976(%rbp)
.LBB5_28:                               # %if.end.161
	movzwl	108(%rbp), %eax
	cmpl	$8, %eax
	jne	.LBB5_30
# BB#29:                                # %if.then.167
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	subq	1480(%rsp), %r14
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	movl	%r14d, %esi
	jmp	.LBB5_19
.LBB5_30:                               # %if.else.190
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	1480(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	cvtsi2sdq	%rax, %xmm2
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movzbl	%ch, %eax  # NOREX
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movzbl	%cl, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.67, %esi
.LBB5_31:                               # %if.else.190
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	32(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	24(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	16(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
.LBB5_19:                               # %if.then.68
	callq	sput_lips_int
	leaq	120(%rbx), %r14
	movq	120(%rbx), %rax
	movq	%rbx, %rcx
	subq	$-128, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	cmpq	128(%rbx), %rax
	jae	.LBB5_32
# BB#20:                                # %cond.true.81
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movb	$30, 1(%rax)
	jmp	.LBB5_54
.LBB5_32:                               # %cond.false.89
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB5_54
.LBB5_49:                               # %cond.false.363
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_50:                               # %cond.end.365
	movl	$1, 8976(%r14)
.LBB5_51:                               # %if.end.368
	movq	1488(%rsp), %rax
	movq	%rax, 752(%rsp)
	movq	$gx_dc_type_data_pure, 744(%rsp)
	movq	%r14, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	744(%rsp), %rdx
	xorl	%esi, %esi
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	js	.LBB5_76
# BB#52:                                # %if.end.368.if.end.379_crit_edge
	leaq	120(%rbx), %r14
	movq	%rbx, %rax
	subq	$-128, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB5_53:                               # %if.end.379
	movl	1464(%rsp), %r12d
.LBB5_54:                               # %if.end.379
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %ebp
	movl	$.L.str.101, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	1456(%rsp), %esi
	callq	sput_lips_int
	imull	$100, %ebp, %ebp
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	sput_lips_int
	movl	$.L.str.102, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.102, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	(%r14), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpq	(%rcx), %rax
	jae	.LBB5_56
# BB#55:                                # %cond.true.392
	leaq	1(%rax), %rcx
	movq	%rcx, (%r14)
	movb	$30, 1(%rax)
	jmp	.LBB5_57
.LBB5_56:                               # %cond.false.400
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB5_57:                               # %cond.end.402
	movq	48(%rsp), %rbp          # 8-byte Reload
	movl	72(%rsp), %r14d         # 4-byte Reload
	movl	$.L.str.103, %edi
	callq	strlen
	leaq	88(%rsp), %rcx
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	addl	$7, %r12d
	sarl	$3, %r12d
	leal	3(%r12), %ebx
	andl	$-4, %ebx
	imull	%r15d, %ebx
	movq	24(%rbp), %rdi
	movl	$.L.str.104, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rdx), %ecx
	andl	$-8, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	je	.LBB5_67
# BB#58:                                # %for.cond.427.preheader
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB5_70
# BB#59:                                # %for.cond.431.preheader.lr.ph
	sarl	$3, %edx
	movslq	%edx, %rcx
	leaq	(%r13,%rcx), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	$8, %edx
	subl	%eax, %edx
	movl	%r12d, %r11d
	andl	$1, %r11d
	leaq	2(%r13,%rcx), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB5_60:                               # %for.cond.431.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_65 Depth 2
	testl	%r12d, %r12d
	movl	%ebp, %ebp
	je	.LBB5_66
# BB#61:                                # %for.body.434.lr.ph
                                        #   in Loop: Header=BB5_60 Depth=1
	movl	%r10d, %r13d
	imull	%r12d, %r13d
	testl	%r11d, %r11d
	movl	$0, %ecx
	je	.LBB5_63
# BB#62:                                # %for.body.434.prol
                                        #   in Loop: Header=BB5_60 Depth=1
	movl	%r10d, %ecx
	imull	%r14d, %ecx
	movslq	%ecx, %r8
	movl	%r14d, %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rdi,%r8), %r14d
	movb	%al, %cl
	shll	%cl, %r14d
	movzbl	1(%rdi,%r8), %edi
	movb	%dl, %cl
	shrl	%cl, %edi
	orl	%r14d, %edi
	movl	%esi, %r14d
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%dil, (%rcx,%r13)
	movl	$1, %ecx
.LBB5_63:                               # %for.body.434.lr.ph.split
                                        #   in Loop: Header=BB5_60 Depth=1
	cmpl	$1, %r12d
	je	.LBB5_66
# BB#64:                                # %for.body.434.lr.ph.split.split
                                        #   in Loop: Header=BB5_60 Depth=1
	movslq	%r9d, %r8
	movl	%r12d, %edi
	subl	%ecx, %edi
	leaq	(%r8,%rcx), %rbx
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	(%rbx,%rsi), %r13
	addq	%rbp, %rcx
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	(%rcx,%rsi), %r8
	.align	16, 0x90
.LBB5_65:                               # %for.body.434
                                        #   Parent Loop BB5_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-2(%r13), %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	movzbl	-1(%r13), %esi
	movb	%dl, %cl
	shrl	%cl, %esi
	orl	%ebx, %esi
	movb	%sil, -1(%r8)
	movzbl	-1(%r13), %esi
	movb	%al, %cl
	shll	%cl, %esi
	movzbl	(%r13), %ebx
	movb	%dl, %cl
	shrl	%cl, %ebx
	orl	%esi, %ebx
	movb	%bl, (%r8)
	addq	$2, %r13
	addq	$2, %r8
	addl	$-2, %edi
	jne	.LBB5_65
.LBB5_66:                               # %for.inc.467
                                        #   in Loop: Header=BB5_60 Depth=1
	incq	%r10
	addl	%r14d, %r9d
	addl	%r12d, %ebp
	cmpl	%r15d, %r10d
	jne	.LBB5_60
	jmp	.LBB5_70
.LBB5_67:                               # %for.cond.preheader
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB5_70
# BB#68:                                # %for.body.lr.ph
	sarl	$3, %edx
	movl	%r12d, %ebp
	movslq	%edx, %rax
	addq	%rax, %r13
	movslq	%r14d, %rbx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_69:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addl	%r12d, %r14d
	addq	%rbx, %r13
	decl	%r15d
	jne	.LBB5_69
.LBB5_70:                               # %if.end.470
	movq	1488(%rsp), %rax
	cmpq	$-1, %rax
	movq	48(%rsp), %rbx          # 8-byte Reload
	je	.LBB5_73
# BB#71:                                # %lor.lhs.false
	cmpq	$-1, 1480(%rsp)
	je	.LBB5_74
# BB#72:                                # %lor.lhs.false
	cmpq	%rax, 8840(%rbx)
	jne	.LBB5_74
.LBB5_73:                               # %if.then.479
	movl	$1, %ecx
	jmp	.LBB5_75
.LBB5_74:                               # %if.else.480
	xorl	%ecx, %ecx
.LBB5_75:                               # %if.end.481
	movq	%rbx, %rdi
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	movl	44(%rsp), %edx          # 4-byte Reload
	callq	lips4v_write_image_data
	movq	24(%rbx), %rdi
	movl	$.L.str.104, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	xorl	%r14d, %r14d
.LBB5_76:                               # %cleanup.485
	movl	%r14d, %eax
	addq	$1400, %rsp             # imm = 0x578
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lips4v_copy_mono, .Lfunc_end5-lips4v_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_copy_color,@function
lips4v_copy_color:                      # @lips4v_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp35:
	.cfi_def_cfa_offset 752
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%ecx, %ebp
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movq	%rax, %r13
	movq	%r13, %r12
	movzwl	108(%r14), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cmpl	$23, %ecx
	seta	%al
	movzbl	%al, %edx
	cmpl	$8, %ecx
	cvttss2si	884(%r14), %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movq	8832(%r14), %rax
	movq	%rax, 48(%rsp)
	movq	$gx_dc_type_data_pure, 40(%rsp)
	movq	%rdx, %rbp
	leaq	40(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	lips4v_setfillcolor
	movq	%rbp, %rdx
	movl	%r15d, %ebp
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	cmpl	$0, 8980(%r14)
	movl	%r15d, %ebp
	je	.LBB6_7
# BB#3:                                 # %if.then.10
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB6_5
# BB#4:                                 # %cond.true
	movq	%rdx, %r15
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
	movq	%rdx, %r15
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB6_6:                                # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	40(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
	movq	%r15, %rdx
.LBB6_7:                                # %if.end.26
	leal	1(%rdx,%rdx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	768(%rsp), %r15d
	cmpl	$0, 8976(%r14)
	je	.LBB6_8
# BB#9:                                 # %if.then.29
	movl	$.L.str.100, %edi
	callq	strlen
	leaq	40(%rsp), %rcx
	movl	$.L.str.100, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	addq	$120, %r13
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB6_11
# BB#10:                                # %cond.true.39
	leaq	1(%rax), %rcx
	movq	%rcx, (%r13)
	movb	$30, 1(%rax)
	jmp	.LBB6_12
.LBB6_8:                                # %if.end.26.if.end.52_crit_edge
	addq	$120, %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	jmp	.LBB6_13
.LBB6_11:                               # %cond.false.47
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB6_12:                               # %cond.end.49
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	$0, 8976(%r14)
.LBB6_13:                               # %if.end.52
	movl	$.L.str.101, %edi
	callq	strlen
	leaq	40(%rsp), %rcx
	movl	$.L.str.101, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%r12, %rdi
	movl	752(%rsp), %esi
	callq	sput_lips_int
	imull	$100, 16(%rsp), %ebp    # 4-byte Folded Reload
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	sput_lips_int
	movq	%r12, %rdi
	movl	760(%rsp), %esi
	callq	sput_lips_int
	xorl	%edx, %edx
	movl	20(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %eax
	divl	32(%rsp)                # 4-byte Folded Reload
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	sput_lips_int
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB6_17
# BB#14:                                # %cond.true.64
	movq	%r14, %rbp
	leaq	1(%rax), %rcx
	cmpl	$24, %r13d
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movb	$48, %cl
	jb	.LBB6_16
# BB#15:                                # %cond.true.64
	movb	$58, %cl
.LBB6_16:                               # %cond.true.64
	movb	%cl, 1(%rax)
	jmp	.LBB6_20
.LBB6_17:                               # %cond.false.76
	movq	%r14, %rbp
	cmpl	$24, %r13d
	movb	$48, %al
	jb	.LBB6_19
# BB#18:                                # %cond.false.76
	movb	$58, %al
.LBB6_19:                               # %cond.false.76
	movzbl	%al, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB6_20:                               # %cond.end.82
	movl	32(%rsp), %r14d         # 4-byte Reload
	imull	760(%rsp), %r14d
	movl	$.L.str.122, %edi
	callq	strlen
	leaq	40(%rsp), %rcx
	movl	$.L.str.122, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB6_22
# BB#21:                                # %cond.true.93
	leaq	1(%rax), %rcx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rcx, (%rdx)
	movb	$30, 1(%rax)
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.101
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB6_23:                               # %cond.end.103
	movl	%r14d, %esi
	imull	%r15d, %esi
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movq	24(%rbp), %rdi
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.123, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$.L.str.103, %edi
	callq	strlen
	leaq	40(%rsp), %rcx
	movl	$.L.str.103, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	testl	%r15d, %r15d
	jle	.LBB6_26
# BB#24:                                # %for.body.lr.ph
	imull	12(%rsp), %r13d         # 4-byte Folded Reload
	sarl	$3, %r13d
	movl	%r14d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%r13d, %rax
	addq	%rax, %rbx
	movslq	8(%rsp), %r12           # 4-byte Folded Reload
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB6_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %eax
	leaq	(%rax,%rbp), %rdi
	movq	%rbx, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	addl	%r14d, %r13d
	addq	%r12, %rbx
	decl	%r15d
	jne	.LBB6_25
.LBB6_26:                               # %for.end
	movq	24(%rsp), %rbx          # 8-byte Reload
	movzwl	108(%rbx), %eax
	cmpl	$8, %eax
	jne	.LBB6_28
# BB#27:                                # %if.then.125
	movl	$1, %ecx
	jmp	.LBB6_29
.LBB6_28:                               # %if.else.126
	xorl	%ecx, %ecx
.LBB6_29:                               # %if.end.127
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	lips4v_write_image_data
	movq	24(%rbx), %rdi
	movl	$.L.str.123, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lips4v_copy_color, .Lfunc_end6-lips4v_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_get_params,@function
lips4v_get_params:                      # @lips4v_get_params
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
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 80
.Ltmp47:
	.cfi_offset %rbx, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_vector_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_13
# BB#1:                                 # %if.end
	leaq	8948(%r15), %rdx
	movl	$.L.str.87, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8848(%r15), %rdx
	movl	$.L.str.88, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8960(%r15), %rdx
	movl	$.L.str.89, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8904(%r15), %rdx
	movl	$.L.str.90, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8864(%r15), %rdx
	movl	$.L.str.91, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8868(%r15), %rdx
	movl	$.L.str.92, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebx
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	8876(%r15), %eax
	testl	%eax, %eax
	js	.LBB7_6
# BB#2:                                 # %land.lhs.true
	je	.LBB7_4
# BB#3:                                 # %cond.true
	leaq	8872(%r15), %rdx
	movl	$.L.str.93, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movl	$.L.str.93, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB7_5:                                # %cond.end
	testl	%eax, %eax
	cmovnsl	%eax, %ebx
	movl	%ebx, %ebp
.LBB7_6:                                # %if.end.31
	movl	8956(%r15), %eax
	testl	%eax, %eax
	js	.LBB7_11
# BB#7:                                 # %land.lhs.true.33
	je	.LBB7_9
# BB#8:                                 # %cond.true.36
	leaq	8952(%r15), %rdx
	movl	$.L.str.94, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false.38
	movl	$.L.str.94, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB7_10:                               # %cond.end.40
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB7_11:                               # %if.end.44
	leaq	9012(%r15), %rdx
	movl	$.L.str.95, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8908(%r15), %rdx
	movl	$.L.str.96, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	leaq	8912(%r15), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.97, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_13
# BB#12:                                # %if.end.64
	addq	$8852, %r15             # imm = 0x2294
	movq	%r15, 24(%rsp)
	movq	%r15, %rdi
	callq	strlen
	movl	%eax, 32(%rsp)
	movl	$0, 36(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.98, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
.LBB7_13:                               # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lips4v_get_params, .Lfunc_end7-lips4v_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_put_params,@function
lips4v_put_params:                      # @lips4v_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 144
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	8948(%r14), %eax
	movl	%eax, 68(%rsp)
	movl	8848(%r14), %eax
	movl	%eax, 64(%rsp)
	movl	8960(%r14), %eax
	movl	%eax, 44(%rsp)
	movl	8904(%r14), %eax
	movl	%eax, 40(%rsp)
	movl	8864(%r14), %eax
	movl	%eax, 36(%rsp)
	movl	8868(%r14), %eax
	movl	%eax, 32(%rsp)
	movl	8872(%r14), %eax
	movl	%eax, 28(%rsp)
	movl	8876(%r14), %r12d
	movl	9012(%r14), %eax
	movl	%eax, 24(%rsp)
	movl	8908(%r14), %eax
	movl	%eax, 20(%rsp)
	movzwl	108(%r14), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	$0, 12(%rsp)
	leaq	68(%rsp), %rdx
	movl	$.L.str.87, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	jns	.LBB8_2
# BB#1:                                 # %if.then
	movq	(%r13), %rax
	movl	$.L.str.87, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_2:                                # %if.end
	leaq	64(%rsp), %rdx
	movl	$.L.str.88, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_7
# BB#3:                                 # %if.end
	testl	%ebp, %ebp
	jne	.LBB8_6
# BB#4:                                 # %sw.bb
	movl	64(%rsp), %eax
	leal	1(%rax), %ecx
	cmpl	$18, %ecx
	movl	$-13, %ebp
	ja	.LBB8_6
# BB#5:                                 # %sw.bb
	addl	$-4, %eax
	cmpl	$5, %eax
	ja	.LBB8_7
.LBB8_6:                                # %casse
	movq	(%r13), %rax
	movl	$.L.str.88, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_7:                                # %sw.epilog
	leaq	72(%rsp), %rdx
	movl	$.L.str.97, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_61
# BB#8:                                 # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB8_60
# BB#9:                                 # %sw.bb.25
	movl	$-13, %ebp
	cmpl	$32, 80(%rsp)
	ja	.LBB8_60
# BB#10:                                # %land.lhs.true.30
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_18
# BB#11:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB8_19
# BB#12:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB8_19
# BB#13:                                # %if.then.43
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB8_19
# BB#14:                                # %if.then.43
	testl	%eax, %eax
	jne	.LBB8_19
# BB#15:                                # %if.then.53
	movzbl	2(%rdi), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB8_19
# BB#16:                                # %if.then.53
	testl	%eax, %eax
	jne	.LBB8_19
# BB#17:                                # %if.then.63
	movzbl	3(%rdi), %eax
	addl	$-105, %eax
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false
	movl	$.L.str.12, %esi
	callq	strcmp
.LBB8_19:                               # %cond.end
	testl	%eax, %eax
	je	.LBB8_62
# BB#20:                                # %land.lhs.true.82
	movl	$.L.str.14, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_28
# BB#21:                                # %cond.true.86
	movzbl	(%rdi), %eax
	addl	$-79, %eax
	testq	%rcx, %rcx
	je	.LBB8_29
# BB#22:                                # %cond.true.86
	testl	%eax, %eax
	jne	.LBB8_29
# BB#23:                                # %if.then.101
	movzbl	1(%rdi), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB8_29
# BB#24:                                # %if.then.101
	testl	%eax, %eax
	jne	.LBB8_29
# BB#25:                                # %if.then.111
	movzbl	2(%rdi), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB8_29
# BB#26:                                # %if.then.111
	testl	%eax, %eax
	jne	.LBB8_29
# BB#27:                                # %if.then.121
	movzbl	3(%rdi), %eax
	jmp	.LBB8_29
.LBB8_28:                               # %cond.false.130
	movl	$.L.str.14, %esi
	callq	strcmp
.LBB8_29:                               # %cond.end.133
	testl	%eax, %eax
	je	.LBB8_62
# BB#30:                                # %land.lhs.true.143
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_38
# BB#31:                                # %cond.true.147
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_39
# BB#32:                                # %cond.true.147
	testl	%eax, %eax
	jne	.LBB8_39
# BB#33:                                # %if.then.162
	movzbl	1(%rdi), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB8_39
# BB#34:                                # %if.then.162
	testl	%eax, %eax
	jne	.LBB8_39
# BB#35:                                # %if.then.172
	movzbl	2(%rdi), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB8_39
# BB#36:                                # %if.then.172
	testl	%eax, %eax
	jne	.LBB8_39
# BB#37:                                # %if.then.182
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB8_39
.LBB8_38:                               # %cond.false.191
	movl	$.L.str.15, %esi
	callq	strcmp
.LBB8_39:                               # %cond.end.194
	testl	%eax, %eax
	je	.LBB8_62
# BB#40:                                # %land.lhs.true.204
	movl	$.L.str.19, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_48
# BB#41:                                # %cond.true.208
	movzbl	(%rdi), %eax
	addl	$-71, %eax
	testq	%rcx, %rcx
	je	.LBB8_49
# BB#42:                                # %cond.true.208
	testl	%eax, %eax
	jne	.LBB8_49
# BB#43:                                # %if.then.223
	movzbl	1(%rdi), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB8_49
# BB#44:                                # %if.then.223
	testl	%eax, %eax
	jne	.LBB8_49
# BB#45:                                # %if.then.233
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB8_49
# BB#46:                                # %if.then.233
	testl	%eax, %eax
	jne	.LBB8_49
# BB#47:                                # %if.then.243
	movzbl	3(%rdi), %eax
	addl	$-115, %eax
	jmp	.LBB8_49
.LBB8_48:                               # %cond.false.252
	movl	$.L.str.19, %esi
	callq	strcmp
.LBB8_49:                               # %cond.end.255
	testl	%eax, %eax
	je	.LBB8_62
# BB#50:                                # %land.lhs.true.265
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_58
# BB#51:                                # %cond.true.269
	movzbl	(%rdi), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB8_59
# BB#52:                                # %cond.true.269
	testl	%eax, %eax
	jne	.LBB8_59
# BB#53:                                # %if.then.284
	movzbl	1(%rdi), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB8_59
# BB#54:                                # %if.then.284
	testl	%eax, %eax
	jne	.LBB8_59
# BB#55:                                # %if.then.294
	movzbl	2(%rdi), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB8_59
# BB#56:                                # %if.then.294
	testl	%eax, %eax
	jne	.LBB8_59
# BB#57:                                # %if.then.304
	movzbl	3(%rdi), %eax
	addl	$-100, %eax
	jmp	.LBB8_59
.LBB8_58:                               # %cond.false.313
	movl	$.L.str.17, %esi
	callq	strcmp
.LBB8_59:                               # %cond.end.316
	movl	$-15, %ebp
	testl	%eax, %eax
	je	.LBB8_62
.LBB8_60:                               # %pmediae
	movq	(%r13), %rax
	movl	$.L.str.97, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_61:                               # %sw.bb.327
	movq	$0, 72(%rsp)
.LBB8_62:                               # %sw.epilog.329
	leaq	48(%rsp), %rdx
	movl	$.L.str.98, %esi
	movq	%r13, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_70
# BB#63:                                # %sw.epilog.329
	testl	%ebp, %ebp
	jne	.LBB8_69
# BB#64:                                # %sw.bb.331
	movl	56(%rsp), %eax
	movl	$-13, %ebp
	cmpl	$12, %eax
	ja	.LBB8_69
# BB#65:                                # %for.cond.preheader
	testl	%eax, %eax
	je	.LBB8_71
# BB#66:                                # %for.body.lr.ph
	movq	48(%rsp), %rcx
	xorl	%edx, %edx
	movl	$-15, %ebp
	.align	16, 0x90
.LBB8_68:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rcx,%rdx), %bl
	addb	$-32, %bl
	movzbl	%bl, %esi
	cmpl	$95, %esi
	jae	.LBB8_69
# BB#67:                                # %for.cond
                                        #   in Loop: Header=BB8_68 Depth=1
	incq	%rdx
	cmpl	%eax, %edx
	jb	.LBB8_68
	jmp	.LBB8_71
.LBB8_69:                               # %userne
	movq	(%r13), %rax
	movl	$.L.str.98, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_70:                               # %sw.bb.360
	movq	$0, 48(%rsp)
.LBB8_71:                               # %sw.epilog.362
	leaq	44(%rsp), %rdx
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_73
# BB#72:                                # %if.then.366
	movq	(%r13), %rax
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_73:                               # %if.end.370
	leaq	40(%rsp), %rdx
	movl	$.L.str.90, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_78
# BB#74:                                # %if.end.370
	testl	%ebp, %ebp
	jne	.LBB8_77
# BB#75:                                # %sw.bb.372
	movl	$-15, %ebp
	movl	40(%rsp), %eax
	cmpl	$4, %eax
	ja	.LBB8_77
# BB#76:                                # %sw.bb.372
	movl	$22, %ecx
	btl	%eax, %ecx
	jb	.LBB8_78
.LBB8_77:                               # %nupe
	movq	(%r13), %rax
	movl	$.L.str.90, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_78:                               # %sw.epilog.388
	leaq	36(%rsp), %rdx
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_80
# BB#79:                                # %if.then.392
	movq	(%r13), %rax
	movl	$.L.str.91, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_80:                               # %if.end.396
	leaq	32(%rsp), %rdx
	movl	$.L.str.92, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_84
# BB#81:                                # %if.end.396
	testl	%ebp, %ebp
	jne	.LBB8_83
# BB#82:                                # %sw.bb.398
	movl	$-15, %ebp
	cmpl	$9, 32(%rsp)
	jb	.LBB8_84
.LBB8_83:                               # %tden
	movq	(%r13), %rax
	movl	$.L.str.92, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_84:                               # %sw.epilog.411
	cmpl	$0, 8876(%r14)
	js	.LBB8_85
# BB#86:                                # %if.then.415
	leaq	28(%rsp), %rdx
	movl	$.L.str.93, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	cmpl	$1, %eax
	jne	.LBB8_88
# BB#87:
	movl	%r12d, %ebx
	jmp	.LBB8_92
.LBB8_85:
	movl	%r12d, %ebx
	jmp	.LBB8_92
.LBB8_88:                               # %if.then.415
	testl	%eax, %eax
	jne	.LBB8_90
# BB#89:                                # %sw.bb.417
	movl	$1, %ebx
	jmp	.LBB8_92
.LBB8_90:                               # %sw.default.418
	movl	$.L.str.93, %esi
	movq	%r13, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB8_92
# BB#91:                                # %if.end.423
	movq	(%r13), %rax
	movl	$.L.str.93, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%r12d, %ebx
	movl	%ebp, %r15d
.LBB8_92:                               # %if.end.428
	movl	$-1, %r12d
	cmpl	$0, 8956(%r14)
	js	.LBB8_98
# BB#93:                                # %if.then.431
	leaq	16(%rsp), %rdx
	movl	$.L.str.94, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	cmpl	$1, %eax
	je	.LBB8_98
# BB#94:                                # %if.then.431
	testl	%eax, %eax
	jne	.LBB8_96
# BB#95:                                # %sw.bb.433
	movl	$1, %r12d
	jmp	.LBB8_98
.LBB8_96:                               # %sw.default.434
	movl	$.L.str.94, %esi
	movq	%r13, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	je	.LBB8_98
# BB#97:                                # %if.end.439
	movq	(%r13), %rax
	movl	$.L.str.94, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	$-1, %r12d
	movl	%ebp, %r15d
.LBB8_98:                               # %if.end.444
	leaq	24(%rsp), %rdx
	movl	$.L.str.95, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_100
# BB#99:                                # %if.then.448
	movq	(%r13), %rax
	movl	$.L.str.95, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_100:                              # %if.end.452
	leaq	20(%rsp), %rdx
	movl	$.L.str.96, %esi
	movq	%r13, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_102
# BB#101:                               # %if.then.456
	movq	(%r13), %rax
	movl	$.L.str.96, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_102:                              # %if.end.460
	leaq	12(%rsp), %rdx
	movl	$.L.str.99, %esi
	movq	%r13, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_106
# BB#103:                               # %if.end.460
	testl	%ebp, %ebp
	jne	.LBB8_105
# BB#104:                               # %sw.bb.462
	movl	$-15, %ebp
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	orl	$16, %ecx
	cmpl	$24, %ecx
	je	.LBB8_107
.LBB8_105:                              # %bppe
	movq	(%r13), %rax
	movl	$.L.str.99, %esi
	movq	%r13, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_106:                              # %sw.epilog.475
	movl	12(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_108
.LBB8_107:                              # %if.then.478
	movw	%ax, 108(%r14)
	cmpl	$8, %eax
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 100(%r14)
	movl	$255, %eax
	movl	$1000, %ecx             # imm = 0x3E8
	cmovgl	%eax, %ecx
	movl	%ecx, 112(%r14)
	movl	%ecx, 116(%r14)
	movl	$256, %eax              # imm = 0x100
	movl	$5, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 120(%r14)
	movl	$2, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 124(%r14)
	movl	$gx_default_gray_map_rgb_color, %eax
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 1184(%r14)
	movl	$gx_default_gray_map_color_rgb, %eax
	movl	$gx_default_rgb_map_color_rgb, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 1192(%r14)
.LBB8_108:                              # %if.end.510
	testl	%r15d, %r15d
	js	.LBB8_122
# BB#109:                               # %if.end.514
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gdev_vector_put_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_122
# BB#110:                               # %if.end.519
	movl	68(%rsp), %eax
	movl	%eax, 8948(%r14)
	movl	64(%rsp), %eax
	movl	%eax, 8848(%r14)
	movl	44(%rsp), %eax
	movl	%eax, 8960(%r14)
	movl	40(%rsp), %eax
	movl	%eax, 8904(%r14)
	movl	36(%rsp), %eax
	movl	%eax, 8864(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 8868(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 8872(%r14)
	movl	%ebx, 8876(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 9012(%r14)
	movl	20(%rsp), %eax
	movl	%eax, 8908(%r14)
	testl	%r12d, %r12d
	js	.LBB8_112
# BB#111:                               # %if.then.532
	movl	16(%rsp), %eax
	movl	%eax, 8952(%r14)
	movl	%r12d, 8956(%r14)
.LBB8_112:                              # %if.end.534
	movq	72(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB8_115
# BB#113:                               # %land.lhs.true.538
	movl	80(%rsp), %r15d
	leaq	8912(%r14), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB8_115
# BB#114:                               # %if.then.546
	movq	72(%rsp), %rsi
	movl	80(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	80(%rsp), %eax
	movb	$0, (%rbx,%rax)
.LBB8_115:                              # %if.end.557
	movq	48(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB8_118
# BB#116:                               # %land.lhs.true.561
	movl	56(%rsp), %r15d
	leaq	8852(%r14), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB8_118
# BB#117:                               # %if.then.571
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	56(%rsp), %eax
	movb	$0, (%rbx,%rax)
.LBB8_118:                              # %if.end.582
	movl	12(%rsp), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB8_122
# BB#119:                               # %if.end.582
	cmpl	8(%rsp), %eax           # 4-byte Folded Reload
	je	.LBB8_122
# BB#120:                               # %land.lhs.true.588
	cmpl	$0, 84(%r14)
	je	.LBB8_122
# BB#121:                               # %if.then.590
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %r15d
.LBB8_122:                              # %cleanup.593
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lips4v_put_params, .Lfunc_end8-lips4v_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_fill_mask,@function
lips4v_fill_mask:                       # @lips4v_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 208
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movl	%r9d, 132(%rsp)         # 4-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movl	%ecx, %r15d
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movq	%rsi, %r13
	movq	256(%rsp), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	248(%rsp), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	240(%rsp), %r12d
	movq	232(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	224(%rsp), %r14d
	movl	216(%rsp), %ebx
	movl	208(%rsp), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	callq	gdev_vector_stream
	testl	%ebx, %ebx
	jle	.LBB9_27
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	jle	.LBB9_27
# BB#2:                                 # %if.end
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%r15d, 84(%rsp)         # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	cmpl	$1, %r12d
	movq	%rbp, %r15
	jg	.LBB9_28
# BB#3:                                 # %lor.lhs.false.6
	cvttss2si	884(%r15), %ebx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	104(%rsp), %rdx         # 8-byte Reload
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	js	.LBB9_28
# BB#4:                                 # %lor.lhs.false.10
	movq	%r15, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	gdev_vector_update_clip_path
	testl	%eax, %eax
	js	.LBB9_28
# BB#5:                                 # %lor.lhs.false.14
	movq	%r15, %rdi
	movl	92(%rsp), %esi          # 4-byte Reload
	callq	gdev_vector_update_log_op
	testl	%eax, %eax
	js	.LBB9_28
# BB#6:                                 # %if.end.20
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movq	8824(%r15), %rdi
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	%r15d, 8(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r13, %rsi
	movl	116(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %edx
	movl	84(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %ecx
	movq	136(%rsp), %r8          # 8-byte Reload
	movl	132(%rsp), %r9d         # 4-byte Reload
	callq	*1352(%rdi)
	testl	%ebp, %ebp
	movq	72(%rsp), %rdx          # 8-byte Reload
	jne	.LBB9_9
# BB#7:                                 # %if.end.20
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB9_9
# BB#8:                                 # %if.then.27
	movl	%r14d, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rdx, %rbp
	movl	%ebx, %edx
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	132(%rsp), %r8d         # 4-byte Reload
	movl	88(%rsp), %r9d          # 4-byte Reload
	callq	lips4v_copy_text_char
	movq	%rbp, %rdx
	testl	%eax, %eax
	jns	.LBB9_27
.LBB9_9:                                # %if.end.33
	movq	64(%rsp), %r12          # 8-byte Reload
	cmpl	$0, 8980(%r12)
	je	.LBB9_14
# BB#10:                                # %if.then.34
	movq	120(%rdx), %rax
	cmpq	128(%rdx), %rax
	jae	.LBB9_12
# BB#11:                                # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rdx)
	movb	$-101, 1(%rax)
	movq	%rdx, %rbx
	jmp	.LBB9_13
.LBB9_28:                               # %if.then.18
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	movl	132(%rsp), %r9d         # 4-byte Reload
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_fill_mask    # TAILCALL
.LBB9_12:                               # %cond.false
	movl	$155, %esi
	movq	%rdx, %rdi
	movq	%rdx, %rbx
	callq	spputc
.LBB9_13:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	148(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r12)
	movq	%rbx, %rdx
.LBB9_14:                               # %if.end.49
	cmpl	$1, 8976(%r12)
	jne	.LBB9_16
# BB#15:                                # %if.end.49.if.end.75_crit_edge
	movq	%rdx, %r15
	addq	$120, %r15
	movq	%rdx, %rbx
	jmp	.LBB9_20
.LBB9_16:                               # %if.then.52
	movl	$.L.str.45, %edi
	movq	%rdx, %rbx
	callq	strlen
	leaq	148(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %r15
	addq	$120, %r15
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB9_18
# BB#17:                                # %cond.true.62
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$30, 1(%rax)
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.70
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB9_19:                               # %cond.end.72
	movl	$1, 8976(%r12)
.LBB9_20:                               # %if.end.75
	movl	$.L.str.101, %edi
	callq	strlen
	leaq	148(%rsp), %rcx
	movl	$.L.str.101, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	movl	132(%rsp), %esi         # 4-byte Reload
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	imull	$100, 60(%rsp), %ebp    # 4-byte Folded Reload
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	sput_lips_int
	movl	$.L.str.102, %edi
	callq	strlen
	leaq	148(%rsp), %rcx
	movl	$.L.str.102, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB9_22
# BB#21:                                # %cond.true.87
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$30, 1(%rax)
	jmp	.LBB9_23
.LBB9_22:                               # %cond.false.95
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB9_23:                               # %cond.end.97
	movl	$.L.str.103, %edi
	callq	strlen
	leaq	148(%rsp), %rcx
	movl	$.L.str.103, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rsp), %rax         # 8-byte Reload
	addl	$7, %eax
	sarl	$3, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	3(%rax), %esi
	andl	$-4, %esi
	imull	%r14d, %esi
	movl	%esi, 136(%rsp)         # 4-byte Spill
	movq	24(%r12), %rdi
	movl	$.L.str.124, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	testl	%r14d, %r14d
	jle	.LBB9_26
# BB#24:                                # %for.body.lr.ph
	movl	116(%rsp), %ecx         # 4-byte Reload
	sarl	$3, %ecx
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r15d
	movslq	%ecx, %rcx
	addq	%rcx, %r13
	movslq	84(%rsp), %rbx          # 4-byte Folded Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ecx
	leaq	(%rcx,%rbp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	120(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r12d
	addq	%rbx, %r13
	decl	%r14d
	jne	.LBB9_25
.LBB9_26:                               # %for.end
	xorl	%ecx, %ecx
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	136(%rsp), %edx         # 4-byte Reload
	callq	lips4v_write_image_data
	movq	24(%rbx), %rdi
	movl	$.L.str.124, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB9_27:                               # %cleanup
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lips4v_fill_mask, .Lfunc_end9-lips4v_fill_mask
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	lips4v_begin_image,@function
lips4v_begin_image:                     # @lips4v_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp83:
	.cfi_def_cfa_offset 816
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r8, %r14
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	824(%rsp), %r12
	movl	$st_vector_image_enum, %esi
	movl	$.L.str.125, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbp
	movq	576(%rbx), %r13
	testq	%r14, %r14
	je	.LBB10_2
# BB#1:
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	jmp	.LBB10_3
.LBB10_2:                               # %land.rhs
	cmpl	$2, 568(%rbx)
	setb	%al
	movl	%eax, 68(%rsp)          # 4-byte Spill
.LBB10_3:                               # %land.end
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB10_68
# BB#4:                                 # %if.end
	movq	816(%rsp), %rax
	movq	%r12, 24(%rbp)
	movq	%rbp, 24(%rsp)
	movq	%r12, 8(%rsp)
	movq	%rax, (%rsp)
	movq	$lips4v_image_enum_procs, 16(%rsp)
	movq	%r15, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	%r14, %r8
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	gdev_vector_begin_image
	testl	%eax, %eax
	js	.LBB10_68
# BB#5:                                 # %if.end.9
	movq	832(%rsp), %rax
	movq	%rbp, (%rax)
	cmpl	$0, 584(%rbx)
	je	.LBB10_7
# BB#6:
	movl	$1, %eax
                                        # implicit-def: ECX
.LBB10_19:                              # %if.end.51
	movl	68(%rsp), %edx          # 4-byte Reload
	testb	%dl, %dl
	je	.LBB10_20
# BB#21:                                # %if.else.55
	movl	%eax, %r13d
	testl	%ecx, %ecx
	movq	%r15, %r12
	jne	.LBB10_23
# BB#22:                                # %if.then.57
	movq	8832(%r12), %rax
	movq	%rax, 104(%rsp)
	movq	$gx_dc_type_data_pure, 96(%rsp)
	leaq	96(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movl	%ecx, %r14d
	callq	lips4v_setfillcolor
	movl	%r14d, %ecx
.LBB10_23:                              # %if.end.60
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	cmpl	$0, 584(%rbx)
	jne	.LBB10_26
# BB#24:                                # %lor.lhs.false.63
	cmpl	$1, %r13d
	jne	.LBB10_29
# BB#25:                                # %lor.lhs.false.63
	cmpl	$1, 40(%rbx)
	jne	.LBB10_29
.LBB10_26:                              # %if.then.67
	movss	44(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	48(%rbx), %xmm0
	jbe	.LBB10_28
# BB#27:                                # %if.then.73
	movl	$1, 8972(%r12)
	jmp	.LBB10_29
.LBB10_7:                               # %if.then.10
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	%r13, %rdi
	callq	gs_color_space_num_components
	cmpl	$0, 572(%rbx)
	jne	.LBB10_20
# BB#8:                                 # %if.else
	movl	64(%rsp), %ecx          # 4-byte Reload
	cmpl	$1, %ecx
	jne	.LBB10_9
# BB#14:                                # %sw.bb.28
	movss	44(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
# BB#15:                                # %lor.lhs.false.32
	movss	48(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
# BB#16:                                # %lor.lhs.false.36
	movss	52(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
# BB#17:                                # %lor.lhs.false.40
	movss	56(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
# BB#18:                                # %lor.lhs.false.44
	movss	60(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %ecx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
	jmp	.LBB10_19
.LBB10_28:                              # %if.else.74
	movl	$0, 8972(%r12)
.LBB10_29:                              # %if.end.77
	movq	%r12, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r15
	cmpl	$0, 8980(%r12)
	je	.LBB10_34
# BB#30:                                # %if.then.80
	movq	120(%r15), %rax
	cmpq	128(%r15), %rax
	jae	.LBB10_32
# BB#31:                                # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$-101, 1(%rax)
	jmp	.LBB10_33
.LBB10_32:                              # %cond.false
	movl	$155, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB10_33:                              # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r12)
.LBB10_34:                              # %if.end.93
	leaq	8(%rbx), %rdi
	leaq	96(%rsp), %r14
	movq	%r14, %rsi
	callq	gs_matrix_invert
	movq	88(%rsp), %rsi          # 8-byte Reload
	addq	$132, %rsi
	movq	%r14, %rdi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movss	112(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm1, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	cvttss2si	%xmm0, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	cvtsi2ssl	32(%rbx), %xmm2
	movss	96(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	cvtsi2ssl	36(%rbx), %xmm4
	movss	104(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm5
	movaps	%xmm3, %xmm6
	addss	%xmm5, %xmm6
	addss	%xmm1, %xmm6
	cvttss2si	%xmm6, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	mulss	100(%rsp), %xmm2
	mulss	108(%rsp), %xmm4
	movaps	%xmm2, %xmm6
	addss	%xmm4, %xmm6
	addss	%xmm0, %xmm6
	cvttss2si	%xmm6, %r14d
	addss	%xmm1, %xmm5
	cvttss2si	%xmm5, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	addss	%xmm0, %xmm4
	cvttss2si	%xmm4, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$0, 584(%rbx)
	je	.LBB10_45
# BB#35:                                # %if.then.143
	movl	40(%rbx), %eax
	imull	584(%rbp), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	imull	%r13d, %eax
	imull	588(%rbp), %eax
	movl	$1, 8968(%r12)
	cmpl	$1, %eax
	jne	.LBB10_40
# BB#36:                                # %if.then.151
	addss	%xmm3, %xmm1
	cvttss2si	%xmm1, %r13d
	addss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	$1, 8964(%r12)
	movl	$.L.str.126, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.126, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r15, %rdi
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	68(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %esi
	callq	sput_lips_int
	movl	64(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	subl	%ebp, %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	movl	72(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	subl	%ebx, %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	movl	88(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %esi
	subl	%r12d, %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	movl	%r14d, %esi
	subl	%ebp, %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	subl	%ebx, %r13d
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	sput_lips_int
	movl	84(%rsp), %esi          # 4-byte Reload
	subl	%r14d, %esi
	movq	%r15, %rdi
	jmp	.LBB10_37
.LBB10_45:                              # %if.else.206
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	cmpl	$0, 8976(%r12)
	je	.LBB10_50
# BB#46:                                # %if.then.210
	movl	$.L.str.100, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r15), %rax
	cmpq	128(%r15), %rax
	jae	.LBB10_48
# BB#47:                                # %cond.true.220
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$30, 1(%rax)
	jmp	.LBB10_49
.LBB10_40:                              # %if.else.178
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movq	%r12, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	40(%rbx), %r12
	leaq	584(%rbp), %r14
	movq	%rbp, %r13
	addq	$588, %r13              # imm = 0x24C
	cmpl	$1, 8976(%rax)
	je	.LBB10_51
# BB#41:                                # %if.then.181
	movl	$.L.str.45, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r15), %rax
	cmpq	128(%r15), %rax
	jae	.LBB10_43
# BB#42:                                # %cond.true.191
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$30, 1(%rax)
	jmp	.LBB10_44
.LBB10_9:                               # %if.else
	testl	%ecx, %ecx
	jne	.LBB10_20
# BB#10:                                # %sw.bb
	movss	44(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_12
	jp	.LBB10_12
# BB#11:                                # %lor.lhs.false
	movss	48(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	ucomiss	.LCPI10_0(%rip), %xmm1
	jne	.LBB10_12
	jnp	.LBB10_19
.LBB10_12:                              # %land.lhs.true
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_20
	jp	.LBB10_20
# BB#13:                                # %lor.lhs.false.22
	movss	48(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_20
	jnp	.LBB10_19
	jmp	.LBB10_20
.LBB10_20:                              # %if.then.53
	addq	$568, %rbp              # imm = 0x238
	movq	%rbp, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	816(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	%r14, %r8
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	gx_default_begin_image
	jmp	.LBB10_68
.LBB10_48:                              # %cond.false.228
	movl	$30, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB10_49:                              # %cond.end.230
	movl	$0, 8976(%r12)
.LBB10_50:                              # %if.end.233
	movl	%r13d, 8968(%r12)
	leaq	588(%rbp), %r13
	movq	%rbp, %r14
	addq	$584, %r14              # imm = 0x248
	leaq	40(%rbx), %r12
	jmp	.LBB10_51
.LBB10_43:                              # %cond.false.199
	movl	$30, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB10_44:                              # %cond.end.201
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, 8976(%rax)
.LBB10_51:                              # %if.end.235
	movl	$.L.str.127, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.127, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r15, %rdi
	movl	60(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	68(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	88(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	64(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%r15, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movl	(%r13), %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	movl	(%r14), %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	movl	(%r12), %esi
	movq	%r15, %rdi
	callq	sput_lips_int
	xorl	%r14d, %r14d
	cmpl	$0, 564(%rbx)
	je	.LBB10_53
# BB#52:                                # %if.then.241
	movl	44(%rbp), %eax
	imull	(%r12), %eax
	cmpl	$1, %eax
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %r14d
.LBB10_53:                              # %if.end.249
	cmpl	$0, 584(%rbx)
	movl	56(%rsp), %eax          # 4-byte Reload
	jne	.LBB10_54
# BB#55:                                # %if.else.254
	testl	%eax, %eax
	je	.LBB10_54
# BB#56:                                # %if.else.259
	movq	120(%r15), %rax
	movq	128(%r15), %rcx
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	je	.LBB10_57
# BB#60:                                # %if.else.283
	cmpq	%rcx, %rax
	jb	.LBB10_61
# BB#62:                                # %cond.false.300
	movl	$59, %esi
	jmp	.LBB10_63
.LBB10_54:                              # %if.then.252
	movl	$.L.str.62, %edi
	callq	strlen
	leaq	756(%rsp), %rcx
	movl	$.L.str.62, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB10_64:                              # %if.end.306
	testl	%r14d, %r14d
	je	.LBB10_38
# BB#65:                                # %if.then.309
	movq	%r15, %rdi
	movl	%r14d, %esi
.LBB10_37:                              # %if.then.151
	callq	sput_lips_int
.LBB10_38:                              # %if.then.151
	movq	120(%r15), %rax
	cmpq	128(%r15), %rax
	jae	.LBB10_66
# BB#39:                                # %cond.true.166
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$30, 1(%rax)
	jmp	.LBB10_67
.LBB10_66:                              # %cond.false.327
	movl	$30, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB10_67:                              # %cleanup
	xorl	%eax, %eax
.LBB10_68:                              # %cleanup.342
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_57:                              # %if.then.262
	cmpq	%rcx, %rax
	jb	.LBB10_58
# BB#59:                                # %cond.false.279
	movl	$58, %esi
.LBB10_63:                              # %if.end.306
	movq	%r15, %rdi
	callq	spputc
	jmp	.LBB10_64
.LBB10_61:                              # %cond.true.292
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$59, 1(%rax)
	jmp	.LBB10_64
.LBB10_58:                              # %cond.true.271
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movb	$58, 1(%rax)
	jmp	.LBB10_64
.Lfunc_end10:
	.size	lips4v_begin_image, .Lfunc_end10-lips4v_begin_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4634766966517661696     # double 72
.LCPI11_1:
	.quad	-4627111733686491571    # double -0.19685039370078741
	.text
	.align	16, 0x90
	.type	lips4v_beginpage,@function
lips4v_beginpage:                       # @lips4v_beginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp96:
	.cfi_def_cfa_offset 512
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	5848(%r14), %r12
	cvttss2si	884(%r14), %ebx
	cvttss2si	856(%r14), %r13d
	cvttss2si	860(%r14), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	8952(%r14), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	8956(%r14), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	8960(%r14), %r15d
	cmpl	$0, 8944(%r14)
	je	.LBB11_22
# BB#1:                                 # %if.then
	cmpl	$0, 8864(%r14)
	je	.LBB11_17
# BB#2:                                 # %if.then.7
	movl	$.L.str.49, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.49, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttss2si	884(%r14), %eax
	cmpl	$300, %eax              # imm = 0x12C
	je	.LBB11_7
# BB#3:                                 # %if.then.7
	cmpl	$600, %eax              # imm = 0x258
	jne	.LBB11_4
# BB#6:                                 # %if.then.19
	movl	$.L.str.4, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.4, %esi
	jmp	.LBB11_8
.LBB11_7:                               # %if.then.27
	movl	$.L.str.5, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.5, %esi
	jmp	.LBB11_8
.LBB11_4:                               # %if.then.7
	cmpl	$1200, %eax             # imm = 0x4B0
	jne	.LBB11_9
# BB#5:                                 # %if.then.12
	movl	$.L.str.3, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.3, %esi
.LBB11_8:                               # %if.end.30
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_9:                               # %if.end.30
	movl	$.L.str.50, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.50, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	8868(%r14), %edx
	testl	%edx, %edx
	je	.LBB11_11
# BB#10:                                # %if.then.33
	leaq	368(%rsp), %rbp
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_11:                              # %if.end.38
	cmpl	$0, 8876(%r14)
	je	.LBB11_16
# BB#12:                                # %if.then.40
	movl	$.L.str.7, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpl	$0, 8872(%r14)
	je	.LBB11_14
# BB#13:                                # %if.then.43
	leaq	363(%rsp), %rdi
	movl	$.L.str.8, %esi
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.46
	leaq	363(%rsp), %rdi
	movl	$.L.str.9, %esi
.LBB11_15:                              # %if.end.49
	xorl	%eax, %eax
	callq	gs_sprintf
	leaq	363(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_16:                              # %if.end.52
	movl	$.L.str.51, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_17:                              # %if.end.54
	movl	$.L.str.52, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$-15, %eax
	cmpl	$9999, %ebx             # imm = 0x270F
	jg	.LBB11_194
# BB#18:                                # %if.end.59
	leaq	446(%rsp), %rbp
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movzwl	108(%r14), %eax
	cmpl	$8, %eax
	jne	.LBB11_20
# BB#19:                                # %if.then.67
	movl	$.L.str.53, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.53, %esi
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.69
	movl	$.L.str.54, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.54, %esi
.LBB11_21:                              # %if.end.71
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	8852(%r14), %rcx
	leaq	320(%rsp), %rbp
	movl	$.L.str.11, %esi
	movl	$144, %edx
	movl	$156, %r8d
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_22:                              # %land.lhs.true
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	8912(%r14), %rbp
	cmpq	$3, %rcx
	ja	.LBB11_30
# BB#23:                                # %cond.true
	movzbl	(%rbp), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB11_31
# BB#24:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB11_31
# BB#25:                                # %if.then.92
	movzbl	1(%rbp), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB11_31
# BB#26:                                # %if.then.92
	testl	%eax, %eax
	jne	.LBB11_31
# BB#27:                                # %if.then.102
	movzbl	2(%rbp), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB11_31
# BB#28:                                # %if.then.102
	testl	%eax, %eax
	jne	.LBB11_31
# BB#29:                                # %if.then.112
	movzbl	3(%rbp), %eax
	addl	$-105, %eax
	jmp	.LBB11_31
.LBB11_30:                              # %cond.false
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_31:                              # %cond.end
	testl	%eax, %eax
	je	.LBB11_32
# BB#36:                                # %land.lhs.true.149
	movl	$.L.str.14, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_44
# BB#37:                                # %cond.true.153
	movzbl	(%rbp), %eax
	addl	$-79, %eax
	testq	%rcx, %rcx
	je	.LBB11_45
# BB#38:                                # %cond.true.153
	testl	%eax, %eax
	jne	.LBB11_45
# BB#39:                                # %if.then.169
	movzbl	1(%rbp), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB11_45
# BB#40:                                # %if.then.169
	testl	%eax, %eax
	jne	.LBB11_45
# BB#41:                                # %if.then.179
	movzbl	2(%rbp), %eax
	addl	$-80, %eax
	cmpq	$3, %rcx
	jb	.LBB11_45
# BB#42:                                # %if.then.179
	testl	%eax, %eax
	jne	.LBB11_45
# BB#43:                                # %if.then.189
	movzbl	3(%rbp), %eax
	jmp	.LBB11_45
.LBB11_32:                              # %if.then.126
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_34
# BB#33:                                # %cond.true.131
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_35
.LBB11_44:                              # %cond.false.198
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_45:                              # %cond.end.202
	testl	%eax, %eax
	je	.LBB11_56
# BB#46:                                # %land.lhs.true.211
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_54
# BB#47:                                # %cond.true.215
	movzbl	(%rbp), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB11_55
# BB#48:                                # %cond.true.215
	testl	%eax, %eax
	jne	.LBB11_55
# BB#49:                                # %if.then.231
	movzbl	1(%rbp), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB11_55
# BB#50:                                # %if.then.231
	testl	%eax, %eax
	jne	.LBB11_55
# BB#51:                                # %if.then.241
	movzbl	2(%rbp), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB11_55
# BB#52:                                # %if.then.241
	testl	%eax, %eax
	jne	.LBB11_55
# BB#53:                                # %if.then.251
	movzbl	3(%rbp), %eax
	addl	$-110, %eax
	jmp	.LBB11_55
.LBB11_54:                              # %cond.false.260
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_55:                              # %cond.end.264
	testl	%eax, %eax
	je	.LBB11_56
# BB#60:                                # %land.lhs.true.296
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_68
# BB#61:                                # %cond.true.300
	movzbl	(%rbp), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB11_69
# BB#62:                                # %cond.true.300
	testl	%eax, %eax
	jne	.LBB11_69
# BB#63:                                # %if.then.316
	movzbl	1(%rbp), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB11_69
# BB#64:                                # %if.then.316
	testl	%eax, %eax
	jne	.LBB11_69
# BB#65:                                # %if.then.326
	movzbl	2(%rbp), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB11_69
# BB#66:                                # %if.then.326
	testl	%eax, %eax
	jne	.LBB11_69
# BB#67:                                # %if.then.336
	movzbl	3(%rbp), %eax
	addl	$-100, %eax
	jmp	.LBB11_69
.LBB11_56:                              # %if.then.268
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_58
# BB#57:                                # %cond.true.277
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_59
.LBB11_58:                              # %cond.false.285
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_59:                              # %cond.end.287
	movl	$.L.str.16, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.16, %esi
	jmp	.LBB11_88
.LBB11_34:                              # %cond.false.138
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_35:                              # %cond.end.140
	movl	$.L.str.13, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.13, %esi
	jmp	.LBB11_88
.LBB11_68:                              # %cond.false.345
	movl	$.L.str.17, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_69:                              # %cond.end.349
	testl	%eax, %eax
	je	.LBB11_70
# BB#74:                                # %land.lhs.true.381
	movl	$.L.str.19, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_82
# BB#75:                                # %cond.true.385
	movzbl	(%rbp), %eax
	addl	$-71, %eax
	testq	%rcx, %rcx
	je	.LBB11_83
# BB#76:                                # %cond.true.385
	testl	%eax, %eax
	jne	.LBB11_83
# BB#77:                                # %if.then.401
	movzbl	1(%rbp), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB11_83
# BB#78:                                # %if.then.401
	testl	%eax, %eax
	jne	.LBB11_83
# BB#79:                                # %if.then.411
	movzbl	2(%rbp), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB11_83
# BB#80:                                # %if.then.411
	testl	%eax, %eax
	jne	.LBB11_83
# BB#81:                                # %if.then.421
	movzbl	3(%rbp), %eax
	addl	$-115, %eax
	jmp	.LBB11_83
.LBB11_70:                              # %if.then.353
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_72
# BB#71:                                # %cond.true.362
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_73
.LBB11_82:                              # %cond.false.430
	movl	$.L.str.19, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_83:                              # %cond.end.434
	testl	%eax, %eax
	jne	.LBB11_89
# BB#84:                                # %if.then.438
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_86
# BB#85:                                # %cond.true.447
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_87
.LBB11_72:                              # %cond.false.370
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_73:                              # %cond.end.372
	movl	$.L.str.18, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.18, %esi
	jmp	.LBB11_88
.LBB11_86:                              # %cond.false.455
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_87:                              # %cond.end.457
	movl	$.L.str.20, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.20, %esi
.LBB11_88:                              # %if.end.463
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_89:                              # %if.end.463
	cmpl	$0, 8948(%r14)
	jne	.LBB11_110
# BB#90:                                # %land.lhs.true.471
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_98
# BB#91:                                # %cond.true.475
	movzbl	(%rbp), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB11_99
# BB#92:                                # %cond.true.475
	testl	%eax, %eax
	jne	.LBB11_99
# BB#93:                                # %if.then.491
	movzbl	1(%rbp), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB11_99
# BB#94:                                # %if.then.491
	testl	%eax, %eax
	jne	.LBB11_99
# BB#95:                                # %if.then.501
	movzbl	2(%rbp), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB11_99
# BB#96:                                # %if.then.501
	testl	%eax, %eax
	jne	.LBB11_99
# BB#97:                                # %if.then.511
	movzbl	3(%rbp), %eax
	addl	$-105, %eax
	jmp	.LBB11_99
.LBB11_98:                              # %cond.false.520
	movl	$.L.str.12, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_99:                              # %cond.end.524
	testl	%eax, %eax
	je	.LBB11_112
# BB#100:                               # %land.lhs.true.534
	movl	$.L.str.21, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB11_108
# BB#101:                               # %cond.true.538
	movzbl	(%rbp), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB11_109
# BB#102:                               # %cond.true.538
	testl	%eax, %eax
	jne	.LBB11_109
# BB#103:                               # %if.then.554
	movzbl	1(%rbp), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB11_109
# BB#104:                               # %if.then.554
	testl	%eax, %eax
	jne	.LBB11_109
# BB#105:                               # %if.then.564
	movzbl	2(%rbp), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB11_109
# BB#106:                               # %if.then.564
	testl	%eax, %eax
	jne	.LBB11_109
# BB#107:                               # %if.then.574
	movzbl	3(%rbp), %eax
	addl	$-97, %eax
	jmp	.LBB11_109
.LBB11_108:                             # %cond.false.583
	movl	$.L.str.21, %esi
	movq	%rbp, %rdi
	callq	strcmp
.LBB11_109:                             # %cond.end.587
	testl	%eax, %eax
	je	.LBB11_112
.LBB11_110:                             # %if.then.591
	cmpl	$10, 8896(%r14)
	je	.LBB11_114
# BB#111:                               # %if.then.594
	leaq	315(%rsp), %rbp
	movl	$.L.str.22, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$10, 8896(%r14)
	jmp	.LBB11_114
.LBB11_112:                             # %if.else.601
	movl	8848(%r14), %ecx
	cmpl	%ecx, 8896(%r14)
	je	.LBB11_114
# BB#113:                               # %if.then.605
	leaq	315(%rsp), %rbp
	movl	$.L.str.23, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	8848(%r14), %eax
	movl	%eax, 8896(%r14)
.LBB11_114:                             # %if.end.614
	movl	%r13d, %edi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	lips_media_selection
	movl	%eax, %ebp
	cmpl	%ebp, 8880(%r14)
	jne	.LBB11_115
# BB#121:                               # %if.else.672
	cmpl	$80, %ebp
	jne	.LBB11_125
# BB#122:                               # %if.then.675
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	cmpl	%r13d, 8884(%r14)
	jne	.LBB11_124
# BB#123:                               # %lor.lhs.false.678
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 8888(%r14)
	je	.LBB11_130
.LBB11_124:                             # %if.then.681
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %eax
	cmpl	$11905, %eax            # imm = 0x2E81
	movl	$11905, %ecx            # imm = 0x2E81
	cmovlel	%eax, %ecx
	leal	(%r13,%r13), %eax
	jmp	.LBB11_129
.LBB11_115:                             # %if.then.618
	cmpl	$80, %ebp
	jne	.LBB11_118
# BB#116:                               # %if.then.621
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %eax
	cmpl	$11905, %eax            # imm = 0x2E81
	movl	$11905, %ecx            # imm = 0x2E81
	cmovlel	%eax, %ecx
	leal	(%r13,%r13), %eax
	jmp	.LBB11_117
.LBB11_125:                             # %if.else.703
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	cmpl	$81, %ebp
	jne	.LBB11_132
# BB#126:                               # %if.then.706
	cmpl	%r13d, 8884(%r14)
	jne	.LBB11_128
# BB#127:                               # %lor.lhs.false.710
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 8888(%r14)
	je	.LBB11_130
.LBB11_128:                             # %if.then.714
	leal	(%r13,%r13), %eax
	leal	(%rax,%rax,4), %eax
	cmpl	$11905, %eax            # imm = 0x2E81
	movl	$11905, %ecx            # imm = 0x2E81
	cmovlel	%eax, %ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
.LBB11_129:                             # %if.end.733
	leal	(%rax,%rax,4), %eax
	cmpl	$8418, %eax             # imm = 0x20E2
	movl	$8418, %r8d             # imm = 0x20E2
	cmovlel	%eax, %r8d
	leaq	288(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB11_130:                             # %if.end.733
	leaq	288(%rsp), %rbx
	jmp	.LBB11_131
.LBB11_118:                             # %if.else.641
	cmpl	$81, %ebp
	jne	.LBB11_120
# BB#119:                               # %if.then.644
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	leal	(%r13,%r13), %eax
	leal	(%rax,%rax,4), %eax
	cmpl	$11905, %eax            # imm = 0x2E81
	movl	$11905, %ecx            # imm = 0x2E81
	cmovlel	%eax, %ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax), %eax
.LBB11_117:                             # %if.end.738
	leal	(%rax,%rax,4), %eax
	cmpl	$8418, %eax             # imm = 0x20E2
	movl	$8418, %r8d             # imm = 0x20E2
	cmovlel	%eax, %r8d
	leaq	288(%rsp), %rbx
	movl	$.L.str.24, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	jmp	.LBB11_131
.LBB11_120:                             # %if.else.665
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	leaq	288(%rsp), %rbx
	movl	$.L.str.25, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	gs_sprintf
.LBB11_131:                             # %if.end.738
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_132:                             # %if.end.738
	movl	%ebp, 8880(%r14)
	movl	%r13d, 8884(%r14)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, 8888(%r14)
	cmpl	$0, 8908(%r14)
	je	.LBB11_134
# BB#133:                               # %if.then.743
	leaq	32(%rsp), %rbx
	movl	$.L.str.26, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_134:                             # %if.end.748
	cmpl	$0, 8944(%r14)
	je	.LBB11_137
# BB#135:                               # %if.then.751
	movl	8904(%r14), %ecx
	cmpl	$1, %ecx
	je	.LBB11_137
# BB#136:                               # %if.then.754
	leaq	353(%rsp), %rbx
	movl	$.L.str.27, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %r8d
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_137:                             # %if.end.761
	movl	12(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movl	16(%rsp), %eax          # 4-byte Reload
	je	.LBB11_147
# BB#138:                               # %if.end.761
	testl	%eax, %eax
	je	.LBB11_147
# BB#139:                               # %if.then.765
	cmpl	$1, 8900(%r14)
	ja	.LBB11_152
# BB#140:                               # %if.then.772
	leaq	404(%rsp), %rbx
	movl	$.L.str.28, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	8900(%r14), %eax
	testl	%r15d, %r15d
	je	.LBB11_141
# BB#144:                               # %if.else.789
	cmpl	$3, %eax
	je	.LBB11_146
# BB#145:                               # %if.then.793
	leaq	398(%rsp), %rbx
	movl	$.L.str.30, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_146:                             # %if.end.798
	movl	$3, 8900(%r14)
	jmp	.LBB11_152
.LBB11_147:                             # %if.else.802
	testl	%ecx, %ecx
	jne	.LBB11_152
# BB#148:                               # %if.else.802
	testl	%eax, %eax
	je	.LBB11_152
# BB#149:                               # %if.then.806
	cmpl	$1, 8900(%r14)
	je	.LBB11_151
# BB#150:                               # %if.then.810
	leaq	404(%rsp), %rbx
	movl	$.L.str.31, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_151:                             # %if.end.815
	movl	$1, 8900(%r14)
	jmp	.LBB11_152
.LBB11_141:                             # %if.then.778
	cmpl	$2, %eax
	je	.LBB11_143
# BB#142:                               # %if.then.782
	leaq	398(%rsp), %rbx
	movl	$.L.str.29, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_143:                             # %if.end.787
	movl	$2, 8900(%r14)
.LBB11_152:                             # %if.end.818
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_154
# BB#153:                               # %cond.true.827
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_155
.LBB11_154:                             # %cond.false.835
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_155:                             # %cond.end.837
	movl	$.L.str.32, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.32, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_157
# BB#156:                               # %cond.true.848
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_158
.LBB11_157:                             # %cond.false.856
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_158:                             # %cond.end.858
	movl	$.L.str.33, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.33, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_160
# BB#159:                               # %cond.true.869
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB11_161
.LBB11_160:                             # %cond.false.877
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_161:                             # %cond.end.879
	movl	$.L.str.34, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.34, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttss2si	884(%r14), %ecx
	leaq	432(%rsp), %rbx
	movl	$.L.str.35, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	leaq	424(%rsp), %rbx
	movl	$.L.str.36, %esi
	movl	$27, %edx
	movl	$30, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.37, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.37, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r12, %rdi
	movl	8(%rsp), %ebx           # 4-byte Reload
	movl	%ebx, %esi
	callq	sput_lips_int
	movl	$.L.str.38, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_163
# BB#162:                               # %cond.true.903
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_164
.LBB11_163:                             # %cond.false.911
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_164:                             # %cond.end.913
	movl	%ebx, %ebp
	movzwl	108(%r14), %eax
	cmpl	$8, %eax
	jne	.LBB11_166
# BB#165:                               # %if.then.920
	leaq	417(%rsp), %rbx
	movl	$.L.str.39, %esi
	jmp	.LBB11_167
.LBB11_166:                             # %if.else.925
	leaq	410(%rsp), %rbx
	movl	$.L.str.40, %esi
.LBB11_167:                             # %if.end.930
	movl	$30, %edx
	movl	$30, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	452(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.41, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.41, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	cvtsi2sdl	%r13d, %xmm0
	movss	908(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	916(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebp, %xmm1
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	mulsd	%xmm1, %xmm0
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	%r12, %rdi
	callq	sput_lips_int
	movq	24(%rsp), %rax          # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movss	912(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	920(%r14), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	%r12, %rdi
	callq	sput_lips_int
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_169
# BB#168:                               # %cond.true.968
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_170
.LBB11_169:                             # %cond.false.976
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_170:                             # %cond.end.978
	movsd	.LCPI11_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movss	908(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ebp
	testl	%ebp, %ebp
	je	.LBB11_175
# BB#171:                               # %cond.end.978
	movss	912(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %ebx
	testl	%ebx, %ebx
	je	.LBB11_175
# BB#172:                               # %if.then.1001
	movl	$.L.str.42, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	sput_lips_int
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	sput_lips_int
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_174
# BB#173:                               # %cond.true.1011
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_175
.LBB11_174:                             # %cond.false.1019
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_175:                             # %if.end.1023
	movl	$.L.str.43, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_177
# BB#176:                               # %cond.true.1033
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_178
.LBB11_177:                             # %cond.false.1041
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_178:                             # %cond.end.1043
	movl	$.L.str.44, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.44, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_180
# BB#179:                               # %cond.true.1054
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_181
.LBB11_180:                             # %cond.false.1062
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_181:                             # %cond.end.1064
	movl	$.L.str.45, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.45, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_183
# BB#182:                               # %cond.true.1075
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_184
.LBB11_183:                             # %cond.false.1083
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_184:                             # %cond.end.1085
	movl	$.L.str.46, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_186
# BB#185:                               # %cond.true.1096
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_187
.LBB11_186:                             # %cond.false.1104
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_187:                             # %cond.end.1106
	movl	$1, 8976(%r14)
	movl	$0, 9008(%r14)
	movl	$.L.str.47, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.47, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$3277, %esi             # imm = 0xCCD
	movq	%r12, %rdi
	callq	sput_lips_int
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_189
# BB#188:                               # %cond.true.1117
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_190
.LBB11_189:                             # %cond.false.1125
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_190:                             # %cond.end.1127
	movl	$.L.str.48, %edi
	callq	strlen
	leaq	452(%rsp), %rcx
	movl	$.L.str.48, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB11_192
# BB#191:                               # %cond.true.1138
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB11_193
.LBB11_192:                             # %cond.false.1146
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB11_193:                             # %cleanup
	xorl	%eax, %eax
.LBB11_194:                             # %cleanup
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lips4v_beginpage, .Lfunc_end11-lips4v_beginpage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lips4v_setlinewidth,@function
lips4v_setlinewidth:                    # @lips4v_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 48
.Ltmp106:
	.cfi_offset %rbx, -24
.Ltmp107:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8980(%r14)
	je	.LBB12_5
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB12_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB12_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	16(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
.LBB12_5:                               # %if.end
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	maxsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$.L.str.56, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB12_7
# BB#6:                                 # %cond.true.24
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false.32
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB12_8:                               # %cond.end.34
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	lips4v_setlinewidth, .Lfunc_end12-lips4v_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_setlinecap,@function
lips4v_setlinecap:                      # @lips4v_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 64
.Ltmp113:
	.cfi_offset %rbx, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	callq	gdev_vector_stream
	movq	%rax, %rbp
	cmpl	$0, 8980(%r15)
	je	.LBB13_5
# BB#1:                                 # %if.then
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB13_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$-101, 1(%rax)
	jmp	.LBB13_4
.LBB13_3:                               # %cond.false
	movl	$155, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB13_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	16(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r15)
.LBB13_5:                               # %if.end
	xorl	%edx, %edx
	cmpl	$3, %r14d
	ja	.LBB13_7
# BB#6:                                 # %switch.lookup
	movslq	%r14d, %rax
	movl	.Lswitch.table(,%rax,4), %edx
.LBB13_7:                               # %sw.epilog
	leaq	10(%rsp), %rbx
	movl	$.L.str.57, %esi
	movl	$30, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	20(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	%r14d, 9008(%r15)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	lips4v_setlinecap, .Lfunc_end13-lips4v_setlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_setlinejoin,@function
lips4v_setlinejoin:                     # @lips4v_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp120:
	.cfi_def_cfa_offset 48
.Ltmp121:
	.cfi_offset %rbx, -32
.Ltmp122:
	.cfi_offset %r14, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbp
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8980(%rbp)
	je	.LBB14_5
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB14_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB14_4
.LBB14_3:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB14_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%rbp)
.LBB14_5:                               # %if.end
	xorl	%edx, %edx
	cmpl	$4, %r14d
	ja	.LBB14_7
# BB#6:                                 # %switch.lookup
	movslq	%r14d, %rax
	movl	.Lswitch.table.1(,%rax,4), %edx
.LBB14_7:                               # %sw.epilog
	leaq	3(%rsp), %rbp
	movl	$.L.str.58, %esi
	movl	$30, %ecx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	12(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	lips4v_setlinejoin, .Lfunc_end14-lips4v_setlinejoin
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4674735863454760960     # double 32766
	.text
	.align	16, 0x90
	.type	lips4v_setmiterlimit,@function
lips4v_setmiterlimit:                   # @lips4v_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -24
.Ltmp128:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8980(%r14)
	je	.LBB15_5
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB15_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB15_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	16(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
.LBB15_5:                               # %if.end
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$.L.str.47, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB15_7
# BB#6:                                 # %cond.true.22
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB15_8
.LBB15_7:                               # %cond.false.30
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB15_8:                               # %cond.end.32
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	lips4v_setmiterlimit, .Lfunc_end15-lips4v_setmiterlimit
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	3212836864              # float -1
.LCPI16_1:
	.long	0                       # float 0
	.text
	.align	16, 0x90
	.type	lips4v_setdash,@function
lips4v_setdash:                         # @lips4v_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 80
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	callq	gdev_vector_stream
	movq	%rax, %r12
	cmpl	$0, 8980(%r15)
	je	.LBB16_5
# BB#1:                                 # %if.then
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB16_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$-101, 1(%rax)
	jmp	.LBB16_4
.LBB16_3:                               # %cond.false
	movl	$155, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB16_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r15)
.LBB16_5:                               # %if.end
	testl	%r14d, %r14d
	je	.LBB16_6
# BB#9:                                 # %if.else
	movl	$.L.str.60, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.60, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB16_11
# BB#10:                                # %cond.true.42
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$44, 1(%rax)
	jmp	.LBB16_12
.LBB16_6:                               # %if.then.13
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.59, %esi
	jmp	.LBB16_7
.LBB16_11:                              # %cond.false.50
	movl	$44, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB16_12:                              # %for.body.lr.ph
	movl	$.L.str.38, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.38, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%r12, %rdi
	callq	sput_lips_int
	movl	%r14d, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB16_13
.LBB16_17:                              # %if.then.67
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	$1, %esi
	jmp	.LBB16_20
	.align	16, 0x90
.LBB16_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, %r14d
	jne	.LBB16_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpl	$1, 9008(%r15)
	jne	.LBB16_19
# BB#15:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB16_13 Depth=1
	movss	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI16_1, %xmm0
	jne	.LBB16_19
	jp	.LBB16_19
# BB#16:                                # %if.then.64
                                        #   in Loop: Header=BB16_13 Depth=1
	testl	%ebp, %ebp
	je	.LBB16_17
# BB#18:                                # %if.else.68
                                        #   in Loop: Header=BB16_13 Depth=1
	movss	(%r13,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI16_0(%rip), %xmm0
	cvttss2si	%xmm0, %esi
	jmp	.LBB16_20
	.align	16, 0x90
.LBB16_19:                              # %if.else.72
                                        #   in Loop: Header=BB16_13 Depth=1
	cvttss2si	(%r13,%rbp,4), %esi
.LBB16_20:                              # %for.inc
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	%r12, %rdi
	callq	sput_lips_int
	incq	%rbp
	cmpl	%ebp, %ebx
	jne	.LBB16_13
# BB#21:                                # %for.end
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB16_23
# BB#22:                                # %cond.true.85
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB16_24
.LBB16_23:                              # %cond.false.93
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB16_24:                              # %cond.end.95
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB16_26
# BB#25:                                # %cond.true.106
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$44, 1(%rax)
	jmp	.LBB16_27
.LBB16_26:                              # %cond.false.114
	movl	$44, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB16_27:                              # %cond.end.116
	movl	$.L.str.62, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.62, %esi
.LBB16_7:                               # %if.then.13
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB16_28
# BB#8:                                 # %cond.true.22
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	$30, 1(%rax)
	jmp	.LBB16_29
.LBB16_28:                              # %cond.false.135
	movl	$30, %esi
	movq	%r12, %rdi
	callq	spputc
.LBB16_29:                              # %if.end.139
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lips4v_setdash, .Lfunc_end16-lips4v_setdash
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_setflat,@function
lips4v_setflat:                         # @lips4v_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp144:
	.cfi_def_cfa_offset 48
.Ltmp145:
	.cfi_offset %rbx, -24
.Ltmp146:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8980(%r14)
	je	.LBB17_5
# BB#1:                                 # %if.then
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB17_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB17_4
.LBB17_3:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB17_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	16(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
.LBB17_5:                               # %if.end
	movl	$.L.str.63, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.63, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB17_7
# BB#6:                                 # %cond.true.21
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false.29
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB17_8:                               # %cond.end.31
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	lips4v_setflat, .Lfunc_end17-lips4v_setflat
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_setlogop,@function
lips4v_setlogop:                        # @lips4v_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	lips4v_setlogop, .Lfunc_end18-lips4v_setlogop
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_can_handle_hl_color,@function
lips4v_can_handle_hl_color:             # @lips4v_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	lips4v_can_handle_hl_color, .Lfunc_end19-lips4v_can_handle_hl_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4652007308841189376     # double 1000
.LCPI20_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	lips4v_setfillcolor,@function
lips4v_setfillcolor:                    # @lips4v_setfillcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp150:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp151:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp152:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp153:
	.cfi_def_cfa_offset 64
.Ltmp154:
	.cfi_offset %rbx, -56
.Ltmp155:
	.cfi_offset %r12, -48
.Ltmp156:
	.cfi_offset %r13, -40
.Ltmp157:
	.cfi_offset %r14, -32
.Ltmp158:
	.cfi_offset %r15, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %r14
	movl	$gx_dc_type_data_pure, %ecx
	movl	$-15, %eax
	cmpq	%rcx, (%rbp)
	jne	.LBB20_30
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movq	8(%rbp), %rcx
	movzwl	108(%r14), %eax
	cmpl	$8, %eax
	jne	.LBB20_3
# BB#2:                                 # %if.then.3
	movl	112(%r14), %eax
	subl	%ecx, %eax
	movl	%eax, (%rsp)            # 4-byte Spill
                                        # implicit-def: R12D
                                        # implicit-def: R13D
                                        # implicit-def: EBP
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	movq	%rcx, %rax
	shrq	$16, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI20_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzbl	%ch, %eax  # NOREX
	cvtsi2sdq	%rax, %xmm3
	mulsd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movzbl	%cl, %eax
	cvtsi2sdq	%rax, %xmm4
	mulsd	%xmm1, %xmm4
	divsd	%xmm2, %xmm4
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	cvttss2si	%xmm0, %r12d
	cvttss2si	%xmm3, %r13d
	cvttss2si	%xmm1, %ebp
                                        # implicit-def: EAX
	movl	%eax, (%rsp)            # 4-byte Spill
.LBB20_4:                               # %if.end.19
	cmpl	$0, 8980(%r14)
	je	.LBB20_9
# BB#5:                                 # %if.then.20
	movq	%rcx, %r15
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB20_7
# BB#6:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB20_8:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
	movq	%r15, %rcx
.LBB20_9:                               # %if.end.34
	movq	%rcx, 9000(%r14)
	cmpq	$-1, %rcx
	je	.LBB20_10
# BB#13:                                # %if.else.59
	movl	$.L.str.65, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB20_15
# BB#14:                                # %cond.true.69
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB20_16
.LBB20_10:                              # %if.then.37
	movl	$.L.str.64, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.64, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	movl	%ebp, %r15d
	movl	(%rsp), %ebp            # 4-byte Reload
	jae	.LBB20_12
# BB#11:                                # %cond.true.47
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB20_17
.LBB20_15:                              # %cond.false.77
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB20_16:                              # %if.end.81
	movl	%ebp, %r15d
	movl	(%rsp), %ebp            # 4-byte Reload
	jmp	.LBB20_17
.LBB20_12:                              # %cond.false.55
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB20_17:                              # %if.end.81
	movl	$.L.str.66, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movzwl	108(%r14), %eax
	movq	%rbx, %rdi
	cmpl	$8, %eax
	jne	.LBB20_19
# BB#18:                                # %if.then.88
	movl	%ebp, %esi
	jmp	.LBB20_20
.LBB20_19:                              # %if.else.89
	movl	%r12d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r15d, %esi
.LBB20_20:                              # %if.end.93
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB20_22
# BB#21:                                # %cond.true.102
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB20_23
.LBB20_22:                              # %cond.false.110
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB20_23:                              # %cond.end.112
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movzwl	108(%r14), %eax
	movq	%rbx, %rdi
	cmpl	$8, %eax
	jne	.LBB20_25
# BB#24:                                # %if.then.120
	movl	%ebp, %esi
	jmp	.LBB20_26
.LBB20_25:                              # %if.else.121
	movl	%r12d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r15d, %esi
.LBB20_26:                              # %if.end.125
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB20_28
# BB#27:                                # %cond.true.134
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB20_29
.LBB20_28:                              # %cond.false.142
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB20_29:                              # %return
	xorl	%eax, %eax
.LBB20_30:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	lips4v_setfillcolor, .Lfunc_end20-lips4v_setfillcolor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	lips4v_setstrokecolor,@function
lips4v_setstrokecolor:                  # @lips4v_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp163:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp164:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp166:
	.cfi_def_cfa_offset 64
.Ltmp167:
	.cfi_offset %rbx, -56
.Ltmp168:
	.cfi_offset %r12, -48
.Ltmp169:
	.cfi_offset %r13, -40
.Ltmp170:
	.cfi_offset %r14, -32
.Ltmp171:
	.cfi_offset %r15, -24
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %r14
	movl	$gx_dc_type_data_pure, %ecx
	movl	$-15, %eax
	cmpq	%rcx, (%rbp)
	jne	.LBB21_15
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movq	8(%rbp), %rcx
	movzwl	108(%r14), %eax
	cmpl	$24, %eax
                                        # implicit-def: R13D
                                        # implicit-def: R12D
                                        # implicit-def: R15D
	jne	.LBB21_3
# BB#2:                                 # %if.then.3
	movq	%rcx, %rax
	shrq	$16, %rax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movzbl	%ch, %eax  # NOREX
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movzbl	%cl, %eax
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	cvtsi2sdq	%rax, %xmm3
	divsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm3, %xmm1
	cvttss2si	%xmm0, %r13d
	cvttss2si	%xmm2, %r12d
	cvttss2si	%xmm1, %r15d
.LBB21_3:                               # %if.end.16
	movq	%rcx, %rbp
	cmpl	$0, 8980(%r14)
	je	.LBB21_8
# BB#4:                                 # %if.then.17
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB21_6
# BB#5:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$-101, 1(%rax)
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false
	movl	$155, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB21_7:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%r14)
.LBB21_8:                               # %if.end.31
	movl	$.L.str.68, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movzwl	108(%r14), %eax
	cmpl	$8, %eax
	jne	.LBB21_10
# BB#9:                                 # %if.then.38
	movl	112(%r14), %esi
	subl	%ebp, %esi
	movq	%rbx, %rdi
	jmp	.LBB21_11
.LBB21_10:                              # %if.else
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	sput_lips_int
	movq	%rbx, %rdi
	movl	%r15d, %esi
.LBB21_11:                              # %if.end.45
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB21_13
# BB#12:                                # %cond.true.54
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB21_14
.LBB21_13:                              # %cond.false.62
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB21_14:                              # %return
	xorl	%eax, %eax
.LBB21_15:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	lips4v_setstrokecolor, .Lfunc_end21-lips4v_setstrokecolor
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_beginpath,@function
lips4v_beginpath:                       # @lips4v_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp174:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp175:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp177:
	.cfi_def_cfa_offset 64
.Ltmp178:
	.cfi_offset %rbx, -40
.Ltmp179:
	.cfi_offset %r14, -32
.Ltmp180:
	.cfi_offset %r15, -24
.Ltmp181:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbp
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movq	%rbx, %r14
	cmpl	$0, 8980(%rbp)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB22_3
# BB#2:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	$-101, 1(%rax)
	jmp	.LBB22_4
.LBB22_3:                               # %cond.false
	movl	$155, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB22_4:                               # %cond.end
	movl	$.L.str.55, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 8980(%rbp)
.LBB22_5:                               # %if.end
	testb	$4, %r15b
	jne	.LBB22_6
# BB#9:                                 # %if.else
	movl	$.L.str.70, %edi
	callq	strlen
	leaq	20(%rsp), %rcx
	movl	$.L.str.70, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	120(%rbx), %rbp
	subq	$-128, %rbx
	jmp	.LBB22_10
.LBB22_6:                               # %if.then.13
	movl	$.L.str.69, %edi
	callq	strlen
	leaq	16(%rsp), %rcx
	movl	$.L.str.69, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%r14), %rax
	leaq	120(%rbx), %rbp
	subq	$-128, %rbx
	cmpq	128(%r14), %rax
	jae	.LBB22_8
# BB#7:                                 # %cond.true.22
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbp)
	movb	$30, 1(%rax)
	jmp	.LBB22_10
.LBB22_8:                               # %cond.false.30
	movl	$30, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB22_10:                              # %if.end.35
	movq	(%rbp), %rax
	cmpq	(%rbx), %rax
	jae	.LBB22_12
# BB#11:                                # %cond.true.43
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbp)
	movb	$30, 1(%rax)
	jmp	.LBB22_13
.LBB22_12:                              # %cond.false.51
	movl	$30, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB22_13:                              # %cond.end.53
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	lips4v_beginpath, .Lfunc_end22-lips4v_beginpath
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_moveto,@function
lips4v_moveto:                          # @lips4v_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp182:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp183:
	.cfi_def_cfa_offset 48
.Ltmp184:
	.cfi_offset %rbx, -16
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$.L.str.71, %edi
	callq	strlen
	leaq	28(%rsp), %rcx
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	16(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB23_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB23_3
.LBB23_2:                               # %cond.false
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB23_3:                               # %cond.end
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end23:
	.size	lips4v_moveto, .Lfunc_end23-lips4v_moveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lips4v_lineto,@function
lips4v_lineto:                          # @lips4v_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp187:
	.cfi_def_cfa_offset 64
.Ltmp188:
	.cfi_offset %rbx, -24
.Ltmp189:
	.cfi_offset %r14, -16
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpl	$1, 9008(%rbx)
	je	.LBB24_1
# BB#2:                                 # %entry
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	jmp	.LBB24_3
.LBB24_1:
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
.LBB24_3:                               # %entry
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cmpeqsd	%xmm1, %xmm2
	andpd	%xmm2, %xmm0
	andnpd	%xmm1, %xmm2
	orpd	%xmm0, %xmm2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpeqsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	andpd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	$.L.str.72, %edi
	callq	strlen
	leaq	36(%rsp), %rcx
	movl	$.L.str.72, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	24(%rsp), %esi  # 8-byte Folded Reload
	movq	%r14, %rdi
	callq	sput_lips_int
	cvttsd2si	16(%rsp), %esi  # 8-byte Folded Reload
	movq	%r14, %rdi
	callq	sput_lips_int
	movq	120(%r14), %rax
	cmpq	128(%r14), %rax
	jae	.LBB24_5
# BB#4:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r14)
	movb	$30, 1(%rax)
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false
	movl	$30, %esi
	movq	%r14, %rdi
	callq	spputc
.LBB24_6:                               # %cond.end
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	lips4v_lineto, .Lfunc_end24-lips4v_lineto
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_curveto,@function
lips4v_curveto:                         # @lips4v_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp191:
	.cfi_def_cfa_offset 80
.Ltmp192:
	.cfi_offset %rbx, -16
	movsd	%xmm7, 48(%rsp)         # 8-byte Spill
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$.L.str.73, %edi
	callq	strlen
	leaq	60(%rsp), %rcx
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	cvttsd2si	8(%rsp), %esi   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	16(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	24(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	32(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	40(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	cvttsd2si	48(%rsp), %esi  # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	sput_lips_int
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB25_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB25_3:                               # %cond.end
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end25:
	.size	lips4v_curveto, .Lfunc_end25-lips4v_curveto
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_closepath,@function
lips4v_closepath:                       # @lips4v_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp194:
	.cfi_def_cfa_offset 32
.Ltmp195:
	.cfi_offset %rbx, -16
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$.L.str.74, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB26_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB26_3
.LBB26_2:                               # %cond.false
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB26_3:                               # %cond.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	lips4v_closepath, .Lfunc_end26-lips4v_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_endpath,@function
lips4v_endpath:                         # @lips4v_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp198:
	.cfi_def_cfa_offset 32
.Ltmp199:
	.cfi_offset %rbx, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$.L.str.75, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_2
# BB#1:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB27_3:                               # %cond.end
	testb	$8, %bpl
	je	.LBB27_7
# BB#4:                                 # %if.else
	movl	$.L.str.76, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_6
# BB#5:                                 # %cond.true.42
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB27_7
.LBB27_6:                               # %cond.false.50
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB27_7:                               # %if.end.54
	movl	%ebp, %eax
	andl	$2, %eax
	testb	$1, %bpl
	jne	.LBB27_8
# BB#15:                                # %if.end.103
	testl	%eax, %eax
	je	.LBB27_18
	jmp	.LBB27_16
.LBB27_8:                               # %if.then.57
	testl	%eax, %eax
	jne	.LBB27_9
# BB#12:                                # %if.else.81
	movl	$.L.str.78, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.78, %esi
	jmp	.LBB27_13
.LBB27_9:                               # %if.then.60
	movl	$.L.str.77, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.77, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_11
# BB#10:                                # %cond.true.69
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB27_16
.LBB27_11:                              # %cond.false.77
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB27_16:                              # %if.then.106
	movl	$.L.str.79, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.79, %esi
.LBB27_13:                              # %if.else.81
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_17
# BB#14:                                # %cond.true.90
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB27_18
.LBB27_17:                              # %cond.false.123
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB27_18:                              # %if.end.127
	testb	$4, %bpl
	je	.LBB27_22
# BB#19:                                # %if.then.130
	movl	$.L.str.80, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB27_21
# BB#20:                                # %cond.true.139
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB27_22
.LBB27_21:                              # %cond.false.147
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB27_22:                              # %if.end.151
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	lips4v_endpath, .Lfunc_end27-lips4v_endpath
	.cfi_endproc

	.align	16, 0x90
	.type	sput_lips_int,@function
sput_lips_int:                          # @sput_lips_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp204:
	.cfi_def_cfa_offset 48
.Ltmp205:
	.cfi_offset %rbx, -32
.Ltmp206:
	.cfi_offset %r14, -24
.Ltmp207:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	movl	$1, %ecx
	cmpl	$16, %eax
	jl	.LBB28_3
# BB#1:                                 # %if.else.i
	movl	$2, %ecx
	cmpl	$1024, %eax             # imm = 0x400
	jl	.LBB28_3
# BB#2:                                 # %if.else.5.i
	cmpl	$65535, %eax            # imm = 0xFFFF
	setg	%cl
	movzbl	%cl, %ecx
	addl	$3, %ecx
.LBB28_3:                               # %if.end.11.i
	movl	%ecx, %edx
	movb	$0, 11(%rsp,%rdx)
	movl	%eax, %edx
	andl	$15, %edx
	sarl	$31, %esi
	addl	$16, %esi
	andl	$208, %esi
	orl	%edx, %esi
	orl	$32, %esi
	movslq	%ecx, %rcx
	leaq	11(%rsp), %rdx
	movb	%sil, -1(%rcx,%rdx)
	addl	$-2, %ecx
	js	.LBB28_6
# BB#4:                                 # %for.body.lr.ph.i
	sarl	$4, %eax
	movslq	%ecx, %rcx
	incq	%rcx
	.align	16, 0x90
.LBB28_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	andl	$63, %edx
	orl	$64, %edx
	movb	%dl, 10(%rsp,%rcx)
	sarl	$6, %eax
	decq	%rcx
	testq	%rcx, %rcx
	jg	.LBB28_5
.LBB28_6:                               # %for.cond.preheader
	leaq	11(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB28_12
# BB#7:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	11(%rsp), %r14
	.align	16, 0x90
.LBB28_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r15), %rcx
	movb	11(%rsp,%rbx), %al
	cmpq	128(%r15), %rcx
	jae	.LBB28_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB28_8 Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%r15)
	movb	%al, 1(%rcx)
	jmp	.LBB28_11
	.align	16, 0x90
.LBB28_10:                              # %cond.false
                                        #   in Loop: Header=BB28_8 Depth=1
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB28_11:                              # %for.inc
                                        #   in Loop: Header=BB28_8 Depth=1
	incq	%rbx
	movq	%r14, %rdi
	callq	strlen
	cmpq	%rax, %rbx
	jb	.LBB28_8
.LBB28_12:                              # %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end28:
	.size	sput_lips_int, .Lfunc_end28-sput_lips_int
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4652007308841189376     # double 1000
.LCPI29_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	lips4v_copy_text_char,@function
lips4v_copy_text_char:                  # @lips4v_copy_text_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp209:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp210:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp211:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp212:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp214:
	.cfi_def_cfa_offset 272
.Ltmp215:
	.cfi_offset %rbx, -56
.Ltmp216:
	.cfi_offset %r12, -48
.Ltmp217:
	.cfi_offset %r13, -40
.Ltmp218:
	.cfi_offset %r14, -32
.Ltmp219:
	.cfi_offset %r15, -24
.Ltmp220:
	.cfi_offset %rbp, -16
	movl	%r9d, 80(%rsp)          # 4-byte Spill
	movl	%r8d, 76(%rsp)          # 4-byte Spill
	movq	%rcx, %r12
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	272(%rsp), %ebx
	callq	gdev_vector_stream
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cvttss2si	884(%r14), %eax
	movl	%eax, %r13d
	sarl	$31, %r13d
	shrl	$30, %r13d
	addl	%eax, %r13d
	sarl	$2, %r13d
	cmpl	%ebx, %r13d
	movl	$-1, %eax
	jl	.LBB29_98
# BB#1:                                 # %entry
	movl	280(%rsp), %ecx
	cmpl	%ecx, %r13d
	jl	.LBB29_98
# BB#2:                                 # %lor.lhs.false.5
	cmpl	$0, 9012(%r14)
	je	.LBB29_98
# BB#3:                                 # %if.end
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	leal	7(%rbx), %r8d
	sarl	$3, %r8d
	movl	%r8d, %eax
	imull	%ecx, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	9020(%r14), %ecx
	movslq	%ecx, %rsi
	leal	-1(%rsi), %eax
	movslq	%eax, %rdi
	addq	$1128, %rdi             # imm = 0x468
	movq	%rsi, %rbx
	.align	16, 0x90
.LBB29_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdx
	movq	%rdi, %rbp
	testq	%rdx, %rdx
	jle	.LBB29_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB29_4 Depth=1
	leaq	-1(%rdx), %rbx
	leaq	-1(%rbp), %rdi
	cmpq	%r12, (%r14,%rbp,8)
	jne	.LBB29_4
# BB#6:                                 # %for.cond.12.preheader
	decl	%ecx
	cmpl	%ecx, %edx
	jg	.LBB29_9
# BB#7:                                 # %for.body.17.lr.ph
	addq	$-1128, %rbp            # imm = 0xFFFFFFFFFFFFFB98
	leaq	11080(%r14,%rbp,8), %rax
	leal	1(%rbx), %ecx
	movslq	%ecx, %rcx
	leaq	11080(%r14,%rcx,8), %rdx
	movl	%ebx, %esi
	.align	16, 0x90
.LBB29_8:                               # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	incl	%esi
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movl	9020(%r14), %ecx
	decl	%ecx
	addq	$8, %rax
	addq	$8, %rdx
	cmpl	%ecx, %esi
	jl	.LBB29_8
.LBB29_9:                               # %for.end.31
	movslq	%ecx, %rax
	movq	%r12, 11080(%r14,%rax,8)
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB29_20
.LBB29_10:                              # %if.then.33
	cmpl	$256, %ecx              # imm = 0x100
	jl	.LBB29_19
# BB#11:                                # %if.then.37
	movl	%edx, %ebx
	decl	%ebx
	movq	11080(%r14), %rcx
	.align	16, 0x90
.LBB29_12:                              # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	testq	%rdi, %rdi
	jle	.LBB29_99
# BB#13:                                # %for.body.45
                                        #   in Loop: Header=BB29_12 Depth=1
	leaq	-1(%rdi), %rsi
	cmpq	%rcx, 9016(%r14,%rdi,8)
	jne	.LBB29_12
# BB#14:                                # %for.body.45.for.end.55_crit_edge
	leaq	-1(%rdi), %rbp
	leal	-1(%rdi), %edx
	movl	%esi, %ebx
	jmp	.LBB29_15
.LBB29_19:                              # %if.else
	movq	%r12, 11080(%r14,%rsi,8)
	movb	$1, %al
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	%ecx, %ebx
	jmp	.LBB29_20
.LBB29_99:                              # %for.end.55split
	leaq	-1(%rdi), %rbp
	leal	-1(%rdi), %edx
.LBB29_15:                              # %for.end.55
	cmpl	%eax, %edi
	jg	.LBB29_18
# BB#16:                                # %for.body.61.lr.ph
	movslq	%ebp, %rax
	leaq	11080(%r14,%rax,8), %rsi
	leal	1(%rdx), %eax
	cltq
	leaq	11080(%r14,%rax,8), %rdi
	.align	16, 0x90
.LBB29_17:                              # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	incl	%edx
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movl	9020(%r14), %eax
	decl	%eax
	addq	$8, %rsi
	addq	$8, %rdi
	cmpl	%eax, %edx
	jl	.LBB29_17
.LBB29_18:                              # %for.end.71
	cltq
	movq	%rcx, 11080(%r14,%rax,8)
	movb	$1, %al
	movl	%eax, 60(%rsp)          # 4-byte Spill
.LBB29_20:                              # %if.end.83
	cmpl	$0, 8980(%r14)
	je	.LBB29_21
# BB#25:                                # %if.else.101
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	80(%rsp), %ebp          # 4-byte Reload
	subl	8988(%r14), %ebp
	movl	76(%rsp), %ecx          # 4-byte Reload
	subl	8984(%r14), %ecx
	jle	.LBB29_27
# BB#26:                                # %if.then.i
	leaq	196(%rsp), %rdi
	movl	$.L.str.114, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	212(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rsi
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB29_29
.LBB29_21:                              # %if.then.86
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	%r8d, 44(%rsp)          # 4-byte Spill
	movl	$.L.str.82, %edi
	callq	strlen
	leaq	196(%rsp), %rcx
	movl	$.L.str.82, %esi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbp, %rdi
	movl	76(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	%rbp, %rdi
	movl	80(%rsp), %esi          # 4-byte Reload
	callq	sput_lips_int
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_23
# BB#22:                                # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$30, 1(%rax)
	movl	$1, 8980(%r14)
	jmp	.LBB29_35
.LBB29_27:                              # %if.else.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	jns	.LBB29_30
# BB#28:                                # %if.then.6.i
	negl	%ecx
	leaq	196(%rsp), %rdi
	movl	$.L.str.115, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rdi, %rbx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	212(%rsp), %rcx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
.LBB29_29:                              # %if.end.12.i
	movl	%eax, %edx
	callq	sputs
.LBB29_30:                              # %if.end.12.i
	testl	%ebp, %ebp
	jle	.LBB29_32
# BB#31:                                # %if.then.14.i
	leaq	196(%rsp), %rbx
	movl	$.L.str.116, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	jmp	.LBB29_34
.LBB29_32:                              # %if.else.19.i
	jns	.LBB29_35
# BB#33:                                # %if.then.21.i
	negl	%ebp
	leaq	196(%rsp), %rdi
	movl	$.L.str.117, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rdi, %rbx
.LBB29_34:                              # %lips4v_set_cap.exit
	movl	%ebp, %ecx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	212(%rsp), %rcx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	jmp	.LBB29_35
.LBB29_23:                              # %cond.false
	movl	$30, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	$1, 8980(%r14)
.LBB29_35:                              # %lips4v_set_cap.exit
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8984(%r14)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, 8988(%r14)
	movl	60(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	je	.LBB29_36
# BB#37:                                # %if.then.104
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	andl	$127, %ecx
	jne	.LBB29_40
# BB#38:                                # %land.lhs.true
	cmpl	9020(%r14), %eax
	jne	.LBB29_40
# BB#39:                                # %if.then.110
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	shrl	$7, %ecx
	movq	%r14, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	187(%rsp), %r14
	movl	$.L.str.105, %esi
	movl	$144, %edx
	movl	$156, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	40(%rsp), %ecx          # 4-byte Reload
	addl	$9, %ecx
	cvttss2si	884(%rbx), %eax
	movl	%eax, (%rsp)
	leaq	112(%rsp), %rbx
	movl	$.L.str.106, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r13d, %r8d
	movl	%r13d, %r9d
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	jmp	.LBB29_41
.LBB29_36:                              # %if.end.167.thread
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %ebp
	shrl	$7, %ebp
	cmpl	%ebp, 9016(%r14)
	movq	64(%rsp), %r13          # 8-byte Reload
	jne	.LBB29_72
	jmp	.LBB29_73
.LBB29_40:                              # %if.else.123
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movl	40(%rsp), %ecx          # 4-byte Reload
	addl	$9, %ecx
	movl	%eax, %r8d
	shrl	$7, %r8d
	cvttss2si	884(%r14), %r9d
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	112(%rsp), %rbx
	movl	$.L.str.107, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	64(%rsp), %rbp          # 8-byte Reload
.LBB29_41:                              # %if.end.133
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	280(%rsp), %ebx
	movl	%ebx, %r14d
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_43
# BB#42:                                # %cond.true.142
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movl	80(%rsp), %ecx          # 4-byte Reload
	movb	%cl, 1(%rax)
	jmp	.LBB29_44
.LBB29_43:                              # %cond.false.152
	movl	80(%rsp), %eax          # 4-byte Reload
	movzbl	%al, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_44:                              # %cond.end.156
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_46
# BB#45:                                # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movl	272(%rsp), %ecx
	movb	%ch, 1(%rax)  # NOREX
	movq	%rcx, %rbx
	jmp	.LBB29_47
.LBB29_46:                              # %cond.false.i
	movl	272(%rsp), %eax
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	spputc
.LBB29_47:                              # %cond.end.i
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_49
# BB#48:                                # %cond.true.19.i
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	%bl, 1(%rax)
	jmp	.LBB29_50
.LBB29_49:                              # %cond.false.28.i
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_50:                              # %put_int.exit
	movl	%r14d, %ebx
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_52
# BB#51:                                # %cond.true.i.176
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$0, 1(%rax)
	jmp	.LBB29_53
.LBB29_52:                              # %cond.false.i.178
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_53:                              # %cond.end.i.180
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_55
# BB#54:                                # %cond.true.19.i.182
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$0, 1(%rax)
	jmp	.LBB29_56
.LBB29_55:                              # %cond.false.28.i.184
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_56:                              # %put_int.exit185
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_58
# BB#57:                                # %cond.true.i.190
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	%bh, 1(%rax)  # NOREX
	jmp	.LBB29_59
.LBB29_58:                              # %cond.false.i.194
	movzbl	%bh, %esi  # NOREX
	movq	%rbp, %rdi
	callq	spputc
.LBB29_59:                              # %cond.end.i.196
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_61
# BB#60:                                # %cond.true.19.i.199
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	%bl, 1(%rax)
	jmp	.LBB29_62
.LBB29_61:                              # %cond.false.28.i.202
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_62:                              # %put_int.exit203
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_64
# BB#63:                                # %cond.true.i.206
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$0, 1(%rax)
	jmp	.LBB29_65
.LBB29_64:                              # %cond.false.i.208
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_65:                              # %cond.end.i.210
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_67
# BB#66:                                # %cond.true.19.i.212
	movq	%r12, 80(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movq	%rbp, %r12
	movb	$0, 1(%rax)
	jmp	.LBB29_68
.LBB29_67:                              # %cond.false.28.i.214
	movq	%r12, 80(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbp, %r12
	callq	spputc
.LBB29_68:                              # %for.cond.159.preheader
	testl	%ebx, %ebx
	movl	44(%rsp), %r14d         # 4-byte Reload
	jle	.LBB29_71
# BB#69:                                # %for.body.162.lr.ph
	movslq	%ebx, %rax
	leaq	1(%rax), %rbx
	decq	%rax
	movslq	36(%rsp), %rbp          # 4-byte Folded Reload
	imulq	%rbp, %rax
	addq	%rax, %r15
	negq	%rbp
	leaq	196(%rsp), %r13
	.align	16, 0x90
.LBB29_70:                              # %for.body.162
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movq	%r13, %rcx
	callq	sputs
	decq	%rbx
	addq	%rbp, %r15
	cmpq	$1, %rbx
	jg	.LBB29_70
.LBB29_71:                              # %if.then.169
	movq	48(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %ebp
	shrl	$7, %ebp
	movq	16(%rsp), %r14          # 8-byte Reload
	cmpl	%ebp, 9016(%r14)
	movq	%r12, %r13
	je	.LBB29_73
.LBB29_72:                              # %if.then.187
	leaq	104(%rsp), %r15
	movl	$.L.str.108, %esi
	movl	$155, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %ecx
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	%ebp, 9016(%r14)
.LBB29_73:                              # %if.end.196
	movq	9000(%r14), %rax
	cmpq	8992(%r14), %rax
	je	.LBB29_84
# BB#74:                                # %if.then.199
	movzwl	108(%r14), %ecx
	cmpl	$8, %ecx
	jne	.LBB29_79
# BB#75:                                # %if.then.203
	movq	120(%r13), %rax
	cmpq	128(%r13), %rax
	jae	.LBB29_77
# BB#76:                                # %cond.true.212
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r13)
	movb	$-101, 1(%rax)
	jmp	.LBB29_78
.LBB29_79:                              # %if.else.232
	movq	%rax, %rcx
	shrq	$16, %rcx
	cvtsi2sdq	%rcx, %xmm0
	movsd	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI29_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movq	%r13, %rbp
	cvttsd2si	%xmm0, %r13d
	movzbl	%ah, %ecx  # NOREX
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r15d
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r12d
	movq	120(%rbp), %rax
	cmpq	128(%rbp), %rax
	jae	.LBB29_81
# BB#80:                                # %cond.true.259
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbp)
	movb	$-101, 1(%rax)
	jmp	.LBB29_82
.LBB29_77:                              # %cond.false.220
	movl	$155, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB29_78:                              # %cond.end.222
	movl	$.L.str.109, %edi
	callq	strlen
	leaq	196(%rsp), %rcx
	movl	$.L.str.109, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	112(%r14), %edx
	subl	9000(%r14), %edx
	leaq	89(%rsp), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB29_83
.LBB29_81:                              # %cond.false.267
	movl	$155, %esi
	movq	%rbp, %rdi
	callq	spputc
.LBB29_82:                              # %cond.end.269
	movl	$.L.str.110, %edi
	callq	strlen
	leaq	196(%rsp), %rcx
	movl	$.L.str.110, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	89(%rsp), %rdi
	movl	$.L.str.111, %esi
	xorl	%eax, %eax
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	%r12d, %r8d
	callq	gs_sprintf
	movq	%rbp, %r13
.LBB29_83:                              # %if.end.274
	leaq	89(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.112, %edi
	callq	strlen
	leaq	196(%rsp), %rcx
	movl	$.L.str.112, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	9000(%r14), %rax
	movq	%rax, 8992(%r14)
.LBB29_84:                              # %if.end.280
	movl	%ebx, %r12d
	andl	$127, %r12d
	je	.LBB29_88
# BB#85:                                # %lor.lhs.false.284
	cmpl	$27, %r12d
	je	.LBB29_88
# BB#86:                                # %lor.lhs.false.284
	leal	-7(%r12), %eax
	cmpl	$9, %eax
	jb	.LBB29_88
# BB#87:                                # %lor.lhs.false.284.if.end.318_crit_edge
	leaq	120(%r13), %r15
	movq	%r13, %rbp
	subq	$-128, %rbp
	jmp	.LBB29_92
.LBB29_88:                              # %if.then.296
	leaq	120(%r13), %r15
	movq	120(%r13), %rax
	cmpq	128(%r13), %rax
	jae	.LBB29_90
# BB#89:                                # %cond.true.305
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$-101, 1(%rax)
	jmp	.LBB29_91
.LBB29_90:                              # %cond.false.313
	movl	$155, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB29_91:                              # %cond.end.315
	movq	%r13, %rbp
	subq	$-128, %rbp
	movl	$.L.str.113, %edi
	callq	strlen
	leaq	196(%rsp), %rcx
	movl	$.L.str.113, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB29_92:                              # %if.end.318
	movq	(%r15), %rax
	cmpq	(%rbp), %rax
	jae	.LBB29_94
# BB#93:                                # %cond.true.327
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r12b, 1(%rax)
	jmp	.LBB29_95
.LBB29_94:                              # %cond.false.337
	movzbl	%r12b, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB29_95:                              # %cond.end.341
	movq	80(%rsp), %rdx          # 8-byte Reload
	xorl	%eax, %eax
	movl	60(%rsp), %ecx          # 4-byte Reload
	testb	%cl, %cl
	je	.LBB29_98
# BB#96:                                # %if.then.344
	movl	%ebx, %ecx
	movq	%rdx, 9024(%r14,%rcx,8)
	movl	9020(%r14), %ecx
	cmpl	$254, %ecx
	jg	.LBB29_98
# BB#97:                                # %if.then.351
	incl	%ecx
	movl	%ecx, 9020(%r14)
.LBB29_98:                              # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	lips4v_copy_text_char, .Lfunc_end29-lips4v_copy_text_char
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_write_image_data,@function
lips4v_write_image_data:                # @lips4v_write_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp222:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp223:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp224:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp225:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp226:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp227:
	.cfi_def_cfa_offset 96
.Ltmp228:
	.cfi_offset %rbx, -56
.Ltmp229:
	.cfi_offset %r12, -48
.Ltmp230:
	.cfi_offset %r13, -40
.Ltmp231:
	.cfi_offset %r14, -32
.Ltmp232:
	.cfi_offset %r15, -24
.Ltmp233:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r13
	movq	24(%rbx), %rdi
	leal	(%r12,%r12,2), %ebp
	movl	%ebp, %eax
	shrl	$31, %eax
	leal	(%rax,%rbp), %esi
	sarl	%esi
	movl	$.L.str.118, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movq	24(%rbx), %rdi
	movl	$.L.str.119, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB30_12
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	je	.LBB30_12
# BB#2:                                 # %for.body.i.preheader
	movabsq	$8589934560, %r8        # imm = 0x1FFFFFFE0
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %rax
	xorl	%edi, %edi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB30_9
# BB#3:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rsi
	shrq	$5, %rsi
	xorl	%ebp, %ebp
	btq	$5, %rdi
	jb	.LBB30_5
# BB#4:                                 # %vector.body.prol
	movq	16(%rsp), %rdi          # 8-byte Reload
	movdqu	(%rdi), %xmm0
	movdqu	16(%rdi), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm1, 16(%rdi)
	movl	$32, %ebp
.LBB30_5:                               # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB30_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	48(%rbp,%rsi), %rsi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB30_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rsi)
	movdqu	%xmm2, -32(%rsi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$64, %rsi
	addq	$-64, %rcx
	jne	.LBB30_7
.LBB30_8:
	movq	%rdx, %rdi
.LBB30_9:                               # %middle.block
	cmpq	%rdi, %rax
	je	.LBB30_12
# BB#10:                                # %for.body.i.preheader73
	movl	%r12d, %eax
	subl	%edi, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rdi,%rcx), %rcx
	.align	16, 0x90
.LBB30_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	notb	(%rcx)
	incq	%rcx
	decl	%eax
	jne	.LBB30_11
.LBB30_12:                              # %if.end
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %edx
	callq	lips_packbits_encode
	movl	%eax, %r14d
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	callq	lips_rle_encode
	movl	%eax, %r15d
	cmpl	%r12d, %r14d
	jle	.LBB30_18
# BB#13:                                # %if.end
	cmpl	%r12d, %r15d
	jle	.LBB30_18
# BB#14:                                # %if.then.12
	movl	$.L.str.62, %edi
	callq	strlen
	leaq	36(%rsp), %rcx
	movl	$.L.str.62, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	sput_lips_int
	movq	120(%r13), %rax
	cmpq	128(%r13), %rax
	jae	.LBB30_16
# BB#15:                                # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r13)
	movb	$30, 1(%rax)
	jmp	.LBB30_17
.LBB30_18:                              # %if.else
	cmpl	%r15d, %r14d
	jle	.LBB30_23
# BB#19:                                # %if.then.25
	movl	$.L.str.120, %edi
	callq	strlen
	leaq	36(%rsp), %rcx
	movl	$.L.str.120, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	sput_lips_int
	movq	120(%r13), %rax
	cmpq	128(%r13), %rax
	jae	.LBB30_21
# BB#20:                                # %cond.true.34
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r13)
	movb	$30, 1(%rax)
	jmp	.LBB30_22
.LBB30_16:                              # %cond.false
	movl	$30, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB30_17:                              # %cond.end
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	36(%rsp), %rcx
	movq	%r13, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	jmp	.LBB30_27
.LBB30_23:                              # %if.else.46
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	36(%rsp), %rcx
	movl	$.L.str.121, %esi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	sput_lips_int
	movq	120(%r13), %rax
	cmpq	128(%r13), %rax
	jae	.LBB30_25
# BB#24:                                # %cond.true.55
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r13)
	movb	$30, 1(%rax)
	jmp	.LBB30_26
.LBB30_21:                              # %cond.false.42
	movl	$30, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB30_22:                              # %cond.end.44
	leaq	36(%rsp), %rcx
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%r15d, %edx
	callq	sputs
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB30_28
.LBB30_25:                              # %cond.false.63
	movl	$30, %esi
	movq	%r13, %rdi
	callq	spputc
.LBB30_26:                              # %cond.end.65
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	36(%rsp), %rcx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
.LBB30_27:                              # %if.end.68
	callq	sputs
.LBB30_28:                              # %if.end.68
	movq	24(%rbx), %rdi
	movl	$.L.str.118, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movl	$.L.str.119, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	lips4v_write_image_data, .Lfunc_end30-lips4v_write_image_data
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_image_plane_data,@function
lips4v_image_plane_data:                # @lips4v_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp235:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp236:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp237:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp238:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp239:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp240:
	.cfi_def_cfa_offset 128
.Ltmp241:
	.cfi_offset %rbx, -56
.Ltmp242:
	.cfi_offset %r12, -48
.Ltmp243:
	.cfi_offset %r13, -40
.Ltmp244:
	.cfi_offset %r14, -32
.Ltmp245:
	.cfi_offset %r15, -24
.Ltmp246:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	16(%rbp), %r15
	movq	%r15, %rdi
	callq	gdev_vector_stream
	cmpl	$0, 8964(%r15)
	je	.LBB31_2
# BB#1:                                 # %if.then
	addl	%r14d, 600(%rbp)
	movl	$1, %eax
	jmp	.LBB31_16
.LBB31_2:                               # %if.end
	movl	%r14d, %edx
	movq	568(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB31_3
# BB#17:                                # %if.then.4
	movq	%rbx, %rsi
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_image_plane_data     # TAILCALL
.LBB31_3:                               # %if.end.7
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	576(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%edx, %r14d
	callq	gx_image_plane_data
	movl	592(%rbp), %eax
	imull	584(%rbp), %eax
	movl	8968(%r15), %ecx
	cltd
	idivl	%ecx
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %r12d
	sarl	$3, %r12d
	imull	%ecx, %r12d
	movl	%r12d, %esi
	imull	%r14d, %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	24(%r15), %rdi
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	$.L.str.128, %edx
	callq	*64(%rdi)
	movl	%r14d, %edx
	movq	%rax, %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	44(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB31_10
# BB#4:                                 # %for.cond.16.preheader.lr.ph
	movslq	%r12d, %r15
	xorl	%esi, %esi
	.align	16, 0x90
.LBB31_5:                               # %for.cond.16.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_7 Depth 2
	testl	%edx, %edx
	jle	.LBB31_9
# BB#6:                                 # %for.body.18.lr.ph
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	%rsi, %rax
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	8(%rbx,%rax), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	12(%rbx,%rax), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB31_7:                               # %for.body.18
                                        #   Parent Loop BB31_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	592(%rbp), %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	imull	(%rcx), %eax
	sarl	$3, %eax
	cltq
	movq	56(%rsp), %rcx          # 8-byte Reload
	addq	(%rcx), %rax
	movl	%edx, %r12d
	movl	(%r14), %esi
	imull	%ebx, %esi
	addq	%rax, %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movl	%r12d, %edx
	addq	%r15, %r13
	incl	%ebx
	cmpl	%ebx, %edx
	jne	.LBB31_7
# BB#8:                                 # %for.cond.16.for.inc.32_crit_edge
                                        #   in Loop: Header=BB31_5 Depth=1
	movl	44(%rbp), %eax
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
.LBB31_9:                               # %for.inc.32
                                        #   in Loop: Header=BB31_5 Depth=1
	incq	%rsi
	movslq	%eax, %rcx
	cmpq	%rcx, %rsi
	jl	.LBB31_5
.LBB31_10:                              # %for.end.34
	movl	%edx, %r14d
	movl	$.L.str.129, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.129, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
	cmpl	$2, 592(%rbp)
	movq	16(%rsp), %rbx          # 8-byte Reload
	jl	.LBB31_12
# BB#11:                                # %land.lhs.true
	cmpl	$1, 8968(%rbx)
	je	.LBB31_13
.LBB31_12:                              # %lor.lhs.false
	cmpl	$0, 8972(%rbx)
	je	.LBB31_13
# BB#14:                                # %if.else
	xorl	%ecx, %ecx
	jmp	.LBB31_15
.LBB31_13:                              # %if.then.44
	movl	$1, %ecx
.LBB31_15:                              # %if.end.45
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	lips4v_write_image_data
	movq	24(%rbx), %rdi
	movl	$.L.str.128, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	%r14d, %ebx
	addl	600(%rbp), %ebx
	movl	%ebx, 600(%rbp)
	cmpl	588(%rbp), %ebx
	setge	%al
	movzbl	%al, %eax
.LBB31_16:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	lips4v_image_plane_data, .Lfunc_end31-lips4v_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	lips4v_image_end_image,@function
lips4v_image_end_image:                 # @lips4v_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp248:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp249:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp250:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp251:
	.cfi_def_cfa_offset 48
.Ltmp252:
	.cfi_offset %rbx, -40
.Ltmp253:
	.cfi_offset %r14, -32
.Ltmp254:
	.cfi_offset %r15, -24
.Ltmp255:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	16(%r15), %rbp
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %rbx
	cmpl	$0, 8964(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movl	$0, 8964(%rbp)
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movl	$.L.str.130, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.130, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB32_3:                               # %if.end
	movq	120(%rbx), %rax
	cmpq	128(%rbx), %rax
	jae	.LBB32_5
# BB#4:                                 # %cond.true
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rbx)
	movb	$30, 1(%rax)
	jmp	.LBB32_6
.LBB32_5:                               # %cond.false
	movl	$30, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB32_6:                               # %cond.end
	movl	$-1, 8972(%rbp)
	movq	8840(%rbp), %rcx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	gdev_vector_end_image
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	lips4v_image_end_image, .Lfunc_end32-lips4v_image_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_lips4v"
	.size	.L.str, 17

	.type	st_device_lips4v,@object # @st_device_lips4v
	.section	.rodata,"a",@progbits
	.globl	st_device_lips4v
	.align	8
st_device_lips4v:
	.long	13136                   # 0x3350
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_lips4v_enum_ptrs
	.quad	device_lips4v_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_lips4v, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"lips4v"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_lips4v_device,@object # @gs_lips4v_device
	.data
	.globl	gs_lips4v_device
	.align	8
gs_lips4v_device:
	.long	13136                   # 0x3350
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	st_device_lips4v
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	1000                    # 0x3e8
	.long	1000                    # 0x3e8
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4958                    # 0x135e
	.long	7016                    # 0x1b68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142210561              # float 5.950001e+02
	.long	1146257403              # float 8.419997e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	lips4v_open
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	lips4v_output_page
	.quad	lips4v_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	lips4v_copy_mono
	.quad	lips4v_copy_color
	.quad	0
	.quad	0
	.quad	lips4v_get_params
	.quad	lips4v_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	lips4v_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	lips4v_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.asciz	"Ghostscript"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.asciz	"Default\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.zero	2056
	.zero	2056
	.size	gs_lips4v_device, 13136

	.type	lips4v_vector_procs,@object # @lips4v_vector_procs
	.section	.rodata,"a",@progbits
	.align	8
lips4v_vector_procs:
	.quad	lips4v_beginpage
	.quad	lips4v_setlinewidth
	.quad	lips4v_setlinecap
	.quad	lips4v_setlinejoin
	.quad	lips4v_setmiterlimit
	.quad	lips4v_setdash
	.quad	lips4v_setflat
	.quad	lips4v_setlogop
	.quad	lips4v_can_handle_hl_color
	.quad	lips4v_setfillcolor
	.quad	lips4v_setstrokecolor
	.quad	gdev_vector_dopath
	.quad	gdev_vector_dorect
	.quad	lips4v_beginpath
	.quad	lips4v_moveto
	.quad	lips4v_lineto
	.quad	lips4v_curveto
	.quad	lips4v_closepath
	.quad	lips4v_endpath
	.size	lips4v_vector_procs, 152

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"@PJL SET RESOLUTION = SUPERFINE\n"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@PJL SET RESOLUTION = FINE\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@PJL SET RESOLUTION = QUICK\n"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@PJL SET TONER-DENSITY=%d\n"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"@PJL SET TONER-SAVING="
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ON\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"OFF\n"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%c2y%s%c"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"PlainPaper"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"20't"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OHP"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"TransparencyFilm"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"40't"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"CardBoard"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"30't"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GlossyFilm"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"41't"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Default"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%c10q"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%c%dq"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c80;%d;%dp"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%c%dp"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%c11;12;12~"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%c%d1;;%do"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%c2;#x"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%c0;#w"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%c2;#w"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%c0;#x"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"?1;4;5;6;14l"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"?2;3;h"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"11h"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%c?7;%d I"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%c[0&}#%c"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"!0"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"1"
	.size	.L.str.38, 2

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"!13%c$%c"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"!11%c$%c"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"(00"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"}\""
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"I00"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"}F2"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"}H1"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"*0"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"}M"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"}I1"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\033%-12345X@PJL CJLMODE\n@PJL JOB\n\033%-12345X@PJL CJLMODE\n"
	.size	.L.str.49, 54

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"@PJL SET LPARM : LIPS SW2 = ON\n"
	.size	.L.str.50, 32

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"@PJL ENTER LANGUAGE = LIPS\n"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\033%@\033P41;"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	";1Jlips4v:2.3.6\033\\\033[0\"p\033<"
	.size	.L.str.53, 25

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	";1Jlips4vc:2.3.6\033\\\033[1\"p\033<"
	.size	.L.str.54, 26

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"&}"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"F1"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"}E%d%c"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"}F%d%c"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"E10"
	.size	.L.str.59, 4

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"}d"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"E1"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"0"
	.size	.L.str.62, 2

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Pf"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"I0"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"I1"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"J"
	.size	.L.str.66, 2

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"}T"
	.size	.L.str.67, 3

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"G"
	.size	.L.str.68, 2

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"P(10"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"P(00"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"p10"
	.size	.L.str.71, 4

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"p402"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"p404"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"p0"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"P)"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"}I0"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"P&00"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"PF00"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"PS00"
	.size	.L.str.79, 5

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"PC10"
	.size	.L.str.80, 5

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%"
	.size	.L.str.81, 2

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"}p"
	.size	.L.str.82, 3

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"%c%dv"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"%c0J%c"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%c%%-12345X@PJL SET LPARM : LIPS SW2 = OFF\n"
	.size	.L.str.85, 44

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"%c%%-12345X%c%%-12345X@PJL EOJ\n%c%%-12345X"
	.size	.L.str.86, 43

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"ManualFeed"
	.size	.L.str.87, 11

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Casset"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Tumble"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Nup"
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"PJL"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"TonerDensity"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"TonerSaving"
	.size	.L.str.93, 12

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Duplex"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"FontDL"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"OutputFaceUp"
	.size	.L.str.96, 13

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"MediaType"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"UserName"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"BitsPerPixel"
	.size	.L.str.99, 13

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"}H0"
	.size	.L.str.100, 4

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"}P"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"100110"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"}Q11"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"lips4v_copy_mono(buf)"
	.size	.L.str.104, 22

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"%c%dx%c"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"%c%d;1;0;0;3840;8;400;100;0;0;200;%d;%d;0;0;;;;;%d.p"
	.size	.L.str.106, 53

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"%c%d;%d;8;%d.q"
	.size	.L.str.107, 15

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"%c%d%%v"
	.size	.L.str.108, 8

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"?10;2;"
	.size	.L.str.109, 7

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"?10;;"
	.size	.L.str.110, 6

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"%d;%d;%d"
	.size	.L.str.111, 9

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%p"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"1.v"
	.size	.L.str.113, 4

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"%c%da"
	.size	.L.str.114, 6

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"%c%dj"
	.size	.L.str.115, 6

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"%c%dk"
	.size	.L.str.116, 6

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"%c%de"
	.size	.L.str.117, 6

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"lips4v_write_image_data(cbuf)"
	.size	.L.str.118, 30

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"lips4v_write_image_data(cbuf_rle)"
	.size	.L.str.119, 34

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	":"
	.size	.L.str.120, 2

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	";"
	.size	.L.str.121, 2

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"0110"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"lips4v_copy_color(buf)"
	.size	.L.str.123, 23

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"lips4v_fill_mask(buf)"
	.size	.L.str.124, 22

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"lips4v_begin_image"
	.size	.L.str.125, 19

	.type	lips4v_image_enum_procs,@object # @lips4v_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
lips4v_image_enum_procs:
	.quad	lips4v_image_plane_data
	.quad	lips4v_image_end_image
	.quad	0
	.quad	0
	.size	lips4v_image_enum_procs, 32

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"2"
	.size	.L.str.126, 2

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"}U"
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"lips4v_image_data(buf)"
	.size	.L.str.128, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"}Q10"
	.size	.L.str.129, 5

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"}Q1100"
	.size	.L.str.130, 7

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.Lswitch.table:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.size	.Lswitch.table, 16

	.type	.Lswitch.table.1,@object # @switch.table.1
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table.1:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.Lswitch.table.1, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
