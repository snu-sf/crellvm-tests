	.text
	.file	"gdevpdf.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4608983858650965606     # double 1.3999999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
.LCPI0_2:
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_3:
	.zero	16
	.text
	.align	16, 0x90
	.type	pdf_open,@function
pdf_open:                               # @pdf_open
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$1000, %rsp             # imm = 0x3E8
.Ltmp6:
	.cfi_def_cfa_offset 1056
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	callq	*32(%rdi)
	movq	%rax, %r15
	movq	%r15, 1728(%rbx)
	movl	$0, 30788(%rbx)
	leaq	9992(%rbx), %r14
	movl	$gp_fmode_binary_suffix, %edi
	callq	strlen
	cmpq	$2, %rax
	ja	.LBB0_2
# BB#1:                                 # %if.end.i
	leaq	624(%rsp), %rbp
	movl	$.L.str.31, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%rbp, %rdi
	callq	strcat
	movq	24(%rbx), %rdi
	movl	$gp_scratch_file_name_prefix, %esi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	gp_open_scratch_file_64
	movq	%rax, 14088(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# BB#4:                                 # %lor.lhs.false
	leaq	14120(%rbx), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	pdf_open_temp_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#5:                                 # %lor.lhs.false.5
	leaq	18248(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_open_temp_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#6:                                 # %lor.lhs.false.8
	leaq	22376(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_open_temp_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#7:                                 # %if.end
	movl	$512, %esi              # imm = 0x200
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#8:                                 # %if.end.14
	cmpl	$0, 9684(%rbx)
	je	.LBB0_11
# BB#9:                                 # %if.then.15
	movq	1728(%rbx), %rdi
	movq	5848(%rbx), %rsi
	callq	s_MD5C_make_stream
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_102
# BB#10:                                # %if.end.20
	movq	%rax, 5848(%rbx)
.LBB0_11:                               # %if.end.22
	movq	%rbx, %rdi
	callq	gdev_vector_init
	leaq	28736(%rbx), %rdi
	callq	gp_get_realtime
	movq	$pdf_vector_procs, 1736(%rbx)
	movabsq	$68719476752, %rax      # imm = 0x1000000010
	movq	%rax, 8792(%rbx)
	movl	$1, 8816(%rbx)
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, 28752(%rbx)
	movq	%rax, 28760(%rbx)
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rax, 28768(%rbx)
	movq	1728(%rbx), %rdi
	movl	$16632, %esi            # imm = 0x40F8
	movl	$.L.str.22, %edx
	callq	*64(%rdi)
	movq	%rax, 28848(%rbx)
	testq	%rax, %rax
	je	.LBB0_12
# BB#13:                                # %if.end.32
	xorl	%esi, %esi
	movl	$16632, %edx            # imm = 0x40F8
	movq	%rax, %rdi
	callq	memset
	movl	$11, 28856(%rbx)
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rax, 28776(%rbx)
	movq	%rbx, %rdi
	callq	pdf_initialize_ids
	movq	1728(%rbx), %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	5848(%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	28720(%rbx), %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	$16, %edx
	callq	s_MD5E_make_stream
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB0_3
# BB#14:                                # %if.end.i.115
	movl	9648(%rbx), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	$0, 9648(%rbx)
	leaq	624(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gp_get_usertime
	leaq	80(%rsp), %rcx
	movl	$16, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	sputs
	leaq	1744(%rbx), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	leaq	80(%rsp), %rcx
	callq	sputs
	movq	%r13, 5848(%rbx)
	movq	26520(%rbx), %rdi
	movq	%rbx, %rsi
	callq	cos_dict_elements_write
	movl	%eax, %ebp
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 5848(%rbx)
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9648(%rbx)
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#15:                                # %if.end.39
	movq	%r13, %rdi
	callq	sclose
	movl	$.L.str.34, %edx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	*24(%rdi)
	cmpl	$0, 9624(%rbx)
	je	.LBB0_103
# BB#16:                                # %if.then.41
	cmpl	$0, 9560(%rbx)
	movl	9648(%rbx), %eax
	je	.LBB0_20
# BB#17:                                # %land.lhs.true.i
	testl	%eax, %eax
	je	.LBB0_21
# BB#18:                                # %if.then.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.35, %esi
	jmp	.LBB0_19
.LBB0_2:                                # %pdf_open_temp_file.exit.thread
	leaq	14120(%rbx), %r12
	movl	$-9, %ebp
.LBB0_3:                                # %fail
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
	leaq	22376(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	pdf_close_temp_file
	leaq	18248(%rbx), %rsi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_close_temp_file
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	pdf_close_temp_file
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	pdf_close_temp_file
	movl	%eax, %ebp
.LBB0_102:                              # %cleanup.135
	movl	%ebp, %eax
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_12:
	movl	$-25, %ebp
	jmp	.LBB0_3
.LBB0_103:                              # %if.else
	cmpl	$0, 9640(%rbx)
	je	.LBB0_106
# BB#104:                               # %if.then.48
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.24, %esi
	jmp	.LBB0_105
.LBB0_20:                               # %if.end.i.121
	testl	%eax, %eax
	jne	.LBB0_22
.LBB0_21:                               # %if.then.6.i
	movl	$40, 9648(%rbx)
	movl	$40, %eax
.LBB0_22:                               # %if.end.8.i
	movl	9768(%rbx), %edx
	testl	%edx, %edx
	je	.LBB0_23
# BB#31:                                # %if.end.23.i
	movl	$1, %ecx
	cmpl	$2, %edx
	jb	.LBB0_25
	jmp	.LBB0_32
.LBB0_23:                               # %land.lhs.true.10.i
	cmpl	$40, %eax
	jne	.LBB0_29
# BB#24:                                # %if.then.13.i
	movl	$1, 9768(%rbx)
	movl	$1, %ecx
	jmp	.LBB0_25
.LBB0_106:                              # %if.else.54
	cmpl	$0, 9648(%rbx)
	je	.LBB0_95
# BB#107:                               # %if.then.56
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.25, %esi
.LBB0_105:                              # %cleanup.135
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %ebp
	jmp	.LBB0_102
.LBB0_29:                               # %land.lhs.true.18.i
	xorl	%ecx, %ecx
	cmpl	$41, %eax
	jb	.LBB0_25
# BB#30:                                # %if.end.23.thread.i
	movl	$2, 9768(%rbx)
	movl	$2, %edx
.LBB0_32:                               # %land.lhs.true.26.i
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	movl	%edx, %ecx
	jbe	.LBB0_25
# BB#33:                                # %if.then.28.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.36, %esi
	jmp	.LBB0_19
.LBB0_25:                               # %if.end.34.i
	movl	9656(%rbx), %edx
	testl	%edx, %edx
	je	.LBB0_26
# BB#34:                                # %if.end.38.i
	movl	%edx, %esi
	andl	$-2, %esi
	cmpl	$2, %esi
	jne	.LBB0_35
# BB#36:                                # %if.end.49.i
	cmpl	$3, %edx
	jb	.LBB0_27
# BB#37:                                # %land.lhs.true.52.i
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	jbe	.LBB0_27
# BB#38:                                # %if.then.55.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.38, %esi
	jmp	.LBB0_19
.LBB0_26:                               # %if.end.49.thread.i
	movl	$2, 9656(%rbx)
	movl	$2, %edx
.LBB0_27:                               # %if.end.61.i
	cmpl	$129, %eax
	jb	.LBB0_39
# BB#28:                                # %if.then.64.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.39, %esi
	jmp	.LBB0_19
.LBB0_35:                               # %if.then.43.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.37, %esi
	jmp	.LBB0_19
.LBB0_39:                               # %if.end.70.i
	testb	$7, %al
	je	.LBB0_41
# BB#40:                                # %if.then.73.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.40, %esi
.LBB0_19:                               # %pdf_compute_encryption_data.exit
	xorl	%eax, %eax
	callq	errprintf
	movl	$-15, %ebp
.LBB0_94:                               # %pdf_compute_encryption_data.exit
	testl	%ebp, %ebp
	js	.LBB0_3
.LBB0_95:                               # %if.end.64
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, 28760(%rbx)
	movq	$0, 26536(%rbx)
	movl	$0, 26544(%rbx)
	movq	%r15, %rdi
	callq	pdf_text_data_alloc
	movq	%rax, 26592(%rbx)
	movl	28856(%rbx), %esi
	movl	%esi, 30388(%rbx)
	movl	$st_pdf_substream_save_element, %edx
	movl	$.L.str.27, %ecx
	movq	%r15, %rdi
	callq	*104(%r15)
	movq	%rax, 30400(%rbx)
	movl	$50, %esi
	movl	$st_pdf_page_element, %edx
	movl	$.L.str.28, %ecx
	movq	%r15, %rdi
	callq	*104(%r15)
	movq	%rax, 26648(%rbx)
	testq	%rax, %rax
	movl	$-25, %ebp
	je	.LBB0_3
# BB#96:                                # %if.end.64
	movq	26592(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#97:                                # %lor.lhs.false.80
	movq	30400(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
# BB#98:                                # %if.end.84
	movslq	30388(%rbx), %rax
	imulq	$120, %rax, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	memset
	movq	26648(%rbx), %rdi
	xorl	%esi, %esi
	movl	$10400, %edx            # imm = 0x28A0
	callq	memset
	movl	$50, 26656(%rbx)
	xorpd	%xmm0, %xmm0
.LBB0_99:                               # %for.cond.92.preheader
                                        # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, 26672(%rbx,%rbp)
	movupd	%xmm0, 26688(%rbx,%rbp)
	movupd	%xmm0, 26704(%rbx,%rbp)
	movupd	%xmm0, 26720(%rbx,%rbp)
	movupd	%xmm0, 26736(%rbx,%rbp)
	movupd	%xmm0, 26752(%rbx,%rbp)
	movupd	%xmm0, 26768(%rbx,%rbp)
	movupd	%xmm0, 26784(%rbx,%rbp)
	subq	$-128, %rbp
	cmpq	$1920, %rbp             # imm = 0x780
	jne	.LBB0_99
# BB#100:                               # %for.end.100
	movl	$3840, %esi             # imm = 0xF00
	movl	$.L.str.29, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movq	%rax, 28672(%rbx)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$3840, %edx             # imm = 0xF00
	movq	%rax, %rdi
	callq	memset
	movq	28672(%rbx), %rax
	movq	$0, (%rax)
	movl	$2147483647, 112(%rax)  # imm = 0x7FFFFFFF
	movq	$0, 48(%rax)
	movq	$0, 104(%rax)
	movaps	.LCPI0_2(%rip), %xmm0   # xmm0 = [0,32,0,0]
	movups	%xmm0, 28680(%rbx)
	movq	$0, 28696(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 28704(%rbx)
	movq	$0, 28816(%rbx)
	movl	$0, 28824(%rbx)
	movups	%xmm0, 28832(%rbx)
	movq	gs_pdfwrite_device+9888(%rip), %rax
	movq	%rax, 9888(%rbx)
	movups	gs_pdfwrite_device+9872(%rip), %xmm0
	movups	%xmm0, 9872(%rbx)
	movups	gs_pdfwrite_device+9856(%rip), %xmm0
	movups	%xmm0, 9856(%rbx)
	movq	$0, 26552(%rbx)
	movq	%rbx, %rdi
	callq	pdf_reset_graphics
	movl	$0, 26584(%rbx)
	leaq	28592(%rbx), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	26592(%rbx), %rdi
	callq	pdf_reset_text_page
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_remember_clip_path
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
	cvtsi2sdl	832(%rbx), %xmm0
	movsd	%xmm0, 9784(%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%rbx), %xmm0
	movsd	%xmm0, 9792(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 9800(%rbx)
	cmpl	$0, 956(%rbx)
	je	.LBB0_102
# BB#101:                               # %if.then.126
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB0_102
.LBB0_41:                               # %if.end.79.i
	cmpl	$2, %edx
	jne	.LBB0_47
# BB#42:                                # %land.lhs.true.82.i
	movl	9652(%rbx), %edx
	andl	$-61, %edx
	cmpl	$-64, %edx
	jne	.LBB0_43
# BB#44:                                # %if.end.90.i
	cmpl	$41, %eax
	jb	.LBB0_47
# BB#45:                                # %if.end.90.i
	cmpl	$2, %ecx
	jne	.LBB0_47
# BB#46:                                # %if.then.99.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.42, %esi
	jmp	.LBB0_19
.LBB0_47:                               # %if.end.105.i
	leaq	520(%rsp), %rdi
	callq	gs_md5_init
	movq	9616(%rbx), %rsi
	movl	9624(%rbx), %eax
	cmpl	$32, %eax
	movl	$32, %ebp
	cmovael	%ebp, %eax
	movl	%eax, %edx
	leaq	464(%rsp), %rdi
	callq	memcpy
	movl	9624(%rbx), %eax
	cmpq	$31, %rax
	ja	.LBB0_49
# BB#48:                                # %if.then.i.i
	leaq	464(%rsp,%rax), %rdi
	subl	%eax, %ebp
	movl	$pad, %esi
	movq	%rbp, %rdx
	callq	memcpy
.LBB0_49:                               # %copy_padded.exit.i
	leaq	520(%rsp), %r13
	leaq	464(%rsp), %rsi
	movl	$32, %ebp
	movl	$32, %edx
	movq	%r13, %rdi
	callq	gs_md5_append
	leaq	496(%rsp), %rsi
	movq	%r13, %rdi
	callq	gs_md5_finish
	cmpl	$3, 9656(%rbx)
	jne	.LBB0_53
# BB#50:                                # %if.then.110.i
	movl	9648(%rbx), %eax
	shrl	$3, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	$50, 64(%rsp)           # 4-byte Folded Spill
	leaq	624(%rsp), %r13
	leaq	496(%rsp), %rbp
.LBB0_51:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	gs_md5_init
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	72(%rsp), %edx          # 4-byte Reload
	callq	gs_md5_append
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gs_md5_finish
	decl	64(%rsp)                # 4-byte Folded Spill
	jne	.LBB0_51
# BB#52:                                # %Adobe_magic_loop_50.exit.i
	movl	$32, %ebp
.LBB0_53:                               # %if.end.113.i
	movq	9632(%rbx), %rsi
	movl	9640(%rbx), %eax
	cmpl	$32, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, %edx
	leaq	464(%rsp), %rdi
	callq	memcpy
	movl	9640(%rbx), %eax
	cmpq	$31, %rax
	ja	.LBB0_55
# BB#54:                                # %if.then.i.81.i
	leaq	464(%rsp,%rax), %rdi
	movl	$32, %edx
	subl	%eax, %edx
	movl	$pad, %esi
	callq	memcpy
.LBB0_55:                               # %copy_padded.exit82.i
	movl	9648(%rbx), %edx
	shrl	$3, %edx
	leaq	80(%rsp), %rbp
	leaq	496(%rsp), %rsi
	movq	%rbp, %rdi
	callq	s_arcfour_set_key
	leaq	464(%rsp), %rsi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	s_arcfour_process_buffer
	cmpl	$3, 9656(%rbx)
	jne	.LBB0_69
# BB#56:                                # %if.then.123.i
	movl	9648(%rbx), %eax
	shrl	$3, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	-1(%rax), %eax
	incq	%rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	-8(%rcx), %rax
	shrq	$3, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	leaq	624(%rsp), %rbp
.LBB0_57:                               # %for.cond.1.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_67 Depth 2
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	%rax, %r8
	pxor	%xmm3, %xmm3
	movdqa	.LCPI0_1(%rip), %xmm4   # xmm4 = [255,255,255,255]
	je	.LBB0_68
# BB#58:                                # %overflow.checked
                                        #   in Loop: Header=BB0_57 Depth=1
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_65
# BB#59:                                # %vector.ph
                                        #   in Loop: Header=BB0_57 Depth=1
	movd	%r13d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB0_61
# BB#60:                                # %vector.body.prol
                                        #   in Loop: Header=BB0_57 Depth=1
	movd	496(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	500(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 608(%rsp)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, 612(%rsp)
	movl	$8, %esi
.LBB0_61:                               # %vector.ph.split
                                        #   in Loop: Header=BB0_57 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	je	.LBB0_65
# BB#62:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rsi, %rax
	leaq	508(%rsp), %rcx
	leaq	(%rcx,%rsi), %rcx
	leaq	620(%rsp), %rdx
	leaq	(%rsi,%rdx), %rdx
.LBB0_63:                               # %vector.body
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%rcx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	-8(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -12(%rdx)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rdx)
	movd	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rdx)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-16, %rax
	jne	.LBB0_63
# BB#64:                                #   in Loop: Header=BB0_57 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
.LBB0_65:                               # %middle.block
                                        #   in Loop: Header=BB0_57 Depth=1
	cmpq	%rdx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB0_68
# BB#66:                                # %for.body.3.i.i.preheader
                                        #   in Loop: Header=BB0_57 Depth=1
	movl	%r8d, %eax
	subl	%edx, %eax
	leaq	608(%rsp,%rdx), %rcx
	leaq	496(%rsp,%rdx), %rdx
.LBB0_67:                               # %for.body.3.i.i
                                        #   Parent Loop BB0_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %esi
	xorl	%r13d, %esi
	movb	%sil, (%rcx)
	incq	%rcx
	incq	%rdx
	decl	%eax
	jne	.LBB0_67
.LBB0_68:                               # %for.end.i.i
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	%rbp, %rdi
	leaq	608(%rsp), %rsi
	movl	%r8d, %edx
	callq	s_arcfour_set_key
	movl	$32, %edx
	movq	%rbp, %rdi
	leaq	464(%rsp), %rsi
	callq	s_arcfour_process_buffer
	incl	%r13d
	cmpl	$20, %r13d
	jne	.LBB0_57
.LBB0_69:                               # %if.end.128.i
	leaq	9688(%rbx), %r13
	leaq	464(%rsp), %rbp
	movl	$32, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	leaq	520(%rsp), %rdi
	callq	gs_md5_init
	movq	9632(%rbx), %rsi
	movl	9640(%rbx), %eax
	cmpl	$32, %eax
	movl	$32, %ecx
	cmovbl	%eax, %ecx
	movl	%ecx, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movl	9640(%rbx), %eax
	cmpq	$31, %rax
	ja	.LBB0_71
# BB#70:                                # %if.then.i.94.i
	leaq	464(%rsp,%rax), %rdi
	movl	$32, %edx
	subl	%eax, %edx
	movl	$pad, %esi
	callq	memcpy
.LBB0_71:                               # %copy_padded.exit95.i
	leaq	520(%rsp), %rbp
	leaq	464(%rsp), %rsi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	gs_md5_append
	movl	$32, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_md5_append
	movb	9652(%rbx), %al
	movb	%al, 463(%rsp)
	leaq	463(%rsp), %r13
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_md5_append
	movb	9653(%rbx), %al
	movb	%al, 463(%rsp)
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_md5_append
	movb	9654(%rbx), %al
	movb	%al, 463(%rsp)
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_md5_append
	movb	9655(%rbx), %al
	movb	%al, 463(%rsp)
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_md5_append
	movl	$16, %edx
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	gs_md5_append
	cmpl	$3, 9656(%rbx)
	jne	.LBB0_74
# BB#72:                                # %if.then.151.i
	cmpl	$0, 9680(%rbx)
	jne	.LBB0_74
# BB#73:                                # %if.then.153.i
	leaq	520(%rsp), %rdi
	movl	$pdf_compute_encryption_data.v, %esi
	movl	$4, %edx
	callq	gs_md5_append
.LBB0_74:                               # %if.end.155.i
	leaq	520(%rsp), %rdi
	leaq	496(%rsp), %rsi
	callq	gs_md5_finish
	cmpl	$3, 9656(%rbx)
	jne	.LBB0_77
# BB#75:                                # %if.then.160.i
	movl	9648(%rbx), %eax
	shrl	$3, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	$50, 64(%rsp)           # 4-byte Folded Spill
	leaq	624(%rsp), %r13
	leaq	496(%rsp), %rbp
.LBB0_76:                               # %for.body.i.100.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	gs_md5_init
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	72(%rsp), %edx          # 4-byte Reload
	callq	gs_md5_append
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gs_md5_finish
	decl	64(%rsp)                # 4-byte Folded Spill
	jne	.LBB0_76
.LBB0_77:                               # %if.end.164.i
	leaq	9752(%rbx), %rbp
	movl	9648(%rbx), %edx
	shrl	$3, %edx
	leaq	496(%rsp), %rsi
	movq	%rbp, %rdi
	callq	memcpy
	cmpl	$3, 9656(%rbx)
	jne	.LBB0_92
# BB#78:                                # %if.then.174.i
	leaq	520(%rsp), %r13
	movq	%r13, %rdi
	callq	gs_md5_init
	movl	$pad, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	gs_md5_append
	movl	$16, %edx
	movq	%r13, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	gs_md5_append
	leaq	496(%rsp), %rsi
	movq	%r13, %rdi
	callq	gs_md5_finish
	movl	9648(%rbx), %edx
	shrl	$3, %edx
	leaq	80(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	callq	s_arcfour_set_key
	movl	$16, %edx
	movq	%r13, %rdi
	leaq	496(%rsp), %rsi
	callq	s_arcfour_process_buffer
	movl	9648(%rbx), %eax
	shrl	$3, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	-1(%rax), %ecx
	incq	%rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rcx, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	-8(%rax), %rax
	shrq	$3, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	9764(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	leaq	624(%rsp), %rbp
.LBB0_79:                               # %for.cond.1.preheader.i.107.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_89 Depth 2
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	%rax, %r8
	pxor	%xmm3, %xmm3
	movdqa	.LCPI0_1(%rip), %xmm4   # xmm4 = [255,255,255,255]
	je	.LBB0_90
# BB#80:                                # %overflow.checked155
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_87
# BB#81:                                # %vector.ph161
                                        #   in Loop: Header=BB0_79 Depth=1
	movd	%r13d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB0_83
# BB#82:                                # %vector.body151.prol
                                        #   in Loop: Header=BB0_79 Depth=1
	movd	9752(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movd	9756(%rbx), %xmm2       # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 608(%rsp)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, 612(%rsp)
	movl	$8, %esi
.LBB0_83:                               # %vector.ph161.split
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	je	.LBB0_87
# BB#84:                                # %vector.ph161.split.split
                                        #   in Loop: Header=BB0_79 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	%rsi, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rsi), %rcx
	leaq	620(%rsp), %rdx
	leaq	(%rsi,%rdx), %rdx
.LBB0_85:                               # %vector.body151
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%rcx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	-8(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -12(%rdx)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rdx)
	movd	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3],xmm1[4],xmm3[4],xmm1[5],xmm3[5],xmm1[6],xmm3[6],xmm1[7],xmm3[7]
	punpcklwd	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1],xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	punpcklbw	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	pand	%xmm4, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rdx)
	pand	%xmm4, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-16, %rax
	jne	.LBB0_85
# BB#86:                                #   in Loop: Header=BB0_79 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
.LBB0_87:                               # %middle.block152
                                        #   in Loop: Header=BB0_79 Depth=1
	cmpq	%rdx, 56(%rsp)          # 8-byte Folded Reload
	je	.LBB0_90
# BB#88:                                # %for.body.3.i.117.i.preheader
                                        #   in Loop: Header=BB0_79 Depth=1
	movl	%r8d, %eax
	subl	%edx, %eax
	leaq	608(%rsp,%rdx), %rcx
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdx,%rsi), %rdx
.LBB0_89:                               # %for.body.3.i.117.i
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %esi
	xorl	%r13d, %esi
	movb	%sil, (%rcx)
	incq	%rcx
	incq	%rdx
	decl	%eax
	jne	.LBB0_89
.LBB0_90:                               # %for.end.i.122.i
                                        #   in Loop: Header=BB0_79 Depth=1
	movq	%rbp, %rdi
	leaq	608(%rsp), %rsi
	movl	%r8d, %edx
	callq	s_arcfour_set_key
	movl	$16, %edx
	movq	%rbp, %rdi
	leaq	496(%rsp), %rsi
	callq	s_arcfour_process_buffer
	incl	%r13d
	cmpl	$20, %r13d
	jne	.LBB0_79
# BB#91:                                # %Adobe_magic_loop_19.exit123.i
	leaq	9720(%rbx), %rdi
	leaq	496(%rsp), %rsi
	movl	$16, %edx
	callq	memcpy
	leaq	9736(%rbx), %rdi
	movl	$pad, %esi
	movl	$16, %edx
	callq	memcpy
	jmp	.LBB0_93
.LBB0_92:                               # %if.else.i
	leaq	9720(%rbx), %r13
	movl	$pad, %esi
	movl	$32, %edx
	movq	%r13, %rdi
	callq	memcpy
	movl	9648(%rbx), %edx
	shrl	$3, %edx
	movq	%rbp, %rsi
	leaq	80(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_arcfour_set_key
	movl	$32, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	s_arcfour_process_buffer
.LBB0_93:                               # %pdf_compute_encryption_data.exit
	xorl	%ebp, %ebp
	jmp	.LBB0_94
.LBB0_43:                               # %if.then.84.i
	movq	24(%rbx), %r13
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.41, %esi
	jmp	.LBB0_19
.Lfunc_end0:
	.size	pdf_open, .Lfunc_end0-pdf_open
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_output_page,@function
pdf_output_page:                        # @pdf_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	pdf_close_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_6
# BB#1:                                 # %if.end
	cmpl	$0, 956(%rbx)
	je	.LBB1_3
# BB#2:                                 # %if.then.1
	movq	24(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbx), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB1_3:                                # %if.end.6
	movq	%rbx, %rdi
	callq	pdf_ferror
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_finish_output_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_6
# BB#4:                                 # %if.end.14
	leaq	1744(%rbx), %rdi
	movq	24(%rbx), %rsi
	callq	gx_outputfile_is_separate_pages
	testl	%eax, %eax
	je	.LBB1_6
# BB#5:                                 # %if.then.18
	movl	$1, 30788(%rbx)
	movq	%rbx, %rdi
	callq	pdf_close
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_6
# BB#7:                                 # %if.end.22
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_open                # TAILCALL
.LBB1_6:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_output_page, .Lfunc_end1-pdf_output_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4608083138725491507     # double 1.2
.LCPI2_1:
	.quad	4621819117588971520     # double 10
.LCPI2_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf_close,@function
pdf_close:                              # @pdf_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$7288, %rsp             # imm = 0x1C78
.Ltmp29:
	.cfi_def_cfa_offset 7344
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %r13
	movq	14088(%r14), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	26512(%r14), %rax
	movq	8(%rax), %r15
	movq	26520(%r14), %rax
	movq	8(%rax), %r12
	movq	26528(%r14), %rax
	movq	8(%rax), %rbx
	xorl	%ebp, %ebp
	cmpq	$0, 26552(%r14)
	movl	$0, %eax
	je	.LBB2_2
# BB#1:                                 # %land.rhs
	cmpl	$0, 26544(%r14)
	setne	%al
.LBB2_2:                                # %land.end
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	184(%rsp), %rdi
	xorl	%esi, %esi
	movl	$4680, %edx             # imm = 0x1248
	callq	memset
	movq	%r12, 4592(%rsp)
	movq	%rbx, 4600(%rsp)
	movq	%r15, 4584(%rsp)
	cmpl	$0, 26544(%r14)
	jne	.LBB2_8
# BB#3:                                 # %if.then
	cmpl	$0, 30788(%r14)
	jne	.LBB2_7
# BB#4:                                 # %land.lhs.true
	leaq	1744(%r14), %rbp
	movq	24(%r14), %rsi
	movq	%rbp, %rdi
	callq	gx_outputfile_is_separate_pages
	testl	%eax, %eax
	je	.LBB2_7
# BB#5:                                 # %if.then.12
	movq	%rbp, %rbx
	movq	%r14, %rdi
	callq	gdev_vector_close_file
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB2_515
# BB#6:                                 # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_device_delete_output_file
	testl	%eax, %eax
	movl	$-12, %ebp
	cmovel	%eax, %ebp
	jmp	.LBB2_515
.LBB2_7:                                # %if.end.22
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_open_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_515
.LBB2_8:                                # %if.end.27
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	cmpq	$0, 26552(%r14)
	je	.LBB2_10
# BB#9:                                 # %if.then.30
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pdf_close_page
.LBB2_10:                               # %if.end.32
	cmpl	$0, 9524(%r14)
	je	.LBB2_12
# BB#11:                                # %land.lhs.true.34
	cmpl	$0, 9548(%r14)
	jne	.LBB2_15
.LBB2_12:                               # %for.cond.preheader
	cmpl	$0, 26544(%r14)
	jle	.LBB2_15
# BB#13:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	pdf_write_page
	cmpl	26544(%r14), %ebx
	jl	.LBB2_14
.LBB2_15:                               # %if.end.40
	movq	%r15, 96(%rsp)          # 8-byte Spill
	cmpl	$0, 9484(%r14)
	je	.LBB2_17
# BB#16:                                # %if.then.42
	movq	%r14, %rdi
	callq	pdf_print_resource_statistics
.LBB2_17:                               # %if.end.43
	movl	$4, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$4, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	$11, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$11, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	$12, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$12, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movq	%r14, %rdi
	callq	pdf_clean_standard_fonts
	movq	%r14, %rdi
	callq	pdf_free_font_cache
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$7, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	$6, %esi
	movl	$pdf_convert_truetype_font, %edx
	movq	%r14, %rdi
	callq	pdf_finish_resources
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$10, %esi
	movl	$pdf_finish_FontDescriptor, %edx
	movq	%r14, %rdi
	callq	pdf_finish_resources
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	leaq	27696(%r14), %rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	write_font_resources
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	leaq	27440(%r14), %rsi
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	write_font_resources
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	$10, %esi
	movl	$pdf_write_FontDescriptor, %edx
	movq	%r14, %rdi
	callq	pdf_finish_resources
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movq	%r14, %rdi
	callq	pdf_write_bitmap_fonts_Encoding
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	$9, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebp, %ebx
	movl	$9, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movl	%eax, %r15d
	testl	%ebx, %ebx
	cmovsl	%ebx, %r15d
	cmpl	$0, 9524(%r14)
	je	.LBB2_20
# BB#18:                                # %land.lhs.true.112
	cmpl	$0, 9548(%r14)
	je	.LBB2_20
# BB#19:
	movq	%r12, 80(%rsp)          # 8-byte Spill
	jmp	.LBB2_23
.LBB2_20:                               # %if.then.115
	cmpl	$0, 9536(%r14)
	je	.LBB2_22
# BB#21:                                # %if.then.117
	movl	$14, %esi
	movq	%r14, %rdi
	callq	pdf_reverse_resource_chain
.LBB2_22:                               # %if.end.118
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movl	$14, %esi
	movq	%r14, %rdi
	callq	pdf_write_resource_objects
	movl	%eax, %ebx
	testl	%r15d, %r15d
	cmovsl	%r15d, %ebx
	movl	$14, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movl	%eax, %r15d
	testl	%ebx, %ebx
	cmovsl	%ebx, %r15d
.LBB2_23:                               # %if.end.127
	movl	$5, %esi
	movq	%r14, %rdi
	callq	pdf_free_resource_objects
	movq	%r14, %rbx
	movl	%eax, %r12d
	testl	%r15d, %r15d
	cmovnsl	%r12d, %r15d
	cmpl	$0, 9524(%rbx)
	je	.LBB2_25
# BB#24:                                # %land.lhs.true.134
	cmpl	$0, 9548(%rbx)
	je	.LBB2_25
# BB#82:                                # %if.else.349
	movq	26520(%rbx), %rax
	movq	$0, 8(%rax)
	movl	%r15d, %r14d
	movq	%rbx, %r12
	jmp	.LBB2_83
.LBB2_25:                               # %if.then.137
	movl	$28, %edx
	movq	%rbx, %rdi
	movq	176(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	callq	pdf_open_obj
	movl	$-3, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf_record_usage
	movq	5848(%rbx), %r14
	movl	$.L.str.51, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movl	26544(%rbx), %edx
	movq	160(%rsp), %rax         # 8-byte Reload
	testb	%al, %al
	je	.LBB2_26
# BB#27:                                # %if.then.142
	movq	%r13, 112(%rsp)         # 8-byte Spill
	decl	%edx
	movl	%edx, 26544(%rbx)
	jmp	.LBB2_28
.LBB2_26:
	movq	%r13, 112(%rsp)         # 8-byte Spill
.LBB2_28:                               # %for.cond.145.preheader
	testl	%edx, %edx
	movq	%rbx, %r13
	jle	.LBB2_31
# BB#29:                                # %for.body.148.lr.ph
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_30:                               # %for.body.148
                                        # =>This Inner Loop Header: Depth=1
	movq	26648(%r13), %rax
	movq	(%rax,%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.52, %esi
	movq	%r14, %rdi
	callq	pprintld1
	incq	%rbp
	movslq	26544(%r13), %rdx
	addq	$208, %rbx
	cmpq	%rdx, %rbp
	jl	.LBB2_30
.LBB2_31:                               # %for.end.154
	movl	$.L.str.53, %esi
	movq	%r14, %rdi
	callq	pprintd1
	movq	$-1, 9816(%r13)
	movq	26600(%r13), %rax
	movq	26608(%r13), %rcx
	xorl	%esi, %esi
	testq	%rax, %rax
	movl	$-1, %edx
	cmovgl	%esi, %edx
	cmovnsq	%rax, %rsi
	cmpq	%rsi, %rcx
	movl	$1, %eax
	cmovlel	%edx, %eax
	cmovgeq	%rcx, %rsi
	movq	26616(%r13), %rcx
	cmpq	%rsi, %rcx
	movl	$2, %edx
	cmovlel	%eax, %edx
	cmovgeq	%rcx, %rsi
	movq	26624(%r13), %rcx
	cmpq	%rsi, %rcx
	movl	$3, %eax
	cmovlel	%edx, %eax
	cmovgeq	%rcx, %rsi
	movl	$4, %edx
	cmpq	%rsi, 26632(%r13)
	jg	.LBB2_33
# BB#32:                                # %select.mid
	movl	%eax, %edx
.LBB2_33:                               # %select.end
	testl	%edx, %edx
	js	.LBB2_35
# BB#34:                                # %cond.false.i
	movslq	%edx, %rax
	movl	pdf_dominant_rotation.angles(,%rax,4), %edx
.LBB2_35:                               # %pdf_dominant_rotation.exit
	movl	%edx, 26640(%r13)
	cmpl	$1, 8884(%r13)
	movq	%r13, %rbx
	jne	.LBB2_38
# BB#36:                                # %pdf_dominant_rotation.exit
	testl	%edx, %edx
	js	.LBB2_38
# BB#37:                                # %if.then.56.i
	movq	5848(%rbx), %rdi
	movl	$.L.str.164, %esi
	callq	pprintd1
.LBB2_38:                               # %pdf_print_orientation.exit
	movq	%rbx, %rbp
	movq	26528(%rbp), %rdi
	movq	%rbp, %rsi
	callq	cos_dict_elements_write
	movl	$.L.str.54, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movl	$28, %esi
	movq	%rbp, %rdi
	callq	pdf_end_obj
	movq	26536(%rbp), %rsi
	testq	%rsi, %rsi
	movq	112(%rsp), %r13         # 8-byte Reload
	je	.LBB2_43
# BB#39:                                # %if.then.165
	movl	$-3, %edx
	movq	%rbp, %rdi
	callq	pdf_record_usage
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_40:                               # %while.body
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	%eax, %r12d
.LBB2_41:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	28680(%rbp), %ebx
	movq	%rbp, %rdi
	callq	pdfmark_close_outline
	cmpl	$0, %ebx
	jg	.LBB2_40
# BB#42:                                # %while.end
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	movq	26536(%rbp), %rsi
	movl	$21, %edx
	movq	%rbp, %rdi
	callq	pdf_open_obj
	movl	28692(%rbp), %edx
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	callq	pprintd1
	movq	28672(%rbp), %rax
	movq	(%rax), %rdx
	movq	56(%rax), %rcx
	movl	$.L.str.56, %esi
	movq	%r14, %rdi
	callq	pprintld2
	movl	$21, %esi
	movq	%rbp, %rdi
	callq	pdf_end_obj
	movl	%r12d, %r15d
.LBB2_43:                               # %if.end.187
	movq	28696(%rbp), %rbx
	testq	%rbx, %rbx
	movq	%rbp, %r12
	je	.LBB2_45
	.align	16, 0x90
.LBB2_44:                               # %for.body.193
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdfmark_write_article
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_44
.LBB2_45:                               # %if.end.197
	movq	28704(%r12), %rax
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	jbe	.LBB2_48
# BB#46:                                # %if.then.199
	testq	%rax, %rax
	je	.LBB2_52
# BB#47:                                # %if.then.201
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r12, %rdi
	callq	pdf_record_usage
	movq	28704(%r12), %rdi
	movl	$23, %edx
	movq	%r12, %rsi
	callq	cos_write_object
	jmp	.LBB2_52
.LBB2_48:                               # %if.else
	testq	%rax, %rax
	je	.LBB2_50
# BB#49:                                # %if.then.210
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r12, %rdi
	callq	pdf_record_usage
	movq	28704(%r12), %rdi
	movl	$23, %edx
	movq	%r12, %rsi
	callq	cos_write_dict_as_ordered_array
.LBB2_50:                               # %if.end.216
	movq	28712(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_52
# BB#51:                                # %if.then.218
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r12, %rdi
	callq	pdf_record_usage
	movq	28712(%r12), %rdi
	movl	$32, %edx
	movq	%r12, %rsi
	callq	cos_write_dict_as_ordered_array
.LBB2_52:                               # %if.end.225
	movq	%r12, %rdi
	callq	pdfmark_end_pagelabels
	movq	28816(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_54
# BB#53:                                # %if.then.228
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r12, %rdi
	callq	pdf_record_usage
	movq	28816(%r12), %rdi
	movl	$24, %edx
	movq	%r12, %rsi
	callq	cos_write_object
.LBB2_54:                               # %if.end.235
	movq	%r12, %rdi
	callq	pdf_document_metadata
	movl	%eax, %r14d
	testl	%r15d, %r15d
	cmovsl	%r15d, %r14d
	xorl	%r15d, %r15d
	cmpq	$0, 28696(%r12)
	je	.LBB2_59
# BB#55:                                # %if.then.242
	movl	$25, %esi
	movq	%r12, %rdi
	callq	pdf_begin_obj
	movq	%rax, %r15
	movl	$-3, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_record_usage
	movq	5848(%r12), %rbp
	movl	$.L.str.57, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	jmp	.LBB2_57
	.align	16, 0x90
.LBB2_56:                               # %while.body.251
                                        #   in Loop: Header=BB2_57 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 28696(%r12)
	movq	8(%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.52, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movq	8(%rbx), %rdi
	movl	$.L.str.58, %esi
	callq	cos_free
	movl	$.L.str.59, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
.LBB2_57:                               # %while.body.251
                                        # =>This Inner Loop Header: Depth=1
	movq	28696(%r12), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_56
# BB#58:                                # %while.end.258
	movl	$.L.str.60, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$25, %esi
	movq	%r12, %rdi
	callq	pdf_end_obj
.LBB2_59:                               # %if.end.261
	movl	$26, %edx
	movq	%r12, %rdi
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	pdf_open_obj
	movl	$-2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_record_usage
	movq	5848(%r12), %rbp
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$.L.str.62, %esi
	movq	%rbp, %rdi
	movq	176(%rsp), %rdx         # 8-byte Reload
	callq	pprintld1
	movq	26536(%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB2_61
# BB#60:                                # %if.then.269
	movl	$.L.str.63, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB2_61:                               # %if.end.272
	testq	%r15, %r15
	je	.LBB2_63
# BB#62:                                # %if.then.274
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	pprintld1
	movl	$-2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_record_usage
.LBB2_63:                               # %if.end.277
	movq	28704(%r12), %rax
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	jbe	.LBB2_66
# BB#64:                                # %if.then.280
	testq	%rax, %rax
	je	.LBB2_73
# BB#65:                                # %if.then.283
	movq	8(%rax), %rdx
	movl	$.L.str.65, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	jmp	.LBB2_73
.LBB2_66:                               # %if.else.288
	testq	%rax, %rax
	jne	.LBB2_68
# BB#67:                                # %lor.lhs.false
	cmpq	$0, 28712(%r12)
	je	.LBB2_73
.LBB2_68:                               # %if.then.293
	movl	$.L.str.66, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	28704(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_70
# BB#69:                                # %if.then.297
	movq	8(%rax), %rdx
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB2_70:                               # %if.end.301
	movq	28712(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_72
# BB#71:                                # %if.then.304
	movq	8(%rax), %rdx
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB2_72:                               # %if.end.308
	movl	$.L.str.54, %esi
	movq	%rbp, %rdi
	callq	stream_puts
.LBB2_73:                               # %if.end.311
	movq	28816(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_75
# BB#74:                                # %if.then.314
	movq	8(%rax), %rdx
	movl	$.L.str.69, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB2_75:                               # %if.end.318
	movq	26512(%r12), %rdi
	movq	%r12, %rsi
	callq	cos_dict_elements_write
	movl	$.L.str.54, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$26, %esi
	movq	%r12, %rdi
	callq	pdf_end_obj
	movq	28704(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB2_77
# BB#76:                                # %if.then.325
	movl	$.L.str.70, %esi
	callq	cos_free
	movq	$0, 28704(%r12)
.LBB2_77:                               # %if.end.329
	movq	28712(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB2_79
# BB#78:                                # %if.then.332
	movl	$.L.str.71, %esi
	callq	cos_free
	movq	$0, 28712(%r12)
.LBB2_79:                               # %if.end.336
	movq	28816(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB2_81
# BB#80:                                # %if.then.339
	movl	$.L.str.72, %esi
	callq	cos_free
	movq	$0, 28816(%r12)
	movq	$0, 28832(%r12)
.LBB2_81:                               # %if.end.343
	movq	26512(%r12), %rax
	movq	$0, 8(%rax)
	movq	26520(%r12), %rax
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r12, %rdi
	callq	pdf_record_usage
.LBB2_83:                               # %do.body.preheader
	movl	%r14d, %r15d
	leaq	9992(%r12), %rbx
	.align	16, 0x90
.LBB2_84:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	28760(%r12), %rdi
	movq	%r12, %rsi
	callq	cos_dict_objects_write
	movq	%r12, %rdi
	callq	pdf_pop_namespace
	testl	%eax, %eax
	jns	.LBB2_84
# BB#85:                                # %do.end
	movq	28752(%r12), %rdi
	movq	%r12, %rsi
	callq	cos_dict_objects_write
	cmpl	$0, 9524(%r12)
	je	.LBB2_86
# BB#87:                                # %land.lhs.true.359
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	cmpl	$0, 9548(%r12)
	je	.LBB2_89
# BB#88:                                # %for.cond.364.preheader
	movl	26544(%r12), %eax
	cmpl	$-2, %eax
	movl	$-1, %esi
	cmovgl	%eax, %esi
	movq	%r12, %rdi
	callq	ps2write_dsc_header
	movl	%eax, %r15d
	jmp	.LBB2_89
.LBB2_86:
	movq	%rbx, 88(%rsp)          # 8-byte Spill
.LBB2_89:                               # %if.end.372
	leaq	5848(%r12), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	5848(%r12), %r14
	movq	%r14, 152(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	stell
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	18224(%r12), %rdi
	callq	*208(%rdi)
	movq	18216(%r12), %rbx
	movq	%rbx, %rdi
	callq	gp_ftell_64
	movq	%rax, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gp_fseek_64
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	pdf_copy_data
	cmpl	$0, 9524(%r12)
	je	.LBB2_90
# BB#91:                                # %land.lhs.true.386
	cmpl	$0, 9548(%r12)
	movl	%r15d, %r14d
	je	.LBB2_117
# BB#92:                                # %if.then.389
	movq	5848(%r12), %rdi
	movl	$.L.str.73, %esi
	callq	stream_puts
	movq	9328(%r12), %rbx
	testq	%rbx, %rbx
	movq	152(%rsp), %r14         # 8-byte Reload
	je	.LBB2_96
# BB#93:                                # %if.then.393
	movq	5848(%r12), %rdi
	movl	$.L.str.74, %esi
	callq	stream_puts
	xorl	%ebp, %ebp
	cmpl	$0, 9336(%r12)
	je	.LBB2_95
	.align	16, 0x90
.LBB2_94:                               # %for.body.404
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rbp), %esi
	movq	%r14, %rdi
	callq	spputc
	incq	%rbp
	cmpl	9336(%r12), %ebp
	jb	.LBB2_94
.LBB2_95:                               # %for.end.408
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdi
	movl	$.L.str.75, %esi
	callq	stream_puts
	movq	(%rbx), %rdi
	movl	$.L.str.76, %esi
	callq	stream_puts
.LBB2_96:                               # %if.end.413
	movq	%r13, 112(%rsp)         # 8-byte Spill
	cmpl	$0, 9536(%r12)
	je	.LBB2_98
# BB#97:                                # %if.then.416
	movl	$14, %esi
	movq	%r12, %rdi
	callq	pdf_reverse_resource_chain
.LBB2_98:                               # %for.cond.418.preheader
	movl	$1, %ebp
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	movq	152(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB2_99:                               # %for.body.424
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_100 Depth 2
                                        #       Child Loop BB2_110 Depth 3
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	28464(%r12,%rax,8), %r13
	testq	%r13, %r13
	je	.LBB2_114
	.align	16, 0x90
.LBB2_100:                              # %for.body.431
                                        #   Parent Loop BB2_99 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_110 Depth 3
	cmpl	$0, 24(%r13)
	je	.LBB2_103
# BB#101:                               # %lor.lhs.false.433
                                        #   in Loop: Header=BB2_100 Depth=2
	cmpl	$0, 9524(%r12)
	je	.LBB2_102
.LBB2_103:                              # %land.lhs.true.436
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	64(%r13), %rax
	cmpb	$0, 50(%rax)
	je	.LBB2_105
# BB#104:                               #   in Loop: Header=BB2_100 Depth=2
	movq	%r12, %rbx
	jmp	.LBB2_113
	.align	16, 0x90
.LBB2_105:                              # %if.then.438
                                        #   in Loop: Header=BB2_100 Depth=2
	leal	-1(%rbp), %r14d
	movq	26648(%r12), %rbx
	movq	5848(%r12), %rdi
	movl	$.L.str.77, %esi
	movl	%ebp, %edx
	movl	%ebp, %ecx
	callq	pprintd2
	cmpl	$0, 9528(%r12)
	jne	.LBB2_107
# BB#106:                               # %if.then.446
                                        #   in Loop: Header=BB2_100 Depth=2
	movslq	%r14d, %rax
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	imulq	$208, %rax, %rax
	cvttsd2si	8(%rbx,%rax), %edx
	cvttsd2si	16(%rbx,%rax), %ecx
	movl	$.L.str.78, %esi
	callq	pprintd2
.LBB2_107:                              # %if.end.451
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	5848(%r12), %rdi
	movl	$.L.str.79, %esi
	callq	stream_puts
	movq	5848(%r12), %rdi
	movl	$.L.str.80, %esi
	callq	stream_puts
	movl	9352(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB2_112
# BB#108:                               # %if.then.459
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%ecx
	movslq	%edx, %rbp
	movq	9344(%r12), %rax
	shlq	$4, %rbp
	cmpl	$0, 8(%rax,%rbp)
	je	.LBB2_111
# BB#109:                               # %for.body.481.lr.ph
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	(%rax,%rbp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_110:                              # %for.body.481
                                        #   Parent Loop BB2_99 Depth=1
                                        #     Parent Loop BB2_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rbx), %esi
	movq	%r15, %rdi
	callq	spputc
	movq	9344(%r12), %rax
	incq	%rbx
	cmpl	8(%rax,%rbp), %ebx
	jb	.LBB2_110
.LBB2_111:                              # %for.end.486
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str.75, %esi
	callq	stream_puts
	movq	160(%rsp), %rbp         # 8-byte Reload
.LBB2_112:                              # %if.end.489
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	%r12, %rbx
	leal	1(%rbp), %r12d
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	pdf_write_page
	movq	5848(%rbx), %rdi
	movl	$.L.str.81, %esi
	callq	stream_puts
	movq	5848(%rbx), %rdi
	movq	64(%r13), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.82, %esi
	callq	pprintld1
	movq	64(%r13), %rdi
	movq	8(%rdi), %rdx
	movq	%rbx, %rsi
	callq	cos_write
	movl	%eax, %r14d
	movq	5848(%rbx), %rdi
	movl	$.L.str.83, %esi
	callq	stream_puts
	movq	64(%r13), %rax
	movb	$1, 50(%rax)
	movq	5848(%rbx), %rdi
	movl	$.L.str.84, %esi
	callq	stream_puts
	movl	%r12d, %ebp
	jmp	.LBB2_113
	.align	16, 0x90
.LBB2_102:                              #   in Loop: Header=BB2_100 Depth=2
	movq	%r12, %rbx
.LBB2_113:                              # %for.inc.509
                                        #   in Loop: Header=BB2_100 Depth=2
	movq	(%r13), %r13
	testq	%r13, %r13
	movq	%rbx, %r12
	jne	.LBB2_100
.LBB2_114:                              # %for.end.511
                                        #   in Loop: Header=BB2_99 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	incq	%rax
	cmpq	$15, %rax
	jg	.LBB2_116
# BB#115:                               # %for.end.511
                                        #   in Loop: Header=BB2_99 Depth=1
	testl	%r14d, %r14d
	jns	.LBB2_99
.LBB2_116:                              # %for.end.514
	movl	$14, %esi
	movq	%r12, %rdi
	callq	pdf_free_resource_objects
	testl	%r14d, %r14d
	cmovsl	%r14d, %eax
	movl	%eax, %r14d
	movq	5848(%r12), %rdi
	movl	$.L.str.85, %esi
	callq	stream_puts
	movq	5848(%r12), %rdi
	movl	$.L.str.86, %esi
	callq	stream_puts
	movq	5848(%r12), %rdi
	movl	$.L.str.87, %esi
	callq	stream_puts
	movq	112(%rsp), %r13         # 8-byte Reload
	jmp	.LBB2_117
.LBB2_90:
	movl	%r15d, %r14d
.LBB2_117:                              # %if.end.526
	cmpl	$0, 30764(%r12)
	je	.LBB2_119
# BB#118:                               # %if.then.528
	movq	26504(%r12), %rsi
	leaq	-1(%rsi), %rax
	movq	%rax, 4656(%rsp)
	movq	1728(%r12), %rdi
	shlq	$3, %rsi
	movl	$.L.str.88, %edx
	callq	*64(%rdi)
	movq	%rax, 4672(%rsp)
	movq	4656(%rsp), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB2_119:                              # %if.end.540
	cmpl	$0, 9524(%r12)
	je	.LBB2_122
# BB#120:                               # %land.lhs.true.543
	cmpl	$0, 9548(%r12)
	je	.LBB2_122
# BB#121:
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB2_162
.LBB2_122:                              # %if.then.546
	xorl	%ebx, %ebx
	cmpl	$0, 9624(%r12)
	je	.LBB2_124
# BB#123:                               # %if.then.550
	movq	%r12, %rdi
	callq	pdf_obj_ref
	movq	%rax, %rbx
	movl	$27, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_open_obj
	movq	5848(%r12), %rbp
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$.L.str.89, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	9768(%r12), %edx
	movl	$.L.str.90, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movl	9648(%r12), %edx
	movl	$.L.str.91, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movl	9656(%r12), %edx
	movl	$.L.str.92, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movl	9652(%r12), %edx
	movl	$.L.str.93, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movl	$.L.str.94, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	leaq	9688(%r12), %rsi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	pdf_put_string
	movl	$.L.str.95, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	leaq	9720(%r12), %rsi
	movl	$32, %edx
	movq	%r12, %rdi
	callq	pdf_put_string
	movl	$.L.str.54, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$27, %esi
	movq	%r12, %rdi
	callq	pdf_end_obj
	movq	5848(%r12), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
.LBB2_124:                              # %if.end.573
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movl	%r14d, 144(%rsp)        # 4-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movabsq	$-9223372036854775808, %rbx # imm = 0x8000000000000000
	movq	9472(%r12), %r15
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	120(%rsp), %rdi         # 8-byte Reload
	callq	gp_fseek_64
	movq	26504(%r12), %rbp
	cmpq	%r15, %rbp
	jle	.LBB2_125
# BB#126:                               # %for.body.lr.ph.i
	movq	128(%rsp), %r13         # 8-byte Reload
	xorq	%rbx, %r13
	leaq	30672(%r12), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%r12, %rbx
	leaq	6256(%rsp), %r12
	movq	%r15, %r14
	.align	16, 0x90
.LBB2_127:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	fread
	movq	$-12, %rbp
	cmpq	$1, %rax
	jne	.LBB2_132
# BB#128:                               # %if.end.i.650
                                        #   in Loop: Header=BB2_127 Depth=1
	movq	6256(%rsp), %rax
	testq	%rax, %rax
	jns	.LBB2_130
# BB#129:                               # %if.then.3.i
                                        #   in Loop: Header=BB2_127 Depth=1
	addq	%r13, %rax
	movq	%rax, 6256(%rsp)
.LBB2_130:                              # %if.end.5.i
                                        #   in Loop: Header=BB2_127 Depth=1
	movq	160(%rsp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, 6256(%rsp)
	je	.LBB2_131
# BB#520:                               # %for.inc.i
                                        #   in Loop: Header=BB2_127 Depth=1
	incq	%r14
	movq	26504(%rbx), %rbp
	cmpq	%rbp, %r14
	jl	.LBB2_127
	jmp	.LBB2_132
.LBB2_125:                              # %if.end.573.find_end_xref_section.exit_crit_edge
	leaq	30672(%r12), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%r12, %rbx
	jmp	.LBB2_132
.LBB2_131:
	movq	%r14, %rbp
.LBB2_132:                              # %find_end_xref_section.exit
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	pdf_stell
	movslq	30672(%rbx), %rcx
	subq	%rcx, %rax
	cmpl	$0, 30764(%rbx)
	je	.LBB2_134
# BB#133:                               # %if.then.581
	movq	%rax, 4680(%rsp)
.LBB2_134:                              # %if.end.583
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	%ebp, %r12
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpq	$1, 9472(%rax)
	movq	120(%rsp), %r13         # 8-byte Reload
	movq	128(%rsp), %r14         # 8-byte Reload
	jne	.LBB2_136
# BB#135:                               # %if.then.587
	leaq	4864(%rsp), %rbp
	movl	$.L.str.96, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	gs_sprintf
	jmp	.LBB2_137
.LBB2_136:                              # %if.else.592
	movq	%r12, %rcx
	subq	%r15, %rcx
	leaq	4864(%rsp), %rbp
	movl	$.L.str.97, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	gs_sprintf
.LBB2_137:                              # %do.body.599.preheader
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	stream_puts
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %r14
	movq	%r14, 128(%rsp)         # 8-byte Spill
	jmp	.LBB2_138
	.align	16, 0x90
.LBB2_156:                              # %if.end.614
                                        #   in Loop: Header=BB2_138 Depth=1
	movslq	%ebp, %r12
	movq	%r12, %rcx
	subq	%r15, %rcx
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	leaq	4864(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rdx
	callq	gs_sprintf
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	stream_puts
.LBB2_138:                              # %do.body.599
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_139 Depth 2
                                        #     Child Loop BB2_149 Depth 2
	movq	4672(%rsp), %rbx
	movq	%r15, %rsi
	movq	168(%rsp), %rax         # 8-byte Reload
	subq	9472(%rax), %rsi
	shlq	$3, %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	gp_fseek_64
	cmpq	%r15, %r12
	jle	.LBB2_147
	.align	16, 0x90
.LBB2_139:                              # %for.body.i.663
                                        #   Parent Loop BB2_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %esi
	movl	$1, %edx
	leaq	5184(%rsp), %rdi
	movq	%r13, %rcx
	callq	fread
	cmpq	$1, %rax
	jne	.LBB2_147
# BB#140:                               # %if.end.i.665
                                        #   in Loop: Header=BB2_139 Depth=2
	movq	5184(%rsp), %rdx
	testq	%rdx, %rdx
	jns	.LBB2_142
# BB#141:                               # %if.then.5.i
                                        #   in Loop: Header=BB2_139 Depth=2
	addq	%r14, %rdx
	movq	%rdx, 5184(%rsp)
.LBB2_142:                              # %if.end.7.i
                                        #   in Loop: Header=BB2_139 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movslq	30672(%rcx), %rax
	subq	%rax, %rdx
	movq	%rdx, 5184(%rsp)
	cmpl	$0, 30764(%rcx)
	jne	.LBB2_144
# BB#143:                               # %if.then.11.i
                                        #   in Loop: Header=BB2_139 Depth=2
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%r12, %rbp
	movq	%r13, %r12
	movq	%r14, %r13
	leaq	6256(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%r14, %rsi
	movq	%r13, %r14
	movq	%r12, %r13
	movq	%rbp, %r12
	callq	stream_puts
.LBB2_144:                              # %if.end.15.i
                                        #   in Loop: Header=BB2_139 Depth=2
	testq	%rbx, %rbx
	je	.LBB2_146
# BB#145:                               # %if.then.17.i
                                        #   in Loop: Header=BB2_139 Depth=2
	movq	5184(%rsp), %rax
	movq	%rax, (%rbx,%r15,8)
.LBB2_146:                              # %for.inc.i.670
                                        #   in Loop: Header=BB2_139 Depth=2
	incq	%r15
	cmpq	%r12, %r15
	jl	.LBB2_139
.LBB2_147:                              # %write_xref_section.exit
                                        #   in Loop: Header=BB2_138 Depth=1
	movq	%r13, %r14
	movq	168(%rsp), %r13         # 8-byte Reload
	cmpq	26504(%r13), %r12
	jge	.LBB2_157
# BB#148:                               # %if.end.607
                                        #   in Loop: Header=BB2_138 Depth=1
	movq	%r12, %r15
	incq	%r15
	movq	%r15, %rsi
	subq	9472(%r13), %rsi
	shlq	$3, %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gp_fseek_64
	movq	26504(%r13), %rbp
	cmpq	%r15, %rbp
	movq	%r15, %rbx
	movq	%r13, %r12
	movq	%r14, %r13
	movq	128(%rsp), %r14         # 8-byte Reload
	jle	.LBB2_155
	.align	16, 0x90
.LBB2_149:                              # %for.body.i.684
                                        #   Parent Loop BB2_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %esi
	movl	$1, %edx
	leaq	6256(%rsp), %rdi
	movq	%r13, %rcx
	callq	fread
	movl	$-12, %ebp
	cmpq	$1, %rax
	jne	.LBB2_155
# BB#150:                               # %if.end.i.686
                                        #   in Loop: Header=BB2_149 Depth=2
	movq	6256(%rsp), %rax
	testq	%rax, %rax
	jns	.LBB2_152
# BB#151:                               # %if.then.3.i.688
                                        #   in Loop: Header=BB2_149 Depth=2
	addq	%r14, %rax
	movq	%rax, 6256(%rsp)
.LBB2_152:                              # %if.end.5.i.693
                                        #   in Loop: Header=BB2_149 Depth=2
	movq	160(%rsp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, 6256(%rsp)
	je	.LBB2_154
# BB#153:                               # %for.inc.i.696
                                        #   in Loop: Header=BB2_149 Depth=2
	incq	%rbx
	movq	26504(%r12), %rbp
	cmpq	%rbp, %rbx
	jl	.LBB2_149
	jmp	.LBB2_155
.LBB2_154:                              # %if.end.5.i.693.cleanup.12.i.698_crit_edge
                                        #   in Loop: Header=BB2_138 Depth=1
	movl	%ebx, %ebp
	.align	16, 0x90
.LBB2_155:                              # %find_end_xref_section.exit702
                                        #   in Loop: Header=BB2_138 Depth=1
	testl	%ebp, %ebp
	jns	.LBB2_156
	jmp	.LBB2_515
.LBB2_157:                              # %do.end.621
	cmpl	$0, 30764(%r13)
	movq	%r13, %r12
	je	.LBB2_159
# BB#158:
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB2_163
.LBB2_159:                              # %if.then.624
	movl	$.L.str.99, %esi
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	callq	stream_puts
	movq	26504(%r12), %rdx
	movl	$.L.str.100, %esi
	movq	%rbp, %rdi
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	80(%rsp), %r8           # 8-byte Reload
	callq	pprintld3
	movl	$.L.str.101, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movq	5848(%r12), %rdi
	leaq	28720(%r12), %rbx
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	s_write_ps_string
	movq	5848(%r12), %rdi
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	s_write_ps_string
	movl	$.L.str.60, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	cmpl	$0, 9624(%r12)
	je	.LBB2_161
# BB#160:                               # %if.then.639
	movl	$.L.str.102, %esi
	movq	%rbp, %rdi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	pprintld1
.LBB2_161:                              # %if.end.641
	movl	$.L.str.54, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	leaq	6256(%rsp), %rbx
	movl	$.L.str.103, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gs_sprintf
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	stream_puts
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	144(%rsp), %r14d        # 4-byte Reload
.LBB2_162:                              # %if.end.648
	cmpl	$0, 30764(%r12)
	je	.LBB2_431
.LBB2_163:                              # %if.then.651
	movabsq	$11693315639077, %rax   # imm = 0xAA28FECC725
	movq	%rax, 6208(%rsp)
	movb	$0, 6216(%rsp)
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	mulsd	.LCPI2_1(%rip), %xmm0
	movsd	%xmm0, 160(%rsp)        # 8-byte Spill
	movb	$60, 5136(%rsp)
	movb	$62, 5169(%rsp)
	movb	$0, 5170(%rsp)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_164:                              # %for.body.i.705
                                        # =>This Inner Loop Header: Depth=1
	movzbl	28720(%r12,%rax), %ecx
	movb	%cl, %dl
	shrb	$4, %dl
	cmpl	$160, %ecx
	jb	.LBB2_166
# BB#165:                               # %if.then.i
                                        #   in Loop: Header=BB2_164 Depth=1
	addb	$55, %dl
	jmp	.LBB2_167
	.align	16, 0x90
.LBB2_166:                              # %if.else.i.706
                                        #   in Loop: Header=BB2_164 Depth=1
	orb	$48, %dl
.LBB2_167:                              # %if.end.i.707
                                        #   in Loop: Header=BB2_164 Depth=1
	movb	%dl, 5137(%rsp,%rax,2)
	andb	$15, %cl
	movzbl	%cl, %edx
	cmpl	$10, %edx
	jb	.LBB2_169
# BB#168:                               # %if.then.34.i
                                        #   in Loop: Header=BB2_164 Depth=1
	addb	$55, %cl
	jmp	.LBB2_170
	.align	16, 0x90
.LBB2_169:                              # %if.else.43.i
                                        #   in Loop: Header=BB2_164 Depth=1
	orb	$48, %cl
.LBB2_170:                              # %for.inc.i.708
                                        #   in Loop: Header=BB2_164 Depth=1
	movb	%cl, 5138(%rsp,%rax,2)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB2_164
# BB#171:                               # %for.end.i
	movq	5848(%r12), %rdi
	callq	*208(%rdi)
	movq	5840(%r12), %rdi
	movq	%rdi, 184(%rsp)
	callq	gp_ftell_64
	movq	%rax, 4664(%rsp)
	movl	$gp_fmode_binary_suffix, %edi
	callq	strlen
	cmpq	$2, %rax
	ja	.LBB2_173
# BB#172:                               # %if.end.i.i
	leaq	192(%rsp), %rbp
	leaq	7284(%rsp), %rbx
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	24(%r12), %rdi
	movl	$gp_scratch_file_name_prefix, %esi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	callq	gp_open_scratch_file_64
	movq	%rax, 4288(%rsp)
	testq	%rax, %rax
	je	.LBB2_173
# BB#174:                               # %if.end.59.i
	movsd	160(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI2_2(%rip), %xmm1
	movq	$0, 4296(%rsp)
	movq	$0, 4608(%rsp)
	movslq	30784(%r12), %rbx
	movq	%rbx, 144(%rsp)         # 8-byte Spill
	testq	%rbx, %rbx
	jle	.LBB2_204
# BB#175:                               # %for.body.65.lr.ph.i
	movq	30776(%r12), %rcx
	xorl	%edx, %edx
	testb	$1, %bl
	movl	$0, %edi
	je	.LBB2_180
# BB#176:                               # %for.body.65.i.prol
	movl	(%rcx), %esi
	movl	$1, %edi
	xorl	%edx, %edx
	cmpl	$1, %esi
	jne	.LBB2_177
# BB#179:                               # %if.end.73.thread.i.prol
	movq	$1, 4608(%rsp)
	movl	$1, %edx
	movl	$1, %edi
	jmp	.LBB2_180
.LBB2_173:                              # %pdf_open_temp_file.exit.thread.i
	movl	$-9, %r14d
	jmp	.LBB2_425
.LBB2_204:                              # %for.end.131.thread.i
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 4624(%rsp)
	movupd	%xmm0, 4640(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	jmp	.LBB2_220
.LBB2_177:                              # %for.body.65.i.prol
	cmpl	$-2, %esi
	jne	.LBB2_180
# BB#178:                               # %if.then.80.i.prol
	incq	4616(%rsp)
	movl	$1, %edi
	xorl	%edx, %edx
.LBB2_180:                              # %for.body.65.lr.ph.i.split
	cmpl	$1, %ebx
	je	.LBB2_189
# BB#181:                               # %for.body.65.lr.ph.i.split.split
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%rcx), %rdi
	.align	16, 0x90
.LBB2_182:                              # %for.body.65.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %ebp
	cmpl	$-2, %ebp
	jne	.LBB2_183
# BB#185:                               # %if.then.80.i
                                        #   in Loop: Header=BB2_182 Depth=1
	incq	4616(%rsp)
	jmp	.LBB2_186
	.align	16, 0x90
.LBB2_183:                              # %for.body.65.i
                                        #   in Loop: Header=BB2_182 Depth=1
	cmpl	$1, %ebp
	jne	.LBB2_186
# BB#184:                               # %if.end.73.thread.i
                                        #   in Loop: Header=BB2_182 Depth=1
	incq	%rdx
	movq	%rdx, 4608(%rsp)
.LBB2_186:                              # %for.inc.83.i
                                        #   in Loop: Header=BB2_182 Depth=1
	movl	48(%rdi), %ebp
	cmpl	$-2, %ebp
	jne	.LBB2_187
# BB#518:                               # %if.then.80.i.1
                                        #   in Loop: Header=BB2_182 Depth=1
	incq	4616(%rsp)
	jmp	.LBB2_519
	.align	16, 0x90
.LBB2_187:                              # %for.inc.83.i
                                        #   in Loop: Header=BB2_182 Depth=1
	cmpl	$1, %ebp
	jne	.LBB2_519
# BB#188:                               # %if.end.73.thread.i.1
                                        #   in Loop: Header=BB2_182 Depth=1
	incq	%rdx
	movq	%rdx, 4608(%rsp)
.LBB2_519:                              # %for.inc.83.i.1
                                        #   in Loop: Header=BB2_182 Depth=1
	addq	$96, %rdi
	addq	$-2, %rsi
	jne	.LBB2_182
.LBB2_189:                              # %for.body.90.lr.ph.i
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 4624(%rsp)
	xorl	%eax, %eax
	testb	$1, %bl
                                        # implicit-def: RBP
	movl	$0, %edi
	movl	$0, %esi
	je	.LBB2_195
# BB#190:                               # %for.body.90.i.prol
	movl	(%rcx), %edx
	cmpl	$1, %edx
	jle	.LBB2_191
# BB#193:                               # %if.end.100.thread.i.prol
	movq	$1, 4632(%rsp)
	movl	$1, %ebp
	xorl	%eax, %eax
	movl	$1, %edi
	jmp	.LBB2_194
.LBB2_191:                              # %if.end.100.i.prol
	movl	$1, %esi
	xorl	%eax, %eax
	cmpl	$-1, %edx
	movl	$0, %ebp
	movl	$0, %edi
	jne	.LBB2_195
# BB#192:                               # %if.then.107.i.prol
	movq	$1, 4624(%rsp)
	xorl	%ebp, %ebp
	movl	$1, %eax
	xorl	%edi, %edi
.LBB2_194:                              # %for.body.90.lr.ph.i.split
	movl	$1, %esi
.LBB2_195:                              # %for.body.90.lr.ph.i.split
	cmpl	$1, %ebx
	je	.LBB2_205
# BB#196:                               # %for.body.90.lr.ph.i.split.split
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rcx), %rsi
	movq	%rdi, %rbp
	.align	16, 0x90
.LBB2_197:                              # %for.body.90.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edi
	cmpl	$2, %edi
	jl	.LBB2_199
# BB#198:                               # %if.end.100.thread.i
                                        #   in Loop: Header=BB2_197 Depth=1
	incq	%rbp
	movq	%rbp, 4632(%rsp)
	jmp	.LBB2_201
	.align	16, 0x90
.LBB2_199:                              # %if.end.100.i
                                        #   in Loop: Header=BB2_197 Depth=1
	cmpl	$-1, %edi
	jne	.LBB2_201
# BB#200:                               # %if.then.107.i
                                        #   in Loop: Header=BB2_197 Depth=1
	incq	%rax
	movq	%rax, 4624(%rsp)
	.align	16, 0x90
.LBB2_201:                              # %for.inc.111.i
                                        #   in Loop: Header=BB2_197 Depth=1
	movl	48(%rsi), %edi
	cmpl	$1, %edi
	jle	.LBB2_202
# BB#516:                               # %if.end.100.thread.i.1
                                        #   in Loop: Header=BB2_197 Depth=1
	incq	%rbp
	movq	%rbp, 4632(%rsp)
	jmp	.LBB2_517
	.align	16, 0x90
.LBB2_202:                              # %if.end.100.i.1
                                        #   in Loop: Header=BB2_197 Depth=1
	cmpl	$-1, %edi
	jne	.LBB2_517
# BB#203:                               # %if.then.107.i.1
                                        #   in Loop: Header=BB2_197 Depth=1
	incq	%rax
	movq	%rax, 4624(%rsp)
	.align	16, 0x90
.LBB2_517:                              # %for.inc.111.i.1
                                        #   in Loop: Header=BB2_197 Depth=1
	addq	$96, %rsi
	addq	$-2, %rdx
	jne	.LBB2_197
.LBB2_205:                              # %for.end.113.i
	movq	$0, 4648(%rsp)
	xorl	%r8d, %r8d
	cmpl	$2, %ebx
	movl	$0, %edx
	jl	.LBB2_216
# BB#206:                               # %for.body.118.i.preheader
	movl	$1, %edi
	xorl	%edx, %edx
	testb	$1, %bl
	jne	.LBB2_209
# BB#207:                               # %for.body.118.i.prol
	movl	$2, %edi
	xorl	%edx, %edx
	cmpl	$0, 48(%rcx)
	jne	.LBB2_209
# BB#208:                               # %if.then.125.i.prol
	movq	$1, 4648(%rsp)
	movl	$2, %edi
	movl	$1, %edx
.LBB2_209:                              # %for.body.118.i.preheader.split
	movb	$1, %r8b
	cmpl	$2, %ebx
	je	.LBB2_216
# BB#210:                               # %for.body.118.i.preheader.split.split
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%rcx), %rdi
	.align	16, 0x90
.LBB2_211:                              # %for.body.118.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdi)
	jne	.LBB2_213
# BB#212:                               # %if.then.125.i
                                        #   in Loop: Header=BB2_211 Depth=1
	incq	%rdx
	movq	%rdx, 4648(%rsp)
.LBB2_213:                              # %for.inc.129.i
                                        #   in Loop: Header=BB2_211 Depth=1
	cmpl	$0, 48(%rdi)
	jne	.LBB2_215
# BB#214:                               # %if.then.125.i.1
                                        #   in Loop: Header=BB2_211 Depth=1
	incq	%rdx
	movq	%rdx, 4648(%rsp)
.LBB2_215:                              # %for.inc.129.i.1
                                        #   in Loop: Header=BB2_211 Depth=1
	addq	$96, %rdi
	addq	$-2, %rsi
	jne	.LBB2_211
.LBB2_216:                              # %for.body.136.lr.ph.i
	movq	$0, 4640(%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_217:                              # %for.body.136.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-3, (%rcx)
	jne	.LBB2_219
# BB#218:                               # %if.then.143.i
                                        #   in Loop: Header=BB2_217 Depth=1
	incq	%rdi
	movq	%rdi, 4640(%rsp)
.LBB2_219:                              # %for.inc.147.i
                                        #   in Loop: Header=BB2_217 Depth=1
	incq	%rsi
	addq	$48, %rcx
	cmpq	%rbx, %rsi
	jl	.LBB2_217
.LBB2_220:                              # %for.end.149.i
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	leaq	(%rbp,%rax), %rcx
	leaq	(%rcx,%rdx), %rdx
	leaq	(%rdx,%rdi), %rax
	addl	$2, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	1(%rdi,%rdx), %r14
	testb	%r8b, %r8b
	je	.LBB2_221
# BB#222:                               # %for.body.187.lr.ph.i
	movq	%r14, 80(%rsp)          # 8-byte Spill
	incl	%edx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	incl	%ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	4656(%rsp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	4672(%rsp), %rsi
	movq	30776(%r12), %rcx
	movq	%r12, 168(%rsp)         # 8-byte Spill
	movq	4680(%rsp), %rdx
	movl	%eax, %edi
	andl	$1, %edi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	8(%rsi), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$1, %edi
	movl	$1, %r15d
	jmp	.LBB2_223
.LBB2_233:                              # %if.then.265.i
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, 16(%rcx,%r11)
	incl	%eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB2_235
.LBB2_232:                              # %if.then.252.i
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 16(%rcx,%r11)
	incl	%eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB2_235
	.align	16, 0x90
.LBB2_223:                              # %for.body.187.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_228 Depth 2
	movq	%r13, %r12
	leaq	(%r15,%r15,2), %r11
	shlq	$4, %r11
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	movq	(%rsi,%r15,8), %rbp
	movq	%rbp, 24(%rcx,%r11)
	movq	(%rsi,%r15,8), %r10
	movq	%rdx, %rax
	js	.LBB2_229
# BB#224:                               # %for.body.198.i.preheader
                                        #   in Loop: Header=BB2_223 Depth=1
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	movl	$0, %ebp
	movq	%rdx, %rax
	jne	.LBB2_226
# BB#225:                               # %for.body.198.i.prol
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	(%rsi), %rbp
	cmpq	%r10, %rbp
	movq	%rdx, %rax
	cmovgq	%rbp, %rax
	cmpq	%rdx, %rbp
	cmovgeq	%rdx, %rax
	movl	$1, %ebp
.LBB2_226:                              # %for.body.198.i.preheader.split
                                        #   in Loop: Header=BB2_223 Depth=1
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	je	.LBB2_229
# BB#227:                               # %for.body.198.i.preheader.split.split
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	112(%rsp), %r9          # 8-byte Reload
	subq	%rbp, %r9
	movl	%edi, %ebx
	movq	96(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rbp,8), %r14
	movl	%ebx, %edi
	.align	16, 0x90
.LBB2_228:                              # %for.body.198.i
                                        #   Parent Loop BB2_223 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%r14), %rbp
	movq	(%r14), %r13
	cmpq	%r10, %rbp
	movq	%rax, %r8
	cmovgq	%rbp, %r8
	cmpq	%rax, %rbp
	cmovgeq	%rax, %r8
	cmpq	%r10, %r13
	movq	%r8, %rax
	cmovgq	%r13, %rax
	cmpq	%r8, %r13
	cmovgeq	%r8, %rax
	addq	$16, %r14
	addq	$-2, %r9
	jne	.LBB2_228
.LBB2_229:                              # %for.end.219.i
                                        #   in Loop: Header=BB2_223 Depth=1
	subq	%r10, %rax
	movq	%rax, 40(%rcx,%r11)
	movl	(%rcx,%r11), %ebp
	addl	$3, %ebp
	cmpl	$4, %ebp
	ja	.LBB2_234
# BB#230:                               # %for.end.219.i
                                        #   in Loop: Header=BB2_223 Depth=1
	jmpq	*.LJTI2_0(,%rbp,8)
.LBB2_231:                              # %if.then.240.i
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rcx,%r11)
	incl	%eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	jmp	.LBB2_235
	.align	16, 0x90
.LBB2_234:                              # %if.else.271.i
                                        #   in Loop: Header=BB2_223 Depth=1
	movl	%edi, 16(%rcx,%r11)
	incl	%edi
.LBB2_235:                              # %if.end.279.i
                                        #   in Loop: Header=BB2_223 Depth=1
	movq	%r12, %r13
	movq	144(%rsp), %rax         # 8-byte Reload
	incq	%r15
	cmpq	%rax, %r15
	jl	.LBB2_223
# BB#236:                               # %for.end.282.i.loopexit
	movq	168(%rsp), %r12         # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	80(%rsp), %r14          # 8-byte Reload
	jmp	.LBB2_237
.LBB2_221:                              # %for.end.149.for.end.282_crit_edge.i
	movq	4672(%rsp), %rsi
.LBB2_237:                              # %for.end.282.i
	movq	1728(%r12), %rdi
	movl	$.L.str.166, %edx
	callq	*24(%rdi)
	movslq	56(%rsp), %rcx          # 4-byte Folded Reload
	imulq	$1717986919, %rcx, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$34, %rdx
	addl	%eax, %edx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ecx
	movq	%r12, %rbp
	leaq	6224(%rsp), %r12
	movl	$.L.str.167, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	4288(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fwrite
	cmpl	$0, 8852(%rbp)
	je	.LBB2_239
# BB#238:                               # %if.then.293.i
	leaq	6208(%rsp), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	4288(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fwrite
.LBB2_239:                              # %if.end.300.i
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movq	4656(%rsp), %rsi
	incq	%rsi
	movl	$-2, %edx
	movq	%rbp, %rdi
	callq	pdf_record_usage
	movq	4656(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	30776(%rbp), %rcx
	movq	$0, 72(%rax,%rcx)
	movl	%r14d, 64(%rax,%rcx)
	movq	4288(%rsp), %rdi
	callq	gp_ftell_64
	movq	4656(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	30776(%rbp), %rdx
	movq	%rbp, %r15
	movq	%rax, 80(%rcx,%rdx)
	movq	4288(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 4704(%rsp)
	leaq	5184(%rsp), %r12
	movl	$.L.str.168, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	4288(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	4288(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 4688(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	subl	%r14d, %ecx
	incl	%ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	6224(%rsp), %r12
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	4288(%rsp), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movl	$.L.str.170, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movslq	%r14d, %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	4288(%rsp), %rcx
	movq	4656(%rsp), %rax
	addq	$2, %rax
	cmpq	%rax, %rdx
	jle	.LBB2_241
# BB#240:
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	jmp	.LBB2_243
.LBB2_241:                              # %for.body.353.i.preheader
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	addl	%eax, %edx
	movq	32(%rsp), %rax          # 8-byte Reload
	addl	%edx, %eax
	movq	24(%rsp), %rdx          # 8-byte Reload
	leal	2(%rdx,%rax), %eax
	movslq	%eax, %rbp
	decq	%rbp
	leaq	6224(%rsp), %rbx
	.align	16, 0x90
.LBB2_242:                              # %for.body.353.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$20, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	fwrite
	movq	4288(%rsp), %rcx
	movq	4656(%rsp), %rax
	addq	$2, %rax
	incq	%rbp
	cmpq	%rax, %rbp
	jle	.LBB2_242
.LBB2_243:                              # %for.end.360.i
	movq	%rcx, %rdi
	callq	gp_ftell_64
	movq	%rax, 4696(%rsp)
	movq	4656(%rsp), %rdx
	addq	$3, %rdx
	movq	4584(%rsp), %rax
	movq	4592(%rsp), %rcx
	movq	%r15, %r13
	movq	30776(%r13), %rsi
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	16(%rsi,%rcx), %ecx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	16(%rsi,%rax), %r8d
	leaq	5136(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	leaq	5184(%rsp), %rbx
	movl	$.L.str.171, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	4288(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movl	4584(%rsp), %edx
	leaq	184(%rsp), %rsi
	movq	%r13, %rdi
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_420
# BB#244:                               # %if.end.388.i
	movq	26648(%r13), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	leaq	184(%rsp), %rsi
	movq	%r13, %rdi
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_420
# BB#245:                               # %for.cond.396.preheader.i
	movl	30784(%r13), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movq	%r13, %r12
	jle	.LBB2_252
# BB#246:
	leaq	184(%rsp), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_247:                              # %for.body.400.i
                                        # =>This Inner Loop Header: Depth=1
	movq	30776(%r12), %rcx
	cmpl	$1, (%rcx,%rbx)
	jne	.LBB2_251
# BB#248:                               # %land.lhs.true.407.i
                                        #   in Loop: Header=BB2_247 Depth=1
	movq	26648(%r12), %rcx
	movq	(%rcx), %rcx
	cmpq	8(%rcx), %rbp
	je	.LBB2_251
# BB#249:                               # %if.then.415.i
                                        #   in Loop: Header=BB2_247 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%r12, %r13
	js	.LBB2_420
# BB#250:                               # %if.then.415.for.inc.422_crit_edge.i
                                        #   in Loop: Header=BB2_247 Depth=1
	movl	30784(%r13), %eax
	movq	%r13, %r12
.LBB2_251:                              # %for.inc.422.i
                                        #   in Loop: Header=BB2_247 Depth=1
	incq	%rbp
	movslq	%eax, %rcx
	addq	$48, %rbx
	cmpq	%rcx, %rbp
	jl	.LBB2_247
.LBB2_252:                              # %for.end.424.i
	movq	4288(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 4728(%rsp)
	movq	4656(%rsp), %rax
	addq	$2, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	%eax, %rbp
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movl	$-2, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_record_usage
	movq	30776(%r12), %rax
	movq	%rbp, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%rcx,2), %rbx
	movq	$0, 24(%rax,%rbx)
	movl	%ebp, 16(%rax,%rbx)
	movq	4288(%rsp), %rdi
	callq	gp_ftell_64
	movq	30776(%r12), %rcx
	movq	%rax, 32(%rcx,%rbx)
	movl	$1, %r15d
	cmpl	$1, 26544(%r12)
	jle	.LBB2_257
# BB#253:
	leaq	184(%rsp), %rbp
	.align	16, 0x90
.LBB2_254:                              # %for.body.451.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_277 Depth 2
	movq	26648(%r12), %rax
	movq	%r12, %r13
	imulq	$208, %r15, %r12
	movq	(%rax,%r12), %rax
	movl	8(%rax), %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_420
# BB#255:                               # %for.cond.463.preheader.i
                                        #   in Loop: Header=BB2_254 Depth=1
	movl	30784(%r13), %eax
	movq	%r13, %rdx
	testl	%eax, %eax
	jle	.LBB2_256
# BB#276:                               # %for.body.467.preheader.i
                                        #   in Loop: Header=BB2_254 Depth=1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movq	%rbp, %r13
	.align	16, 0x90
.LBB2_277:                              # %for.body.467.i
                                        #   Parent Loop BB2_254 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	30776(%rdx), %rcx
	movl	(%rcx,%r14), %ecx
	decl	%ecx
	cmpl	%r15d, %ecx
	jne	.LBB2_280
# BB#278:                               # %land.lhs.true.475.i
                                        #   in Loop: Header=BB2_277 Depth=2
	movq	26648(%rdx), %rcx
	movq	(%rcx,%r12), %rcx
	cmpq	8(%rcx), %rbx
	je	.LBB2_280
# BB#279:                               # %if.then.484.i
                                        #   in Loop: Header=BB2_277 Depth=2
	movq	%rdx, %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	rewrite_object
	movl	30784(%rbp), %eax
	movq	%rbp, %rdx
.LBB2_280:                              # %for.inc.487.i
                                        #   in Loop: Header=BB2_277 Depth=2
	incq	%rbx
	movslq	%eax, %rcx
	addq	$48, %r14
	cmpq	%rcx, %rbx
	jl	.LBB2_277
	jmp	.LBB2_281
.LBB2_256:                              #   in Loop: Header=BB2_254 Depth=1
	movq	%rbp, %r13
.LBB2_281:                              # %for.inc.490.i
                                        #   in Loop: Header=BB2_254 Depth=1
	movq	%r13, %rbp
	incq	%r15
	movq	%rdx, %r12
	movslq	26544(%r12), %rcx
	cmpq	%rcx, %r15
	jl	.LBB2_254
	jmp	.LBB2_258
.LBB2_257:                              # %for.end.424.for.cond.493.preheader_crit_edge.i
	movl	30784(%r12), %eax
.LBB2_258:                              # %for.cond.493.preheader.i
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB2_271
# BB#259:
	leaq	184(%rsp), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_260:                              # %for.body.497.i
                                        # =>This Inner Loop Header: Depth=1
	movq	30776(%r12), %rcx
	cmpl	$-1, (%rcx,%rbx)
	jne	.LBB2_263
# BB#261:                               # %if.then.504.i
                                        #   in Loop: Header=BB2_260 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%r12, %r13
	js	.LBB2_420
# BB#262:                               # %if.then.504.for.inc.511_crit_edge.i
                                        #   in Loop: Header=BB2_260 Depth=1
	movl	30784(%r13), %eax
	movq	%r13, %r12
.LBB2_263:                              # %for.inc.511.i
                                        #   in Loop: Header=BB2_260 Depth=1
	incq	%rbp
	movslq	%eax, %rcx
	addq	$48, %rbx
	cmpq	%rcx, %rbp
	jl	.LBB2_260
# BB#264:                               # %for.cond.514.preheader.i
	movl	$1, %ebp
	movl	$48, %ebx
	cmpl	$1, %eax
	jle	.LBB2_271
# BB#265:
	leaq	184(%rsp), %r15
.LBB2_266:                              # %for.body.518.i
                                        # =>This Inner Loop Header: Depth=1
	movq	30776(%r12), %rcx
	movl	(%rcx,%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB2_268
# BB#267:                               # %for.body.518.i
                                        #   in Loop: Header=BB2_266 Depth=1
	cmpl	$-3, %ecx
	jne	.LBB2_270
.LBB2_268:                              # %if.then.532.i
                                        #   in Loop: Header=BB2_266 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	rewrite_object
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%r12, %r13
	js	.LBB2_420
# BB#269:                               # %if.then.532.for.inc.539_crit_edge.i
                                        #   in Loop: Header=BB2_266 Depth=1
	movl	30784(%r13), %eax
	movq	%r13, %r12
.LBB2_270:                              # %for.inc.539.i
                                        #   in Loop: Header=BB2_266 Depth=1
	incq	%rbp
	movslq	%eax, %rcx
	addq	$48, %rbx
	cmpq	%rcx, %rbp
	jl	.LBB2_266
.LBB2_271:                              # %for.end.541.i
	movq	4288(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movq	184(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB2_284
# BB#272:                               # %for.end.541.i
	movq	30776(%r12), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	32(%rax,%rcx), %rbp
	testq	%rbp, %rbp
	je	.LBB2_284
# BB#273:
	leaq	6256(%rsp), %r14
.LBB2_274:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1024, %rbp             # imm = 0x400
	movq	4288(%rsp), %rcx
	jle	.LBB2_275
# BB#282:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB2_274 Depth=1
	movl	$1024, %esi             # imm = 0x400
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fread
	movq	%rax, %rbx
	movq	184(%rsp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fwrite
	cmpq	$1024, %rbp             # imm = 0x400
	je	.LBB2_284
# BB#283:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB2_274 Depth=1
	addq	$-1024, %rbp            # imm = 0xFFFFFFFFFFFFFC00
	testl	%ebx, %ebx
	jns	.LBB2_274
	jmp	.LBB2_284
.LBB2_275:                              # %while.cond.backedge.thread.i
	leaq	6256(%rsp), %rbx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	fread
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	fwrite
.LBB2_284:                              # %while.end.i
	xorl	%r14d, %r14d
	leaq	5184(%rsp), %rbx
	movl	$.L.str.172, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	4320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	callq	memset
	movw	$0, 4576(%rsp)
	movq	1728(%r12), %rdi
	movl	26544(%r12), %eax
	shll	$3, %eax
	leal	(%rax,%rax,4), %esi
	movl	$.L.str.173, %edx
	callq	*64(%rdi)
	movq	%rax, 4800(%rsp)
	movslq	26544(%r12), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	26544(%r12), %eax
	movl	%eax, 4796(%rsp)
	movq	1728(%r12), %rdi
	movl	4624(%rsp), %eax
	addl	4608(%rsp), %eax
	shll	$3, %eax
	leal	(%rax,%rax,2), %esi
	movl	$.L.str.174, %edx
	callq	*64(%rdi)
	movq	%rax, 4856(%rsp)
	movq	4624(%rsp), %rcx
	addq	4608(%rsp), %rcx
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	4624(%rsp), %eax
	addl	4608(%rsp), %eax
	movl	%eax, 4848(%rsp)
	leaq	4736(%rsp), %rdi
	xorl	%esi, %esi
	movl	$60, %edx
	callq	memset
	leaq	4808(%rsp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movl	$2147483647, 4736(%rsp) # imm = 0x7FFFFFFF
	movl	$2147483647, 4748(%rsp) # imm = 0x7FFFFFFF
	movl	$2147483647, 4760(%rsp) # imm = 0x7FFFFFFF
	movl	$2147483647, 4772(%rsp) # imm = 0x7FFFFFFF
	movslq	26544(%r12), %rax
	testq	%rax, %rax
	jle	.LBB2_290
# BB#285:                               # %for.body.631.lr.ph.i
	movq	26648(%r12), %rdx
	movq	30776(%r12), %rcx
	movq	4800(%rsp), %rsi
	xorl	%edi, %edi
	testb	$1, %al
	je	.LBB2_287
# BB#286:                               # %for.body.631.i.prol
	movslq	32(%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movupd	32(%rcx,%rdi), %xmm0
	movupd	%xmm0, 24(%rsi)
	movl	$1, %edi
.LBB2_287:                              # %for.body.631.lr.ph.i.split
	cmpl	$1, %eax
	je	.LBB2_290
# BB#288:                               # %for.body.631.lr.ph.i.split.split
	subq	%rdi, %rax
	incq	%rdi
	leaq	(%rdi,%rdi,4), %rbp
	leaq	24(%rsi,%rbp,8), %rsi
	imulq	$208, %rdi, %rdi
	leaq	32(%rdx,%rdi), %rdx
	.align	16, 0x90
.LBB2_289:                              # %for.body.631.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	-208(%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movups	32(%rcx,%rdi), %xmm0
	movups	%xmm0, -40(%rsi)
	movslq	(%rdx), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	movupd	32(%rcx,%rdi), %xmm0
	movupd	%xmm0, (%rsi)
	addq	$80, %rsi
	addq	$416, %rdx              # imm = 0x1A0
	addq	$-2, %rax
	jne	.LBB2_289
.LBB2_290:                              # %for.cond.647.preheader.i
	movl	30784(%r12), %r8d
	cmpl	$2, %r8d
	jl	.LBB2_311
# BB#291:                               # %for.body.651.lr.ph.i
	xorl	%r14d, %r14d
	movl	$1, %r9d
	.align	16, 0x90
.LBB2_292:                              # %for.body.651.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_297 Depth 2
	movq	%r9, 160(%rsp)          # 8-byte Spill
	movq	30776(%r12), %rbp
	leaq	(%r9,%r9,2), %rax
	shlq	$4, %rax
	movslq	(%rbp,%rax), %rcx
	cmpq	$-1, %rcx
	jl	.LBB2_310
# BB#293:                               # %for.body.651.i
                                        #   in Loop: Header=BB2_292 Depth=1
	testl	%ecx, %ecx
	je	.LBB2_310
# BB#294:                               # %if.end.664.i
                                        #   in Loop: Header=BB2_292 Depth=1
	cmpl	$-1, %ecx
	je	.LBB2_295
# BB#305:                               # %if.else.744.i
                                        #   in Loop: Header=BB2_292 Depth=1
	cmpl	26544(%r12), %ecx
	jge	.LBB2_310
# BB#306:                               # %if.then.762.i
                                        #   in Loop: Header=BB2_292 Depth=1
	leaq	-1(%rcx), %rdx
	movq	26648(%r12), %rsi
	imulq	$208, %rdx, %rdi
	movq	(%rsi,%rdi), %rsi
	movslq	8(%rsi), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	movq	32(%rbp,%rsi), %rbx
	movq	4800(%rsp), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	incl	(%rsi,%rdi,8)
	movq	32(%rbp,%rax), %rdx
	subq	%rbx, %rdx
	movl	4(%rsi,%rdi,8), %ebx
	cmpq	%rbx, %rdx
	jle	.LBB2_308
# BB#307:                               # %if.then.773.i
                                        #   in Loop: Header=BB2_292 Depth=1
	leaq	4(%rsi,%rdi,8), %rsi
	addl	40(%rbp,%rax), %edx
	movl	%edx, (%rsi)
.LBB2_308:                              # %if.end.780.i
                                        #   in Loop: Header=BB2_292 Depth=1
	cmpl	$1, %ecx
	jne	.LBB2_310
# BB#309:                               # %if.then.783.i
                                        #   in Loop: Header=BB2_292 Depth=1
	incl	4824(%rsp)
	jmp	.LBB2_310
.LBB2_295:                              # %for.cond.669.preheader.i
                                        #   in Loop: Header=BB2_292 Depth=1
	movl	4(%rbp,%rax), %ecx
	testl	%ecx, %ecx
	jle	.LBB2_304
# BB#296:                               # %for.body.672.lr.ph.i
                                        #   in Loop: Header=BB2_292 Depth=1
	movq	%r14, 64(%rsp)          # 8-byte Spill
	leaq	4(%rbp,%rax), %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	leaq	8(%rbp,%rax), %r13
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_297:                              # %for.body.672.i
                                        #   Parent Loop BB2_292 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rax
	movslq	(%rax,%r15,4), %rax
	cmpl	26544(%r12), %eax
	jge	.LBB2_302
# BB#298:                               # %if.end.680.i
                                        #   in Loop: Header=BB2_297 Depth=2
	leaq	(%rax,%rax,4), %rcx
	movq	4800(%rsp), %rdx
	leaq	-24(%rdx,%rcx,8), %r14
	cmpq	$0, -24(%rdx,%rcx,8)
	movq	1728(%r12), %rdi
	movq	64(%rdi), %rax
	movq	%r12, %rbp
	leaq	-32(%rdx,%rcx,8), %r12
	movl	-32(%rdx,%rcx,8), %ecx
	leal	4(,%rcx,4), %esi
	je	.LBB2_300
# BB#299:                               # %if.then.686.i
                                        #   in Loop: Header=BB2_297 Depth=2
	movl	$.L.str.175, %edx
	callq	*%rax
	movq	%rax, %rbx
	movq	(%r14), %rsi
	movl	(%r12), %edx
	shlq	$2, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	1728(%rbp), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.175, %edx
	callq	*24(%rdi)
	jmp	.LBB2_301
.LBB2_300:                              # %if.else.707.i
                                        #   in Loop: Header=BB2_297 Depth=2
	movl	$.L.str.176, %edx
	callq	*%rax
	movq	%rax, %rbx
.LBB2_301:                              # %if.end.719.i
                                        #   in Loop: Header=BB2_297 Depth=2
	movq	%rbx, (%r14)
	movl	(%r12), %eax
	movq	160(%rsp), %r9          # 8-byte Reload
	movl	%r9d, (%rbx,%rax,4)
	incl	(%r12)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	%rbp, %r12
.LBB2_302:                              # %cleanup.i
                                        #   in Loop: Header=BB2_297 Depth=2
	incq	%r15
	movslq	%ecx, %rax
	cmpq	%rax, %r15
	jl	.LBB2_297
# BB#303:                               # %for.end.729.i.loopexit
                                        #   in Loop: Header=BB2_292 Depth=1
	movl	30784(%r12), %r8d
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB2_304:                              # %for.end.729.i
                                        #   in Loop: Header=BB2_292 Depth=1
	movl	16(%rbp,%rax), %ecx
	movslq	%r14d, %r14
	movq	4856(%rsp), %rdx
	leaq	(%r14,%r14,2), %rsi
	movl	%ecx, (%rdx,%rsi,8)
	movq	32(%rbp,%rax), %rcx
	movq	%rcx, 8(%rdx,%rsi,8)
	movl	40(%rbp,%rax), %ecx
	incl	%r14d
	movl	%ecx, 16(%rdx,%rsi,8)
	.align	16, 0x90
.LBB2_310:                              # %cleanup.789.i
                                        #   in Loop: Header=BB2_292 Depth=1
	incq	%r9
	movslq	%r8d, %rcx
	cmpq	%rcx, %r9
	jl	.LBB2_292
.LBB2_311:                              # %for.end.794.i
	movl	%r14d, 4788(%rsp)
	movslq	4796(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB2_312
# BB#313:                               # %for.body.800.lr.ph.i
	movq	4736(%rsp), %r8
	movq	4800(%rsp), %rdx
	movq	%r8, %rsi
	shrq	$32, %rsi
	.align	16, 0x90
.LBB2_314:                              # %for.body.800.i
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rdx), %edi
	movl	(%rdx), %ebp
	addl	%edi, %ebp
	cmpl	%r8d, %ebp
	jae	.LBB2_316
# BB#315:                               # %if.then.811.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4736(%rsp)
	movl	%ebp, %r8d
.LBB2_316:                              # %if.end.817.i
                                        #   in Loop: Header=BB2_314 Depth=1
	cmpl	%esi, %ebp
	jbe	.LBB2_318
# BB#317:                               # %if.then.824.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4740(%rsp)
	movl	%ebp, %esi
.LBB2_318:                              # %if.end.830.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	4(%rdx), %ebp
	cmpl	4748(%rsp), %ebp
	jae	.LBB2_320
# BB#319:                               # %if.then.836.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4748(%rsp)
.LBB2_320:                              # %if.end.840.i
                                        #   in Loop: Header=BB2_314 Depth=1
	cmpl	4752(%rsp), %ebp
	jbe	.LBB2_322
# BB#321:                               # %if.then.845.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4752(%rsp)
.LBB2_322:                              # %if.end.849.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movq	24(%rdx), %rbp
	movq	4760(%rsp), %rbx
	movl	%ebx, %ecx
	shrq	$32, %rbx
	cmpq	%rcx, %rbp
	jge	.LBB2_324
# BB#323:                               # %if.then.856.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4760(%rsp)
.LBB2_324:                              # %if.end.861.i
                                        #   in Loop: Header=BB2_314 Depth=1
	cmpq	%rbx, %rbp
	jle	.LBB2_326
# BB#325:                               # %if.then.867.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4764(%rsp)
.LBB2_326:                              # %if.end.872.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movq	32(%rdx), %rbp
	movl	4772(%rsp), %ecx
	cmpq	%rcx, %rbp
	jge	.LBB2_328
# BB#327:                               # %if.then.879.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4772(%rsp)
.LBB2_328:                              # %if.end.884.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	4776(%rsp), %ecx
	cmpq	%rcx, %rbp
	jle	.LBB2_330
# BB#329:                               # %if.then.890.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%ebp, 4776(%rsp)
.LBB2_330:                              # %if.end.895.i
                                        #   in Loop: Header=BB2_314 Depth=1
	cmpl	4784(%rsp), %edi
	jbe	.LBB2_332
# BB#331:                               # %if.then.900.i
                                        #   in Loop: Header=BB2_314 Depth=1
	movl	%edi, 4784(%rsp)
.LBB2_332:                              # %if.end.904.i
                                        #   in Loop: Header=BB2_314 Depth=1
	addq	$40, %rdx
	decq	%rax
	jne	.LBB2_314
	jmp	.LBB2_333
.LBB2_312:                              # %for.end.794.for.end.907_crit_edge.i
	movl	4736(%rsp), %r8d
.LBB2_333:                              # %for.end.907.i
	movl	%r8d, %esi
	leaq	184(%rsp), %rbx
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movq	26648(%r12), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	30776(%r12), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movq	32(%rcx,%rax), %rsi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movw	$1, 4744(%rsp)
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4748(%rsp), %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4752(%rsp), %eax
	incl	%eax
	xorl	%ebp, %ebp
	subl	4748(%rsp), %eax
	movl	$0, %ecx
	je	.LBB2_336
# BB#334:                               # %while.body.950.lr.ph.i
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_335:                              # %while.body.950.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%rdx,%rax), %edx
	sarl	%edx
	incl	%ecx
	incl	%eax
	cmpl	$2, %eax
	movl	%edx, %eax
	ja	.LBB2_335
.LBB2_336:                              # %while.end.953.i
	movw	%cx, 4756(%rsp)
	movzwl	%cx, %esi
	leaq	184(%rsp), %rbx
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4760(%rsp), %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4764(%rsp), %eax
	incl	%eax
	subl	4760(%rsp), %eax
	je	.LBB2_339
# BB#337:                               # %while.body.972.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_338:                              # %while.body.972.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	%ecx
	incl	%ebp
	incl	%eax
	cmpl	$2, %eax
	movl	%ecx, %eax
	ja	.LBB2_338
.LBB2_339:                              # %while.end.975.i
	movw	%bp, 4768(%rsp)
	movzwl	%bp, %esi
	leaq	184(%rsp), %rbx
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4772(%rsp), %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4776(%rsp), %eax
	incl	%eax
	xorl	%ebp, %ebp
	subl	4772(%rsp), %eax
	movl	$0, %ecx
	je	.LBB2_342
# BB#340:                               # %while.body.994.lr.ph.i
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_341:                              # %while.body.994.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%rdx,%rax), %edx
	sarl	%edx
	incl	%ecx
	incl	%eax
	cmpl	$2, %eax
	movl	%edx, %eax
	ja	.LBB2_341
.LBB2_342:                              # %while.end.997.i
	movw	%cx, 4780(%rsp)
	movzwl	%cx, %esi
	leaq	184(%rsp), %rbx
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4784(%rsp), %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	4788(%rsp), %eax
	incl	%eax
	je	.LBB2_344
	.align	16, 0x90
.LBB2_343:                              # %while.body.1013.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	%ecx
	incl	%ebp
	incl	%eax
	cmpl	$2, %eax
	movl	%ecx, %eax
	ja	.LBB2_343
.LBB2_344:                              # %while.end.1016.i
	movw	%bp, 4792(%rsp)
	movzwl	%bp, %esi
	leaq	184(%rsp), %rbx
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	movl	$1, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	write_hint_stream
	xorl	%ebx, %ebx
	cmpl	$0, 26544(%r12)
	jle	.LBB2_374
# BB#345:
	leaq	184(%rsp), %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_346:                              # %for.body.1031.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4800(%rsp), %rax
	movl	(%rax,%rbx), %eax
	subl	4736(%rsp), %eax
	movslq	%eax, %r15
	movsbl	4744(%rsp), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.177, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	errprintf
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$40, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_346
# BB#347:                               # %for.cond.1050.preheader.i
	xorl	%ebp, %ebp
	movl	$4, %ebx
	testl	%eax, %eax
	jle	.LBB2_374
# BB#348:
	leaq	184(%rsp), %r14
	.align	16, 0x90
.LBB2_349:                              # %for.body.1054.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4800(%rsp), %rax
	movl	(%rax,%rbx), %eax
	subl	4748(%rsp), %eax
	movslq	%eax, %r15
	movsbl	4756(%rsp), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.178, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	errprintf
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$40, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_349
# BB#350:                               # %for.cond.1074.preheader.i
	xorl	%ebp, %ebp
	movl	$8, %ebx
	testl	%eax, %eax
	jle	.LBB2_374
# BB#351:
	leaq	184(%rsp), %r14
.LBB2_352:                              # %for.body.1078.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebp, %ebp
	je	.LBB2_353
# BB#376:                               # %if.else.1093.i
                                        #   in Loop: Header=BB2_352 Depth=1
	movq	4800(%rsp), %r15
	movl	(%r15,%rbx), %esi
	movsbl	4792(%rsp), %edx
	movq	%r14, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	(%r15,%rbx), %ecx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	jmp	.LBB2_377
.LBB2_353:                              # %if.then.1085.i
                                        #   in Loop: Header=BB2_352 Depth=1
	movsbl	4792(%rsp), %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.179, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
.LBB2_377:                              # %if.end.1103.i
                                        #   in Loop: Header=BB2_352 Depth=1
	callq	errprintf
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$40, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_352
# BB#354:                               # %for.cond.1107.preheader.i
	movl	$1, %r15d
	cmpl	$1, %eax
	jle	.LBB2_361
# BB#355:
	leaq	184(%rsp), %r14
.LBB2_356:                              # %for.body.1111.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_358 Depth 2
	movq	4800(%rsp), %rcx
	leaq	(%r15,%r15,4), %rdx
	cmpl	$0, 8(%rcx,%rdx,8)
	je	.LBB2_360
# BB#357:                               # %for.body.1120.lr.ph.i
                                        #   in Loop: Header=BB2_356 Depth=1
	movq	%r12, %r13
	leaq	8(%rcx,%rdx,8), %r12
	leaq	16(%rcx,%rdx,8), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_358:                              # %for.body.1120.i
                                        #   Parent Loop BB2_356 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp), %rax
	movl	(%rax,%rbx,4), %esi
	movsbl	4792(%rsp), %edx
	movq	%r14, %rdi
	callq	write_hint_stream
	movq	1728(%r13), %rdi
	movq	(%rbp), %rax
	movl	(%rax,%rbx,4), %r8d
	movl	$.L.str.180, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	movl	%ebx, %ecx
	callq	errprintf
	incq	%rbx
	cmpl	(%r12), %ebx
	jb	.LBB2_358
# BB#359:                               # %for.cond.1116.for.end.1136_crit_edge.i
                                        #   in Loop: Header=BB2_356 Depth=1
	movl	26544(%r13), %eax
	movq	%r13, %r12
.LBB2_360:                              # %for.end.1136.i
                                        #   in Loop: Header=BB2_356 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jl	.LBB2_356
.LBB2_361:                              # %for.cond.1140.preheader.i
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB2_374
# BB#362:
	leaq	184(%rsp), %r14
.LBB2_363:                              # %for.body.1144.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_365 Depth 2
	movq	4800(%rsp), %rcx
	leaq	(%r15,%r15,4), %rdx
	cmpl	$0, 8(%rcx,%rdx,8)
	je	.LBB2_367
# BB#364:                               # %for.body.1153.preheader.i
                                        #   in Loop: Header=BB2_363 Depth=1
	leaq	8(%rcx,%rdx,8), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_365:                              # %for.body.1153.i
                                        #   Parent Loop BB2_363 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.181, %esi
	xorl	%eax, %eax
	movl	%r15d, %edx
	movl	%ebx, %ecx
	callq	errprintf
	incq	%rbx
	cmpl	(%rbp), %ebx
	jb	.LBB2_365
# BB#366:                               # %for.cond.1149.for.end.1160_crit_edge.i
                                        #   in Loop: Header=BB2_363 Depth=1
	movl	26544(%r12), %eax
.LBB2_367:                              # %for.end.1160.i
                                        #   in Loop: Header=BB2_363 Depth=1
	incq	%r15
	movslq	%eax, %rcx
	cmpq	%rcx, %r15
	jl	.LBB2_363
# BB#368:                               # %for.cond.1164.preheader.i
	movl	$1, %ebp
	movl	$64, %ebx
	cmpl	$1, %eax
	jle	.LBB2_374
# BB#369:
	leaq	184(%rsp), %r14
.LBB2_370:                              # %for.body.1168.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4800(%rsp), %rax
	movq	(%rax,%rbx), %rax
	movl	4760(%rsp), %ecx
	subq	%rcx, %rax
	movslq	%eax, %r15
	movsbl	4768(%rsp), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.182, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	errprintf
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$40, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_370
# BB#371:                               # %for.cond.1190.preheader.i
	movl	$1, %ebp
	movl	$72, %ebx
	cmpl	$1, %eax
	jle	.LBB2_374
# BB#372:
	leaq	184(%rsp), %r14
.LBB2_373:                              # %for.body.1194.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4800(%rsp), %rax
	movq	(%rax,%rbx), %rax
	movl	4772(%rsp), %ecx
	subq	%rcx, %rax
	movslq	%eax, %r15
	movsbl	4780(%rsp), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.183, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	errprintf
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$40, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_373
.LBB2_374:                              # %for.end.1215.i
	movzbl	4577(%rsp), %esi
	movq	184(%rsp), %rcx
	movl	$1, %edx
	leaq	4320(%rsp), %rdi
	callq	fwrite
	movw	$0, 4576(%rsp)
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	4856(%rsp), %r8
	movl	(%r8), %ecx
	movl	%ecx, 4808(%rsp)
	movl	16(%r8), %edx
	movl	%edx, 4832(%rsp)
	movl	%edx, 4836(%rsp)
	movslq	4848(%rsp), %rsi
	cmpq	$1, %rsi
	jle	.LBB2_375
# BB#378:                               # %for.body.1236.lr.ph.i
	movq	%rax, 144(%rsp)         # 8-byte Spill
	decq	%rsi
	leaq	40(%r8), %rdi
	movl	%edx, %ebx
	.align	16, 0x90
.LBB2_379:                              # %for.body.1236.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -16(%rdi)
	jae	.LBB2_381
# BB#380:                               # %if.then.1245.i
                                        #   in Loop: Header=BB2_379 Depth=1
	movl	24(%r8), %ecx
	movl	%ecx, 4808(%rsp)
	movq	32(%r8), %rbp
	movq	%rbp, 4816(%rsp)
.LBB2_381:                              # %if.end.1255.i
                                        #   in Loop: Header=BB2_379 Depth=1
	movl	(%rdi), %ebp
	cmpl	%ebx, %ebp
	jae	.LBB2_383
# BB#382:                               # %if.then.1264.i
                                        #   in Loop: Header=BB2_379 Depth=1
	movl	%ebp, 4832(%rsp)
	movl	%ebp, %ebx
.LBB2_383:                              # %if.end.1271.i
                                        #   in Loop: Header=BB2_379 Depth=1
	cmpl	%edx, %ebp
	jbe	.LBB2_385
# BB#384:                               # %if.then.1280.i
                                        #   in Loop: Header=BB2_379 Depth=1
	movl	%ebp, 4836(%rsp)
	movl	%ebp, %edx
.LBB2_385:                              # %for.inc.1288.i
                                        #   in Loop: Header=BB2_379 Depth=1
	addq	$24, %rdi
	decq	%rsi
	jne	.LBB2_379
	jmp	.LBB2_386
.LBB2_375:
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB2_386:                              # %for.end.1290.i
	movl	4608(%rsp), %eax
	movl	%eax, 4824(%rsp)
	addl	4624(%rsp), %eax
	movl	%eax, 4828(%rsp)
	movl	%ecx, %esi
	leaq	184(%rsp), %rbp
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	4808(%rsp), %edx
	xorl	%ebx, %ebx
	movl	$.L.str.184, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	4816(%rsp), %rsi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movq	4816(%rsp), %rdx
	movl	$.L.str.185, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	4824(%rsp), %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	4824(%rsp), %edx
	movl	$.L.str.186, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	4828(%rsp), %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	4828(%rsp), %edx
	movl	$.L.str.187, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.188, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	4816(%rsp), %rsi
	movl	$16, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movq	4816(%rsp), %rdx
	movl	$.L.str.185, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	4832(%rsp), %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	4832(%rsp), %edx
	movl	$.L.str.189, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	4836(%rsp), %eax
	incl	%eax
	subl	4832(%rsp), %eax
	shrl	%eax
	je	.LBB2_388
	.align	16, 0x90
.LBB2_387:                              # %while.body.1362.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	sarl	%ecx
	incl	%ebx
	incl	%eax
	cmpl	$2, %eax
	movl	%ecx, %eax
	ja	.LBB2_387
.LBB2_388:                              # %while.end.1365.i
	incl	%ebx
	movw	%bx, 4840(%rsp)
	movzwl	%bx, %esi
	leaq	184(%rsp), %rdi
	movl	$16, %edx
	callq	write_hint_stream
	xorl	%ebp, %ebp
	movl	$16, %r15d
	cmpl	$0, 4848(%rsp)
	jle	.LBB2_397
# BB#389:
	leaq	184(%rsp), %r14
	.align	16, 0x90
.LBB2_390:                              # %for.body.1377.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4856(%rsp), %rax
	movl	(%rax,%r15), %ebx
	subl	4832(%rsp), %ebx
	movsbl	4840(%rsp), %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.190, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	errprintf
	incq	%rbp
	movslq	4848(%rsp), %rax
	addq	$24, %r15
	cmpq	%rax, %rbp
	jl	.LBB2_390
# BB#391:                               # %for.cond.1396.preheader.i
	testl	%eax, %eax
	jle	.LBB2_397
# BB#392:
	xorl	%ebx, %ebx
	leaq	184(%rsp), %rbp
	.align	16, 0x90
.LBB2_393:                              # %for.body.1400.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.191, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	incl	%ebx
	movl	4848(%rsp), %eax
	cmpl	%eax, %ebx
	jl	.LBB2_393
# BB#394:                               # %for.cond.1408.preheader.i
	testl	%eax, %eax
	jle	.LBB2_397
# BB#395:
	xorl	%ebx, %ebx
	leaq	184(%rsp), %rbp
.LBB2_396:                              # %for.body.1412.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	write_hint_stream
	movq	1728(%r12), %rdi
	movl	$.L.str.192, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	incl	%ebx
	cmpl	4848(%rsp), %ebx
	jl	.LBB2_396
.LBB2_397:                              # %for.end.1419.i
	movzbl	4577(%rsp), %esi
	movq	184(%rsp), %rcx
	movl	$1, %edx
	leaq	4320(%rsp), %rdi
	callq	fwrite
	movw	$0, 4576(%rsp)
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	5184(%rsp), %rbx
	movl	$.L.str.193, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	%r12, %rcx
	movq	%rax, %r12
	movq	30776(%rcx), %rax
	movq	%rcx, %r13
	movq	96(%rsp), %rcx          # 8-byte Reload
	subq	32(%rax,%rcx), %r12
	movq	4288(%rsp), %rcx
	leaq	6256(%rsp), %rdi
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	fread
	testl	%eax, %eax
	jle	.LBB2_400
# BB#398:
	leaq	6256(%rsp), %rbx
	.align	16, 0x90
.LBB2_399:                              # %if.then.1445.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rdx
	movq	184(%rsp), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	fwrite
	movq	4288(%rsp), %rcx
	movl	$1, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	fread
	testl	%eax, %eax
	jg	.LBB2_399
.LBB2_400:                              # %do.end.i
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, %rbx
	movq	4664(%rsp), %r15
	leaq	5184(%rsp), %rdi
	callq	strlen
	movq	%rax, %r14
	leaq	6224(%rsp), %rdi
	callq	strlen
	movq	80(%rsp), %rcx          # 8-byte Reload
	shlq	$34, %rcx
	leaq	(%rcx,%rcx,4), %rdx
	sarq	$32, %rdx
	cmpq	$4096, %r15             # imm = 0x1000
	movl	$4096, %esi             # imm = 0x1000
	cmovgeq	%r15, %rsi
	leaq	(%rbx,%rdx), %rcx
	addq	%r14, %rcx
	addq	%rax, %rcx
	subq	%rcx, %rsi
	movb	$32, 5135(%rsp)
	movq	184(%rsp), %rcx
	testq	%rsi, %rsi
	jle	.LBB2_403
# BB#401:                               # %while.body.1485.i.preheader
	cmpq	$4095, %r15             # imm = 0xFFF
	movl	$4096, %ebp             # imm = 0x1000
	cmovgq	%r15, %rbp
	incq	%rbp
	addq	%r14, %rbx
	addq	%rax, %rbx
	addq	%rdx, %rbx
	subq	%rbx, %rbp
	leaq	5135(%rsp), %rbx
	.align	16, 0x90
.LBB2_402:                              # %while.body.1485.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	fwrite
	movq	184(%rsp), %rcx
	decq	%rbp
	cmpq	$1, %rbp
	jg	.LBB2_402
.LBB2_403:                              # %while.end.1488.i
	movq	%rcx, %rdi
	callq	gp_ftell_64
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	6224(%rsp), %rbp
	movl	$.L.str.194, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	decq	%rax
	movq	%rax, 4720(%rsp)
	movl	$.L.str.195, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	cmpl	$2, %ebx
	jl	.LBB2_410
# BB#404:                               # %for.cond.1513.preheader.lr.ph.i
	movl	30784(%r13), %eax
	movl	$1, %ebx
	leaq	6224(%rsp), %rbp
	.align	16, 0x90
.LBB2_405:                              # %for.cond.1513.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_406 Depth 2
	testl	%eax, %eax
	movl	$32, %r15d
	movl	$0, %r14d
	jle	.LBB2_409
	.align	16, 0x90
.LBB2_406:                              # %for.body.1517.i
                                        #   Parent Loop BB2_405 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	30776(%r13), %rcx
	cmpl	%ebx, -16(%rcx,%r15)
	jne	.LBB2_408
# BB#407:                               # %if.then.1524.i
                                        #   in Loop: Header=BB2_406 Depth=2
	movq	(%rcx,%r15), %rdx
	addq	%r12, %rdx
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	184(%rsp), %rcx
	movl	$20, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	fwrite
	movl	30784(%r13), %eax
.LBB2_408:                              # %for.inc.1536.i
                                        #   in Loop: Header=BB2_406 Depth=2
	incq	%r14
	movslq	%eax, %rcx
	addq	$48, %r15
	cmpq	%rcx, %r14
	jl	.LBB2_406
.LBB2_409:                              # %for.inc.1539.i
                                        #   in Loop: Header=BB2_405 Depth=1
	incl	%ebx
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %ebx
	jne	.LBB2_405
.LBB2_410:                              # %for.end.1541.i
	movq	40(%rsp), %rax          # 8-byte Reload
	subq	%rax, 144(%rsp)         # 8-byte Folded Spill
	subq	%rax, 160(%rsp)         # 8-byte Folded Spill
	movq	4688(%rsp), %rcx
	leaq	5184(%rsp), %rbp
	movl	$.L.str.196, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	80(%rsp), %r14          # 8-byte Reload
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	callq	gp_ftell_64
	movq	%rax, 4712(%rsp)
	movq	184(%rsp), %rdi
	movq	4704(%rsp), %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movq	4712(%rsp), %rcx
	movl	$.L.str.197, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	30776(%r13), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	32(%rax,%rcx), %rdx
	movl	$.L.str.198, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movl	$.L.str.199, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movq	%r13, %r12
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	26648(%r12), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	30776(%r12), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	16(%rcx,%rax), %edx
	movq	4728(%rsp), %rcx
	movl	$.L.str.200, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movl	26544(%r12), %edx
	movq	4720(%rsp), %rcx
	movl	$.L.str.201, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	movq	4688(%rsp), %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	leaq	6224(%rsp), %rbx
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	120(%rsp), %rcx         # 8-byte Reload
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	4656(%rsp), %rcx
	leaq	2(%rcx), %rax
	cmpq	%rax, 128(%rsp)         # 8-byte Folded Reload
	jg	.LBB2_419
# BB#411:                               # %for.cond.1624.preheader.lr.ph.i
	movl	30784(%r12), %eax
	movslq	%r14d, %r15
	leaq	6224(%rsp), %r14
	.align	16, 0x90
.LBB2_412:                              # %for.cond.1624.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_414 Depth 2
	testl	%eax, %eax
	jle	.LBB2_418
# BB#413:                               # %for.body.1628.preheader.i
                                        #   in Loop: Header=BB2_412 Depth=1
	movl	$32, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_414:                              # %for.body.1628.i
                                        #   Parent Loop BB2_412 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	30776(%r12), %rcx
	cmpl	%r15d, -16(%rcx,%rbp)
	jne	.LBB2_416
# BB#415:                               # %if.then.1635.i
                                        #   in Loop: Header=BB2_414 Depth=2
	movq	(%rcx,%rbp), %rdx
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	184(%rsp), %rcx
	movl	$20, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fwrite
	movl	30784(%r12), %eax
.LBB2_416:                              # %for.inc.1646.i
                                        #   in Loop: Header=BB2_414 Depth=2
	incq	%rbx
	movslq	%eax, %rcx
	addq	$48, %rbp
	cmpq	%rcx, %rbx
	jl	.LBB2_414
# BB#417:                               # %for.inc.1649.i.loopexit
                                        #   in Loop: Header=BB2_412 Depth=1
	movq	4656(%rsp), %rcx
.LBB2_418:                              # %for.inc.1649.i
                                        #   in Loop: Header=BB2_412 Depth=1
	incq	%r15
	movslq	%r15d, %rdx
	leaq	2(%rcx), %rsi
	cmpq	%rsi, %rdx
	jle	.LBB2_412
.LBB2_419:                              # %for.end.1651.i
	movq	184(%rsp), %rdi
	movq	4696(%rsp), %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movq	4656(%rsp), %rdx
	addq	$3, %rdx
	movq	4584(%rsp), %rax
	movq	4592(%rsp), %rcx
	movq	30776(%r12), %rsi
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movl	16(%rsi,%rcx), %ecx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	16(%rsi,%rax), %r8d
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rsp)
	leaq	5136(%rsp), %r9
	movq	%r9, (%rsp)
	leaq	5184(%rsp), %rbp
	movl	$.L.str.202, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	184(%rsp), %rdi
	movq	30776(%r12), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	32(%rax,%rcx), %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	movl	%eax, %r14d
	movl	$.L.str.203, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	160(%rsp), %rcx         # 8-byte Reload
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movl	$.L.str.204, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	144(%rsp), %rdx         # 8-byte Reload
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	184(%rsp), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	%r12, %r13
.LBB2_420:                              # %error.i
	movq	%r13, %rdi
	leaq	192(%rsp), %rsi
	movl	%r14d, %edx
	callq	pdf_close_temp_file
	movl	26544(%r13), %eax
	xorl	%ebx, %ebx
	movl	$16, %ebp
	testl	%eax, %eax
	movq	%r13, %r12
	movq	104(%rsp), %r15         # 8-byte Reload
	jle	.LBB2_424
	.align	16, 0x90
.LBB2_421:                              # %for.body.1700.i
                                        # =>This Inner Loop Header: Depth=1
	movq	4800(%rsp), %rcx
	movq	(%rcx,%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_423
# BB#422:                               # %if.then.1707.i
                                        #   in Loop: Header=BB2_421 Depth=1
	movq	1728(%r12), %rdi
	movl	$.L.str.205, %edx
	callq	*24(%rdi)
	movl	26544(%r12), %eax
.LBB2_423:                              # %if.end.1713.i
                                        #   in Loop: Header=BB2_421 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	addq	$40, %rbp
	cmpq	%rcx, %rbx
	jl	.LBB2_421
.LBB2_424:                              # %for.end.1716.i
	movq	1728(%r12), %rdi
	movq	4800(%rsp), %rsi
	movl	$.L.str.206, %edx
	callq	*24(%rdi)
	movq	1728(%r12), %rdi
	movq	4856(%rsp), %rsi
	movl	$.L.str.207, %edx
	callq	*24(%rdi)
	movq	112(%rsp), %r13         # 8-byte Reload
.LBB2_425:                              # %pdf_linearise.exit
	movl	30784(%r12), %eax
	testl	%eax, %eax
	jle	.LBB2_430
# BB#426:                               # %for.body.657.lr.ph
	xorl	%ebx, %ebx
	movl	$8, %ebp
	.align	16, 0x90
.LBB2_427:                              # %for.body.657
                                        # =>This Inner Loop Header: Depth=1
	movq	30776(%r12), %rcx
	movq	(%rcx,%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_429
# BB#428:                               # %if.then.661
                                        #   in Loop: Header=BB2_427 Depth=1
	movq	1728(%r12), %rdi
	movl	$.L.str.104, %edx
	callq	*24(%rdi)
	movl	30784(%r12), %eax
.LBB2_429:                              # %for.inc.671
                                        #   in Loop: Header=BB2_427 Depth=1
	incq	%rbx
	movslq	%eax, %rcx
	addq	$48, %rbp
	cmpq	%rcx, %rbx
	jl	.LBB2_427
.LBB2_430:                              # %for.end.673
	movq	1728(%r12), %rdi
	movq	30776(%r12), %rsi
	movl	$.L.str.105, %edx
	callq	*24(%rdi)
.LBB2_431:                              # %if.end.679
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_432:                              # %for.body.690
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_434 Depth 2
	movq	(%r15,%rbp,8), %rbx
	jmp	.LBB2_434
	.align	16, 0x90
.LBB2_433:                              # %for.body.700
                                        #   in Loop: Header=BB2_434 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	font_resource_free
	movq	(%rbx), %rbx
.LBB2_434:                              # %for.body.700
                                        #   Parent Loop BB2_432 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB2_433
# BB#435:                               # %for.end.703
                                        #   in Loop: Header=BB2_432 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB2_432
# BB#436:                               # %for.cond.709.preheader
	xorl	%ebp, %ebp
	movq	152(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB2_437:                              # %for.body.717
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_439 Depth 2
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%rbp,8), %rbx
	jmp	.LBB2_439
	.align	16, 0x90
.LBB2_438:                              # %for.body.727
                                        #   in Loop: Header=BB2_439 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	font_resource_free
	movq	(%rbx), %rbx
.LBB2_439:                              # %for.body.727
                                        #   Parent Loop BB2_437 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB2_438
# BB#440:                               # %for.end.731
                                        #   in Loop: Header=BB2_437 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB2_437
# BB#441:                               # %for.cond.737.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_442:                              # %for.body.745
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_444 Depth 2
	movq	27952(%r12,%rbp,8), %rbx
	jmp	.LBB2_444
	.align	16, 0x90
.LBB2_443:                              # %for.body.755
                                        #   in Loop: Header=BB2_444 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_font_descriptor_free
	movq	(%rbx), %rbx
.LBB2_444:                              # %for.body.755
                                        #   Parent Loop BB2_442 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB2_443
# BB#445:                               # %for.end.758
                                        #   in Loop: Header=BB2_442 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB2_442
# BB#446:                               # %for.cond.764.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_447:                              # %for.body.772
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_448 Depth 2
	movq	27568(%r12,%rbx,8), %rbp
	jmp	.LBB2_448
	.align	16, 0x90
.LBB2_451:                              # %if.end.792
                                        #   in Loop: Header=BB2_448 Depth=2
	movq	(%rbp), %rbp
.LBB2_448:                              # %for.body.772
                                        #   Parent Loop BB2_447 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_452
# BB#449:                               # %for.body.782
                                        #   in Loop: Header=BB2_448 Depth=2
	movq	64(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_451
# BB#450:                               # %if.then.785
                                        #   in Loop: Header=BB2_448 Depth=2
	movq	1728(%r12), %rdi
	movl	$.L.str.106, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_451
	.align	16, 0x90
.LBB2_452:                              # %for.end.794
                                        #   in Loop: Header=BB2_447 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_447
# BB#453:                               # %for.cond.800.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_454:                              # %for.body.808
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_456 Depth 2
	movq	26672(%r12,%rbp,8), %rbx
	jmp	.LBB2_456
	.align	16, 0x90
.LBB2_455:                              # %for.body.818
                                        #   in Loop: Header=BB2_456 Depth=2
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	free_color_space
	movq	(%rbx), %rbx
.LBB2_456:                              # %for.body.818
                                        #   Parent Loop BB2_454 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB2_455
# BB#457:                               # %for.end.821
                                        #   in Loop: Header=BB2_454 Depth=1
	incq	%rbp
	cmpq	$16, %rbp
	jne	.LBB2_454
# BB#458:                               # %for.cond.827.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_459:                              # %for.body.835
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_460 Depth 2
	movq	26800(%r12,%rbx,8), %rbp
	jmp	.LBB2_460
	.align	16, 0x90
.LBB2_463:                              # %if.end.856
                                        #   in Loop: Header=BB2_460 Depth=2
	movq	(%rbp), %rbp
.LBB2_460:                              # %for.body.835
                                        #   Parent Loop BB2_459 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_464
# BB#461:                               # %for.body.845
                                        #   in Loop: Header=BB2_460 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_463
# BB#462:                               # %if.then.848
                                        #   in Loop: Header=BB2_460 Depth=2
	movl	$.L.str.107, %esi
	callq	cos_release
	movq	1728(%r12), %rdi
	movq	64(%rbp), %rsi
	movl	$.L.str.108, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_463
	.align	16, 0x90
.LBB2_464:                              # %for.end.858
                                        #   in Loop: Header=BB2_459 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_459
# BB#465:                               # %for.cond.864.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_466:                              # %for.body.872
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_467 Depth 2
	movq	26928(%r12,%rbx,8), %rbp
	jmp	.LBB2_467
	.align	16, 0x90
.LBB2_470:                              # %if.end.893
                                        #   in Loop: Header=BB2_467 Depth=2
	movq	(%rbp), %rbp
.LBB2_467:                              # %for.body.872
                                        #   Parent Loop BB2_466 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_471
# BB#468:                               # %for.body.882
                                        #   in Loop: Header=BB2_467 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_470
# BB#469:                               # %if.then.885
                                        #   in Loop: Header=BB2_467 Depth=2
	movl	$.L.str.109, %esi
	callq	cos_release
	movq	1728(%r12), %rdi
	movq	64(%rbp), %rsi
	movl	$.L.str.110, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_470
	.align	16, 0x90
.LBB2_471:                              # %for.end.895
                                        #   in Loop: Header=BB2_466 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_466
# BB#472:                               # %for.cond.901.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_473:                              # %for.body.909
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_474 Depth 2
	movq	27056(%r12,%rbx,8), %rbp
	jmp	.LBB2_474
	.align	16, 0x90
.LBB2_477:                              # %if.end.930
                                        #   in Loop: Header=BB2_474 Depth=2
	movq	(%rbp), %rbp
.LBB2_474:                              # %for.body.909
                                        #   Parent Loop BB2_473 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_478
# BB#475:                               # %for.body.919
                                        #   in Loop: Header=BB2_474 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_477
# BB#476:                               # %if.then.922
                                        #   in Loop: Header=BB2_474 Depth=2
	movl	$.L.str.111, %esi
	callq	cos_release
	movq	1728(%r12), %rdi
	movq	64(%rbp), %rsi
	movl	$.L.str.112, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_477
	.align	16, 0x90
.LBB2_478:                              # %for.end.932
                                        #   in Loop: Header=BB2_473 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_473
# BB#479:                               # %for.cond.938.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_480:                              # %for.body.946
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_481 Depth 2
	movq	28080(%r12,%rbx,8), %rbp
	jmp	.LBB2_481
	.align	16, 0x90
.LBB2_484:                              # %if.end.967
                                        #   in Loop: Header=BB2_481 Depth=2
	movq	(%rbp), %rbp
.LBB2_481:                              # %for.body.946
                                        #   Parent Loop BB2_480 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_485
# BB#482:                               # %for.body.956
                                        #   in Loop: Header=BB2_481 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_484
# BB#483:                               # %if.then.959
                                        #   in Loop: Header=BB2_481 Depth=2
	movl	$.L.str.113, %esi
	callq	cos_release
	movq	1728(%r12), %rdi
	movq	64(%rbp), %rsi
	movl	$.L.str.114, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_484
	.align	16, 0x90
.LBB2_485:                              # %for.end.969
                                        #   in Loop: Header=BB2_480 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_480
# BB#486:                               # %for.cond.975.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_487:                              # %for.body.983
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_488 Depth 2
	movq	28336(%r12,%rbx,8), %rbp
	jmp	.LBB2_488
	.align	16, 0x90
.LBB2_491:                              # %if.end.1004
                                        #   in Loop: Header=BB2_488 Depth=2
	movq	(%rbp), %rbp
.LBB2_488:                              # %for.body.983
                                        #   Parent Loop BB2_487 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB2_492
# BB#489:                               # %for.body.993
                                        #   in Loop: Header=BB2_488 Depth=2
	movq	64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_491
# BB#490:                               # %if.then.996
                                        #   in Loop: Header=BB2_488 Depth=2
	movl	$.L.str.115, %esi
	callq	cos_release
	movq	1728(%r12), %rdi
	movq	64(%rbp), %rsi
	movl	$.L.str.116, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbp)
	jmp	.LBB2_491
	.align	16, 0x90
.LBB2_492:                              # %for.end.1006
                                        #   in Loop: Header=BB2_487 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB2_487
# BB#493:                               # %for.cond.1012.preheader
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_494:                              # %for.cond.1016.preheader
                                        # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	js	.LBB2_496
# BB#495:                               # %vector.body
                                        #   in Loop: Header=BB2_494 Depth=1
	movupd	%xmm0, 26672(%r12,%rax)
	movupd	%xmm0, 26688(%r12,%rax)
	movupd	%xmm0, 26704(%r12,%rax)
	movupd	%xmm0, 26720(%r12,%rax)
	movupd	%xmm0, 26736(%r12,%rax)
	movupd	%xmm0, 26752(%r12,%rax)
	movupd	%xmm0, 26768(%r12,%rax)
	movupd	%xmm0, 26784(%r12,%rax)
.LBB2_496:                              # %for.inc.1034
                                        #   in Loop: Header=BB2_494 Depth=1
	subq	$-128, %rax
	cmpq	$1920, %rax             # imm = 0x780
	jne	.LBB2_494
# BB#497:                               # %for.end.1036
	movq	28648(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_499
	.align	16, 0x90
.LBB2_498:                              # %for.body.1041
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rbx
	movl	$.L.str.117, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB2_498
.LBB2_499:                              # %for.end.1045
	movq	$0, 28648(%r12)
	movq	28768(%r12), %rdi
	movl	$.L.str.118, %esi
	callq	cos_release
	movq	28768(%r12), %rsi
	movl	$.L.str.119, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 28768(%r12)
	movq	28760(%r12), %rdi
	callq	cos_dict_objects_delete
	movq	28760(%r12), %rdi
	movl	$.L.str.120, %esi
	callq	cos_free
	movq	$0, 28760(%r12)
	movq	28752(%r12), %rdi
	callq	cos_dict_objects_delete
	movq	28752(%r12), %rdi
	movl	$.L.str.121, %esi
	callq	cos_free
	movq	$0, 28752(%r12)
	movq	$0, 28784(%r12)
	xorl	%ebx, %ebx
	cmpl	$0, 26544(%r12)
	jle	.LBB2_504
# BB#500:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_501:                              # %for.body.1066
                                        # =>This Inner Loop Header: Depth=1
	movq	26648(%r12), %rax
	movq	(%rax,%rbx), %rdi
	movl	$.L.str.122, %esi
	callq	cos_release
	movq	26648(%r12), %rax
	movq	104(%rax,%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_503
# BB#502:                               # %if.then.1075
                                        #   in Loop: Header=BB2_501 Depth=1
	movl	$.L.str.123, %esi
	callq	cos_release
	movq	26648(%r12), %rax
	movq	104(%rax,%rbx), %rsi
	movl	$.L.str.124, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	26648(%r12), %rax
.LBB2_503:                              # %if.end.1086
                                        #   in Loop: Header=BB2_501 Depth=1
	movq	(%rax,%rbx), %rsi
	movl	$.L.str.125, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	incq	%rbp
	movslq	26544(%r12), %rax
	addq	$208, %rbx
	cmpq	%rax, %rbp
	jl	.LBB2_501
.LBB2_504:                              # %for.end.1095
	movl	%r14d, 144(%rsp)        # 4-byte Spill
	movq	26648(%r12), %rsi
	movl	$.L.str.126, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 26648(%r12)
	movl	$0, 26656(%r12)
	movq	30400(%r12), %rsi
	movl	$.L.str.127, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 30400(%r12)
	movq	26592(%r12), %rsi
	movq	%r13, %rdi
	callq	text_data_free
	movq	$0, 26592(%r12)
	movq	26528(%r12), %rdi
	movl	$.L.str.128, %esi
	callq	cos_release
	movq	26528(%r12), %rsi
	movl	$.L.str.129, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 26528(%r12)
	cmpl	$0, 28860(%r12)
	jle	.LBB2_505
# BB#506:                               # %for.body.1114.lr.ph
	leaq	28848(%r12), %r14
	xorl	%ebp, %ebp
	movl	$1488, %ebx             # imm = 0x5D0
	.align	16, 0x90
.LBB2_507:                              # %for.body.1114
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r12), %rax
	movq	200(%rax), %rdi
	movq	28848(%r12), %rax
	movq	(%rax,%rbx), %rsi
	movl	$.L.str.130, %edx
	callq	*24(%rdi)
	incq	%rbp
	movslq	28860(%r12), %rax
	addq	$1512, %rbx             # imm = 0x5E8
	cmpq	%rax, %rbp
	jl	.LBB2_507
	jmp	.LBB2_508
.LBB2_505:                              # %for.end.1095.for.end.1124_crit_edge
	leaq	28848(%r12), %r14
.LBB2_508:                              # %for.end.1124
	movq	1728(%r12), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.131, %edx
	callq	*24(%rdi)
	movq	28776(%r12), %rdi
	movl	$.L.str.132, %esi
	callq	cos_release
	movq	28776(%r12), %rsi
	movl	$.L.str.133, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 28776(%r12)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 26512(%r12)
	movq	28672(%r12), %rsi
	movl	$.L.str.29, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
	movq	$0, 28672(%r12)
	movl	$-1, 28680(%r12)
	movl	$0, 28684(%r12)
	cmpl	$0, 9548(%r12)
	jne	.LBB2_510
# BB#509:                               # %if.then.1143
	movl	$4, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB2_510:                              # %while.cond.1146
	movl	144(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB2_511:                              # %while.cond.1146
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rsi
	movq	240(%rsi), %r15
	testq	%r15, %r15
	jne	.LBB2_511
# BB#512:                               # %while.end.1151
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	s_close_filters
	testl	%eax, %eax
	movl	$-12, %ebx
	cmovnsl	%ebp, %ebx
	testl	%ebp, %ebp
	cmovnel	%ebp, %ebx
	movq	%r12, %rdi
	callq	gdev_vector_close_file
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	movl	26544(%r12), %eax
	incl	%eax
	cmpl	%eax, 26548(%r12)
	jl	.LBB2_514
# BB#513:                               # %if.then.1170
	movq	24(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	26548(%r12), %edx
	movl	26544(%r12), %ecx
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB2_514:                              # %if.end.1178
	leaq	22376(%r12), %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	pdf_close_temp_file
	leaq	18248(%r12), %rsi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	pdf_close_temp_file
	leaq	14120(%r12), %rsi
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	pdf_close_temp_file
	movq	%r12, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	%eax, %edx
	callq	pdf_close_temp_file
	movl	%eax, %ebp
.LBB2_515:                              # %cleanup
	movl	%ebp, %eax
	addq	$7288, %rsp             # imm = 0x1C78
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_close, .Lfunc_end2-pdf_close
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_233
	.quad	.LBB2_231
	.quad	.LBB2_234
	.quad	.LBB2_232
	.quad	.LBB2_231

	.text
	.globl	pdf_initialize_ids
	.align	16, 0x90
	.type	pdf_initialize_ids,@function
pdf_initialize_ids:                     # @pdf_initialize_ids
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 40
	subq	$312, %rsp              # imm = 0x138
.Ltmp40:
	.cfi_def_cfa_offset 352
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	9472(%r14), %rax
	movq	%rax, 26504(%r14)
	movq	$.L.str.6, 296(%rsp)
	movl	$.L.str.6, %edi
	callq	strlen
	movl	%eax, 304(%rsp)
	movl	$1, 308(%rsp)
	leaq	26512(%r14), %rdx
	leaq	296(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_create_named_dict
	movq	$.L.str.7, 296(%rsp)
	movl	$.L.str.7, %edi
	callq	strlen
	movl	%eax, 304(%rsp)
	movl	$1, 308(%rsp)
	leaq	26520(%r14), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_create_named_dict
	leaq	96(%rsp), %r15
	movq	%r15, %rdi
	callq	pdf_store_default_Producer
	movq	26520(%r14), %rbx
	movq	%r15, %rdi
	callq	strlen
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	leaq	88(%rsp), %rbx
	movq	%rbx, %rdi
	callq	time
	movq	%rbx, %rdi
	callq	gmtime
	movq	48(%rax), %rcx
	movq	%rcx, 144(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$-1, 128(%rsp)
	movq	88(%rsp), %rbx
	leaq	96(%rsp), %rdi
	callq	mktime
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	difftime
	cvttsd2si	%xmm0, %eax
	movl	$90, %r15d
	testl	%eax, %eax
	je	.LBB3_2
# BB#1:                                 # %cond.false
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	43(%rcx,%rcx), %r15d
.LBB3_2:                                # %cond.end
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movslq	%ecx, %rbx
	imulq	$-2004318071, %rbx, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%ebx, %ebp
	addl	%eax, %ebp
	movl	%ebp, %eax
	shrl	$31, %eax
	sarl	$5, %ebp
	addl	%eax, %ebp
	leaq	88(%rsp), %rdi
	callq	localtime
	movq	48(%rax), %rcx
	movq	%rcx, 144(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$1900, %edx             # imm = 0x76C
	addl	116(%rsp), %edx
	movl	112(%rsp), %ecx
	incl	%ecx
	movl	108(%rsp), %r8d
	movl	104(%rsp), %r9d
	movl	96(%rsp), %r10d
	movl	100(%rsp), %esi
	imulq	$-1851608123, %rbx, %rdi # imm = 0xFFFFFFFF91A2B3C5
	shrq	$32, %rdi
	addl	%edi, %ebx
	movl	%ebx, %edi
	shrl	$31, %edi
	sarl	$11, %ebx
	addl	%edi, %ebx
	movslq	%ebp, %rdi
	imulq	$-2004318071, %rdi, %rbp # imm = 0xFFFFFFFF88888889
	shrq	$32, %rbp
	movl	%edi, %eax
	addl	%ebp, %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	sarl	$5, %eax
	addl	%ebp, %eax
	imull	$60, %eax, %eax
	subl	%eax, %edi
	movl	%r15d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movl	%esi, (%rsp)
	movl	%ebx, 24(%rsp)
	movl	%edi, 32(%rsp)
	leaq	48(%rsp), %r15
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	26520(%r14), %rbx
	movq	%r15, %rdi
	callq	strlen
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	movq	26520(%r14), %rbx
	movq	%r15, %rdi
	callq	strlen
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	leaq	26528(%r14), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	pdf_create_named_dict
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_initialize_ids, .Lfunc_end3-pdf_initialize_ids
	.cfi_endproc

	.globl	pdf_set_process_color_model
	.align	16, 0x90
	.type	pdf_set_process_color_model,@function
pdf_set_process_color_model:            # @pdf_set_process_color_model
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	%esi, 30456(%rbx)
	leaq	96(%rbx), %rdi
	movslq	%esi, %r14
	imulq	$720, %r14, %rax        # imm = 0x2D0
	leaq	pdf_set_process_color_model.pcm_color_info(%rax), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movq	%rbx, %rdi
	callq	set_linear_color_bits_mask_shift
	movl	$1, 136(%rbx)
	movl	%r14d, %eax
	cmpl	$3, %r14d
	ja	.LBB4_6
# BB#1:                                 # %entry
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_2:                                # %sw.bb
	movq	$gx_default_gray_map_rgb_color, 1184(%rbx)
	movq	$gx_default_gray_map_color_rgb, 1192(%rbx)
	movq	$0, 1264(%rbx)
	movq	$gx_default_DevGray_get_color_mapping_procs, 1536(%rbx)
	movq	$gx_default_DevGray_get_color_comp_index, 1544(%rbx)
	movq	$gx_default_gray_encode, 1552(%rbx)
	movq	$gx_default_decode_color, 1560(%rbx)
	jmp	.LBB4_6
.LBB4_3:                                # %sw.bb.8
	movq	$gx_default_rgb_map_rgb_color, 1184(%rbx)
	movq	$gx_default_rgb_map_color_rgb, 1192(%rbx)
	movq	$0, 1264(%rbx)
	movq	$gx_default_DevRGB_get_color_mapping_procs, 1536(%rbx)
	movq	$gx_default_DevRGB_get_color_comp_index, 1544(%rbx)
	movq	$gx_default_rgb_map_rgb_color, 1552(%rbx)
	movq	$gx_default_rgb_map_color_rgb, 1560(%rbx)
	jmp	.LBB4_6
.LBB4_4:                                # %sw.bb.23
	movq	$.L.str.14, 784(%rbx)
.LBB4_5:                                # %sw.bb.25
	movq	$0, 1184(%rbx)
	movq	$cmyk_8bit_map_color_rgb, 1192(%rbx)
	movq	$cmyk_8bit_map_cmyk_color, 1264(%rbx)
	movq	$gx_default_DevCMYK_get_color_mapping_procs, 1536(%rbx)
	movq	$gx_default_DevCMYK_get_color_comp_index, 1544(%rbx)
	movq	$cmyk_8bit_map_cmyk_color, 1552(%rbx)
	movq	$cmyk_8bit_map_color_rgb, 1560(%rbx)
.LBB4_6:                                # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	pdf_set_process_color_model, .Lfunc_end4-pdf_set_process_color_model
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_5
	.quad	.LBB4_4

	.text
	.globl	pdf_reset_text
	.align	16, 0x90
	.type	pdf_reset_text,@function
pdf_reset_text:                         # @pdf_reset_text
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rdi
	jmp	pdf_reset_text_state    # TAILCALL
.Lfunc_end5:
	.size	pdf_reset_text, .Lfunc_end5-pdf_reset_text
	.cfi_endproc

	.globl	pdf_record_usage
	.align	16, 0x90
	.type	pdf_record_usage,@function
pdf_record_usage:                       # @pdf_record_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 64
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r15, %r15
	js	.LBB6_17
# BB#1:                                 # %entry
	movl	30764(%r14), %eax
	testl	%eax, %eax
	je	.LBB6_17
# BB#2:                                 # %if.end.2
	movslq	30784(%r14), %rax
	cmpq	%r15, %rax
	jle	.LBB6_4
# BB#3:                                 # %if.end.2.if.end.36_crit_edge
	leaq	30776(%r14), %rbp
	jmp	.LBB6_7
.LBB6_4:                                # %if.then.5
	movq	1728(%r14), %rdi
	testl	%eax, %eax
	je	.LBB6_5
# BB#6:                                 # %if.else
	leaq	30776(%r14), %rbp
	movq	30776(%r14), %rsi
	leal	1(%r15), %r12d
	movl	$.L.str.16, %ecx
	movl	%r12d, %edx
	callq	*16(%rdi)
	movq	%rax, %r13
	movslq	30784(%r14), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r13), %rdi
	movq	%r15, %rcx
	subq	%rax, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$4, %rdx
	addq	$48, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	%r12d, 30784(%r14)
	movq	%r13, 30776(%r14)
	jmp	.LBB6_7
.LBB6_5:                                # %if.then.9
	leaq	1(%r15), %r12
	movl	%r12d, 30784(%r14)
	movl	$st_pdf_linearisation_record_element, %edx
	movl	$.L.str.15, %ecx
	movl	%r12d, %esi
	callq	*104(%rdi)
	leaq	30776(%r14), %rbp
	movq	%rax, 30776(%r14)
	shlq	$4, %r12
	leaq	(%r12,%r12,2), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB6_7:                                # %if.end.36
	movq	(%rbp), %rax
	leaq	(%r15,%r15,2), %rcx
	shlq	$4, %rcx
	leaq	(%rax,%rcx), %rdx
	testl	%ebx, %ebx
	jle	.LBB6_11
# BB#8:                                 # %if.then.39
	movl	(%rax,%rcx), %esi
	testl	%esi, %esi
	je	.LBB6_11
# BB#9:                                 # %if.else.48
	cmpl	$2, %esi
	jl	.LBB6_12
# BB#10:                                # %if.then.54
	movl	$-1, (%rdx)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.61
	movl	%ebx, (%rdx)
.LBB6_12:                               # %if.end.72
	movslq	4(%rax,%rcx), %rdx
	testq	%rdx, %rdx
	jle	.LBB6_16
# BB#13:                                # %for.body.lr.ph
	movq	8(%rax,%rcx), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB6_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, (%rax,%rcx,4)
	je	.LBB6_17
# BB#14:                                # %for.cond
                                        #   in Loop: Header=BB6_15 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB6_15
.LBB6_16:                               # %if.end.91
	movq	1728(%r14), %rdi
	leal	4(,%rdx,4), %esi
	movl	$.L.str.17, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	30776(%r14), %rax
	shlq	$4, %r15
	leaq	(%r15,%r15,2), %rbp
	movslq	4(%rax,%rbp), %rax
	leaq	4(,%rax,4), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	memset
	movq	30776(%r14), %rax
	movq	8(%rax,%rbp), %rsi
	movslq	4(%rax,%rbp), %rdx
	shlq	$2, %rdx
	movq	%r12, %rdi
	callq	memcpy
	movq	1728(%r14), %rdi
	movq	30776(%r14), %rax
	movq	8(%rax,%rbp), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	30776(%r14), %rax
	movq	%r12, 8(%rax,%rbp)
	movslq	4(%rax,%rbp), %rcx
	movl	%ebx, (%r12,%rcx,4)
	incl	4(%rax,%rbp)
.LBB6_17:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_record_usage, .Lfunc_end6-pdf_record_usage
	.cfi_endproc

	.globl	pdf_record_usage_by_parent
	.align	16, 0x90
	.type	pdf_record_usage_by_parent,@function
pdf_record_usage_by_parent:             # @pdf_record_usage_by_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -40
.Ltmp69:
	.cfi_offset %r12, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$0, 30764(%r15)
	je	.LBB7_5
# BB#1:                                 # %if.end
	movq	30776(%r15), %rcx
	leaq	(%rdx,%rdx,2), %rsi
	shlq	$4, %rsi
	movl	(%rcx,%rsi), %eax
	testl	%eax, %eax
	js	.LBB7_2
# BB#6:                                 # %if.then.1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	pdf_record_usage
	jmp	.LBB7_5
.LBB7_2:                                # %for.cond.preheader
	xorl	%ebx, %ebx
	cmpl	$0, 4(%rcx,%rsi)
	jle	.LBB7_5
# BB#3:
	shlq	$4, %rdx
	leaq	(%rdx,%rdx,2), %r12
	.align	16, 0x90
.LBB7_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rcx,%r12), %rax
	movl	(%rax,%rbx,4), %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pdf_record_usage
	incq	%rbx
	movq	30776(%r15), %rcx
	movslq	4(%rcx,%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB7_4
.LBB7_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	pdf_record_usage_by_parent, .Lfunc_end7-pdf_record_usage_by_parent
	.cfi_endproc

	.align	16, 0x90
	.type	device_pdfwrite_enum_ptrs,@function
device_pdfwrite_enum_ptrs:              # @device_pdfwrite_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$47, %ecx
	jbe	.LBB8_1
# BB#2:                                 # %sw.default
	leal	-47(%rcx), %eax
	cmpl	$239, %eax
	jg	.LBB8_4
# BB#3:                                 # %if.then
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %ecx
	movl	%ecx, %edx
	andl	$-16, %edx
	subl	%edx, %eax
	cltq
	sarl	$4, %ecx
	movslq	%ecx, %rcx
	shlq	$7, %rcx
	addq	%rcx, %rsi
	movq	26672(%rsi,%rax,8), %rax
	jmp	.LBB8_12
.LBB8_1:                                # %entry
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_11:                               # %sw.bb
	movq	18224(%rsi), %rax
	jmp	.LBB8_12
.LBB8_4:                                # %if.end
	leal	-287(%rcx), %r9d
	movl	28680(%rsi), %eax
	cmpl	%eax, %r9d
	jg	.LBB8_7
# BB#5:                                 # %land.lhs.true
	movq	28672(%rsi), %r10
	testq	%r10, %r10
	je	.LBB8_7
# BB#6:                                 # %if.then.5
	movslq	%r9d, %rax
	imulq	$120, %rax, %rax
	movq	48(%r10,%rax), %rax
	jmp	.LBB8_12
.LBB8_7:                                # %if.end.10
	addl	$-288, %ecx             # imm = 0xFFFFFFFFFFFFFEE0
	subl	%eax, %ecx
	cmpl	%eax, %ecx
	jg	.LBB8_10
# BB#8:                                 # %land.lhs.true.15
	movq	28672(%rsi), %r9
	testq	%r9, %r9
	je	.LBB8_10
# BB#9:                                 # %if.then.18
	movslq	%ecx, %rax
	imulq	$120, %rax, %rax
	movq	104(%r9,%rax), %rax
.LBB8_12:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB8_10:                               # %if.end.24
	decl	%ecx
	subl	%eax, %ecx
	movl	$st_device_psdf, %r9d
	jmpq	*st_device_psdf+32(%rip) # TAILCALL
.LBB8_13:                               # %sw.bb.30
	movq	18232(%rsi), %rax
	jmp	.LBB8_12
.LBB8_14:                               # %sw.bb.33
	movq	18240(%rsi), %rax
	jmp	.LBB8_12
.LBB8_15:                               # %sw.bb.36
	movq	22352(%rsi), %rax
	jmp	.LBB8_12
.LBB8_16:                               # %sw.bb.39
	movq	22360(%rsi), %rax
	jmp	.LBB8_12
.LBB8_17:                               # %sw.bb.43
	movq	26480(%rsi), %rax
	jmp	.LBB8_12
.LBB8_18:                               # %sw.bb.46
	movq	26488(%rsi), %rax
	jmp	.LBB8_12
.LBB8_19:                               # %sw.bb.50
	movq	26496(%rsi), %rax
	jmp	.LBB8_12
.LBB8_20:                               # %sw.bb.54
	movq	26512(%rsi), %rax
	jmp	.LBB8_12
.LBB8_21:                               # %sw.bb.56
	movq	26520(%rsi), %rax
	jmp	.LBB8_12
.LBB8_22:                               # %sw.bb.58
	movq	26528(%rsi), %rax
	jmp	.LBB8_12
.LBB8_23:                               # %sw.bb.60
	movq	26592(%rsi), %rax
	jmp	.LBB8_12
.LBB8_24:                               # %sw.bb.62
	movq	26648(%rsi), %rax
	jmp	.LBB8_12
.LBB8_25:                               # %sw.bb.64
	movq	28592(%rsi), %rax
	jmp	.LBB8_12
.LBB8_26:                               # %sw.bb.67
	movq	28600(%rsi), %rax
	jmp	.LBB8_12
.LBB8_27:                               # %sw.bb.71
	movq	28616(%rsi), %rax
	jmp	.LBB8_12
.LBB8_28:                               # %sw.bb.75
	movq	28624(%rsi), %rax
	jmp	.LBB8_12
.LBB8_29:                               # %sw.bb.79
	movq	28648(%rsi), %rax
	jmp	.LBB8_12
.LBB8_30:                               # %sw.bb.81
	movq	28696(%rsi), %rax
	jmp	.LBB8_12
.LBB8_31:                               # %sw.bb.83
	movq	28704(%rsi), %rax
	jmp	.LBB8_12
.LBB8_32:                               # %sw.bb.85
	movq	28752(%rsi), %rax
	jmp	.LBB8_12
.LBB8_33:                               # %sw.bb.87
	movq	28760(%rsi), %rax
	jmp	.LBB8_12
.LBB8_34:                               # %sw.bb.89
	movq	28768(%rsi), %rax
	jmp	.LBB8_12
.LBB8_35:                               # %sw.bb.91
	movq	28776(%rsi), %rax
	jmp	.LBB8_12
.LBB8_36:                               # %sw.bb.93
	movq	28784(%rsi), %rax
	jmp	.LBB8_12
.LBB8_37:                               # %sw.bb.95
	movq	28808(%rsi), %rax
	jmp	.LBB8_12
.LBB8_38:                               # %sw.bb.97
	movq	28816(%rsi), %rax
	jmp	.LBB8_12
.LBB8_39:                               # %sw.bb.99
	movq	28832(%rsi), %rax
	jmp	.LBB8_12
.LBB8_40:                               # %sw.bb.101
	movq	30400(%rsi), %rax
	jmp	.LBB8_12
.LBB8_41:                               # %sw.bb.103
	movq	30448(%rsi), %rax
	jmp	.LBB8_12
.LBB8_42:                               # %sw.bb.105
	movq	30472(%rsi), %rax
	jmp	.LBB8_12
.LBB8_43:                               # %sw.bb.107
	movq	30480(%rsi), %rax
	jmp	.LBB8_12
.LBB8_44:                               # %sw.bb.109
	movq	30648(%rsi), %rax
	jmp	.LBB8_12
.LBB8_45:                               # %sw.bb.111
	movq	9424(%rsi), %rax
	jmp	.LBB8_12
.LBB8_46:                               # %sw.bb.113
	movq	9440(%rsi), %rax
	jmp	.LBB8_12
.LBB8_47:                               # %sw.bb.116
	movq	9600(%rsi), %rax
	jmp	.LBB8_12
.LBB8_48:                               # %sw.bb.119
	movq	28632(%rsi), %rax
	jmp	.LBB8_12
.LBB8_49:                               # %sw.bb.122
	movq	28640(%rsi), %rax
	jmp	.LBB8_12
.LBB8_50:                               # %sw.bb.126
	movq	30776(%rsi), %rax
	jmp	.LBB8_12
.LBB8_51:                               # %sw.bb.128
	movq	28848(%rsi), %rax
	jmp	.LBB8_12
.LBB8_52:                               # %sw.bb.130
	movq	28672(%rsi), %rax
	jmp	.LBB8_12
.LBB8_53:                               # %sw.bb.133
	movq	28712(%rsi), %rax
	jmp	.LBB8_12
.LBB8_54:                               # %sw.bb.135
	xorl	%eax, %eax
	cmpl	$0, 9628(%rsi)
	jne	.LBB8_66
# BB#55:                                # %cond.false
	movq	9616(%rsi), %rax
	movq	%rax, (%r8)
	movl	9624(%rsi), %eax
	jmp	.LBB8_65
.LBB8_56:                               # %sw.bb.143
	xorl	%eax, %eax
	cmpl	$0, 9644(%rsi)
	jne	.LBB8_66
# BB#57:                                # %cond.false.147
	movq	9632(%rsi), %rax
	movq	%rax, (%r8)
	movl	9640(%rsi), %eax
	jmp	.LBB8_65
.LBB8_58:                               # %sw.bb.156
	xorl	%eax, %eax
	cmpl	$0, 9676(%rsi)
	jne	.LBB8_66
# BB#59:                                # %cond.false.160
	movq	9664(%rsi), %rax
	movq	%rax, (%r8)
	movl	9672(%rsi), %eax
	jmp	.LBB8_65
.LBB8_60:                               # %sw.bb.169
	xorl	%eax, %eax
	cmpl	$0, 9500(%rsi)
	jne	.LBB8_66
# BB#61:                                # %cond.false.173
	movq	9488(%rsi), %rax
	movq	%rax, (%r8)
	movl	9496(%rsi), %eax
	jmp	.LBB8_65
.LBB8_62:                               # %sw.bb.182
	xorl	%eax, %eax
	cmpl	$0, 9516(%rsi)
	jne	.LBB8_66
# BB#63:                                # %cond.false.186
	movq	9504(%rsi), %rax
	movq	%rax, (%r8)
	movl	9512(%rsi), %eax
	jmp	.LBB8_65
.LBB8_64:                               # %sw.bb.195
	movq	30656(%rsi), %rax
	movq	%rax, (%r8)
	movl	30664(%rsi), %eax
.LBB8_65:                               # %cleanup
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
.LBB8_66:                               # %cleanup
	retq
.Lfunc_end8:
	.size	device_pdfwrite_enum_ptrs, .Lfunc_end8-device_pdfwrite_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_11
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_15
	.quad	.LBB8_16
	.quad	.LBB8_17
	.quad	.LBB8_18
	.quad	.LBB8_19
	.quad	.LBB8_20
	.quad	.LBB8_21
	.quad	.LBB8_22
	.quad	.LBB8_23
	.quad	.LBB8_24
	.quad	.LBB8_25
	.quad	.LBB8_26
	.quad	.LBB8_27
	.quad	.LBB8_28
	.quad	.LBB8_29
	.quad	.LBB8_30
	.quad	.LBB8_31
	.quad	.LBB8_32
	.quad	.LBB8_33
	.quad	.LBB8_34
	.quad	.LBB8_35
	.quad	.LBB8_36
	.quad	.LBB8_37
	.quad	.LBB8_38
	.quad	.LBB8_39
	.quad	.LBB8_40
	.quad	.LBB8_41
	.quad	.LBB8_42
	.quad	.LBB8_43
	.quad	.LBB8_44
	.quad	.LBB8_45
	.quad	.LBB8_46
	.quad	.LBB8_47
	.quad	.LBB8_48
	.quad	.LBB8_49
	.quad	.LBB8_50
	.quad	.LBB8_51
	.quad	.LBB8_52
	.quad	.LBB8_53
	.quad	.LBB8_54
	.quad	.LBB8_56
	.quad	.LBB8_58
	.quad	.LBB8_60
	.quad	.LBB8_62
	.quad	.LBB8_64

	.text
	.align	16, 0x90
	.type	device_pdfwrite_reloc_ptrs,@function
device_pdfwrite_reloc_ptrs:             # @device_pdfwrite_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movl	$st_device_psdf, %edx
	callq	*st_device_psdf+40(%rip)
	movq	(%r15), %rax
	movq	18224(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 18224(%r14)
	movq	(%r15), %rax
	movq	18232(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 18232(%r14)
	movq	(%r15), %rax
	movq	18240(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 18240(%r14)
	movq	(%r15), %rax
	movq	22352(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 22352(%r14)
	movq	(%r15), %rax
	movq	22360(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 22360(%r14)
	movq	(%r15), %rax
	movq	26480(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26480(%r14)
	movq	(%r15), %rax
	movq	26488(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26488(%r14)
	movq	(%r15), %rax
	movq	26496(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26496(%r14)
	movq	(%r15), %rax
	movq	26512(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26512(%r14)
	movq	(%r15), %rax
	movq	26520(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26520(%r14)
	movq	(%r15), %rax
	movq	26528(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26528(%r14)
	movq	(%r15), %rax
	movq	26592(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26592(%r14)
	movq	(%r15), %rax
	movq	26648(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26648(%r14)
	movq	(%r15), %rax
	movq	28592(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28592(%r14)
	movq	(%r15), %rax
	movq	28600(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28600(%r14)
	movq	(%r15), %rax
	movq	28616(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28616(%r14)
	movq	(%r15), %rax
	movq	28624(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28624(%r14)
	movq	(%r15), %rax
	movq	28648(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28648(%r14)
	movq	(%r15), %rax
	movq	28696(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28696(%r14)
	movq	(%r15), %rax
	movq	28704(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28704(%r14)
	movq	(%r15), %rax
	movq	28752(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28752(%r14)
	movq	(%r15), %rax
	movq	28760(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28760(%r14)
	movq	(%r15), %rax
	movq	28768(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28768(%r14)
	movq	(%r15), %rax
	movq	28776(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28776(%r14)
	movq	(%r15), %rax
	movq	28784(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28784(%r14)
	movq	(%r15), %rax
	movq	28808(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28808(%r14)
	movq	(%r15), %rax
	movq	28816(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28816(%r14)
	movq	(%r15), %rax
	movq	28832(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28832(%r14)
	movq	(%r15), %rax
	movq	30400(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30400(%r14)
	movq	(%r15), %rax
	movq	30448(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30448(%r14)
	movq	(%r15), %rax
	movq	30472(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30472(%r14)
	movq	(%r15), %rax
	movq	30480(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30480(%r14)
	movq	(%r15), %rax
	movq	30648(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30648(%r14)
	movq	(%r15), %rax
	movq	9424(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 9424(%r14)
	movq	(%r15), %rax
	movq	9440(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 9440(%r14)
	movq	(%r15), %rax
	movq	9600(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 9600(%r14)
	movq	(%r15), %rax
	movq	28632(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28632(%r14)
	movq	(%r15), %rax
	movq	28640(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28640(%r14)
	movq	(%r15), %rax
	movq	30776(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 30776(%r14)
	movq	(%r15), %rax
	movq	28848(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28848(%r14)
	movq	(%r15), %rax
	movq	28672(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28672(%r14)
	movq	(%r15), %rax
	movq	28712(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 28712(%r14)
	movq	(%r15), %rax
	leaq	9616(%r14), %rdi
	movq	%r15, %rsi
	callq	*24(%rax)
	movq	(%r15), %rax
	leaq	9632(%r14), %rdi
	movq	%r15, %rsi
	callq	*24(%rax)
	movq	(%r15), %rax
	leaq	9664(%r14), %rdi
	movq	%r15, %rsi
	callq	*24(%rax)
	movq	(%r15), %rax
	leaq	9488(%r14), %rdi
	movq	%r15, %rsi
	callq	*24(%rax)
	movq	(%r15), %rax
	leaq	9504(%r14), %rdi
	movq	%r15, %rsi
	callq	*24(%rax)
	movq	(%r15), %rax
	leaq	30656(%r14), %rdi
	movq	%r15, %rsi
	callq	*16(%rax)
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_1:                                # %for.cond.167.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	26672(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26672(%r14,%rbx)
	movq	(%r15), %rax
	movq	26680(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26680(%r14,%rbx)
	movq	(%r15), %rax
	movq	26688(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26688(%r14,%rbx)
	movq	(%r15), %rax
	movq	26696(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26696(%r14,%rbx)
	movq	(%r15), %rax
	movq	26704(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26704(%r14,%rbx)
	movq	(%r15), %rax
	movq	26712(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26712(%r14,%rbx)
	movq	(%r15), %rax
	movq	26720(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26720(%r14,%rbx)
	movq	(%r15), %rax
	movq	26728(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26728(%r14,%rbx)
	movq	(%r15), %rax
	movq	26736(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26736(%r14,%rbx)
	movq	(%r15), %rax
	movq	26744(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26744(%r14,%rbx)
	movq	(%r15), %rax
	movq	26752(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26752(%r14,%rbx)
	movq	(%r15), %rax
	movq	26760(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26760(%r14,%rbx)
	movq	(%r15), %rax
	movq	26768(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26768(%r14,%rbx)
	movq	(%r15), %rax
	movq	26776(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26776(%r14,%rbx)
	movq	(%r15), %rax
	movq	26784(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26784(%r14,%rbx)
	movq	(%r15), %rax
	movq	26792(%r14,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 26792(%r14,%rbx)
	subq	$-128, %rbx
	cmpq	$1920, %rbx             # imm = 0x780
	jne	.LBB9_1
# BB#2:                                 # %for.end.183
	movq	28672(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB9_6
# BB#3:                                 # %for.cond.185.preheader
	xorl	%ebx, %ebx
	cmpl	$0, 28680(%r14)
	js	.LBB9_6
# BB#4:
	movq	$-1, %r12
	.align	16, 0x90
.LBB9_5:                                # %for.body.187
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	48(%rcx,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	28672(%r14), %rcx
	movq	%rax, 48(%rcx,%rbx)
	movq	(%r15), %rax
	movq	104(%rcx,%rbx), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	28672(%r14), %rcx
	movq	%rax, 104(%rcx,%rbx)
	movslq	28680(%r14), %rax
	incq	%r12
	addq	$120, %rbx
	cmpq	%rax, %r12
	jl	.LBB9_5
.LBB9_6:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	device_pdfwrite_reloc_ptrs, .Lfunc_end9-device_pdfwrite_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_pdfwrite_finalize,@function
device_pdfwrite_finalize:               # @device_pdfwrite_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_device_finalize      # TAILCALL
.Lfunc_end10:
	.size	device_pdfwrite_finalize, .Lfunc_end10-device_pdfwrite_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_open_temp_stream,@function
pdf_open_temp_stream:                   # @pdf_open_temp_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 48
.Ltmp85:
	.cfi_offset %rbx, -32
.Ltmp86:
	.cfi_offset %r14, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$gp_fmode_binary_suffix, %edi
	callq	strlen
	cmpq	$2, %rax
	ja	.LBB11_2
# BB#1:                                 # %if.end.i
	leaq	12(%rsp), %rbp
	movl	$.L.str.31, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%rbp, %rdi
	callq	strcat
	movq	24(%r14), %rdi
	movl	$gp_scratch_file_name_prefix, %esi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	gp_open_scratch_file_64
	movq	%rax, 4096(%rbx)
	testq	%rax, %rax
	je	.LBB11_2
# BB#3:                                 # %if.end
	movq	1728(%r14), %rdi
	movl	$.L.str.32, %esi
	callq	s_alloc
	movq	%rax, 4104(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB11_7
# BB#4:                                 # %if.end.5
	movq	1728(%r14), %rdi
	movl	$512, %esi              # imm = 0x200
	movl	$.L.str.33, %edx
	callq	*64(%rdi)
	movq	%rax, 4112(%rbx)
	testq	%rax, %rax
	je	.LBB11_5
# BB#6:                                 # %if.end.17
	movq	4096(%rbx), %rsi
	movq	4104(%rbx), %rdi
	movl	$512, %ecx              # imm = 0x200
	movq	%rax, %rdx
	callq	swrite_file
	xorl	%ebp, %ebp
	jmp	.LBB11_7
.LBB11_2:                               # %pdf_open_temp_file.exit.thread
	movl	$-9, %ebp
.LBB11_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_5:                               # %if.then.11
	movq	1728(%r14), %rdi
	movq	4104(%rbx), %rsi
	movl	$.L.str.32, %edx
	callq	*24(%rdi)
	movq	$0, 4104(%rbx)
	jmp	.LBB11_7
.Lfunc_end11:
	.size	pdf_open_temp_stream, .Lfunc_end11-pdf_open_temp_stream
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_substream_save_elt_enum_ptrs,@function
pdf_substream_save_elt_enum_ptrs:       # @pdf_substream_save_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	movl	$2290649225, %eax       # imm = 0x88888889
	cmpl	$120, %edx
	jae	.LBB12_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB12_2:                               # %if.end
	imulq	%rax, %r9
	shrq	$38, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imulq	$120, %rdx, %rcx
	addq	%rcx, %rsi
	movl	$120, %edx
	movl	$st_pdf_substream_save, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end12:
	.size	pdf_substream_save_elt_enum_ptrs, .Lfunc_end12-pdf_substream_save_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_substream_save_elt_reloc_ptrs,@function
pdf_substream_save_elt_reloc_ptrs:      # @pdf_substream_save_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 32
.Ltmp91:
	.cfi_offset %rbx, -32
.Ltmp92:
	.cfi_offset %r14, -24
.Ltmp93:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$120, %esi
	jb	.LBB13_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$2290649225, %r15d      # imm = 0x88888889
	imulq	%rax, %r15
	shrq	$38, %r15
	negl	%r15d
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$120, %esi
	movl	$st_pdf_substream_save, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$120, %rbx
	incl	%r15d
	jne	.LBB13_2
.LBB13_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	pdf_substream_save_elt_reloc_ptrs, .Lfunc_end13-pdf_substream_save_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_page_elt_enum_ptrs,@function
pdf_page_elt_enum_ptrs:                 # @pdf_page_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	cmpl	$208, %edx
	jae	.LBB14_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB14_2:                               # %if.end
	imulq	$1321528399, %rax, %r9  # imm = 0x4EC4EC4F
	shrq	$38, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imulq	$208, %rdx, %rcx
	addq	%rcx, %rsi
	movl	$208, %edx
	movl	$st_pdf_page, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end14:
	.size	pdf_page_elt_enum_ptrs, .Lfunc_end14-pdf_page_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_page_elt_reloc_ptrs,@function
pdf_page_elt_reloc_ptrs:                # @pdf_page_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 32
.Ltmp97:
	.cfi_offset %rbx, -32
.Ltmp98:
	.cfi_offset %r14, -24
.Ltmp99:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$208, %esi
	jb	.LBB15_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	imulq	$1321528399, %rax, %r15 # imm = 0x4EC4EC4F
	shrq	$38, %r15
	negl	%r15d
	.align	16, 0x90
.LBB15_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$208, %esi
	movl	$st_pdf_page, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$208, %rbx
	incl	%r15d
	jne	.LBB15_2
.LBB15_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	pdf_page_elt_reloc_ptrs, .Lfunc_end15-pdf_page_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_close_temp_file,@function
pdf_close_temp_file:                    # @pdf_close_temp_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	4096(%rbx), %r14
	movq	4104(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_5
# BB#1:                                 # %if.then
	cmpb	$0, 155(%rdi)
	je	.LBB16_3
# BB#2:                                 # %if.then.4
	callq	*208(%rdi)
	movq	4104(%rbx), %rax
	movq	$0, 304(%rax)
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movq	$0, 4096(%rbx)
	xorl	%r14d, %r14d
.LBB16_4:                               # %if.end
	movq	1728(%r15), %rdi
	movq	4112(%rbx), %rsi
	movl	$.L.str.47, %edx
	callq	*24(%rdi)
	movq	$0, 4112(%rbx)
	movq	1728(%r15), %rdi
	movq	4104(%rbx), %rsi
	movl	$.L.str.48, %edx
	callq	*24(%rdi)
	movq	$0, 4104(%rbx)
.LBB16_5:                               # %if.end.19
	testq	%r14, %r14
	movl	%r12d, %eax
	je	.LBB16_7
# BB#6:                                 # %if.then.21
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	fclose
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	unlink
	movq	$0, 4096(%rbx)
	orl	%r15d, %ebp
	movl	$-12, %eax
	cmovel	%r12d, %eax
.LBB16_7:                               # %if.end.26
	movq	$0, 4120(%rbx)
	testl	%r12d, %r12d
	cmovsl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pdf_close_temp_file, .Lfunc_end16-pdf_close_temp_file
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_close_page,@function
pdf_close_page:                         # @pdf_close_page
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
	subq	$40, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 96
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
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	pdfwrite_pdf_open_document
	testl	%eax, %eax
	js	.LBB17_27
# BB#1:                                 # %if.end
	cmpl	$0, 9524(%rbx)
	je	.LBB17_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 26560(%rbx)
	jne	.LBB17_4
# BB#3:                                 # %if.then.2
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB17_27
.LBB17_4:                               # %if.end.7
	movl	$1, %ebp
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_close_contents
	cmpl	$0, 30712(%rbx)
	je	.LBB17_6
# BB#5:                                 # %select.mid
	movl	%r14d, %ebp
.LBB17_6:                               # %select.end
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB17_7
# BB#9:                                 # %for.body.lr.ph
	leal	-1(%rbp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	leaq	9856(%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	9824(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	28(%rsp), %r15d         # 4-byte Folded Reload
	setge	%al
	movzbl	%al, %r14d
	movslq	26544(%rbx), %rbp
	leal	1(%rbp), %esi
	movl	%esi, 26544(%rbx)
	movq	%rbx, %rdi
	callq	pdf_page_id
	movq	26648(%rbx), %r13
	imulq	$208, %rbp, %r12
	leaq	(%r13,%r12), %rbp
	cvtps2pd	856(%rbx), %xmm0
	movupd	%xmm0, 8(%r13,%r12)
	movq	26552(%rbx), %rsi
	movq	%rsi, 32(%r13,%r12)
	movl	948(%rbx), %eax
	movl	%eax, 200(%r13,%r12)
	movl	944(%rbx), %eax
	movl	%eax, 204(%r13,%r12)
	movl	26544(%rbx), %edx
	movq	%rbx, %rdi
	callq	pdf_record_usage
	movq	26568(%rbx), %rsi
	movl	26544(%rbx), %edx
	movq	%rbx, %rdi
	callq	pdf_record_usage
	movq	(%r13,%r12), %rax
	movq	8(%rax), %rsi
	movl	26544(%rbx), %edx
	movq	%rbx, %rdi
	callq	pdf_record_usage
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	callq	pdf_store_page_resources
	testl	%eax, %eax
	js	.LBB17_27
# BB#12:                                # %if.end.35
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	$13, %esi
	movq	%rbx, %rdi
	callq	pdf_write_resource_objects
	testl	%eax, %eax
	js	.LBB17_27
# BB#13:                                # %if.end.40
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rbx, %rdi
	callq	pdf_close_text_page
	cmpl	$2, 8884(%rbx)
	movq	112(%r13,%r12), %rax
	jne	.LBB17_14
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB17_11 Depth=1
	testq	%rax, %rax
	movl	$0, %edx
	movl	$-1, %ecx
	cmovlel	%ecx, %edx
	movl	$0, %esi
	cmovnsq	%rax, %rsi
	movq	120(%r13,%r12), %rcx
	movq	128(%r13,%r12), %rdi
	cmpq	%rsi, %rcx
	movl	$1, %ebp
	cmovgl	%ebp, %edx
	cmovgeq	%rcx, %rsi
	cmpq	%rsi, %rdi
	movl	$2, %ecx
	cmovgl	%ecx, %edx
	cmovgeq	%rdi, %rsi
	movq	136(%r13,%r12), %rcx
	cmpq	%rsi, %rcx
	movl	$3, %edi
	cmovgl	%edi, %edx
	cmovgeq	%rcx, %rsi
	movl	$4, %ecx
	cmpq	%rsi, 144(%r13,%r12)
	jg	.LBB17_17
# BB#16:                                # %select.mid111
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	%edx, %ecx
.LBB17_17:                              # %select.end110
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	120(%r13,%r12), %rbp
	leaq	128(%r13,%r12), %rdi
	leaq	136(%r13,%r12), %rsi
	leaq	144(%r13,%r12), %rdx
	testl	%ecx, %ecx
	js	.LBB17_19
# BB#18:                                # %cond.false.i
                                        #   in Loop: Header=BB17_11 Depth=1
	movslq	%ecx, %rcx
	movl	pdf_dominant_rotation.angles(,%rcx,4), %ecx
	jmp	.LBB17_19
	.align	16, 0x90
.LBB17_14:                              # %if.end.40.cond.end_crit_edge
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	120(%r13,%r12), %rbp
	leaq	128(%r13,%r12), %rdi
	leaq	136(%r13,%r12), %rsi
	leaq	144(%r13,%r12), %rdx
	movl	$-1, %ecx
.LBB17_19:                              # %cond.end
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	%ecx, 152(%r13,%r12)
	addq	%rax, 26600(%rbx)
	movq	(%rbp), %rax
	addq	%rax, 26608(%rbx)
	movq	(%rdi), %rax
	addq	%rax, 26616(%rbx)
	movq	(%rsi), %rax
	addq	%rax, 26624(%rbx)
	movq	(%rdx), %rax
	addq	%rax, 26632(%rbx)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	32(%rcx), %rax
	movq	%rax, 192(%r13,%r12)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 176(%r13,%r12)
	movups	%xmm0, 160(%r13,%r12)
	cmpl	$0, 160(%r13,%r12)
	jns	.LBB17_21
# BB#20:                                # %if.then.63
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	160(%r13,%r12), %rax
	movl	9816(%rbx), %ecx
	movl	%ecx, (%rax)
.LBB17_21:                              # %if.end.67
                                        #   in Loop: Header=BB17_11 Depth=1
	cmpl	$0, 164(%r13,%r12)
	jns	.LBB17_23
# BB#22:                                # %if.then.71
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	164(%r13,%r12), %rax
	movl	9820(%rbx), %ecx
	movl	%ecx, (%rax)
.LBB17_23:                              # %if.end.76
                                        #   in Loop: Header=BB17_11 Depth=1
	movsd	168(%r13,%r12), %xmm0   # xmm0 = mem[0],zero
	ucomisd	184(%r13,%r12), %xmm0
	jae	.LBB17_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_11 Depth=1
	movsd	176(%r13,%r12), %xmm0   # xmm0 = mem[0],zero
	ucomisd	192(%r13,%r12), %xmm0
	jb	.LBB17_26
.LBB17_25:                              # %if.then.94
                                        #   in Loop: Header=BB17_11 Depth=1
	leaq	168(%r13,%r12), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movupd	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rax)
	movupd	%xmm0, (%rax)
.LBB17_26:                              # %cleanup
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	%rbx, %rdi
	callq	pdf_ferror
	testl	%eax, %eax
	movl	$-12, %eax
	jne	.LBB17_27
# BB#10:                                # %for.cond
                                        #   in Loop: Header=BB17_11 Depth=1
	incl	%r15d
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r15d
	jl	.LBB17_11
	jmp	.LBB17_8
.LBB17_7:                               # %if.end.7.for.end.106_crit_edge
	leaq	9856(%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB17_8:                               # %for.end.106
	movq	gs_pdfwrite_device+9888(%rip), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 32(%rcx)
	movups	gs_pdfwrite_device+9872(%rip), %xmm0
	movups	%xmm0, 16(%rcx)
	movupd	gs_pdfwrite_device+9856(%rip), %xmm0
	movupd	%xmm0, (%rcx)
	movq	$0, 26552(%rbx)
	movq	%rbx, %rdi
	callq	pdf_reset_graphics
	movl	$0, 26584(%rbx)
	leaq	28592(%rbx), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	26592(%rbx), %rdi
	callq	pdf_reset_text_page
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_remember_clip_path
	movq	8776(%rbx), %rax
	movq	%rax, 8784(%rbx)
	movq	%rbx, %rdi
	callq	pdf_ferror
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
.LBB17_27:                              # %cleanup.110
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pdf_close_page, .Lfunc_end17-pdf_close_page
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_ferror,@function
pdf_ferror:                             # @pdf_ferror
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
	movq	%rdi, %rbx
	movq	5840(%rbx), %rdi
	callq	fflush
	movq	14088(%rbx), %rdi
	callq	fflush
	movq	5848(%rbx), %rdi
	callq	*208(%rdi)
	movq	18224(%rbx), %rdi
	callq	*208(%rdi)
	movq	22352(%rbx), %rdi
	callq	*208(%rdi)
	movq	26480(%rbx), %rdi
	callq	*208(%rdi)
	movq	5840(%rbx), %rdi
	callq	ferror
	movb	$1, %bpl
	testl	%eax, %eax
	jne	.LBB18_5
# BB#1:                                 # %lor.lhs.false
	movq	14088(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	jne	.LBB18_5
# BB#2:                                 # %lor.lhs.false.29
	movq	18216(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	jne	.LBB18_5
# BB#3:                                 # %lor.lhs.false.34
	movq	22344(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	jne	.LBB18_5
# BB#4:                                 # %lor.rhs
	movq	26472(%rbx), %rdi
	callq	ferror
	testl	%eax, %eax
	setne	%bpl
.LBB18_5:                               # %lor.end
	movzbl	%bpl, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_ferror, .Lfunc_end18-pdf_ferror
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_linearisation_record_elt_enum_ptrs,@function
pdf_linearisation_record_elt_enum_ptrs: # @pdf_linearisation_record_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	movl	$2863311531, %eax       # imm = 0xAAAAAAAB
	cmpl	$48, %edx
	jae	.LBB19_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB19_2:                               # %if.end
	imulq	%rax, %r9
	shrq	$37, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	leaq	(%rdx,%rdx,2), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movl	$48, %edx
	movl	$st_pdf_linearisation_record, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end19:
	.size	pdf_linearisation_record_elt_enum_ptrs, .Lfunc_end19-pdf_linearisation_record_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_linearisation_record_elt_reloc_ptrs,@function
pdf_linearisation_record_elt_reloc_ptrs: # @pdf_linearisation_record_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 32
.Ltmp131:
	.cfi_offset %rbx, -32
.Ltmp132:
	.cfi_offset %r14, -24
.Ltmp133:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$48, %esi
	jb	.LBB20_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$2863311531, %r15d      # imm = 0xAAAAAAAB
	imulq	%rax, %r15
	shrq	$37, %r15
	negl	%r15d
	.align	16, 0x90
.LBB20_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$48, %esi
	movl	$st_pdf_linearisation_record, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$48, %rbx
	incl	%r15d
	jne	.LBB20_2
.LBB20_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	pdf_linearisation_record_elt_reloc_ptrs, .Lfunc_end20-pdf_linearisation_record_elt_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4636737291354636288     # double 100
.LCPI21_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf_write_page,@function
pdf_write_page:                         # @pdf_write_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp140:
	.cfi_def_cfa_offset 288
.Ltmp141:
	.cfi_offset %rbx, -56
.Ltmp142:
	.cfi_offset %r12, -48
.Ltmp143:
	.cfi_offset %r13, -40
.Ltmp144:
	.cfi_offset %r14, -32
.Ltmp145:
	.cfi_offset %r15, -24
.Ltmp146:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	callq	pdf_page_id
	decl	%ebx
	movslq	%ebx, %rcx
	movq	26648(%r14), %r15
	imulq	$208, %rcx, %r12
	leaq	(%r15,%r12), %rbp
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	8(%r15,%r12), %xmm1     # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	.LCPI21_1(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movsd	16(%r15,%r12), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movl	$14, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	pdf_open_obj
	movq	5848(%r14), %r13
	movl	$.L.str.135, %esi
	movq	%r13, %rdi
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pprintg2
	cmpl	$0, 9560(%r14)
	je	.LBB21_82
# BB#1:                                 # %if.then
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	(%rbp), %rdi
	movl	$.L.str.136, %esi
	callq	cos_dict_find_c_key
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rax, %r14
	movq	(%rbp), %rdi
	movl	$.L.str.137, %esi
	callq	cos_dict_find_c_key
	movq	%rax, %rbx
	movq	(%rbp), %rdi
	movl	$.L.str.138, %esi
	callq	cos_dict_find_c_key
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	(%rbp), %rdi
	movl	$.L.str.139, %esi
	callq	cos_dict_find_c_key
	testq	%r14, %r14
	je	.LBB21_8
# BB#2:                                 # %land.lhs.true
	cmpl	$0, (%r14)
	je	.LBB21_3
.LBB21_8:                               # %if.else
	testq	%rbx, %rbx
	je	.LBB21_13
# BB#9:                                 # %land.lhs.true.73
	cmpl	$0, (%rbx)
	je	.LBB21_10
.LBB21_13:                              # %if.else.129
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	movq	16(%rsp), %r14          # 8-byte Reload
	cmpl	$4, 9432(%r14)
	movq	40(%rsp), %rbp          # 8-byte Reload
	jb	.LBB21_14
# BB#15:                                # %land.lhs.true.133
	movq	9424(%r14), %rcx
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jb	.LBB21_16
# BB#17:                                # %land.lhs.true.139
	movss	4(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jb	.LBB21_16
# BB#18:                                # %land.lhs.true.145
	movss	8(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jae	.LBB21_19
.LBB21_16:
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm6
	jmp	.LBB21_21
.LBB21_14:
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm6
	jmp	.LBB21_21
.LBB21_3:                               # %if.then.24
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	8(%r14), %rsi
	movl	16(%r14), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbp
	leaq	128(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 128(%rsp,%rbp)
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	124(%rsp), %r9
	leaq	112(%rsp), %rdx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	__isoc99_sscanf
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	cmpl	$4, %eax
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm6
	movq	40(%rsp), %rbp          # 8-byte Reload
	jne	.LBB21_5
# BB#4:                                 # %if.then.46
	cvtps2pd	112(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	124(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movq	(%rbp), %rdi
	movl	$.L.str.136, %esi
	callq	cos_dict_delete_c_key
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB21_5:                               # %if.end
	testq	%rbx, %rbx
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	je	.LBB21_21
# BB#6:                                 # %land.lhs.true.63
	cmpl	$0, (%rbx)
	jne	.LBB21_21
# BB#7:                                 # %if.then.67
	movq	(%rbp), %rdi
	movl	$.L.str.137, %esi
	movsd	%xmm6, 72(%rsp)         # 8-byte Spill
	movq	%rax, %rbx
	callq	cos_dict_delete_c_key
	movq	%rbx, %rax
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB21_21
.LBB21_10:                              # %if.then.77
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	8(%rbx), %rsi
	movl	16(%rbx), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	128(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 128(%rsp,%rbx)
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	124(%rsp), %r9
	leaq	112(%rsp), %rdx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	__isoc99_sscanf
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	cmpl	$4, %eax
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm6
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r14          # 8-byte Reload
	jne	.LBB21_12
# BB#11:                                # %if.then.113
	cvtps2pd	112(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	124(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movq	(%rbp), %rdi
	movl	$.L.str.137, %esi
	callq	cos_dict_delete_c_key
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
.LBB21_12:                              # %if.end.128
	movq	(%rsp), %rax            # 8-byte Reload
.LBB21_21:                              # %if.end.187
	testq	%rax, %rax
	je	.LBB21_26
# BB#22:                                # %land.lhs.true.190
	cmpl	$0, (%rax)
	je	.LBB21_23
.LBB21_26:                              # %if.else.286
	xorpd	%xmm7, %xmm7
	cmpl	$0, 9456(%r14)
	jne	.LBB21_38
# BB#27:                                # %if.else.289
	xorpd	%xmm7, %xmm7
	xorl	%ebx, %ebx
	cmpl	$4, 9448(%r14)
	jb	.LBB21_28
# BB#29:                                # %land.lhs.true.293
	movq	9440(%r14), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jae	.LBB21_31
# BB#30:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_23:                              # %if.then.194
	movsd	%xmm6, 72(%rsp)         # 8-byte Spill
	movq	8(%rax), %rsi
	movl	16(%rax), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	128(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 128(%rsp,%rbx)
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	124(%rsp), %r9
	xorl	%ebx, %ebx
	leaq	112(%rsp), %rdx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	leaq	128(%rsp), %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB21_24
# BB#25:                                # %if.end.348.thread25
	movaps	112(%rsp), %xmm0
	xorpd	%xmm1, %xmm1
	cvtps2pd	%xmm0, %xmm2
	cmpltps	%xmm1, %xmm0
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	psllq	$63, %xmm0
	psrad	$31, %xmm0
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pandn	%xmm2, %xmm0
	movdqa	%xmm0, 16(%rsp)         # 16-byte Spill
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movq	(%rbp), %rdi
	movl	$.L.str.139, %esi
	callq	cos_dict_delete_c_key
	movapd	16(%rsp), %xmm7         # 16-byte Reload
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
.LBB21_38:                              # %if.then.351
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	cmpltpd	%xmm7, %xmm0
	movapd	%xmm0, 96(%rsp)
	ucomisd	%xmm5, %xmm6
	movl	$1, %ebx
	ja	.LBB21_43
# BB#39:                                # %if.then.351
	testb	$1, 96(%rsp)
	jne	.LBB21_43
# BB#40:                                # %if.then.351
	testb	$1, 104(%rsp)
	jne	.LBB21_43
# BB#41:                                # %if.then.351
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	80(%rsp), %xmm0         # 8-byte Folded Reload
	ja	.LBB21_43
# BB#42:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_43:                              # %if.then.370
	movl	30724(%r14), %eax
	cmpl	$2, %eax
	je	.LBB21_51
# BB#44:                                # %if.then.370
	movapd	%xmm7, 16(%rsp)         # 16-byte Spill
	movsd	%xmm6, 72(%rsp)         # 8-byte Spill
	movsd	%xmm5, 88(%rsp)         # 8-byte Spill
	cmpl	$1, %eax
	jne	.LBB21_45
# BB#47:                                # %sw.bb.376
	movq	24(%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.142, %esi
	xorl	%eax, %eax
	callq	errprintf
	movapd	16(%rsp), %xmm7         # 16-byte Reload
	movapd	%xmm7, %xmm0
	maxpd	48(%rsp), %xmm0         # 16-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	minsd	32(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	ucomisd	%xmm5, %xmm6
	jbe	.LBB21_48
# BB#50:                                # %if.then.410
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm6
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	jmp	.LBB21_55
.LBB21_28:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_24:                              # %if.end.348.thread27
	xorpd	%xmm7, %xmm7
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_51:                              # %sw.bb.414
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.143, %esi
	jmp	.LBB21_52
.LBB21_45:                              # %if.then.370
	testl	%eax, %eax
	jne	.LBB21_53
# BB#46:                                # %sw.bb
	movq	24(%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.141, %esi
	jmp	.LBB21_54
.LBB21_31:                              # %land.lhs.true.299
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jae	.LBB21_33
# BB#32:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_48:
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	jmp	.LBB21_55
.LBB21_53:                              # %sw.default
	movq	24(%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.144, %esi
.LBB21_54:                              # %if.end.428
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 9568(%r14)
	movl	$0, 9560(%r14)
	movsd	88(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	72(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movapd	16(%rsp), %xmm7         # 16-byte Reload
.LBB21_55:                              # %if.end.428
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$1, %ebx
.LBB21_56:                              # %if.end.428
	testq	%rax, %rax
	je	.LBB21_57
# BB#58:                                # %land.lhs.true.431
	cmpl	$0, (%rax)
	je	.LBB21_59
.LBB21_57:
	movapd	%xmm7, 16(%rsp)         # 16-byte Spill
	movsd	%xmm6, 72(%rsp)         # 8-byte Spill
	movsd	%xmm5, 88(%rsp)         # 8-byte Spill
	jmp	.LBB21_76
.LBB21_59:                              # %if.then.435
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movapd	%xmm7, 16(%rsp)         # 16-byte Spill
	movsd	%xmm6, 72(%rsp)         # 8-byte Spill
	movsd	%xmm5, 88(%rsp)         # 8-byte Spill
	movq	8(%rax), %rsi
	movl	16(%rax), %eax
	cmpl	$99, %eax
	movl	$99, %ecx
	cmovbl	%eax, %ecx
	movslq	%ecx, %rbx
	leaq	128(%rsp), %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 128(%rsp,%rbx)
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	124(%rsp), %r9
	leaq	112(%rsp), %rdx
	movl	$.L.str.140, %esi
	xorl	%eax, %eax
	leaq	128(%rsp), %rdi
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	jne	.LBB21_75
# BB#60:                                # %if.then.471
	movq	(%rbp), %rdi
	movl	$.L.str.138, %esi
	callq	cos_dict_delete_c_key
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	116(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	120(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	124(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movl	$.L.str.145, %esi
	movq	%r13, %rdi
	callq	pprintg4
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	48(%rsp), %xmm0         # 16-byte Folded Reload
	ja	.LBB21_64
# BB#61:                                # %lor.lhs.false.488
	movss	116(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movapd	48(%rsp), %xmm1         # 16-byte Reload
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB21_64
# BB#62:                                # %lor.lhs.false.494
	movss	120(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB21_64
# BB#63:                                # %lor.lhs.false.500
	movss	124(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_75
.LBB21_64:                              # %if.then.506
	movl	30724(%r14), %eax
	cmpl	$2, %eax
	je	.LBB21_142
# BB#65:                                # %if.then.506
	cmpl	$1, %eax
	jne	.LBB21_66
# BB#68:                                # %sw.bb.516
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.147, %esi
	xorl	%eax, %eax
	callq	errprintf
	cvtps2pd	112(%rsp), %xmm0
	maxpd	48(%rsp), %xmm0         # 16-byte Folded Reload
	movss	120(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	124(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	minsd	32(%rsp), %xmm1         # 8-byte Folded Reload
	cvtss2sd	%xmm2, %xmm2
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB21_69
# BB#71:                                # %if.then.557
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	jmp	.LBB21_74
.LBB21_19:                              # %land.lhs.true.151
	movss	12(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	movsd	80(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm6
	jb	.LBB21_21
# BB#20:                                # %if.then.157
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	cvtps2pd	%xmm0, %xmm0
	xorps	%xmm3, %xmm3
	addpd	%xmm0, %xmm3
	movapd	%xmm3, 48(%rsp)         # 16-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movapd	%xmm5, %xmm6
	subsd	%xmm0, %xmm6
	jmp	.LBB21_21
.LBB21_33:                              # %land.lhs.true.305
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm4, %xmm2
	jae	.LBB21_35
# BB#34:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_142:                             # %cleanup
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.148, %esi
.LBB21_52:                              # %cleanup.706
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB21_141
.LBB21_66:                              # %if.then.506
	testl	%eax, %eax
	jne	.LBB21_72
# BB#67:                                # %sw.bb.508
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.146, %esi
	jmp	.LBB21_73
.LBB21_35:                              # %land.lhs.true.311
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jae	.LBB21_37
# BB#36:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_56
.LBB21_69:
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movapd	%xmm0, 48(%rsp)         # 16-byte Spill
	jmp	.LBB21_74
.LBB21_72:                              # %sw.default.568
	movq	24(%r14), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r14), %rdi
	movl	$.L.str.149, %esi
.LBB21_73:                              # %cleanup.thread
	xorl	%eax, %eax
	callq	errprintf
	movl	$1, 9568(%r14)
	movl	$0, 9560(%r14)
.LBB21_74:                              # %cleanup.thread
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB21_75:                              # %cleanup.thread
	movl	8(%rsp), %ebx           # 4-byte Reload
.LBB21_76:                              # %if.end.582
	movq	(%rbp), %rdi
	movl	$.L.str.136, %esi
	callq	cos_dict_find_c_key
	testq	%rax, %rax
	jne	.LBB21_79
# BB#77:                                # %land.lhs.true.587
	movq	(%rbp), %rdi
	movl	$.L.str.137, %esi
	callq	cos_dict_find_c_key
	testq	%rax, %rax
	jne	.LBB21_79
# BB#78:                                # %if.then.592
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movl	$.L.str.150, %esi
	movq	%r13, %rdi
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	pprintg4
.LBB21_79:                              # %if.end.598
	testl	%ebx, %ebx
	je	.LBB21_82
# BB#80:                                # %land.lhs.true.600
	movq	(%rbp), %rdi
	movl	$.L.str.139, %esi
	callq	cos_dict_find_c_key
	testq	%rax, %rax
	jne	.LBB21_82
# BB#81:                                # %if.then.605
	movapd	16(%rsp), %xmm0         # 16-byte Reload
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	movl	$.L.str.151, %esi
	movq	%r13, %rdi
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	pprintg4
.LBB21_82:                              # %if.end.621
	movl	8884(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB21_100
# BB#83:                                # %if.end.i
	movq	5848(%r14), %rdi
	leaq	9816(%r14), %rax
	testq	%rbp, %rbp
	leaq	160(%r15,%r12), %rdx
	cmoveq	%rax, %rdx
	movl	4(%rdx), %eax
	testl	%eax, %eax
	jns	.LBB21_85
# BB#84:                                # %if.else.i
	movl	(%rdx), %edx
	cmpl	$-2, %edx
	movl	$-1, %eax
	cmovgl	%edx, %eax
.LBB21_85:                              # %if.end.9.i
	testq	%rbp, %rbp
	jne	.LBB21_87
# BB#86:                                # %if.end.9.i
	cmpl	$1, %ecx
	je	.LBB21_90
.LBB21_87:                              # %lor.lhs.false.i
	testq	%rbp, %rbp
	je	.LBB21_89
# BB#88:                                # %land.lhs.true.15.i
	testl	152(%r15,%r12), %eax
	jns	.LBB21_90
	jmp	.LBB21_100
.LBB21_89:                              # %lor.lhs.false.17.i
	testl	%eax, %eax
	js	.LBB21_100
.LBB21_90:                              # %if.then.19.i
	leaq	26600(%r14), %rdx
	testq	%rbp, %rbp
	leaq	112(%r15,%r12), %rcx
	cmoveq	%rdx, %rcx
	testl	%eax, %eax
	jne	.LBB21_91
# BB#93:                                # %if.then.28.i
	movl	40(%rcx), %eax
	testl	%eax, %eax
	je	.LBB21_98
# BB#94:                                # %if.then.28.i
	cmpl	$180, %eax
	je	.LBB21_98
	jmp	.LBB21_95
.LBB21_91:                              # %if.then.19.i
	cmpl	$1, %eax
	jne	.LBB21_92
# BB#96:                                # %if.then.39.i
	movl	40(%rcx), %eax
	cmpl	$270, %eax              # imm = 0x10E
	je	.LBB21_98
# BB#97:                                # %if.then.39.i
	movl	$90, %edx
	cmpl	$90, %eax
	jne	.LBB21_99
.LBB21_98:                              # %if.end.50.thread.i
	movl	%eax, %edx
	jmp	.LBB21_99
.LBB21_92:                              # %if.then.19.if.end.54_crit_edge.i
	movl	40(%rcx), %eax
.LBB21_95:                              # %if.end.54.i
	testl	%eax, %eax
	movl	%eax, %edx
	js	.LBB21_100
.LBB21_99:                              # %if.then.56.i
	movl	$.L.str.164, %esi
	callq	pprintd1
.LBB21_100:                             # %pdf_print_orientation.exit
	movq	26528(%r14), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.152, %esi
	movq	%r13, %rdi
	callq	pprintld1
	cmpl	$0, 9524(%r14)
	je	.LBB21_105
# BB#101:                               # %land.lhs.true.624
	cmpl	$0, 30712(%r14)
	je	.LBB21_105
# BB#102:                               # %land.lhs.true.626
	cmpl	$0, 9548(%r14)
	jne	.LBB21_105
# BB#103:                               # %if.then.628
	cmpl	$0, 200(%r15,%r12)
	je	.LBB21_105
# BB#104:                               # %if.then.630
	movslq	204(%r15,%r12), %rdx
	movl	$.L.str.153, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_105:                             # %if.end.634
	movq	96(%r15,%r12), %rdx
	testq	%rdx, %rdx
	jle	.LBB21_107
# BB#106:                               # %if.then.637
	movl	$.L.str.154, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_107:                             # %if.end.640
	movl	$.L.str.155, %esi
	movq	%r13, %rdi
	callq	stream_puts
	leaq	24(%r15,%r12), %rbx
	movl	24(%r15,%r12), %eax
	testb	$1, %al
	je	.LBB21_109
# BB#108:                               # %if.then.643
	movl	$.L.str.156, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	(%rbx), %eax
.LBB21_109:                             # %if.end.645
	testb	$2, %al
	je	.LBB21_111
# BB#110:                               # %if.then.649
	movl	$.L.str.157, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	(%rbx), %eax
.LBB21_111:                             # %if.end.651
	testb	$4, %al
	je	.LBB21_113
# BB#112:                               # %if.then.655
	movl	$.L.str.158, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	(%rbx), %eax
.LBB21_113:                             # %if.end.657
	testb	$8, %al
	je	.LBB21_115
# BB#114:                               # %if.then.661
	movl	$.L.str.159, %esi
	movq	%r13, %rdi
	callq	stream_puts
.LBB21_115:                             # %if.end.663
	movl	$.L.str.60, %esi
	movq	%r13, %rdi
	callq	stream_puts
	cmpq	$0, 40(%r15,%r12)
	je	.LBB21_118
# BB#116:                               # %land.lhs.true.671
	movq	pdf_resource_type_names(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_118
# BB#117:                               # %if.then.675
	leaq	40(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_118:                             # %for.inc
	cmpq	$0, 48(%r15,%r12)
	je	.LBB21_121
# BB#119:                               # %land.lhs.true.671.1
	movq	pdf_resource_type_names+8(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_121
# BB#120:                               # %if.then.675.1
	leaq	48(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_121:                             # %for.inc.1
	cmpq	$0, 56(%r15,%r12)
	je	.LBB21_124
# BB#122:                               # %land.lhs.true.671.2
	movq	pdf_resource_type_names+16(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_124
# BB#123:                               # %if.then.675.2
	leaq	56(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_124:                             # %for.inc.2
	cmpq	$0, 64(%r15,%r12)
	je	.LBB21_127
# BB#125:                               # %land.lhs.true.671.3
	movq	pdf_resource_type_names+24(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_127
# BB#126:                               # %if.then.675.3
	leaq	64(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_127:                             # %for.inc.3
	cmpq	$0, 72(%r15,%r12)
	je	.LBB21_130
# BB#128:                               # %land.lhs.true.671.4
	movq	pdf_resource_type_names+32(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_130
# BB#129:                               # %if.then.675.4
	leaq	72(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_130:                             # %for.inc.4
	cmpq	$0, 80(%r15,%r12)
	je	.LBB21_133
# BB#131:                               # %land.lhs.true.671.5
	movq	pdf_resource_type_names+40(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_133
# BB#132:                               # %if.then.675.5
	leaq	80(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_133:                             # %for.inc.5
	cmpq	$0, 88(%r15,%r12)
	je	.LBB21_136
# BB#134:                               # %land.lhs.true.671.6
	movq	pdf_resource_type_names+48(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB21_136
# BB#135:                               # %if.then.675.6
	leaq	88(%r15,%r12), %rbx
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdx
	movl	$.L.str.160, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_136:                             # %for.inc.6
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	callq	stream_puts
	cmpq	$0, 104(%r15,%r12)
	je	.LBB21_138
# BB#137:                               # %if.then.686
	leaq	104(%r15,%r12), %rbx
	movl	$.L.str.161, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movq	(%rbx), %rdi
	movq	8(%rdi), %rdx
	movq	%r14, %rsi
	callq	cos_write
	movq	(%rbx), %rdi
	movl	$.L.str.162, %esi
	callq	cos_free
	movq	$0, (%rbx)
.LBB21_138:                             # %if.end.695
	movq	32(%r15,%r12), %rdx
	testq	%rdx, %rdx
	je	.LBB21_140
# BB#139:                               # %if.then.698
	movl	$.L.str.163, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB21_140:                             # %if.end.701
	movq	(%rbp), %rdi
	movq	%r14, %rsi
	callq	cos_dict_elements_write
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$14, %esi
	movq	%r14, %rdi
	callq	pdf_end_obj
.LBB21_141:                             # %cleanup.706
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_37:                              # %if.then.317
	unpcklps	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	cvtps2pd	%xmm0, %xmm0
	movapd	48(%rsp), %xmm7         # 16-byte Reload
	subpd	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm2, %xmm5
	addsd	%xmm6, %xmm5
	jmp	.LBB21_38
.Lfunc_end21:
	.size	pdf_write_page, .Lfunc_end21-pdf_write_page
	.cfi_endproc

	.align	16, 0x90
	.type	rewrite_object,@function
rewrite_object:                         # @rewrite_object
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
	subq	$344, %rsp              # imm = 0x158
.Ltmp153:
	.cfi_def_cfa_offset 400
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movslq	%edx, %rax
	movq	30776(%r14), %rcx
	leaq	(%rax,%rax,2), %r13
	shlq	$4, %r13
	movq	40(%rcx,%r13), %r12
	movq	1728(%r14), %rdi
	movl	$16384, %esi            # imm = 0x4000
	movl	$.L.str.208, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	movq	%rcx, %r15
	je	.LBB22_54
# BB#1:                                 # %if.end
	movq	4104(%rbx), %rdi
	callq	gp_ftell_64
	movq	30776(%r14), %rcx
	movq	%rax, 32(%rcx,%r13)
	movq	(%rbx), %rdi
	movq	24(%rcx,%r13), %rsi
	xorl	%edx, %edx
	callq	gp_fseek_64
	testl	%eax, %eax
	js	.LBB22_54
# BB#2:
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	$-1, %r12
	leaq	343(%rsp), %rbp
	.align	16, 0x90
.LBB22_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	fread
	incq	%r12
	movzbl	343(%rsp), %ecx
	cmpl	$10, %ecx
	je	.LBB22_5
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB22_3 Depth=1
	testl	%eax, %eax
	jg	.LBB22_3
.LBB22_5:                               # %do.end
	movq	30776(%r14), %rax
	movl	16(%rax,%r13), %edx
	movl	$.L.str.209, %esi
	xorl	%eax, %eax
	movq	%r15, %rbp
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	4104(%rbx), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	movq	(%rbx), %rcx
	leaq	343(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	fread
	movzbl	343(%rsp), %eax
	cmpl	$91, %eax
	je	.LBB22_7
# BB#6:                                 # %do.end
	movzbl	%al, %ecx
	cmpl	$60, %ecx
	jne	.LBB22_40
.LBB22_7:                               # %if.then.38
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movb	%al, (%rbp)
	movl	$16384, %r15d           # imm = 0x4000
	movq	$-5, %rbx
	leaq	343(%rsp), %r13
	jmp	.LBB22_8
	.align	16, 0x90
.LBB22_38:                              # %do.body.43.backedge
                                        #   in Loop: Header=BB22_8 Depth=1
	incq	%rbx
.LBB22_8:                               # %do.body.43
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	fread
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movb	343(%rsp), %al
	movb	%al, 6(%rbp,%rbx)
	leal	-2(%r15), %eax
	leal	7(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB22_11
# BB#9:                                 # %if.then.53
                                        #   in Loop: Header=BB22_8 Depth=1
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %r13
	movq	1728(%r14), %rdi
	leal	(%r15,%r15), %ebp
	movl	$.L.str.208, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB22_39
# BB#10:                                # %cleanup.thread
                                        #   in Loop: Header=BB22_8 Depth=1
	movslq	%r15d, %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	1728(%r14), %rdi
	movl	$.L.str.211, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	%ebp, %r15d
	movq	%rbx, %rbp
	movq	16(%rsp), %rbx          # 8-byte Reload
	leaq	343(%rsp), %r13
.LBB22_11:                              # %do.cond.74
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	343(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB22_13
# BB#12:                                # %do.cond.74
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	%al, %eax
	cmpl	$10, %eax
	jne	.LBB22_38
.LBB22_13:                              # %do.end.83
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$0, 7(%rbp,%rbx)
	movl	$.L.str.212, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	(%rbp,%rbx), %rdi
	cmpq	$5, %rcx
	ja	.LBB22_23
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB22_8 Depth=1
	cmpq	$3, %rcx
	ja	.LBB22_22
# BB#15:                                # %cond.true.92
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	(%rdi), %eax
	addl	$-101, %eax
	testq	%rcx, %rcx
	je	.LBB22_24
# BB#16:                                # %cond.true.92
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_24
# BB#17:                                # %if.then.107
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	1(%rbp,%rbx), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB22_24
# BB#18:                                # %if.then.107
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_24
# BB#19:                                # %if.then.117
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	2(%rbp,%rbx), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB22_24
# BB#20:                                # %if.then.117
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_24
# BB#21:                                # %if.then.127
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	3(%rbp,%rbx), %eax
	addl	$-111, %eax
	jmp	.LBB22_24
	.align	16, 0x90
.LBB22_23:                              # %cond.false.140
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$.L.str.212, %esi
	movl	$6, %edx
	callq	strncmp
	jmp	.LBB22_24
.LBB22_22:                              # %cond.false
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$.L.str.212, %esi
	callq	strcmp
.LBB22_24:                              # %cond.end.145
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	je	.LBB22_41
# BB#25:                                # %lor.lhs.false.149
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$.L.str.213, %edi
	callq	strlen
	movq	%rax, %rcx
	leaq	(%rbp,%rbx), %rdi
	cmpq	$5, %rcx
	ja	.LBB22_35
# BB#26:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB22_8 Depth=1
	cmpq	$3, %rcx
	ja	.LBB22_34
# BB#27:                                # %cond.true.163
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	(%rdi), %eax
	addl	$-115, %eax
	testq	%rcx, %rcx
	je	.LBB22_36
# BB#28:                                # %cond.true.163
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_36
# BB#29:                                # %if.then.180
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	1(%rbp,%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB22_36
# BB#30:                                # %if.then.180
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_36
# BB#31:                                # %if.then.190
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	2(%rbp,%rbx), %eax
	addl	$-114, %eax
	cmpq	$3, %rcx
	jb	.LBB22_36
# BB#32:                                # %if.then.190
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_36
# BB#33:                                # %if.then.200
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	3(%rbp,%rbx), %eax
	addl	$-101, %eax
	jmp	.LBB22_36
	.align	16, 0x90
.LBB22_35:                              # %cond.false.216
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$.L.str.213, %esi
	movl	$6, %edx
	callq	strncmp
	jmp	.LBB22_36
.LBB22_34:                              # %cond.false.209
                                        #   in Loop: Header=BB22_8 Depth=1
	movl	$.L.str.213, %esi
	callq	strcmp
.LBB22_36:                              # %cond.end.221
                                        #   in Loop: Header=BB22_8 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB22_42
# BB#37:                                # %cond.end.221
                                        #   in Loop: Header=BB22_8 Depth=1
	testl	%eax, %eax
	jne	.LBB22_38
.LBB22_42:                              # %cond.end.221.if.end.236.loopexit_crit_edge
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %r15
	leaq	8(%r12,%rbx), %r12
	jmp	.LBB22_43
.LBB22_41:                              # %if.end.236.loopexitsplit
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %r15
	leaq	8(%r12,%rbx), %r12
	jmp	.LBB22_44
.LBB22_40:                              # %if.else
	addq	$2, %r12
	movb	$0, (%rbp)
	movq	%rbp, %r15
	movq	4104(%rbx), %rcx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	343(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$16384, %eax            # imm = 0x4000
	movq	%rax, 16(%rsp)          # 8-byte Spill
.LBB22_43:                              # %if.end.236
	movq	%r14, 24(%rsp)          # 8-byte Spill
.LBB22_44:                              # %if.end.236
	subq	%r12, 8(%rsp)           # 8-byte Folded Spill
	leaq	48(%rsp), %rbp
	movq	%r15, %r12
	.align	16, 0x90
.LBB22_45:                              # %do.body.238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_47 Depth 2
	movl	$.L.str.214, %esi
	movq	%r12, %rdi
	callq	strstr
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB22_55
# BB#46:                                # %do.body.242.preheader
                                        #   in Loop: Header=BB22_45 Depth=1
	leaq	1(%r14), %r13
	.align	16, 0x90
.LBB22_47:                              # %do.body.242
                                        #   Parent Loop BB22_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-2(%r13), %al
	addb	$-48, %al
	movzbl	%al, %eax
	decq	%r13
	cmpl	$10, %eax
	jb	.LBB22_47
# BB#48:                                # %do.cond.275
                                        #   in Loop: Header=BB22_45 Depth=1
	addq	$4, %r14
	movl	$.L.str.215, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	44(%rsp), %rdx
	callq	__isoc99_sscanf
	movq	%r13, %rsi
	subq	%r12, %rsi
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	4104(%rbx), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	callq	fwrite
	movslq	44(%rsp), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	30776(%rcx), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	16(%rcx,%rax), %edx
	movl	$.L.str.215, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	4104(%rbx), %rcx
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	fwrite
	testq	%r13, %r13
	movq	%r14, %r12
	jne	.LBB22_45
	jmp	.LBB22_49
.LBB22_55:                              # %do.cond.275.thread
	movq	%r12, %rdi
	callq	strlen
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	4104(%rcx), %rcx
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	fwrite
.LBB22_49:                              # %do.body.278.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r12
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
	.align	16, 0x90
.LBB22_50:                              # %do.body.278
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, %rbp
	movq	(%r14), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	jbe	.LBB22_51
# BB#52:                                # %do.cond.300
                                        #   in Loop: Header=BB22_50 Depth=1
	movq	%r12, %rsi
	callq	fread
	movq	4104(%r14), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	fwrite
	addq	$-16384, %rbp           # imm = 0xFFFFFFFFFFFFC000
	jne	.LBB22_50
	jmp	.LBB22_53
.LBB22_51:                              # %do.cond.300.thread
	movq	%rbp, %rsi
	callq	fread
	movq	4104(%r14), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	fwrite
.LBB22_53:                              # %do.end.302
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.210, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	jmp	.LBB22_54
.LBB22_39:                              # %cleanup.229
	movq	1728(%r14), %rdi
	movl	$.L.str.210, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	$-25, %eax
.LBB22_54:                              # %cleanup.307
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	rewrite_object, .Lfunc_end22-rewrite_object
	.cfi_endproc

	.align	16, 0x90
	.type	write_hint_stream,@function
write_hint_stream:                      # @write_hint_stream
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
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp164:
	.cfi_def_cfa_offset 48
.Ltmp165:
	.cfi_offset %rbx, -40
.Ltmp166:
	.cfi_offset %r14, -32
.Ltmp167:
	.cfi_offset %r15, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	%bpl, %bpl
	je	.LBB23_10
# BB#1:                                 # %while.body.lr.ph
	leaq	4136(%rbx), %r15
	movb	4392(%rbx), %al
	.align	16, 0x90
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%bpl, %ecx
	decl	%ecx
	movl	$1, %esi
	shll	%cl, %esi
	movl	$128, %edx
	movb	%al, %cl
	shrl	%cl, %edx
	testq	%r14, %rsi
	je	.LBB23_4
# BB#3:                                 # %if.then.6
                                        #   in Loop: Header=BB23_2 Depth=1
	movzbl	4393(%rbx), %eax
	movzbl	4136(%rbx,%rax), %ecx
	orl	%edx, %ecx
	jmp	.LBB23_5
	.align	16, 0x90
.LBB23_4:                               # %if.else
                                        #   in Loop: Header=BB23_2 Depth=1
	notl	%edx
	movzbl	4393(%rbx), %eax
	movzbl	4136(%rbx,%rax), %ecx
	andl	%edx, %ecx
.LBB23_5:                               # %if.end.16
                                        #   in Loop: Header=BB23_2 Depth=1
	movb	%cl, 4136(%rbx,%rax)
	decb	%bpl
	movb	4392(%rbx), %al
	incb	%al
	movb	%al, 4392(%rbx)
	movzbl	%al, %ecx
	cmpl	$8, %ecx
	jne	.LBB23_9
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB23_2 Depth=1
	movb	4393(%rbx), %al
	incb	%al
	movb	%al, 4393(%rbx)
	movzbl	%al, %eax
	cmpl	$255, %eax
	jne	.LBB23_8
# BB#7:                                 # %if.then.29
                                        #   in Loop: Header=BB23_2 Depth=1
	movq	(%rbx), %rcx
	movl	$255, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fwrite
	movw	$0, 4392(%rbx)
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	callq	memset
.LBB23_8:                               # %if.end.32
                                        #   in Loop: Header=BB23_2 Depth=1
	movb	$0, 4392(%rbx)
	xorl	%eax, %eax
.LBB23_9:                               # %while.cond.backedge
                                        #   in Loop: Header=BB23_2 Depth=1
	testb	%bpl, %bpl
	jne	.LBB23_2
.LBB23_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	write_hint_stream, .Lfunc_end23-write_hint_stream
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdfwrite"
	.size	.L.str, 9

	.type	st_device_pdfwrite,@object # @st_device_pdfwrite
	.section	.rodata,"a",@progbits
	.align	8
st_device_pdfwrite:
	.long	30792                   # 0x7848
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	device_pdfwrite_enum_ptrs
	.quad	device_pdfwrite_reloc_ptrs
	.quad	device_pdfwrite_finalize
	.quad	0
	.size	st_device_pdfwrite, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"JPEG2000"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CCITTFaxEncode"
	.size	.L.str.3, 15

	.type	gs_pdfwrite_device,@object # @gs_pdfwrite_device
	.section	.rodata,"a",@progbits
	.globl	gs_pdfwrite_device
	.align	8
gs_pdfwrite_device:
	.long	30792                   # 0x7848
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	st_device_pdfwrite
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.zero	8
	.zero	16
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
	.quad	pdf_open
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	pdf_output_page
	.quad	pdf_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_pdf_fill_rectangle
	.quad	0
	.quad	gdev_pdf_copy_mono
	.quad	gdev_pdf_copy_color
	.quad	0
	.quad	psdf_get_bits
	.quad	gdev_pdf_get_params
	.quad	gdev_pdf_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_path
	.quad	gdev_pdf_stroke_path
	.quad	gdev_pdf_fill_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	gdev_pdf_begin_typed_image
	.quad	psdf_get_bits_rectangle
	.quad	0
	.quad	gdev_pdf_create_compositor
	.quad	0
	.quad	gdev_pdf_text_begin
	.quad	0
	.quad	gdev_pdf_begin_transparency_group
	.quad	gdev_pdf_end_transparency_group
	.quad	gdev_pdf_begin_transparency_mask
	.quad	gdev_pdf_end_transparency_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_rectangle_hl_color
	.quad	gdev_pdf_include_color_space
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_dev_spec_op
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
	.quad	4621819117588971520     # double 10
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3010                    # 0xbc2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	4608533498688228557     # double 1.3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	500000                  # 0x7a120
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1073741824              # float 2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	.L.str.3
	.long	300                     # 0x12c
	.zero	4
	.quad	.L.str.2
	.quad	s_CFE_template
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	1                       # 0x1
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	4608983858650965606     # double 1.3999999999999999
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	12000                   # 0x2ee0
	.quad	256000                  # 0x3e800
	.quad	4000                    # 0xfa0
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	32
	.zero	32
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4128
	.zero	4128
	.zero	4128
	.zero	4128
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	48
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	1                       # 0x1
	.zero	1920
	.zero	40
	.zero	16
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.zero	16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	1512
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	36
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0                       # double 0
	.quad	0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_pdfwrite_device, 30792

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"ps2write"
	.size	.L.str.4, 9

	.type	gs_ps2write_device,@object # @gs_ps2write_device
	.section	.rodata,"a",@progbits
	.globl	gs_ps2write_device
	.align	8
gs_ps2write_device:
	.long	30792                   # 0x7848
	.zero	4
	.quad	0
	.quad	.L.str.4
	.quad	0
	.quad	st_device_pdfwrite
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.zero	8
	.zero	16
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
	.quad	pdf_open
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	pdf_output_page
	.quad	pdf_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_pdf_fill_rectangle
	.quad	0
	.quad	gdev_pdf_copy_mono
	.quad	gdev_pdf_copy_color
	.quad	0
	.quad	psdf_get_bits
	.quad	gdev_pdf_get_params
	.quad	gdev_pdf_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_path
	.quad	gdev_pdf_stroke_path
	.quad	gdev_pdf_fill_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	gdev_pdf_begin_typed_image
	.quad	psdf_get_bits_rectangle
	.quad	0
	.quad	gdev_pdf_create_compositor
	.quad	0
	.quad	gdev_pdf_text_begin
	.quad	0
	.quad	gdev_pdf_begin_transparency_group
	.quad	gdev_pdf_end_transparency_group
	.quad	gdev_pdf_begin_transparency_mask
	.quad	gdev_pdf_end_transparency_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_rectangle_hl_color
	.quad	gdev_pdf_include_color_space
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_dev_spec_op
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
	.quad	4621819117588971520     # double 10
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3010                    # 0xbc2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	4608533498688228557     # double 1.3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	500000                  # 0x7a120
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1073741824              # float 2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	.L.str.3
	.long	300                     # 0x12c
	.zero	4
	.quad	.L.str.2
	.quad	s_CFE_template
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	1                       # 0x1
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.zero	4
	.quad	4608983858650965606     # double 1.3999999999999999
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	12000                   # 0x2ee0
	.quad	256000                  # 0x3e800
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	32
	.zero	32
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4128
	.zero	4128
	.zero	4128
	.zero	4128
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	48
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	1                       # 0x1
	.zero	1920
	.zero	40
	.zero	16
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.zero	16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	1512
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	36
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0                       # double 0
	.quad	0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_ps2write_device, 30792

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"eps2write"
	.size	.L.str.5, 10

	.type	gs_eps2write_device,@object # @gs_eps2write_device
	.section	.rodata,"a",@progbits
	.globl	gs_eps2write_device
	.align	8
gs_eps2write_device:
	.long	30792                   # 0x7848
	.zero	4
	.quad	0
	.quad	.L.str.5
	.quad	0
	.quad	st_device_pdfwrite
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.zero	8
	.zero	16
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
	.quad	pdf_open
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	pdf_output_page
	.quad	pdf_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_pdf_fill_rectangle
	.quad	0
	.quad	gdev_pdf_copy_mono
	.quad	gdev_pdf_copy_color
	.quad	0
	.quad	psdf_get_bits
	.quad	gdev_pdf_get_params
	.quad	gdev_pdf_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_path
	.quad	gdev_pdf_stroke_path
	.quad	gdev_pdf_fill_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_strip_tile_rectangle
	.quad	0
	.quad	0
	.quad	gdev_pdf_begin_typed_image
	.quad	psdf_get_bits_rectangle
	.quad	0
	.quad	gdev_pdf_create_compositor
	.quad	0
	.quad	gdev_pdf_text_begin
	.quad	0
	.quad	gdev_pdf_begin_transparency_group
	.quad	gdev_pdf_end_transparency_group
	.quad	gdev_pdf_begin_transparency_mask
	.quad	gdev_pdf_end_transparency_mask
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fill_rectangle_hl_color
	.quad	gdev_pdf_include_color_space
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_pdf_dev_spec_op
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
	.quad	4621819117588971520     # double 10
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3010                    # 0xbc2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	4608533498688228557     # double 1.3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	500000                  # 0x7a120
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1069547520              # float 1.5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.2
	.quad	s_zlibE_template
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	1073741824              # float 2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	.L.str.3
	.long	300                     # 0x12c
	.zero	4
	.quad	.L.str.2
	.quad	s_CFE_template
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	1                       # 0x1
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.zero	4
	.quad	4608983858650965606     # double 1.3999999999999999
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	12000                   # 0x2ee0
	.quad	256000                  # 0x3e800
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	4294967292              # 0xfffffffc
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	32
	.zero	32
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4128
	.zero	4128
	.zero	4128
	.zero	4128
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	48
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	1                       # 0x1
	.zero	1920
	.zero	40
	.zero	16
	.quad	0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.zero	16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	1512
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	36
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	24
	.zero	4
	.quad	0                       # double 0
	.quad	0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gs_eps2write_device, 30792

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"{Catalog}"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"{DocInfo}"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/Producer"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"(D:%04d%02d%02d%02d%02d%02d%c%02d'%02d')"
	.size	.L.str.9, 41

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/CreationDate"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/ModDate"
	.size	.L.str.11, 9

	.type	pdf_set_process_color_model.pcm_color_info,@object # @pdf_set_process_color_model.pcm_color_info
	.section	.rodata,"a",@progbits
	.align	16
pdf_set_process_color_model.pcm_color_info:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.12
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.13
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	pdf_set_process_color_model.pcm_color_info, 2880

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"DeviceGray"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DeviceCMYK"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"DeviceN"
	.size	.L.str.14, 8

	.type	st_pdf_linearisation_record_element,@object # @st_pdf_linearisation_record_element
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_linearisation_record_element:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.49
	.quad	0
	.quad	0
	.quad	pdf_linearisation_record_elt_enum_ptrs
	.quad	pdf_linearisation_record_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_linearisation_record_element, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"start resource usage array"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"resize resource usage array"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Page usage records"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Free old page usage records"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gx_device_pdf"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdf_open(global_named_objects)"
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pdf_open(NI stack)"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"pdf_open(graphics state stack)"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pdf_open(Namespace stack)"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"User password is specified. Need an Owner password or both.\n"
	.size	.L.str.24, 61

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Can't accept encryption options without a password.\n"
	.size	.L.str.25, 53

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"pdf_open(local_named_objects)"
	.size	.L.str.26, 30

	.type	st_pdf_substream_save_element,@object # @st_pdf_substream_save_element
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_substream_save_element:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.43
	.quad	0
	.quad	0
	.quad	pdf_substream_save_elt_enum_ptrs
	.quad	pdf_substream_save_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_substream_save_element, 64

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"pdf_open"
	.size	.L.str.27, 9

	.type	st_pdf_page_element,@object # @st_pdf_page_element
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_page_element:
	.long	208                     # 0xd0
	.zero	4
	.quad	.L.str.45
	.quad	0
	.quad	0
	.quad	pdf_page_elt_enum_ptrs
	.quad	pdf_page_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_page_element, 64

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"pdf_open(pages)"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"outline_levels array"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\n\nUse of -dUseCIEColor detected!\nSince the release of version 9.11 of Ghostscript we recommend you do not set\n-dUseCIEColor with the pdfwrite/ps2write device family.\n\n"
	.size	.L.str.30, 168

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"w+"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pdf_open_temp_stream(strm)"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"pdf_open_temp_stream(strm_buf)"
	.size	.L.str.33, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"pdf_compute_fileID"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Encryption is not allowed in a PDF/X doucment.\n"
	.size	.L.str.35, 48

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"PDF 1.3 only supports 40 bits keys.\n"
	.size	.L.str.36, 37

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Encryption revisions 2 and 3 are only supported.\n"
	.size	.L.str.37, 50

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"PDF 1.3 only supports the encryption revision 2.\n"
	.size	.L.str.38, 50

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"The maximal length of PDF encryption key is 128 bits.\n"
	.size	.L.str.39, 55

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PDF encryption key length must be a multiple of 8.\n"
	.size	.L.str.40, 52

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Some of Permissions are not allowed with R=2.\n"
	.size	.L.str.41, 47

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Encryption version 2 revision 2 with KeyLength > 40 appears incompatible to some viewers. With long keys use revision 3.\n"
	.size	.L.str.42, 122

	.type	pdf_compute_encryption_data.v,@object # @pdf_compute_encryption_data.v
	.section	.rodata,"a",@progbits
pdf_compute_encryption_data.v:
	.zero	4,255
	.size	pdf_compute_encryption_data.v, 4

	.type	pad,@object             # @pad
	.align	16
pad:
	.ascii	"(\277N^Nu\212Ad\000NV\377\372\001\b..\000\266\320h>\200/\f\251\376dSiz"
	.size	pad, 32

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"pdf_substream_save[]"
	.size	.L.str.43, 21

	.type	st_pdf_substream_save,@object # @st_pdf_substream_save
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_substream_save:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_substream_save_reloc
	.size	st_pdf_substream_save, 64

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"pdf_substream_save"
	.size	.L.str.44, 19

	.type	pdf_substream_save_reloc,@object # @pdf_substream_save_reloc
	.section	.rodata,"a",@progbits
	.align	8
pdf_substream_save_reloc:
	.short	8                       # 0x8
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_substream_save_enum
	.size	pdf_substream_save_reloc, 24

	.type	pdf_substream_save_enum,@object # @pdf_substream_save_enum
	.align	16
pdf_substream_save_enum:
	.short	2                       # 0x2
	.short	96                      # 0x60
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	40                      # 0x28
	.short	0                       # 0x0
	.short	48                      # 0x30
	.short	0                       # 0x0
	.short	64                      # 0x40
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	88                      # 0x58
	.size	pdf_substream_save_enum, 32

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"pdf_page_t[]"
	.size	.L.str.45, 13

	.type	st_pdf_page,@object     # @st_pdf_page
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_page:
	.long	208                     # 0xd0
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_page_reloc_ptrs
	.size	st_pdf_page, 64

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"pdf_page_t"
	.size	.L.str.46, 11

	.type	pdf_page_reloc_ptrs,@object # @pdf_page_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_page_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_page_enum_ptrs
	.size	pdf_page_reloc_ptrs, 24

	.type	pdf_page_enum_ptrs,@object # @pdf_page_enum_ptrs
	.align	2
pdf_page_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	104                     # 0x68
	.size	pdf_page_enum_ptrs, 8

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"pdf_close_temp_file(strm_buf)"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"pdf_close_temp_file(strm)"
	.size	.L.str.48, 26

	.type	pdf_dominant_rotation.angles,@object # @pdf_dominant_rotation.angles
	.section	.rodata,"a",@progbits
	.align	16
pdf_dominant_rotation.angles:
	.long	0                       # 0x0
	.long	90                      # 0x5a
	.long	180                     # 0xb4
	.long	270                     # 0x10e
	.long	4294967295              # 0xffffffff
	.size	pdf_dominant_rotation.angles, 20

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"pdf_linearstion_record_t[]"
	.size	.L.str.49, 27

	.type	st_pdf_linearisation_record,@object # @st_pdf_linearisation_record
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_linearisation_record:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_linearisation_record_reloc_ptrs
	.size	st_pdf_linearisation_record, 64

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"pdf_linearisation_record_t"
	.size	.L.str.50, 27

	.type	pdf_linearisation_record_reloc_ptrs,@object # @pdf_linearisation_record_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_linearisation_record_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_linearisation_record_enum_ptrs
	.size	pdf_linearisation_record_reloc_ptrs, 24

	.type	pdf_linearisation_record_enum_ptrs,@object # @pdf_linearisation_record_enum_ptrs
	.align	2
pdf_linearisation_record_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	pdf_linearisation_record_enum_ptrs, 4

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"<< /Type /Pages /Kids [\n"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%ld 0 R\n"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"] /Count %d\n"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	">>\n"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"<< /Count %d"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	" /First %ld 0 R /Last %ld 0 R >>\n"
	.size	.L.str.56, 34

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"[ "
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"pdf_close(article contents)"
	.size	.L.str.58, 28

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"pdf_close(article)"
	.size	.L.str.59, 19

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"]\n"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<<"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/Type /Catalog /Pages %ld 0 R\n"
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/Outlines %ld 0 R\n"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"/Threads %ld 0 R\n"
	.size	.L.str.64, 18

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/Dests %ld 0 R\n"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"/Names <<\n"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/Dests <</Kids [%ld 0 R]>>\n"
	.size	.L.str.67, 28

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/EmbeddedFiles << /Kids [%ld 0 R]>>\n"
	.size	.L.str.68, 37

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/PageLabels << /Nums  %ld 0 R >>\n"
	.size	.L.str.69, 34

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"pdf_close(Dests)"
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"pdf_close(EmbeddFiles)"
	.size	.L.str.71, 23

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"pdf_close(PageLabels)"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%%EndProlog\n"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%%BeginSetup\n"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\n"
	.size	.L.str.75, 2

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\n%%EndSetup\n"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"%%%%Page: %d %d\n"
	.size	.L.str.77, 17

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%%%%PageBoundingBox: 0 0 %d %d\n"
	.size	.L.str.78, 32

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"%%BeginPageSetup\n"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"/pagesave save def\n"
	.size	.L.str.80, 20

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%%EndPageSetup\n"
	.size	.L.str.81, 16

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"%ld 0 obj\n"
	.size	.L.str.82, 11

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"endobj\n"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"pagesave restore\n%%PageTrailer\n"
	.size	.L.str.84, 32

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%%Trailer\n"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"end\n"
	.size	.L.str.86, 5

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"%%EOF\n"
	.size	.L.str.87, 7

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"temp xref storage"
	.size	.L.str.88, 18

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"/Filter /Standard "
	.size	.L.str.89, 19

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"/V %ld "
	.size	.L.str.90, 8

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"/Length %ld "
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"/R %ld "
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"/P %ld "
	.size	.L.str.93, 8

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"/O "
	.size	.L.str.94, 4

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"\n/U "
	.size	.L.str.95, 5

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"xref\n0 %ld\n0000000000 65535 f \n"
	.size	.L.str.96, 32

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"xref\n0 1\n0000000000 65535 f \n%ld %ld\n"
	.size	.L.str.97, 38

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"%ld %ld\n"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"trailer\n"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"<< /Size %ld /Root %ld 0 R /Info %ld 0 R\n"
	.size	.L.str.100, 42

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"/ID ["
	.size	.L.str.101, 6

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"/Encrypt %ld 0 R "
	.size	.L.str.102, 18

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"startxref\n%ld\n%%%%EOF\n"
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Free linearisation Page Usage list records"
	.size	.L.str.104, 43

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Free linearisation resource usage records"
	.size	.L.str.105, 42

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Free CharProc"
	.size	.L.str.106, 14

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"release ExtGState object"
	.size	.L.str.107, 25

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"free ExtGState"
	.size	.L.str.108, 15

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"free pattern dict"
	.size	.L.str.109, 18

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"free pattern resources"
	.size	.L.str.110, 23

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"free Shading dict"
	.size	.L.str.111, 18

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"free Shading resources"
	.size	.L.str.112, 23

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"free Group dict"
	.size	.L.str.113, 16

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"free Group resources"
	.size	.L.str.114, 21

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"free function dict"
	.size	.L.str.115, 19

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"free function resources"
	.size	.L.str.116, 24

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"pdf_resource_t"
	.size	.L.str.117, 15

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Release Name Index stack"
	.size	.L.str.118, 25

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Free Name Index stack"
	.size	.L.str.119, 22

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"pdf_close(local_named_objects)"
	.size	.L.str.120, 31

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"pdf_close(global_named_objects)"
	.size	.L.str.121, 32

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Free page dict"
	.size	.L.str.122, 15

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Release Annots dict"
	.size	.L.str.123, 20

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Free Annots dict"
	.size	.L.str.124, 17

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Free Page object"
	.size	.L.str.125, 17

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"pages"
	.size	.L.str.126, 6

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Free sbstack"
	.size	.L.str.127, 13

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"release Pages dict"
	.size	.L.str.128, 19

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Free Pages dict"
	.size	.L.str.129, 16

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"pdfwrite final free stored dash in gstate"
	.size	.L.str.130, 42

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"pdf_close(graphics state stack)"
	.size	.L.str.131, 32

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"release Name space stack"
	.size	.L.str.132, 25

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Free Name space stack"
	.size	.L.str.133, 22

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"ERROR: A pdfmark destination page %d points beyond the last page %d.\n"
	.size	.L.str.134, 70

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"<</Type/Page/MediaBox [0 0 %g %g]\n"
	.size	.L.str.135, 35

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"/TrimBox"
	.size	.L.str.136, 9

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"/ArtBox"
	.size	.L.str.137, 8

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"/CropBox"
	.size	.L.str.138, 9

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"/BleedBox"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"[ %g %g %g %g ]"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"TrimBox does not fit inside BleedBox, not permitted in PDF/X-3, reverting to normal PDF output\n"
	.size	.L.str.141, 96

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"TrimBox does not fit inside BleedBox, not permitted in PDF/X-3, reducing TrimBox\n"
	.size	.L.str.142, 82

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"TrimBox does not fit inside BleedBox, not permitted in PDF/X-3, aborting conversion\n"
	.size	.L.str.143, 85

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"TrimBox does not fit inside BleedBox, not permitted in PDF/X-3\nunrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.144, 132

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"/CropBox [%g %g %g %g]\n"
	.size	.L.str.145, 24

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"TrimBox does not fit inside CropBox, not permitted in PDF/X-3, reverting to normal PDF output\n"
	.size	.L.str.146, 95

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"TrimBox does not fit inside CropBox, not permitted in PDF/X-3, reducing TrimBox\n"
	.size	.L.str.147, 81

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"TrimBox does not fit inside CropBox, not permitted in PDF/X-3, aborting conversion\n"
	.size	.L.str.148, 84

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"TrimBox does not fit inside CropBox, not permitted in PDF/X-3\nunrecognised PDFACompatibilityLevel,\nreverting to normal PDF output\n"
	.size	.L.str.149, 131

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"/TrimBox [%g %g %g %g]\n"
	.size	.L.str.150, 24

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"/BleedBox [%g %g %g %g]\n"
	.size	.L.str.151, 25

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"/Parent %ld 0 R\n"
	.size	.L.str.152, 17

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"/NumCopies %ld\n"
	.size	.L.str.153, 16

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"/Group %ld 0 R\n"
	.size	.L.str.154, 16

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"/Resources<</ProcSet[/PDF"
	.size	.L.str.155, 26

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	" /ImageB"
	.size	.L.str.156, 9

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	" /ImageC"
	.size	.L.str.157, 9

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	" /ImageI"
	.size	.L.str.158, 9

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	" /Text"
	.size	.L.str.159, 7

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	" %ld 0 R\n"
	.size	.L.str.160, 10

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"/Annots"
	.size	.L.str.161, 8

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"pdf_write_page(Annots)"
	.size	.L.str.162, 23

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"/Contents %ld 0 R\n"
	.size	.L.str.163, 19

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"/Rotate %d"
	.size	.L.str.164, 11

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"%010ld 00000 n \n"
	.size	.L.str.165, 17

	.type	.Lpdf_linearise.Binary,@object # @pdf_linearise.Binary
	.section	.rodata,"a",@progbits
.Lpdf_linearise.Binary:
	.asciz	"%\307\354\217\242\n\000\000"
	.size	.Lpdf_linearise.Binary, 9

	.type	.L.str.166,@object      # @.str.166
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.166:
	.asciz	"free temp xref storage"
	.size	.L.str.166, 23

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"%%PDF-%d.%d\n"
	.size	.L.str.167, 13

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"%d 0 obj\n<<                                                                                                                        \n"
	.size	.L.str.168, 133

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"xref\n%d %d\n"
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"0000000000 00000 n \n"
	.size	.L.str.170, 21

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"\ntrailer\n<</Size %ld/Info %d 0 R/Root %d 0 R/ID[%s%s]/Prev %d>>\nstartxref\r\n0\n%%%%EOF\n        \n"
	.size	.L.str.171, 95

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"%d 0 obj\n<</Length           \n/S           >>\nstream\n"
	.size	.L.str.172, 54

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Hints for the pages"
	.size	.L.str.173, 20

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"Hints for the shared objects"
	.size	.L.str.174, 29

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"realloc shared object hints"
	.size	.L.str.175, 28

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"shared object hints"
	.size	.L.str.176, 20

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Page %d NumUniqueObjects %d\n"
	.size	.L.str.177, 29

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Page %d PageLength %d\n"
	.size	.L.str.178, 23

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Page %d NumSharedObjects %d\n"
	.size	.L.str.179, 29

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Page %d SharedObject %d ObjectRef %d\n"
	.size	.L.str.180, 38

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Page %d SharedObject %d Position Numerator 1\n"
	.size	.L.str.181, 46

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Page %d ContentStreamOffset %d\n"
	.size	.L.str.182, 32

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"Page %d ContentStreamLength %d\n"
	.size	.L.str.183, 32

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"\nFirstSharedObject %d\n"
	.size	.L.str.184, 23

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"FirstObjectOffset %ld\n"
	.size	.L.str.185, 23

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"FirstPageEntries %d\n"
	.size	.L.str.186, 21

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"NumSharedObjects %d\n"
	.size	.L.str.187, 21

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"GreatestObjectsNumBits 1\n"
	.size	.L.str.188, 26

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"LeastObjectLength %d\n"
	.size	.L.str.189, 22

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Shared Object group %d, Length %d\n"
	.size	.L.str.190, 35

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Shared Object group %d, SignatureFlag false\n"
	.size	.L.str.191, 45

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"Shared Object group %d, NumObjects 1\n"
	.size	.L.str.192, 38

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"\nendstream\nendobj\n"
	.size	.L.str.193, 19

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"xref\n0 %d\n"
	.size	.L.str.194, 11

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"0000000000 65535 f \n"
	.size	.L.str.195, 21

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"trailer\n<</Size %d>>\nstartxref\n%ld\n%%%%EOF\n"
	.size	.L.str.196, 44

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"%d 0 obj\n<</Linearized 1/L %ld/H[ "
	.size	.L.str.197, 35

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"%ld"
	.size	.L.str.198, 4

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	" %ld]"
	.size	.L.str.199, 6

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"/O %d/E %ld"
	.size	.L.str.200, 12

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"/N %d/T %ld>>\nendobj\n"
	.size	.L.str.201, 22

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"\ntrailer\n<</Size %ld/Info %d 0 R/Root %d 0 R/ID[%s%s]/Prev %ld>>\nstartxref\r\n0\n%%%%EOF\n"
	.size	.L.str.202, 87

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"%d 0 obj\n<</Length %10ld"
	.size	.L.str.203, 25

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"\n/S %10ld>>\nstream\n"
	.size	.L.str.204, 20

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"Free Shared object references"
	.size	.L.str.205, 30

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Free Page Hint data"
	.size	.L.str.206, 20

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Free Shared hint data"
	.size	.L.str.207, 22

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"Working memory for object rewriting"
	.size	.L.str.208, 36

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"%d 0 obj\n"
	.size	.L.str.209, 10

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"Free working memory for object rewriting"
	.size	.L.str.210, 41

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Increase working memory for object rewriting"
	.size	.L.str.211, 45

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"endobj"
	.size	.L.str.212, 7

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"stream"
	.size	.L.str.213, 7

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	" 0 R"
	.size	.L.str.214, 5

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"%d 0 R"
	.size	.L.str.215, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
