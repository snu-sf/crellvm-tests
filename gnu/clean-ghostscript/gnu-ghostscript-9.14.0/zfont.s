	.text
	.file	"zfont.bc"
	.globl	zfont_mark_glyph_name
	.align	16, 0x90
	.type	zfont_mark_glyph_name,@function
zfont_mark_glyph_name:                  # @zfont_mark_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB0_2
# BB#1:                                 # %entry
	cmpq	%rsi, gs_c_min_std_encoding_glyph(%rip)
	jbe	.LBB0_2
# BB#3:                                 # %cond.false
	movq	192(%rdi), %rax
	movq	120(%rax), %rdi
	jmp	names_mark_index        # TAILCALL
.LBB0_2:                                # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	zfont_mark_glyph_name, .Lfunc_end0-zfont_mark_glyph_name
	.cfi_endproc

	.globl	zsetfont
	.align	16, 0x90
	.type	zsetfont,@function
zsetfont:                               # @zsetfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_6
# BB#1:                                 # %if.end.i
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_5
# BB#2:                                 # %lor.lhs.false.i
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB1_5
# BB#3:                                 # %if.end.12.i
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	.LBB1_5
# BB#4:                                 # %if.end.16.i
	movq	16(%r15), %rdi
	movq	72(%r15), %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB1_7
.LBB1_5:                                # %font_param.exit.thread
	movl	$-10, %eax
	jmp	.LBB1_9
.LBB1_6:                                # %font_param.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	testl	%eax, %eax
                                        # implicit-def: R15
	js	.LBB1_9
.LBB1_7:                                # %lor.lhs.false
	movq	(%r14), %rdi
	movq	%r15, %rsi
	callq	gs_setfont
	testl	%eax, %eax
	js	.LBB1_9
# BB#8:                                 # %if.end
	addq	$-16, 624(%r14)
.LBB1_9:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	zsetfont, .Lfunc_end1-zsetfont
	.cfi_endproc

	.globl	font_param
	.align	16, 0x90
	.type	font_param,@function
font_param:                             # @font_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB2_1
# BB#2:                                 # %if.end
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-10, %ebp
	testl	%eax, %eax
	jle	.LBB2_7
# BB#3:                                 # %lor.lhs.false
	movq	(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB2_7
# BB#4:                                 # %if.end.12
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	.LBB2_7
# BB#5:                                 # %if.end.16
	movq	16(%r15), %rdi
	movq	72(%r15), %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB2_7
# BB#6:                                 # %if.end.19
	movq	%r15, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB2_7
.LBB2_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB2_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	font_param, .Lfunc_end2-font_param
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentfont,@function
zcurrentfont:                           # @zcurrentfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	addq	$16, %rbx
	cmpq	640(%rdi), %rbx
	jbe	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB3_2:                                # %if.else
	movq	%rbx, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentfont
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zcurrentfont, .Lfunc_end3-zcurrentfont
	.cfi_endproc

	.align	16, 0x90
	.type	zmakefont,@function
zmakefont:                              # @zmakefont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB4_2
# BB#1:                                 # %if.end
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	make_font
.LBB4_2:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zmakefont, .Lfunc_end4-zmakefont
	.cfi_endproc

	.align	16, 0x90
	.type	zscalefont,@function
zscalefont:                             # @zscalefont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	24(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %if.end
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	leaq	(%rsp), %rdi
	movapd	%xmm0, %xmm1
	callq	gs_make_scaling
	testl	%eax, %eax
	js	.LBB5_3
# BB#2:                                 # %if.end.4
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	make_font
.LBB5_3:                                # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zscalefont, .Lfunc_end5-zscalefont
	.cfi_endproc

	.align	16, 0x90
	.type	zcachestatus,@function
zcachestatus:                           # @zcachestatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 64
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	8(%r14), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	gs_cachestatus
	leaq	112(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movl	$7, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	%rax, 624(%r14)
	movl	(%rsp), %eax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	movl	4(%rsp), %eax
	movq	%rax, 40(%rbx)
	movw	$2816, 32(%rbx)         # imm = 0xB00
	movl	8(%rsp), %eax
	movq	%rax, 56(%rbx)
	movw	$2816, 48(%rbx)         # imm = 0xB00
	movl	12(%rsp), %eax
	movq	%rax, 72(%rbx)
	movw	$2816, 64(%rbx)         # imm = 0xB00
	movl	16(%rsp), %eax
	movq	%rax, 88(%rbx)
	movw	$2816, 80(%rbx)         # imm = 0xB00
	movl	20(%rsp), %eax
	movq	%rax, 104(%rbx)
	movw	$2816, 96(%rbx)         # imm = 0xB00
	movl	24(%rsp), %eax
	movq	%rax, 120(%rbx)
	movw	$2816, 112(%rbx)        # imm = 0xB00
	xorl	%eax, %eax
.LBB6_3:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zcachestatus, .Lfunc_end6-zcachestatus
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcachelimit,@function
zsetcachelimit:                         # @zsetcachelimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -24
.Ltmp33:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB7_4
# BB#1:                                 # %if.end
	movl	$-15, %eax
	cmpl	$0, 12(%rbx)
	jne	.LBB7_3
# BB#2:                                 # %do.end
	movq	8(%r14), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	8(%rbx), %esi
	callq	gs_setcacheupper
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB7_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB7_4:                                # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	check_type_failed       # TAILCALL
.Lfunc_end7:
	.size	zsetcachelimit, .Lfunc_end7-zsetcachelimit
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcacheparams,@function
zsetcacheparams:                        # @zsetcacheparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r13, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB8_1
# BB#3:                                 # %if.end
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	8(%rdi), %r14
	movq	%r14, %rax
	shrq	$32, %rax
	movl	$-15, %eax
	jne	.LBB8_12
# BB#4:                                 # %do.end
	movzbl	-15(%rdi), %edx
	cmpl	$11, %edx
	jne	.LBB8_5
# BB#13:                                # %if.end.1
	movq	-8(%rdi), %r15
	cmpq	%rcx, %r15
	ja	.LBB8_12
# BB#14:                                # %do.end.1
	movzbl	-31(%rdi), %edx
	cmpl	$12, %edx
	je	.LBB8_10
# BB#15:                                # %do.end.1
	movzbl	%dl, %edx
	cmpl	$11, %edx
	jne	.LBB8_16
# BB#8:                                 # %if.end.2
	movq	-24(%rdi), %r12
	cmpq	%rcx, %r12
	ja	.LBB8_12
# BB#9:                                 # %sw.bb
	movq	(%rbx), %r13
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rsi
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	gs_setcachesize
	testl	%eax, %eax
	js	.LBB8_12
.LBB8_10:
	leaq	8(%rbx), %r12
	movq	(%r12), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%r15d, %esi
	callq	gs_setcachelower
	testl	%eax, %eax
	jns	.LBB8_11
	jmp	.LBB8_12
.LBB8_1:                                # %entry
	movzbl	%al, %eax
	cmpl	$12, %eax
	je	.LBB8_17
	jmp	.LBB8_2
.LBB8_5:                                # %do.end
	movzbl	%dl, %eax
	cmpl	$12, %eax
	jne	.LBB8_6
# BB#7:                                 # %for.end.sw.bb.35_crit_edge
	leaq	8(%rbx), %r12
.LBB8_11:                               # %sw.bb.35
	movq	(%r12), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%r14d, %esi
	callq	gs_setcacheupper
	testl	%eax, %eax
	js	.LBB8_12
.LBB8_17:                               # %sw.epilog
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	zcleartomark            # TAILCALL
.LBB8_12:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB8_6:
	addq	$-16, %rdi
	jmp	.LBB8_2
.LBB8_16:
	addq	$-32, %rdi
.LBB8_2:                                # %if.then
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	zsetcacheparams, .Lfunc_end8-zsetcacheparams
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcacheparams,@function
zcurrentcacheparams:                    # @zcurrentcacheparams
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
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 48
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rbp
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcachesize
	movl	%eax, %r14d
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcachelower
	movl	%eax, %r15d
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcacheupper
	leaq	64(%rbp), %rcx
	cmpq	640(%rbx), %rcx
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movl	$4, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	%rcx, 624(%rbx)
	movw	$3072, 16(%rbp)         # imm = 0xC00
	movl	%r14d, %ecx
	movq	%rcx, 40(%rbp)
	movw	$2816, 32(%rbp)         # imm = 0xB00
	movl	%r15d, %ecx
	movq	%rcx, 56(%rbp)
	movw	$2816, 48(%rbp)         # imm = 0xB00
	movl	%eax, %eax
	movq	%rax, 72(%rbp)
	movw	$2816, 64(%rbp)         # imm = 0xB00
	xorl	%eax, %eax
.LBB9_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	zcurrentcacheparams, .Lfunc_end9-zcurrentcacheparams
	.cfi_endproc

	.align	16, 0x90
	.type	zregisterfont,@function
zregisterfont:                          # @zregisterfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
.Ltmp59:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB10_6
# BB#1:                                 # %if.end.i
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB10_5
# BB#2:                                 # %lor.lhs.false.i
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB10_5
# BB#3:                                 # %if.end.12.i
	movq	8(%rax), %r15
	testq	%r15, %r15
	je	.LBB10_5
# BB#4:                                 # %if.end.16.i
	movq	16(%r15), %rdi
	movq	72(%r15), %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB10_7
.LBB10_5:                               # %font_param.exit.thread
	movl	$-10, %eax
	jmp	.LBB10_8
.LBB10_6:                               # %font_param.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	testl	%eax, %eax
                                        # implicit-def: R15
	js	.LBB10_8
.LBB10_7:                               # %if.end
	movl	$1, 32(%r15)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB10_8:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	zregisterfont, .Lfunc_end10-zregisterfont
	.cfi_endproc

	.align	16, 0x90
	.type	zsetupUnicodeDecoder,@function
zsetupUnicodeDecoder:                   # @zsetupUnicodeDecoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB11_4
# BB#1:                                 # %if.end
	movq	8(%r14), %rdi
	movl	$st_unicode_decoder, %esi
	movl	$.L.str.23, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB11_3
# BB#2:                                 # %if.end.6
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	movzwl	(%r15), %eax
	orl	76(%r14), %eax
	movw	%ax, (%r15)
	movq	8(%r14), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rax
	movq	%r15, 160(%rax)
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
.LBB11_3:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB11_4:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zsetupUnicodeDecoder, .Lfunc_end11-zsetupUnicodeDecoder
	.cfi_endproc

	.align	16, 0x90
	.type	zfont_init,@function
zfont_init:                             # @zfont_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -24
.Ltmp70:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movq	(%rax), %rdi
	movq	200(%rax), %rsi
	callq	gs_font_dir_alloc2
	movq	%rax, %r14
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	%r14, 168(%rax)
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	cmpq	$0, 168(%rax)
	je	.LBB12_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rax
	movq	$zfont_mark_glyph_name, 128(%rax)
	movq	8(%rbx), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rax
	movq	$zfont_global_glyph_code, 208(%rax)
	movq	8(%rbx), %rbx
	movq	%rbx, %rdi
	callq	gs_lib_ctx_get_interp_instance
	leaq	168(%rax), %rdx
	xorl	%esi, %esi
	movl	$.L.str.25, %ecx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_register_struct_root # TAILCALL
.LBB12_1:                               # %return
	movl	$-25, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	zfont_init, .Lfunc_end12-zfont_init
	.cfi_endproc

	.globl	add_FID
	.align	16, 0x90
	.type	add_FID,@function
add_FID:                                # @add_FID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 64
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rdx, 16(%rsp)
	movq	%rbx, %rdi
	callq	imemory_space
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	imemory_new_mask
	orl	%ebp, %eax
	orl	$96, %eax
	addl	$2560, %eax             # imm = 0xA00
	movw	%ax, 8(%rsp)
	testq	%r15, %r15
	je	.LBB13_2
# BB#1:                                 # %cond.true
	addq	$368, %r15              # imm = 0x170
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%r15, %rcx
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
.LBB13_3:                               # %cond.end
	callq	dict_put_string
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	add_FID, .Lfunc_end13-add_FID
	.cfi_endproc

	.globl	zbase_make_font
	.align	16, 0x90
	.type	zbase_make_font,@function
zbase_make_font:                        # @zbase_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
.Ltmp83:
	.cfi_offset %rbx, -32
.Ltmp84:
	.cfi_offset %r14, -24
.Ltmp85:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	callq	gs_base_make_font
	testl	%eax, %eax
	js	.LBB14_1
# BB#2:                                 # %if.end
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	zdefault_make_font      # TAILCALL
.LBB14_1:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	zbase_make_font, .Lfunc_end14-zbase_make_font
	.cfi_endproc

	.globl	zdefault_make_font
	.align	16, 0x90
	.type	zdefault_make_font,@function
zdefault_make_font:                     # @zdefault_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 192
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	(%rcx), %r15
	movq	16(%r15), %r13
	movq	72(%rsi), %rbx
	movq	%rbx, %rdi
	callq	dict_maxlength
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	dict_length
	movl	%eax, %r14d
	movl	$st_font_data, %esi
	movl	$.L.str.11, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB15_13
# BB#1:                                 # %if.end.5
	addl	$3, %r14d
	cmpl	%r14d, %ebp
	cmovael	%ebp, %r14d
	leaq	120(%rsp), %rdx
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	dict_alloc
	testl	%eax, %eax
	js	.LBB15_13
# BB#2:                                 # %lor.lhs.false
	leaq	120(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	dict_copy_entries
	testl	%eax, %eax
	js	.LBB15_13
# BB#3:                                 # %lor.lhs.false.10
	leaq	104(%rsp), %rsi
	movl	$112, %edx
	movl	$12, %ecx
	movl	$.L.str.12, %r8d
	movq	%r13, %rdi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB15_13
# BB#4:                                 # %if.end.14
	movq	112(%rsp), %rbp
	movq	%r13, %rdi
	callq	imemory_new_mask
	movl	$12, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	refset_null_new
	movups	104(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	$6, 84(%rsp)
	addq	$96, 88(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	16(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB15_7
# BB#6:                                 # %land.lhs.true.22
	leaq	24(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%r12, %rdi
	callq	gs_matrix_multiply
	testl	%eax, %eax
	jns	.LBB15_8
.LBB15_7:                               # %if.then.25
	movq	16(%r12), %rax
	movq	%rax, 64(%rsp)
	movups	(%r12), %xmm0
	movaps	%xmm0, 48(%rsp)
.LBB15_8:                               # %if.end.26
	leaq	80(%rsp), %rdi
	leaq	48(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rcx
	callq	write_matrix_in
	andb	$-17, 80(%rsp)
	movl	$6, 108(%rsp)
	leaq	80(%r15), %rsi
	leaq	104(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	write_matrix_in
	andb	$-17, 104(%rsp)
	leaq	120(%rsp), %rdi
	movl	$.L.str.14, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB15_13
# BB#9:                                 # %lor.lhs.false.41
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	64(%rax), %rax
	movq	72(%rax), %rdx
	leaq	120(%rsp), %rdi
	movl	$.L.str.15, %esi
	xorl	%ecx, %ecx
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB15_13
# BB#10:                                # %lor.lhs.false.47
	leaq	120(%rsp), %rdi
	leaq	80(%rsp), %rdx
	movl	$.L.str.13, %esi
	xorl	%ecx, %ecx
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB15_13
# BB#11:                                # %lor.lhs.false.51
	movq	%r15, 56(%rsp)
	movq	%r13, %rdi
	callq	imemory_space
	movl	%eax, %ebx
	movq	%r13, %rdi
	callq	imemory_new_mask
	orl	%ebx, %eax
	orl	$96, %eax
	addl	$2560, %eax             # imm = 0xA00
	movw	%ax, 48(%rsp)
	leaq	120(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.10, %esi
	xorl	%ecx, %ecx
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB15_13
# BB#12:                                # %if.end.56
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, 72(%r15)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	72(%rax), %rsi
	movl	$160, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movups	120(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movq	128(%rsp), %rax
	andw	$-17, (%rax)
	xorl	%eax, %eax
.LBB15_13:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zdefault_make_font, .Lfunc_end15-zdefault_make_font
	.cfi_endproc

	.globl	font_restore
	.align	16, 0x90
	.type	font_restore,@function
font_restore:                           # @font_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 48
.Ltmp104:
	.cfi_offset %rbx, -48
.Ltmp105:
	.cfi_offset %r12, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	callq	gs_save_any_memory
	movq	192(%rax), %rax
	movq	168(%rax), %r14
	testq	%r14, %r14
	je	.LBB16_25
.LBB16_1:                               # %otop
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
	movq	(%r14), %rbx
	jmp	.LBB16_2
	.align	16, 0x90
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=2
	movq	(%rbx), %rbx
.LBB16_2:                               # %otop
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB16_6
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB16_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	%rbx, %rdi
	callq	gs_purge_font
	testl	%eax, %eax
	jns	.LBB16_1
	jmp	.LBB16_26
	.align	16, 0x90
.LBB16_6:                               # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
	movq	8(%r14), %rbx
	jmp	.LBB16_7
	.align	16, 0x90
.LBB16_10:                              # %for.inc.21
                                        #   in Loop: Header=BB16_7 Depth=2
	movq	(%rbx), %rbx
.LBB16_7:                               # %top
                                        #   Parent Loop BB16_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	je	.LBB16_11
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB16_7 Depth=2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB16_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB16_6 Depth=1
	movq	%rbx, %rdi
	callq	gs_purge_font
	testl	%eax, %eax
	jns	.LBB16_6
	jmp	.LBB16_26
.LBB16_11:                              # %cleanup.cont.26
	movl	28(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB16_23
# BB#12:                                # %for.body.30.lr.ph
	movq	32(%r14), %rbx
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB16_13:                              # %for.body.30
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_14
# BB#15:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	%r15, %rsi
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB16_19
# BB#16:                                # %if.then.40
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpq	%r12, 8(%rbx)
	jne	.LBB16_18
# BB#17:                                # %if.then.44
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_clean_fm_pair
.LBB16_18:                              # %if.end.45
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	$0, (%rbx)
	jmp	.LBB16_19
	.align	16, 0x90
.LBB16_14:                              # %land.lhs.true
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpq	%r12, 8(%rbx)
	je	.LBB16_22
.LBB16_19:                              # %if.end.47
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_22
# BB#20:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	%r15, %rsi
	callq	alloc_is_since_save
	testl	%eax, %eax
	je	.LBB16_22
# BB#21:                                # %if.then.53
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_purge_fm_pair
	testl	%eax, %eax
	js	.LBB16_26
.LBB16_22:                              # %for.inc.60
                                        #   in Loop: Header=BB16_13 Depth=1
	addq	$112, %rbx
	decl	%ebp
	jne	.LBB16_13
.LBB16_23:                              # %cleanup.cont.65
	movq	%r15, %rdi
	callq	alloc_any_names_since_save
	testl	%eax, %eax
	je	.LBB16_25
# BB#24:                                # %if.then.68
	movl	$purge_if_name_removed, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gx_purge_selected_cached_chars
.LBB16_25:                              # %cleanup.70
	xorl	%eax, %eax
.LBB16_26:                              # %cleanup.70
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	font_restore, .Lfunc_end16-font_restore
	.cfi_endproc

	.align	16, 0x90
	.type	purge_if_name_removed,@function
purge_if_name_removed:                  # @purge_if_name_removed
	.cfi_startproc
# BB#0:                                 # %entry
	movl	40(%rsi), %esi
	jmp	alloc_name_index_is_since_save # TAILCALL
.Lfunc_end17:
	.size	purge_if_name_removed, .Lfunc_end17-purge_if_name_removed
	.cfi_endproc

	.globl	zfont_info
	.align	16, 0x90
	.type	zfont_info,@function
zfont_info:                             # @zfont_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 64
.Ltmp114:
	.cfi_offset %rbx, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rdi, %rbp
	andl	$-12481, %edx           # imm = 0xFFFFFFFFFFFFCF3F
	callq	gs_default_font_info
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_22
# BB#1:                                 # %if.end
	movq	72(%rbp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.16, %esi
	callq	dict_find_string
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB18_23
# BB#2:                                 # %lor.lhs.false
	movq	8(%rsp), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB18_23
# BB#3:                                 # %if.end.6
	testb	$64, %bl
	je	.LBB18_7
# BB#4:                                 # %land.lhs.true
	leaq	16(%rsp), %rdx
	movl	$.L.str.17, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_7
# BB#5:                                 # %land.lhs.true.i
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB18_7
# BB#6:                                 # %if.then.10
	movq	8(%rax), %rcx
	movq	%rcx, 88(%r14)
	movl	4(%rax), %eax
	movl	%eax, 96(%r14)
	orb	$64, (%r14)
.LBB18_7:                               # %if.end.12
	testb	$-128, %bl
	je	.LBB18_11
# BB#8:                                 # %land.lhs.true.15
	movq	8(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_11
# BB#9:                                 # %land.lhs.true.i.26
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB18_11
# BB#10:                                # %if.then.18
	movq	8(%rax), %rcx
	movq	%rcx, 104(%r14)
	movl	4(%rax), %eax
	movl	%eax, 112(%r14)
	orb	$-128, (%r14)
.LBB18_11:                              # %if.end.21
	testb	$16, %bh
	je	.LBB18_15
# BB#12:                                # %land.lhs.true.24
	movq	8(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.19, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_15
# BB#13:                                # %land.lhs.true.i.37
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB18_15
# BB#14:                                # %if.then.27
	movq	8(%rax), %rcx
	movq	%rcx, 120(%r14)
	movl	4(%rax), %eax
	movl	%eax, 128(%r14)
	orb	$16, 1(%r14)
.LBB18_15:                              # %if.end.30
	testb	$32, %bh
	je	.LBB18_19
# BB#16:                                # %land.lhs.true.33
	movq	8(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_19
# BB#17:                                # %land.lhs.true.i.48
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB18_19
# BB#18:                                # %if.then.36
	movq	8(%rax), %rcx
	movq	%rcx, 136(%r14)
	movl	4(%rax), %eax
	movl	%eax, 144(%r14)
	orb	$32, 1(%r14)
.LBB18_19:                              # %if.end.39
	testb	$64, %bh
	je	.LBB18_22
# BB#20:                                # %land.lhs.true.42
	movq	8(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.21, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_22
# BB#21:                                # %if.then.46
	movq	(%rsp), %rax
	movl	8(%rax), %eax
	movl	%eax, 152(%r14)
	orb	$64, 1(%r14)
.LBB18_22:                              # %cleanup
	movl	%r15d, %eax
.LBB18_23:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	zfont_info, .Lfunc_end18-zfont_info
	.cfi_endproc

	.globl	zfont_get_to_unicode_map
	.align	16, 0x90
	.type	zfont_get_to_unicode_map,@function
zfont_get_to_unicode_map:               # @zfont_get_to_unicode_map
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rax
	retq
.Lfunc_end19:
	.size	zfont_get_to_unicode_map, .Lfunc_end19-zfont_get_to_unicode_map
	.cfi_endproc

	.align	16, 0x90
	.type	make_font,@function
make_font:                              # @make_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 96
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	$0, 24(%rsp)
	movzbl	-15(%rbx), %eax
	addq	$-16, %rbx
	cmpl	$2, %eax
	jne	.LBB20_6
# BB#1:                                 # %if.end.i
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_5
# BB#2:                                 # %lor.lhs.false.i
	movq	(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB20_5
# BB#3:                                 # %if.end.12.i
	movq	8(%rax), %r12
	testq	%r12, %r12
	je	.LBB20_5
# BB#4:                                 # %if.end.16.i
	movq	16(%r12), %rdi
	movq	72(%r12), %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB20_7
.LBB20_5:                               # %font_param.exit.thread
	movl	$-10, %ebp
	jmp	.LBB20_16
.LBB20_6:                               # %font_param.exit
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	testl	%ebp, %ebp
                                        # implicit-def: R12
	js	.LBB20_16
.LBB20_7:                               # %if.end
	leaq	8(%r14), %r13
	movl	56(%r14), %ebp
	movzwl	(%rbx), %esi
	andl	$12, %esi
	movq	%r13, %rdi
	callq	ialloc_set_space
	leaq	24(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_10
# BB#8:                                 # %land.lhs.true
	movq	24(%rsp), %rax
	movzwl	(%rax), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB20_9
.LBB20_10:                              # %if.end.19
	movq	72(%r12), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, (%rsp)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movq	(%r13), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	leaq	32(%rsp), %rcx
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	gs_makefont
	movl	%ebp, %esi
	movl	%eax, %ebp
	movq	72(%r12), %rax
	movaps	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movq	%r13, %rdi
	callq	ialloc_set_space
	testl	%ebp, %ebp
	js	.LBB20_16
# BB#11:                                # %if.end.24
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB20_15
# BB#12:                                # %land.lhs.true.27
	movq	(%r13), %rdi
	movq	32(%rsp), %rax
	movq	72(%rax), %rdx
	addq	$48, %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB20_15
# BB#13:                                # %if.then.32
	movq	32(%rsp), %rdi
	movl	$-15, %ebp
	cmpl	$0, 128(%rdi)
	je	.LBB20_16
# BB#14:                                # %if.end.36
	movq	72(%rdi), %rax
	movq	24(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 48(%rax)
	callq	lookup_gs_simple_font_encoding
.LBB20_15:                              # %if.end.39
	movq	32(%rsp), %rax
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	addq	$-16, 624(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB20_16
.LBB20_9:                               # %if.end.19.thread
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	ialloc_set_space
	movl	$-10, %ebp
.LBB20_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	make_font, .Lfunc_end20-make_font
	.cfi_endproc

	.align	16, 0x90
	.type	unicode_decoder_clear_marks,@function
unicode_decoder_clear_marks:            # @unicode_decoder_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, (%rsi)
	retq
.Lfunc_end21:
	.size	unicode_decoder_clear_marks, .Lfunc_end21-unicode_decoder_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	unicode_decoder_enum_ptrs,@function
unicode_decoder_enum_ptrs:              # @unicode_decoder_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB22_2
# BB#1:                                 # %sw.bb
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
.LBB22_2:                               # %cleanup
	retq
.Lfunc_end22:
	.size	unicode_decoder_enum_ptrs, .Lfunc_end22-unicode_decoder_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	unicode_decoder_reloc_ptrs,@function
unicode_decoder_reloc_ptrs:             # @unicode_decoder_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rcx), %rax
	leaq	16(%rbx), %rsi
	movq	%rcx, %rdx
	callq	*40(%rax)
	andb	$-2, (%rbx)
	popq	%rbx
	retq
.Lfunc_end23:
	.size	unicode_decoder_reloc_ptrs, .Lfunc_end23-unicode_decoder_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	zfont_global_glyph_code,@function
zfont_global_glyph_code:                # @zfont_global_glyph_code
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 48
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	movq	(%rsi), %rax
	movl	8(%rsi), %edx
	leaq	8(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rsi
	callq	names_ref
	testl	%eax, %eax
	js	.LBB24_2
# BB#1:                                 # %if.end
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rsi
	callq	names_index
	movl	%eax, %eax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB24_2:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	zfont_global_glyph_code, .Lfunc_end24-zfont_global_glyph_code
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0currentfont"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2makefont"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2scalefont"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1setfont"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0cachestatus"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1setcachelimit"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1setcacheparams"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0currentcacheparams"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.registerfont"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.setupUnicodeDecoder"
	.size	.L.str.9, 22

	.type	zfont_op_defs,@object   # @zfont_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont_op_defs
	.align	16
zfont_op_defs:
	.quad	.L.str
	.quad	zcurrentfont
	.quad	.L.str.1
	.quad	zmakefont
	.quad	.L.str.2
	.quad	zscalefont
	.quad	.L.str.3
	.quad	zsetfont
	.quad	.L.str.4
	.quad	zcachestatus
	.quad	.L.str.5
	.quad	zsetcachelimit
	.quad	.L.str.6
	.quad	zsetcacheparams
	.quad	.L.str.7
	.quad	zcurrentcacheparams
	.quad	.L.str.8
	.quad	zregisterfont
	.quad	.L.str.9
	.quad	zsetupUnicodeDecoder
	.quad	0
	.quad	zfont_init
	.size	zfont_op_defs, 176

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"FID"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"make_font(font_data)"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"make_font(matrices)"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ScaleMatrix"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"FontMatrix"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"OrigFont"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"FontInfo"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Copyright"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Notice"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FamilyName"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FullName"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FSType"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Encoding"
	.size	.L.str.22, 9

	.type	st_unicode_decoder,@object # @st_unicode_decoder
	.section	.rodata,"a",@progbits
	.align	8
st_unicode_decoder:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.24
	.quad	0
	.quad	unicode_decoder_clear_marks
	.quad	unicode_decoder_enum_ptrs
	.quad	unicode_decoder_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_unicode_decoder, 64

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"setup_unicode_decoder"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"unicode_decoder"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ifont_dir"
	.size	.L.str.25, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
