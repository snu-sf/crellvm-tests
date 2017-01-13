	.text
	.file	"zcrd.bc"
	.globl	cie_cache_joint
	.align	16, 0x90
	.type	cie_cache_joint,@function
cie_cache_joint:                        # @cie_cache_joint
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	%r15, %rdi
	callq	gs_currentcolorrendering
	movq	%rax, %rbp
	movq	%r15, %rdi
	callq	gx_unshare_cie_caches
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	gs_state_memory
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB0_10
# BB#1:                                 # %if.end
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_10
# BB#2:                                 # %if.end.5
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.8
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_cie_cs_complete
	jmp	.LBB0_10
.LBB0_4:                                # %if.end.10
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %r13
	movq	%r13, %rdx
	callq	gs_cie_compute_points_sd
	movq	8(%r14), %rdi
	leaq	40(%rsp), %rsi
	movl	$96, %edx
	movl	$87, %ecx
	movl	$.L.str, %r8d
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	movq	32(%rsp), %rdx          # 8-byte Reload
	js	.LBB0_10
# BB#5:                                 # %if.end.16
	movq	536(%r14), %rax
	addq	$-48, %rax
	cmpq	%rax, 520(%r14)
	jbe	.LBB0_7
# BB#6:                                 # %if.then.21
	leaq	520(%r14), %rdi
	movl	$3, %esi
	movq	%r14, %rbp
	movq	%rdx, %r14
	callq	ref_stack_extend
	movq	%r14, %rdx
	movq	%rbp, %r14
	testl	%eax, %eax
	js	.LBB0_10
.LBB0_7:                                # %if.end.29
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	$cie_tpqr_finish, %esi
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	cie_cache_push_finish
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movups	40(%rsp), %xmm0
	movups	%xmm0, 16(%rax)
	movzwl	40(%rsp), %eax
	andl	$12, %eax
	leal	1248(%rax), %ecx
	orl	$1120, %eax             # imm = 0x460
	xorl	%edx, %edx
	movl	$488, %esi              # imm = 0x1E8
	.align	16, 0x90
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rdi
	leaq	-440(%rdi,%rsi), %rbp
	movq	%rbp, 8(%rdi,%rdx)
	movq	48(%rsp), %rbp
	movw	%cx, (%rbp,%rdx)
	movl	$4, 4(%rbp,%rdx)
	leaq	-376(%rdi,%rsi), %rbp
	movq	%rbp, -432(%rdi,%rsi)
	movw	%ax, -440(%rdi,%rsi)
	movl	$24, -436(%rdi,%rsi)
	movq	8(%r12), %rbp
	movups	(%rbp,%rdx), %xmm0
	movups	%xmm0, -424(%rdi,%rsi)
	movq	$cie_exec_tpqr, -400(%rdi,%rsi)
	movw	$3968, -408(%rdi,%rsi)  # imm = 0xF80
	movl	$0, -404(%rdi,%rsi)
	movq	$cie_post_exec_tpqr, -384(%rdi,%rsi)
	movw	$3968, -392(%rdi,%rsi)  # imm = 0xF80
	movl	$0, -388(%rdi,%rsi)
	movl	24904(%rbx), %ebp
	movl	%ebp, -368(%rdi,%rsi)
	movw	$4096, -376(%rdi,%rsi)  # imm = 0x1000
	movl	24908(%rbx), %ebp
	movl	%ebp, -352(%rdi,%rsi)
	movw	$4096, -360(%rdi,%rsi)  # imm = 0x1000
	movl	24912(%rbx), %ebp
	movl	%ebp, -336(%rdi,%rsi)
	movw	$4096, -344(%rdi,%rsi)  # imm = 0x1000
	movl	24916(%rbx), %ebp
	movl	%ebp, -320(%rdi,%rsi)
	movw	$4096, -328(%rdi,%rsi)  # imm = 0x1000
	movl	24920(%rbx), %ebp
	movl	%ebp, -304(%rdi,%rsi)
	movw	$4096, -312(%rdi,%rsi)  # imm = 0x1000
	movl	24924(%rbx), %ebp
	movl	%ebp, -288(%rdi,%rsi)
	movw	$4096, -296(%rdi,%rsi)  # imm = 0x1000
	movl	24928(%rbx), %ebp
	movl	%ebp, -272(%rdi,%rsi)
	movw	$4096, -280(%rdi,%rsi)  # imm = 0x1000
	movl	24932(%rbx), %ebp
	movl	%ebp, -256(%rdi,%rsi)
	movw	$4096, -264(%rdi,%rsi)  # imm = 0x1000
	movl	24936(%rbx), %ebp
	movl	%ebp, -240(%rdi,%rsi)
	movw	$4096, -248(%rdi,%rsi)  # imm = 0x1000
	movl	24940(%rbx), %ebp
	movl	%ebp, -224(%rdi,%rsi)
	movw	$4096, -232(%rdi,%rsi)  # imm = 0x1000
	movl	24944(%rbx), %ebp
	movl	%ebp, -208(%rdi,%rsi)
	movw	$4096, -216(%rdi,%rsi)  # imm = 0x1000
	movl	24948(%rbx), %ebp
	movl	%ebp, -192(%rdi,%rsi)
	movw	$4096, -200(%rdi,%rsi)  # imm = 0x1000
	movl	24952(%rbx), %ebp
	movl	%ebp, -176(%rdi,%rsi)
	movw	$4096, -184(%rdi,%rsi)  # imm = 0x1000
	movl	24956(%rbx), %ebp
	movl	%ebp, -160(%rdi,%rsi)
	movw	$4096, -168(%rdi,%rsi)  # imm = 0x1000
	movl	24960(%rbx), %ebp
	movl	%ebp, -144(%rdi,%rsi)
	movw	$4096, -152(%rdi,%rsi)  # imm = 0x1000
	movl	24964(%rbx), %ebp
	movl	%ebp, -128(%rdi,%rsi)
	movw	$4096, -136(%rdi,%rsi)  # imm = 0x1000
	movl	24968(%rbx), %ebp
	movl	%ebp, -112(%rdi,%rsi)
	movw	$4096, -120(%rdi,%rsi)  # imm = 0x1000
	movl	24972(%rbx), %ebp
	movl	%ebp, -96(%rdi,%rsi)
	movw	$4096, -104(%rdi,%rsi)  # imm = 0x1000
	movl	24976(%rbx), %ebp
	movl	%ebp, -80(%rdi,%rsi)
	movw	$4096, -88(%rdi,%rsi)   # imm = 0x1000
	movl	24980(%rbx), %ebp
	movl	%ebp, -64(%rdi,%rsi)
	movw	$4096, -72(%rdi,%rsi)   # imm = 0x1000
	movl	24984(%rbx), %ebp
	movl	%ebp, -48(%rdi,%rsi)
	movw	$4096, -56(%rdi,%rsi)   # imm = 0x1000
	movl	24988(%rbx), %ebp
	movl	%ebp, -32(%rdi,%rsi)
	movw	$4096, -40(%rdi,%rsi)   # imm = 0x1000
	movl	24992(%rbx), %ebp
	movl	%ebp, -16(%rdi,%rsi)
	movw	$4096, -24(%rdi,%rsi)   # imm = 0x1000
	movl	24996(%rbx), %ebp
	movl	%ebp, (%rdi,%rsi)
	movw	$4096, -8(%rdi,%rsi)    # imm = 0x1000
	addq	$16, %rdx
	addq	$448, %rsi              # imm = 0x1C0
	cmpq	$48, %rdx
	jne	.LBB0_8
# BB#9:                                 # %for.end.104
	addq	$112, %r13
	movq	48(%rsp), %rdx
	leaq	25008(%rbx), %rcx
	leaq	33280(%rbx), %r8
	leaq	41552(%rbx), %r9
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	$.L.str.1, 24(%rsp)
	movq	$0, (%rsp)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	cie_prepare_caches_4
.LBB0_10:                               # %cleanup.117
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cie_cache_joint, .Lfunc_end0-cie_cache_joint
	.cfi_endproc

	.align	16, 0x90
	.type	cie_tpqr_finish,@function
cie_tpqr_finish:                        # @cie_tpqr_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r12, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	8(%rbx), %r15
	movq	%r15, %rdi
	callq	gs_currentcolorrendering
	movq	%rax, %r12
	movq	8(%r14), %rdi
	addq	$-16, %rbx
	movl	$.L.str.14, %edx
	movq	%rbx, %rsi
	callq	gs_free_ref_array
	movq	TransformPQR_from_cache+32(%rip), %rax
	movq	%rax, 168(%r12)
	movups	TransformPQR_from_cache+16(%rip), %xmm0
	movups	%xmm0, 152(%r12)
	movups	TransformPQR_from_cache(%rip), %xmm0
	movups	%xmm0, 136(%r12)
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gs_cie_cs_complete
	addq	$-32, 624(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	cie_tpqr_finish, .Lfunc_end1-cie_tpqr_finish
	.cfi_endproc

	.align	16, 0x90
	.type	cie_exec_tpqr,@function
cie_exec_tpqr:                          # @cie_exec_tpqr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rcx
	movq	632(%rdi), %rdx
	addq	$32, %rdx
	movl	$-17, %eax
	cmpq	%rdx, %rcx
	jb	.LBB2_3
# BB#1:                                 # %do.body
	leaq	64(%rcx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB2_4
# BB#2:                                 # %if.then.10
	movl	$4, 688(%rdi)
	movl	$-16, %eax
.LBB2_3:                                # %cleanup
	retq
.LBB2_4:                                # %if.else
	movq	-8(%rcx), %rdx
	movzwl	-16(%rcx), %esi
	andl	$12, %esi
	movq	%rax, 624(%rdi)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	movups	-32(%rcx), %xmm0
	movups	%xmm0, 48(%rcx)
	movswl	%si, %eax
	orl	$1120, %eax             # imm = 0x460
	movq	%rdx, -8(%rcx)
	movw	%ax, -16(%rcx)
	movl	$6, -12(%rcx)
	leaq	96(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movw	%ax, (%rcx)
	movl	$6, 4(%rcx)
	leaq	192(%rdx), %rsi
	movq	%rsi, 24(%rcx)
	movw	%ax, 16(%rcx)
	movl	$6, 20(%rcx)
	addq	$288, %rdx              # imm = 0x120
	movq	%rdx, 40(%rcx)
	movw	%ax, 32(%rcx)
	movl	$6, 36(%rcx)
	movw	$3072, -32(%rcx)        # imm = 0xC00
	jmp	zexec                   # TAILCALL
.Lfunc_end2:
	.size	cie_exec_tpqr, .Lfunc_end2-cie_exec_tpqr
	.cfi_endproc

	.align	16, 0x90
	.type	cie_post_exec_tpqr,@function
cie_post_exec_tpqr:                     # @cie_post_exec_tpqr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	addq	$624, %rbx              # imm = 0x270
	movq	%rbx, %rdi
	callq	ref_stack_counttomark
	movl	$-24, %ecx
	cmpl	$2, %eax
	jb	.LBB3_2
# BB#1:                                 # %if.end
	movups	(%r14), %xmm0
	movaps	%xmm0, (%rsp)
	decl	%eax
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	(%rbx), %rax
	movaps	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	xorl	%ecx, %ecx
.LBB3_2:                                # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	cie_post_exec_tpqr, .Lfunc_end3-cie_post_exec_tpqr
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcolorrendering,@function
zcurrentcolorrendering:                 # @zcurrentcolorrendering
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	addq	$16, %rbx
	cmpq	640(%rdi), %rbx
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB4_2:                                # %if.else
	movq	%rbx, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_state_client_data
	movups	400(%rax), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zcurrentcolorrendering, .Lfunc_end4-zcurrentcolorrendering
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcolorrendering1,@function
zsetcolorrendering1:                    # @zsetcolorrendering1
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
	subq	$72, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 112
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-16(%rbx), %r14
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB5_1
# BB#2:                                 # %if.end
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB5_4
# BB#3:                                 # %land.lhs.true
	movq	520(%r15), %r12
	movq	8(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_cie_render1, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_5
.LBB5_4:                                # %if.then.17
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB5_11
.LBB5_1:                                # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
.LBB5_11:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB5_5:                                # %if.end.19
	movq	8(%r15), %rdi
	leaq	8(%rsp), %rdx
	movq	%r14, %rsi
	callq	zcrd1_proc_params
	testl	%eax, %eax
	js	.LBB5_11
# BB#6:                                 # %if.end.26
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	gs_setcolorrendering
	testl	%eax, %eax
	js	.LBB5_11
# BB#7:                                 # %if.end.33
	movq	(%r15), %rdi
	callq	gs_cie_cs_common
	testq	%rax, %rax
	je	.LBB5_9
# BB#8:                                 # %land.lhs.true.38
	movq	(%r15), %rdi
	callq	gs_cie_cs_common
	movq	(%r15), %rcx
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cie_cache_joint
	testl	%eax, %eax
	js	.LBB5_11
.LBB5_9:                                # %if.end.46
	movq	(%r15), %rdi
	callq	gs_state_client_data
	movups	(%r14), %xmm0
	movups	%xmm0, 400(%rax)
	movq	(%r15), %rdi
	callq	gs_state_client_data
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movups	40(%rsp), %xmm2
	movups	56(%rsp), %xmm3
	movups	%xmm3, 464(%rax)
	movups	%xmm2, 448(%rax)
	movups	%xmm1, 432(%rax)
	movups	%xmm0, 416(%rax)
	addq	$-32, 624(%r15)
	xorl	%eax, %eax
	cmpq	%r12, 520(%r15)
	je	.LBB5_11
# BB#10:                                # %select.mid
	movl	$5, %eax
	jmp	.LBB5_11
.Lfunc_end5:
	.size	zsetcolorrendering1, .Lfunc_end5-zsetcolorrendering1
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdevicecolorrendering1,@function
zsetdevicecolorrendering1:              # @zsetdevicecolorrendering1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 96
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	624(%r15), %rbx
	leaq	-16(%rbx), %r14
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB6_1
# BB#2:                                 # %if.end
	movzwl	(%rbx), %eax
	andl	$15872, %eax            # imm = 0x3E00
	cmpl	$2048, %eax             # imm = 0x800
	jne	.LBB6_4
# BB#3:                                 # %land.lhs.true
	movq	8(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	*128(%rdi)
	movl	$st_cie_render1, %ecx
	cmpq	%rcx, %rax
	je	.LBB6_5
.LBB6_4:                                # %if.then.15
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB6_9
.LBB6_1:                                # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
.LBB6_9:                                # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB6_5:                                # %if.end.17
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	gs_setcolorrendering
	testl	%eax, %eax
	js	.LBB6_9
# BB#6:                                 # %if.end.24
	movl	76(%r15), %edx
	leaq	(%rsp), %rdi
	movl	$4, %esi
	callq	refset_null_new
	movq	(%r15), %rdi
	callq	gs_cie_cs_common
	testq	%rax, %rax
	je	.LBB6_8
# BB#7:                                 # %land.lhs.true.30
	movq	(%r15), %rdi
	callq	gs_cie_cs_common
	movq	(%r15), %rcx
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	cie_cache_joint
	testl	%eax, %eax
	js	.LBB6_9
.LBB6_8:                                # %if.end.38
	movq	(%r15), %rdi
	callq	gs_state_client_data
	movups	(%r14), %xmm0
	movups	%xmm0, 400(%rax)
	movq	(%r15), %rdi
	callq	gs_state_client_data
	leaq	416(%rax), %rdi
	movl	76(%r15), %edx
	movl	$4, %esi
	callq	refset_null_new
	addq	$-32, 624(%r15)
	xorl	%eax, %eax
	jmp	.LBB6_9
.Lfunc_end6:
	.size	zsetdevicecolorrendering1, .Lfunc_end6-zsetdevicecolorrendering1
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildcolorrendering1,@function
zbuildcolorrendering1:                  # @zbuildcolorrendering1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 144
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	callq	gs_state_memory
	movq	%rax, %r15
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$544, %eax              # imm = 0x220
	jne	.LBB7_1
# BB#3:                                 # %do.body
	movq	8(%rbx), %rax
	movl	$-7, %ebp
	testb	$32, (%rax)
	je	.LBB7_23
# BB#4:                                 # %do.end
	movq	520(%r14), %r12
	leaq	64(%rsp), %rdi
	movl	$.L.str.19, %edx
	movq	%r15, %rsi
	callq	gs_cie_render1_build
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_23
# BB#5:                                 # %if.end.20
	movq	64(%rsp), %r13
	leaq	84(%rsp), %r9
	movl	$.L.str.20, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#6:                                 # %if.end.i
	leaq	(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	zcrd1_proc_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#7:                                 # %if.end.4.i
	leaq	176(%r13), %rcx
	movl	$.L.str.21, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_matrix3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#8:                                 # %if.end.8.i
	leaq	240(%r13), %rcx
	movl	$.L.str.22, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_range3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#9:                                 # %if.end.12.i
	leaq	264(%r13), %rcx
	movl	$.L.str.23, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_matrix3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#10:                                # %if.end.16.i
	leaq	328(%r13), %rcx
	movl	$.L.str.24, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_range3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#11:                                # %if.end.20.i
	leaq	48(%r13), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	cie_points_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#12:                                # %if.end.24.i
	leaq	72(%r13), %rcx
	movl	$.L.str.25, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_matrix3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#13:                                # %if.end.28.i
	leaq	112(%r13), %rcx
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	dict_range3_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_19
# BB#14:                                # %if.end.32.i
	leaq	72(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_20
# BB#15:                                # %if.then.35.i
	movq	72(%rsp), %rdi
	movq	8(%rdi), %rax
	movl	$-20, %ebp
	movzbl	65(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB7_19
# BB#16:                                # %do.end.i
	movq	72(%rax), %rax
	leaq	-3(%rax), %rcx
	movl	$-15, %ebp
	cmpq	$1, %rcx
	ja	.LBB7_19
# BB#17:                                # %if.end.51.i
	movl	$3, 352(%r13)
	movl	%eax, 372(%r13)
	addl	$5, %eax
	cmpl	%eax, 4(%rdi)
	jne	.LBB7_19
# BB#18:                                # %cleanup.i
	leaq	352(%r13), %rsi
	movq	%r15, %rdx
	callq	cie_table_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_21
.LBB7_19:                               # %do.end.28
	movq	64(%rsp), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.19, %edx
	callq	*24(%rsi)
	movq	%r12, 520(%r14)
	jmp	.LBB7_23
.LBB7_1:                                # %if.then
	movzbl	1(%rbx), %eax
	movl	$-7, %ebp
	cmpl	$2, %eax
	je	.LBB7_23
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB7_23:                               # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_20:                               # %if.else.i
	movq	$0, 376(%r13)
.LBB7_21:                               # %if.end.35
	movq	Encode_default+16(%rip), %rax
	movq	%rax, 232(%r13)
	movups	Encode_default(%rip), %xmm0
	movups	%xmm0, 216(%r13)
	movq	%rax, 320(%r13)
	movups	%xmm0, 304(%r13)
	movq	TransformPQR_default+32(%rip), %rax
	movq	%rax, 168(%r13)
	movups	TransformPQR_default+16(%rip), %xmm0
	movups	%xmm0, 152(%r13)
	movups	TransformPQR_default(%rip), %xmm0
	movups	%xmm0, 136(%r13)
	movups	RenderTableT_default+16(%rip), %xmm0
	movups	%xmm0, 400(%r13)
	movups	RenderTableT_default(%rip), %xmm0
	movups	%xmm0, 384(%r13)
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movups	(%rbx), %xmm0
	movups	%xmm0, 400(%rax)
	movq	64(%rsp), %rax
	movq	%rax, 8(%rbx)
	movl	56(%r14), %eax
	orl	76(%r14), %eax
	orl	$96, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%rbx)
	xorl	%ebp, %ebp
	cmpq	%r12, 520(%r14)
	je	.LBB7_23
# BB#22:                                # %select.mid
	movl	$5, %ebp
	jmp	.LBB7_23
.Lfunc_end7:
	.size	zbuildcolorrendering1, .Lfunc_end7-zbuildcolorrendering1
	.cfi_endproc

	.align	16, 0x90
	.type	zbuilddevicecolorrendering1,@function
zbuilddevicecolorrendering1:            # @zbuilddevicecolorrendering1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 40
	subq	$120, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 160
.Ltmp63:
	.cfi_offset %rbx, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_state_memory
	movq	%rax, %r15
	movq	$0, 8(%rsp)
	movzbl	1(%r14), %eax
	cmpl	$2, %eax
	jne	.LBB8_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %r8
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_8
# BB#3:                                 # %if.end.7
	leaq	8(%rsp), %rdi
	movl	$.L.str.27, %edx
	movq	%r15, %rsi
	callq	gs_cie_render1_build
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_5
# BB#4:                                 # %if.then.11
	movq	8(%rsp), %rbp
	movq	(%rbx), %rdi
	callq	gs_currentdevice
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	callq	param_get_cie_render1
	movl	%eax, %ebp
.LBB8_5:                                # %if.end.19
	movq	24(%rsp), %rdi
	movq	88(%rsp), %rsi
	movl	$.L.str.28, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB8_6
# BB#7:                                 # %if.end.30
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	(%r14), %xmm0
	movups	%xmm0, 400(%rax)
	movq	8(%rsp), %rax
	movq	%rax, 8(%r14)
	movl	56(%rbx), %eax
	orl	76(%rbx), %eax
	orl	$96, %eax
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB8_8
.LBB8_1:                                # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB8_8
.LBB8_6:                                # %do.end
	movq	8(%rsp), %rsi
	movq	16(%rsi), %rdi
	movl	$.L.str.27, %edx
	callq	*24(%rsi)
.LBB8_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	zbuilddevicecolorrendering1, .Lfunc_end8-zbuilddevicecolorrendering1
	.cfi_endproc

	.align	16, 0x90
	.type	ztpqr_scale_wb0,@function
ztpqr_scale_wb0:                        # @ztpqr_scale_wb0
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, %esi
	jmp	ztpqr_scale_wb_common   # TAILCALL
.Lfunc_end9:
	.size	ztpqr_scale_wb0, .Lfunc_end9-ztpqr_scale_wb0
	.cfi_endproc

	.align	16, 0x90
	.type	ztpqr_scale_wb1,@function
ztpqr_scale_wb1:                        # @ztpqr_scale_wb1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, %esi
	jmp	ztpqr_scale_wb_common   # TAILCALL
.Lfunc_end10:
	.size	ztpqr_scale_wb1, .Lfunc_end10-ztpqr_scale_wb1
	.cfi_endproc

	.align	16, 0x90
	.type	ztpqr_scale_wb2,@function
ztpqr_scale_wb2:                        # @ztpqr_scale_wb2
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$5, %esi
	jmp	ztpqr_scale_wb_common   # TAILCALL
.Lfunc_end11:
	.size	ztpqr_scale_wb2, .Lfunc_end11-ztpqr_scale_wb2
	.cfi_endproc

	.align	16, 0x90
	.type	zcrd1_proc_params,@function
zcrd1_proc_params:                      # @zcrd1_proc_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 48
.Ltmp71:
	.cfi_offset %rbx, -32
.Ltmp72:
	.cfi_offset %r14, -24
.Ltmp73:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	16(%r14), %rcx
	movl	$.L.str.15, %edx
	callq	dict_proc3_param
	testl	%eax, %eax
	js	.LBB12_17
# BB#1:                                 # %if.end
	leaq	32(%r14), %rcx
	movl	$.L.str.16, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	dict_proc3_param
	testl	%eax, %eax
	js	.LBB12_17
# BB#2:                                 # %if.end.4
	movl	$.L.str.17, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	dict_proc3_param
	testl	%eax, %eax
	js	.LBB12_17
# BB#3:                                 # %if.end.8
	cmpl	$1, %eax
	movl	$-21, %eax
	je	.LBB12_17
# BB#4:                                 # %if.end.11
	leaq	8(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_15
# BB#5:                                 # %if.then.14
	movq	8(%rsp), %rdi
	movzwl	(%rdi), %ecx
	movl	%ecx, %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$1056, %eax             # imm = 0x420
	jne	.LBB12_6
# BB#8:                                 # %if.end.24
	movslq	4(%rdi), %rdx
	cmpq	$5, %rdx
	movl	$-15, %eax
	jl	.LBB12_17
# BB#9:                                 # %if.end.29
	movq	8(%rdi), %rax
	cmpl	$6, %edx
	jl	.LBB12_14
# BB#10:                                # %do.body.lr.ph
	leaq	80(%rax), %rdi
	movl	$5, %esi
.LBB12_12:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ebx
	andl	$15552, %ebx            # imm = 0x3CC0
	cmpl	$1216, %ebx             # imm = 0x4C0
	jne	.LBB12_13
# BB#11:                                # %for.cond
                                        #   in Loop: Header=BB12_12 Depth=1
	incq	%rsi
	addq	$16, %rdi
	cmpq	%rdx, %rsi
	jl	.LBB12_12
.LBB12_14:                              # %cleanup
	addq	$80, %rax
	movq	%rax, 56(%r14)
	andl	$12, %ecx
	orl	$1120, %ecx             # imm = 0x460
	movw	%cx, 48(%r14)
	addl	$-5, %edx
	movl	%edx, 52(%r14)
	jmp	.LBB12_16
.LBB12_15:                              # %if.else
	movw	$3584, 48(%r14)         # imm = 0xE00
.LBB12_16:                              # %cleanup.63
	xorl	%eax, %eax
	jmp	.LBB12_17
.LBB12_6:                               # %if.then.17
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$4, %ecx
	je	.LBB12_17
# BB#7:                                 # %cond.true
	callq	check_type_failed
	jmp	.LBB12_17
.LBB12_13:                              # %if.then.39
	callq	check_proc_failed
.LBB12_17:                              # %cleanup.63
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	zcrd1_proc_params, .Lfunc_end12-zcrd1_proc_params
	.cfi_endproc

	.align	16, 0x90
	.type	ztpqr_scale_wb_common,@function
ztpqr_scale_wb_common:                  # @ztpqr_scale_wb_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 112
.Ltmp79:
	.cfi_offset %rbx, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB13_11
# BB#1:                                 # %for.cond.preheader
	leaq	-64(%rbx), %rsi
	movslq	%ebp, %r15
	movq	8(%r14), %rdi
	leaq	8(%rsp), %rcx
	movq	%r15, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB13_11
# BB#2:                                 # %if.end.8
	leaq	8(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB13_11
# BB#3:                                 # %for.cond
	movq	8(%r14), %rdi
	leaq	-48(%rbx), %rsi
	leaq	8(%rsp), %rcx
	movq	%r15, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB13_11
# BB#4:                                 # %if.end.8.1
	leaq	40(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB13_11
# BB#5:                                 # %for.cond.1
	movq	8(%r14), %rdi
	leaq	-32(%rbx), %rsi
	leaq	8(%rsp), %rcx
	movq	%r15, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB13_11
# BB#6:                                 # %if.end.8.2
	leaq	48(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB13_11
# BB#7:                                 # %for.cond.2
	movq	8(%r14), %rdi
	leaq	-16(%rbx), %rsi
	leaq	8(%rsp), %rcx
	movq	%r15, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB13_11
# BB#8:                                 # %if.end.8.3
	leaq	56(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB13_11
# BB#9:                                 # %for.cond.3
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movl	$-23, %eax
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_10
	jnp	.LBB13_11
.LBB13_10:                              # %if.end.18
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm3         # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm2
	movsd	24(%rsp), %xmm4         # xmm4 = mem[0],zero
	subsd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	subsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm4, %xmm0
	movss	%xmm0, -56(%rbx)
	movw	$4096, -64(%rbx)        # imm = 0x1000
	addq	$-64, 624(%r14)
	xorl	%eax, %eax
.LBB13_11:                              # %cleanup.34
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	ztpqr_scale_wb_common, .Lfunc_end13-ztpqr_scale_wb_common
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cie_cache_common"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Transform.PQR"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"level2dict"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0currentcolorrendering"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.setcolorrendering1"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2.setdevicecolorrendering1"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.buildcolorrendering1"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"1.builddevicecolorrendering1"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"3%cie_exec_tpqr"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2%cie_post_exec_tpqr"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1%cie_tpqr_finish"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"5.TransformPQR_scale_WB0"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"5.TransformPQR_scale_WB1"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"5.TransformPQR_scale_WB2"
	.size	.L.str.13, 25

	.type	zcrd_l2_op_defs,@object # @zcrd_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcrd_l2_op_defs
	.align	16
zcrd_l2_op_defs:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	zcurrentcolorrendering
	.quad	.L.str.4
	.quad	zsetcolorrendering1
	.quad	.L.str.5
	.quad	zsetdevicecolorrendering1
	.quad	.L.str.6
	.quad	zbuildcolorrendering1
	.quad	.L.str.7
	.quad	zbuilddevicecolorrendering1
	.quad	.L.str.8
	.quad	cie_exec_tpqr
	.quad	.L.str.9
	.quad	cie_post_exec_tpqr
	.quad	.L.str.10
	.quad	cie_tpqr_finish
	.quad	.L.str.11
	.quad	ztpqr_scale_wb0
	.quad	.L.str.12
	.quad	ztpqr_scale_wb1
	.quad	.L.str.13
	.quad	ztpqr_scale_wb2
	.zero	16
	.size	zcrd_l2_op_defs, 208

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"cie_tpqr_finish"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"EncodeLMN"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"EncodeABC"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"TransformPQR"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RenderTable"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	".buildcolorrendering1"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ColorRenderingType"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"MatrixLMN"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RangeLMN"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"MatrixABC"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RangeABC"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MatrixPQR"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"RangePQR"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	".builddevicecolorrendering1"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"iparam_list_release"
	.size	.L.str.28, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
