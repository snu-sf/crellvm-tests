	.text
	.file	"gdevijs.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1116995584              # float 74
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	gsijs_open,@function
gsijs_open:                             # @gsijs_open
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
	subq	$536, %rsp              # imm = 0x218
.Ltmp6:
	.cfi_def_cfa_offset 592
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
	movq	%rdi, %r12
	leaq	18476(%r12), %rbp
	movq	%rbp, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB0_1
# BB#3:                                 # %if.end
	movl	$1, 1100(%r12)
	movq	$gsijs_create_buf_device, 12984(%r12)
	movl	18472(%r12), %ebx
	movl	%ebx, 17156(%r12)
	movq	%r12, %rdi
	callq	gdev_prn_open
	testl	%eax, %eax
	js	.LBB0_48
# BB#4:                                 # %if.end.8
	movl	$-1, %r14d
	testl	%ebx, %ebx
	je	.LBB0_7
# BB#5:                                 # %if.then.9
	movq	17176(%r12), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	dup
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_6
.LBB0_7:                                # %if.end.20
	movq	%rbp, %rdi
	callq	ijs_invoke_server
	movq	%rax, 22648(%r12)
	testq	%rax, %rax
	je	.LBB0_8
# BB#9:                                 # %if.end.34
	movq	%rax, %rdi
	callq	ijs_client_get_version
	movl	%eax, 22656(%r12)
	movq	22648(%r12), %rdi
	callq	ijs_client_open
	testl	%eax, %eax
	js	.LBB0_10
# BB#11:                                # %if.end.46
	movq	22648(%r12), %rdi
	xorl	%esi, %esi
	callq	ijs_client_begin_job
	testl	%eax, %eax
	js	.LBB0_12
# BB#13:                                # %if.end.58
	testl	%ebx, %ebx
	je	.LBB0_15
# BB#14:                                # %if.then.60
	leaq	(%rsp), %rbx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	22648(%r12), %rbp
	movq	%rbx, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.8, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%r14d, %edi
	callq	close
	jmp	.LBB0_16
.LBB0_1:                                # %if.then
	movq	24(%r12), %rbp
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.2, %esi
	jmp	.LBB0_2
.LBB0_8:                                # %if.then.26
	movq	24(%r12), %r14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	callq	errprintf
	movl	$-12, %eax
	jmp	.LBB0_48
.LBB0_6:                                # %if.then.13
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.3, %esi
	jmp	.LBB0_2
.LBB0_10:                               # %if.then.40
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.5, %esi
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	callq	errprintf
	movl	$-12, %eax
.LBB0_48:                               # %cleanup
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_12:                               # %if.then.50
	movq	24(%r12), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%r12), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	errprintf
	movq	22648(%r12), %rdi
	callq	ijs_client_close
	movl	$-12, %eax
	jmp	.LBB0_48
.LBB0_15:                               # %if.else
	movq	22648(%r12), %rbx
	leaq	13056(%r12), %rbp
	movq	%rbp, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
.LBB0_16:                               # %land.lhs.true
	movq	22592(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB0_18
# BB#17:                                # %if.end.87
	movq	22648(%r12), %rbx
	movq	%rbp, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	js	.LBB0_48
.LBB0_18:                               # %land.lhs.true.90
	movq	22608(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB0_20
# BB#19:                                # %if.end.99
	movq	22648(%r12), %rbx
	movq	%rbp, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.11, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	js	.LBB0_48
.LBB0_20:                               # %if.end.104
	movq	%r12, %rdi
	callq	gsijs_set_generic_params
	testl	%eax, %eax
	js	.LBB0_48
# BB#21:                                # %if.then.107
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_38
	jp	.LBB0_38
# BB#22:                                # %lor.lhs.false.i
	movss	888(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_38
	jp	.LBB0_38
# BB#23:                                # %if.end.i
	movl	832(%r12), %r15d
	movl	836(%r12), %r14d
	movl	84(%r12), %r13d
	movq	22648(%r12), %rdi
	xorl	%ebx, %ebx
	leaq	272(%rsp), %rbp
	xorl	%esi, %esi
	movl	$.L.str.17, %edx
	movl	$256, %r8d              # imm = 0x100
	movq	%rbp, %rcx
	callq	ijs_client_get_param
	testl	%eax, %eax
	js	.LBB0_33
# BB#24:                                # %for.cond.preheader.i
	jle	.LBB0_28
# BB#25:                                # %for.body.lr.ph.i
	movslq	%eax, %rcx
	xorl	%ebx, %ebx
.LBB0_26:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	272(%rsp,%rbx), %edx
	cmpl	$120, %edx
	je	.LBB0_28
# BB#27:                                # %for.inc.i
                                        #   in Loop: Header=BB0_26 Depth=1
	incq	%rbx
	cmpq	%rcx, %rbx
	jl	.LBB0_26
.LBB0_28:                               # %for.end.i
	cmpl	%eax, %ebx
	jne	.LBB0_32
# BB#29:                                # %if.then.16.i
	movslq	%eax, %rcx
	cmpl	$256, %eax              # imm = 0x100
	movl	$-12, %ebx
	cmovnel	%eax, %ebx
	movb	$0, 272(%rsp,%rcx)
	leaq	264(%rsp), %rsi
	movq	%rbp, %rdi
	callq	strtod
	movl	$-7, %eax
	cmpq	%rbp, 264(%rsp)
	je	.LBB0_31
# BB#30:                                # %select.mid
	movl	%ebx, %eax
.LBB0_31:                               # %select.end
	movaps	%xmm0, %xmm3
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.i
	leaq	272(%rsp), %rdi
	leaq	264(%rsp), %rdx
	leaq	256(%rsp), %rcx
	movl	%eax, %esi
	callq	gsijs_parse_wxh
	movsd	264(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	256(%rsp), %xmm0        # xmm0 = mem[0],zero
.LBB0_33:                               # %if.end.109
	testl	%eax, %eax
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	js	.LBB0_35
# BB#34:                                # %if.end.109
	movapd	%xmm0, %xmm1
.LBB0_35:                               # %if.end.109
	js	.LBB0_37
# BB#36:                                # %if.end.109
	movapd	%xmm3, %xmm2
.LBB0_37:                               # %if.end.109
	movq	%r12, %rdi
	movapd	%xmm2, %xmm0
	callq	gx_device_set_resolution
	movl	$1, 84(%r12)
	leaq	1064(%r12), %rsi
	movl	1056(%r12), %r8d
	movq	%r12, %rdi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	gdev_prn_maybe_realloc_memory
	movl	%r13d, 84(%r12)
	testl	%eax, %eax
	js	.LBB0_48
.LBB0_38:                               # %if.end.114
	movq	%r12, %rdi
	callq	gsijs_set_margin_params
	testl	%eax, %eax
	js	.LBB0_48
# BB#39:                                # %if.then.117
	movl	100(%r12), %eax
	movl	$0, 22660(%r12)
	cmpl	$3, %eax
	jne	.LBB0_47
# BB#40:                                # %if.end.i.60
	movb	$0, 272(%rsp)
	movq	22648(%r12), %rdi
	leaq	272(%rsp), %rcx
	xorl	%esi, %esi
	movl	$.L.str.25, %edx
	movl	$255, %r8d
	callq	ijs_client_enum_param
	testl	%eax, %eax
	js	.LBB0_42
# BB#41:                                # %if.then.2.i
	cltq
	movb	$0, 272(%rsp,%rax)
.LBB0_42:                               # %if.end.4.i
	leaq	272(%rsp), %rdi
	movl	$.L.str.26, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB0_44
# BB#43:                                # %if.then.8.i
	movabsq	$4294967297, %rax       # imm = 0x100000001
	jmp	.LBB0_46
.LBB0_44:                               # %if.else.i.61
	leaq	272(%rsp), %rdi
	movl	$.L.str.27, %esi
	callq	strstr
	testq	%rax, %rax
	je	.LBB0_47
# BB#45:                                # %if.then.13.i
	movabsq	$34359738369, %rax      # imm = 0x800000001
.LBB0_46:                               # %gsijs_set_krgb_mode.exit
	movq	%rax, 22660(%r12)
.LBB0_47:                               # %gsijs_set_krgb_mode.exit
	xorl	%eax, %eax
	jmp	.LBB0_48
.Lfunc_end0:
	.size	gsijs_open, .Lfunc_end0-gsijs_open
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1116733440              # float 72
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	gsijs_output_page,@function
gsijs_output_page:                      # @gsijs_output_page
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
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp19:
	.cfi_def_cfa_offset 400
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	100(%rbx), %r14d
	movl	22660(%rbx), %r13d
	movl	22664(%rbx), %r12d
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movss	888(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 32(%rsp)         # 4-byte Spill
	movq	24(%rbx), %rdi
	movl	$.L.str.28, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB1_40
# BB#1:                                 # %if.end
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movq	%rbx, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	832(%rbx), %ebp
	leaq	320(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1152(%rbx)
	movss	320(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI1_0(%rip), %xmm0
	movss	900(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	916(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	.LCPI1_1(%rip), %xmm2
	cvtss2sd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	divss	892(%rbx), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	movl	%ebp, %edx
	subl	%eax, %edx
	addl	%ecx, %edx
	cmpl	%edx, %ebp
	cmovlel	%ebp, %edx
	movq	%rdx, %rbp
	movzwl	108(%rbx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%r13d, %r13d
	movl	%r13d, 40(%rsp)         # 4-byte Spill
	je	.LBB1_3
# BB#2:                                 # %if.then.13
	movl	10132(%rbx), %esi
	leal	7(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	%ebp, 22672(%rbx)
	imull	%eax, %esi
	movl	%esi, 22676(%rbx)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.28, %ecx
	callq	*88(%rdi)
	movq	%rax, 22680(%rbx)
	testq	%rax, %rax
	je	.LBB1_40
.LBB1_3:                                # %if.end.28
	movq	%rbp, %r13
	leaq	64(%rsp), %r15
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	22648(%rbx), %rbp
	movq	%r15, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.29, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_5
# BB#4:                                 # %if.then.i
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_5:                                # %gsijs_client_set_param.exit
	movl	22588(%rbx), %edx
	leaq	64(%rsp), %r15
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	22648(%rbx), %rbp
	movq	%r15, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.30, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_7
# BB#6:                                 # %if.then.i.96
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.30, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_7:                                # %gsijs_client_set_param.exit97
	movl	$.L.str.31, %esi
	cmpl	$4, %r14d
	je	.LBB1_12
# BB#8:                                 # %cond.false
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	sete	%al
	cmpl	$3, %r14d
	movl	$.L.str.32, %ecx
	movl	$.L.str.1, %esi
	cmovneq	%rcx, %rsi
	jne	.LBB1_12
# BB#9:                                 # %cond.false
	testb	%al, %al
	jne	.LBB1_12
# BB#10:                                # %cond.true.43
	movl	$.L.str.26, %esi
	cmpl	$1, %r12d
	je	.LBB1_12
# BB#11:                                # %select.mid
	movl	$.L.str.27, %esi
.LBB1_12:                               # %cond.end.51
	leaq	64(%rsp), %r15
	movq	%r15, %rdi
	callq	strcpy
	movq	22648(%rbx), %rbp
	movq	%r15, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.25, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_14
# BB#13:                                # %if.then.i.105
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.25, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_14:                               # %gsijs_client_set_param.exit106
	leaq	64(%rsp), %r15
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	gs_sprintf
	movq	22648(%rbx), %rbp
	movq	%r15, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.33, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_16
# BB#15:                                # %if.then.i.114
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.33, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_16:                               # %gsijs_client_set_param.exit115
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	leaq	64(%rsp), %r15
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	60(%rsp), %edx          # 4-byte Reload
	callq	gs_sprintf
	movq	22648(%rbx), %rbp
	movq	%r15, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.34, %edx
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_18
# BB#17:                                # %if.then.i.123
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.34, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_18:                               # %gsijs_client_set_param.exit124
	leaq	64(%rsp), %r15
	movl	$.L.str.20, %esi
	movb	$2, %al
	movq	%r15, %rdi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_sprintf
	movq	22648(%rbx), %r12
	movq	%r15, %rdi
	callq	strlen
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$.L.str.17, %edx
	movq	%r12, %rdi
	movq	%r15, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB1_20
# BB#19:                                # %if.then.i.132
	movq	24(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movl	$.L.str.16, %esi
	movl	$.L.str.17, %edx
	xorl	%eax, %eax
	callq	errprintf
.LBB1_20:                               # %for.cond.preheader
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	$0, %r12d
	jle	.LBB1_32
# BB#21:                                # %for.body.lr.ph
	imull	12(%rsp), %r13d         # 4-byte Folded Reload
	addl	$7, %r13d
	sarl	$3, %r13d
	movq	%r13, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	movq	16(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB1_22:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movq	22648(%rbx), %rdi
	movl	$14, %esi
	callq	ijs_client_begin_cmd
	movq	22648(%rbx), %rdi
	callq	ijs_client_send_cmd_wait
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$0, %r13d
	movl	40(%rsp), %r14d         # 4-byte Reload
	jle	.LBB1_31
	.align	16, 0x90
.LBB1_23:                               # %for.body.76
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r14d, %r14d
	je	.LBB1_26
# BB#24:                                # %if.then.78
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	22672(%rbx), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%r13d, %eax
	cltd
	idivl	10132(%rbx)
	imull	%ecx, %edx
	testl	%edx, %edx
	jne	.LBB1_26
# BB#25:                                # %if.then.i.139
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	22680(%rbx), %rdi
	movslq	22676(%rbx), %rdx
	xorl	%esi, %esi
	callq	memset
.LBB1_26:                               # %if.else
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%r15, %rdx
	leaq	320(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_31
# BB#27:                                # %if.end.85
                                        #   in Loop: Header=BB1_23 Depth=2
	movq	22648(%rbx), %rdi
	movq	320(%rsp), %rdx
	xorl	%esi, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	ijs_client_send_data_wait
	testl	%eax, %eax
	jne	.LBB1_31
# BB#28:                                # %if.end.90
                                        #   in Loop: Header=BB1_23 Depth=2
	testl	%r14d, %r14d
	je	.LBB1_30
# BB#29:                                # %if.then.92
                                        #   in Loop: Header=BB1_23 Depth=2
	movl	22672(%rbx), %ecx
	addl	$7, %ecx
	sarl	$3, %ecx
	movl	%r13d, %eax
	cltd
	idivl	10132(%rbx)
	imull	%ecx, %edx
	movslq	%edx, %rdx
	addq	22680(%rbx), %rdx
	movq	%rdx, 320(%rsp)
	movq	22648(%rbx), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	44(%rsp), %ecx          # 4-byte Reload
	callq	ijs_client_send_data_wait
	testl	%eax, %eax
	jne	.LBB1_31
.LBB1_30:                               # %for.inc
                                        #   in Loop: Header=BB1_23 Depth=2
	incl	%r13d
	cmpl	60(%rsp), %r13d         # 4-byte Folded Reload
	jl	.LBB1_23
	.align	16, 0x90
.LBB1_31:                               # %for.end
                                        #   in Loop: Header=BB1_22 Depth=1
	movl	%r14d, 40(%rsp)         # 4-byte Spill
	movq	22648(%rbx), %rdi
	movl	$16, %esi
	callq	ijs_client_begin_cmd
	movq	22648(%rbx), %rdi
	callq	ijs_client_send_cmd_wait
	movl	%eax, %ebp
	movl	32(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	28(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB1_22
.LBB1_32:                               # %for.end.110
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB1_34
# BB#33:                                # %if.then.112
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movq	22680(%rbx), %rsi
	movl	$.L.str.28, %edx
	callq	*24(%rdi)
.LBB1_34:                               # %if.end.119
	movq	24(%rbx), %rdi
	movl	$.L.str.28, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%r15d, %r15d
	cmpq	$0, 17184(%rbx)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true
	cmpl	$0, 1808(%rbx)
	jne	.LBB1_37
# BB#36:                                # %cond.true.127
	movq	%rbx, %rdi
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	clist_finish_page
	movl	%eax, %r15d
.LBB1_37:                               # %cond.end.130
	orl	%r15d, %r12d
	js	.LBB1_40
# BB#38:                                # %if.end.139
	movl	$-12, %r15d
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#39:                                # %if.end.143
	movq	%rbx, %rdi
	movl	28(%rsp), %esi          # 4-byte Reload
	movl	8(%rsp), %edx           # 4-byte Reload
	callq	gx_finish_output_page
	movl	%eax, %r15d
.LBB1_40:                               # %cleanup.145
	movl	%r15d, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gsijs_output_page, .Lfunc_end1-gsijs_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_close,@function
gsijs_close:                            # @gsijs_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	22648(%rbx), %rdi
	xorl	%esi, %esi
	callq	ijs_client_end_job
	movq	22648(%rbx), %rdi
	callq	ijs_client_close
	movq	22648(%rbx), %rdi
	movl	$17, %esi
	callq	ijs_client_begin_cmd
	movq	22648(%rbx), %rdi
	callq	ijs_client_send_cmd_wait
	movq	%rbx, %rdi
	callq	gdev_prn_close
	movl	%eax, %ebp
	movq	22624(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
.LBB2_2:                                # %if.end
	movq	22576(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_4
# BB#3:                                 # %if.then.12
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
.LBB2_4:                                # %if.end.20
	movq	22592(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_6
# BB#5:                                 # %if.then.22
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
.LBB2_6:                                # %if.end.30
	movq	22608(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_8
# BB#7:                                 # %if.then.32
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
.LBB2_8:                                # %if.end.40
	movq	$0, 22624(%rbx)
	movl	$0, 22632(%rbx)
	movq	$0, 22592(%rbx)
	movl	$0, 22600(%rbx)
	movq	$0, 22608(%rbx)
	movl	$0, 22616(%rbx)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gsijs_close, .Lfunc_end2-gsijs_close
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_get_params,@function
gsijs_get_params:                       # @gsijs_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB3_19
# BB#1:                                 # %if.end
	leaq	18476(%rbx), %rdi
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB3_19
# BB#2:                                 # %if.then.6
	movq	22592(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_4
# BB#3:                                 # %if.then.7
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB3_5:                                # %if.end.18
	testl	%eax, %eax
	js	.LBB3_19
# BB#6:                                 # %if.then.21
	movq	22608(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_8
# BB#7:                                 # %if.then.23
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.32
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB3_9:                                # %if.end.35
	testl	%eax, %eax
	js	.LBB3_19
# BB#10:                                # %if.then.38
	movq	22624(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_12
# BB#11:                                # %if.then.40
	movq	%rdi, 8(%rsp)
	callq	strlen
	movl	%eax, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_string
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.49
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB3_13:                               # %if.end.52
	testl	%eax, %eax
	js	.LBB3_19
# BB#14:                                # %if.end.57
	leaq	22588(%rbx), %rdx
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB3_19
# BB#15:                                # %if.end.62
	leaq	18472(%rbx), %rdx
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB3_19
# BB#16:                                # %if.then.65
	cmpl	$0, 22640(%rbx)
	je	.LBB3_18
# BB#17:                                # %if.then.67
	addq	$22636, %rbx            # imm = 0x586C
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_bool
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.69
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	param_write_null
.LBB3_19:                               # %if.end.72
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gsijs_get_params, .Lfunc_end3-gsijs_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_put_params,@function
gsijs_put_params:                       # @gsijs_put_params
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
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp42:
	.cfi_def_cfa_offset 768
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movl	84(%r13), %ebx
	cmpl	$0, 17168(%r13)
	jns	.LBB4_2
# BB#1:                                 # %if.then
	movq	$1, 17164(%r13)
.LBB4_2:                                # %if.then.4
	movl	960(%r13), %r14d
	leaq	64(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB4_12
# BB#3:                                 # %if.then.4
	testl	%ebp, %ebp
	jne	.LBB4_10
# BB#4:                                 # %sw.bb.i
	movq	%r13, %r12
	leaq	18476(%r12), %r13
	movq	64(%rsp), %r15
	movl	72(%rsp), %ebp
	movq	%r13, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r13, %r15
	movq	%r12, %r13
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	%eax, %ecx
	callq	bytes_compare
	testl	%r14d, %r14d
	je	.LBB4_6
# BB#5:                                 # %sw.bb.i
	movl	$-7, %ebp
	testl	%eax, %eax
	jne	.LBB4_11
.LBB4_6:                                # %if.end.i
	movl	$-15, %ebp
	testl	%ebx, %ebx
	je	.LBB4_8
# BB#7:                                 # %if.end.i
	testl	%eax, %eax
	jne	.LBB4_11
.LBB4_8:                                # %if.end.9.i
	movl	72(%rsp), %edx
	cmpq	$4095, %rdx             # imm = 0xFFF
	ja	.LBB4_11
# BB#9:                                 # %if.then.12.i
	movq	64(%rsp), %rsi
	movq	%r15, %rdi
	callq	strncpy
	movl	72(%rsp), %eax
	incl	%eax
	movb	$0, 18476(%r13,%rax)
	jmp	.LBB4_12
.LBB4_10:                               # %sw.default.i
	movl	$.L.str.36, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB4_12
.LBB4_11:                               # %gsijs_read_string.exit
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$.L.str.36, %esi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_74
.LBB4_12:                               # %if.end.9
	leaq	22592(%r13), %rdx
	leaq	22600(%r13), %rcx
	movl	$.L.str.10, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %r8d
	callq	gsijs_read_string_malloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_74
# BB#13:                                # %if.end.13
	leaq	22608(%r13), %rdx
	leaq	22616(%r13), %rcx
	movl	$.L.str.11, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %r8d
	callq	gsijs_read_string_malloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_74
# BB#14:                                # %if.end.17
	leaq	22624(%r13), %rdx
	leaq	22632(%r13), %rcx
	movl	$.L.str.37, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %r8d
	callq	gsijs_read_string_malloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_74
# BB#15:                                # %if.then.19
	leaq	64(%rsp), %rdx
	movl	$.L.str.30, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB4_24
# BB#16:                                # %if.then.19
	testl	%ebp, %ebp
	jne	.LBB4_22
# BB#17:                                # %sw.bb.i.57
	testl	%ebx, %ebx
	movl	64(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	$-15, %ebp
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.i
	cmpl	$15, %ecx
	ja	.LBB4_23
# BB#19:                                # %land.lhs.true.i
	cmpl	22588(%r13), %eax
	je	.LBB4_21
	jmp	.LBB4_23
.LBB4_22:                               # %sw.default.i.60
	movl	$.L.str.30, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB4_23
	jmp	.LBB4_24
.LBB4_20:                               # %if.end.i.59
	cmpl	$15, %ecx
	ja	.LBB4_23
.LBB4_21:                               # %if.then.4.i
	movl	%eax, 22588(%r13)
	jmp	.LBB4_24
.LBB4_23:                               # %if.end.21
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$.L.str.30, %esi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_74
.LBB4_24:                               # %if.then.23
	leaq	64(%rsp), %rdx
	movl	$.L.str.38, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_bool
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB4_31
# BB#25:                                # %if.then.23
	testl	%ebp, %ebp
	jne	.LBB4_29
# BB#26:                                # %sw.bb.i.70
	testl	%ebx, %ebx
	movl	64(%rsp), %eax
	je	.LBB4_28
# BB#27:                                # %land.lhs.true.i.72
	movl	$-15, %ebp
	cmpl	18472(%r13), %eax
	jne	.LBB4_30
.LBB4_28:                               # %if.end.i.73
	movl	%eax, 18472(%r13)
	jmp	.LBB4_31
.LBB4_29:                               # %sw.default.i.74
	movl	$.L.str.38, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB4_31
.LBB4_30:                               # %if.end.25
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$.L.str.38, %esi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_74
.LBB4_31:                               # %if.end.29
	leaq	22576(%r13), %rdx
	leaq	22584(%r13), %rcx
	movl	$.L.str.39, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %r8d
	callq	gsijs_read_string_malloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_74
# BB#32:                                # %if.then.31
	leaq	64(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB4_33
# BB#76:                                # %if.end.36.thread120
	movl	64(%rsp), %eax
	movl	%eax, 22636(%r13)
	movl	$1, 22640(%r13)
	jmp	.LBB4_36
.LBB4_33:                               # %if.then.31
	cmpl	$1, %ebp
	je	.LBB4_36
# BB#34:                                # %sw.default.i.87
	movl	$.L.str.19, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	param_read_null
	testl	%eax, %eax
	je	.LBB4_36
# BB#35:                                # %if.end.36
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$.L.str.19, %esi
	movl	%ebp, %edx
	callq	*56(%rax)
	testl	%ebp, %ebp
	js	.LBB4_74
.LBB4_36:                               # %if.then.38
	movb	111(%r13), %al
	movb	%al, 15(%rsp)           # 1-byte Spill
	movq	128(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	140(%r13), %rbp
	leaq	64(%rsp), %rdi
	movl	$644, %edx              # imm = 0x284
	movq	%rbp, %rsi
	callq	memcpy
	movq	808(%r13), %rax
	movq	%rax, 48(%rsp)
	movups	792(%r13), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	22588(%r13), %r12d
	movq	22576(%r13), %rax
	testq	%rax, %rax
	movl	$.L.str.1, %r14d
	cmovneq	%rax, %r14
	movl	$.L.str.32, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB4_44
# BB#37:                                # %cond.true.i
	movzbl	(%r14), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB4_45
# BB#38:                                # %cond.true.i
	testl	%eax, %eax
	jne	.LBB4_45
# BB#39:                                # %if.then.11.i
	movzbl	1(%r14), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB4_45
# BB#40:                                # %if.then.11.i
	testl	%eax, %eax
	jne	.LBB4_45
# BB#41:                                # %if.then.21.i
	movzbl	2(%r14), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB4_45
# BB#42:                                # %if.then.21.i
	testl	%eax, %eax
	jne	.LBB4_45
# BB#43:                                # %if.then.31.i
	movzbl	3(%r14), %eax
	addl	$-105, %eax
	jmp	.LBB4_45
.LBB4_44:                               # %cond.false.i
	movl	$.L.str.32, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB4_45:                               # %cond.end.i
	testl	%eax, %eax
	je	.LBB4_46
# BB#47:                                # %land.lhs.true.59.i
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB4_55
# BB#48:                                # %cond.true.63.i
	movzbl	(%r14), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB4_56
# BB#49:                                # %cond.true.63.i
	testl	%eax, %eax
	jne	.LBB4_56
# BB#50:                                # %if.then.77.i
	movzbl	1(%r14), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB4_56
# BB#51:                                # %if.then.77.i
	testl	%eax, %eax
	jne	.LBB4_56
# BB#52:                                # %if.then.87.i
	movzbl	2(%r14), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB4_56
# BB#53:                                # %if.then.87.i
	testl	%eax, %eax
	jne	.LBB4_56
# BB#54:                                # %if.then.97.i
	movzbl	3(%r14), %eax
	addl	$-105, %eax
	jmp	.LBB4_56
.LBB4_46:                               # %if.then.41.i
	movq	%rbp, %rdi
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	cmpl	$1, %r12d
	movl	$gx_default_w_b_map_rgb_color, %eax
	movl	$gx_default_gray_map_rgb_color, %ecx
	cmoveq	%rax, %rcx
	movl	$gx_default_w_b_map_color_rgb, %eax
	movl	$gx_default_gray_map_color_rgb, %edx
	cmoveq	%rax, %rdx
	movq	%rcx, 1184(%r13)
	movq	%rdx, 1192(%r13)
	movq	$gx_default_gray_fast_encode, 1552(%r13)
	movq	$gx_default_decode_color, 1560(%r13)
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	jmp	.LBB4_70
.LBB4_55:                               # %cond.false.106.i
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB4_56:                               # %cond.end.108.i
	testl	%eax, %eax
	je	.LBB4_57
# BB#58:                                # %land.lhs.true.128.i
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB4_66
# BB#59:                                # %cond.true.132.i
	movzbl	(%r14), %eax
	addl	$-68, %eax
	testq	%rcx, %rcx
	je	.LBB4_67
# BB#60:                                # %cond.true.132.i
	testl	%eax, %eax
	jne	.LBB4_67
# BB#61:                                # %if.then.146.i
	movzbl	1(%r14), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB4_67
# BB#62:                                # %if.then.146.i
	testl	%eax, %eax
	jne	.LBB4_67
# BB#63:                                # %if.then.156.i
	movzbl	2(%r14), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB4_67
# BB#64:                                # %if.then.156.i
	testl	%eax, %eax
	jne	.LBB4_67
# BB#65:                                # %if.then.166.i
	movzbl	3(%r14), %eax
	addl	$-105, %eax
	jmp	.LBB4_67
.LBB4_57:                               # %if.then.111.i
	movq	%rbp, %rdi
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movq	$gx_default_rgb_map_rgb_color, 1184(%r13)
	movq	$gx_default_rgb_map_color_rgb, 1192(%r13)
	movq	$gx_default_rgb_map_rgb_color, 1552(%r13)
	movq	$gx_default_rgb_map_color_rgb, 1560(%r13)
	movb	$-1, %r8b
	movl	$1, %r9d
	movl	$3, %edx
	jmp	.LBB4_70
.LBB4_66:                               # %cond.false.175.i
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB4_67:                               # %cond.end.177.i
	testl	%eax, %eax
	je	.LBB4_69
# BB#68:                                # %if.end.40.thread128
	movl	$-1, %ebp
	jmp	.LBB4_74
.LBB4_69:                               # %if.then.180.i
	movq	%rbp, %rdi
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movq	$cmyk_8bit_map_cmyk_color, 1264(%r13)
	movq	$cmyk_8bit_map_color_rgb, 1192(%r13)
	movq	$cmyk_8bit_map_cmyk_color, 1552(%r13)
	movq	$gx_default_decode_color, 1560(%r13)
	movb	$3, %r8b
	xorl	%r9d, %r9d
	movl	$4, %edx
.LBB4_70:                               # %if.end.44
	leaq	792(%r13), %r15
	movl	$1, %ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	leal	-1(%rbp), %ecx
	imull	%edx, %r12d
	xorl	%esi, %esi
	cmpl	$1, %edx
	movl	$0, %eax
	cmoval	%ecx, %eax
	cmoval	%ebp, %esi
	movl	%edx, 96(%r13)
	movl	%edx, 100(%r13)
	movl	%r9d, 104(%r13)
	movw	%r12w, 108(%r13)
	movb	%r8b, 110(%r13)
	movb	15(%rsp), %dl           # 1-byte Reload
	movb	%dl, 111(%r13)
	movl	%ecx, 112(%r13)
	movl	%eax, 116(%r13)
	movl	%ebp, 120(%r13)
	movl	%esi, 124(%r13)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 128(%r13)
	movl	$1, 136(%r13)
	leaq	64(%rsp), %rsi
	movl	$644, %edx              # imm = 0x284
	callq	memcpy
	movq	%r14, 784(%r13)
	movq	48(%rsp), %rax
	movq	%rax, 16(%r15)
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%r15)
	movq	%r13, %rdi
	callq	set_linear_color_bits_mask_shift
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB4_74
# BB#71:                                # %if.end.44
	testl	%ebp, %ebp
	js	.LBB4_74
# BB#72:                                # %if.then.46
	movq	%r13, %rdi
	callq	gsijs_set_generic_params
	movl	$-12, %ebx
	testl	%eax, %eax
	js	.LBB4_75
# BB#73:                                # %if.end.51
	movq	%r13, %rdi
	callq	gsijs_set_margin_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_75
.LBB4_74:                               # %if.end.55
	movl	%ebp, %ebx
.LBB4_75:                               # %cleanup
	movl	%ebx, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gsijs_put_params, .Lfunc_end4-gsijs_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_finish_copydevice,@function
gsijs_finish_copydevice:                # @gsijs_finish_copydevice
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 32
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	gx_default_finish_copydevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_4
# BB#1:                                 # %if.end
	cmpq	$0, 22576(%rbx)
	jne	.LBB5_4
# BB#2:                                 # %if.then.1
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$10, %esi
	movl	$1, %edx
	movl	$.L.str.41, %ecx
	callq	*88(%rdi)
	movq	%rax, 22576(%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB5_5
# BB#3:                                 # %if.end.9
	movl	$10, 22584(%rbx)
	movl	$.L.str.1, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	memcpy
.LBB5_4:                                # %cleanup
	movl	%ebp, %ecx
.LBB5_5:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gsijs_finish_copydevice, .Lfunc_end5-gsijs_finish_copydevice
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_create_buf_device,@function
gsijs_create_buf_device:                # @gsijs_create_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 48
.Ltmp59:
	.cfi_offset %rbx, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	100(%rbp), %r15d
	callq	gx_default_create_buf_device
	movl	%eax, %r14d
	cmpl	$3, %r15d
	jne	.LBB6_3
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	js	.LBB6_3
# BB#2:                                 # %if.end
	addq	$22688, %rbp            # imm = 0x58A0
	movq	(%rbx), %rsi
	addq	$1144, %rsi             # imm = 0x478
	movl	$584, %edx              # imm = 0x248
	movq	%rbp, %rdi
	callq	memcpy
	movq	(%rbx), %rax
	movq	$gsijs_fill_rectangle, 1200(%rax)
	movq	(%rbx), %rax
	movq	$gsijs_copy_mono, 1216(%rax)
	movq	(%rbx), %rax
	movq	$gsijs_fill_mask, 1352(%rax)
	movq	(%rbx), %rax
	movq	$gsijs_fill_path, 1336(%rax)
	movq	(%rbx), %rax
	movq	$gsijs_stroke_path, 1344(%rax)
.LBB6_3:                                # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gsijs_create_buf_device, .Lfunc_end6-gsijs_create_buf_device
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_set_generic_params,@function
gsijs_set_generic_params:               # @gsijs_set_generic_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp69:
	.cfi_def_cfa_offset 320
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	cmpl	$0, 22632(%r13)
	jle	.LBB7_18
# BB#1:                                 # %land.rhs.lr.ph
	xorl	%r14d, %r14d
	leaq	(%rsp), %r15
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_2:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$254, %ebx
	ja	.LBB7_14
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movslq	%ebx, %rax
	movslq	%ebp, %rcx
	movq	22624(%r13), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	$61, %esi
	jne	.LBB7_4
# BB#6:                                 # %if.end.thread
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	%ebx
	movb	$0, (%rsp,%rax)
	movslq	%ebx, %rax
	leaq	(%rsp,%rax), %r14
	jmp	.LBB7_13
	.align	16, 0x90
.LBB7_4:                                # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movzbl	%sil, %esi
	cmpl	$92, %esi
	jne	.LBB7_7
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB7_2 Depth=1
	movb	1(%rdx,%rcx), %dl
	incq	%rcx
	incl	%ebx
	movb	%dl, (%rsp,%rax)
	movl	%ecx, %ebp
	jmp	.LBB7_13
	.align	16, 0x90
.LBB7_7:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movb	%sil, (%rsp,%rax)
	cmpl	$44, %esi
	jne	.LBB7_8
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB7_2 Depth=1
	movb	$0, (%rsp,%rax)
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB7_12
# BB#10:                                # %if.then.31
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	22648(%r13), %r12
	movq	%r14, %rdi
	callq	strlen
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB7_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	24(%r13), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	errprintf
.LBB7_12:                               # %if.end.34
                                        #   in Loop: Header=BB7_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB7_13
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	incl	%ebx
	.align	16, 0x90
.LBB7_13:                               # %if.end.34
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	%ebp
	cmpl	22632(%r13), %ebp
	jl	.LBB7_2
.LBB7_14:                               # %for.end
	testq	%r14, %r14
	je	.LBB7_18
# BB#15:                                # %if.then.37
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	leaq	(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_16
# BB#17:                                # %if.end.40
	jne	.LBB7_30
.LBB7_18:                               # %land.lhs.true
	cmpl	$0, 17168(%r13)
	je	.LBB7_24
# BB#19:                                # %if.then.44
	movl	$.L.str.13, %r14d
	cmpl	$0, 17164(%r13)
	jne	.LBB7_21
# BB#20:                                # %select.mid
	movl	$.L.str.14, %r14d
.LBB7_21:                               # %select.end
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.12, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_22
# BB#23:                                # %if.end.47
	jne	.LBB7_30
.LBB7_24:                               # %land.lhs.true.50
	xorl	%ebp, %ebp
	cmpl	$0, 22640(%r13)
	je	.LBB7_30
# BB#25:                                # %if.then.52
	movl	$.L.str.13, %r14d
	cmpl	$0, 22636(%r13)
	jne	.LBB7_27
# BB#26:                                # %select.mid91
	movl	$.L.str.14, %r14d
.LBB7_27:                               # %select.end90
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.15, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_30
# BB#28:                                # %if.then.i.57
	movq	24(%r13), %rdi
	movl	$.L.str.16, %esi
	movl	$.L.str.15, %edx
	jmp	.LBB7_29
.LBB7_22:                               # %if.then.i.48
	movq	24(%r13), %rdi
	movl	$.L.str.16, %esi
	movl	$.L.str.12, %edx
	jmp	.LBB7_29
.LBB7_16:                               # %if.end.40.thread62
	movq	24(%r13), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.16, %esi
.LBB7_29:                               # %if.end.56
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	errprintf
.LBB7_30:                               # %if.end.56
	movl	%ebp, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gsijs_set_generic_params, .Lfunc_end7-gsijs_set_generic_params
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4579160021118600988     # double 0.013888888888888888
	.text
	.align	16, 0x90
	.type	gsijs_set_margin_params,@function
gsijs_set_margin_params:                # @gsijs_set_margin_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp82:
	.cfi_def_cfa_offset 384
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	cmpl	$0, 22632(%r13)
	jle	.LBB8_18
# BB#1:                                 # %land.rhs.lr.ph
	xorl	%r12d, %r12d
	leaq	64(%rsp), %r14
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_2:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$254, %ebp
	ja	.LBB8_14
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movslq	%ebp, %rax
	movslq	%ebx, %rcx
	movq	22624(%r13), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	$61, %esi
	jne	.LBB8_4
# BB#6:                                 # %if.end.thread
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	%ebp
	movb	$0, 64(%rsp,%rax)
	movslq	%ebp, %rax
	leaq	64(%rsp,%rax), %r12
	jmp	.LBB8_13
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movzbl	%sil, %esi
	cmpl	$92, %esi
	jne	.LBB8_7
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	1(%rdx,%rcx), %dl
	incq	%rcx
	incl	%ebp
	movb	%dl, 64(%rsp,%rax)
	movl	%ecx, %ebx
	jmp	.LBB8_13
	.align	16, 0x90
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	%sil, 64(%rsp,%rax)
	cmpl	$44, %esi
	jne	.LBB8_8
# BB#9:                                 # %if.then.28
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	$0, 64(%rsp,%rax)
	xorl	%ebp, %ebp
	testq	%r12, %r12
	je	.LBB8_12
# BB#10:                                # %if.then.31
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	22648(%r13), %r15
	movq	%r12, %rdi
	callq	strlen
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	testl	%eax, %eax
	jns	.LBB8_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	24(%r13), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	errprintf
.LBB8_12:                               # %if.end.34
                                        #   in Loop: Header=BB8_2 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB8_13
.LBB8_8:                                #   in Loop: Header=BB8_2 Depth=1
	incl	%ebp
	.align	16, 0x90
.LBB8_13:                               # %if.end.34
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	%ebx
	cmpl	22632(%r13), %ebx
	jl	.LBB8_2
.LBB8_14:                               # %for.end
	testq	%r12, %r12
	je	.LBB8_18
# BB#15:                                # %if.then.37
	movq	22648(%r13), %r14
	movq	%r12, %rdi
	callq	strlen
	leaq	64(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%r12, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_16
# BB#17:                                # %if.end.40
	jne	.LBB8_44
.LBB8_18:                               # %land.lhs.true
	cmpl	$0, 17168(%r13)
	je	.LBB8_25
# BB#19:                                # %if.then.44
	movl	$.L.str.13, %r14d
	cmpl	$0, 17164(%r13)
	jne	.LBB8_21
# BB#20:                                # %select.mid
	movl	$.L.str.14, %r14d
.LBB8_21:                               # %select.end
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.18, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_22
# BB#24:                                # %if.end.47
	jne	.LBB8_44
.LBB8_25:                               # %land.lhs.true.50
	cmpl	$0, 22640(%r13)
	je	.LBB8_26
# BB#27:                                # %if.then.52
	movl	$.L.str.13, %r14d
	cmpl	$0, 22636(%r13)
	jne	.LBB8_29
# BB#28:                                # %select.mid117
	movl	$.L.str.14, %r14d
.LBB8_29:                               # %select.end116
	leaq	22648(%r13), %r12
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.19, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_30
# BB#31:                                # %if.end.56
	jne	.LBB8_44
	jmp	.LBB8_32
.LBB8_22:                               # %if.then.i.68
	movq	24(%r13), %rdi
	movl	$.L.str.16, %esi
	movl	$.L.str.18, %edx
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.40.thread82
	movq	24(%r13), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r12, %rcx
	callq	errprintf
	jmp	.LBB8_44
.LBB8_26:                               # %land.lhs.true.50.if.end.73_crit_edge
	leaq	22648(%r13), %r12
.LBB8_32:                               # %if.end.73
	movss	856(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI8_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	64(%rsp), %r14
	movl	$.L.str.20, %esi
	movb	$2, %al
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	22648(%r13), %rbp
	movq	%r14, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.21, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB8_44
# BB#33:                                # %if.then.76
	movq	(%r12), %rdi
	xorl	%r14d, %r14d
	leaq	64(%rsp), %rcx
	xorl	%esi, %esi
	movl	$.L.str.22, %edx
	movl	$256, %r8d              # imm = 0x100
	callq	ijs_client_get_param
	movl	$-9, %r15d
	cmpl	$-9, %eax
	jne	.LBB8_35
# BB#34:
	xorl	%ebx, %ebx
	jmp	.LBB8_43
.LBB8_30:                               # %if.then.i.77
	movq	24(%r13), %rdi
	movl	$.L.str.16, %esi
	movl	$.L.str.19, %edx
.LBB8_23:                               # %if.end.146
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	errprintf
.LBB8_44:                               # %if.end.146
	movl	%r15d, %r14d
.LBB8_45:                               # %cleanup.147
	movl	%r14d, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_35:                               # %if.else.83
	testl	%eax, %eax
	js	.LBB8_41
# BB#36:                                # %if.end.90
	leaq	64(%rsp), %rdi
	leaq	56(%rsp), %rdx
	leaq	48(%rsp), %rcx
	movl	%eax, %esi
	callq	gsijs_parse_wxh
	testl	%eax, %eax
	jne	.LBB8_41
# BB#37:                                # %if.then.93
	movq	(%r12), %rdi
	xorl	%ebx, %ebx
	leaq	64(%rsp), %rcx
	xorl	%esi, %esi
	movl	$.L.str.23, %edx
	movl	$256, %r8d              # imm = 0x100
	callq	ijs_client_get_param
	cmpl	$-9, %eax
	je	.LBB8_43
# BB#38:                                # %if.else.100
	testl	%eax, %eax
	js	.LBB8_41
# BB#39:                                # %if.end.108
	leaq	64(%rsp), %rdi
	leaq	40(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movl	%eax, %esi
	callq	gsijs_parse_wxh
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jne	.LBB8_42
# BB#40:                                # %if.then.111
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	cvtsd2ss	%xmm1, %xmm0
	movapd	%xmm1, %xmm2
	movss	%xmm0, 16(%rsp)
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movapd	%xmm1, %xmm3
	movss	%xmm0, 28(%rsp)
	movss	856(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	subsd	56(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rsp)
	movss	860(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	subsd	%xmm3, %xmm0
	subsd	48(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rsp)
	leaq	16(%rsp), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	gx_device_set_margins
	leaq	64(%rsp), %rbp
	movl	$.L.str.20, %esi
	movb	$2, %al
	movq	%rbp, %rdi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_sprintf
	movq	22648(%r13), %rbx
	movq	%rbp, %rdi
	callq	strlen
	xorl	%esi, %esi
	movl	$.L.str.24, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	movl	%eax, %r8d
	callq	ijs_client_set_param
.LBB8_41:                               # %cleanup
	movl	%eax, %r15d
.LBB8_42:                               # %cleanup
	movb	$1, %bl
.LBB8_43:                               # %cleanup
	testb	%bl, %bl
	je	.LBB8_45
	jmp	.LBB8_44
.Lfunc_end8:
	.size	gsijs_set_margin_params, .Lfunc_end8-gsijs_set_margin_params
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_fill_rectangle,@function
gsijs_fill_rectangle:                   # @gsijs_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %ebx
	movq	1728(%rdi), %r12
	testq	%r12, %r12
	je	.LBB9_26
# BB#1:                                 # %if.end
	cmpl	$0, 22660(%r12)
	je	.LBB9_17
# BB#2:                                 # %land.lhs.true
	movl	%ebx, %eax
	orl	%esi, %eax
	js	.LBB9_17
# BB#3:                                 # %land.lhs.true
	movl	22668(%r12), %eax
	testl	%eax, %eax
	je	.LBB9_17
# BB#4:                                 # %if.then.6
	testl	%r14d, %r14d
	jle	.LBB9_26
# BB#5:                                 # %if.then.6
	testl	%r8d, %r8d
	jle	.LBB9_26
# BB#6:                                 # %if.end.12
	movl	22672(%r12), %ecx
	leal	7(%rcx), %ebp
	sarl	$3, %ebp
	movslq	22676(%r12), %r11
	movl	%r11d, %eax
	cltd
	idivl	%ebp
	cmpl	%esi, %ecx
	jle	.LBB9_26
# BB#7:                                 # %if.end.12
	cmpl	%ebx, %eax
	jle	.LBB9_26
# BB#8:                                 # %if.end.18
	movq	22680(%r12), %r10
	leaq	(%r11,%r10), %r11
	movl	%ebp, %ecx
	imull	%ebx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rcx
	movl	%esi, %edx
	movl	%esi, %eax
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	testq	%r9, %r9
	je	.LBB9_18
# BB#9:                                 # %for.cond.49.preheader
	testl	%r8d, %r8d
	movl	%eax, %esi
	jle	.LBB9_17
# BB#10:                                # %for.cond.53.preheader.lr.ph
	movslq	%ebp, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	andl	$7, %eax
	movl	%eax, -20(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB9_11:                               # %for.cond.53.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	testl	%r14d, %r14d
	movl	%esi, %ebx
	movl	-20(%rsp), %ebp         # 4-byte Reload
	movl	%r14d, %ecx
	jle	.LBB9_16
	.align	16, 0x90
.LBB9_12:                               # %for.body.56
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%rdx), %r15
	cmpq	%r10, %r15
	jb	.LBB9_15
# BB#13:                                # %for.body.56
                                        #   in Loop: Header=BB9_12 Depth=2
	cmpq	%r11, %r15
	ja	.LBB9_15
# BB#14:                                # %if.then.66
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	%ebx, %eax
	andl	$7, %eax
	movb	xmask(%rax), %al
	notb	%al
	andb	%al, (%r15)
.LBB9_15:                               # %for.inc.76
                                        #   in Loop: Header=BB9_12 Depth=2
	incl	%ebp
	incl	%ebx
	decl	%ecx
	jne	.LBB9_12
.LBB9_16:                               # %for.end.78
                                        #   in Loop: Header=BB9_11 Depth=1
	addq	-16(%rsp), %rdx         # 8-byte Folded Reload
	incl	%r13d
	cmpl	%r8d, %r13d
	movl	%edi, %ebx
	movq	-8(%rsp), %rdi          # 8-byte Reload
	jne	.LBB9_11
.LBB9_17:                               # %if.end.93
	movq	22744(%r12), %rax
	movl	%ebx, %edx
	movl	%r14d, %ecx
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB9_18:                               # %for.cond.preheader
	testl	%r8d, %r8d
	movl	%eax, %esi
	jle	.LBB9_26
# BB#19:                                # %for.cond.28.preheader.lr.ph
	movslq	%ebp, %r9
	movl	%esi, %r12d
	andl	$7, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB9_20:                               # %for.cond.28.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_21 Depth 2
	testl	%r14d, %r14d
	movl	%esi, %edi
	movl	%r12d, %ecx
	movl	%r14d, %ebp
	jle	.LBB9_25
	.align	16, 0x90
.LBB9_21:                               # %for.body.30
                                        #   Parent Loop BB9_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	leaq	(%rbx,%rdx), %rbx
	cmpq	%r10, %rbx
	jb	.LBB9_24
# BB#22:                                # %for.body.30
                                        #   in Loop: Header=BB9_21 Depth=2
	cmpq	%r11, %rbx
	ja	.LBB9_24
# BB#23:                                # %if.then.36
                                        #   in Loop: Header=BB9_21 Depth=2
	movl	%edi, %eax
	andl	$7, %eax
	movb	xmask(%rax), %al
	orb	%al, (%rbx)
.LBB9_24:                               # %for.inc
                                        #   in Loop: Header=BB9_21 Depth=2
	incl	%ecx
	incl	%edi
	decl	%ebp
	jne	.LBB9_21
.LBB9_25:                               # %for.end
                                        #   in Loop: Header=BB9_20 Depth=1
	addq	%r9, %rdx
	incl	%r15d
	cmpl	%r8d, %r15d
	jne	.LBB9_20
.LBB9_26:                               # %cleanup.94
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gsijs_fill_rectangle, .Lfunc_end9-gsijs_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_copy_mono,@function
gsijs_copy_mono:                        # @gsijs_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movl	%edx, -4(%rsp)          # 4-byte Spill
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB10_27
# BB#1:                                 # %if.end
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%r8, -32(%rsp)          # 8-byte Spill
	cmpl	$0, 22660(%rbx)
	je	.LBB10_17
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 22668(%rbx)
	je	.LBB10_17
# BB#3:                                 # %if.then.3
	movl	64(%rsp), %eax
	movl	%eax, -8(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movq	-24(%rsp), %r14         # 8-byte Reload
	jle	.LBB10_27
# BB#4:                                 # %if.then.3
	movl	72(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB10_27
# BB#5:                                 # %if.end.8
	movl	22672(%rbx), %ebp
	leal	7(%rbp), %ecx
	sarl	$3, %ecx
	movslq	22676(%rbx), %r8
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	cmpl	%r9d, %ebp
	jle	.LBB10_27
# BB#6:                                 # %if.end.8
	movl	56(%rsp), %edx
	cmpl	%edx, %eax
	jle	.LBB10_27
# BB#7:                                 # %if.end.14
	movq	88(%rsp), %r10
	movq	22680(%rbx), %r13
	leaq	(%r8,%r13), %r11
	movl	-4(%rsp), %ebp          # 4-byte Reload
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	leaq	(%rbp,%r14), %r15
	imull	%ecx, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r13), %rdx
	movl	%r9d, %eax
	sarl	$3, %eax
	movslq	%eax, %r12
	addq	%rdx, %r12
	testq	%r10, %r10
	je	.LBB10_18
# BB#8:                                 # %while.cond.62.preheader
	testl	%esi, %esi
	jle	.LBB10_17
# BB#9:                                 # %for.cond.67.preheader.lr.ph
	movslq	-16(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movl	-4(%rsp), %eax          # 4-byte Reload
	andl	$7, %eax
	movl	%eax, -52(%rsp)         # 4-byte Spill
	movl	%r9d, %eax
	andl	$7, %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB10_10:                              # %for.cond.67.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
	movl	-8(%rsp), %r14d         # 4-byte Reload
	testl	%r14d, %r14d
	movl	%r9d, %ebp
	movl	-56(%rsp), %r8d         # 4-byte Reload
	movl	-4(%rsp), %r10d         # 4-byte Reload
	movl	-52(%rsp), %ecx         # 4-byte Reload
	jle	.LBB10_16
	.align	16, 0x90
.LBB10_11:                              # %for.body.70
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %eax
	sarl	$3, %eax
	cltq
	movl	%r10d, %edx
	andl	$7, %edx
	movb	xmask(%rdx), %dl
	testb	(%r15,%rax), %dl
	je	.LBB10_15
# BB#12:                                # %if.then.83
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	%r8d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r12), %rax
	cmpq	%r13, %rax
	jb	.LBB10_15
# BB#13:                                # %if.then.83
                                        #   in Loop: Header=BB10_11 Depth=2
	cmpq	%r11, %rax
	ja	.LBB10_15
# BB#14:                                # %if.then.93
                                        #   in Loop: Header=BB10_11 Depth=2
	movl	%ebp, %edx
	andl	$7, %edx
	movb	xmask(%rdx), %dl
	notb	%dl
	andb	%dl, (%rax)
.LBB10_15:                              # %for.inc.104
                                        #   in Loop: Header=BB10_11 Depth=2
	incl	%ecx
	incl	%r10d
	incl	%r8d
	incl	%ebp
	decl	%r14d
	jne	.LBB10_11
.LBB10_16:                              # %for.end.106
                                        #   in Loop: Header=BB10_10 Depth=1
	addq	-40(%rsp), %r15         # 8-byte Folded Reload
	addq	-48(%rsp), %r12         # 8-byte Folded Reload
	cmpl	$1, %esi
	leal	-1(%rsi), %eax
	movl	%eax, %esi
	jg	.LBB10_10
.LBB10_17:                              # %if.end.123
	movq	22760(%rbx), %rax
	movq	-24(%rsp), %rsi         # 8-byte Reload
	movl	-4(%rsp), %edx          # 4-byte Reload
	movl	-16(%rsp), %ecx         # 4-byte Reload
	movq	-32(%rsp), %r8          # 8-byte Reload
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB10_18:                              # %while.cond.preheader
	testl	%esi, %esi
	jle	.LBB10_27
# BB#19:                                # %for.cond.preheader.lr.ph
	movslq	-16(%rsp), %rdx         # 4-byte Folded Reload
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movl	-4(%rsp), %ecx          # 4-byte Reload
	andl	$7, %ecx
	movl	%ecx, -40(%rsp)         # 4-byte Spill
	movl	%r9d, %ecx
	andl	$7, %ecx
	movl	%ecx, -48(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB10_20:                              # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movl	-8(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%r9d, %esi
	movl	%r9d, %r14d
	movl	-48(%rsp), %r10d        # 4-byte Reload
	movl	-4(%rsp), %ecx          # 4-byte Reload
	movl	-40(%rsp), %edx         # 4-byte Reload
	jle	.LBB10_26
	.align	16, 0x90
.LBB10_21:                              # %for.body
                                        #   Parent Loop BB10_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %r9
	movl	%ecx, %r8d
	andl	$7, %r8d
	movb	xmask(%r8), %bl
	testb	(%r15,%r9), %bl
	je	.LBB10_25
# BB#22:                                # %if.then.38
                                        #   in Loop: Header=BB10_21 Depth=2
	movl	%r10d, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%r12), %rbp
	cmpq	%r13, %rbp
	jb	.LBB10_25
# BB#23:                                # %if.then.38
                                        #   in Loop: Header=BB10_21 Depth=2
	cmpq	%r11, %rbp
	ja	.LBB10_25
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB10_21 Depth=2
	movl	%esi, %edi
	andl	$7, %edi
	movb	xmask(%rdi), %bl
	orb	%bl, (%rbp)
.LBB10_25:                              # %for.inc
                                        #   in Loop: Header=BB10_21 Depth=2
	incl	%edx
	incl	%ecx
	incl	%r10d
	incl	%esi
	decl	%eax
	jne	.LBB10_21
.LBB10_26:                              # %for.end
                                        #   in Loop: Header=BB10_20 Depth=1
	addq	-24(%rsp), %r15         # 8-byte Folded Reload
	addq	-32(%rsp), %r12         # 8-byte Folded Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %esi
	movl	%r14d, %r9d
	jg	.LBB10_20
.LBB10_27:                              # %cleanup.124
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gsijs_copy_mono, .Lfunc_end10-gsijs_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_fill_mask,@function
gsijs_fill_mask:                        # @gsijs_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp118:
	.cfi_def_cfa_offset 112
.Ltmp119:
	.cfi_offset %rbx, -48
.Ltmp120:
	.cfi_offset %r12, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB11_2
# BB#1:                                 # %if.end
	movq	160(%rsp), %rax
	movl	152(%rsp), %r10d
	movl	144(%rsp), %r11d
	movq	136(%rsp), %r14
	movl	128(%rsp), %ebp
	movl	120(%rsp), %r15d
	movl	112(%rsp), %r12d
	movl	$1, 22668(%rbx)
	movq	%rax, 48(%rsp)
	movl	%r10d, 40(%rsp)
	movl	%r11d, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r12d, (%rsp)
	callq	*22896(%rbx)
	movl	$0, 22668(%rbx)
	jmp	.LBB11_3
.LBB11_2:                               # %cleanup
	xorl	%eax, %eax
.LBB11_3:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gsijs_fill_mask, .Lfunc_end11-gsijs_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_fill_path,@function
gsijs_fill_path:                        # @gsijs_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbx, -16
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB12_2
# BB#1:                                 # %if.end
	movl	$1, 22668(%rbx)
	callq	*22880(%rbx)
	movl	$0, 22668(%rbx)
.LBB12_2:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gsijs_fill_path, .Lfunc_end12-gsijs_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_stroke_path,@function
gsijs_stroke_path:                      # @gsijs_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbx, -16
	movq	1728(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB13_2
# BB#1:                                 # %if.end
	movl	$1, 22668(%rbx)
	callq	*22888(%rbx)
	movl	$0, 22668(%rbx)
	popq	%rbx
	retq
.LBB13_2:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	gsijs_stroke_path, .Lfunc_end13-gsijs_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_parse_wxh,@function
gsijs_parse_wxh:                        # @gsijs_parse_wxh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp134:
	.cfi_def_cfa_offset 352
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	jle	.LBB14_4
# BB#1:                                 # %for.body.lr.ph
	movslq	%ebp, %rax
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r14), %esi
	cmpl	$120, %esi
	je	.LBB14_4
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_2 Depth=1
	incq	%r14
	cmpq	%rax, %r14
	jl	.LBB14_2
.LBB14_4:                               # %for.end
	leal	1(%r14), %eax
	movl	$-7, %r12d
	cmpl	%ebp, %eax
	jge	.LBB14_11
# BB#5:                                 # %if.end.6
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	cmpl	$255, %r14d
	jbe	.LBB14_7
# BB#6:
	movl	$-12, %r12d
	jmp	.LBB14_11
.LBB14_7:                               # %if.end.11
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movslq	%r14d, %r13
	leaq	32(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memcpy
	movb	$0, 32(%rsp,%r13)
	leaq	24(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod
	movq	16(%rsp), %rax          # 8-byte Reload
	movsd	%xmm0, (%rax)
	cmpq	%r15, 24(%rsp)
	je	.LBB14_11
# BB#8:                                 # %if.end.21
	subl	%r14d, %ebp
	cmpl	$256, %ebp              # imm = 0x100
	movl	$-12, %r12d
	ja	.LBB14_11
# BB#9:                                 # %if.end.26
	leaq	1(%rbx,%r13), %rsi
	movslq	%ebp, %rbx
	leaq	-1(%rbx), %rdx
	movq	%r15, %rdi
	callq	memcpy
	movb	$0, 31(%rsp,%rbx)
	leaq	24(%rsp), %rsi
	movq	%r15, %rdi
	callq	strtod
	movq	8(%rsp), %rax           # 8-byte Reload
	movsd	%xmm0, (%rax)
	movl	$-7, %r12d
	cmpq	%r15, 24(%rsp)
	je	.LBB14_11
# BB#10:                                # %select.mid
	xorl	%r12d, %r12d
.LBB14_11:                              # %cleanup
	movl	%r12d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gsijs_parse_wxh, .Lfunc_end14-gsijs_parse_wxh
	.cfi_endproc

	.align	16, 0x90
	.type	gsijs_read_string_malloc,@function
gsijs_read_string_malloc:               # @gsijs_read_string_malloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 96
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	24(%rsp), %rdx
	callq	param_read_string
	movl	%eax, %ebp
	movl	$1, %r12d
	cmpl	$1, %ebp
	je	.LBB15_15
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB15_13
# BB#2:                                 # %sw.bb
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	24(%rsp), %rbp
	movl	32(%rsp), %r12d
	movq	(%rbx), %rdi
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	movl	$.L.str.40, %r14d
	cmovneq	%rdi, %r14
	je	.LBB15_4
# BB#3:                                 # %cond.true.3
	callq	strlen
	movq	%rax, %rcx
.LBB15_4:                               # %cond.end.6
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	bytes_compare
	testl	%r13d, %r13d
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	je	.LBB15_6
# BB#5:                                 # %cond.end.6
	movl	$-15, %ebp
	testl	%eax, %eax
	jne	.LBB15_14
.LBB15_6:                               # %if.end
	movl	32(%rsp), %eax
	incl	%eax
	cmpl	(%r12), %eax
	movq	(%rbx), %rax
	jne	.LBB15_7
# BB#10:                                # %if.end.19
	testq	%rax, %rax
	jne	.LBB15_12
	jmp	.LBB15_11
.LBB15_13:                              # %sw.default
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB15_14
	jmp	.LBB15_15
.LBB15_7:                               # %if.then.13
	testq	%rax, %rax
	je	.LBB15_9
# BB#8:                                 # %if.then.15
	movq	8(%r15), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.35, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB15_9:                               # %if.end.19.thread
	movq	$0, (%rbx)
	movl	$0, (%r12)
.LBB15_11:                              # %if.end.31
	movq	8(%r15), %rax
	movq	200(%rax), %rdi
	movl	32(%rsp), %esi
	incl	%esi
	movl	$1, %edx
	movl	$.L.str.35, %ecx
	callq	*88(%rdi)
	movq	%rax, (%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB15_14
.LBB15_12:                              # %if.end.35
	movl	32(%rsp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, (%r12)
	movq	24(%rsp), %rsi
	movq	%rax, %rdi
	callq	strncpy
	movl	32(%rsp), %eax
	movq	(%rbx), %rcx
	movb	$0, (%rcx,%rax)
	xorl	%r12d, %r12d
	jmp	.LBB15_15
.LBB15_14:                              # %e
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r12d
.LBB15_15:                              # %cleanup
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gsijs_read_string_malloc, .Lfunc_end15-gsijs_read_string_malloc
	.cfi_endproc

	.type	gsijs_procs,@object     # @gsijs_procs
	.section	.rodata,"a",@progbits
	.align	8
gsijs_procs:
	.quad	gsijs_open
	.quad	0
	.quad	0
	.quad	gsijs_output_page
	.quad	gsijs_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gsijs_get_params
	.quad	gsijs_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gsijs_finish_copydevice
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
	.size	gsijs_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ijs"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata,"a",@progbits
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_ijs_device,@object   # @gs_ijs_device
	.data
	.globl	gs_ijs_device
	.align	8
gs_ijs_device:
	.long	23272                   # 0x5ae8
	.zero	4
	.quad	gsijs_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
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
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1                       # 0x1
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
	.long	629                     # 0x275
	.long	814                     # 0x32e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116995584              # float 7.400000e+01
	.long	1116995584              # float 7.400000e+01
	.long	1116995584              # float 7.400000e+01
	.long	1116995584              # float 7.400000e+01
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
	.zero	584
	.zero	11240
	.quad	0
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.zero	4096
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.zero	584
	.size	gs_ijs_device, 23272

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ijs server not specified\n"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dup() failed\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Can't start ijs server \"%s\"\n"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Can't open ijs\n"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Can't begin ijs job 0\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"OutputFD"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"OutputFile"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DeviceManufacturer"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DeviceModel"
	.size	.L.str.11, 12

	.type	xmask,@object           # @xmask
	.section	.rodata.cst8,"aM",@progbits,8
xmask:
	.ascii	"\200@ \020\b\004\002\001"
	.size	xmask, 8

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"PS:Duplex"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"true"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"false"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PS:Tumble"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ijs: Can't set parameter %s=%s\n"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Dpi"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Duplex"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Tumble"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%gx%g"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PaperSize"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"PrintableArea"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"PrintableTopLeft"
	.size	.L.str.23, 17

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"TopLeft"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ColorSpace"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"KRGB"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"KxRGB"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gsijs_output_page"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"NumChan"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"BitsPerSample"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"DeviceCMYK"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"DeviceGray"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Width"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Height"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gsijs_read_string_malloc"
	.size	.L.str.35, 25

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"IjsServer"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"IjsParams"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"IjsUseOutputFD"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ProcessColorModel"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.zero	1
	.size	.L.str.40, 1

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gsijs_finish_copydevice"
	.size	.L.str.41, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
