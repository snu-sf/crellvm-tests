	.text
	.file	"gimptile.bc"
	.globl	gimp_tile_ref
	.align	16, 0x90
	.type	gimp_tile_ref,@function
gimp_tile_ref:                          # @gimp_tile_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_tile_ref(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-8(%rbp), %rax
	movw	16(%rax), %cx
	addw	$1, %cx
	movw	%cx, 16(%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB0_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	gimp_tile_get
	movq	-8(%rbp), %rdi
	movb	18(%rdi), %al
	andb	$-2, %al
	movb	%al, 18(%rdi)
.LBB0_7:                                # %if.end.5
	movq	-8(%rbp), %rdi
	callq	gimp_tile_cache_insert
.LBB0_8:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tile_ref, .Lfunc_end0-gimp_tile_ref
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_get,@function
gimp_tile_get:                          # @gimp_tile_get
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movb	18(%rdi), %r8b
	shrb	$1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -16(%rbp)
	movq	(%rcx), %rdi
	callq	gp_tile_req_write@PLT
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	gimp_quit@PLT
.LBB1_2:                                # %if.end
	leaq	-48(%rbp), %rdi
	movl	$4, %esi
	callq	gimp_read_expect_msg@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpl	(%rdi), %esi
	jne	.LBB1_8
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	12(%rax), %ecx
	jne	.LBB1_8
# BB#4:                                 # %lor.lhs.false.9
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movb	18(%rax), %dl
	shrb	$1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %ecx
	jne	.LBB1_8
# BB#5:                                 # %lor.lhs.false.17
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB1_8
# BB#6:                                 # %lor.lhs.false.19
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	4(%rax), %ecx
	jne	.LBB1_8
# BB#7:                                 # %lor.lhs.false.21
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB1_9
.LBB1_8:                                # %if.then.24
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit@PLT
.LBB1_9:                                # %if.end.25
	movq	-32(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB1_11
# BB#10:                                # %if.then.27
	callq	gimp_shm_addr@PLT
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	8(%rcx), %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	g_memdup@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
.LBB1_12:                               # %if.end.38
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	gp_tile_ack_write@PLT
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.41
	callq	gimp_quit@PLT
.LBB1_14:                               # %if.end.42
	leaq	-48(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tile_get, .Lfunc_end1-gimp_tile_get
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_tile_cache_insert,@function
gimp_tile_cache_insert:                 # @gimp_tile_cache_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, tile_hash_table(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	g_direct_hash@GOTPCREL(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	g_hash_table_new@PLT
	movq	%rax, tile_hash_table(%rip)
	callq	gimp_tile_width@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-20(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, %eax
	movl	%eax, %esi
	movq	%rsi, max_tile_size(%rip)
.LBB2_2:                                # %if.end
	movq	tile_hash_table(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_11
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	cmpq	tile_list_tail(%rip), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.8
	jmp	.LBB2_23
.LBB2_5:                                # %if.end.9
	jmp	.LBB2_6
.LBB2_6:                                # %do.body
	movq	tile_list_head(%rip), %rax
	cmpq	tile_list_tail(%rip), %rax
	je	.LBB2_8
# BB#7:                                 # %if.then.12
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$316, %edx              # imm = 0x13C
	leaq	.L__func__.gimp_tile_cache_insert(%rip), %rcx
	leaq	.L.str.6(%rip), %r8
	callq	g_assertion_message_expr@PLT
.LBB2_9:                                # %if.end.13
	jmp	.LBB2_10
.LBB2_10:                               # %do.end
	movq	tile_list_head(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove_link@PLT
	movq	%rax, tile_list_head(%rip)
	movq	tile_list_tail(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_concat@PLT
	movq	%rax, %rdi
	callq	g_list_last@PLT
	movq	%rax, tile_list_tail(%rip)
	jmp	.LBB2_23
.LBB2_11:                               # %if.else.17
	movq	cur_cache_size(%rip), %rax
	addq	max_tile_size(%rip), %rax
	cmpq	max_cache_size(%rip), %rax
	jbe	.LBB2_20
# BB#12:                                # %if.then.20
	jmp	.LBB2_13
.LBB2_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, tile_list_head(%rip)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB2_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	cur_cache_size(%rip), %xmm0 # xmm0 = mem[0],zero
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI2_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movq	max_cache_size(%rip), %xmm0 # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm3
	ucomisd	%xmm1, %xmm3
	seta	%al
	movb	%al, -21(%rbp)          # 1-byte Spill
.LBB2_15:                               # %land.end
                                        #   in Loop: Header=BB2_13 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_16
	jmp	.LBB2_17
.LBB2_16:                               # %while.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	tile_list_head(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_tile_cache_flush
	jmp	.LBB2_13
.LBB2_17:                               # %while.end
	movq	cur_cache_size(%rip), %rax
	addq	max_tile_size(%rip), %rax
	cmpq	max_cache_size(%rip), %rax
	jbe	.LBB2_19
# BB#18:                                # %if.then.32
	jmp	.LBB2_23
.LBB2_19:                               # %if.end.33
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.34
	movq	tile_list_tail(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append@PLT
	movq	%rax, tile_list_tail(%rip)
	cmpq	$0, tile_list_head(%rip)
	jne	.LBB2_22
# BB#21:                                # %if.then.37
	movq	tile_list_tail(%rip), %rax
	movq	%rax, tile_list_head(%rip)
.LBB2_22:                               # %if.end.38
	movq	tile_list_tail(%rip), %rdi
	callq	g_list_last@PLT
	movq	%rax, tile_list_tail(%rip)
	movq	tile_hash_table(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	tile_list_tail(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert@PLT
	movq	max_tile_size(%rip), %rcx
	addq	cur_cache_size(%rip), %rcx
	movq	%rcx, cur_cache_size(%rip)
	movq	-8(%rbp), %rcx
	movw	16(%rcx), %r8w
	addw	$1, %r8w
	movw	%r8w, 16(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB2_23:                               # %if.end.42
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tile_cache_insert, .Lfunc_end2-gimp_tile_cache_insert
	.cfi_endproc

	.globl	gimp_tile_ref_zero
	.align	16, 0x90
	.type	gimp_tile_ref_zero,@function
gimp_tile_ref_zero:                     # @gimp_tile_ref_zero
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_tile_ref_zero(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movq	-8(%rbp), %rax
	movw	16(%rax), %cx
	addw	$1, %cx
	movw	%cx, 16(%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %eax
	movq	-8(%rbp), %rcx
	imull	8(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc0_n@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_7:                                # %if.end.7
	movq	-8(%rbp), %rdi
	callq	gimp_tile_cache_insert
.LBB3_8:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tile_ref_zero, .Lfunc_end3-gimp_tile_ref_zero
	.cfi_endproc

	.globl	gimp_tile_unref
	.align	16, 0x90
	.type	gimp_tile_unref,@function
gimp_tile_unref:                        # @gimp_tile_unref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_tile_unref(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_12
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %ecx
	cmpl	$0, %ecx
	jle	.LBB4_8
# BB#7:                                 # %if.then.4
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_tile_unref(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_12
.LBB4_9:                                # %if.end.6
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.7
	movq	-8(%rbp), %rax
	movw	16(%rax), %cx
	addw	$-1, %cx
	movw	%cx, 16(%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movb	18(%rax), %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	orl	%edx, %edi
	movb	%dil, %sil
	movb	18(%rax), %r8b
	andb	$1, %sil
	andb	$-2, %r8b
	orb	%sil, %r8b
	movb	%r8b, 18(%rax)
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB4_12
# BB#11:                                # %if.then.16
	movq	-8(%rbp), %rdi
	callq	gimp_tile_flush@PLT
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
.LBB4_12:                               # %if.end.18
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tile_unref, .Lfunc_end4-gimp_tile_unref
	.cfi_endproc

	.globl	gimp_tile_flush
	.align	16, 0x90
	.type	gimp_tile_flush,@function
gimp_tile_flush:                        # @gimp_tile_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_tile_flush(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_8
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movb	18(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_8
# BB#7:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	gimp_tile_put
	movq	-8(%rbp), %rdi
	movb	18(%rdi), %al
	andb	$-2, %al
	movb	%al, 18(%rdi)
.LBB5_8:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tile_flush, .Lfunc_end5-gimp_tile_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_put,@function
gimp_tile_put:                          # @gimp_tile_put
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	%rdi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movq	(%rcx), %rdi
	callq	gp_tile_req_write@PLT
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	callq	gimp_quit@PLT
.LBB6_2:                                # %if.end
	leaq	-88(%rbp), %rdi
	movl	$4, %esi
	callq	gimp_read_expect_msg@PLT
	movq	-80(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	(%rdi), %esi
	movl	%esi, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %esi
	movl	%esi, -60(%rbp)
	movq	-8(%rbp), %rdi
	movb	18(%rdi), %al
	shrb	$1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	%esi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %esi
	movl	%esi, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	movl	%esi, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %esi
	movl	%esi, -44(%rbp)
	movq	-72(%rbp), %rdi
	movl	24(%rdi), %esi
	movl	%esi, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	je	.LBB6_4
# BB#3:                                 # %if.then.11
	callq	gimp_shm_addr@PLT
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	4(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	8(%rcx), %edx
	movl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	memcpy@PLT
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB6_5:                                # %if.end.20
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	gp_tile_data_write@PLT
	cmpl	$0, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then.23
	callq	gimp_quit@PLT
.LBB6_7:                                # %if.end.24
	movq	-72(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB6_9
# BB#8:                                 # %if.then.27
	movq	$0, -32(%rbp)
.LBB6_9:                                # %if.end.29
	leaq	-88(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	leaq	-88(%rbp), %rdi
	movl	$3, %esi
	callq	gimp_read_expect_msg@PLT
	leaq	-88(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tile_put, .Lfunc_end6-gimp_tile_put
	.cfi_endproc

	.globl	gimp_tile_cache_size
	.align	16, 0x90
	.type	gimp_tile_cache_size,@function
gimp_tile_cache_size:                   # @gimp_tile_cache_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$10, %rdi
	movq	%rdi, max_cache_size(%rip)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tile_cache_size, .Lfunc_end7-gimp_tile_cache_size
	.cfi_endproc

	.globl	gimp_tile_cache_ntiles
	.align	16, 0x90
	.type	gimp_tile_cache_ntiles,@function
gimp_tile_cache_ntiles:                 # @gimp_tile_cache_ntiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_tile_width@PLT
	movl	%eax, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx         # 8-byte Reload
	imulq	%rdi, %rcx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	gimp_tile_height@PLT
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	imulq	%rcx, %rdi
	shlq	$2, %rdi
	addq	$1023, %rdi             # imm = 0x3FF
	shrq	$10, %rdi
	callq	gimp_tile_cache_size@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tile_cache_ntiles, .Lfunc_end8-gimp_tile_cache_ntiles
	.cfi_endproc

	.hidden	_gimp_tile_cache_flush_drawable
	.globl	_gimp_tile_cache_flush_drawable
	.align	16, 0x90
	.type	_gimp_tile_cache_flush_drawable,@function
_gimp_tile_cache_flush_drawable:        # @_gimp_tile_cache_flush_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_tile_cache_flush_drawable(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_10
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	tile_list_head(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB9_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB9_10
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB9_9
# BB#8:                                 # %if.then.3
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_tile_cache_flush
.LBB9_9:                                # %if.end.4
                                        #   in Loop: Header=BB9_6 Depth=1
	jmp	.LBB9_6
.LBB9_10:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_tile_cache_flush_drawable, .Lfunc_end9-_gimp_tile_cache_flush_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tile_cache_flush,@function
gimp_tile_cache_flush:                  # @gimp_tile_cache_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, tile_hash_table(%rip)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_8
.LBB10_2:                               # %if.end
	movq	tile_hash_table(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_8
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	cmpq	tile_list_tail(%rip), %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then.3
	movq	tile_list_tail(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, tile_list_tail(%rip)
.LBB10_5:                               # %if.end.4
	movq	tile_list_head(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove_link@PLT
	movq	%rax, tile_list_head(%rip)
	cmpq	$0, tile_list_head(%rip)
	jne	.LBB10_7
# BB#6:                                 # %if.then.7
	movq	$0, tile_list_tail(%rip)
.LBB10_7:                               # %if.end.8
	movq	tile_hash_table(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_remove@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_list_free@PLT
	xorl	%esi, %esi
	movq	max_tile_size(%rip), %rdi
	movq	cur_cache_size(%rip), %rcx
	subq	%rdi, %rcx
	movq	%rcx, cur_cache_size(%rip)
	movq	-8(%rbp), %rdi
	callq	gimp_tile_unref@PLT
.LBB10_8:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tile_cache_flush, .Lfunc_end10-gimp_tile_cache_flush
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB11_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_message, .Lfunc_end11-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_tile_ref,@object # @__func__.gimp_tile_ref
.L__func__.gimp_tile_ref:
	.asciz	"gimp_tile_ref"
	.size	.L__func__.gimp_tile_ref, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tile != NULL"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tile_ref_zero,@object # @__func__.gimp_tile_ref_zero
.L__func__.gimp_tile_ref_zero:
	.asciz	"gimp_tile_ref_zero"
	.size	.L__func__.gimp_tile_ref_zero, 19

	.type	.L__func__.gimp_tile_unref,@object # @__func__.gimp_tile_unref
.L__func__.gimp_tile_unref:
	.asciz	"gimp_tile_unref"
	.size	.L__func__.gimp_tile_unref, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tile->ref_count > 0"
	.size	.L.str.2, 20

	.type	.L__func__.gimp_tile_flush,@object # @__func__.gimp_tile_flush
.L__func__.gimp_tile_flush:
	.asciz	"gimp_tile_flush"
	.size	.L__func__.gimp_tile_flush, 16

	.type	max_cache_size,@object  # @max_cache_size
	.local	max_cache_size
	.comm	max_cache_size,8,8
	.type	.L__func__._gimp_tile_cache_flush_drawable,@object # @__func__._gimp_tile_cache_flush_drawable
.L__func__._gimp_tile_cache_flush_drawable:
	.asciz	"_gimp_tile_cache_flush_drawable"
	.size	.L__func__._gimp_tile_cache_flush_drawable, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable != NULL"
	.size	.L.str.3, 17

	.type	tile_list_head,@object  # @tile_list_head
	.local	tile_list_head
	.comm	tile_list_head,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"received tile info did not match computed tile info"
	.size	.L.str.4, 52

	.type	tile_hash_table,@object # @tile_hash_table
	.local	tile_hash_table
	.comm	tile_hash_table,8,8
	.type	max_tile_size,@object   # @max_tile_size
	.local	max_tile_size
	.comm	max_tile_size,8,8
	.type	tile_list_tail,@object  # @tile_list_tail
	.local	tile_list_tail
	.comm	tile_list_tail,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimptile.c"
	.size	.L.str.5, 11

	.type	.L__func__.gimp_tile_cache_insert,@object # @__func__.gimp_tile_cache_insert
.L__func__.gimp_tile_cache_insert:
	.asciz	"gimp_tile_cache_insert"
	.size	.L__func__.gimp_tile_cache_insert, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tile_list_head != tile_list_tail"
	.size	.L.str.6, 33

	.type	cur_cache_size,@object  # @cur_cache_size
	.local	cur_cache_size
	.comm	cur_cache_size,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
