	.text
	.file	"gscrd.bc"
	.align	16, 0x90
	.type	cie_render1_enum_ptrs,@function
cie_render1_enum_ptrs:                  # @cie_render1_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB0_6
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#5:                                 # %sw.bb.1
	movq	376(%rsi), %rax
	jmp	.LBB0_4
.LBB0_6:                                # %sw.bb.3
	xorl	%eax, %eax
	cmpq	$0, 376(%rsi)
	je	.LBB0_8
# BB#7:                                 # %cond.true
	movq	152(%rsi), %rax
	movq	%rax, (%r8)
	movl	160(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	jmp	.LBB0_8
.LBB0_2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_8
# BB#3:                                 # %sw.bb
	movq	40(%rsi), %rax
.LBB0_4:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_8:                                # %cleanup
	retq
.Lfunc_end0:
	.size	cie_render1_enum_ptrs, .Lfunc_end0-cie_render1_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cie_render1_reloc_ptrs,@function
cie_render1_reloc_ptrs:                 # @cie_render1_reloc_ptrs
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 40(%rbx)
	movq	376(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	(%r14), %rax
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 376(%rbx)
	movq	(%r14), %rax
	movq	16(%rax), %rax
	addq	$152, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB1_1:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	cie_render1_reloc_ptrs, .Lfunc_end1-cie_render1_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	tpqr_identity,@function
tpqr_identity:                          # @tpqr_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	tpqr_identity, .Lfunc_end2-tpqr_identity
	.cfi_endproc

	.align	16, 0x90
	.type	tpqr_from_cache,@function
tpqr_from_cache:                        # @tpqr_from_cache
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	tpqr_from_cache, .Lfunc_end3-tpqr_from_cache
	.cfi_endproc

	.align	16, 0x90
	.type	tpqr_lookup,@function
tpqr_lookup:                            # @tpqr_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 176
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	%edi, %r12d
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_lib_device_list
	movl	$-21, %r14d
	testl	%eax, %eax
	jle	.LBB4_13
# BB#1:                                 # %for.body.lr.ph
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movslq	%eax, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax
	movq	(%rax,%rbp,8), %rdi
	callq	gs_devicename
	movq	168(%r15), %rsi
	movq	%rax, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB4_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB4_3
	jmp	.LBB4_13
.LBB4_4:                                # %if.then.4
	movq	32(%rsp), %rax
	movq	(%rax,%rbp,8), %rsi
	movq	16(%r15), %r13
	leaq	112(%rsp), %rdi
	movq	%r13, %rdx
	callq	gs_copydevice
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_11
# BB#5:                                 # %if.end.i
	leaq	56(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_c_param_list_write
	movq	56(%rsp), %rax
	movq	144(%r15), %rsi
	movq	%rbp, %rdi
	callq	*32(%rax)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_10
# BB#6:                                 # %if.then.3.i
	movq	112(%rsp), %rdi
	leaq	56(%rsp), %rsi
	xorl	%edx, %edx
	callq	gs_get_device_or_hw_params
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_10
# BB#7:                                 # %if.then.6.i
	leaq	56(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_read
	movq	144(%r15), %rsi
	leaq	40(%rsp), %rdx
	movq	%rbp, %rdi
	callq	param_read_string
	movl	$-15, %r14d
	testl	%eax, %eax
	jne	.LBB4_10
# BB#8:                                 # %land.lhs.true.i
	cmpl	$8, 48(%rsp)
	jne	.LBB4_10
# BB#9:                                 # %if.then.13.i
	leaq	136(%r15), %rdi
	movq	40(%rsp), %rsi
	movl	$8, %edx
	callq	memcpy
	xorl	%r14d, %r14d
.LBB4_10:                               # %if.end.19.i
	leaq	56(%rsp), %rdi
	callq	gs_c_param_list_release
	movq	112(%rsp), %rsi
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	callq	*24(%r13)
.LBB4_11:                               # %if.end.8
	testl	%r14d, %r14d
	js	.LBB4_13
# BB#12:                                # %if.end.11
	movl	%r12d, %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r15, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	*136(%r15)
	movl	%eax, %r14d
.LBB4_13:                               # %cleanup
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tpqr_lookup, .Lfunc_end4-tpqr_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	render_identity,@function
render_identity:                        # @render_identity
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end5:
	.size	render_identity, .Lfunc_end5-render_identity
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeLMN_cached_L,@function
EncodeLMN_cached_L:                     # @EncodeLMN_cached_L
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$584, %rdi              # imm = 0x248
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end6:
	.size	EncodeLMN_cached_L, .Lfunc_end6-EncodeLMN_cached_L
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeLMN_cached_M,@function
EncodeLMN_cached_M:                     # @EncodeLMN_cached_M
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$8856, %rdi             # imm = 0x2298
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end7:
	.size	EncodeLMN_cached_M, .Lfunc_end7-EncodeLMN_cached_M
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeLMN_cached_N,@function
EncodeLMN_cached_N:                     # @EncodeLMN_cached_N
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$17128, %rdi            # imm = 0x42E8
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end8:
	.size	EncodeLMN_cached_N, .Lfunc_end8-EncodeLMN_cached_N
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeABC_cached_A,@function
EncodeABC_cached_A:                     # @EncodeABC_cached_A
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$25424, %rdi            # imm = 0x6350
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end9:
	.size	EncodeABC_cached_A, .Lfunc_end9-EncodeABC_cached_A
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeABC_cached_B,@function
EncodeABC_cached_B:                     # @EncodeABC_cached_B
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$29600, %rdi            # imm = 0x73A0
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end10:
	.size	EncodeABC_cached_B, .Lfunc_end10-EncodeABC_cached_B
	.cfi_endproc

	.align	16, 0x90
	.type	EncodeABC_cached_C,@function
EncodeABC_cached_C:                     # @EncodeABC_cached_C
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$33776, %rdi            # imm = 0x83F0
	jmp	gs_cie_cached_value     # TAILCALL
.Lfunc_end11:
	.size	EncodeABC_cached_C, .Lfunc_end11-EncodeABC_cached_C
	.cfi_endproc

	.align	16, 0x90
	.type	render_table_identity,@function
render_table_identity:                  # @render_table_identity
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	shll	$7, %eax
	movl	%edi, %ecx
	shrl	%ecx
	orl	%eax, %ecx
	shrl	$5, %edi
	subl	%edi, %ecx
	movswl	%cx, %eax
	retq
.Lfunc_end12:
	.size	render_table_identity, .Lfunc_end12-render_table_identity
	.cfi_endproc

	.align	16, 0x90
	.type	RTT_cached_0,@function
RTT_cached_0:                           # @RTT_cached_0
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$511, %edi, %eax        # imm = 0x1FF
	movl	$2155905153, %ecx       # imm = 0x80808081
	imulq	%rax, %rcx
	shrq	$39, %rcx
	movswl	37992(%rsi,%rcx,2), %eax
	retq
.Lfunc_end13:
	.size	RTT_cached_0, .Lfunc_end13-RTT_cached_0
	.cfi_endproc

	.align	16, 0x90
	.type	RTT_cached_1,@function
RTT_cached_1:                           # @RTT_cached_1
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$511, %edi, %eax        # imm = 0x1FF
	movl	$2155905153, %ecx       # imm = 0x80808081
	imulq	%rax, %rcx
	shrq	$39, %rcx
	movswl	40080(%rsi,%rcx,2), %eax
	retq
.Lfunc_end14:
	.size	RTT_cached_1, .Lfunc_end14-RTT_cached_1
	.cfi_endproc

	.align	16, 0x90
	.type	RTT_cached_2,@function
RTT_cached_2:                           # @RTT_cached_2
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$511, %edi, %eax        # imm = 0x1FF
	movl	$2155905153, %ecx       # imm = 0x80808081
	imulq	%rax, %rcx
	shrq	$39, %rcx
	movswl	42168(%rsi,%rcx,2), %eax
	retq
.Lfunc_end15:
	.size	RTT_cached_2, .Lfunc_end15-RTT_cached_2
	.cfi_endproc

	.align	16, 0x90
	.type	RTT_cached_3,@function
RTT_cached_3:                           # @RTT_cached_3
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$511, %edi, %eax        # imm = 0x1FF
	movl	$2155905153, %ecx       # imm = 0x80808081
	imulq	%rax, %rcx
	shrq	$39, %rcx
	movswl	44256(%rsi,%rcx,2), %eax
	retq
.Lfunc_end16:
	.size	RTT_cached_3, .Lfunc_end16-RTT_cached_3
	.cfi_endproc

	.globl	gs_cie_render1_build
	.align	16, 0x90
	.type	gs_cie_render1_build,@function
gs_cie_render1_build:                   # @gs_cie_render1_build
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$st_cie_render1, %esi
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB17_2
# BB#1:                                 # %do.body.1
	movq	$1, 8(%rbx)
	movq	%r15, 16(%rbx)
	movq	$rc_free_struct_only, 24(%rbx)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 376(%rbx)
	movl	$0, (%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
.LBB17_2:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gs_cie_render1_build, .Lfunc_end17-gs_cie_render1_build
	.cfi_endproc

	.globl	gs_cie_render1_init_from
	.align	16, 0x90
	.type	gs_cie_render1_init_from,@function
gs_cie_render1_init_from:               # @gs_cie_render1_init_from
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %rbp
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	64(%rsp), %r14
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 32(%rbx)
	movq	%r13, 40(%rbx)
	movl	8(%r12), %eax
	movl	%eax, 56(%rbx)
	movq	(%r12), %rax
	movq	%rax, 48(%rbx)
	testq	%r15, %r15
	movl	$BlackPoint_default, %eax
	cmovneq	%r15, %rax
	movl	8(%rax), %ecx
	movl	%ecx, 68(%rbx)
	movq	(%rax), %rax
	movq	%rax, 60(%rbx)
	testq	%r14, %r14
	movl	$Matrix3_default, %eax
	cmoveq	%rax, %r14
	movq	32(%r14), %rcx
	movq	%rcx, 104(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movq	%rbp, %r14
	movups	%xmm1, 88(%rbx)
	movups	%xmm0, 72(%rbx)
	movq	72(%rsp), %rdx
	testq	%rdx, %rdx
	movl	$Range3_default, %ecx
	cmovneq	%rdx, %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, 128(%rbx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 112(%rbx)
	movq	80(%rsp), %rdx
	testq	%rdx, %rdx
	movl	$TransformPQR_default, %ecx
	cmovneq	%rdx, %rcx
	movq	32(%rcx), %rdx
	movq	%rdx, 168(%rbx)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 152(%rbx)
	movups	%xmm0, 136(%rbx)
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	cmovneq	%rcx, %rax
	movq	32(%rax), %rcx
	movq	%rcx, 208(%rbx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 192(%rbx)
	movups	%xmm0, 176(%rbx)
	movq	96(%rsp), %rcx
	testq	%rcx, %rcx
	movl	$Encode_default, %eax
	cmovneq	%rcx, %rax
	movq	16(%rax), %rcx
	movq	%rcx, 232(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, 216(%rbx)
	testq	%r14, %r14
	je	.LBB18_3
# BB#1:                                 # %land.lhs.true
	leaq	216(%rbx), %rdi
	movl	$EncodeLMN_from_cache, %esi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB18_3
# BB#2:                                 # %if.then
	leaq	584(%rbx), %rdi
	leaq	584(%r14), %rsi
	movl	$24840, %edx            # imm = 0x6108
	callq	memcpy
.LBB18_3:                               # %if.end
	movq	136(%rsp), %rbp
	movq	128(%rsp), %r15
	movq	104(%rsp), %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movl	$Range3_default, %eax
	cmovneq	%rcx, %rax
	movq	16(%rax), %rcx
	movq	%rcx, 256(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, 240(%rbx)
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movl	$Matrix3_default, %eax
	cmovneq	%rcx, %rax
	movq	32(%rax), %rcx
	movq	%rcx, 296(%rbx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 280(%rbx)
	movups	%xmm0, 264(%rbx)
	movq	120(%rsp), %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movl	$Encode_default, %eax
	cmovneq	%rcx, %rax
	movq	16(%rax), %rcx
	movq	%rcx, 320(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, 304(%rbx)
	testq	%r14, %r14
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true.62
	leaq	304(%rbx), %rdi
	movl	$EncodeABC_from_cache, %esi
	movl	$24, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB18_6
# BB#5:                                 # %if.then.66
	leaq	25424(%rbx), %rdi
	leaq	25424(%r14), %rsi
	movl	$12528, %edx            # imm = 0x30F0
	callq	memcpy
.LBB18_6:                               # %if.end.73
	testq	%r15, %r15
	movl	$Range3_default, %eax
	cmovneq	%r15, %rax
	movq	16(%rax), %rcx
	movq	%rcx, 344(%rbx)
	movups	(%rax), %xmm0
	movups	%xmm0, 328(%rbx)
	testq	%rbp, %rbp
	je	.LBB18_10
# BB#7:                                 # %if.then.81
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 400(%rbx)
	movups	%xmm2, 384(%rbx)
	movups	%xmm1, 368(%rbx)
	movups	%xmm0, 352(%rbx)
	testq	%r14, %r14
	je	.LBB18_11
# BB#8:                                 # %land.lhs.true.84
	leaq	384(%rbx), %rdi
	movl	$RenderTableT_from_cache, %esi
	movl	$32, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB18_11
# BB#9:                                 # %if.then.88
	leaq	37952(%rbx), %rdi
	leaq	37952(%r14), %rsi
	movl	$8352, %edx             # imm = 0x20A0
	callq	memcpy
	movl	46304(%r14), %eax
	movl	%eax, 46304(%rbx)
	jmp	.LBB18_11
.LBB18_10:                              # %if.else
	movq	$0, 376(%rbx)
	movups	RenderTableT_default+16(%rip), %xmm0
	movups	%xmm0, 400(%rbx)
	movups	RenderTableT_default(%rip), %xmm0
	movups	%xmm0, 384(%rbx)
.LBB18_11:                              # %if.end.102
	movl	$0, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_cie_render1_init_from, .Lfunc_end18-gs_cie_render1_init_from
	.cfi_endproc

	.globl	gs_cie_render1_initialize
	.align	16, 0x90
	.type	gs_cie_render1_initialize,@function
gs_cie_render1_initialize:              # @gs_cie_render1_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rbx
	movq	104(%rsp), %r13
	movq	96(%rsp), %r15
	movq	80(%rsp), %rbp
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 32(%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 40(%rbx)
	movl	8(%r12), %eax
	movl	%eax, 56(%rbx)
	movq	(%r12), %rax
	movq	%rax, 48(%rbx)
	movq	16(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movl	$BlackPoint_default, %eax
	cmovneq	%rcx, %rax
	movl	8(%rax), %ecx
	movl	%ecx, 68(%rbx)
	movq	(%rax), %rax
	movq	%rax, 60(%rbx)
	testq	%r14, %r14
	movl	$Matrix3_default, %ecx
	cmoveq	%rcx, %r14
	movq	32(%r14), %rax
	movq	%rax, 104(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 88(%rbx)
	movups	%xmm0, 72(%rbx)
	testq	%rbp, %rbp
	movl	$Range3_default, %eax
	cmoveq	%rax, %rbp
	movq	16(%rbp), %rdx
	movq	%rdx, 128(%rbx)
	movups	(%rbp), %xmm0
	movups	%xmm0, 112(%rbx)
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	movl	$TransformPQR_default, %edx
	cmovneq	%rsi, %rdx
	movq	32(%rdx), %rsi
	movq	%rsi, 168(%rbx)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 152(%rbx)
	movups	%xmm0, 136(%rbx)
	testq	%r15, %r15
	cmoveq	%rcx, %r15
	movq	32(%r15), %rdx
	movq	%rdx, 208(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	%xmm1, 192(%rbx)
	movups	%xmm0, 176(%rbx)
	testq	%r13, %r13
	movl	$Encode_default, %edx
	cmoveq	%rdx, %r13
	movq	16(%r13), %rsi
	movq	%rsi, 232(%rbx)
	movups	(%r13), %xmm0
	movups	%xmm0, 216(%rbx)
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	cmoveq	%rax, %rdi
	movq	16(%rdi), %rsi
	movq	%rsi, 256(%rbx)
	movups	(%rdi), %xmm0
	movups	%xmm0, 240(%rbx)
	movq	120(%rsp), %rsi
	testq	%rsi, %rsi
	cmovneq	%rsi, %rcx
	movq	32(%rcx), %rsi
	movq	%rsi, 296(%rbx)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 280(%rbx)
	movups	%xmm0, 264(%rbx)
	movq	128(%rsp), %rcx
	testq	%rcx, %rcx
	cmovneq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rcx, 320(%rbx)
	movups	(%rdx), %xmm0
	movups	%xmm0, 304(%rbx)
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	cmovneq	%rcx, %rax
	movq	16(%rax), %rcx
	movq	%rcx, 344(%rbx)
	movups	(%rax), %xmm0
	movq	144(%rsp), %rax
	movups	%xmm0, 328(%rbx)
	testq	%rax, %rax
	je	.LBB19_2
# BB#1:                                 # %if.then.81.i
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 400(%rbx)
	movups	%xmm2, 384(%rbx)
	movups	%xmm1, 368(%rbx)
	movups	%xmm0, 352(%rbx)
	jmp	.LBB19_3
.LBB19_2:                               # %if.else.i
	movq	$0, 376(%rbx)
	movups	RenderTableT_default+16(%rip), %xmm0
	movups	%xmm0, 400(%rbx)
	movups	RenderTableT_default(%rip), %xmm0
	movups	%xmm0, 384(%rbx)
.LBB19_3:                               # %gs_cie_render1_init_from.exit
	movl	$0, (%rbx)
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gs_cie_render1_initialize, .Lfunc_end19-gs_cie_render1_initialize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cie_render"
	.size	.L.str, 14

	.type	st_cie_render1,@object  # @st_cie_render1
	.section	.rodata,"a",@progbits
	.globl	st_cie_render1
	.align	8
st_cie_render1:
	.long	46312                   # 0xb4e8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	cie_render1_enum_ptrs
	.quad	cie_render1_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cie_render1, 64

	.type	TransformPQR_default,@object # @TransformPQR_default
	.globl	TransformPQR_default
	.align	8
TransformPQR_default:
	.quad	tpqr_identity
	.quad	0
	.zero	16
	.quad	0
	.size	TransformPQR_default, 40

	.type	TransformPQR_from_cache,@object # @TransformPQR_from_cache
	.globl	TransformPQR_from_cache
	.align	8
TransformPQR_from_cache:
	.quad	tpqr_from_cache
	.quad	0
	.zero	16
	.quad	0
	.size	TransformPQR_from_cache, 40

	.type	TransformPQR_lookup_proc_name,@object # @TransformPQR_lookup_proc_name
	.globl	TransformPQR_lookup_proc_name
	.align	8
TransformPQR_lookup_proc_name:
	.quad	tpqr_lookup
	.size	TransformPQR_lookup_proc_name, 8

	.type	Encode_default,@object  # @Encode_default
	.globl	Encode_default
	.align	8
Encode_default:
	.quad	render_identity
	.quad	render_identity
	.quad	render_identity
	.size	Encode_default, 24

	.type	EncodeLMN_from_cache,@object # @EncodeLMN_from_cache
	.globl	EncodeLMN_from_cache
	.align	8
EncodeLMN_from_cache:
	.quad	EncodeLMN_cached_L
	.quad	EncodeLMN_cached_M
	.quad	EncodeLMN_cached_N
	.size	EncodeLMN_from_cache, 24

	.type	EncodeABC_from_cache,@object # @EncodeABC_from_cache
	.globl	EncodeABC_from_cache
	.align	8
EncodeABC_from_cache:
	.quad	EncodeABC_cached_A
	.quad	EncodeABC_cached_B
	.quad	EncodeABC_cached_C
	.size	EncodeABC_from_cache, 24

	.type	RenderTableT_default,@object # @RenderTableT_default
	.globl	RenderTableT_default
	.align	8
RenderTableT_default:
	.quad	render_table_identity
	.quad	render_table_identity
	.quad	render_table_identity
	.quad	render_table_identity
	.size	RenderTableT_default, 32

	.type	RenderTableT_from_cache,@object # @RenderTableT_from_cache
	.globl	RenderTableT_from_cache
	.align	8
RenderTableT_from_cache:
	.quad	RTT_cached_0
	.quad	RTT_cached_1
	.quad	RTT_cached_2
	.quad	RTT_cached_3
	.size	RenderTableT_from_cache, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"tpqr_do_lookup(device)"
	.size	.L.str.1, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
