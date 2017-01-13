	.text
	.file	"zdps.bc"
	.align	16, 0x90
	.type	zcurrentscreenphase,@function
zcurrentscreenphase:                    # @zcurrentscreenphase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %rdx
	leaq	1(%rdx), %rcx
	movl	$-15, %eax
	cmpq	$2, %rcx
	ja	.LBB0_7
# BB#3:                                 # %if.end.9
	movq	(%r14), %rdi
	leaq	(%rsp), %rsi
	callq	gs_currentscreenphase
	testl	%eax, %eax
	js	.LBB0_7
# BB#4:                                 # %do.body
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB0_6
# BB#5:                                 # %if.then.22
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB0_7
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_6:                                # %if.else
	movq	%rax, 624(%r14)
	movslq	(%rsp), %rax
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	movslq	4(%rsp), %rax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	jmp	.LBB0_7
.Lfunc_end0:
	.size	zcurrentscreenphase, .Lfunc_end0-zcurrentscreenphase
	.cfi_endproc

	.align	16, 0x90
	.type	zsetscreenphase,@function
zsetscreenphase:                        # @zsetscreenphase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	-31(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB1_7
# BB#1:                                 # %if.end
	movzbl	-15(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB1_8
# BB#2:                                 # %if.end.14
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB1_9
# BB#3:                                 # %if.end.23
	movq	-24(%rdi), %rcx
	leaq	1(%rcx), %rdx
	movl	$-15, %eax
	cmpq	$2, %rdx
	ja	.LBB1_6
# BB#4:                                 # %if.end.40
	movl	-8(%rdi), %esi
	movl	8(%rdi), %edx
	movq	(%rbx), %rdi
	callq	gs_setscreenphase
	testl	%eax, %eax
	js	.LBB1_6
# BB#5:                                 # %if.then.48
	addq	$-48, 624(%rbx)
.LBB1_6:                                # %cleanup
	popq	%rbx
	retq
.LBB1_7:                                # %if.then
	addq	$-32, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB1_8:                                # %if.then.11
	addq	$-16, %rdi
.LBB1_9:                                # %if.then.21
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end1:
	.size	zsetscreenphase, .Lfunc_end1-zsetscreenphase
	.cfi_endproc

	.align	16, 0x90
	.type	zimage2,@function
zimage2:                                # @zimage2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 128
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB2_28
# BB#1:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB2_27
# BB#2:                                 # %do.end
	leaq	24(%rsp), %rdi
	callq	gs_image2_t_init
	movq	8(%r14), %rdi
	leaq	32(%rsp), %rcx
	movl	$.L.str.8, %edx
	movq	%rbx, %rsi
	callq	dict_matrix_param
	testl	%eax, %eax
	js	.LBB2_11
# BB#3:                                 # %lor.lhs.false
	leaq	16(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB2_11
# BB#4:                                 # %lor.lhs.false.13
	leaq	64(%rsp), %rdx
	movl	$.L.str.10, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	jne	.LBB2_11
# BB#5:                                 # %lor.lhs.false.17
	leaq	68(%rsp), %rdx
	movl	$.L.str.11, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	jne	.LBB2_11
# BB#6:                                 # %lor.lhs.false.21
	leaq	72(%rsp), %rdx
	movl	$.L.str.12, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	jne	.LBB2_11
# BB#7:                                 # %lor.lhs.false.21
	xorps	%xmm0, %xmm0
	ucomiss	72(%rsp), %xmm0
	jae	.LBB2_11
# BB#8:                                 # %lor.lhs.false.29
	leaq	76(%rsp), %rdx
	movl	$.L.str.13, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	jne	.LBB2_11
# BB#9:                                 # %lor.lhs.false.29
	xorps	%xmm0, %xmm0
	ucomiss	76(%rsp), %xmm0
	jae	.LBB2_11
# BB#10:                                # %lor.lhs.false.37
	leaq	88(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB2_11
# BB#12:                                # %if.end.44
	movq	16(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB2_14
# BB#13:                                # %land.lhs.true
	movq	8(%r14), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	*128(%rax)
	movl	$st_igstate_obj, %ecx
	cmpq	%rcx, %rax
	movq	16(%rsp), %rdi
	je	.LBB2_15
.LBB2_14:                               # %if.then.59
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB2_27
.LBB2_28:                               # %if.then
	movq	%rbx, %rdi
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB2_11:                               # %if.then.41
	testl	%eax, %eax
	movl	$-15, %ebp
	cmovsl	%eax, %ebp
.LBB2_27:                               # %cleanup.132
	movl	%ebp, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_15:                               # %if.end.61
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	%rax, 56(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_18
# BB#16:                                # %do.body.70
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$16, (%rax)
	je	.LBB2_27
# BB#17:                                # %do.end.82
	movq	8(%r14), %rsi
	xorl	%edi, %edi
	movl	$.L.str.16, %edx
	callq	gx_path_alloc_shared
	movq	%rax, 80(%rsp)
	movl	$-25, %ebp
	testq	%rax, %rax
	jne	.LBB2_19
	jmp	.LBB2_27
.LBB2_18:                               # %if.else
	movq	$0, 80(%rsp)
.LBB2_19:                               # %cleanup.cont
	leaq	24(%rsp), %rsi
	movl	$.L.str.17, %edx
	movq	%r14, %rdi
	callq	process_non_source_image
	movl	%eax, %ebp
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_25
# BB#20:                                # %if.then.96
	testl	%ebp, %ebp
	js	.LBB2_27
# BB#21:                                # %if.end.100
	callq	gx_path_is_null
	testl	%eax, %eax
	je	.LBB2_23
# BB#22:                                # %if.end.110.thread
	movw	$3584, (%rsp)           # imm = 0xE00
	movq	80(%rsp), %rdi
	movl	$.L.str.16, %esi
	callq	gx_path_free
	jmp	.LBB2_24
.LBB2_23:                               # %if.end.110
	movq	(%r14), %rdx
	movq	80(%rsp), %rcx
	leaq	(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	make_upath
	movl	%eax, %ebp
	movq	80(%rsp), %rdi
	movl	$.L.str.16, %esi
	callq	gx_path_free
	testl	%ebp, %ebp
	js	.LBB2_27
.LBB2_24:                               # %cleanup.117
	leaq	368(%r14), %rcx
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	dict_put_string
	movl	%eax, %ebp
.LBB2_25:                               # %cleanup.cont.124
	testl	%ebp, %ebp
	js	.LBB2_27
# BB#26:                                # %if.then.127
	addq	$-16, 624(%r14)
	jmp	.LBB2_27
.Lfunc_end2:
	.size	zimage2, .Lfunc_end2-zimage2
	.cfi_endproc

	.align	16, 0x90
	.type	zeoviewclip,@function
zeoviewclip:                            # @zeoviewclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_eoviewclip           # TAILCALL
.Lfunc_end3:
	.size	zeoviewclip, .Lfunc_end3-zeoviewclip
	.cfi_endproc

	.align	16, 0x90
	.type	zinitviewclip,@function
zinitviewclip:                          # @zinitviewclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_initviewclip         # TAILCALL
.Lfunc_end4:
	.size	zinitviewclip, .Lfunc_end4-zinitviewclip
	.cfi_endproc

	.align	16, 0x90
	.type	zviewclip,@function
zviewclip:                              # @zviewclip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_viewclip             # TAILCALL
.Lfunc_end5:
	.size	zviewclip, .Lfunc_end5-zviewclip
	.cfi_endproc

	.align	16, 0x90
	.type	zviewclippath,@function
zviewclippath:                          # @zviewclippath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_viewclippath         # TAILCALL
.Lfunc_end6:
	.size	zviewclippath, .Lfunc_end6-zviewclippath
	.cfi_endproc

	.align	16, 0x90
	.type	zdefineusername,@function
zdefineusername:                        # @zdefineusername
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 96
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	-15(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB7_1
# BB#2:                                 # %if.end
	movq	-8(%rbx), %rdx
	movl	$-15, %eax
	cmpq	$16777215, %rdx         # imm = 0xFFFFFF
	ja	.LBB7_23
# BB#3:                                 # %do.end
	movzbl	1(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB7_4
# BB#5:                                 # %if.end.17
	movq	48(%r14), %rax
	movq	576(%rax), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_8
# BB#6:                                 # %if.then.20
	leaq	576(%rax), %rdi
	movl	$.L.str.18, %edx
	movq	%rax, %rsi
	callq	create_names_array
	testl	%eax, %eax
	js	.LBB7_23
# BB#7:                                 # %if.then.20.if.end.37_crit_edge
	movq	48(%r14), %rax
	movq	576(%rax), %rsi
	movq	-8(%rbx), %rdx
.LBB7_8:                                # %if.end.37
	leaq	8(%r14), %r15
	movq	(%r15), %rdi
	leaq	24(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB7_12
# BB#9:                                 # %if.then.51
	movzbl	25(%rsp), %ecx
	cmpl	$14, %ecx
	je	.LBB7_21
# BB#10:                                # %if.then.51
	movl	$-7, %eax
	cmpl	$13, %ecx
	jne	.LBB7_23
# BB#11:                                # %sw.bb
	movq	32(%rsp), %rcx
	cmpq	8(%rbx), %rcx
	jne	.LBB7_23
	jmp	.LBB7_22
.LBB7_1:                                # %if.then
	addq	$-16, %rbx
.LBB7_4:                                # %if.then.15
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB7_23:                               # %cleanup.162
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_12:                               # %if.else
	movq	48(%r14), %rdi
	movq	576(%rdi), %rax
	movl	4(%rax), %r12d
	movl	-8(%rbx), %eax
	incl	%eax
	movl	$100, %ebp
	cmpl	$100, %eax
	jb	.LBB7_17
# BB#13:                                # %if.else.77
	movl	$16777216, %ebp         # imm = 0x1000000
	cmpl	$8388608, %eax          # imm = 0x800000
	ja	.LBB7_17
# BB#14:                                # %if.else.81
	movl	%eax, %ecx
	shrl	%ecx
	cmpl	%r12d, %ecx
	jae	.LBB7_16
# BB#15:                                # %if.then.84
	leal	(%r12,%r12), %eax
	cmpl	$8388608, %r12d         # imm = 0x800000
	movl	$16777216, %ebp         # imm = 0x1000000
	cmovbel	%eax, %ebp
	jmp	.LBB7_17
.LBB7_16:                               # %if.else.87
	addl	%eax, %eax
	movl	%eax, %ebp
.LBB7_17:                               # %if.end.91
	callq	*32(%rdi)
	movq	%rax, %r13
	leaq	8(%rsp), %rsi
	movl	$112, %edx
	movl	$.L.str.19, %r8d
	movq	%r13, %rdi
	movl	%ebp, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB7_23
# BB#18:                                # %if.end.108
	movq	16(%rsp), %rdi
	movq	48(%r14), %rax
	movq	576(%rax), %rax
	movq	8(%rax), %rsi
	movl	%r12d, %edx
	movq	%r15, %rcx
	callq	refcpy_to_new
	movq	%r12, %rdi
	shlq	$4, %rdi
	addq	16(%rsp), %rdi
	subl	%r12d, %ebp
	movl	76(%r14), %edx
	movl	%ebp, %esi
	callq	refset_null_new
	testl	%r12d, %r12d
	je	.LBB7_20
# BB#19:                                # %if.then.122
	movq	48(%r14), %rax
	movq	576(%rax), %rsi
	movl	$.L.str.20, %edx
	movq	%r13, %rdi
	callq	gs_free_ref_array
.LBB7_20:                               # %cleanup.140.thread
	movq	48(%r14), %rax
	movq	576(%rax), %rax
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
.LBB7_21:                               # %if.end.145
	movq	48(%r14), %rax
	movq	576(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbx), %rcx
	shlq	$4, %rcx
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax,%rcx)
.LBB7_22:                               # %ret
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB7_23
.Lfunc_end7:
	.size	zdefineusername, .Lfunc_end7-zdefineusername
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.currentscreenphase"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"3.setscreenphase"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.image2"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0eoviewclip"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0initviewclip"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0viewclip"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0viewclippath"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"2defineusername"
	.size	.L.str.7, 16

	.type	zdps_op_defs,@object    # @zdps_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdps_op_defs
	.align	16
zdps_op_defs:
	.quad	.L.str
	.quad	zcurrentscreenphase
	.quad	.L.str.1
	.quad	zsetscreenphase
	.quad	.L.str.2
	.quad	zimage2
	.quad	.L.str.3
	.quad	zeoviewclip
	.quad	.L.str.4
	.quad	zinitviewclip
	.quad	.L.str.5
	.quad	zviewclip
	.quad	.L.str.6
	.quad	zviewclippath
	.quad	.L.str.7
	.quad	zdefineusername
	.zero	16
	.size	zdps_op_defs, 144

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"ImageMatrix"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DataSource"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"XOrigin"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"YOrigin"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Width"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Height"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"PixelCopy"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UnpaintedPath"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	".image2 UnpaintedPath"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	".image2"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"defineusername"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"defineusername(new)"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"defineusername(old)"
	.size	.L.str.20, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
