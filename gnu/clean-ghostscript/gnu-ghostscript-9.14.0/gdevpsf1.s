	.text
	.file	"gdevpsf1.bc"
	.globl	psf_type1_glyph_data
	.align	16, 0x90
	.type	psf_type1_glyph_data,@function
psf_type1_glyph_data:                   # @psf_type1_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, (%rcx)
	movq	448(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	psf_type1_glyph_data, .Lfunc_end0-psf_type1_glyph_data
	.cfi_endproc

	.globl	psf_get_type1_glyphs
	.align	16, 0x90
	.type	psf_get_type1_glyphs,@function
psf_get_type1_glyphs:                   # @psf_get_type1_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$psf_type1_glyph_data, %r8d
	jmp	psf_get_outline_glyphs  # TAILCALL
.Lfunc_end1:
	.size	psf_get_type1_glyphs, .Lfunc_end1-psf_get_type1_glyphs
	.cfi_endproc

	.globl	psf_write_type1_font
	.align	16, 0x90
	.type	psf_write_type1_font,@function
psf_write_type1_font:                   # @psf_write_type1_font
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
	subq	$2312, %rsp             # imm = 0x908
.Ltmp6:
	.cfi_def_cfa_offset 2368
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
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	%r8d, %ebx
	movq	%rcx, %rbp
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%r13, 1600(%rsp)
	callq	stell
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	512(%r12), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	leaq	96(%rsp), %rdi
	movl	$psf_type1_glyph_data, %r8d
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	psf_get_outline_glyphs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_130
# BB#1:                                 # %if.end
	movq	param_printer_params_default+32(%rip), %rax
	movq	%rax, 1584(%rsp)
	movups	param_printer_params_default+16(%rip), %xmm0
	movaps	%xmm0, 1568(%rsp)
	movupd	param_printer_params_default(%rip), %xmm0
	movapd	%xmm0, 1552(%rsp)
	movq	$.L.str, 1576(%rsp)
	movl	%r14d, %eax
	andl	$2, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	shrl	%eax
	xorl	$5, %eax
	movl	%eax, 1584(%rsp)
	leaq	1472(%rsp), %rdi
	leaq	1552(%rsp), %rsi
	movq	%r13, %rdx
	callq	s_init_param_printer
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_130
# BB#2:                                 # %if.end.6
	movl	%r14d, 60(%rsp)         # 4-byte Spill
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	stream_puts
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	write_font_name
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	stream_puts
	leaq	1680(%rsp), %rcx
	xorl	%esi, %esi
	movl	$12480, %edx            # imm = 0x30C0
	movq	%r12, %rdi
	callq	*184(%r12)
	testl	%eax, %eax
	js	.LBB2_11
# BB#3:                                 # %if.then.13
	movl	1680(%rsp), %eax
	testb	$64, %al
	je	.LBB2_5
# BB#4:                                 # %if.then.i
	movl	$.L.str.27, %esi
	movl	$.L.str.4, %edx
	movq	%r13, %rdi
	callq	pprints1
	movq	1768(%rsp), %rsi
	movl	1776(%rsp), %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	s_write_ps_string
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	1680(%rsp), %eax
.LBB2_5:                                # %write_font_info.exit
	testb	$-128, %al
	je	.LBB2_7
# BB#6:                                 # %if.then.i.90
	movl	$.L.str.27, %esi
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	callq	pprints1
	movq	1784(%rsp), %rsi
	movl	1792(%rsp), %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	s_write_ps_string
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	1680(%rsp), %eax
.LBB2_7:                                # %write_font_info.exit91
	testb	$16, %ah
	je	.LBB2_9
# BB#8:                                 # %if.then.i.97
	movl	$.L.str.27, %esi
	movl	$.L.str.6, %edx
	movq	%r13, %rdi
	callq	pprints1
	movq	1800(%rsp), %rsi
	movl	1808(%rsp), %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	s_write_ps_string
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	1680(%rsp), %eax
.LBB2_9:                                # %write_font_info.exit98
	testb	$32, %ah
	je	.LBB2_11
# BB#10:                                # %if.then.i.104
	movl	$.L.str.27, %esi
	movl	$.L.str.7, %edx
	movq	%r13, %rdi
	callq	pprints1
	movq	1816(%rsp), %rsi
	movl	1824(%rsp), %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	s_write_ps_string
	movl	$.L.str.28, %esi
	movq	%r13, %rdi
	callq	stream_puts
.LBB2_11:                               # %if.end.21
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	write_font_name
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movq	%r13, %r15
	movq	96(%rsp), %r13
	movq	112(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	120(%rsp), %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	$.L.str.29, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	440(%r12), %eax
	cmpl	$1, %eax
	jne	.LBB2_12
# BB#14:                                # %sw.bb.2.i
	movl	60(%rsp), %eax          # 4-byte Reload
	testb	$16, %al
	je	.LBB2_16
# BB#15:                                # %if.then.i.109
	movl	$.L.str.31, %esi
	jmp	.LBB2_25
.LBB2_12:                               # %if.end.21
	testl	%eax, %eax
	jne	.LBB2_16
# BB#13:                                # %sw.bb.i
	movl	$.L.str.30, %esi
	jmp	.LBB2_25
.LBB2_16:                               # %sw.default.i
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	callq	stream_puts
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	setne	%al
	cmpl	$0, 80(%rsp)            # 4-byte Folded Reload
	setne	%r14b
	andb	%al, %r14b
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*200(%r12)
	movq	%rax, %rbp
	testb	%r14b, %r14b
	je	.LBB2_19
# BB#18:                                # %if.then.9.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	80(%rsp), %esi          # 4-byte Reload
	movq	%rbp, %rdx
	callq	psf_sorted_glyphs_include
	testl	%eax, %eax
	je	.LBB2_23
.LBB2_19:                               # %if.end.14.i
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpq	$2147483647, %rbp       # imm = 0x7FFFFFFF
	je	.LBB2_23
# BB#20:                                # %if.end.14.i
                                        #   in Loop: Header=BB2_17 Depth=1
	cmpq	%r13, %rbp
	je	.LBB2_23
# BB#21:                                # %land.lhs.true.18.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	%r12, %rdi
	movq	%rbp, %rsi
	leaq	1680(%rsp), %rdx
	callq	*240(%r12)
	testl	%eax, %eax
	js	.LBB2_23
# BB#22:                                # %if.then.22.i
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	pprintd1
	movq	1680(%rsp), %rsi
	movl	1688(%rsp), %edx
	movq	%r15, %rdi
	callq	stream_write
	movl	$.L.str.35, %esi
	movq	%r15, %rdi
	callq	stream_puts
.LBB2_23:                               # %cleanup.i
                                        #   in Loop: Header=BB2_17 Depth=1
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB2_17
# BB#24:                                # %for.end.i
	movl	$.L.str.36, %esi
.LBB2_25:                               # %write_Encoding.exit
	movq	%r15, %r13
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movss	80(%r12), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	84(%r12), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movss	88(%r12), %xmm2         # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movss	92(%r12), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	movss	96(%r12), %xmm4         # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movss	100(%r12), %xmm5        # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	movl	$.L.str.10, %esi
	movq	%r13, %rdi
	callq	pprintg6
	leaq	408(%r12), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	write_uid
	movsd	376(%r12), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%r12), %xmm1        # xmm1 = mem[0],zero
	movsd	392(%r12), %xmm2        # xmm2 = mem[0],zero
	movsd	400(%r12), %xmm3        # xmm3 = mem[0],zero
	movl	$.L.str.11, %esi
	movq	%r13, %rdi
	callq	pprintg4
	xorl	%ebp, %ebp
	leaq	1472(%rsp), %rdi
	xorl	%edx, %edx
	movl	$psf_write_type1_font.font_items, %ecx
	movq	%r12, %rsi
	callq	gs_param_write_items
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	60(%rsp), %ebx          # 4-byte Reload
	js	.LBB2_130
# BB#26:                                # %if.end.52
	movq	2368(%rsp), %r15
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	64(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	setns	%al
	testb	$32, %bl
	sete	%cl
	orb	%al, %cl
	cmovnel	%edx, %ebp
	movl	$stream_write, %eax
	movl	$stream_write_encrypted, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	andl	$1, %ebx
	je	.LBB2_27
# BB#28:                                # %if.then.62
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movl	$.L.str.16, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movq	%r13, %rdi
	callq	stell
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, (%r15)
	movq	%r13, %rdi
	callq	stell
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	je	.LBB2_30
# BB#29:                                # %if.then.69
	movq	8(%r13), %rsi
	leaq	1120(%rsp), %r15
	movq	%r15, %rdi
	callq	s_init
	leaq	1000(%rsp), %rbx
	movl	$s_AXE_template, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	s_init_state
	movq	1600(%rsp), %r8
	leaq	800(%rsp), %rdx
	movl	$200, %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	s_init_filter
	movl	$0, 1108(%rsp)
	movq	%r15, 1600(%rsp)
.LBB2_30:                               # %if.end.71
	movq	8(%r13), %rsi
	leaq	448(%rsp), %rbx
	movq	%rbx, %rdi
	callq	s_init
	leaq	336(%rsp), %r15
	movl	$s_exE_template, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	s_init_state
	movw	$-9871, 444(%rsp)       # imm = 0xFFFFFFFFFFFFD971
	movq	1600(%rsp), %r8
	leaq	128(%rsp), %rdx
	movl	$200, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	s_init_filter
	movq	%rbx, 1600(%rsp)
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	jmp	.LBB2_31
.LBB2_27:
	movl	%ebx, 44(%rsp)          # 4-byte Spill
.LBB2_31:                               # %if.end.76
	movq	1600(%rsp), %rbx
	movq	112(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	120(%rsp), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%ebp, 2308(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1552(%rsp), %rsi
	movq	%rbx, %rdx
	callq	s_init_param_printer
	testl	%eax, %eax
	js	.LBB2_106
# BB#32:                                # %if.end.i
	movq	%rbx, %rbp
	leaq	448(%r12), %rbx
	movl	$.L.str.41, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$.L.str.42, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$.L.str.43, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$.L.str.44, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$1, 1776(%rsp)
	movl	$1025658323, 1780(%rsp) # imm = 0x3D224DD3
	movl	$1088421888, 1784(%rsp) # imm = 0x40E00000
	movl	$1031127695, 1848(%rsp) # imm = 0x3D75C28F
	movl	$0, 1852(%rsp)
	movl	$0, 1960(%rsp)
	movl	$1, 2008(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1680(%rsp), %rdx
	movl	$write_Private.private_items, %ecx
	movq	%rbx, %rsi
	callq	gs_param_write_items
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_130
# BB#33:                                # %if.end.8.i
	cmpl	$4, 2308(%rsp)
	je	.LBB2_35
# BB#34:                                # %if.then.10.i
	leaq	2224(%rsp), %rdi
	leaq	2308(%rsp), %rdx
	movl	$.L.str.52, %esi
	callq	param_write_int
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_130
.LBB2_35:                               # %if.end.15.i
	movl	556(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_37
# BB#36:                                # %if.then.i.i
	leaq	560(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.53, %esi
	callq	param_write_float_array
.LBB2_37:                               # %write_float_array.exit.i
	movl	732(%r12), %eax
	testl	%eax, %eax
	movq	%rbp, %rbx
	je	.LBB2_39
# BB#38:                                # %if.then.i.7.i
	leaq	736(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.54, %esi
	callq	param_write_float_array
.LBB2_39:                               # %write_float_array.exit8.i
	movl	624(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_41
# BB#40:                                # %if.then.i.15.i
	leaq	628(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.55, %esi
	callq	param_write_float_array
.LBB2_41:                               # %write_float_array.exit16.i
	movl	684(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_43
# BB#42:                                # %if.then.i.23.i
	leaq	688(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.56, %esi
	callq	param_write_float_array
.LBB2_43:                               # %write_float_array.exit24.i
	movl	780(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_45
# BB#44:                                # %if.then.i.31.i
	leaq	784(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.57, %esi
	callq	param_write_float_array
.LBB2_45:                               # %write_float_array.exit32.i
	movl	788(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_47
# BB#46:                                # %if.then.i.39.i
	leaq	792(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.58, %esi
	callq	param_write_float_array
.LBB2_47:                               # %write_float_array.exit40.i
	movl	796(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_49
# BB#48:                                # %if.then.i.47.i
	leaq	800(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.59, %esi
	callq	param_write_float_array
.LBB2_49:                               # %write_float_array.exit48.i
	movl	848(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_51
# BB#50:                                # %if.then.i.55.i
	leaq	852(%r12), %rcx
	movl	$0, 1644(%rsp)
	movl	%eax, 1640(%rsp)
	movq	%rcx, 1632(%rsp)
	leaq	2224(%rsp), %rdi
	leaq	1632(%rsp), %rdx
	movl	$.L.str.60, %esi
	callq	param_write_float_array
.LBB2_51:                               # %cleanup.cont.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	write_uid
	movl	$.L.str.61, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	16(%r12), %rax
	movq	%rax, 1672(%rsp)
	xorl	%r14d, %r14d
	leaq	1632(%rsp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	*456(%r12)
	movq	%rbx, %rbp
	cmpl	$-15, %eax
	je	.LBB2_56
# BB#52:
	leaq	1632(%rsp), %rbx
	.align	16, 0x90
.LBB2_53:                               # %for.body.i.120
                                        # =>This Inner Loop Header: Depth=1
	incl	%r14d
	testl	%eax, %eax
	js	.LBB2_55
# BB#54:                                # %if.then.60.i
                                        #   in Loop: Header=BB2_53 Depth=1
	movl	$.L.str.63, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
.LBB2_55:                               # %for.cond.backedge.i
                                        #   in Loop: Header=BB2_53 Depth=1
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rcx
	callq	*456(%r12)
	cmpl	$-15, %eax
	jne	.LBB2_53
.LBB2_56:                               # %for.end.i.121
	movl	%r14d, 24(%rsp)         # 4-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 900(%r12)
	je	.LBB2_58
# BB#57:                                # %if.then.65.i
	movq	16(%r12), %rdi
	movl	$.L.str.64, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
.LBB2_58:                               # %if.end.70.i
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$.L.str.65, %esi
	movq	%rbp, %rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	pprintd1
	cmpl	$0, 900(%r12)
	je	.LBB2_72
# BB#59:                                # %for.cond.77.preheader.i
	testl	%r14d, %r14d
	jle	.LBB2_97
# BB#60:                                # %for.body.79.lr.ph.i
	movslq	%r14d, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_61:                               # %for.body.79.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_63 Depth 2
                                        #       Child Loop BB2_65 Depth 3
                                        #         Child Loop BB2_66 Depth 4
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	leaq	1632(%rsp), %rcx
	callq	*456(%r12)
	testl	%eax, %eax
	js	.LBB2_92
# BB#62:                                # %if.then.84.i
                                        #   in Loop: Header=BB2_61 Depth=1
	movw	$4330, 1608(%rsp)       # imm = 0x10EA
	movq	1632(%rsp), %rbx
	movl	1640(%rsp), %ebp
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	leaq	1608(%rsp), %rcx
	callq	gs_type1_decrypt
	movslq	512(%r12), %rax
	leaq	(%rbx,%rax), %rcx
	testq	%rax, %rax
	cmoveq	%rbx, %rcx
	leaq	(%rbp,%rbx), %rax
	xorl	%r15d, %r15d
	jmp	.LBB2_63
.LBB2_71:                               # %sw.epilog.i.i
                                        #   in Loop: Header=BB2_63 Depth=2
	addq	$2, %rcx
	.align	16, 0x90
.LBB2_63:                               # %if.then.84.i
                                        #   Parent Loop BB2_61 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_65 Depth 3
                                        #         Child Loop BB2_66 Depth 4
	cmpq	%rax, %rcx
	jae	.LBB2_89
# BB#64:                                # %while.body.lr.ph.lr.ph.i.i
                                        #   in Loop: Header=BB2_63 Depth=2
	xorl	%edi, %edi
	movq	%rcx, %rdx
.LBB2_65:                               # %while.body.lr.ph.i.i
                                        #   Parent Loop BB2_61 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_66 Depth 4
	movslq	%edi, %rsi
	incq	%rdx
	.align	16, 0x90
.LBB2_66:                               # %while.body.i.i
                                        #   Parent Loop BB2_61 Depth=1
                                        #     Parent Loop BB2_63 Depth=2
                                        #       Parent Loop BB2_65 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	-1(%rdx), %rcx
	movzbl	-1(%rdx), %ebp
	cmpl	$31, %ebp
	jbe	.LBB2_67
# BB#80:                                # %if.else.27.i.i
                                        #   in Loop: Header=BB2_66 Depth=4
	cmpl	$246, %ebp
	jbe	.LBB2_81
# BB#84:                                # %if.else.37.i.i
                                        #   in Loop: Header=BB2_66 Depth=4
	cmpl	$250, %ebp
	jbe	.LBB2_85
# BB#86:                                # %if.else.53.i.i
                                        #   in Loop: Header=BB2_66 Depth=4
	cmpl	$255, %ebp
	jne	.LBB2_87
# BB#88:                                # %if.else.71.i.i
                                        #   in Loop: Header=BB2_66 Depth=4
	shll	$24, %ebp
	movl	%ebp, 1680(%rsp,%rsi,4)
	movzbl	(%rdx), %ecx
	shll	$16, %ecx
	orl	%ebp, %ecx
	movl	%ecx, 1680(%rsp,%rsi,4)
	movzbl	1(%rdx), %ebp
	shll	$8, %ebp
	orl	%ecx, %ebp
	movl	%ebp, 1680(%rsp,%rsi,4)
	movzbl	2(%rdx), %ecx
	orl	%ebp, %ecx
	movl	%ecx, 1680(%rsp,%rsi,4)
	leaq	4(%rdx), %rcx
	addq	$3, %rdx
	cmpq	%rax, %rdx
	movq	%rcx, %rdx
	jb	.LBB2_66
	jmp	.LBB2_89
.LBB2_67:                               # %if.then.10.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	leaq	1(%rcx), %rdx
	xorl	%ebx, %ebx
	cmpl	$12, %ebp
	jne	.LBB2_83
# BB#68:                                # %sw.bb.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	movzbl	(%rdx), %edx
	cmpl	$16, %edx
	je	.LBB2_69
# BB#79:                                # %if.else.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	addq	$2, %rcx
	jmp	.LBB2_82
.LBB2_81:                               # %if.then.31.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	incq	%rcx
	addl	$-139, %ebp
	leal	1(%rsi), %ebx
	movl	%ebp, 1680(%rsp,%rsi,4)
	jmp	.LBB2_82
.LBB2_85:                               # %if.then.41.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	shll	$8, %ebp
	leal	-63124(%rbp), %edx
	movl	%edx, 1680(%rsp,%rsi,4)
	movq	%rcx, %rdx
	addq	$2, %rdx
	movzbl	1(%rcx), %ecx
	leal	1(%rsi), %ebx
	leal	-63124(%rcx,%rbp), %ecx
	movl	%ecx, 1680(%rsp,%rsi,4)
	jmp	.LBB2_83
.LBB2_87:                               # %if.then.57.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	movl	$251, %edi
	subl	%ebp, %edi
	shll	$8, %edi
	addl	$-108, %edi
	movl	%edi, 1680(%rsp,%rsi,4)
	addq	$2, %rcx
	movzbl	(%rdx), %edx
	leal	1(%rsi), %ebx
	subl	%edx, %edi
	movl	%edi, 1680(%rsp,%rsi,4)
.LBB2_82:                               # %while.cond.outer40.backedge.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	movq	%rcx, %rdx
.LBB2_83:                               # %while.cond.outer40.backedge.i.i
                                        #   in Loop: Header=BB2_65 Depth=3
	cmpq	%rax, %rdx
	movl	%ebx, %edi
	jb	.LBB2_65
	jmp	.LBB2_89
.LBB2_69:                               # %if.then.16.i.i
                                        #   in Loop: Header=BB2_63 Depth=2
	decl	%edi
	movslq	%edi, %rdx
	movl	1680(%rsp,%rdx,4), %edx
	addl	$-14, %edx
	xorl	%r15d, %r15d
	cmpl	$4, %edx
	ja	.LBB2_71
# BB#70:                                # %switch.lookup.i.i
                                        #   in Loop: Header=BB2_63 Depth=2
	movslq	%edx, %rdx
	movl	.Lswitch.table(,%rdx,4), %r15d
	jmp	.LBB2_71
	.align	16, 0x90
.LBB2_89:                               # %CheckSubrForMM.exit.i
                                        #   in Loop: Header=BB2_61 Depth=1
	movw	$4330, 1608(%rsp)       # imm = 0x10EA
	movq	1632(%rsp), %rdi
	movl	1640(%rsp), %edx
	movq	%rdi, %rsi
	leaq	1608(%rsp), %rcx
	callq	gs_type1_encrypt
	testl	%r15d, %r15d
	movq	64(%rsp), %rbx          # 8-byte Reload
	js	.LBB2_122
# BB#90:                                # %if.end.94.i
                                        #   in Loop: Header=BB2_61 Depth=1
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	je	.LBB2_92
# BB#91:                                # %if.then.96.i
                                        #   in Loop: Header=BB2_61 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movb	%r15b, (%rax,%r13)
.LBB2_92:                               # %for.inc.i
                                        #   in Loop: Header=BB2_61 Depth=1
	incq	%r13
	cmpq	48(%rsp), %r13          # 8-byte Folded Reload
	jl	.LBB2_61
.LBB2_72:                               # %for.cond.102.preheader.i
	testl	%r14d, %r14d
	jle	.LBB2_97
# BB#73:                                # %for.body.105.lr.ph.i
	leaq	1632(%rsp), %r15
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_74:                               # %for.body.105.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	%r15, %rcx
	callq	*456(%r12)
	testl	%eax, %eax
	js	.LBB2_96
# BB#75:                                # %if.then.111.i
                                        #   in Loop: Header=BB2_74 Depth=1
	movl	1640(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB2_95
# BB#76:                                # %if.then.112.i
                                        #   in Loop: Header=BB2_74 Depth=1
	cmpl	$0, 900(%r12)
	je	.LBB2_93
# BB#77:                                # %if.then.118.i
                                        #   in Loop: Header=BB2_74 Depth=1
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rcx
	callq	strip_othersubrs
	movq	16(%r12), %rdi
	movl	$.L.str.67, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	callq	strip_othersubrs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_122
# BB#78:                                # %cleanup.147.i
                                        #   in Loop: Header=BB2_74 Depth=1
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	leaq	1680(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	callq	gs_sprintf
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	stream_puts
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	*80(%rsp)               # 8-byte Folded Reload
	movq	16(%r12), %rdi
	movl	$.L.str.69, %edx
	movq	%r14, %rsi
	movq	%rbp, %rbx
	callq	*24(%rdi)
	movl	24(%rsp), %r14d         # 4-byte Reload
	leaq	1632(%rsp), %r15
	jmp	.LBB2_94
.LBB2_93:                               # %if.else.i
                                        #   in Loop: Header=BB2_74 Depth=1
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	leaq	1680(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	stream_puts
	movq	1632(%rsp), %rsi
	movl	1640(%rsp), %edx
	movq	%rbx, %rdi
	callq	*80(%rsp)               # 8-byte Folded Reload
.LBB2_94:                               # %if.end.162.i
                                        #   in Loop: Header=BB2_74 Depth=1
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	stream_puts
.LBB2_95:                               # %cleanup.165.thread.i
                                        #   in Loop: Header=BB2_74 Depth=1
	movl	$.L.str.63, %esi
	movq	%r15, %rdi
	callq	gs_glyph_data_free
.LBB2_96:                               # %for.inc.169.i
                                        #   in Loop: Header=BB2_74 Depth=1
	incl	%r13d
	cmpl	%r14d, %r13d
	jl	.LBB2_74
.LBB2_97:                               # %cleanup.cont.178.i
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	movq	%rbx, %r13
	callq	stream_puts
	movq	16(%r12), %rax
	movq	%rax, 1672(%rsp)
	xorl	%r14d, %r14d
	movq	32(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	movl	28(%rsp), %ecx          # 4-byte Reload
	cmovel	%r14d, %ecx
	leaq	1680(%rsp), %r15
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	psf_enumerate_list_begin
	movq	$2147483647, 1624(%rsp) # imm = 0x7FFFFFFF
	leaq	1624(%rsp), %rbp
	leaq	1632(%rsp), %rbx
	jmp	.LBB2_98
.LBB2_108:                              # %if.then.195.i
                                        #   in Loop: Header=BB2_98 Depth=1
	incl	%r14d
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
	.align	16, 0x90
.LBB2_98:                               # %for.cond.184.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB2_99
# BB#107:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB2_98 Depth=1
	movq	1624(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	*448(%r12)
	testl	%eax, %eax
	js	.LBB2_98
	jmp	.LBB2_108
.LBB2_99:                               # %for.cond.184.i
                                        #   in Loop: Header=BB2_98 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_98
# BB#100:                               # %for.end.198.i
	movl	$.L.str.73, %esi
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	pprintd1
	leaq	1680(%rsp), %r14
	movq	%r14, %rdi
	callq	psf_enumerate_glyphs_reset
	movq	$2147483647, 1624(%rsp) # imm = 0x7FFFFFFF
	leaq	1624(%rsp), %rbp
	leaq	1632(%rsp), %r13
	jmp	.LBB2_101
	.align	16, 0x90
.LBB2_127:                              # %cleanup.281.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movl	$.L.str.77, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.72, %esi
	movq	%r13, %rdi
	callq	gs_glyph_data_free
.LBB2_101:                              # %for.cond.200.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	psf_enumerate_glyphs_next
	testl	%eax, %eax
	jne	.LBB2_102
# BB#109:                               # %land.lhs.true.207.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movq	1624(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	*448(%r12)
	testl	%eax, %eax
	js	.LBB2_101
# BB#110:                               # %if.then.213.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movq	1624(%rsp), %rsi
	movq	%r12, %rdi
	leaq	1608(%rsp), %rdx
	callq	*240(%r12)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_111
# BB#120:                               # %if.end.229.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	1608(%rsp), %rsi
	movl	1616(%rsp), %edx
	movq	%rbx, %rdi
	callq	stream_write
	cmpl	$0, 900(%r12)
	je	.LBB2_126
# BB#121:                               # %if.then.239.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movq	%rbx, %rbp
	movq	16(%r12), %rdi
	movl	1640(%rsp), %esi
	movl	$.L.str.74, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	88(%rsp), %rcx          # 8-byte Reload
	callq	strip_othersubrs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_122
# BB#125:                               # %cleanup.267.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movl	$.L.str.75, %esi
	movq	%rbp, %r13
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	pprintd1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	*80(%rsp)               # 8-byte Folded Reload
	movq	16(%r12), %rdi
	movl	$.L.str.76, %edx
	movq	%rbx, %rsi
	movq	%r13, %rbx
	leaq	1632(%rsp), %r13
	callq	*24(%rdi)
	leaq	1624(%rsp), %rbp
	jmp	.LBB2_127
.LBB2_126:                              # %if.else.270.i
                                        #   in Loop: Header=BB2_101 Depth=1
	movl	1640(%rsp), %edx
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	pprintd1
	movq	1632(%rsp), %rsi
	movl	1640(%rsp), %edx
	movq	%rbx, %rdi
	callq	*80(%rsp)               # 8-byte Folded Reload
	jmp	.LBB2_127
.LBB2_102:                              # %for.cond.200.i
                                        #   in Loop: Header=BB2_101 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_101
# BB#103:                               # %cleanup.cont.294.i
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB2_105
# BB#104:                               # %if.then.297.i
	movq	16(%r12), %rdi
	movl	$.L.str.66, %edx
	callq	*24(%rdi)
.LBB2_105:                              # %if.end.302.i
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	leaq	2224(%rsp), %rdi
	callq	s_release_param_printer
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB2_106:                              # %write_Private.exit.thread
	movl	60(%rsp), %eax          # 4-byte Reload
	jmp	.LBB2_114
.LBB2_122:                              # %if.then.251.i
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB2_124
# BB#123:                               # %if.then.254.i
	movq	16(%r12), %rdi
	movl	$.L.str.66, %edx
	callq	*24(%rdi)
.LBB2_124:                              # %write_Private.exit
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB2_113
.LBB2_111:                              # %if.then.220.i
	movq	88(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	movq	16(%rsp), %r13          # 8-byte Reload
	je	.LBB2_113
# BB#112:                               # %if.then.223.i
	movq	16(%r12), %rdi
	movl	$.L.str.66, %edx
	callq	*24(%rdi)
.LBB2_113:                              # %write_Private.exit
	testl	%r15d, %r15d
	movl	60(%rsp), %eax          # 4-byte Reload
	js	.LBB2_130
.LBB2_114:                              # %if.end.84
	movl	%eax, %ebp
	movq	1600(%rsp), %rbx
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB2_128
# BB#115:                               # %if.then.88
	testb	$12, %bpl
	je	.LBB2_117
# BB#116:                               # %if.then.91
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	1600(%rsp), %rbx
.LBB2_117:                              # %if.end.93
	movq	2368(%rsp), %r14
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	leaq	1600(%rsp), %rdi
	movq	%r13, %rsi
	callq	s_close_filters
	movq	%r13, %rdi
	callq	stell
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, 4(%r14)
	movq	%r13, %rdi
	callq	stell
	movq	%rax, %rbx
	testb	$4, %bpl
	je	.LBB2_119
# BB#118:                               # %for.cond.preheader
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.21, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.22, %esi
	movq	%r13, %rdi
	callq	stream_puts
.LBB2_119:                              # %if.end.108
	movq	%r13, %rdi
	callq	stell
	subl	%ebx, %eax
	movl	%eax, 8(%r14)
	jmp	.LBB2_129
.LBB2_128:                              # %if.else
	movq	%r13, %rdi
	callq	stell
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	movq	2368(%rsp), %rcx
	movl	%eax, (%rcx)
	movl	$0, 8(%rcx)
	movl	$0, 4(%rcx)
.LBB2_129:                              # %if.end.119
	leaq	1472(%rsp), %rdi
	callq	s_release_param_printer
	xorl	%r15d, %r15d
.LBB2_130:                              # %cleanup
	movl	%r15d, %eax
	addq	$2312, %rsp             # imm = 0x908
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	psf_write_type1_font, .Lfunc_end2-psf_write_type1_font
	.cfi_endproc

	.align	16, 0x90
	.type	write_font_name,@function
write_font_name:                        # @write_font_name
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$248, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 288
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdi, %r15
	testq	%rdx, %rdx
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	(%rdx), %rbp
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	leaq	324(%rsi), %rbp
.LBB3_3:                                # %cond.end
	addq	$372, %rsi              # imm = 0x174
	testq	%rdx, %rdx
	leaq	8(%rdx), %rax
	cmoveq	%rsi, %rax
	movslq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_30
# BB#4:                                 # %for.cond.preheader
	movl	$40, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#5:                                 # %for.inc
	movl	$41, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+1, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#14:                                # %for.inc.1
	movl	$60, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+2, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#15:                                # %for.inc.2
	movl	$62, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+3, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#16:                                # %for.inc.3
	movl	$91, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+4, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#17:                                # %for.inc.4
	movl	$93, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+5, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#18:                                # %for.inc.5
	movl	$123, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+6, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#19:                                # %for.inc.6
	movl	$125, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+7, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#20:                                # %for.inc.7
	movl	$47, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+8, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#21:                                # %for.inc.8
	movl	$37, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+9, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#22:                                # %for.inc.9
	movl	$32, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+10, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#23:                                # %for.inc.10
	movl	$10, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+11, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#24:                                # %for.inc.11
	movl	$13, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+12, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#25:                                # %for.inc.12
	movl	$9, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+13, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#26:                                # %for.inc.13
	movl	$8, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+14, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#27:                                # %for.inc.14
	movl	$12, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+15, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#28:                                # %for.inc.15
	movl	$4, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+16, %ecx
	testq	%rax, %rax
	jne	.LBB3_6
# BB#29:                                # %for.inc.16
	movl	$27, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	movl	$.L.str.25+17, %ecx
	testq	%rax, %rax
	je	.LBB3_7
.LBB3_6:                                # %for.end
	cmpb	$0, (%rcx)
	jne	.LBB3_8
.LBB3_7:                                # %lor.lhs.false
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memchr
	testq	%rax, %rax
	je	.LBB3_11
.LBB3_8:                                # %if.then.20
	movb	$40, 48(%rsp)
	leaq	-1(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-1(%rbp,%rbx), %rax
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %rbx
	movq	%rbx, 8(%rsp)
	leaq	237(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	24(%rsp), %rsi
	leaq	(%rsp), %rdx
	movl	$1, %ebp
	xorl	%edi, %edi
	movl	$1, %ecx
	callq	*s_PSSE_template+16(%rip)
	subl	%ebx, %ebp
	addl	8(%rsp), %ebp
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	stream_write
	testl	%r14d, %r14d
	je	.LBB3_10
# BB#9:                                 # %if.then.34
	movl	$.L.str.26, %esi
	movq	%r15, %rdi
	callq	stream_puts
.LBB3_10:                               # %if.end.44
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_30:                               # %if.then
	testl	%r14d, %r14d
	movl	$.L.str.23, %eax
	movl	$.L.str.24, %esi
	cmovneq	%rax, %rsi
	movq	%r15, %rdi
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_puts             # TAILCALL
.LBB3_11:                               # %if.else.37
	testl	%r14d, %r14d
	je	.LBB3_13
# BB#12:                                # %if.then.39
	movl	$47, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB3_13:                               # %if.end.41
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_write            # TAILCALL
.Lfunc_end3:
	.size	write_font_name, .Lfunc_end3-write_font_name
	.cfi_endproc

	.align	16, 0x90
	.type	write_uid,@function
write_uid:                              # @write_uid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r12, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r15), %r12
	cmpq	$16777215, %r12         # imm = 0xFFFFFF
	ja	.LBB4_1
# BB#7:                                 # %if.then
	movl	$.L.str.37, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	pprintld1               # TAILCALL
.LBB4_1:                                # %if.else
	testq	%r12, %r12
	js	.LBB4_2
# BB#6:                                 # %if.end.11
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_2:                                # %if.then.4
	movl	$.L.str.38, %esi
	movq	%r14, %rdi
	callq	stream_puts
	testl	%r12d, %r12d
	je	.LBB4_5
# BB#3:                                 # %for.body.lr.ph
	negq	%r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movq	(%rax,%rbx,8), %rdx
	movl	$.L.str.39, %esi
	movq	%r14, %rdi
	callq	pprintld1
	incq	%rbx
	cmpl	%ebx, %r12d
	jne	.LBB4_4
.LBB4_5:                                # %for.end
	movl	$.L.str.40, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	stream_puts             # TAILCALL
.Lfunc_end4:
	.size	write_uid, .Lfunc_end4-write_uid
	.cfi_endproc

	.align	16, 0x90
	.type	stream_write_encrypted,@function
stream_write_encrypted:                 # @stream_write_encrypted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 112
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movw	$4330, 54(%rsp)         # imm = 0x10EA
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB5_3
# BB#1:                                 # %for.body.lr.ph
	movl	%ebx, %eax
	addq	%rax, %r14
	leaq	(%rsp), %r12
	leaq	54(%rsp), %r13
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	cmpl	$50, %ebx
	movl	$50, %ebp
	cmovbl	%ebx, %ebp
	movq	%r14, %rsi
	subq	%rax, %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	gs_type1_encrypt
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%ebp, %edx
	callq	stream_write
	subl	%ebp, %ebx
	jne	.LBB5_2
.LBB5_3:                                # %for.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	stream_write_encrypted, .Lfunc_end5-stream_write_encrypted
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	strip_othersubrs,@function
strip_othersubrs:                       # @strip_othersubrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp50:
	.cfi_def_cfa_offset 400
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movw	$4330, 342(%rsp)        # imm = 0x10EA
	movq	(%rdi), %rbp
	movl	8(%rdi), %edx
	leaq	(%rdx,%rbp), %r14
	testq	%rax, %rax
	leaq	64(%rsp), %r15
	cmovneq	%rax, %r15
	leaq	342(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	gs_type1_decrypt
	movl	512(%rbx), %r13d
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB6_1
# BB#10:
	movq	%r15, %rdi
	.align	16, 0x90
.LBB6_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB6_13
# BB#12:                                # %if.then.9
                                        #   in Loop: Header=BB6_11 Depth=1
	movb	(%rbp), %cl
	incq	%rbp
	movb	%cl, (%rdi)
	incq	%rdi
	movl	512(%rbx), %r13d
.LBB6_13:                               # %for.inc
                                        #   in Loop: Header=BB6_11 Depth=1
	incl	%eax
	cmpl	%r13d, %eax
	jl	.LBB6_11
	jmp	.LBB6_2
.LBB6_1:
	xorl	%r13d, %r13d
	movq	%r15, %rdi
.LBB6_2:                                # %while.cond.preheader
	movq	%r14, %rax
	cmpq	%rax, %rbp
	jae	.LBB6_144
# BB#3:                                 # %while.body.lr.ph
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movq	%rax, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB6_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_16 Depth 2
                                        #     Child Loop BB6_64 Depth 2
                                        #     Child Loop BB6_54 Depth 2
                                        #     Child Loop BB6_44 Depth 2
                                        #     Child Loop BB6_34 Depth 2
                                        #     Child Loop BB6_22 Depth 2
                                        #     Child Loop BB6_73 Depth 2
                                        #     Child Loop BB6_98 Depth 2
                                        #     Child Loop BB6_102 Depth 2
                                        #     Child Loop BB6_121 Depth 2
	movzbl	(%rbp), %eax
	cmpl	$31, %eax
	ja	.LBB6_141
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$10, %eax
	jne	.LBB6_6
# BB#93:                                # %sw.bb.194
                                        #   in Loop: Header=BB6_4 Depth=1
	testl	%r14d, %r14d
	je	.LBB6_94
# BB#95:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leal	-1(%r14), %edx
	movslq	%edx, %rax
	movslq	80(%rsp,%rax,4), %r15
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	testl	%eax, %eax
	je	.LBB6_120
# BB#96:                                # %if.then.205
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	imull	900(%rcx), %eax
	subl	%eax, %edx
	testl	%edx, %edx
	jle	.LBB6_101
# BB#97:                                # %for.body.221.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	%edx, %r14d
	movl	%edx, 4(%rsp)           # 4-byte Spill
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_98:                               # %for.body.221
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rcx
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_104
# BB#99:                                # %if.then.i.461
                                        #   in Loop: Header=BB6_98 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rcx)
	movl	$1, %eax
	jmp	.LBB6_111
	.align	16, 0x90
.LBB6_104:                              # %if.else.i.463
                                        #   in Loop: Header=BB6_98 Depth=2
	movq	%rcx, %r15
	leal	-108(%rbx), %r12d
	cmpl	$1023, %r12d            # imm = 0x3FF
	ja	.LBB6_107
# BB#105:                               # %if.then.7.i.472
                                        #   in Loop: Header=BB6_98 Depth=2
	cvtsi2sdl	%r12d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	%r15, %rcx
	movb	%al, (%rcx)
	movb	%r12b, 1(%rcx)
	movl	$2, %eax
	jmp	.LBB6_110
	.align	16, 0x90
.LBB6_107:                              # %if.else.16.i.474
                                        #   in Loop: Header=BB6_98 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_109
# BB#108:                               # %if.then.22.i.485
                                        #   in Loop: Header=BB6_98 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	%r15, %rcx
	movb	%al, (%rcx)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rcx)
	movl	$2, %eax
	jmp	.LBB6_110
.LBB6_109:                              # %if.else.38.i.497
                                        #   in Loop: Header=BB6_98 Depth=2
	movq	%r15, %rcx
	movb	$-1, (%rcx)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rcx)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rcx)
	movb	%bh, 3(%rcx)  # NOREX
	movb	%bl, 4(%rcx)
	movl	$5, %eax
.LBB6_110:                              # %WriteNumber.exit499
                                        #   in Loop: Header=BB6_98 Depth=2
	movq	40(%rsp), %r15          # 8-byte Reload
.LBB6_111:                              # %WriteNumber.exit499
                                        #   in Loop: Header=BB6_98 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rcx), %rdi
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmoveq	%rcx, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_98
# BB#100:                               # %for.cond.234.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpb	$0, (%rax,%r15)
	movl	4(%rsp), %edx           # 4-byte Reload
	je	.LBB6_119
.LBB6_101:                              # %for.body.240.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	movslq	%edx, %rax
	leaq	80(%rsp,%rax,4), %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_102:                              # %for.body.240
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rbp,4), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_112
# BB#103:                               # %if.then.i.503
                                        #   in Loop: Header=BB6_102 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_118
	.align	16, 0x90
.LBB6_112:                              # %if.else.i.505
                                        #   in Loop: Header=BB6_102 Depth=2
	movq	%rdi, %r14
	leal	-108(%rbx), %r12d
	cmpl	$1023, %r12d            # imm = 0x3FF
	ja	.LBB6_114
# BB#113:                               # %if.then.7.i.514
                                        #   in Loop: Header=BB6_102 Depth=2
	cvtsi2sdl	%r12d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	movq	%rcx, %rbx
	callq	floor
	movq	%rbx, %rcx
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	%r14, %rdi
	movb	%al, (%rdi)
	movb	%r12b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_118
	.align	16, 0x90
.LBB6_114:                              # %if.else.16.i.516
                                        #   in Loop: Header=BB6_102 Depth=2
	movq	%rcx, %r12
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_116
# BB#115:                               # %if.then.22.i.527
                                        #   in Loop: Header=BB6_102 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	%r14, %rdi
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_117
.LBB6_116:                              # %if.else.38.i.539
                                        #   in Loop: Header=BB6_102 Depth=2
	movq	%r14, %rdi
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
.LBB6_117:                              # %WriteNumber.exit541
                                        #   in Loop: Header=BB6_102 Depth=2
	movq	%r12, %rcx
.LBB6_118:                              # %WriteNumber.exit541
                                        #   in Loop: Header=BB6_102 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	incq	%rbp
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	cmpq	%rax, %rbp
	jl	.LBB6_102
.LBB6_119:                              # %for.end.253
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	incq	%rbp
	jmp	.LBB6_31
	.align	16, 0x90
.LBB6_141:                              # %if.else.307
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$246, %eax
	ja	.LBB6_147
# BB#142:                               # %if.then.311
                                        #   in Loop: Header=BB6_4 Depth=1
	incq	%rbp
	addl	$-139, %eax
	movslq	%r14d, %rcx
	incl	%r14d
	movl	%eax, 80(%rsp,%rcx,4)
	jmp	.LBB6_143
	.align	16, 0x90
.LBB6_6:                                # %if.then.18
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$12, %eax
	jne	.LBB6_7
# BB#14:                                # %sw.bb
                                        #   in Loop: Header=BB6_4 Depth=1
	movzbl	1(%rbp), %eax
	cmpl	$16, %eax
	jne	.LBB6_15
# BB#18:                                # %if.then.24
                                        #   in Loop: Header=BB6_4 Depth=1
	leal	-1(%r14), %eax
	cltq
	movl	80(%rsp,%rax,4), %eax
	addl	$-14, %eax
	cmpl	$4, %eax
	jbe	.LBB6_19
# BB#72:                                # %for.cond.141.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	leaq	80(%rsp), %rbp
	jle	.LBB6_81
	.align	16, 0x90
.LBB6_73:                               # %for.body.144
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_75
# BB#74:                                # %if.then.i.377
                                        #   in Loop: Header=BB6_73 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_80
	.align	16, 0x90
.LBB6_75:                               # %if.else.i.379
                                        #   in Loop: Header=BB6_73 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_77
# BB#76:                                # %if.then.7.i.388
                                        #   in Loop: Header=BB6_73 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_80
	.align	16, 0x90
.LBB6_77:                               # %if.else.16.i.390
                                        #   in Loop: Header=BB6_73 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_79
# BB#78:                                # %if.then.22.i.401
                                        #   in Loop: Header=BB6_73 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_80
.LBB6_79:                               # %if.else.38.i.413
                                        #   in Loop: Header=BB6_73 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_80:                               # %WriteNumber.exit415
                                        #   in Loop: Header=BB6_73 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_73
.LBB6_81:                               # %for.end.156
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB6_82
# BB#83:                                # %if.then.158
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB6_84
	.align	16, 0x90
.LBB6_147:                              # %if.else.318
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$250, %eax
	ja	.LBB6_149
# BB#148:                               # %if.then.322
                                        #   in Loop: Header=BB6_4 Depth=1
	shll	$8, %eax
	leal	-63124(%rax), %ecx
	movslq	%r14d, %rdx
	movl	%ecx, 80(%rsp,%rdx,4)
	movzbl	1(%rbp), %ecx
	addq	$2, %rbp
	incl	%r14d
	leal	-63124(%rcx,%rax), %eax
	movl	%eax, 80(%rsp,%rdx,4)
	jmp	.LBB6_143
.LBB6_7:                                # %for.cond.282.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	leaq	80(%rsp), %rbp
	jle	.LBB6_140
	.align	16, 0x90
.LBB6_8:                                # %for.body.285
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_134
# BB#9:                                 # %if.then.i.587
                                        #   in Loop: Header=BB6_8 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_139
	.align	16, 0x90
.LBB6_134:                              # %if.else.i.589
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rdi, %r12
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_136
# BB#135:                               # %if.then.7.i.598
                                        #   in Loop: Header=BB6_8 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_139
	.align	16, 0x90
.LBB6_136:                              # %if.else.16.i.600
                                        #   in Loop: Header=BB6_8 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_138
# BB#137:                               # %if.then.22.i.611
                                        #   in Loop: Header=BB6_8 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_139
.LBB6_138:                              # %if.else.38.i.623
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%r12, %rdi
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_139:                              # %WriteNumber.exit625
                                        #   in Loop: Header=BB6_8 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_8
.LBB6_140:                              # %for.end.297
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	jne	.LBB6_132
	jmp	.LBB6_133
.LBB6_149:                              # %if.else.336
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpl	$255, %eax
	je	.LBB6_151
# BB#150:                               # %if.then.340
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	$251, %ecx
	subl	%eax, %ecx
	shll	$8, %ecx
	addl	$-108, %ecx
	movslq	%r14d, %rax
	movl	%ecx, 80(%rsp,%rax,4)
	movzbl	1(%rbp), %edx
	addq	$2, %rbp
	leal	1(%rax), %r14d
	subl	%edx, %ecx
	movl	%ecx, 80(%rsp,%rax,4)
	jmp	.LBB6_143
.LBB6_94:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	jmp	.LBB6_129
.LBB6_15:                               # %for.cond.167.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	leaq	80(%rsp), %rbp
	jle	.LBB6_92
	.align	16, 0x90
.LBB6_16:                               # %for.body.170
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_86
# BB#17:                                # %if.then.i.419
                                        #   in Loop: Header=BB6_16 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_91
	.align	16, 0x90
.LBB6_86:                               # %if.else.i.421
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	%rdi, %r12
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_88
# BB#87:                                # %if.then.7.i.430
                                        #   in Loop: Header=BB6_16 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_91
	.align	16, 0x90
.LBB6_88:                               # %if.else.16.i.432
                                        #   in Loop: Header=BB6_16 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_90
# BB#89:                                # %if.then.22.i.443
                                        #   in Loop: Header=BB6_16 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_91
.LBB6_90:                               # %if.else.38.i.455
                                        #   in Loop: Header=BB6_16 Depth=2
	movq	%r12, %rdi
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_91:                               # %WriteNumber.exit457
                                        #   in Loop: Header=BB6_16 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_16
.LBB6_92:                               # %for.end.182
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB6_85
.LBB6_84:                               # %if.end.164
                                        #   in Loop: Header=BB6_4 Depth=1
	movb	(%rbp), %al
	movb	%al, (%rdi)
	movb	1(%rbp), %al
	movb	%al, 1(%rdi)
	addq	$2, %rdi
	jmp	.LBB6_85
.LBB6_120:                              # %for.cond.256.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	testl	%r14d, %r14d
	leaq	80(%rsp), %rbp
	jle	.LBB6_129
	.align	16, 0x90
.LBB6_121:                              # %for.body.259
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_123
# BB#122:                               # %if.then.i.545
                                        #   in Loop: Header=BB6_121 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_128
	.align	16, 0x90
.LBB6_123:                              # %if.else.i.547
                                        #   in Loop: Header=BB6_121 Depth=2
	movq	%rdi, %r12
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_125
# BB#124:                               # %if.then.7.i.556
                                        #   in Loop: Header=BB6_121 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_128
	.align	16, 0x90
.LBB6_125:                              # %if.else.16.i.558
                                        #   in Loop: Header=BB6_121 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_127
# BB#126:                               # %if.then.22.i.569
                                        #   in Loop: Header=BB6_121 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	%r12, %rdi
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_128
.LBB6_127:                              # %if.else.38.i.581
                                        #   in Loop: Header=BB6_121 Depth=2
	movq	%r12, %rdi
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_128:                              # %WriteNumber.exit583
                                        #   in Loop: Header=BB6_121 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_121
.LBB6_129:                              # %for.end.271
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB6_130
# BB#131:                               # %if.then.273
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_132:                              # %if.end.278
                                        #   in Loop: Header=BB6_4 Depth=1
	movb	(%rbp), %al
	movb	%al, (%rdi)
	incq	%rdi
	jmp	.LBB6_133
.LBB6_130:                              #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_133:                              # %if.end.278
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	24(%rsp), %rsi          # 8-byte Reload
	incq	%rbp
	incl	%r13d
	xorl	%r14d, %r14d
	jmp	.LBB6_143
.LBB6_151:                              # %if.else.354
                                        #   in Loop: Header=BB6_4 Depth=1
	movzbl	1(%rbp), %eax
	shll	$24, %eax
	movslq	%r14d, %rcx
	movl	%eax, 80(%rsp,%rcx,4)
	movzbl	2(%rbp), %edx
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 80(%rsp,%rcx,4)
	movzbl	3(%rbp), %eax
	shll	$8, %eax
	orl	%edx, %eax
	movl	%eax, 80(%rsp,%rcx,4)
	movzbl	4(%rbp), %edx
	addq	$5, %rbp
	incl	%r14d
	orl	%eax, %edx
	movl	%edx, 80(%rsp,%rcx,4)
	jmp	.LBB6_143
.LBB6_19:                               # %if.then.24
                                        #   in Loop: Header=BB6_4 Depth=1
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_20:                               # %sw.bb.25
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	incl	%r14d
	movq	16(%rsp), %rax          # 8-byte Reload
	subl	900(%rax), %r14d
	testl	%r14d, %r14d
	jle	.LBB6_30
# BB#21:                                # %for.body.32.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_22:                               # %for.body.32
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_24
# BB#23:                                # %if.then.i
                                        #   in Loop: Header=BB6_22 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_24:                               # %if.else.i
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_26
# BB#25:                                # %if.then.7.i
                                        #   in Loop: Header=BB6_22 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_26:                               # %if.else.16.i
                                        #   in Loop: Header=BB6_22 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_28
# BB#27:                                # %if.then.22.i
                                        #   in Loop: Header=BB6_22 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_29
.LBB6_28:                               # %if.else.38.i
                                        #   in Loop: Header=BB6_22 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_29:                               # %WriteNumber.exit
                                        #   in Loop: Header=BB6_22 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_22
	jmp	.LBB6_30
.LBB6_82:                               #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_85:                               # %if.end.164
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	$2, %rbp
	addl	$2, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB6_143
.LBB6_32:                               # %sw.bb.46
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	900(%rax), %eax
	addl	%eax, %eax
	addl	$2, %r14d
	subl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB6_30
# BB#33:                                # %for.body.55.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_34:                               # %for.body.55
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_36
# BB#35:                                # %if.then.i.209
                                        #   in Loop: Header=BB6_34 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_41
	.align	16, 0x90
.LBB6_36:                               # %if.else.i.211
                                        #   in Loop: Header=BB6_34 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_38
# BB#37:                                # %if.then.7.i.220
                                        #   in Loop: Header=BB6_34 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_41
	.align	16, 0x90
.LBB6_38:                               # %if.else.16.i.222
                                        #   in Loop: Header=BB6_34 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_40
# BB#39:                                # %if.then.22.i.233
                                        #   in Loop: Header=BB6_34 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_41
.LBB6_40:                               # %if.else.38.i.245
                                        #   in Loop: Header=BB6_34 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_41:                               # %WriteNumber.exit247
                                        #   in Loop: Header=BB6_34 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_34
	jmp	.LBB6_30
.LBB6_42:                               # %sw.bb.69
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	900(%rax), %eax
	imull	$-3, %eax, %ecx
	leal	3(%r14,%rcx), %ecx
	testl	%ecx, %ecx
	jle	.LBB6_30
# BB#43:                                # %for.body.79.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	addl	$3, %r14d
	leal	(%rax,%rax,2), %eax
	subl	%eax, %r14d
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_44:                               # %for.body.79
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_46
# BB#45:                                # %if.then.i.251
                                        #   in Loop: Header=BB6_44 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_51
	.align	16, 0x90
.LBB6_46:                               # %if.else.i.253
                                        #   in Loop: Header=BB6_44 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_48
# BB#47:                                # %if.then.7.i.262
                                        #   in Loop: Header=BB6_44 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_51
	.align	16, 0x90
.LBB6_48:                               # %if.else.16.i.264
                                        #   in Loop: Header=BB6_44 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_50
# BB#49:                                # %if.then.22.i.275
                                        #   in Loop: Header=BB6_44 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_51
.LBB6_50:                               # %if.else.38.i.287
                                        #   in Loop: Header=BB6_44 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_51:                               # %WriteNumber.exit289
                                        #   in Loop: Header=BB6_44 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_44
	jmp	.LBB6_30
.LBB6_52:                               # %sw.bb.93
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	900(%rax), %eax
	shll	$2, %eax
	addl	$4, %r14d
	subl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB6_30
# BB#53:                                # %for.body.103.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_54:                               # %for.body.103
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_56
# BB#55:                                # %if.then.i.293
                                        #   in Loop: Header=BB6_54 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_61
	.align	16, 0x90
.LBB6_56:                               # %if.else.i.295
                                        #   in Loop: Header=BB6_54 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_58
# BB#57:                                # %if.then.7.i.304
                                        #   in Loop: Header=BB6_54 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_61
	.align	16, 0x90
.LBB6_58:                               # %if.else.16.i.306
                                        #   in Loop: Header=BB6_54 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_60
# BB#59:                                # %if.then.22.i.317
                                        #   in Loop: Header=BB6_54 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_61
.LBB6_60:                               # %if.else.38.i.329
                                        #   in Loop: Header=BB6_54 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_61:                               # %WriteNumber.exit331
                                        #   in Loop: Header=BB6_54 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_54
	jmp	.LBB6_30
.LBB6_62:                               # %sw.bb.117
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	900(%rax), %eax
	imull	$-6, %eax, %ecx
	leal	6(%r14,%rcx), %ecx
	testl	%ecx, %ecx
	jle	.LBB6_30
# BB#63:                                # %for.body.127.lr.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	addl	$6, %r14d
	addl	%eax, %eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %r14d
	leaq	80(%rsp), %rbp
	.align	16, 0x90
.LBB6_64:                               # %for.body.127
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbp), %ebx
	leal	107(%rbx), %eax
	cmpl	$214, %eax
	ja	.LBB6_66
# BB#65:                                # %if.then.i.335
                                        #   in Loop: Header=BB6_64 Depth=2
	addl	$139, %ebx
	movb	%bl, (%rdi)
	movl	$1, %eax
	jmp	.LBB6_71
	.align	16, 0x90
.LBB6_66:                               # %if.else.i.337
                                        #   in Loop: Header=BB6_64 Depth=2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leal	-108(%rbx), %r15d
	cmpl	$1023, %r15d            # imm = 0x3FF
	ja	.LBB6_68
# BB#67:                                # %if.then.7.i.346
                                        #   in Loop: Header=BB6_64 Depth=2
	cvtsi2sdl	%r15d, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$247, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movb	%r15b, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_71
	.align	16, 0x90
.LBB6_68:                               # %if.else.16.i.348
                                        #   in Loop: Header=BB6_64 Depth=2
	leal	1131(%rbx), %eax
	cmpl	$1023, %eax             # imm = 0x3FF
	ja	.LBB6_70
# BB#69:                                # %if.then.22.i.359
                                        #   in Loop: Header=BB6_64 Depth=2
	leal	108(%rbx), %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	108(%rbx,%rax), %eax
	sarl	$8, %eax
	negl	%eax
	cvtsi2sdl	%eax, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	addl	$251, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	%al, (%rdi)
	movl	$-108, %eax
	subl	%ebx, %eax
	movb	%al, 1(%rdi)
	movl	$2, %eax
	jmp	.LBB6_71
.LBB6_70:                               # %if.else.38.i.371
                                        #   in Loop: Header=BB6_64 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movb	$-1, (%rdi)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 1(%rdi)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 2(%rdi)
	movb	%bh, 3(%rdi)  # NOREX
	movb	%bl, 4(%rdi)
	movl	$5, %eax
	.align	16, 0x90
.LBB6_71:                               # %WriteNumber.exit373
                                        #   in Loop: Header=BB6_64 Depth=2
	leal	(%r13,%rax), %r13d
	movl	%eax, %eax
	leaq	(%rax,%rdi), %rax
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	cmovneq	%rax, %rdi
	addq	$4, %rbp
	decl	%r14d
	jne	.LBB6_64
.LBB6_30:                               # %for.end.44
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	addq	$2, %rbp
.LBB6_31:                               # %while.cond.backedge
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%r14d, %r14d
	movq	24(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB6_143:                              # %while.cond.backedge
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	%rsi, %rbp
	jb	.LBB6_4
.LBB6_144:                              # %while.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rdi
	movw	$4330, 342(%rsp)        # imm = 0x10EA
	movl	8(%rax), %edx
	leaq	342(%rsp), %rcx
	movq	%rdi, %rsi
	callq	gs_type1_encrypt
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	je	.LBB6_146
# BB#145:                               # %if.then.386
	movw	$4330, 342(%rsp)        # imm = 0x10EA
	leaq	342(%rsp), %rcx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rdi, %rsi
	movl	%r13d, %edx
	callq	gs_type1_encrypt
.LBB6_146:                              # %if.end.388
	movl	%r13d, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	strip_othersubrs, .Lfunc_end6-strip_othersubrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_20
	.quad	.LBB6_32
	.quad	.LBB6_42
	.quad	.LBB6_52
	.quad	.LBB6_62

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" def\n"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%!FontType1-1.0: "
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n11 dict begin\n"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/FontInfo 5 dict dup begin"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Copyright"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Notice"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FamilyName"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FullName"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\nend readonly def\n"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/FontName "
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/FontMatrix [%g %g %g %g %g %g] readonly def\n"
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/FontBBox {%g %g %g %g} readonly def\n"
	.size	.L.str.11, 38

	.type	psf_write_type1_font.font_items,@object # @psf_write_type1_font.font_items
	.section	.rodata,"a",@progbits
	.align	16
psf_write_type1_font.font_items:
	.quad	.L.str.12
	.byte	2                       # 0x2
	.zero	1
	.short	128                     # 0x80
	.zero	4
	.quad	.L.str.13
	.byte	2                       # 0x2
	.zero	1
	.short	152                     # 0x98
	.zero	4
	.quad	.L.str.14
	.byte	4                       # 0x4
	.zero	1
	.short	156                     # 0x9c
	.zero	4
	.zero	16
	.size	psf_write_type1_font.font_items, 64

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"FontType"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"PaintType"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"StrokeWidth"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"currentdict end\n"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"currentfile eexec\n"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"****"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"dup/FontName get exch definefont pop\n"
	.size	.L.str.18, 38

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"mark "
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"currentfile closefile\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\n0000000000000000000000000000000000000000000000000000000000000000"
	.size	.L.str.21, 66

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\ncleartomark\n"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"/"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"()"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"()<>[]{}/% \n\r\t\b\f\004\033"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" cvn"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\n/%s "
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" def"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/Encoding "
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"StandardEncoding"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ISOLatin1Encoding"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"256 array\n"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"0 1 255 {1 index exch /.notdef put} for\n"
	.size	.L.str.33, 41

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"dup %d /"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	" put\n"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"readonly"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"/UniqueID %ld def\n"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"/XUID ["
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%ld "
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"] readonly def\n"
	.size	.L.str.40, 16

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dup /Private 17 dict dup begin\n"
	.size	.L.str.41, 32

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/-|{string currentfile exch readstring pop}executeonly def\n"
	.size	.L.str.42, 60

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/|-{noaccess def}executeonly def\n"
	.size	.L.str.43, 34

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/|{noaccess put}executeonly def\n"
	.size	.L.str.44, 33

	.type	write_Private.private_items,@object # @write_Private.private_items
	.section	.rodata,"a",@progbits
	.align	16
write_Private.private_items:
	.quad	.L.str.45
	.byte	2                       # 0x2
	.zero	1
	.short	96                      # 0x60
	.zero	4
	.quad	.L.str.46
	.byte	4                       # 0x4
	.zero	1
	.short	100                     # 0x64
	.zero	4
	.quad	.L.str.47
	.byte	4                       # 0x4
	.zero	1
	.short	104                     # 0x68
	.zero	4
	.quad	.L.str.48
	.byte	4                       # 0x4
	.zero	1
	.short	168                     # 0xa8
	.zero	4
	.quad	.L.str.49
	.byte	1                       # 0x1
	.zero	1
	.short	172                     # 0xac
	.zero	4
	.quad	.L.str.50
	.byte	2                       # 0x2
	.zero	1
	.short	280                     # 0x118
	.zero	4
	.quad	.L.str.51
	.byte	1                       # 0x1
	.zero	1
	.short	328                     # 0x148
	.zero	4
	.zero	16
	.size	write_Private.private_items, 128

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"BlueFuzz"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"BlueScale"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"BlueShift"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ExpansionFactor"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"ForceBold"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"LanguageGroup"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"RndStemUp"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"lenIV"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"BlueValues"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"OtherBlues"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"FamilyBlues"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"FamilyOtherBlues"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"StdHW"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"StdVW"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"StemSnapH"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"StemSnapV"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"/MinFeature{16 16} def\n"
	.size	.L.str.61, 24

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/password 5839 def\n"
	.size	.L.str.62, 20

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"write_Private(Subrs)"
	.size	.L.str.63, 21

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Subrs record"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/Subrs %d array\n"
	.size	.L.str.65, 17

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"free Subrs record"
	.size	.L.str.66, 18

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Subrs copy for OtherSubrs"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"dup %d %u -| "
	.size	.L.str.68, 14

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"free Subrs copy for OtherSubrs"
	.size	.L.str.69, 31

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	" |\n"
	.size	.L.str.70, 4

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"|-\n"
	.size	.L.str.71, 4

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"write_Private(CharStrings)"
	.size	.L.str.72, 27

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"2 index /CharStrings %d dict dup begin\n"
	.size	.L.str.73, 40

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"CharStrings copy for OtherSubrs"
	.size	.L.str.74, 32

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	" %d -| "
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"free CharStrings copy for OtherSubrs"
	.size	.L.str.76, 37

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	" |-\n"
	.size	.L.str.77, 5

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"end\nend\nreadonly put\nnoaccess put\n"
	.size	.L.str.78, 35

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	6                       # 0x6
	.size	.Lswitch.table, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
