	.text
	.file	"fapi_ft.bc"
	.globl	gs_fapi_ft_init
	.align	16, 0x90
	.type	gs_fapi_ft_init,@function
gs_fapi_ft_init:                        # @gs_fapi_ft_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rax
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdi
	movq	%rax, %rsi
	callq	gs_memory_chunk_wrap
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_3
# BB#1:                                 # %if.end
	movq	8(%rsp), %rdi
	movl	$656, %esi              # imm = 0x290
	movl	$.L.str, %edx
	callq	*8(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#2:                                 # %if.end.3
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rdi
	callq	memset
	movq	8(%rsp), %rax
	movq	%rax, 608(%rbx)
	movl	$freetypeserver, %esi
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, %rax
	addq	$624, %rax              # imm = 0x270
	movq	%rax, 616(%rbx)
	movq	%rbx, (%r14)
.LBB0_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_fapi_ft_init, .Lfunc_end0-gs_fapi_ft_init
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_ensure_open,@function
gs_fapi_ft_ensure_open:                 # @gs_fapi_ft_ensure_open
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
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpq	$0, 584(%rbx)
	jne	.LBB1_4
# BB#1:                                 # %if.then
	leaq	584(%rbx), %r14
	movq	608(%rbx), %rax
	movq	616(%rbx), %rdi
	movq	%rax, (%rdi)
	movq	$FF_alloc, 8(%rdi)
	movq	$FF_free, 16(%rdi)
	movq	$FF_realloc, 24(%rdi)
	movq	%r14, %rsi
	callq	FT_New_Library
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB1_2
# BB#3:                                 # %cleanup
	movq	608(%rbx), %rax
	movq	616(%rbx), %rsi
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	cmpl	$64, %r15d
	movl	$-25, %eax
	movl	$-1, %ebp
	cmovel	%eax, %ebp
	jmp	.LBB1_4
.LBB1_2:                                # %cleanup.thread
	movq	(%r14), %rdi
	callq	FT_Add_Default_Modules
.LBB1_4:                                # %cleanup.18
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_fapi_ft_ensure_open, .Lfunc_end1-gs_fapi_ft_ensure_open
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4679240012837945344     # double 65536
.LCPI2_2:
	.quad	4621819117588971520     # double 10
.LCPI2_3:
	.quad	4621828124788226261     # double 10.016
.LCPI2_4:
	.quad	4630184202053091328     # double 35.4375
.LCPI2_5:
	.quad	4630474473122824192     # double 37.5
.LCPI2_6:
	.quad	4607182418800017408     # double 1
.LCPI2_7:
	.quad	4675299363163996160     # double 36864
.LCPI2_8:
	.quad	4608308318706860032     # double 1.25
.LCPI2_9:
	.quad	4535124824762089472     # double 1.52587890625E-5
.LCPI2_10:
	.quad	4634204016564240384     # double 64
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_1:
	.quad	4535124824762089472     # double 1.525879e-05
	.quad	4535124824762089472     # double 1.525879e-05
	.text
	.align	16, 0x90
	.type	gs_fapi_ft_get_scaled_font,@function
gs_fapi_ft_get_scaled_font:             # @gs_fapi_ft_get_scaled_font
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
	subq	$200, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 256
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
	movl	%r8d, %ebp
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %r13
	movq	600(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	584(%r15), %rdi
	addq	$48, %rsi
	callq	FT_Bitmap_Done
	movq	600(%r15), %rsi
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 600(%r15)
.LBB2_2:                                # %if.end
	movq	592(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB2_4
# BB#3:                                 # %if.then.5
	movq	584(%r15), %rdi
	addq	$40, %rsi
	callq	FT_Outline_Done
	movq	592(%r15), %rsi
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 592(%r15)
.LBB2_4:                                # %if.end.12
	cmpl	$0, 52(%r14)
	je	.LBB2_8
# BB#5:                                 # %land.lhs.true
	cmpl	$0, 48(%r14)
	je	.LBB2_8
# BB#6:                                 # %land.lhs.true.15
	andl	$-2, %ebp
	cmpl	$-4, %ebp
	jne	.LBB2_8
# BB#7:                                 # %land.lhs.true.15
	movq	24(%r14), %rax
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB2_166
.LBB2_8:                                # %if.end.20
	testq	%r13, %r13
	jne	.LBB2_19
# BB#9:                                 # %if.then.22
	movq	$0, 144(%rsp)
	cmpq	$0, 32(%r14)
	je	.LBB2_27
# BB#10:                                # %if.then.24
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	40(%r14), %esi
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB2_166
# BB#11:                                # %if.end.32
	movl	40(%r14), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	32(%r14), %rsi
	movslq	%eax, %rbx
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	584(%r15), %rdi
	movslq	44(%r14), %rcx
	leaq	144(%rsp), %r8
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	FT_New_Memory_Face
	movq	144(%rsp), %rbp
	testl	%eax, %eax
	jne	.LBB2_12
# BB#13:                                # %if.end.32
	testq	%rbp, %rbp
	je	.LBB2_12
# BB#14:                                # %if.then.44
	movl	$1970170211, %esi       # imm = 0x756E6963
	movq	%rbp, %rdi
	callq	FT_Select_Charmap
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB2_15
.LBB2_27:                               # %if.else
	cmpq	$0, 24(%r14)
	je	.LBB2_50
# BB#28:                                # %if.then.49
	leaq	64(%rsp), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	616(%r15), %rax
	movq	(%rax), %r13
	movq	24(%r14), %rbp
	movq	$0, 160(%rsp)
	movq	%rbp, %rdi
	callq	strlen
	leaq	168(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	movq	%r13, %rcx
	callq	gs_parse_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_40
# BB#29:                                # %if.end.i
	movq	184(%rsp), %rsi
	movl	$-22, %ebp
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB2_40
# BB#30:                                # %if.end.5.i
	movq	176(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB2_33
# BB#31:                                # %if.end.11.i
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gs_getiodevice
	movq	%rax, 176(%rsp)
	testq	%rax, %rax
	je	.LBB2_37
# BB#32:                                # %if.end.11.if.then.14_crit_edge.i
	movq	184(%rsp), %rsi
.LBB2_33:                               # %if.then.14.i
	movq	32(%rax), %rbx
	testq	%rbx, %rbx
	movl	192(%rsp), %ebp
	je	.LBB2_35
# BB#34:                                # %if.then.19.i
	leaq	160(%rsp), %r8
	movl	$.L.str.9, %ecx
	movq	%rax, %rdi
	movl	%ebp, %edx
	movq	%r13, %r9
	callq	*%rbx
	jmp	.LBB2_36
.LBB2_12:
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB2_16
.LBB2_50:                               # %if.else.70
	movl	$1, 64(%rsp)
	cmpl	$0, 48(%r14)
	je	.LBB2_70
# BB#51:                                # %if.then.74
	movl	$8, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	*192(%r14)
	movl	$1, 8(%r14)
	movzwl	%ax, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	cmpl	$1, %ebx
	jne	.LBB2_53
# BB#52:                                # %if.then.79
	callq	gs_fapi_serialize_type1_font
	jmp	.LBB2_54
.LBB2_70:                               # %if.else.113
	movl	$32, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	*200(%r14)
	movq	%rax, %rbx
	movq	%rbx, 80(%rsp)
	movl	$-10, %ebp
	testq	%rbx, %rbx
	je	.LBB2_166
# BB#71:                                # %if.end.120
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, 72(%rsp)
	testq	%rax, %rax
	je	.LBB2_67
# BB#72:                                # %if.end.127
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rax, %r13
	movl	%ebx, %edx
	callq	*264(%r14)
	testw	%ax, %ax
	jne	.LBB2_166
# BB#73:                                # %if.end.135
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$16, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_74
# BB#75:                                # %if.then.i.174
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$80, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB2_77
# BB#76:                                # %if.then.i.i.181
	movq	%r14, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rcx, 64(%rax)
	movl	$0, 72(%rax)
.LBB2_77:                               # %new_inc_int_info.exit.i.184
	movq	%rax, 8(%rbx)
	movq	$TheFAPIIncrementalInterfaceFuncs, (%rbx)
	jmp	.LBB2_78
.LBB2_53:                               # %if.else.81
	callq	gs_fapi_serialize_type2_font
.LBB2_54:                               # %if.end.83
	movq	%rax, %r13
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB2_166
# BB#55:                                # %if.end.89
	movq	%r14, %rdi
	cmpl	$1, %ebx
	jne	.LBB2_57
# BB#56:                                # %if.then.93
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	gs_fapi_serialize_type1_font
	jmp	.LBB2_58
.LBB2_35:                               # %if.else.i
	movl	file_default_buffer_size(%rip), %ecx
	movq	40(%rax), %rdx
	movq	%r13, 8(%rsp)
	movq	%rdx, (%rsp)
	leaq	160(%rsp), %r8
	movl	$.L.str.9, %edx
	movq	%rsi, %rdi
	movl	%ebp, %esi
	movq	%rax, %r9
	callq	file_open_stream
.LBB2_36:                               # %if.else.i
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB2_40
.LBB2_37:                               # %if.end.38.i
	movq	160(%rsp), %rdi
	leaq	152(%rsp), %rsi
	callq	savailable
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	js	.LBB2_40
# BB#38:                                # %if.end.43.i
	movq	200(%r13), %rdi
	movl	$80, %esi
	movl	$1, %edx
	movl	$.L.str.10, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_39
# BB#167:                               # %error_out.i
	xorl	%esi, %esi
	movl	$80, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	160(%rsp), %rax
	movq	%rax, 24(%rbx)
	movq	$FF_stream_read, 40(%rbx)
	movq	$FF_stream_close, 48(%rbx)
	movq	152(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	%rbx, %rax
	jmp	.LBB2_45
.LBB2_57:                               # %if.else.95
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	callq	gs_fapi_serialize_type2_font
.LBB2_58:                               # %if.end.98
	movq	%rax, 80(%rsp)
	movl	$-28, %ebp
	cmpq	%r13, %rax
	jne	.LBB2_166
# BB#59:                                # %if.end.103
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$16, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_60
# BB#61:                                # %if.then.i
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$80, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB2_63
# BB#62:                                # %if.then.i.i
	movq	%r14, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movl	$0, 24(%rax)
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rcx, 64(%rax)
	movl	$0, 72(%rax)
.LBB2_63:                               # %new_inc_int_info.exit.i
	movq	%rax, 8(%rbx)
	movq	$TheFAPIIncrementalInterfaceFuncs, (%rbx)
	jmp	.LBB2_64
.LBB2_39:
	movl	$-25, %ebp
.LBB2_40:                               # %if.then.53.i
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_42
# BB#41:                                # %if.then.55.i
	callq	sclose
.LBB2_42:                               # %if.end.57.i
	testq	%rbx, %rbx
	je	.LBB2_44
# BB#43:                                # %if.then.59.i
	movq	200(%r13), %rdi
	movl	$.L.str.10, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB2_44:                               # %FF_open_read_stream.exit
	xorl	%eax, %eax
.LBB2_45:                               # %FF_open_read_stream.exit
	testl	%ebp, %ebp
	js	.LBB2_166
# BB#46:                                # %if.end.58
	movl	$2, 64(%rsp)
	movq	%rax, 96(%rsp)
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	584(%r15), %rdi
	movslq	44(%r14), %rdx
	leaq	64(%rsp), %rsi
	leaq	144(%rsp), %rcx
	callq	FT_Open_Face
	testl	%eax, %eax
	jne	.LBB2_49
# BB#47:                                # %if.end.58
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_49
# BB#48:                                # %if.then.66
	movl	$1970170211, %esi       # imm = 0x756E6963
	callq	FT_Select_Charmap
.LBB2_49:                               # %cleanup.thread
	movl	$-1, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB2_15:                               # %if.end.155thread-pre-split
	movq	144(%rsp), %rbp
.LBB2_16:                               # %if.end.155
	testq	%rbp, %rbp
	je	.LBB2_83
# BB#17:                                # %if.then.157
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r13, %rbx
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$104, %esi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB2_79
# BB#18:                                # %new_face.exit.thread
	movq	%rbp, (%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 64(%r13)
	movq	%rbx, 80(%r13)
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, 88(%r13)
	movl	$1, 92(%r13)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 72(%r13)
	movq	%r15, 96(%r13)
	movq	%r13, (%r14)
.LBB2_19:                               # %if.then.178
	movslq	(%r12), %rax
	movq	%rax, 8(%r13)
	movslq	8(%r12), %rcx
	movq	%rcx, 16(%r13)
	movslq	4(%r12), %rdx
	movq	%rdx, 24(%r13)
	movslq	12(%r12), %rdx
	movq	%rdx, 32(%r13)
	movl	24(%r12), %edx
	sarl	$16, %edx
	movl	%edx, 56(%r13)
	movl	28(%r12), %edx
	sarl	$16, %edx
	movl	%edx, 60(%r13)
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB2_21
# BB#20:                                # %call.sqrt
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB2_21:                               # %if.then.178.split
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	leaq	56(%r13), %rbp
	leaq	60(%r13), %rbx
	xorps	%xmm1, %xmm1
	cvtsi2sdq	24(%r13), %xmm1
	mulsd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	32(%r13), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	sqrt
	movapd	%xmm0, %xmm5
	ucomisd	%xmm5, %xmm5
	jnp	.LBB2_23
# BB#22:                                # %call.sqrt398
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movapd	%xmm0, %xmm5
.LBB2_23:                               # %if.then.178.split.split
	leaq	8(%r13), %r15
	movl	(%rbp), %r12d
	movl	(%rbx), %eax
	cmpl	%eax, %r12d
	je	.LBB2_25
# BB#24:                                # %if.then.i.217
	movl	%r12d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	cmovbl	%eax, %r12d
	movl	%r12d, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 64(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 72(%rsp)
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	movq	%rax, 88(%rsp)
	cmovaeq	%rbp, %rbx
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	movapd	%xmm5, 48(%rsp)         # 16-byte Spill
	callq	FT_Matrix_Multiply
	movapd	48(%rsp), %xmm5         # 16-byte Reload
	movl	(%rbx), %r12d
.LBB2_25:                               # %if.end.46.i
	movapd	32(%rsp), %xmm3         # 16-byte Reload
	cvttsd2si	%xmm3, %ecx
	cvttsd2si	%xmm5, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	cmpl	$513, %eax              # imm = 0x201
	jl	.LBB2_84
# BB#26:                                # %lor.end.thread.i
	movsd	.LCPI2_9(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm5
	jmp	.LBB2_85
.LBB2_84:                               # %lor.end.i
	movl	%esi, %eax
	cltd
	idivl	%ecx
	unpcklpd	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0]
	mulpd	.LCPI2_1(%rip), %xmm5
	movapd	%xmm5, %xmm3
	shufpd	$1, %xmm3, %xmm3        # xmm3 = xmm3[1,0]
	cmpl	$513, %eax              # imm = 0x201
	jl	.LBB2_108
.LBB2_85:                               # %if.then.60.i
	movsd	.LCPI2_3(%rip), %xmm11  # xmm11 = mem[0],zero
	movapd	%xmm11, %xmm0
	divsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm0
	movapd	%xmm5, %xmm1
	cmpltsd	.LCPI2_2(%rip), %xmm1
	movapd	%xmm1, %xmm2
	andnpd	%xmm5, %xmm2
	andpd	%xmm0, %xmm1
	orpd	%xmm2, %xmm1
	movl	%r12d, %eax
	cvtsi2sdq	%rax, %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	.LCPI2_5(%rip), %xmm4   # xmm4 = mem[0],zero
	movapd	%xmm4, %xmm0
	divsd	%xmm5, %xmm0
	mulsd	%xmm1, %xmm0
	cmpltsd	.LCPI2_4(%rip), %xmm5
	movapd	%xmm5, %xmm2
	andnpd	%xmm1, %xmm2
	andpd	%xmm0, %xmm5
	orpd	%xmm2, %xmm5
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm10, %xmm10
	ucomisd	%xmm10, %xmm5
	jbe	.LBB2_86
# BB#89:                                # %if.then.60.i
	testl	%r12d, %r12d
	je	.LBB2_86
# BB#90:                                # %if.then.60.i
	movapd	%xmm6, %xmm1
	mulsd	%xmm5, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	jbe	.LBB2_86
# BB#91:
	movsd	.LCPI2_8(%rip), %xmm8   # xmm8 = mem[0],zero
	xorps	%xmm9, %xmm9
	movapd	%xmm6, %xmm2
	movl	%r12d, %eax
	movapd	%xmm0, %xmm1
	jmp	.LBB2_92
.LBB2_96:                               # %if.else.90.i
                                        #   in Loop: Header=BB2_92 Depth=1
	divsd	%xmm8, %xmm5
	movl	%eax, %ecx
	ucomisd	%xmm9, %xmm5
	jbe	.LBB2_87
# BB#97:                                # %if.else.90.i
                                        #   in Loop: Header=BB2_92 Depth=1
	testl	%eax, %eax
	je	.LBB2_87
# BB#98:                                # %if.else.90.i
                                        #   in Loop: Header=BB2_92 Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdq	%rcx, %xmm2
	movapd	%xmm2, %xmm7
	mulsd	%xmm5, %xmm7
	jmp	.LBB2_95
	.align	16, 0x90
.LBB2_92:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ucomisd	%xmm5, %xmm2
	jbe	.LBB2_96
# BB#93:                                # %if.then.88.i
                                        #   in Loop: Header=BB2_92 Depth=1
	shrl	%eax
	addsd	%xmm1, %xmm1
	je	.LBB2_87
# BB#94:                                # %if.then.88.i
                                        #   in Loop: Header=BB2_92 Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movapd	%xmm5, %xmm7
	mulsd	%xmm2, %xmm7
.LBB2_95:                               # %if.then.88.i
                                        #   in Loop: Header=BB2_92 Depth=1
	ucomisd	.LCPI2_7(%rip), %xmm7
	ja	.LBB2_92
	jmp	.LBB2_87
.LBB2_86:
	movl	%r12d, %eax
	movapd	%xmm0, %xmm1
.LBB2_87:                               # %while.end.i
	divsd	%xmm3, %xmm11
	mulsd	%xmm3, %xmm11
	movapd	%xmm3, %xmm2
	cmpltsd	.LCPI2_2(%rip), %xmm2
	movapd	%xmm2, %xmm7
	andnpd	%xmm3, %xmm7
	andpd	%xmm11, %xmm2
	orpd	%xmm7, %xmm2
	movapd	%xmm6, %xmm7
	mulsd	%xmm2, %xmm7
	divsd	%xmm7, %xmm4
	mulsd	%xmm2, %xmm4
	cmpltsd	.LCPI2_4(%rip), %xmm7
	movapd	%xmm7, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm4, %xmm7
	orpd	%xmm3, %xmm7
	ucomisd	%xmm10, %xmm7
	jbe	.LBB2_88
# BB#99:                                # %while.end.i
	testl	%r12d, %r12d
	je	.LBB2_88
# BB#100:                               # %while.end.i
	movapd	%xmm6, %xmm2
	mulsd	%xmm7, %xmm2
	ucomisd	.LCPI2_7(%rip), %xmm2
	jbe	.LBB2_88
# BB#101:
	xorpd	%xmm3, %xmm3
	movsd	.LCPI2_8(%rip), %xmm4   # xmm4 = mem[0],zero
	jmp	.LBB2_102
.LBB2_103:                              # %if.then.125.i
                                        #   in Loop: Header=BB2_102 Depth=1
	shrl	%r12d
	addsd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm7
	jbe	.LBB2_88
# BB#104:                               # %if.then.125.i
                                        #   in Loop: Header=BB2_102 Depth=1
	testl	%r12d, %r12d
	je	.LBB2_88
# BB#105:                               # %if.then.125.i
                                        #   in Loop: Header=BB2_102 Depth=1
	cvtsi2sdl	%r12d, %xmm6
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_102:                              # %while.body.121.i
                                        # =>This Inner Loop Header: Depth=1
	ucomisd	%xmm7, %xmm6
	ja	.LBB2_103
# BB#106:                               # %if.else.128.i
                                        #   in Loop: Header=BB2_102 Depth=1
	divsd	%xmm4, %xmm7
	ucomisd	%xmm3, %xmm7
	jbe	.LBB2_88
.LBB2_107:                              # %if.else.128.i
                                        #   in Loop: Header=BB2_102 Depth=1
	movapd	%xmm6, %xmm2
	mulsd	%xmm7, %xmm2
	ucomisd	.LCPI2_7(%rip), %xmm2
	ja	.LBB2_102
.LBB2_88:
	movl	%r12d, %ebx
	movl	%eax, %r12d
.LBB2_154:                              # %transform_decompose.exit
	movapd	%xmm7, 32(%rsp)         # 16-byte Spill
	movapd	%xmm5, 48(%rsp)         # 16-byte Spill
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	divsd	%xmm7, %xmm3
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %rax
	movq	%rax, 64(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 72(%rsp)
	divsd	%xmm5, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movq	%rax, 88(%rsp)
	leaq	64(%rsp), %rbp
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	FT_Matrix_Multiply
	movl	$32, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	%ebx, 56(%r13)
	movl	%r12d, 60(%r13)
	movsd	.LCPI2_10(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movq	%rax, 40(%r13)
	movapd	48(%rsp), %xmm1         # 16-byte Reload
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rax
	movq	%rax, 48(%r13)
	movq	(%r13), %rdi
	movq	40(%r13), %rsi
	movq	48(%r13), %rdx
	movl	56(%r13), %ecx
	movl	60(%r13), %r8d
	callq	FT_Set_Char_Size
	testl	%eax, %eax
	je	.LBB2_156
# BB#155:                               # %if.then.206
	cmpl	$64, %eax
	movl	$-25, %eax
	movl	$-1, %ebp
	cmovel	%eax, %ebp
	jmp	.LBB2_166
.LBB2_156:                              # %if.end.208
	movq	(%r13), %rdi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	FT_Set_Transform
.LBB2_157:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_160 Depth 2
	movl	72(%r14,%rbx,8), %eax
	testl	%eax, %eax
	jle	.LBB2_165
# BB#158:                               # %for.cond.218.preheader
                                        #   in Loop: Header=BB2_157 Depth=1
	movq	(%r13), %rdx
	movslq	72(%rdx), %rcx
	testq	%rcx, %rcx
	jle	.LBB2_163
# BB#159:                               # %for.body.222.lr.ph
                                        #   in Loop: Header=BB2_157 Depth=1
	movq	80(%rdx), %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB2_160:                              # %for.body.222
                                        #   Parent Loop BB2_157 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rdi,8), %rsi
	movzwl	12(%rsi), %ebp
	cmpl	%eax, %ebp
	jne	.LBB2_162
# BB#161:                               # %land.lhs.true.234
                                        #   in Loop: Header=BB2_160 Depth=2
	movzwl	14(%rsi), %ebp
	cmpl	76(%r14,%rbx,8), %ebp
	je	.LBB2_164
.LBB2_162:                              # %for.inc
                                        #   in Loop: Header=BB2_160 Depth=2
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB2_160
.LBB2_163:                              # %for.inc.254
                                        #   in Loop: Header=BB2_157 Depth=1
	incq	%rbx
	cmpq	$10, %rbx
	jl	.LBB2_157
	jmp	.LBB2_165
.LBB2_164:                              # %if.then.258
	movq	(%r13), %rdi
	callq	FT_Set_Charmap
	jmp	.LBB2_165
.LBB2_108:                              # %if.else.132.i
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm5, %xmm3
	jbe	.LBB2_131
# BB#109:                               # %if.then.135.i
	ucomisd	%xmm5, %xmm0
	jbe	.LBB2_111
# BB#110:                               # %if.then.138.i
	movsd	.LCPI2_3(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm5, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm0, %xmm5
.LBB2_111:                              # %if.end.142.i
	movl	%r12d, %eax
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm5, %xmm0
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_113
# BB#112:                               # %if.then.147.i
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm1, %xmm5
.LBB2_113:                              # %while.cond.154.preheader.i
	movapd	%xmm5, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	testl	%r12d, %r12d
	je	.LBB2_136
# BB#114:                               # %while.cond.154.preheader.i
	movapd	%xmm7, %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	jbe	.LBB2_136
# BB#115:
	xorpd	%xmm3, %xmm3
	movsd	.LCPI2_8(%rip), %xmm4   # xmm4 = mem[0],zero
	movl	%r12d, %ebx
.LBB2_116:                              # %land.rhs.165.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_117 Depth 2
	ucomisd	%xmm3, %xmm7
	seta	%cl
	ucomisd	%xmm3, %xmm5
	seta	%al
	andb	%cl, %al
	.align	16, 0x90
.LBB2_117:                              # %land.rhs.165.i
                                        #   Parent Loop BB2_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	je	.LBB2_118
# BB#119:                               # %while.body.173.i
                                        #   in Loop: Header=BB2_117 Depth=2
	ucomisd	%xmm7, %xmm2
	jbe	.LBB2_126
# BB#120:                               # %if.then.177.i
                                        #   in Loop: Header=BB2_117 Depth=2
	shrl	%ebx
	shrl	%r12d
	addsd	%xmm0, %xmm0
	je	.LBB2_121
# BB#122:                               # %if.then.177.i
                                        #   in Loop: Header=BB2_117 Depth=2
	testl	%ebx, %ebx
	je	.LBB2_123
# BB#124:                               # %if.then.177.i
                                        #   in Loop: Header=BB2_117 Depth=2
	cvtsi2sdl	%ebx, %xmm2
	movapd	%xmm7, %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	ja	.LBB2_117
	jmp	.LBB2_125
.LBB2_126:                              # %if.else.181.i
                                        #   in Loop: Header=BB2_116 Depth=1
	divsd	%xmm4, %xmm7
	divsd	%xmm4, %xmm5
	movl	%ebx, %eax
	testl	%r12d, %r12d
	je	.LBB2_127
# BB#128:                               # %if.else.181.i
                                        #   in Loop: Header=BB2_116 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_129
# BB#130:                               # %if.else.181.i
                                        #   in Loop: Header=BB2_116 Depth=1
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm2, %xmm1
	mulsd	%xmm7, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	movapd	%xmm0, %xmm1
	ja	.LBB2_116
	jmp	.LBB2_154
.LBB2_131:                              # %if.else.186.i
	ucomisd	%xmm3, %xmm0
	jbe	.LBB2_133
# BB#132:                               # %if.then.189.i
	movsd	.LCPI2_3(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm3, %xmm0
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	mulpd	%xmm0, %xmm5
.LBB2_133:                              # %if.end.193.i
	movl	%r12d, %eax
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm5, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm2, %xmm0
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB2_135
# BB#134:                               # %if.then.198.i
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	mulpd	%xmm1, %xmm5
.LBB2_135:                              # %while.cond.205.preheader.i
	movapd	%xmm5, %xmm7
	shufpd	$1, %xmm7, %xmm7        # xmm7 = xmm7[1,0]
	movsd	.LCPI2_6(%rip), %xmm0   # xmm0 = mem[0],zero
	testl	%r12d, %r12d
	je	.LBB2_136
# BB#137:                               # %while.cond.205.preheader.i
	movapd	%xmm5, %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	jbe	.LBB2_136
# BB#138:
	xorpd	%xmm3, %xmm3
	movsd	.LCPI2_8(%rip), %xmm4   # xmm4 = mem[0],zero
	movl	%r12d, %ebx
.LBB2_139:                              # %land.rhs.216.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_140 Depth 2
	ucomisd	%xmm3, %xmm7
	seta	%cl
	ucomisd	%xmm3, %xmm5
	seta	%al
	andb	%cl, %al
	.align	16, 0x90
.LBB2_140:                              # %land.rhs.216.i
                                        #   Parent Loop BB2_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	%al, %al
	je	.LBB2_141
# BB#142:                               # %while.body.224.i
                                        #   in Loop: Header=BB2_140 Depth=2
	ucomisd	%xmm5, %xmm2
	jbe	.LBB2_149
# BB#143:                               # %if.then.228.i
                                        #   in Loop: Header=BB2_140 Depth=2
	shrl	%ebx
	shrl	%r12d
	addsd	%xmm0, %xmm0
	je	.LBB2_144
# BB#145:                               # %if.then.228.i
                                        #   in Loop: Header=BB2_140 Depth=2
	testl	%ebx, %ebx
	je	.LBB2_146
# BB#147:                               # %if.then.228.i
                                        #   in Loop: Header=BB2_140 Depth=2
	cvtsi2sdl	%r12d, %xmm2
	movapd	%xmm5, %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	ja	.LBB2_140
	jmp	.LBB2_148
.LBB2_149:                              # %if.else.232.i
                                        #   in Loop: Header=BB2_139 Depth=1
	divsd	%xmm4, %xmm7
	divsd	%xmm4, %xmm5
	movl	%r12d, %eax
	testl	%r12d, %r12d
	je	.LBB2_150
# BB#151:                               # %if.else.232.i
                                        #   in Loop: Header=BB2_139 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_152
# BB#153:                               # %if.else.232.i
                                        #   in Loop: Header=BB2_139 Depth=1
	cvtsi2sdq	%rax, %xmm2
	movapd	%xmm2, %xmm1
	mulsd	%xmm5, %xmm1
	ucomisd	.LCPI2_7(%rip), %xmm1
	movapd	%xmm0, %xmm1
	ja	.LBB2_139
	jmp	.LBB2_154
.LBB2_136:
	movapd	%xmm0, %xmm1
	movl	%r12d, %ebx
	jmp	.LBB2_154
.LBB2_83:                               # %if.end.176
	movq	$0, (%r14)
.LBB2_165:                              # %if.end.262
	cmpq	$1, (%r14)
	sbbl	%ebp, %ebp
.LBB2_166:                              # %cleanup.265
	movl	%ebp, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_79:                               # %if.then.160
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	144(%rsp), %rdi
	callq	FT_Done_Face
	movl	$-25, %ebp
	movq	24(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_166
# BB#80:                                # %if.then.i.207
	movq	8(%rax), %rbx
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB2_82
# BB#81:                                # %if.then.i.i.210
	movq	616(%r15), %rax
	movq	8(%rbx), %rsi
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB2_82:                               # %delete_inc_int_info.exit.i
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	jmp	.LBB2_166
.LBB2_118:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_141:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_121:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_144:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_123:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_125:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_146:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_148:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_60:                               # %entry.if.end_crit_edge.i
	movq	8, %rax
.LBB2_64:                               # %if.end.i.156
	testq	%rax, %rax
	movq	32(%rsp), %r13          # 8-byte Reload
	jne	.LBB2_68
	jmp	.LBB2_65
.LBB2_74:                               # %entry.if.end_crit_edge.i.169
	movq	8, %rax
.LBB2_78:                               # %if.end.i.186
	testq	%rax, %rax
	je	.LBB2_65
.LBB2_68:                               # %new_inc_int.exit
	testq	%rbx, %rbx
	je	.LBB2_66
# BB#69:                                # %cleanup.151
	movl	$17, 64(%rsp)
	movq	$1768842098, 128(%rsp)  # imm = 0x696E6372
	movq	%rbx, 136(%rsp)
	movl	$1, 112(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	584(%r15), %rdi
	movslq	44(%r14), %rdx
	leaq	64(%rsp), %rsi
	leaq	144(%rsp), %rcx
	callq	FT_Open_Face
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB2_15
.LBB2_65:                               # %new_inc_int.exit.thread
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB2_66:                               # %if.then.138
	movq	616(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB2_67:                               # %cleanup.151.thread
	movl	$-25, %ebp
	jmp	.LBB2_166
.LBB2_127:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_150:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_129:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.LBB2_152:
	movapd	%xmm0, %xmm1
	jmp	.LBB2_154
.Lfunc_end2:
	.size	gs_fapi_ft_get_scaled_font, .Lfunc_end2-gs_fapi_ft_get_scaled_font
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_decodingID,@function
gs_fapi_ft_get_decodingID:              # @gs_fapi_ft_get_decodingID
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$.L.str.13, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gs_fapi_ft_get_decodingID, .Lfunc_end3-gs_fapi_ft_get_decodingID
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_font_bbox,@function
gs_fapi_ft_get_font_bbox:               # @gs_fapi_ft_get_font_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movl	104(%rax), %esi
	movl	%esi, (%rdx)
	movl	112(%rax), %esi
	movl	%esi, 4(%rdx)
	movl	120(%rax), %esi
	movl	%esi, 8(%rdx)
	movl	128(%rax), %esi
	movl	%esi, 12(%rdx)
	movzwl	136(%rax), %eax
	movl	%eax, 4(%rcx)
	movl	%eax, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gs_fapi_ft_get_font_bbox, .Lfunc_end4-gs_fapi_ft_get_font_bbox
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_font_proportional_feature,@function
gs_fapi_ft_get_font_proportional_feature: # @gs_fapi_ft_get_font_proportional_feature
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gs_fapi_ft_get_font_proportional_feature, .Lfunc_end5-gs_fapi_ft_get_font_proportional_feature
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_can_retrieve_char_by_name,@function
gs_fapi_ft_can_retrieve_char_by_name:   # @gs_fapi_ft_can_retrieve_char_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 176
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	(%rsi), %rbx
	movq	(%rbx), %rax
	testb	$2, 17(%rax)
	je	.LBB6_4
# BB#1:                                 # %land.lhs.true
	movl	56(%r12), %edx
	cmpq	$127, %rdx
	ja	.LBB6_4
# BB#2:                                 # %if.then
	movq	48(%r12), %rsi
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	callq	memcpy
	movl	56(%r12), %eax
	movb	$0, (%rsp,%rax)
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	FT_Get_Name_Index
	movl	%eax, %ecx
	movq	%rcx, 8(%r12)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%r14)
	je	.LBB6_5
# BB#3:                                 # %if.then.15
	movl	$1, 44(%r12)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movl	$0, (%r14)
.LBB6_5:                                # %if.end.16
	xorl	%eax, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gs_fapi_ft_can_retrieve_char_by_name, .Lfunc_end6-gs_fapi_ft_can_retrieve_char_by_name
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_can_replace_metrics,@function
gs_fapi_ft_can_replace_metrics:         # @gs_fapi_ft_can_replace_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	gs_fapi_ft_can_replace_metrics, .Lfunc_end7-gs_fapi_ft_can_replace_metrics
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	gs_fapi_ft_get_fontmatrix,@function
gs_fapi_ft_get_fontmatrix:              # @gs_fapi_ft_get_fontmatrix
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI8_0(%rip), %xmm0   # xmm0 = [1.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movups	%xmm0, (%rsi)
	movq	$0, 16(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	gs_fapi_ft_get_fontmatrix, .Lfunc_end8-gs_fapi_ft_get_fontmatrix
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_char_width,@function
gs_fapi_ft_get_char_width:              # @gs_fapi_ft_get_char_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp38:
	.cfi_def_cfa_offset 16
	movl	400(%rdi), %eax
	movl	%eax, (%rsp)
	leaq	592(%rdi), %r8
	xorl	%r9d, %r9d
	callq	load_glyph
	popq	%rdx
	retq
.Lfunc_end9:
	.size	gs_fapi_ft_get_char_width, .Lfunc_end9-gs_fapi_ft_get_char_width
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_char_raster_metrics,@function
gs_fapi_ft_get_char_raster_metrics:     # @gs_fapi_ft_get_char_raster_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 16
	movl	400(%rdi), %eax
	movl	%eax, (%rsp)
	leaq	600(%rdi), %r8
	movl	$1, %r9d
	callq	load_glyph
	popq	%rdx
	retq
.Lfunc_end10:
	.size	gs_fapi_ft_get_char_raster_metrics, .Lfunc_end10-gs_fapi_ft_get_char_raster_metrics
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_char_raster,@function
gs_fapi_ft_get_char_raster:             # @gs_fapi_ft_get_char_raster
	.cfi_startproc
# BB#0:                                 # %entry
	movq	600(%rdi), %rcx
	movl	$-28, %eax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.end
	movq	64(%rcx), %rax
	movq	%rax, (%rsi)
	movl	52(%rcx), %eax
	movl	%eax, 8(%rsi)
	movl	48(%rcx), %eax
	movl	%eax, 12(%rsi)
	movl	56(%rcx), %eax
	movl	%eax, 16(%rsi)
	movl	40(%rcx), %eax
	shll	$4, %eax
	movl	%eax, 20(%rsi)
	movl	44(%rcx), %eax
	shll	$4, %eax
	movl	%eax, 24(%rsi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 28(%rsi)
	xorl	%eax, %eax
.LBB11_2:                               # %cleanup
	retq
.Lfunc_end11:
	.size	gs_fapi_ft_get_char_raster, .Lfunc_end11-gs_fapi_ft_get_char_raster
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_char_outline_metrics,@function
gs_fapi_ft_get_char_outline_metrics:    # @gs_fapi_ft_get_char_outline_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 16
	movl	400(%rdi), %eax
	movl	%eax, (%rsp)
	leaq	592(%rdi), %r8
	xorl	%r9d, %r9d
	callq	load_glyph
	popq	%rdx
	retq
.Lfunc_end12:
	.size	gs_fapi_ft_get_char_outline_metrics, .Lfunc_end12-gs_fapi_ft_get_char_outline_metrics
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_get_char_outline,@function
gs_fapi_ft_get_char_outline:            # @gs_fapi_ft_get_char_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%r14, (%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rsp)
	movq	592(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB13_2
# BB#1:                                 # %if.then
	addq	$40, %rdi
	leaq	(%rsp), %rdx
	movl	$TheFtOutlineFuncs, %esi
	callq	FT_Outline_Decompose
	movl	%eax, %ebx
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	*16(%r14)
.LBB13_3:                               # %if.end
	cmpl	$0, 12(%r14)
	jne	.LBB13_5
# BB#4:                                 # %if.then.3
	movq	%r14, %rdi
	callq	*40(%r14)
.LBB13_5:                               # %if.end.5
	cmpl	$64, %ebx
	movl	$-25, %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	testl	%ebx, %ebx
	cmovel	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	gs_fapi_ft_get_char_outline, .Lfunc_end13-gs_fapi_ft_get_char_outline
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_release_char_data,@function
gs_fapi_ft_release_char_data:           # @gs_fapi_ft_release_char_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	592(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	584(%rbx), %rdi
	addq	$40, %rsi
	callq	FT_Outline_Done
	movq	592(%rbx), %rsi
	movq	616(%rbx), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB14_2:                               # %if.end
	movq	600(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB14_4
# BB#3:                                 # %if.then.4
	movq	584(%rbx), %rdi
	addq	$48, %rsi
	callq	FT_Bitmap_Done
	movq	600(%rbx), %rsi
	movq	616(%rbx), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB14_4:                               # %if.end.10
	xorps	%xmm0, %xmm0
	movups	%xmm0, 592(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end14:
	.size	gs_fapi_ft_release_char_data, .Lfunc_end14-gs_fapi_ft_release_char_data
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_release_typeface,@function
gs_fapi_ft_release_typeface:            # @gs_fapi_ft_release_typeface
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB15_10
# BB#1:                                 # %if.then.i
	movq	64(%rbx), %rax
	testq	%rax, %rax
	je	.LBB15_5
# BB#2:                                 # %if.then.2.i
	movq	8(%rax), %r15
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB15_4
# BB#3:                                 # %if.then.5.i
	movq	608(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
.LBB15_4:                               # %if.end.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r15)
.LBB15_5:                               # %if.end.10.i
	movq	(%rbx), %rdi
	callq	FT_Done_Face
	movq	616(%r14), %rax
	movq	64(%rbx), %rsi
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	cmpl	$0, 92(%rbx)
	je	.LBB15_7
# BB#6:                                 # %if.then.13.i
	movq	616(%r14), %rax
	movq	80(%rbx), %rsi
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB15_7:                               # %if.end.15.i
	movq	72(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_9
# BB#8:                                 # %if.then.17.i
	movq	616(%r14), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB15_9:                               # %if.end.20.i
	movq	616(%r14), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB15_10:                              # %delete_face.exit
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	gs_fapi_ft_release_typeface, .Lfunc_end15-gs_fapi_ft_release_typeface
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_ft_check_cmap_for_GID,@function
gs_fapi_ft_check_cmap_for_GID:          # @gs_fapi_ft_check_cmap_for_GID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	80(%rdi), %rax
	movq	(%rax), %rdi
	movl	(%rbx), %esi
	callq	FT_Get_Char_Index
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end16:
	.size	gs_fapi_ft_check_cmap_for_GID, .Lfunc_end16-gs_fapi_ft_check_cmap_for_GID
	.cfi_endproc

	.align	16, 0x90
	.type	gs_fapi_freetype_destroy,@function
gs_fapi_freetype_destroy:               # @gs_fapi_freetype_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 32
.Ltmp59:
	.cfi_offset %rbx, -32
.Ltmp60:
	.cfi_offset %r14, -24
.Ltmp61:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movq	592(%rbx), %rdi
	movq	608(%rbx), %r14
	callq	FT_Done_Glyph
	movq	600(%rbx), %rdi
	callq	FT_Done_Glyph
	movq	584(%rbx), %rdi
	callq	FT_Done_Library
	movq	200(%r14), %rdi
	movq	(%r15), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movq	$0, (%r15)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_memory_chunk_release # TAILCALL
.Lfunc_end17:
	.size	gs_fapi_freetype_destroy, .Lfunc_end17-gs_fapi_freetype_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	FF_alloc,@function
FF_alloc:                               # @FF_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	200(%rax), %rdi
	movq	88(%rdi), %rax
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end18:
	.size	FF_alloc, .Lfunc_end18-FF_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	FF_free,@function
FF_free:                                # @FF_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.6, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end19:
	.size	FF_free, .Lfunc_end19-FF_free
	.cfi_endproc

	.align	16, 0x90
	.type	FF_realloc,@function
FF_realloc:                             # @FF_realloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -48
.Ltmp68:
	.cfi_offset %r12, -40
.Ltmp69:
	.cfi_offset %r13, -32
.Ltmp70:
	.cfi_offset %r14, -24
.Ltmp71:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	cmpq	%rbx, %r12
	jne	.LBB20_2
# BB#1:
	movq	%r14, %r15
	jmp	.LBB20_5
.LBB20_2:                               # %if.end
	movq	(%rdi), %r13
	movq	200(%r13), %rdi
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%r14, %r14
	je	.LBB20_5
# BB#3:                                 # %if.end
	testq	%r15, %r15
	je	.LBB20_5
# BB#4:                                 # %if.then.3
	cmpq	%rbx, %r12
	cmovleq	%r12, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	200(%r13), %rdi
	movl	$.L.str.7, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB20_5:                               # %cleanup
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	FF_realloc, .Lfunc_end20-FF_realloc
	.cfi_endproc

	.align	16, 0x90
	.type	FF_stream_read,@function
FF_stream_read:                         # @FF_stream_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 48
.Ltmp76:
	.cfi_offset %rbx, -32
.Ltmp77:
	.cfi_offset %r14, -24
.Ltmp78:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	24(%rdi), %rbx
	movl	$0, 12(%rsp)
	movq	%rbx, %rdi
	callq	spseek
	movl	%eax, %ecx
	movq	$-1, %rax
	testl	%ecx, %ecx
	js	.LBB21_4
# BB#1:                                 # %if.end
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB21_4
# BB#2:                                 # %if.then.1
	leaq	12(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	sgets
	cmpl	$-1, %eax
	movq	$-1, %rax
	jl	.LBB21_4
# BB#3:                                 # %if.then.1.if.end.9_crit_edge
	movl	12(%rsp), %eax
.LBB21_4:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	FF_stream_read, .Lfunc_end21-FF_stream_read
	.cfi_endproc

	.align	16, 0x90
	.type	FF_stream_close,@function
FF_stream_close:                        # @FF_stream_close
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rdi
	jmp	sclose                  # TAILCALL
.Lfunc_end22:
	.size	FF_stream_close, .Lfunc_end22-FF_stream_close
	.cfi_endproc

	.align	16, 0x90
	.type	get_fapi_glyph_data,@function
get_fapi_glyph_data:                    # @get_fapi_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 80
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movl	%esi, %r15d
	movq	%rdi, %rbp
	movq	(%rbp), %rbx
	movq	(%rbx), %rax
	movq	96(%rax), %rax
	movq	608(%rax), %r14
	movl	$1, 8(%rbx)
	cmpl	$0, 24(%rbp)
	je	.LBB23_6
# BB#1:                                 # %if.then
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*256(%rbx)
	movl	%eax, %ebp
	movl	$16, %eax
	cmpl	$65535, %ebp            # imm = 0xFFFF
	je	.LBB23_16
# BB#2:                                 # %if.end
	movq	200(%r14), %rdi
	movl	$1, %edx
	movl	$.L.str.11, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$64, %eax
	testq	%r13, %r13
	je	.LBB23_16
# BB#3:                                 # %if.end.7
	movzwl	%bp, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	callq	*256(%rbx)
	movl	%eax, %r12d
	cmpl	$65535, %r12d           # imm = 0xFFFF
	jne	.LBB23_5
# BB#4:                                 # %if.then.12
	movq	200(%r14), %rdi
	movl	$.L.str.11, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	$16, %eax
	jmp	.LBB23_16
.LBB23_6:                               # %if.else
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	176(%rbx), %r14
	movq	8(%rbp), %rdx
	movzwl	16(%rbp), %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*256(%rbx)
	movl	%eax, %r12d
	cmpl	$-1, %r12d
	je	.LBB23_7
# BB#8:                                 # %if.end.24
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movslq	%r12d, %r13
	cmpq	16(%rbp), %r13
	jbe	.LBB23_14
# BB#9:                                 # %if.then.29
	movq	8(%rbp), %rsi
	testq	%rsi, %rsi
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB23_11
# BB#10:                                # %if.then.32
	movq	200(%r14), %rdi
	movl	$.L.str.11, %edx
	callq	*24(%rdi)
.LBB23_11:                              # %if.end.38
	movq	200(%r14), %rdi
	movl	$1, %edx
	movl	$.L.str.11, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.LBB23_12
# BB#13:                                # %if.end.49
	movq	%r13, 16(%rbp)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 176(%rbx)
	movzwl	%r12w, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	*256(%rbx)
	movl	%eax, %r12d
	movl	$2, %eax
	cmpl	$-1, %r12d
	je	.LBB23_16
.LBB23_14:                              # %cleanup.65
	movq	8(%rbp), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$1, 24(%rbp)
	jmp	.LBB23_15
.LBB23_7:                               # %if.then.22
	movq	%r14, 176(%rbx)
	movl	$2, %eax
	jmp	.LBB23_16
.LBB23_5:                               # %cleanup
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
	movq	%rax, %rcx
.LBB23_15:                              # %if.end.68
	movl	%r12d, 8(%rcx)
	xorl	%eax, %eax
.LBB23_16:                              # %cleanup.70
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_12:                              # %if.then.47
	movq	$0, 16(%rbp)
	movl	$64, %eax
	jmp	.LBB23_16
.Lfunc_end23:
	.size	get_fapi_glyph_data, .Lfunc_end23-get_fapi_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	free_fapi_glyph_data,@function
free_fapi_glyph_data:                   # @free_fapi_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rsi
	cmpq	8(%rdi), %rsi
	je	.LBB24_1
# BB#2:                                 # %if.else
	movq	(%rdi), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rax
	movq	608(%rax), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.12, %edx
	jmpq	*%rax                   # TAILCALL
.LBB24_1:                               # %if.end
	movl	$0, 24(%rdi)
	retq
.Lfunc_end24:
	.size	free_fapi_glyph_data, .Lfunc_end24-free_fapi_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	get_fapi_glyph_metrics,@function
get_fapi_glyph_metrics:                 # @get_fapi_glyph_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	testb	%dl, %dl
	je	.LBB25_3
# BB#1:                                 # %land.lhs.true
	movq	(%rdi), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movq	$0, 16(%rcx)
.LBB25_3:                               # %if.end
	movl	%esi, %edx
	xorl	%eax, %eax
	cmpq	%rdx, 64(%rdi)
	jne	.LBB25_10
# BB#4:                                 # %if.then.4
	movl	72(%rdi), %edx
	cmpl	$3, %edx
	je	.LBB25_9
# BB#5:                                 # %if.then.4
	cmpl	$2, %edx
	jne	.LBB25_6
# BB#8:                                 # %sw.bb.7
	movq	48(%rdi), %rdx
	movq	%rdx, 16(%rcx)
	retq
.LBB25_9:                               # %sw.bb.11
	movq	48(%rdi), %rdx
	movq	%rdx, 16(%rcx)
	movups	32(%rdi), %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 24(%rcx)
	jmp	.LBB25_10
.LBB25_6:                               # %if.then.4
	movl	$6, %eax
	cmpl	$1, %edx
	jne	.LBB25_10
# BB#7:                                 # %sw.bb
	movq	48(%rdi), %rax
	addq	%rax, 16(%rcx)
	xorl	%eax, %eax
	retq
.LBB25_10:                              # %return
	retq
.Lfunc_end25:
	.size	get_fapi_glyph_metrics, .Lfunc_end25-get_fapi_glyph_metrics
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4634766966517661696     # double 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_1:
	.quad	-64                     # 0xffffffffffffffc0
	.quad	-64                     # 0xffffffffffffffc0
.LCPI26_2:
	.quad	63                      # 0x3f
	.quad	63                      # 0x3f
	.text
	.align	16, 0x90
	.type	load_glyph,@function
load_glyph:                             # @load_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 160
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	176(%r13), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	(%rax), %r14
	movq	8(%r12), %rbx
	movl	184(%r13), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	600(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	584(%rbp), %rdi
	addq	$48, %rsi
	callq	FT_Bitmap_Done
	movq	600(%rbp), %rsi
	movq	616(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 600(%rbp)
.LBB26_2:                               # %if.end
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	592(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB26_4
# BB#3:                                 # %if.then.6
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	584(%rbp), %rdi
	addq	$40, %rsi
	callq	FT_Outline_Done
	movq	592(%rbp), %rsi
	movq	616(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 592(%rbp)
.LBB26_4:                               # %if.end.13
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	cmpl	$0, 44(%r12)
	je	.LBB26_5
# BB#9:                                 # %if.else.28
	cmpl	$0, 52(%r13)
	je	.LBB26_11
# BB#10:
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	jmp	.LBB26_17
.LBB26_5:                               # %if.then.15
	cmpl	$0, 72(%r14)
	je	.LBB26_7
# BB#6:                                 # %if.then.17
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	FT_Get_Char_Index
	movl	%eax, %ebx
	jmp	.LBB26_17
.LBB26_11:                              # %land.lhs.true
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpq	$0, 64(%rax)
	je	.LBB26_13
# BB#12:
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	jmp	.LBB26_17
.LBB26_7:                               # %if.else
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	cmpl	$0, 48(%r13)
	jne	.LBB26_17
# BB#8:                                 # %if.else.22
	movl	8(%r12), %ebx
	jmp	.LBB26_17
.LBB26_13:                              # %land.lhs.true.31
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB26_16
# BB#14:                                # %lor.lhs.false
	movq	(%r12), %rsi
	cmpq	$-1, %rsi
	je	.LBB26_17
# BB#15:                                # %land.lhs.true.35
	movq	%r14, %rdi
	callq	FT_Get_Char_Index
	testl	%eax, %eax
	jne	.LBB26_17
.LBB26_16:                              # %if.then.40
	movl	$32, %esi
	movq	%r14, %rdi
	callq	FT_Get_Char_Index
	testl	%eax, %eax
	cmovgl	%eax, %ebx
.LBB26_17:                              # %if.end.47
	movq	%r14, %r15
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB26_21
# BB#18:                                # %land.lhs.true.55
	movq	8(%rax), %rax
	movq	%r13, (%rax)
	movl	60(%r12), %ecx
	testl	%ecx, %ecx
	je	.LBB26_20
# BB#19:                                # %if.then.58
	movl	64(%r12), %edx
	sarl	$16, %edx
	movslq	%edx, %rdx
	movq	%rdx, 32(%rax)
	movl	68(%r12), %edx
	sarl	$16, %edx
	movslq	%edx, %rdx
	movq	%rdx, 40(%rax)
	movl	72(%r12), %edx
	sarl	$16, %edx
	movslq	%edx, %rdx
	movq	%rdx, 48(%rax)
	movslq	%ebx, %rdx
	movq	%rdx, 64(%rax)
	movl	%ecx, 72(%rax)
	jmp	.LBB26_21
.LBB26_20:                              # %if.then.76
	movq	%rbp, 64(%rax)
.LBB26_21:                              # %if.then.83
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 176(%r13)
	movl	$12298, %r14d           # imm = 0x300A
	cmpl	$0, 60(%r13)
	jne	.LBB26_25
# BB#22:                                # %land.lhs.true.86
	cmpl	$0, 48(%r13)
	jne	.LBB26_25
# BB#23:                                # %if.then.89
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	408(%rax), %eax
	movl	$45066, %r14d           # imm = 0xB00A
	testl	%eax, %eax
	je	.LBB26_25
# BB#24:                                # %if.else.93
	cmpl	$2, %eax
	movl	$12328, %eax            # imm = 0x3028
	movl	$12296, %r14d           # imm = 0x3008
	cmovel	%eax, %r14d
.LBB26_25:                              # %if.end.106
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r14d, %edx
	callq	FT_Load_Glyph
	movl	%eax, %ebp
	cmpl	$15, %ebp
	jg	.LBB26_28
# BB#26:                                # %if.end.106
	cmpl	$2, %ebp
	jne	.LBB26_27
# BB#64:                                # %if.then.110
	incl	%ebx
	jmp	.LBB26_63
.LBB26_28:                              # %if.end.106
	movq	%rbx, %rsi
	cmpl	$16, %ebp
	je	.LBB26_31
# BB#29:                                # %if.end.106
	cmpl	$134, %ebp
	je	.LBB26_31
	jmp	.LBB26_30
.LBB26_27:                              # %if.end.106
	movq	%rbx, %rsi
	cmpl	$6, %ebp
	je	.LBB26_31
.LBB26_30:                              # %lor.lhs.false.121
	movl	%ebp, %eax
	addl	$-128, %eax
	cmpl	$13, %eax
	ja	.LBB26_32
.LBB26_31:                              # %if.then.127
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 176(%r13)
	movq	%r15, %r12
	movq	16(%r12), %r15
	movq	%r15, %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	movq	%rax, 16(%r12)
	orl	$2, %r14d
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	FT_Load_Glyph
	movl	%eax, %ebp
	movq	%r15, 16(%r12)
	movq	%r12, %r15
.LBB26_32:                              # %if.end.135
	movl	$-25, %ebx
	cmpl	$10, %ebp
	je	.LBB26_63
# BB#33:                                # %if.end.135
	cmpl	$64, %ebp
	je	.LBB26_63
# BB#34:                                # %if.end.142
	movb	$1, %r12b
	testl	%ebp, %ebp
	je	.LBB26_36
# BB#35:                                # %if.then.144
	movq	$.L.str.14, 64(%rsp)
	movl	$7, 72(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 176(%r13)
	movl	$0, 184(%r13)
	movq	%r15, %rbx
	movq	16(%rbx), %r15
	movq	%r15, %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	movq	%rax, 16(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	FT_Load_Glyph
	movq	%r15, 16(%rbx)
	movq	%rbx, %r15
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 176(%r13)
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 184(%r13)
	testl	%eax, %eax
	setne	%r12b
.LBB26_36:                              # %if.end.154
	testl	%ebp, %ebp
	sete	%cl
	setne	%al
	andb	%r12b, %al
	movb	%r12b, %r14b
	xorb	$1, %r14b
	movq	32(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB26_45
# BB#37:                                # %if.end.154
	orb	%r14b, %cl
	je	.LBB26_45
# BB#38:                                # %if.then.160
	movq	152(%r15), %rdx
	cvtsi2sdq	64(%rdx), %xmm2
	movzwl	136(%r15), %r10d
	cvtsi2sdl	%r10d, %xmm0
	mulsd	%xmm0, %xmm2
	movsd	.LCPI26_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movq	40(%rsp), %rdi          # 8-byte Reload
	cvtsi2sdq	40(%rdi), %xmm3
	movl	56(%rdi), %ecx
	movl	60(%rdi), %esi
	cvtsi2sdq	%rcx, %xmm4
	mulsd	%xmm3, %xmm4
	divsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %r8
	xorps	%xmm2, %xmm2
	cvtsi2sdq	72(%rdx), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdq	48(%rdi), %xmm3
	cvtsi2sdq	%rsi, %xmm5
	mulsd	%xmm3, %xmm5
	divsd	%xmm5, %xmm2
	cvttsd2si	%xmm2, %r11
	xorps	%xmm2, %xmm2
	cvtsi2sdq	48(%rdx), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %rsi
	xorps	%xmm2, %xmm2
	cvtsi2sdq	56(%rdx), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm5, %xmm2
	cvttsd2si	%xmm2, %r9
	cmpl	$0, 48(%r13)
	jne	.LBB26_43
# BB#39:                                # %lor.lhs.false.216
	cmpq	$0, 32(%r13)
	jne	.LBB26_41
# BB#40:                                # %lor.lhs.false.218
	xorl	%ecx, %ecx
	cmpq	$0, 24(%r13)
	je	.LBB26_44
.LBB26_41:                              # %land.lhs.true.220
	xorl	%ecx, %ecx
	cmpl	$0, 64(%r13)
	je	.LBB26_44
# BB#42:                                # %land.lhs.true.222
	testb	$32, 16(%r15)
	je	.LBB26_44
.LBB26_43:                              # %if.then.226
	movl	120(%rdx), %ecx
.LBB26_44:                              # %if.end.229
	movl	%r8d, (%rbx)
	movl	%r11d, %edi
	subl	%r9d, %edi
	movl	%edi, 4(%rbx)
	addl	%r8d, %esi
	movl	%esi, 8(%rbx)
	movl	%r11d, 12(%rbx)
	movl	112(%rdx), %edx
	movl	%edx, 16(%rbx)
	movl	%ecx, 20(%rbx)
	movl	%r10d, 24(%rbx)
	movl	%r10d, 28(%rbx)
.LBB26_45:                              # %if.end.247
	testb	%al, %al
	jne	.LBB26_52
# BB#46:                                # %if.then.251
	movq	152(%r15), %rdi
	addq	$200, %rdi
	leaq	64(%rsp), %rsi
	callq	FT_Outline_Get_CBox
	movdqa	.LCPI26_1(%rip), %xmm2  # xmm2 = [18446744073709551552,18446744073709551552]
	movdqa	64(%rsp), %xmm0
	pand	%xmm2, %xmm0
	movdqa	%xmm0, 64(%rsp)
	movdqa	80(%rsp), %xmm1
	paddq	.LCPI26_2(%rip), %xmm1
	pand	%xmm2, %xmm1
	movdqa	%xmm1, 80(%rsp)
	cmpl	$1, 24(%rsp)            # 4-byte Folded Reload
	jne	.LBB26_52
# BB#47:                                # %if.then.251
	movl	68(%r13), %eax
	testl	%eax, %eax
	jne	.LBB26_52
# BB#48:                                # %land.lhs.true.280
	movq	152(%r15), %rdi
	movl	144(%rdi), %eax
	cmpl	$1651078259, %eax       # imm = 0x62697473
	je	.LBB26_52
# BB#49:                                # %land.lhs.true.280
	cmpl	$1668246896, %eax       # imm = 0x636F6D70
	je	.LBB26_52
# BB#50:                                # %if.then.289
	movd	%xmm0, %rax
	movd	%xmm1, %rcx
	subq	%rax, %rcx
	shrq	$6, %rcx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rax
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %rdx
	subq	%rax, %rdx
	addq	$63, %rcx
	shrq	$6, %rcx
	shrq	$3, %rdx
	movabsq	$34359738360, %rax      # imm = 0x7FFFFFFF8
	andq	%rdx, %rax
	imulq	%rcx, %rax
	movslq	160(%rsp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_65
# BB#51:                                # %if.then.298
	movl	$2, %esi
	callq	FT_Render_Glyph
	movl	%eax, %ebp
.LBB26_52:                              # %cleanup.thread
	addq	$68, %r13
	cmpl	$0, (%r13)
	jne	.LBB26_62
# BB#53:                                # %if.then.307
	testl	%ebp, %ebp
	sete	%al
	movq	152(%r15), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB26_56
# BB#54:                                # %if.then.307
	orb	%al, %r14b
	je	.LBB26_56
# BB#55:                                # %if.then.313
	callq	FT_Get_Glyph
	movl	%eax, %ebp
	jmp	.LBB26_62
.LBB26_56:                              # %if.else.316
	cmpl	$1651078259, 144(%rdi)  # imm = 0x62697473
	jne	.LBB26_59
# BB#57:                                # %if.then.321
	leaq	64(%rsp), %rsi
	callq	FT_Get_Glyph
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB26_62
# BB#58:                                # %if.then.325
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	584(%rbx), %rdi
	movq	64(%rsp), %rsi
	addq	$48, %rsi
	callq	FT_Bitmap_Done
	jmp	.LBB26_61
.LBB26_59:                              # %if.else.331
	leaq	64(%rsp), %rsi
	callq	FT_Get_Glyph
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB26_62
# BB#60:                                # %if.then.335
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	584(%rbx), %rdi
	movq	64(%rsp), %rsi
	addq	$40, %rsi
	callq	FT_Outline_Done
.LBB26_61:                              # %if.end.343
	movq	616(%rbx), %rax
	movq	64(%rsp), %rsi
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
.LBB26_62:                              # %if.end.343
	xorl	%eax, %eax
	cmpl	$22, %ebp
	movl	$0, %ecx
	cmovnel	%ebp, %ecx
	testb	%r12b, %r12b
	cmovnel	%ebp, %ecx
	cmpl	$6, %ecx
	movl	$0, %edx
	cmovnel	%ecx, %edx
	testb	%r12b, %r12b
	cmovnel	%ecx, %edx
	cmpl	$140, %edx
	movl	$0, %ecx
	cmovnel	%edx, %ecx
	testb	%r12b, %r12b
	cmovnel	%edx, %ecx
	cmpl	$16, %ecx
	cmovnel	%ecx, %eax
	testb	%r12b, %r12b
	cmovnel	%ecx, %eax
	cmpl	$64, %eax
	movl	$-25, %ecx
	movl	$-1, %ebx
	cmovel	%ecx, %ebx
	testl	%eax, %eax
	cmovel	%eax, %ebx
.LBB26_63:                              # %cleanup.373
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_65:                              # %cleanup
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	$0, (%rax)
	movl	$-25, %ebx
	jmp	.LBB26_63
.Lfunc_end26:
	.size	load_glyph, .Lfunc_end26-load_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	move_to,@function
move_to:                                # @move_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 16
	movdqu	(%rdi), %xmm0
	psllq	$26, %xmm0
	movdqu	%xmm0, 8(%rsi)
	movq	(%rsi), %rdi
	movd	%xmm0, %rsi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	callq	*16(%rdi)
	negl	%eax
	sbbl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end27:
	.size	move_to, .Lfunc_end27-move_to
	.cfi_endproc

	.align	16, 0x90
	.type	line_to,@function
line_to:                                # @line_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 16
	movdqu	(%rdi), %xmm0
	psllq	$26, %xmm0
	movdqu	%xmm0, 8(%rsi)
	movq	(%rsi), %rdi
	movd	%xmm0, %rsi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	callq	*24(%rdi)
	negl	%eax
	sbbl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end28:
	.size	line_to, .Lfunc_end28-line_to
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4580160821035794432     # double 0.015625
.LCPI29_1:
	.quad	4643211215818981376     # double 256
.LCPI29_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	conic_to,@function
conic_to:                               # @conic_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp107:
	.cfi_def_cfa_offset 16
	movq	8(%rdx), %rax
	movq	16(%rdx), %rcx
	sarq	$32, %rax
	cvtsi2sdq	%rax, %xmm5
	sarq	$32, %rcx
	cvtsi2sdq	%rcx, %xmm3
	cvtsi2sdq	(%rsi), %xmm1
	movsd	.LCPI29_0(%rip), %xmm7  # xmm7 = mem[0],zero
	mulsd	%xmm7, %xmm1
	movsd	.LCPI29_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	%eax, %r9
	shlq	$24, %r9
	movq	%r9, 8(%rdx)
	xorps	%xmm2, %xmm2
	cvtsi2sdq	8(%rsi), %xmm2
	mulsd	%xmm7, %xmm2
	movapd	%xmm2, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %eax
	movslq	%eax, %r10
	shlq	$24, %r10
	movq	%r10, 16(%rdx)
	cvtsi2sdq	(%rdi), %xmm6
	mulsd	%xmm7, %xmm6
	xorps	%xmm4, %xmm4
	cvtsi2sdq	8(%rdi), %xmm4
	mulsd	%xmm7, %xmm4
	addsd	%xmm6, %xmm6
	addsd	%xmm6, %xmm5
	movsd	.LCPI29_2(%rip), %xmm7  # xmm7 = mem[0],zero
	divsd	%xmm7, %xmm5
	mulsd	%xmm0, %xmm5
	cvttsd2si	%xmm5, %eax
	movslq	%eax, %rsi
	shlq	$24, %rsi
	addsd	%xmm4, %xmm4
	addsd	%xmm4, %xmm3
	divsd	%xmm7, %xmm3
	mulsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %eax
	cltq
	shlq	$24, %rax
	addsd	%xmm1, %xmm6
	divsd	%xmm7, %xmm6
	mulsd	%xmm0, %xmm6
	cvttsd2si	%xmm6, %ecx
	movslq	%ecx, %rcx
	shlq	$24, %rcx
	addsd	%xmm2, %xmm4
	divsd	%xmm7, %xmm4
	mulsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %edi
	movslq	%edi, %r8
	shlq	$24, %r8
	movq	(%rdx), %rdi
	movq	%r10, (%rsp)
	movq	%rax, %rdx
	callq	*32(%rdi)
	negl	%eax
	sbbl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end29:
	.size	conic_to, .Lfunc_end29-conic_to
	.cfi_endproc

	.align	16, 0x90
	.type	cubic_to,@function
cubic_to:                               # @cubic_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp108:
	.cfi_def_cfa_offset 16
	movdqu	(%rdx), %xmm0
	psllq	$26, %xmm0
	movdqu	%xmm0, 8(%rcx)
	movq	(%rdi), %r10
	movq	8(%rdi), %rdx
	shlq	$26, %r10
	shlq	$26, %rdx
	movq	(%rsi), %rax
	movq	8(%rsi), %r8
	shlq	$26, %rax
	shlq	$26, %r8
	movq	(%rcx), %rdi
	movd	%xmm0, %r9
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, (%rsp)
	movq	%r10, %rsi
	movq	%rax, %rcx
	callq	*32(%rdi)
	negl	%eax
	sbbl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end30:
	.size	cubic_to, .Lfunc_end30-cubic_to
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_fapi_ft_init"
	.size	.L.str, 16

	.type	freetypeserver,@object  # @freetypeserver
	.section	.rodata,"a",@progbits
	.align	8
freetypeserver:
	.quad	freetypedescriptor
	.quad	0
	.long	16                      # 0x10
	.zero	4
	.zero	56
	.zero	320
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	gs_fapi_ft_ensure_open
	.quad	gs_fapi_ft_get_scaled_font
	.quad	gs_fapi_ft_get_decodingID
	.quad	gs_fapi_ft_get_font_bbox
	.quad	gs_fapi_ft_get_font_proportional_feature
	.quad	gs_fapi_ft_can_retrieve_char_by_name
	.quad	gs_fapi_ft_can_replace_metrics
	.quad	0
	.quad	gs_fapi_ft_get_fontmatrix
	.quad	gs_fapi_ft_get_char_width
	.quad	gs_fapi_ft_get_char_raster_metrics
	.quad	gs_fapi_ft_get_char_raster
	.quad	gs_fapi_ft_get_char_outline_metrics
	.quad	gs_fapi_ft_get_char_outline
	.quad	gs_fapi_ft_release_char_data
	.quad	gs_fapi_ft_release_typeface
	.quad	gs_fapi_ft_check_cmap_for_GID
	.quad	0
	.size	freetypeserver, 584

	.type	freetypedescriptor,@object # @freetypedescriptor
	.align	8
freetypedescriptor:
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	gs_fapi_freetype_destroy
	.size	freetypedescriptor, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"FAPI"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FreeType"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_fapi_freetype_destroy: ff_server"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_fapi_ft_ensure_open"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FF_alloc"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FF_free"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FF_realloc"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gs_fapi_ft_get_scaled_font - full font buf"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"r"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FF_open_read_stream"
	.size	.L.str.10, 20

	.type	TheFAPIIncrementalInterfaceFuncs,@object # @TheFAPIIncrementalInterfaceFuncs
	.section	.rodata,"a",@progbits
	.align	8
TheFAPIIncrementalInterfaceFuncs:
	.quad	get_fapi_glyph_data
	.quad	free_fapi_glyph_data
	.quad	get_fapi_glyph_metrics
	.size	TheFAPIIncrementalInterfaceFuncs, 24

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"get_fapi_glyph_data"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"free_fapi_glyph_data"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unicode"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".notdef"
	.size	.L.str.14, 8

	.type	TheFtOutlineFuncs,@object # @TheFtOutlineFuncs
	.section	.rodata,"a",@progbits
	.align	8
TheFtOutlineFuncs:
	.quad	move_to
	.quad	line_to
	.quad	conic_to
	.quad	cubic_to
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.size	TheFtOutlineFuncs, 48

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"delete_face"
	.size	.L.str.15, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
