	.text
	.file	"gdevpdfe.bc"
	.globl	pdf_get_docinfo_item
	.align	16, 0x90
	.type	pdf_get_docinfo_item,@function
pdf_get_docinfo_item:                   # @pdf_get_docinfo_item
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
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	26520(%rdi), %rbp
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_find
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB0_6
# BB#1:                                 # %land.lhs.true
	cmpl	$1, (%rax)
	ja	.LBB0_6
# BB#2:                                 # %if.then
	movl	16(%rax), %ecx
	movq	8(%rax), %rsi
	cmpl	$3, %ecx
	jb	.LBB0_5
# BB#3:                                 # %land.lhs.true.10
	movzbl	(%rsi), %eax
	cmpl	$40, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.16
	incq	%rsi
	addl	$-2, %ecx
.LBB0_5:                                # %if.end.30
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %ebx
	cmpl	%r15d, %ebx
	cmovgl	%r15d, %ebx
	movslq	%ebx, %rdx
	movq	%r14, %rdi
	callq	memcpy
.LBB0_6:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_get_docinfo_item, .Lfunc_end0-pdf_get_docinfo_item
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4608983858650965606     # double 1.3999999999999999
	.text
	.globl	pdf_document_metadata
	.align	16, 0x90
	.type	pdf_document_metadata,@function
pdf_document_metadata:                  # @pdf_document_metadata
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
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
	subq	$320, %rsp              # imm = 0x140
.Ltmp14:
	.cfi_def_cfa_offset 368
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%eax, %eax
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	9368(%r14), %xmm0
	ja	.LBB1_57
# BB#1:                                 # %if.end
	cmpl	$0, 9388(%r14)
	jne	.LBB1_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, 9404(%r14)
	je	.LBB1_56
.LBB1_3:                                # %if.then.2
	movw	$0, 12(%rsp)
	movl	$0, 8(%rsp)
	movq	5848(%r14), %rdi
	callq	*208(%rdi)
	movq	5848(%r14), %rdi
	leaq	8(%rsp), %rsi
	movl	$6, %edx
	callq	s_MD5C_get_digest
	xorl	%r9d, %r9d
	cmpl	$0, 9680(%r14)
	je	.LBB1_5
# BB#4:                                 # %select.mid
	movl	$8, %r9d
.LBB1_5:                                # %select.end
	leaq	40(%rsp), %rcx
	movl	$29, %esi
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	%r14, %rdi
	callq	pdf_open_aside
	testl	%eax, %eax
	js	.LBB1_57
# BB#6:                                 # %if.end.12
	movq	40(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str, %esi
	movl	$.L.str.1, %edx
	movl	$9, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_57
# BB#7:                                 # %if.end.16
	movq	40(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.2, %esi
	movl	$.L.str.3, %edx
	movl	$4, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB1_57
# BB#8:                                 # %if.end.21
	movabsq	$125350848000000000, %r15 # imm = 0x1BD55EE9F558000
	movq	5848(%r14), %rbx
	movb	$58, 304(%rsp)
	movl	$1684632949, 300(%rsp)  # imm = 0x64697575
	leaq	240(%rsp), %rdi
	leaq	300(%rsp), %rsi
	movl	$5, %edx
	callq	memcpy
	movslq	9512(%r14), %rax
	testq	%rax, %rax
	je	.LBB1_10
# BB#9:                                 # %if.then.i.i
	cmpl	$39, %eax
	movl	$39, %ebp
	cmovbeq	%rax, %rbp
	leaq	245(%rsp), %rdi
	movq	9504(%r14), %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 240(%rsp,%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.i.i
	movq	28736(%r14), %rcx
	imulq	$10000000, %rcx, %rdi   # imm = 0x989680
	movabsq	$-6640827866535438581, %rdx # imm = 0xA3D70A3D70A3D70B
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$6, %rdx
	leaq	(%rdx,%rax), %rsi
	addq	%r15, %rsi
	addq	%rdi, %rsi
	movslq	9520(%r14), %rdx
	leaq	245(%rsp), %rcx
	leaq	8(%rsp), %rdi
	callq	pdf_make_uuid
.LBB1_11:                               # %pdf_make_instance_uuid.exit.i
	movb	$58, 304(%rsp)
	movl	$1684632949, 300(%rsp)  # imm = 0x64697575
	leaq	192(%rsp), %rdi
	leaq	300(%rsp), %rsi
	movl	$5, %edx
	callq	memcpy
	movslq	9496(%r14), %rax
	testq	%rax, %rax
	je	.LBB1_13
# BB#12:                                # %if.then.i.168.i
	cmpl	$39, %eax
	movl	$39, %ebp
	cmovbeq	%rax, %rbp
	leaq	197(%rsp), %rdi
	movq	9488(%r14), %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 192(%rsp,%rbp)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.i.177.i
	movq	28736(%r14), %rcx
	imulq	$10000000, %rcx, %rdi   # imm = 0x989680
	movabsq	$-6640827866535438581, %rdx # imm = 0xA3D70A3D70A3D70B
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$6, %rdx
	leaq	(%rdx,%rax), %rsi
	addq	%r15, %rsi
	addq	%rdi, %rsi
	movslq	9520(%r14), %rdx
	leaq	197(%rsp), %rcx
	leaq	8(%rsp), %rdi
	callq	pdf_make_uuid
.LBB1_14:                               # %pdf_make_document_uuid.exit.i
	cmpl	$0, 9564(%r14)
	je	.LBB1_16
# BB#15:                                # %if.then.7.i
	movb	$0, 240(%rsp)
.LBB1_16:                               # %if.end.8.i
	movq	26520(%r14), %rbp
	movl	$.L.str.5, %edi
	callq	strlen
	movl	$.L.str.5, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB1_22
# BB#17:                                # %land.lhs.true.i.i
	cmpl	$1, (%rax)
	ja	.LBB1_22
# BB#18:                                # %if.then.i.182.i
	movl	16(%rax), %ecx
	movq	8(%rax), %rsi
	cmpl	$3, %ecx
	jb	.LBB1_21
# BB#19:                                # %land.lhs.true.10.i.i
	movzbl	(%rsi), %eax
	cmpl	$40, %eax
	jne	.LBB1_21
# BB#20:                                # %if.then.16.i.i
	incq	%rsi
	addl	$-2, %ecx
.LBB1_21:                               # %pdf_get_docinfo_item.exit.i
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	cmpl	$40, %eax
	movl	$40, %ebp
	cmovlel	%eax, %ebp
	movslq	%ebp, %r15
	leaq	144(%rsp), %rdi
	movq	%r15, %rdx
	callq	memcpy
	testl	%r15d, %r15d
	je	.LBB1_22
# BB#23:                                # %if.else.i
	leaq	144(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	%ebp, %esi
	callq	pdf_xmp_convert_time
	movl	%eax, %r15d
	jmp	.LBB1_24
.LBB1_22:                               # %if.then.11.i
	leaq	312(%rsp), %rbp
	movq	%rbp, %rdi
	callq	time
	movq	%rbp, %rdi
	callq	localtime
	movl	12(%rax), %r8d
	movq	16(%rax), %rdx
	leal	1(%rdx), %ecx
	shrq	$32, %rdx
	addl	$1900, %edx             # imm = 0x76C
	leaq	300(%rsp), %r15
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	leaq	144(%rsp), %rbp
	movl	$40, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	strncpy
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r15
.LBB1_24:                               # %if.end.17.i
	movq	26520(%r14), %rbp
	movl	$.L.str.6, %edi
	callq	strlen
	movl	$.L.str.6, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB1_30
# BB#25:                                # %land.lhs.true.i.193.i
	cmpl	$1, (%rax)
	ja	.LBB1_30
# BB#26:                                # %if.then.i.197.i
	movl	16(%rax), %ecx
	movq	8(%rax), %rsi
	cmpl	$3, %ecx
	jb	.LBB1_29
# BB#27:                                # %land.lhs.true.10.i.199.i
	movzbl	(%rsi), %eax
	cmpl	$40, %eax
	jne	.LBB1_29
# BB#28:                                # %if.then.16.i.202.i
	incq	%rsi
	addl	$-2, %ecx
.LBB1_29:                               # %pdf_get_docinfo_item.exit213.i
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	cmpl	$40, %eax
	movl	$40, %ebp
	cmovlel	%eax, %ebp
	movslq	%ebp, %r12
	leaq	96(%rsp), %rdi
	movq	%r12, %rdx
	callq	memcpy
	testl	%r12d, %r12d
	je	.LBB1_30
# BB#31:                                # %if.else.24.i
	leaq	96(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	%ebp, %esi
	callq	pdf_xmp_convert_time
	movl	%eax, %r12d
	jmp	.LBB1_32
.LBB1_30:                               # %if.then.21.i
	leaq	312(%rsp), %rbp
	movq	%rbp, %rdi
	callq	time
	movq	%rbp, %rdi
	callq	localtime
	movl	12(%rax), %r8d
	movq	16(%rax), %rdx
	leal	1(%rdx), %ecx
	shrq	$32, %rdx
	addl	$1900, %edx             # imm = 0x76C
	leaq	300(%rsp), %r12
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	leaq	96(%rsp), %rbp
	movl	$40, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	strncpy
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r12
.LBB1_32:                               # %if.end.28.i
	movl	$.L.str.63, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$dd, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.10, %edi
	callq	strlen
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.64, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	leaq	240(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.17, %edi
	callq	strlen
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	26520(%r14), %rdi
	movl	$.L.str.18, %esi
	movl	$9, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB1_36
# BB#33:                                # %if.then.32.i
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.20, %edx
	movl	$.L.str.21, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#34:                                # %if.end.36.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.18, %edx
	movl	$.L.str.23, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#35:                                # %if.end.40.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB1_38
.LBB1_36:                               # %if.else.41.i
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.20, %edx
	movl	$.L.str.21, %ecx
	movl	$pdf_xml_attribute_value_data, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#37:                                # %if.end.45.i
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB1_38:                               # %if.end.46.i
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	leaq	240(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.25, %edi
	callq	strlen
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movslq	%r12d, %rax
	movb	$0, 96(%rsp,%rax)
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movslq	%r15d, %rax
	movb	$0, 144(%rsp,%rax)
	leaq	144(%rsp), %rsi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.27, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.29, %edx
	movl	$.L.str.30, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#39:                                # %if.end.56.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.28, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	leaq	240(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.32, %edi
	callq	strlen
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	leaq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.35, %edi
	callq	strlen
	movl	$.L.str.35, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.36, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.37, %edi
	callq	strlen
	movl	$.L.str.37, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.42, %edi
	callq	strlen
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.43, %edx
	movl	$.L.str.44, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#40:                                # %if.end.63.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	26520(%r14), %rdi
	movl	$.L.str.45, %esi
	movl	$7, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB1_43
# BB#41:                                # %if.then.67.i
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.45, %edx
	movl	$.L.str.23, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#42:                                # %if.end.71.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.47, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB1_43:                               # %if.end.72.i
	movq	26520(%r14), %rdi
	movl	$.L.str.48, %esi
	movl	$8, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB1_46
# BB#44:                                # %if.then.76.i
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.42, %edi
	callq	strlen
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.48, %edx
	movl	$.L.str.50, %ecx
	movl	$pdf_xml_data_write, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_xmp_write_docinfo_item
	testl	%eax, %eax
	js	.LBB1_52
# BB#45:                                # %if.end.80.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.49, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB1_46:                               # %if.end.81.i
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 9564(%r14)
	je	.LBB1_51
# BB#47:                                # %if.then.84.i
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	leaq	240(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.51, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.52, %edi
	callq	strlen
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.53, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	9564(%r14), %ebp
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	cmpl	$1, %ebp
	jne	.LBB1_49
# BB#48:                                # %if.then.88.i
	movl	$.L.str.54, %edi
	callq	strlen
	movl	$.L.str.54, %esi
	jmp	.LBB1_50
.LBB1_49:                               # %if.else.89.i
	movl	$.L.str.55, %edi
	callq	strlen
	movl	$.L.str.55, %esi
.LBB1_50:                               # %if.end.90.i
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$32, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.57, %edi
	callq	strlen
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB1_51:                               # %if.end.91.i
	movl	$.L.str.58, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.59, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.60, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	xorl	%eax, %eax
.LBB1_52:                               # %pdf_write_document_metadata.exit
	testl	%eax, %eax
	js	.LBB1_57
# BB#53:                                # %if.end.26
	movq	%r14, %rdi
	callq	pdf_close_aside
	testl	%eax, %eax
	js	.LBB1_57
# BB#54:                                # %if.end.30
	movq	40(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$34, %edx
	movq	%r14, %rsi
	callq	cos_write_object
	testl	%eax, %eax
	js	.LBB1_57
# BB#55:                                # %cleanup
	movq	40(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rdx
	leaq	16(%rsp), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	movq	40(%rsp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rsi
	movl	$-3, %edx
	movq	%r14, %rdi
	callq	pdf_record_usage
	movq	26512(%r14), %rdi
	movq	40(%rsp), %rax
	movq	64(%rax), %rdx
	movl	$.L.str.1, %esi
	callq	cos_dict_put_c_key_object
	testl	%eax, %eax
	js	.LBB1_57
.LBB1_56:                               # %if.end.51
	xorl	%eax, %eax
.LBB1_57:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_document_metadata, .Lfunc_end1-pdf_document_metadata
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_xmp_convert_time,@function
pdf_xmp_convert_time:                   # @pdf_xmp_convert_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	cmpl	$40, %esi
	movl	$40, %ebp
	cmovlel	%esi, %ebp
	movzbl	(%rbx), %eax
	cmpl	$68, %eax
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movzbl	1(%rbx), %eax
	cmpl	$58, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then.7
	addl	$-2, %ebp
	leaq	2(%rbx), %rsi
	movslq	%ebp, %rdx
	movq	%r14, %rdi
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movslq	%ebp, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
.LBB2_4:                                # %if.end.11
	callq	memcpy
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$4, %eax
	cmpl	$5, %ebp
	jl	.LBB2_15
# BB#5:                                 # %if.end.16
	movb	$45, 4(%rbx)
	leaq	5(%rbx), %rdi
	leaq	4(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	movl	$7, %eax
	cmpl	$7, %ebp
	jl	.LBB2_15
# BB#6:                                 # %if.end.24
	movb	$45, 7(%rbx)
	leaq	8(%rbx), %rdi
	leaq	6(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	movl	$10, %eax
	cmpl	$9, %ebp
	jl	.LBB2_15
# BB#7:                                 # %if.end.32
	movb	$84, 10(%rbx)
	leaq	11(%rbx), %rdi
	leaq	8(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	movb	$58, 13(%rbx)
	leaq	14(%rbx), %rdi
	leaq	10(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	cmpl	$12, %ebp
	jg	.LBB2_9
# BB#8:                                 # %if.then.43
	movb	$90, 16(%rbx)
	movl	$17, %eax
	jmp	.LBB2_15
.LBB2_9:                                # %if.end.45
	movb	$58, 16(%rbx)
	leaq	17(%rbx), %rdi
	leaq	12(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	cmpl	$14, %ebp
	jg	.LBB2_11
# BB#10:                                # %if.then.52
	movb	$90, 18(%rbx)
	movl	$19, %eax
	jmp	.LBB2_15
.LBB2_11:                               # %if.end.54
	movb	14(%r14), %cl
	movb	%cl, 19(%rbx)
	cmpl	$16, %ebp
	movl	$20, %eax
	jl	.LBB2_15
# BB#12:                                # %if.end.54
	movzbl	%cl, %ecx
	cmpl	$90, %ecx
	je	.LBB2_15
# BB#13:                                # %if.end.66
	leaq	20(%rbx), %rdi
	leaq	15(%r14), %rsi
	movl	$2, %edx
	callq	memcpy
	movl	$22, %eax
	cmpl	$18, %ebp
	jl	.LBB2_15
# BB#14:                                # %if.end.73
	movb	$58, 22(%rbx)
	addq	$23, %rbx
	addq	$18, %r14
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$25, %eax
.LBB2_15:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pdf_xmp_convert_time, .Lfunc_end2-pdf_xmp_convert_time
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_xmp_write_docinfo_item,@function
pdf_xmp_write_docinfo_item:             # @pdf_xmp_write_docinfo_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 64
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	26520(%r13), %rbp
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	cos_dict_find
	testq	%rax, %rax
	je	.LBB3_6
# BB#1:                                 # %land.lhs.true
	cmpl	$1, (%rax)
	ja	.LBB3_6
# BB#2:                                 # %if.then
	movl	16(%rax), %ecx
	movq	8(%rax), %rdx
	cmpl	$2, %ecx
	jb	.LBB3_5
# BB#3:                                 # %land.lhs.true.10
	movzbl	(%rdx), %eax
	cmpl	$40, %eax
	jne	.LBB3_5
# BB#4:                                 # %if.then.16
	incq	%rdx
	addl	$-2, %ecx
.LBB3_5:                                # %if.else
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %r8
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pdf_xmp_write_translated # TAILCALL
.LBB3_6:                                # %cleanup
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	stream_puts
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_xmp_write_docinfo_item, .Lfunc_end3-pdf_xmp_write_docinfo_item
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_xml_data_write,@function
pdf_xml_data_write:                     # @pdf_xml_data_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	testl	%ebx, %ebx
	jg	.LBB4_1
	jmp	.LBB4_18
	.align	16, 0x90
.LBB4_13:                               # %sw.default
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$31, %edx
	jbe	.LBB4_14
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movb	%dl, %al
	addb	$-127, %al
	movzbl	%al, %eax
	cmpl	$32, %eax
	ja	.LBB4_20
.LBB4_14:                               # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.73, %esi
	movq	%r14, %rdi
	callq	pprintd1
	jmp	.LBB4_15
.LBB4_20:                               # %if.else.35
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%edx, %eax
	andl	$224, %eax
	cmpl	$192, %eax
	jne	.LBB4_23
# BB#21:                                # %while.body.i
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r14, %rdi
	movl	%edx, %esi
	callq	spputc
	leal	-2(%rbx), %ebp
	cmpl	$1, %ebx
	jne	.LBB4_39
# BB#22:                                #   in Loop: Header=BB4_1 Depth=1
	incq	%r15
	jmp	.LBB4_17
.LBB4_23:                               # %if.else.40
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%edx, %eax
	andl	$240, %eax
	movq	%r14, %rdi
	movl	%edx, %esi
	cmpl	$240, %eax
	jne	.LBB4_24
# BB#27:                                # %while.body.i.28
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	spputc
	leal	-2(%rbx), %ebp
	cmpl	$1, %ebx
	jne	.LBB4_30
# BB#28:                                #   in Loop: Header=BB4_1 Depth=1
	incq	%r15
	jmp	.LBB4_17
.LBB4_39:                               # %while.body.i.1
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	1(%r15), %esi
	addq	$2, %r15
	movq	%r14, %rdi
	callq	spputc
	jmp	.LBB4_17
.LBB4_24:                               # %if.else.40
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$224, %eax
	jne	.LBB4_29
# BB#25:                                # %while.body.i.18
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	spputc
	leal	-2(%rbx), %ebp
	cmpl	$1, %ebx
	jne	.LBB4_36
# BB#26:                                #   in Loop: Header=BB4_1 Depth=1
	incq	%r15
	jmp	.LBB4_17
.LBB4_30:                               # %while.body.i.28.1
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	1(%r15), %esi
	movq	%r14, %rdi
	callq	spputc
	leal	-3(%rbx), %r12d
	testl	%ebp, %ebp
	je	.LBB4_31
# BB#32:                                # %while.body.i.28.2
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	2(%r15), %esi
	movq	%r14, %rdi
	callq	spputc
	addl	$-4, %ebx
	testl	%r12d, %r12d
	je	.LBB4_33
# BB#34:                                # %while.body.i.28.3
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	3(%r15), %esi
	addq	$4, %r15
	jmp	.LBB4_35
.LBB4_29:                               # %if.else.52
                                        #   in Loop: Header=BB4_1 Depth=1
	callq	spputc
	jmp	.LBB4_15
.LBB4_36:                               # %while.body.i.18.1
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	1(%r15), %esi
	movq	%r14, %rdi
	callq	spputc
	addl	$-3, %ebx
	testl	%ebp, %ebp
	je	.LBB4_37
# BB#38:                                # %while.body.i.18.2
                                        #   in Loop: Header=BB4_1 Depth=1
	movzbl	2(%r15), %esi
	addq	$3, %r15
.LBB4_35:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r14, %rdi
	callq	spputc
	jmp	.LBB4_16
.LBB4_31:                               #   in Loop: Header=BB4_1 Depth=1
	addq	$2, %r15
	movl	%r12d, %ebp
	jmp	.LBB4_17
.LBB4_33:                               #   in Loop: Header=BB4_1 Depth=1
	addq	$3, %r15
	jmp	.LBB4_16
.LBB4_37:                               #   in Loop: Header=BB4_1 Depth=1
	addq	$2, %r15
	jmp	.LBB4_16
	.align	16, 0x90
.LBB4_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %edx
	cmpl	$38, %edx
	jle	.LBB4_2
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$39, %edx
	je	.LBB4_11
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$62, %edx
	jne	.LBB4_7
# BB#10:                                # %sw.bb.1
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.69, %esi
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$34, %edx
	jne	.LBB4_3
# BB#12:                                # %sw.bb.13
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.72, %esi
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_11:                               # %sw.bb.9
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.71, %esi
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_7:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$60, %edx
	jne	.LBB4_13
# BB#8:                                 # %sw.bb
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.68, %esi
	jmp	.LBB4_9
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpl	$38, %edx
	jne	.LBB4_13
# BB#4:                                 # %sw.bb.5
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$.L.str.70, %esi
	.align	16, 0x90
.LBB4_9:                                # %while.cond.backedge
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	%r14, %rdi
	callq	stream_puts
.LBB4_15:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_1 Depth=1
	decl	%ebx
	incq	%r15
.LBB4_16:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	%ebx, %ebp
.LBB4_17:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_1 Depth=1
	testl	%ebp, %ebp
	movl	%ebp, %ebx
	jg	.LBB4_1
.LBB4_18:                               # %while.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pdf_xml_data_write, .Lfunc_end4-pdf_xml_data_write
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_xml_attribute_value_data,@function
pdf_xml_attribute_value_data:           # @pdf_xml_attribute_value_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 32
.Ltmp52:
	.cfi_offset %rbx, -32
.Ltmp53:
	.cfi_offset %r14, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$39, %esi
	callq	spputc
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	pdf_xml_data_write
	movl	$39, %esi
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	spputc                  # TAILCALL
.Lfunc_end5:
	.size	pdf_xml_attribute_value_data, .Lfunc_end5-pdf_xml_attribute_value_data
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_make_uuid,@function
pdf_make_uuid:                          # @pdf_make_uuid
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 64
	movq	%rsi, %r8
	shrq	$48, %r8
	movq	%rsi, %rax
	shrq	$28, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, (%rsp)
	movq	%rsi, %rax
	shrq	$24, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 1(%rsp)
	movq	%rsi, %rax
	shrq	$20, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 2(%rsp)
	movq	%rsi, %rax
	shrq	$16, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 3(%rsp)
	movq	%rsi, %rax
	shrq	$12, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 4(%rsp)
	movq	%rsi, %rax
	shrq	$8, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 5(%rsp)
	movq	%rsi, %rax
	shrq	$4, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 6(%rsp)
	movl	%esi, %eax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 7(%rsp)
	movq	%rsi, %r9
	shrq	$32, %r9
	movb	$45, 8(%rsp)
	movq	%rsi, %rax
	shrq	$44, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 9(%rsp)
	movq	%rsi, %rax
	shrq	$40, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 10(%rsp)
	movq	%rsi, %rax
	shrq	$36, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 11(%rsp)
	andl	$15, %r9d
	movb	writehex.digit(%r9), %al
	movb	%al, 12(%rsp)
	movb	$45, 13(%rsp)
	movb	$49, 14(%rsp)
	movq	%rsi, %rax
	shrq	$56, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 15(%rsp)
	shrq	$52, %rsi
	andl	$15, %esi
	movb	writehex.digit(%rsi), %al
	movb	%al, 16(%rsp)
	andl	$15, %r8d
	movb	writehex.digit(%r8), %al
	movb	%al, 17(%rsp)
	movb	$45, 18(%rsp)
	movq	%rdx, %r8
	shrq	$8, %r8
	movq	%rdx, %rsi
	shrq	$12, %rsi
	andl	$3, %esi
	movb	writehex.digit(%rsi), %al
	movb	%al, 19(%rsp)
	andl	$15, %r8d
	movb	writehex.digit(%r8), %al
	movb	%al, 20(%rsp)
	movq	%rdx, %rax
	shrq	$4, %rax
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 21(%rsp)
	andl	$15, %edx
	movb	writehex.digit(%rdx), %al
	movb	%al, 22(%rsp)
	movb	$45, 23(%rsp)
	movzbl	(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 24(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 25(%rsp)
	movzbl	1(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 26(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 27(%rsp)
	movzbl	2(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 28(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 29(%rsp)
	movzbl	3(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 30(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 31(%rsp)
	movzbl	4(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 32(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 33(%rsp)
	movzbl	5(%rdi), %eax
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	writehex.digit(%rdx), %dl
	movb	%dl, 34(%rsp)
	andl	$15, %eax
	movb	writehex.digit(%rax), %al
	movb	%al, 35(%rsp)
	movb	$0, 36(%rsp)
	leaq	(%rsp), %rsi
	movl	$40, %edx
	movq	%rcx, %rdi
	callq	strncpy
	addq	$56, %rsp
	retq
.Lfunc_end6:
	.size	pdf_make_uuid, .Lfunc_end6-pdf_make_uuid
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_xmp_write_translated,@function
pdf_xmp_write_translated:               # @pdf_xmp_write_translated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 112
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r15
	cmpq	$0, 9600(%r15)
	je	.LBB7_1
# BB#67:                                # %if.else.212
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	24(%r15), %rdi
	leal	(%r12,%r12), %ebx
	movl	$.L.str.66, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB7_112
# BB#68:                                # %if.end.230
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB7_69
# BB#70:                                # %if.end.244
	movq	%rbp, 48(%rsp)
	movq	%rax, 40(%rsp)
	xorl	%edx, %edx
	testl	%r12d, %r12d
	jle	.LBB7_108
# BB#71:                                # %for.body.248.lr.ph
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movw	$63, %r8w
	xorl	%eax, %eax
	jmp	.LBB7_72
	.align	16, 0x90
.LBB7_106:                              # %for.inc.288
                                        #   in Loop: Header=BB7_72 Depth=1
	movq	9600(%r15), %rsi
	movl	(%rsi,%rcx,4), %ecx
	cmpl	$-1, %ecx
	cmovew	%r8w, %cx
	movw	%cx, (%rbp,%rax,2)
	incq	%rax
	incl	%edx
	cmpl	%r12d, %edx
	jl	.LBB7_72
	jmp	.LBB7_107
.LBB7_100:                              #   in Loop: Header=BB7_72 Depth=1
	movl	%esi, %edx
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_102:                              #   in Loop: Header=BB7_72 Depth=1
	movl	%r9d, %edx
	jmp	.LBB7_104
	.align	16, 0x90
.LBB7_72:                               # %for.body.248
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edx, %rsi
	movzbl	(%r13,%rsi), %edi
	cmpl	$92, %edi
	jne	.LBB7_104
# BB#73:                                # %if.then.255
                                        #   in Loop: Header=BB7_72 Depth=1
	leaq	1(%rsi), %rdx
	cmpl	%r12d, %edx
	jge	.LBB7_74
# BB#75:                                # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	movl	%ebx, %r10d
	movb	(%r13,%rdx), %bl
	movzbl	%bl, %ecx
	cmpl	$101, %ecx
	jg	.LBB7_82
# BB#76:                                # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$91, %ecx
	jg	.LBB7_79
# BB#77:                                # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$40, %dil
	cmpl	$40, %ecx
	jne	.LBB7_89
# BB#78:                                #   in Loop: Header=BB7_72 Depth=1
	movl	%r10d, %ebx
	jmp	.LBB7_104
	.align	16, 0x90
.LBB7_74:                               #   in Loop: Header=BB7_72 Depth=1
	xorl	%edi, %edi
	jmp	.LBB7_104
.LBB7_82:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$113, %ecx
	jg	.LBB7_86
# BB#83:                                # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$102, %ecx
	jne	.LBB7_84
# BB#93:                                # %sw.bb.7.i.149
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$12, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_79:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$92, %ecx
	jne	.LBB7_80
# BB#91:                                # %sw.bb.2.i.144
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$92, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_86:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$114, %ecx
	jne	.LBB7_87
# BB#92:                                # %sw.bb.4.i.146
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$13, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_89:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$41, %ecx
	jne	.LBB7_94
# BB#90:                                # %sw.bb.1.i.143
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$41, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_84:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$110, %ecx
	jne	.LBB7_94
# BB#85:                                # %sw.bb.3.i.145
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$10, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_80:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$98, %ecx
	jne	.LBB7_94
# BB#81:                                # %sw.bb.6.i.148
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$8, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_87:                               # %if.end.i.142
                                        #   in Loop: Header=BB7_72 Depth=1
	cmpl	$116, %ecx
	jne	.LBB7_94
# BB#88:                                # %sw.bb.5.i.147
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	$9, %dil
	movl	%r10d, %ebx
	jmp	.LBB7_104
.LBB7_94:                               # %sw.epilog.i.150
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	%bl, %cl
	andb	$-8, %cl
	movzbl	%cl, %ecx
	cmpl	$48, %ecx
	jne	.LBB7_95
# BB#96:                                # %if.then.14.i.154
                                        #   in Loop: Header=BB7_72 Depth=1
	addb	$-48, %bl
	leaq	2(%rsi), %r9
	cmpl	%r12d, %r9d
	jge	.LBB7_97
# BB#98:                                # %if.end.23.i.157
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	(%r13,%r9), %dil
	movb	%dil, %cl
	andb	$-8, %cl
	movzbl	%cl, %ecx
	cmpl	$48, %ecx
	jne	.LBB7_95
# BB#99:                                # %if.end.33.i.166
                                        #   in Loop: Header=BB7_72 Depth=1
	shlb	$3, %bl
	addb	%dil, %bl
	movb	%bl, %dil
	addb	$-48, %dil
	addq	$3, %rsi
	cmpl	%r12d, %esi
	jge	.LBB7_100
# BB#101:                               # %if.end.23.1.i.170
                                        #   in Loop: Header=BB7_72 Depth=1
	movb	(%r13,%rsi), %dl
	movb	%dl, %cl
	andb	$-8, %cl
	movzbl	%cl, %ecx
	cmpl	$48, %ecx
	movl	%r10d, %ebx
	jne	.LBB7_102
# BB#103:                               # %if.end.33.1.i.174
                                        #   in Loop: Header=BB7_72 Depth=1
	shlb	$3, %dil
	addb	%dl, %dil
	addb	$-48, %dil
	movl	%esi, %edx
	jmp	.LBB7_104
.LBB7_97:                               #   in Loop: Header=BB7_72 Depth=1
	movl	%r9d, %edx
.LBB7_95:                               #   in Loop: Header=BB7_72 Depth=1
	movb	%bl, %dil
	movl	%r10d, %ebx
	.align	16, 0x90
.LBB7_104:                              # %if.end.257
                                        #   in Loop: Header=BB7_72 Depth=1
	movzbl	%dil, %ecx
	cmpl	9608(%r15), %ecx
	jbe	.LBB7_106
# BB#105:                               # %cleanup.284
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB7_111
.LBB7_1:                                # %if.then
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB7_112
# BB#2:                                 # %for.cond.preheader
	movq	%rbp, %r10
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r15, %r9
	xorl	%r15d, %r15d
	testl	%r12d, %r12d
	jle	.LBB7_37
# BB#3:
	xorl	%edi, %edi
	jmp	.LBB7_4
.LBB7_15:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$113, %ebp
	jg	.LBB7_19
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$102, %ebp
	jne	.LBB7_17
# BB#24:                                # %sw.bb.7.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$12, %dl
	jmp	.LBB7_36
.LBB7_12:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$92, %ebp
	jne	.LBB7_13
# BB#22:                                # %sw.bb.2.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$92, %dl
	jmp	.LBB7_36
.LBB7_19:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$114, %ebp
	jne	.LBB7_20
# BB#23:                                # %sw.bb.4.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$13, %dl
	jmp	.LBB7_36
.LBB7_17:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$110, %ebp
	jne	.LBB7_25
# BB#18:                                # %sw.bb.3.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$10, %dl
	jmp	.LBB7_36
.LBB7_13:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$98, %ebp
	jne	.LBB7_25
# BB#14:                                # %sw.bb.6.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$8, %dl
	jmp	.LBB7_36
.LBB7_20:                               # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$116, %ebp
	jne	.LBB7_25
# BB#21:                                # %sw.bb.5.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$9, %dl
	jmp	.LBB7_36
.LBB7_25:                               # %sw.epilog.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	%sil, %dl
	andb	$-8, %dl
	movzbl	%dl, %edx
	cmpl	$48, %edx
	jne	.LBB7_26
# BB#27:                                # %if.then.14.i
                                        #   in Loop: Header=BB7_4 Depth=1
	addb	$-48, %sil
	leaq	2(%rcx), %rbp
	cmpl	%r12d, %ebp
	jge	.LBB7_28
# BB#29:                                # %if.end.23.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	(%r13,%rbp), %r8b
	movb	%r8b, %dl
	andb	$-8, %dl
	movzbl	%dl, %edx
	cmpl	$48, %edx
	jne	.LBB7_30
# BB#31:                                # %if.end.33.i
                                        #   in Loop: Header=BB7_4 Depth=1
	shlb	$3, %sil
	addb	%r8b, %sil
	movb	%sil, %dl
	addb	$-48, %dl
	addq	$3, %rcx
	cmpl	%r12d, %ecx
	jge	.LBB7_35
# BB#32:                                # %if.end.23.1.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	(%r13,%rcx), %sil
	movb	%sil, %bl
	andb	$-8, %bl
	movzbl	%bl, %edi
	cmpl	$48, %edi
	jne	.LBB7_33
# BB#34:                                # %if.end.33.1.i
                                        #   in Loop: Header=BB7_4 Depth=1
	shlb	$3, %dl
	addb	%sil, %dl
	addb	$-48, %dl
.LBB7_35:                               # %if.end.14
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	%ecx, %edi
	jmp	.LBB7_36
.LBB7_26:                               #   in Loop: Header=BB7_4 Depth=1
	movb	%sil, %dl
	jmp	.LBB7_36
.LBB7_28:                               #   in Loop: Header=BB7_4 Depth=1
	movl	%ebp, %edi
	movb	%sil, %dl
	jmp	.LBB7_36
.LBB7_30:                               #   in Loop: Header=BB7_4 Depth=1
	movb	%sil, %dl
	jmp	.LBB7_36
.LBB7_33:                               #   in Loop: Header=BB7_4 Depth=1
	movl	%ebp, %edi
	jmp	.LBB7_36
	.align	16, 0x90
.LBB7_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%edi, %rcx
	movzbl	(%r13,%rcx), %edx
	cmpl	$92, %edx
	jne	.LBB7_36
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB7_4 Depth=1
	leaq	1(%rcx), %rdi
	cmpl	%r12d, %edi
	jge	.LBB7_6
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	(%r13,%rdi), %sil
	movzbl	%sil, %ebp
	cmpl	$101, %ebp
	jg	.LBB7_15
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$91, %ebp
	jg	.LBB7_12
# BB#9:                                 # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$40, %dl
	cmpl	$40, %ebp
	je	.LBB7_36
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB7_4 Depth=1
	cmpl	$41, %ebp
	jne	.LBB7_25
# BB#11:                                # %sw.bb.1.i
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	$41, %dl
	jmp	.LBB7_36
	.align	16, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	xorl	%edx, %edx
.LBB7_36:                               # %if.end.14
                                        #   in Loop: Header=BB7_4 Depth=1
	movb	%dl, (%rax,%r15)
	incq	%r15
	incl	%edi
	cmpl	%r12d, %edi
	jl	.LBB7_4
.LBB7_37:                               # %for.end
	movzbl	(%rax), %ecx
	cmpl	$254, %ecx
	jne	.LBB7_40
# BB#38:                                # %lor.lhs.false
	movzbl	1(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB7_39
.LBB7_40:                               # %if.then.26
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movq	%r9, %rbp
	movq	24(%rbp), %rdi
	movslq	%r15d, %rax
	leaq	2(%rax,%rax), %r14
	movl	$.L.str.66, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB7_113
# BB#41:                                # %if.end.41
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdx
	callq	memset
	testl	%r15d, %r15d
	jle	.LBB7_52
# BB#42:
	movl	$3, %r12d
	movl	%r15d, %r14d
	movq	(%rsp), %r13            # 8-byte Reload
	.align	16, 0x90
.LBB7_43:                               # %for.body.49
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r13), %al
	movzbl	%al, %ecx
	testb	%cl, %cl
	jns	.LBB7_45
# BB#44:                                # %for.body.49
                                        #   in Loop: Header=BB7_43 Depth=1
	cmpl	$174, %ecx
	jae	.LBB7_45
# BB#48:                                # %if.else.83
                                        #   in Loop: Header=BB7_43 Depth=1
	movb	PDFDocEncodingLookup-256(%rcx,%rcx), %al
	leal	-1(%r12), %ecx
	movslq	%ecx, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movb	%al, (%rdx,%rcx)
	movzbl	(%r13), %eax
	movb	PDFDocEncodingLookup-255(%rax,%rax), %al
	movslq	%r12d, %rcx
	movb	%al, (%rdx,%rcx)
	movzbl	(%r13), %eax
	cmpb	$0, PDFDocEncodingLookup-255(%rax,%rax)
	jne	.LBB7_51
# BB#49:                                # %if.then.117
                                        #   in Loop: Header=BB7_43 Depth=1
	movq	24(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movzbl	(%r13), %eax
	movsbl	PDFDocEncodingLookup-255(%rax,%rax), %edx
	jmp	.LBB7_50
	.align	16, 0x90
.LBB7_45:                               # %if.then.61
                                        #   in Loop: Header=BB7_43 Depth=1
	cmpl	$127, %ecx
	jne	.LBB7_47
# BB#46:                                # %if.then.67
                                        #   in Loop: Header=BB7_43 Depth=1
	movq	24(%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movzbl	(%r13), %edx
.LBB7_50:                               # %for.inc.134
                                        #   in Loop: Header=BB7_43 Depth=1
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	callq	errprintf
	jmp	.LBB7_51
	.align	16, 0x90
.LBB7_47:                               # %if.else
                                        #   in Loop: Header=BB7_43 Depth=1
	movslq	%r12d, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movb	%al, (%rdx,%rcx)
.LBB7_51:                               # %for.inc.134
                                        #   in Loop: Header=BB7_43 Depth=1
	addl	$2, %r12d
	incq	%r13
	decl	%r14d
	jne	.LBB7_43
.LBB7_52:                               # %cleanup.thread
	movq	24(%rbp), %rdi
	movl	$.L.str.66, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	*24(%rdi)
	leal	2(%r15,%r15), %r15d
	movl	%r15d, %r12d
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB7_53
.LBB7_69:                               # %if.then.239
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB7_112
.LBB7_107:                              # %for.cond.245.for.end.290_crit_edge
	movslq	%eax, %rdx
	movq	32(%rsp), %rax          # 8-byte Reload
.LBB7_108:                              # %for.end.290
	leaq	(%rbp,%rdx,2), %rsi
	movslq	%ebx, %rdx
	movq	%rax, %rbx
	movq	%rbx, %rcx
	addq	%rdx, %rcx
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	callq	ConvertUTF16toUTF8
	testl	%eax, %eax
	je	.LBB7_109
# BB#110:                               # %sw.default.303
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbx, %rsi
	jmp	.LBB7_111
.LBB7_113:                              # %cleanup
	movq	24(%rbp), %rdi
	movl	$.L.str.66, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	jmp	.LBB7_55
.LBB7_109:                              # %sw.bb.297
	movl	40(%rsp), %edx
	subl	%ebx, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rsi
	callq	*16(%rsp)               # 8-byte Folded Reload
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB7_112
.LBB7_39:
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movq	%rax, %r13
	movq	%r9, %rbp
.LBB7_53:                               # %if.end.143
	movq	24(%rbp), %rdi
	addl	%r12d, %r12d
	movl	$.L.str.66, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB7_54
# BB#56:                                # %if.end.161
	movq	%rbp, %rax
	movslq	%r12d, %r8
	movq	%r14, 40(%rsp)
	leaq	2(%r13), %rcx
	movq	%rcx, 48(%rsp)
	movslq	%r15d, %rdx
	cmpl	$2, %r15d
	jle	.LBB7_57
# BB#58:                                # %for.body.165.lr.ph
	leaq	-3(%rdx), %rsi
	movq	%rsi, %rbp
	shrq	%rbp
	movl	$2, %edi
	btq	$1, %rsi
	movq	%rcx, %rsi
	jb	.LBB7_60
# BB#59:                                # %for.body.165.prol
	movzbl	2(%r13), %esi
	shll	$8, %esi
	movzbl	3(%r13), %edi
	orl	%esi, %edi
	leaq	4(%r13), %rsi
	movq	%rsi, 48(%rsp)
	movw	%di, 2(%r13)
	movl	$4, %edi
.LBB7_60:                               # %for.body.165.lr.ph.split
	testq	%rbp, %rbp
	movq	%rax, %r15
	je	.LBB7_63
# BB#61:                                # %for.body.165.lr.ph.split.split
	addq	$2, %rsi
	.align	16, 0x90
.LBB7_62:                               # %for.body.165
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13,%rdi), %ebp
	shll	$8, %ebp
	movzbl	1(%r13,%rdi), %ebx
	orl	%ebp, %ebx
	movq	%rsi, 48(%rsp)
	movw	%bx, -2(%rsi)
	movzbl	2(%r13,%rdi), %ebp
	shll	$8, %ebp
	movzbl	3(%r13,%rdi), %ebx
	orl	%ebp, %ebx
	leaq	2(%rsi), %rbp
	movq	%rbp, 48(%rsp)
	movw	%bx, (%rsi)
	addq	$4, %rdi
	addq	$4, %rsi
	cmpq	%rdx, %rdi
	jl	.LBB7_62
.LBB7_63:
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB7_64
.LBB7_54:                               # %if.then.156
	movq	24(%rbp), %rdi
	movl	$.L.str.66, %edx
	movq	%r13, %rsi
.LBB7_55:                               # %return
	callq	*24(%rdi)
	movl	$-25, %r14d
	jmp	.LBB7_112
.LBB7_57:                               # %if.end.161.for.end.177_crit_edge
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rax, %r15
.LBB7_64:                               # %for.end.177
	movq	%rcx, 48(%rsp)
	leaq	(%rdx,%r13), %rsi
	movq	%r14, %rcx
	addq	%r8, %rcx
	leaq	48(%rsp), %rdi
	leaq	40(%rsp), %rdx
	xorl	%r8d, %r8d
	callq	ConvertUTF16toUTF8
	testl	%eax, %eax
	je	.LBB7_66
# BB#65:                                # %sw.default
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%r14, %rsi
.LBB7_111:                              # %cleanup.321
	callq	*24(%rdi)
	movl	$-15, %r14d
.LBB7_112:                              # %return
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_66:                               # %cleanup.cont.204
	movl	40(%rsp), %edx
	subl	%r14d, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rsi
	callq	*%rbx
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.66, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	xorl	%r14d, %r14d
	jmp	.LBB7_112
.Lfunc_end7:
	.size	pdf_xmp_write_translated, .Lfunc_end7-pdf_xmp_write_translated
	.cfi_endproc

	.type	PDFDocEncodingLookup,@object # @PDFDocEncodingLookup
	.data
	.globl	PDFDocEncodingLookup
	.align	16
PDFDocEncodingLookup:
	.asciz	" \"   ! & \024 \023\001\222 D 9 :\"\022 0 \036 \034 \035 \030 \031 \032!\"\373\001\373\002\001A\001R\001`\001x\001}\0011\001B\001S\001a\001~\000\000 \254\000\241\000\242\000\243\000\244\000\245\000\246\000\247\000\250\000\251\000\252\000\253\000\254\000"
	.size	PDFDocEncodingLookup, 92

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/Type"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/Metadata"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Subtype"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/XML"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%ld 0 R"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/CreationDate"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"/ModDate"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"xpacket"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"begin"
	.size	.L.str.8, 6

	.type	dd,@object              # @dd
	.section	.rodata,"a",@progbits
dd:
	.asciz	"'\357\273\277'"
	.size	dd, 6

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"id"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"W5M0MpCehiHzreSzNTczkc9d"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<?adobe-xap-filters esc=\"CRLF\"?>\n"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<x:xmpmeta xmlns:x='adobe:ns:meta/' x:xmptk='XMP toolkit 2.9.1-13, framework 1.6'>\n"
	.size	.L.str.12, 84

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<rdf:RDF xmlns:rdf='http://www.w3.org/1999/02/22-rdf-syntax-ns#' xmlns:iX='http://ns.adobe.com/iX/1.0/'>\n"
	.size	.L.str.13, 106

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rdf:Description"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"rdf:about"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"xmlns:pdf"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"http://ns.adobe.com/pdf/1.3/"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/Keywords"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"pdf:Producer"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/Producer"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"UnknownProducer"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"pdf:Keywords"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Unknown"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"xmlns:xmp"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"http://ns.adobe.com/xap/1.0/"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"xmp:ModifyDate"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"xmp:CreateDate"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"xmp:CreatorTool"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/Creator"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UnknownApplication"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"xmlns:xapMM"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"http://ns.adobe.com/xap/1.0/mm/"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"xapMM:DocumentID"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"xmlns:dc"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"http://purl.org/dc/elements/1.1/"
	.size	.L.str.35, 33

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"dc:format"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"application/pdf"
	.size	.L.str.37, 16

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"dc:title"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"rdf:Alt"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"rdf:li"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"xml:lang"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"x-default"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/Title"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Untitled"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/Author"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"dc:creator"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"rdf:Seq"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/Subject"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"dc:description"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"No Subject"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"xmlns:pdfaid"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"http://www.aiim.org/pdfa/ns/id/"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"pdfaid:part"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"1"
	.size	.L.str.54, 2

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"2"
	.size	.L.str.55, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"pdfaid:conformance"
	.size	.L.str.56, 19

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"B"
	.size	.L.str.57, 2

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"</rdf:RDF>\n"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"</x:xmpmeta>\n"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"                                                                        \n"
	.size	.L.str.60, 74

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<?xpacket end='w'?>"
	.size	.L.str.61, 20

	.type	writehex.digit,@object  # @writehex.digit
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
writehex.digit:
	.asciz	"0123456789abcdef"
	.size	writehex.digit, 17

	.type	.Lpdf_make_document_uuid.URI_prefix,@object # @pdf_make_document_uuid.URI_prefix
	.section	.rodata,"a",@progbits
.Lpdf_make_document_uuid.URI_prefix:
	.ascii	"uuid:"
	.size	.Lpdf_make_document_uuid.URI_prefix, 5

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"%04d-%02d-%02d"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"<?"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"?>"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"\n"
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"pdf_xmp_write_translated"
	.size	.L.str.66, 25

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"PDFDocEncoding %x cannot be represented in Unicode\n"
	.size	.L.str.67, 52

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"&lt;"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"&gt;"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"&amp;"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"&apos;"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"&quot;"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"&#%d;"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"</"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/>"
	.size	.L.str.75, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
