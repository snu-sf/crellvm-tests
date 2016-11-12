	.text
	.file	"zshade.bc"
	.align	16, 0x90
	.type	zcurrentsmoothness,@function
zcurrentsmoothness:                     # @zcurrentsmoothness
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB0_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentsmoothness
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	zcurrentsmoothness, .Lfunc_end0-zcurrentsmoothness
	.cfi_endproc

	.align	16, 0x90
	.type	zsetsmoothness,@function
zsetsmoothness:                         # @zsetsmoothness
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %if.end
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setsmoothness
	testl	%eax, %eax
	js	.LBB1_4
# BB#3:                                 # %if.end.5
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_4
.LBB1_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB1_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zsetsmoothness, .Lfunc_end1-zsetsmoothness
	.cfi_endproc

	.align	16, 0x90
	.type	zshfill,@function
zshfill:                                # @zshfill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movzwl	(%rcx), %edx
	andl	$15872, %edx            # imm = 0x3E00
	movl	$-20, %eax
	cmpl	$2048, %edx             # imm = 0x800
	jne	.LBB2_3
# BB#1:                                 # %lor.lhs.false
	movq	8(%rcx), %rsi
	movq	(%rbx), %rdi
	callq	gs_shfill
	testl	%eax, %eax
	js	.LBB2_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	zshfill, .Lfunc_end2-zshfill
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading1,@function
zbuildshading1:                         # @zbuildshading1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_1, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end3:
	.size	zbuildshading1, .Lfunc_end3-zbuildshading1
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading2,@function
zbuildshading2:                         # @zbuildshading2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_2, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end4:
	.size	zbuildshading2, .Lfunc_end4-zbuildshading2
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading3,@function
zbuildshading3:                         # @zbuildshading3
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_3, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end5:
	.size	zbuildshading3, .Lfunc_end5-zbuildshading3
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading4,@function
zbuildshading4:                         # @zbuildshading4
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_4, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end6:
	.size	zbuildshading4, .Lfunc_end6-zbuildshading4
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading5,@function
zbuildshading5:                         # @zbuildshading5
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_5, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end7:
	.size	zbuildshading5, .Lfunc_end7-zbuildshading5
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading6,@function
zbuildshading6:                         # @zbuildshading6
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_6, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end8:
	.size	zbuildshading6, .Lfunc_end8-zbuildshading6
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshading7,@function
zbuildshading7:                         # @zbuildshading7
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$build_shading_7, %esi
	jmp	build_shading           # TAILCALL
.Lfunc_end9:
	.size	zbuildshading7, .Lfunc_end9-zbuildshading7
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildshadingpattern,@function
zbuildshadingpattern:                   # @zbuildshadingpattern
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
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	subq	$344, %rsp              # imm = 0x158
.Ltmp13:
	.cfi_def_cfa_offset 384
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-32(%rbx), %r14
	movzbl	-31(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB10_1
# BB#2:                                 # %do.body
	movq	-24(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB10_11
# BB#3:                                 # %do.end
	leaq	272(%rsp), %rdi
	callq	gs_pattern2_init
	movq	8(%r15), %rdi
	leaq	-16(%rbx), %rsi
	leaq	320(%rsp), %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB10_7
# BB#4:                                 # %lor.lhs.false
	leaq	288(%rsp), %rsi
	movq	8(%r15), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%r15, %r8
	callq	dict_uid_param
	cmpl	$1, %eax
	jne	.LBB10_7
# BB#5:                                 # %lor.lhs.false.16
	movzwl	(%rbx), %ecx
	andl	$15872, %ecx            # imm = 0x3E00
	movl	$-20, %eax
	cmpl	$2048, %ecx             # imm = 0x800
	jne	.LBB10_7
# BB#6:                                 # %lor.lhs.false.20
	movq	8(%rbx), %rax
	movq	%rax, 312(%rsp)
	movq	8(%r15), %rdx
	leaq	264(%rsp), %rdi
	movq	%r14, %rsi
	callq	int_pattern_alloc
	testl	%eax, %eax
	js	.LBB10_7
# BB#8:                                 # %if.end.29
	movq	264(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	(%r15), %rcx
	movq	8(%r15), %r8
	leaq	(%rsp), %rdi
	leaq	272(%rsp), %rsi
	leaq	320(%rsp), %rdx
	callq	gs_make_pattern
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_9
# BB#10:                                # %if.end.40
	movq	(%rsp), %rax
	movq	%rax, -8(%rbx)
	movl	56(%r15), %eax
	orl	$96, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, -16(%rbx)
	addq	$-16, 624(%r15)
	jmp	.LBB10_11
.LBB10_1:                               # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB10_11
.LBB10_7:                               # %if.then.26
	testl	%eax, %eax
	movl	$-15, %ebp
	cmovsl	%eax, %ebp
.LBB10_11:                              # %cleanup
	movl	%ebp, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_9:                               # %if.then.35
	movq	8(%r15), %rdi
	movq	264(%rsp), %rsi
	movl	$.L.str.29, %edx
	callq	*24(%rdi)
	jmp	.LBB10_11
.Lfunc_end10:
	.size	zbuildshadingpattern, .Lfunc_end10-zbuildshadingpattern
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading,@function
build_shading:                          # @build_shading
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 176
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	624(%r14), %r12
	movzbl	1(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB11_1
# BB#2:                                 # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsp)
	movq	$0, 40(%rsp)
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	testl	%eax, %eax
	js	.LBB11_3
# BB#4:                                 # %if.end.7
	movq	%rbx, 24(%rsp)
	movq	%rbx, %rdi
	callq	rc_increment_cs
	leaq	8(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_12
# BB#5:                                 # %if.then.12
	movq	8(%r14), %rdi
	movl	$st_client_color, %esi
	movl	$.L.str.14, %edx
	callq	*72(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB11_9
# BB#6:                                 # %if.end.19
	movq	$0, (%r13)
	movq	%r13, 40(%rsp)
	movq	8(%r14), %rbp
	movq	%rbx, %rdi
	callq	gs_color_space_num_components
	addq	$8, %r13
	movl	$.L.str.13, %edx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %ecx
	movq	%r13, %r8
	callq	dict_floats_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_7
.LBB11_12:                              # %cleanup.cont.33
	leaq	8(%rsp), %rdx
	movl	$.L.str.15, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_13
# BB#14:                                # %if.else
	movq	8(%r14), %rdi
	leaq	96(%rsp), %r8
	movl	$.L.str.15, %edx
	movl	$4, %ecx
	xorl	%r9d, %r9d
	movq	%r12, %rsi
	callq	dict_floats_param
	movl	%eax, %ebp
	cmpl	$4, %ebp
	jne	.LBB11_28
# BB#15:                                # %if.then.44
	movaps	96(%rsp), %xmm0
	movq	104(%rsp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	cmpnleps	%xmm1, %xmm2
	pshufd	$212, %xmm2, %xmm2      # xmm2 = xmm2[0,1,1,3]
	psllq	$32, %xmm2
	pshufd	$237, %xmm2, %xmm3      # xmm3 = xmm2[1,3,2,3]
	psrad	$31, %xmm2
	pshufd	$237, %xmm2, %xmm2      # xmm2 = xmm2[1,3,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	movdqa	%xmm2, %xmm3
	pandn	%xmm0, %xmm3
	movdqa	%xmm2, %xmm4
	pandn	%xmm1, %xmm4
	pand	%xmm2, %xmm1
	por	%xmm3, %xmm1
	pand	%xmm0, %xmm2
	por	%xmm4, %xmm2
	cvtps2pd	%xmm2, %xmm0
	cvtps2pd	%xmm1, %xmm1
	movups	%xmm1, 56(%rsp)
	movups	%xmm0, 72(%rsp)
	movl	$1, 48(%rsp)
	jmp	.LBB11_16
.LBB11_1:                               # %if.then
	movq	%r12, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB11_27
.LBB11_3:                               # %cleanup.30.thread51
	movl	$.L.str.12, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	movl	$-20, %ebp
	jmp	.LBB11_27
.LBB11_13:                              # %if.then.37
	movl	$0, 48(%rsp)
.LBB11_16:                              # %if.end.98
	leaq	88(%rsp), %rcx
	movl	$.L.str.16, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	dict_bool_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_17
# BB#18:                                # %if.end.103
	movq	8(%r14), %r8
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*%r15
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_9
# BB#19:                                # %if.end.110
	movq	16(%rsp), %rax
	movq	16(%rax), %rdi
	callq	gx_color_space_needs_cie_caches
	testl	%eax, %eax
	je	.LBB11_20
# BB#21:                                # %do.body
	movq	16(%rsp), %rax
	movq	24(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_24
# BB#22:                                # %do.end
	decq	24(%rsi)
	jne	.LBB11_24
# BB#23:                                # %do.end.134
	movq	32(%rsi), %rdi
	movl	$.L.str.14, %edx
	callq	*40(%rsi)
	movq	16(%rsp), %rax
	movq	$0, 24(%rax)
.LBB11_24:                              # %do.end.155
	movq	(%r14), %rdi
	callq	gx_currentciecaches
	movq	16(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movq	16(%rsp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB11_26
# BB#25:                                # %do.body.165
	incq	24(%rcx)
	jmp	.LBB11_26
.LBB11_28:                              # %if.else.96
	movl	$.L.str.15, %edx
	jmp	.LBB11_8
.LBB11_17:                              # %if.then.102
	movl	$.L.str.16, %edx
	jmp	.LBB11_8
.LBB11_7:                               # %if.then.27
	movl	$.L.str.13, %edx
.LBB11_8:                               # %fail
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gs_errorinfo_put_pair_from_dict
.LBB11_9:                               # %fail
	movq	8(%r14), %rdi
	movq	40(%rsp), %rsi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
	movq	24(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB11_11
# BB#10:                                # %if.then.194
	movl	$.L.str.14, %esi
	callq	rc_decrement_only_cs
.LBB11_11:                              # %if.end.196
	testl	%ebp, %ebp
	movl	$-15, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB11_27
.LBB11_20:                              # %if.end.110.if.end.178_crit_edge
	movq	16(%rsp), %rax
.LBB11_26:                              # %if.end.178
	movq	%rax, 8(%r12)
	movl	76(%r14), %eax
	orl	56(%r14), %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%r12)
.LBB11_27:                              # %cleanup.199
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	build_shading, .Lfunc_end11-build_shading
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_1,@function
build_shading_1:                        # @build_shading_1
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
	subq	$152, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 208
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
	movq	%r8, %r14
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	64(%rdx), %rax
	movq	%rax, 80(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	100(%rsp), %r12
	movq	%r12, %rdi
	callq	gs_make_identity
	movq	$0, 128(%rsp)
	leaq	84(%rsp), %r13
	movl	$.L.str.17, %edx
	movl	$4, %ecx
	movl	$build_shading_1.default_Domain, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %r8
	callq	dict_floats_param_errorinfo
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_15
# BB#1:                                 # %if.end
	movss	84(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	88(%rsp), %xmm0
	ja	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	movss	92(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	96(%rsp), %xmm0
	jbe	.LBB12_4
.LBB12_3:                               # %if.then.10
	movl	$.L.str.17, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	movl	$-15, %ebp
.LBB12_15:                              # %land.lhs.true
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_17
# BB#16:                                # %if.then.40
	movl	$.L.str.19, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB12_17:                              # %if.end.42
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_4:                               # %if.end.11
	leaq	8(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_7
# BB#5:                                 # %if.then.14
	movq	8(%r15), %rdi
	movq	8(%rsp), %rsi
	movq	%r12, %rdx
	callq	read_matrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_6
.LBB12_7:                               # %if.end.20
	leaq	128(%rsp), %rdx
	movl	$2, %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %r8
	movq	%r13, %r9
	callq	build_shading_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_15
# BB#8:                                 # %if.end.27
	cmpq	$0, 128(%rsp)
	je	.LBB12_9
# BB#10:                                # %land.lhs.true.i
	movq	16(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB12_14
# BB#11:                                # %if.then.i
	leaq	144(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_13
# BB#12:                                # %if.then.3.i
	movq	144(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	gs_errorinfo_put_pair
.LBB12_13:                              # %check_indexed_vs_function.exit.thread
	movl	$-20, %ebp
	jmp	.LBB12_15
.LBB12_6:                               # %if.then.18
	movl	$.L.str.18, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	jmp	.LBB12_15
.LBB12_9:                               # %if.then.30
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_errorinfo_put_pair_from_dict
	movl	$-21, %ebp
	jmp	.LBB12_15
.LBB12_14:                              # %out
	leaq	16(%rsp), %rsi
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r14, %rdx
	callq	gs_shading_Fb_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB12_17
	jmp	.LBB12_15
.Lfunc_end12:
	.size	build_shading_1, .Lfunc_end12-build_shading_1
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_function,@function
build_shading_function:                 # @build_shading_function
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
	subq	$104, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 160
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
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	$0, (%r15)
	leaq	96(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB13_14
# BB#1:                                 # %if.end
	movq	96(%rsp), %rsi
	movzwl	(%rsi), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB13_11
# BB#2:                                 # %if.then.3
	movl	4(%rsi), %r14d
	movl	$-7, %ebp
	testb	$32, %al
	je	.LBB13_14
# BB#3:                                 # %do.end
	movl	$-15, %ebp
	testl	%r14d, %r14d
	je	.LBB13_14
# BB#4:                                 # %if.end.14
	leaq	88(%rsp), %rsi
	movl	%r14d, %edi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	alloc_function_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_14
# BB#5:                                 # %for.body.lr.ph
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %r14d
	movq	%r15, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	32(%rsp), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB13_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	96(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	array_get
	movq	88(%rsp), %rdx
	addq	%r13, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %r8           # 8-byte Reload
	movl	%r14d, %r9d
	callq	fn_build_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_8
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB13_6 Depth=1
	incq	%r12
	addq	$8, %r13
	cmpq	8(%rsp), %r12           # 8-byte Folded Reload
	jb	.LBB13_6
.LBB13_8:                               # %for.end
	movl	%r14d, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 80(%rsp)
	testl	%ebp, %ebp
	js	.LBB13_10
# BB#9:                                 # %if.end.34
	leaq	48(%rsp), %rsi
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	gs_function_AdOt_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB13_14
.LBB13_10:                              # %if.then.37
	leaq	48(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gs_function_AdOt_free_params
	jmp	.LBB13_14
.LBB13_11:                              # %if.else
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %r8           # 8-byte Reload
	movl	%r12d, %r9d
	callq	fn_build_function
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_14
# BB#12:                                # %if.end.49
	movq	(%r15), %rdi
	cmpl	%r12d, 72(%rdi)
	je	.LBB13_14
# BB#13:                                # %if.then.54
	movl	$1, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	*56(%rdi)
	movl	$-15, %ebp
.LBB13_14:                              # %cleanup.57
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	build_shading_function, .Lfunc_end13-build_shading_function
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_2,@function
build_shading_2:                        # @build_shading_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 192
.Ltmp63:
	.cfi_offset %rbx, -48
.Ltmp64:
	.cfi_offset %r12, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	64(%rdx), %rax
	movq	%rax, 80(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	84(%rsp), %rdx
	leaq	100(%rsp), %r8
	leaq	112(%rsp), %r9
	leaq	120(%rsp), %rax
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$4, %ecx
	callq	build_directional_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_7
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 112(%rsp)
	je	.LBB14_6
# BB#2:                                 # %land.lhs.true.i
	movq	16(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB14_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	gs_errorinfo_put_pair
.LBB14_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB14_7
.LBB14_6:                               # %lor.lhs.false.6
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_A_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB14_8
.LBB14_7:                               # %if.then
	movq	112(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB14_8:                               # %if.end
	movl	%ebp, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	build_shading_2, .Lfunc_end14-build_shading_2
	.cfi_endproc

	.align	16, 0x90
	.type	build_directional_shading,@function
build_directional_shading:              # @build_directional_shading
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 80
.Ltmp73:
	.cfi_offset %rbx, -40
.Ltmp74:
	.cfi_offset %r12, -32
.Ltmp75:
	.cfi_offset %r14, -24
.Ltmp76:
	.cfi_offset %r15, -16
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%r14), %rdi
	movl	$.L.str.20, %edx
	xorl	%r9d, %r9d
	movq	%rax, %r8
	callq	dict_floats_param
	movq	$0, (%r15)
	testl	%eax, %eax
	js	.LBB15_14
# BB#1:                                 # %lor.lhs.false
	movl	$.L.str.17, %edx
	movl	$2, %ecx
	movl	$build_directional_shading.default_Domain, %r9d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %r8
	callq	dict_floats_param_errorinfo
	testl	%eax, %eax
	js	.LBB15_14
# BB#2:                                 # %lor.lhs.false.3
	movq	88(%rsp), %r8
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r12, %r9
	callq	build_shading_function
	testl	%eax, %eax
	js	.LBB15_14
# BB#3:                                 # %if.end
	movl	$-21, %eax
	cmpq	$0, (%r15)
	je	.LBB15_14
# BB#4:                                 # %if.end.7
	movq	80(%rsp), %r15
	leaq	32(%rsp), %rdx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_5
# BB#6:                                 # %if.else
	movq	32(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB15_7
# BB#8:                                 # %if.else.15
	movl	$-15, %eax
	cmpl	$2, 4(%rsi)
	jne	.LBB15_14
# BB#9:                                 # %if.else.20
	movq	8(%r14), %rdi
	leaq	16(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	movzbl	17(%rsp), %eax
	cmpl	$1, %eax
	jne	.LBB15_10
# BB#11:                                # %lor.lhs.false.30
	movq	8(%r14), %rdi
	movq	32(%rsp), %rsi
	leaq	(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	movzbl	1(%rsp), %eax
	cmpl	$1, %eax
	movl	$-20, %eax
	jne	.LBB15_14
# BB#12:                                # %cleanup
	movzwl	24(%rsp), %eax
	movl	%eax, (%r15)
	movzwl	8(%rsp), %eax
	movl	%eax, 4(%r15)
	jmp	.LBB15_13
.LBB15_5:                               # %if.then.10
	movq	$0, (%r15)
.LBB15_13:                              # %cleanup.53
	xorl	%eax, %eax
	jmp	.LBB15_14
.LBB15_7:
	movl	$-20, %eax
	jmp	.LBB15_14
.LBB15_10:
	movl	$-20, %eax
.LBB15_14:                              # %cleanup.53
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	build_directional_shading, .Lfunc_end15-build_directional_shading
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_3,@function
build_shading_3:                        # @build_shading_3
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
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 192
.Ltmp83:
	.cfi_offset %rbx, -48
.Ltmp84:
	.cfi_offset %r12, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	64(%rdx), %rax
	movq	%rax, 80(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	leaq	84(%rsp), %rdx
	leaq	108(%rsp), %r8
	leaq	120(%rsp), %r9
	leaq	128(%rsp), %rax
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$6, %ecx
	callq	build_directional_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB16_7
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 120(%rsp)
	je	.LBB16_6
# BB#2:                                 # %land.lhs.true.i
	movq	16(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB16_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB16_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	gs_errorinfo_put_pair
.LBB16_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB16_7
.LBB16_6:                               # %lor.lhs.false.6
	leaq	16(%rsp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_R_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB16_8
.LBB16_7:                               # %if.then
	movq	120(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB16_8:                               # %if.end
	movl	$-21, %eax
	cmpq	$0, 120(%rsp)
	je	.LBB16_10
# BB#9:                                 # %select.mid
	movl	%ebp, %eax
.LBB16_10:                              # %select.end
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	build_shading_3, .Lfunc_end16-build_shading_3
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_4,@function
build_shading_4:                        # @build_shading_4
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
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 192
.Ltmp94:
	.cfi_offset %rbx, -48
.Ltmp95:
	.cfi_offset %r12, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	64(%rdx), %rax
	movq	%rax, 64(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	(%rsp), %rdx
	movq	%rbx, %r9
	callq	build_mesh_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_10
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 120(%rsp)
	je	.LBB17_6
# BB#2:                                 # %land.lhs.true.i
	movq	(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB17_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB17_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	gs_errorinfo_put_pair
.LBB17_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB17_10
.LBB17_6:                               # %lor.lhs.false.4
	cmpl	$2, 80(%rsp)
	jne	.LBB17_8
# BB#7:                                 # %flag_bits_param.exit.thread
	movl	$0, 128(%rsp)
	jmp	.LBB17_9
.LBB17_8:                               # %flag_bits_param.exit
	leaq	128(%rsp), %r9
	movl	$.L.str.27, %esi
	movl	$2, %edx
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_10
.LBB17_9:                               # %lor.lhs.false.7
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_FfGt_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB17_11
.LBB17_10:                              # %if.then
	movq	120(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	112(%rsp), %rsi
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB17_11:                              # %if.end
	movl	%ebp, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	build_shading_4, .Lfunc_end17-build_shading_4
	.cfi_endproc

	.align	16, 0x90
	.type	build_mesh_shading,@function
build_mesh_shading:                     # @build_mesh_shading
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
	pushq	%r13
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 96
.Ltmp106:
	.cfi_offset %rbx, -56
.Ltmp107:
	.cfi_offset %r12, -48
.Ltmp108:
	.cfi_offset %r13, -40
.Ltmp109:
	.cfi_offset %r14, -32
.Ltmp110:
	.cfi_offset %r15, -24
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	$0, (%rcx)
	movq	$0, (%r14)
	leaq	32(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r13, %rdi
	callq	dict_find_string
	movl	$-15, %r15d
	testl	%eax, %eax
	jle	.LBB18_34
# BB#1:                                 # %if.end
	movq	32(%rsp), %rdi
	movzwl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB18_6
# BB#2:                                 # %if.then.3
	movl	4(%rdi), %ebp
	movl	$4, %edx
	movl	$.L.str.24, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*88(%r12)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB18_34
# BB#3:                                 # %if.end.9
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	32(%rsp), %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	movq	%rax, %rcx
	movq	%rax, %r14
	callq	process_float_array
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_4
# BB#5:                                 # %cleanup
	movl	$2, 80(%rbx)
	movq	%r14, 88(%rbx)
	movq	%r14, 8(%rsp)           # 8-byte Spill
	shll	$2, %ebp
	movl	%ebp, 96(%rbx)
	movq	$data_source_access_bytes, 72(%rbx)
	movq	(%rsp), %r14            # 8-byte Reload
	jmp	.LBB18_20
.LBB18_6:                               # %if.else
	movzbl	1(%rdi), %ecx
	cmpl	$18, %ecx
	jne	.LBB18_7
# BB#17:                                # %do.body.83
	movl	$-7, %r15d
	testb	$32, %al
	je	.LBB18_34
# BB#18:                                # %do.end.91
	movl	$0, 80(%rbx)
	movq	8(%rdi), %rax
	movq	%rax, 88(%rbx)
	movl	4(%rdi), %eax
	movl	%eax, 96(%rbx)
	movq	$data_source_access_string, 72(%rbx)
	jmp	.LBB18_19
.LBB18_7:                               # %if.else
	movl	$-20, %r15d
	cmpl	$3, %ecx
	jne	.LBB18_34
# BB#8:                                 # %sw.bb
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB18_9
# BB#11:                                # %do.body.44
	movq	8(%rdi), %rbp
	movzwl	264(%rbp), %ecx
	movl	4(%rdi), %eax
	cmpl	%eax, %ecx
	je	.LBB18_16
# BB#12:                                # %if.then.50
	testw	%cx, %cx
	jne	.LBB18_15
# BB#13:                                # %land.lhs.true
	movzwl	266(%rbp), %ecx
	cmpl	%eax, %ecx
	jne	.LBB18_15
# BB#14:                                # %if.then.60
	callq	file_switch_to_read
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB18_16
	jmp	.LBB18_34
.LBB18_4:                               # %if.then.13
	movl	$.L.str.24, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	.LBB18_33
.LBB18_9:                               # %if.then.35
	movzbl	%cl, %eax
	movl	$-7, %r15d
	cmpl	$3, %eax
	je	.LBB18_34
# BB#10:                                # %cond.true
	callq	check_type_failed
	movl	%eax, %r15d
	jmp	.LBB18_34
.LBB18_15:                              # %if.else.69
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	256(%rax), %rbp
.LBB18_16:                              # %cleanup.80
	movl	$3, 80(%rbx)
	movq	%rbp, 88(%rbx)
	movq	$data_source_access_stream, 72(%rbx)
.LBB18_19:                              # %if.end.107
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB18_20:                              # %if.end.107
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r12, %r8
	callq	build_shading_function
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_32
# BB#21:                                # %if.end.114
	cmpl	$2, 80(%rbx)
	jne	.LBB18_23
# BB#22:                                # %if.then.119
	movq	$0, 104(%rbx)
	jmp	.LBB18_34
.LBB18_23:                              # %if.else.120
	movl	$6, %ebp
	cmpq	$0, (%r14)
	jne	.LBB18_25
# BB#24:                                # %cond.false.124
	movq	(%rbx), %rdi
	callq	gs_color_space_num_components
	leal	4(%rax,%rax), %ebp
.LBB18_25:                              # %cond.end.126
	leaq	104(%rbx), %r9
	movl	$.L.str.25, %esi
	movl	$1, %edx
	movl	$32, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_30
# BB#26:                                # %land.lhs.true.133
	addq	$108, %rbx
	movl	$.L.str.26, %esi
	movl	$1, %edx
	movl	$16, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbx, %r9
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_30
# BB#27:                                # %if.then.138
	movl	$4, %edx
	movl	$.L.str.24, %ecx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	*88(%r12)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB18_30
# BB#28:                                # %if.else.145
	movl	$.L.str.22, %edx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	%ebp, %ecx
	movq	%rax, %r8
	callq	dict_floats_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB18_34
# BB#29:                                # %if.then.149
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rsi
	movl	$.L.str.24, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	$0, (%rbx)
.LBB18_30:                              # %if.then.158
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB18_32
# BB#31:                                # %if.then.161
	movl	$1, %esi
	movq	%r12, %rdx
	callq	*56(%rdi)
	movq	$0, (%r14)
.LBB18_32:                              # %if.end.163
	movl	$.L.str.24, %edx
	movq	%r12, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB18_33:                              # %cleanup.167
	callq	*24(%r12)
.LBB18_34:                              # %cleanup.167
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	build_mesh_shading, .Lfunc_end18-build_mesh_shading
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_5,@function
build_shading_5:                        # @build_shading_5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 192
.Ltmp118:
	.cfi_offset %rbx, -48
.Ltmp119:
	.cfi_offset %r12, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	64(%rdx), %rax
	movq	%rax, 64(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	(%rsp), %rdx
	movq	%rbx, %r9
	callq	build_mesh_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_8
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 120(%rsp)
	je	.LBB19_6
# BB#2:                                 # %land.lhs.true.i
	movq	(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB19_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r12, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	gs_errorinfo_put_pair
.LBB19_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB19_8
.LBB19_6:                               # %lor.lhs.false.4
	leaq	128(%rsp), %r9
	movl	$.L.str.28, %esi
	movl	$2, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_8
# BB#7:                                 # %lor.lhs.false.7
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_LfGt_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB19_9
.LBB19_8:                               # %if.then
	movq	120(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	112(%rsp), %rsi
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB19_9:                               # %if.end
	movl	%ebp, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	build_shading_5, .Lfunc_end19-build_shading_5
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_6,@function
build_shading_6:                        # @build_shading_6
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp128:
	.cfi_def_cfa_offset 192
.Ltmp129:
	.cfi_offset %rbx, -48
.Ltmp130:
	.cfi_offset %r12, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	64(%rdx), %rax
	movq	%rax, 64(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	(%rsp), %rdx
	movq	%rbx, %r9
	callq	build_mesh_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_10
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 120(%rsp)
	je	.LBB20_6
# BB#2:                                 # %land.lhs.true.i
	movq	(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB20_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	gs_errorinfo_put_pair
.LBB20_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB20_10
.LBB20_6:                               # %lor.lhs.false.4
	cmpl	$2, 80(%rsp)
	jne	.LBB20_8
# BB#7:                                 # %flag_bits_param.exit.thread
	movl	$0, 128(%rsp)
	jmp	.LBB20_9
.LBB20_8:                               # %flag_bits_param.exit
	leaq	128(%rsp), %r9
	movl	$.L.str.27, %esi
	movl	$2, %edx
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_10
.LBB20_9:                               # %lor.lhs.false.7
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_Cp_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB20_11
.LBB20_10:                              # %if.then
	movq	120(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	112(%rsp), %rsi
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB20_11:                              # %if.end
	movl	%ebp, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	build_shading_6, .Lfunc_end20-build_shading_6
	.cfi_endproc

	.align	16, 0x90
	.type	build_shading_7,@function
build_shading_7:                        # @build_shading_7
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
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 192
.Ltmp140:
	.cfi_offset %rbx, -48
.Ltmp141:
	.cfi_offset %r12, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	64(%rdx), %rax
	movq	%rax, 64(%rsp)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	32(%rdx), %xmm2
	movups	48(%rdx), %xmm3
	movaps	%xmm3, 48(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	leaq	112(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	(%rsp), %rdx
	movq	%rbx, %r9
	callq	build_mesh_shading
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_10
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 120(%rsp)
	je	.LBB21_6
# BB#2:                                 # %land.lhs.true.i
	movq	(%rsp), %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB21_6
# BB#3:                                 # %if.then.i
	leaq	136(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB21_5
# BB#4:                                 # %if.then.3.i
	movq	136(%rsp), %rcx
	movl	$.L.str.19, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	gs_errorinfo_put_pair
.LBB21_5:                               # %check_indexed_vs_function.exit
	movl	$-20, %ebp
	jmp	.LBB21_10
.LBB21_6:                               # %lor.lhs.false.4
	cmpl	$2, 80(%rsp)
	jne	.LBB21_8
# BB#7:                                 # %flag_bits_param.exit.thread
	movl	$0, 128(%rsp)
	jmp	.LBB21_9
.LBB21_8:                               # %flag_bits_param.exit
	leaq	128(%rsp), %r9
	movl	$.L.str.27, %esi
	movl	$2, %edx
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_10
.LBB21_9:                               # %lor.lhs.false.7
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gs_shading_Tpp_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB21_11
.LBB21_10:                              # %if.then
	movq	120(%rsp), %rsi
	movl	$.L.str.19, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	112(%rsp), %rsi
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB21_11:                              # %if.end
	movl	%ebp, %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	build_shading_7, .Lfunc_end21-build_shading_7
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ll3dict"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentsmoothness"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1setsmoothness"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.shfill"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.buildshading1"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.buildshading2"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.buildshading3"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1.buildshading4"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.buildshading5"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.buildshading6"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1.buildshading7"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"3.buildshadingpattern"
	.size	.L.str.11, 22

	.type	zshade_op_defs,@object  # @zshade_op_defs
	.section	.rodata,"a",@progbits
	.globl	zshade_op_defs
	.align	16
zshade_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zcurrentsmoothness
	.quad	.L.str.2
	.quad	zsetsmoothness
	.quad	.L.str.3
	.quad	zshfill
	.quad	.L.str.4
	.quad	zbuildshading1
	.quad	.L.str.5
	.quad	zbuildshading2
	.quad	.L.str.6
	.quad	zbuildshading3
	.quad	.L.str.7
	.quad	zbuildshading4
	.quad	.L.str.8
	.quad	zbuildshading5
	.quad	.L.str.9
	.quad	zbuildshading6
	.quad	.L.str.10
	.quad	zbuildshading7
	.quad	.L.str.11
	.quad	zbuildshadingpattern
	.zero	16
	.size	zshade_op_defs, 208

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"ColorSpace"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Background"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"build_shading"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"BBox"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"AntiAlias"
	.size	.L.str.16, 10

	.type	build_shading_1.default_Domain,@object # @build_shading_1.default_Domain
	.section	.rodata,"a",@progbits
	.align	16
build_shading_1.default_Domain:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	build_shading_1.default_Domain, 16

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"Domain"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Matrix"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata,"a",@progbits
.L.str.19:
	.asciz	"Function"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Coords"
	.size	.L.str.20, 7

	.type	build_directional_shading.default_Domain,@object # @build_directional_shading.default_Domain
	.section	.rodata,"a",@progbits
	.align	4
build_directional_shading.default_Domain:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	build_directional_shading.default_Domain, 8

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Extend"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Decode"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"DataSource"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"build_mesh_shading"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"BitsPerCoordinate"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BitsPerComponent"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"BitsPerFlag"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"VerticesPerRow"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"int_pattern"
	.size	.L.str.29, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
