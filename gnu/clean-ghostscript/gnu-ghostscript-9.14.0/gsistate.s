	.text
	.file	"gsistate.bc"
	.align	16, 0x90
	.type	imager_state_enum_ptrs,@function
imager_state_enum_ptrs:                 # @imager_state_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$19, %ecx
	ja	.LBB0_24
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_4:                                # %sw.bb
	movq	16(%rsi), %rax
	jmp	.LBB0_23
.LBB0_5:                                # %sw.bb.1
	movq	264(%rsi), %rax
	jmp	.LBB0_23
.LBB0_6:                                # %sw.bb.3
	movq	336(%rsi), %rax
	jmp	.LBB0_23
.LBB0_7:                                # %sw.bb.5
	movq	344(%rsi), %rax
	jmp	.LBB0_23
.LBB0_8:                                # %sw.bb.7
	movq	352(%rsi), %rax
	jmp	.LBB0_23
.LBB0_9:                                # %sw.bb.9
	movq	368(%rsi), %rax
	jmp	.LBB0_23
.LBB0_10:                               # %sw.bb.11
	movq	392(%rsi), %rax
	jmp	.LBB0_23
.LBB0_11:                               # %sw.bb.13
	movq	400(%rsi), %rax
	jmp	.LBB0_23
.LBB0_12:                               # %sw.bb.15
	movq	416(%rsi), %rax
	jmp	.LBB0_23
.LBB0_13:                               # %sw.bb.17
	movq	424(%rsi), %rax
	jmp	.LBB0_23
.LBB0_14:                               # %sw.bb.19
	movq	440(%rsi), %rax
	jmp	.LBB0_23
.LBB0_15:                               # %sw.bb.21
	movq	456(%rsi), %rax
	jmp	.LBB0_23
.LBB0_16:                               # %sw.bb.24
	movq	472(%rsi), %rax
	jmp	.LBB0_23
.LBB0_17:                               # %sw.bb.27
	movq	488(%rsi), %rax
	jmp	.LBB0_23
.LBB0_18:                               # %sw.bb.30
	movq	1008(%rsi), %rax
	jmp	.LBB0_23
.LBB0_19:                               # %sw.bb.32
	movq	1304(%rsi), %rax
	jmp	.LBB0_23
.LBB0_20:                               # %sw.bb.34
	movq	1312(%rsi), %rax
	jmp	.LBB0_23
.LBB0_21:                               # %sw.bb.36
	movq	1320(%rsi), %rax
	jmp	.LBB0_23
.LBB0_22:                               # %sw.bb.38
	movq	1328(%rsi), %rax
	jmp	.LBB0_23
.LBB0_2:                                # %sw.bb.i
	xorl	%eax, %eax
	cmpl	$0, 96(%rsi)
	je	.LBB0_23
# BB#3:                                 # %cond.false.i
	movq	88(%rsi), %rax
.LBB0_23:                               # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_24:                               # %return
	retq
.Lfunc_end0:
	.size	imager_state_enum_ptrs, .Lfunc_end0-imager_state_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
	.quad	.LBB0_2

	.text
	.align	16, 0x90
	.type	imager_state_reloc_ptrs,@function
imager_state_reloc_ptrs:                # @imager_state_reloc_ptrs
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
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %r15
	cmpl	$0, 96(%r15)
	je	.LBB1_2
# BB#1:                                 # %if.then.i
	movq	(%r14), %rax
	movq	88(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 88(%r15)
.LBB1_2:                                # %line_params_reloc_ptrs.exit
	movq	(%r14), %rax
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 16(%r15)
	movq	(%r14), %rax
	movq	264(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 264(%r15)
	movq	(%r14), %rax
	movq	336(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 336(%r15)
	movq	(%r14), %rax
	movq	344(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 344(%r15)
	movq	(%r14), %rax
	movq	352(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 352(%r15)
	movq	(%r14), %rax
	movq	368(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 368(%r15)
	movq	(%r14), %rax
	movq	392(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 392(%r15)
	movq	(%r14), %rax
	movq	400(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 400(%r15)
	movq	(%r14), %rax
	movq	416(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 416(%r15)
	movq	(%r14), %rax
	movq	424(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 424(%r15)
	movq	(%r14), %rax
	movq	440(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 440(%r15)
	movq	(%r14), %rax
	movq	456(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 456(%r15)
	movq	(%r14), %rax
	movq	472(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 472(%r15)
	movq	(%r14), %rax
	movq	488(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 488(%r15)
	movq	(%r14), %rax
	movq	1008(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1008(%r15)
	movq	(%r14), %rax
	movq	1304(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1304(%r15)
	movq	(%r14), %rax
	movq	1312(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1312(%r15)
	movq	(%r14), %rax
	movq	1320(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1320(%r15)
	movq	(%r14), %rax
	movq	1328(%r15), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1328(%r15)
	movl	$64, %ebx
	.align	16, 0x90
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	488(%r15,%rbx,8), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 488(%r15,%rbx,8)
	decq	%rbx
	jg	.LBB1_3
# BB#4:                                 # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	imager_state_reloc_ptrs, .Lfunc_end1-imager_state_reloc_ptrs
	.cfi_endproc

	.globl	gs_imager_state_initialize
	.align	16, 0x90
	.type	gs_imager_state_initialize,@function
gs_imager_state_initialize:             # @gs_imager_state_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 264(%rbx)
	movq	$0, 368(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 376(%rbx)
	movq	$0, 392(%rbx)
	movq	$0, 400(%rbx)
	movl	$0, 408(%rbx)
	movups	%xmm0, 416(%rbx)
	movl	$st_transfer_map, %esi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, 488(%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB2_4
# BB#1:                                 # %do.body.6
	movq	$1, (%rax)
	movq	%r14, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	$gs_identity_transfer, 24(%rax)
	movq	8(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	488(%rbx), %rcx
	movq	%rax, 48(%rcx)
	movw	$0, 56(%rcx)
	movq	$0, 472(%rbx)
	movq	$0, 456(%rbx)
	movq	$0, 440(%rbx)
	movq	%rcx, 496(%rbx)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_2:                                # %for.body.35.for.body.35_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	488(%rbx), %rcx
	movq	%rcx, 504(%rbx,%rax,8)
	movq	488(%rbx), %rcx
	movq	%rcx, 512(%rbx,%rax,8)
	movq	488(%rbx), %rcx
	movq	%rcx, 520(%rbx,%rax,8)
	addq	$3, %rax
	cmpq	$63, %rax
	jne	.LBB2_2
# BB#3:                                 # %for.end.42
	movq	$0, 1008(%rbx)
	movq	$0, 1328(%rbx)
	movq	cmap_procs_default(%rip), %rax
	movq	%rax, 1016(%rbx)
	movq	$0, 1304(%rbx)
	movl	$0, 316(%rbx)
	movq	%r14, %rdi
	callq	gs_cspace_new_DeviceRGB
	movq	%rax, 1312(%rbx)
	movq	%r14, %rdi
	callq	gs_cspace_new_DeviceCMYK
	movq	%rax, 1320(%rbx)
	movq	8(%rbx), %rdi
	callq	gsicc_cache_new
	movq	%rax, 344(%rbx)
	movq	8(%rbx), %rdi
	callq	gsicc_manager_new
	movq	%rax, 336(%rbx)
	movq	8(%rbx), %rdi
	callq	gsicc_profilecache_new
	movq	%rax, 352(%rbx)
	xorl	%ecx, %ecx
.LBB2_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gs_imager_state_initialize, .Lfunc_end2-gs_imager_state_initialize
	.cfi_endproc

	.globl	gs_imager_state_copy
	.align	16, 0x90
	.type	gs_imager_state_copy,@function
gs_imager_state_copy:                   # @gs_imager_state_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %r14
	movl	$st_imager_state, %esi
	movl	$.L.str.2, %edx
	movq	%rax, %rdi
	callq	*72(%rax)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1616, %edx             # imm = 0x650
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
.LBB3_2:                                # %if.end
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gs_imager_state_copy, .Lfunc_end3-gs_imager_state_copy
	.cfi_endproc

	.globl	gs_imager_state_copied
	.align	16, 0x90
	.type	gs_imager_state_copied,@function
gs_imager_state_copied:                 # @gs_imager_state_copied
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %do.body.1
	incq	8(%rax)
.LBB4_2:                                # %do.body.6
	movq	392(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_4
# BB#3:                                 # %do.body.9
	incq	160(%rax)
.LBB4_4:                                # %do.body.19
	movq	400(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_6
# BB#5:                                 # %do.body.22
	incq	8(%rax)
.LBB4_6:                                # %do.body.32
	movq	416(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_8
# BB#7:                                 # %do.body.35
	incq	(%rax)
.LBB4_8:                                # %do.body.45
	movq	424(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_10
# BB#9:                                 # %do.body.48
	incq	(%rax)
.LBB4_10:                               # %do.body.58
	movq	488(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_12
# BB#11:                                # %do.body.61
	incq	(%rax)
.LBB4_12:                               # %do.body.72
	movq	440(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_14
# BB#13:                                # %do.body.76
	incq	(%rax)
.LBB4_14:                               # %do.body.87
	movq	456(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_16
# BB#15:                                # %do.body.91
	incq	(%rax)
.LBB4_16:                               # %do.body.102
	movq	472(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_18
# BB#17:                                # %do.body.106
	incq	(%rax)
.LBB4_18:                               # %do.body.117
	movq	1008(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_20
# BB#19:                                # %do.body.120
	incq	24(%rax)
.LBB4_20:                               # %do.body.130
	movq	1328(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_22
# BB#21:                                # %do.body.133
	incq	24(%rax)
.LBB4_22:                               # %do.body.143
	movq	1312(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_24
# BB#23:                                # %do.body.146
	incq	8(%rax)
.LBB4_24:                               # %do.body.156
	movq	1320(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_26
# BB#25:                                # %do.body.159
	incq	8(%rax)
.LBB4_26:                               # %do.body.169
	movq	344(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_28
# BB#27:                                # %do.body.172
	incq	16(%rax)
.LBB4_28:                               # %do.body.182
	movq	352(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_30
# BB#29:                                # %do.body.185
	incq	16(%rax)
.LBB4_30:                               # %do.body.195
	movq	336(%rdi), %rax
	testq	%rax, %rax
	je	.LBB4_32
# BB#31:                                # %do.body.198
	incq	88(%rax)
.LBB4_32:                               # %do.end.207
	retq
.Lfunc_end4:
	.size	gs_imager_state_copied, .Lfunc_end4-gs_imager_state_copied
	.cfi_endproc

	.globl	gs_imager_state_pre_assign
	.align	16, 0x90
	.type	gs_imager_state_pre_assign,@function
gs_imager_state_pre_assign:             # @gs_imager_state_pre_assign
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1008(%rbx), %rsi
	movq	1008(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_6
# BB#1:                                 # %do.body.2
	testq	%rax, %rax
	je	.LBB5_3
# BB#2:                                 # %do.body.5
	incq	24(%rax)
.LBB5_3:                                # %do.body.12
	testq	%rsi, %rsi
	je	.LBB5_6
# BB#4:                                 # %do.end.19
	decq	24(%rsi)
	jne	.LBB5_6
# BB#5:                                 # %do.end.33
	movq	32(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*40(%rsi)
.LBB5_6:                                # %do.body.54
	movq	1328(%rbx), %rsi
	movq	1328(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_12
# BB#7:                                 # %do.body.58
	testq	%rax, %rax
	je	.LBB5_9
# BB#8:                                 # %do.body.62
	incq	24(%rax)
.LBB5_9:                                # %do.body.75
	testq	%rsi, %rsi
	je	.LBB5_12
# BB#10:                                # %do.end.82
	decq	24(%rsi)
	jne	.LBB5_12
# BB#11:                                # %do.end.97
	movq	32(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*40(%rsi)
.LBB5_12:                               # %do.body.121
	movq	472(%rbx), %rsi
	movq	472(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_18
# BB#13:                                # %do.body.126
	testq	%rax, %rax
	je	.LBB5_15
# BB#14:                                # %do.body.131
	incq	(%rax)
.LBB5_15:                               # %do.body.145
	testq	%rsi, %rsi
	je	.LBB5_18
# BB#16:                                # %do.end.153
	decq	(%rsi)
	jne	.LBB5_18
# BB#17:                                # %do.end.170
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_18:                               # %do.body.197
	movq	456(%rbx), %rsi
	movq	456(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_24
# BB#19:                                # %do.body.203
	testq	%rax, %rax
	je	.LBB5_21
# BB#20:                                # %do.body.208
	incq	(%rax)
.LBB5_21:                               # %do.body.222
	testq	%rsi, %rsi
	je	.LBB5_24
# BB#22:                                # %do.end.230
	decq	(%rsi)
	jne	.LBB5_24
# BB#23:                                # %do.end.247
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_24:                               # %do.body.274
	movq	440(%rbx), %rsi
	movq	440(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_30
# BB#25:                                # %do.body.280
	testq	%rax, %rax
	je	.LBB5_27
# BB#26:                                # %do.body.285
	incq	(%rax)
.LBB5_27:                               # %do.body.299
	testq	%rsi, %rsi
	je	.LBB5_30
# BB#28:                                # %do.end.307
	decq	(%rsi)
	jne	.LBB5_30
# BB#29:                                # %do.end.324
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_30:                               # %do.body.351
	movq	488(%rbx), %rsi
	movq	488(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_36
# BB#31:                                # %do.body.357
	testq	%rax, %rax
	je	.LBB5_33
# BB#32:                                # %do.body.362
	incq	(%rax)
.LBB5_33:                               # %do.body.376
	testq	%rsi, %rsi
	je	.LBB5_36
# BB#34:                                # %do.end.384
	decq	(%rsi)
	jne	.LBB5_36
# BB#35:                                # %do.end.401
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_36:                               # %do.body.428
	movq	424(%rbx), %rsi
	movq	424(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_42
# BB#37:                                # %do.body.432
	testq	%rax, %rax
	je	.LBB5_39
# BB#38:                                # %do.body.436
	incq	(%rax)
.LBB5_39:                               # %do.body.449
	testq	%rsi, %rsi
	je	.LBB5_42
# BB#40:                                # %do.end.456
	decq	(%rsi)
	jne	.LBB5_42
# BB#41:                                # %do.end.471
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_42:                               # %do.body.495
	movq	416(%rbx), %rsi
	movq	416(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_48
# BB#43:                                # %do.body.499
	testq	%rax, %rax
	je	.LBB5_45
# BB#44:                                # %do.body.503
	incq	(%rax)
.LBB5_45:                               # %do.body.516
	testq	%rsi, %rsi
	je	.LBB5_48
# BB#46:                                # %do.end.523
	decq	(%rsi)
	jne	.LBB5_48
# BB#47:                                # %do.end.538
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
.LBB5_48:                               # %do.body.562
	movq	400(%rbx), %rsi
	movq	400(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_54
# BB#49:                                # %do.body.566
	testq	%rax, %rax
	je	.LBB5_51
# BB#50:                                # %do.body.570
	incq	8(%rax)
.LBB5_51:                               # %do.body.583
	testq	%rsi, %rsi
	je	.LBB5_54
# BB#52:                                # %do.end.590
	decq	8(%rsi)
	jne	.LBB5_54
# BB#53:                                # %do.end.605
	movq	16(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rsi)
.LBB5_54:                               # %do.body.629
	movq	392(%rbx), %rsi
	movq	392(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_60
# BB#55:                                # %do.body.633
	testq	%rax, %rax
	je	.LBB5_57
# BB#56:                                # %do.body.637
	incq	160(%rax)
.LBB5_57:                               # %do.body.650
	testq	%rsi, %rsi
	je	.LBB5_60
# BB#58:                                # %do.end.657
	decq	160(%rsi)
	jne	.LBB5_60
# BB#59:                                # %do.end.672
	movq	168(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*176(%rsi)
.LBB5_60:                               # %do.body.696
	movq	368(%rbx), %rsi
	movq	368(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_66
# BB#61:                                # %do.body.700
	testq	%rax, %rax
	je	.LBB5_63
# BB#62:                                # %do.body.704
	incq	8(%rax)
.LBB5_63:                               # %do.body.717
	testq	%rsi, %rsi
	je	.LBB5_66
# BB#64:                                # %do.end.724
	decq	8(%rsi)
	jne	.LBB5_66
# BB#65:                                # %do.end.739
	movq	16(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rsi)
.LBB5_66:                               # %do.body.763
	movq	1312(%rbx), %rsi
	movq	1312(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_72
# BB#67:                                # %do.body.767
	testq	%rax, %rax
	je	.LBB5_69
# BB#68:                                # %do.body.771
	incq	8(%rax)
.LBB5_69:                               # %do.body.784
	testq	%rsi, %rsi
	je	.LBB5_72
# BB#70:                                # %do.end.791
	decq	8(%rsi)
	jne	.LBB5_72
# BB#71:                                # %do.end.806
	movq	16(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rsi)
.LBB5_72:                               # %do.body.830
	movq	1320(%rbx), %rsi
	movq	1320(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_78
# BB#73:                                # %do.body.834
	testq	%rax, %rax
	je	.LBB5_75
# BB#74:                                # %do.body.838
	incq	8(%rax)
.LBB5_75:                               # %do.body.851
	testq	%rsi, %rsi
	je	.LBB5_78
# BB#76:                                # %do.end.858
	decq	8(%rsi)
	jne	.LBB5_78
# BB#77:                                # %do.end.873
	movq	16(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rsi)
.LBB5_78:                               # %do.body.897
	movq	344(%rbx), %rsi
	movq	344(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_84
# BB#79:                                # %do.body.901
	testq	%rax, %rax
	je	.LBB5_81
# BB#80:                                # %do.body.905
	incq	16(%rax)
.LBB5_81:                               # %do.body.918
	testq	%rsi, %rsi
	je	.LBB5_84
# BB#82:                                # %do.end.925
	decq	16(%rsi)
	jne	.LBB5_84
# BB#83:                                # %do.end.940
	movq	24(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*32(%rsi)
.LBB5_84:                               # %do.body.964
	movq	352(%rbx), %rsi
	movq	352(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_90
# BB#85:                                # %do.body.968
	testq	%rax, %rax
	je	.LBB5_87
# BB#86:                                # %do.body.972
	incq	16(%rax)
.LBB5_87:                               # %do.body.985
	testq	%rsi, %rsi
	je	.LBB5_90
# BB#88:                                # %do.end.992
	decq	16(%rsi)
	jne	.LBB5_90
# BB#89:                                # %do.end.1007
	movq	24(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*32(%rsi)
.LBB5_90:                               # %do.body.1031
	movq	336(%rbx), %rsi
	movq	336(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB5_95
# BB#91:                                # %do.body.1035
	testq	%rax, %rax
	je	.LBB5_93
# BB#92:                                # %do.body.1039
	incq	88(%rax)
.LBB5_93:                               # %do.body.1052
	testq	%rsi, %rsi
	je	.LBB5_95
# BB#94:                                # %do.end.1059
	decq	88(%rsi)
	je	.LBB5_96
.LBB5_95:                               # %do.end.1097
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB5_96:                               # %do.end.1074
	movq	96(%rsi), %rdi
	movq	104(%rsi), %rax
	movl	$.L.str.3, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	gs_imager_state_pre_assign, .Lfunc_end5-gs_imager_state_pre_assign
	.cfi_endproc

	.globl	gs_imager_state_release
	.align	16, 0x90
	.type	gs_imager_state_release,@function
gs_imager_state_release:                # @gs_imager_state_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	392(%rbx), %r14
	movq	1008(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
# BB#1:                                 # %do.end
	decq	24(%rsi)
	jne	.LBB6_3
# BB#2:                                 # %do.end.14
	movq	32(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*40(%rsi)
	movq	$0, 1008(%rbx)
.LBB6_3:                                # %do.end.28
	movq	$0, 1008(%rbx)
	movq	488(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_6
# BB#4:                                 # %do.end.36
	decq	(%rsi)
	jne	.LBB6_6
# BB#5:                                 # %do.end.53
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 488(%rbx)
.LBB6_6:                                # %do.end.75
	movq	$0, 488(%rbx)
	movq	472(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_9
# BB#7:                                 # %do.end.85
	decq	(%rsi)
	jne	.LBB6_9
# BB#8:                                 # %do.end.102
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 472(%rbx)
.LBB6_9:                                # %do.end.124
	movq	$0, 472(%rbx)
	movq	456(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_12
# BB#10:                                # %do.end.134
	decq	(%rsi)
	jne	.LBB6_12
# BB#11:                                # %do.end.151
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 456(%rbx)
.LBB6_12:                               # %do.end.173
	movq	$0, 456(%rbx)
	movq	440(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_15
# BB#13:                                # %do.end.183
	decq	(%rsi)
	jne	.LBB6_15
# BB#14:                                # %do.end.200
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 440(%rbx)
.LBB6_15:                               # %do.end.222
	movq	$0, 440(%rbx)
	movq	424(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_18
# BB#16:                                # %do.end.231
	decq	(%rsi)
	jne	.LBB6_18
# BB#17:                                # %do.end.246
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 424(%rbx)
.LBB6_18:                               # %do.end.264
	movq	$0, 424(%rbx)
	movq	416(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_21
# BB#19:                                # %do.end.272
	decq	(%rsi)
	jne	.LBB6_21
# BB#20:                                # %do.end.287
	movq	8(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*16(%rsi)
	movq	$0, 416(%rbx)
.LBB6_21:                               # %do.end.305
	movq	$0, 416(%rbx)
	movq	400(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_24
# BB#22:                                # %do.end.313
	decq	8(%rsi)
	jne	.LBB6_24
# BB#23:                                # %do.end.328
	movq	16(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rsi)
	movq	$0, 400(%rbx)
.LBB6_24:                               # %do.end.346
	movq	$0, 400(%rbx)
	testq	%r14, %r14
	je	.LBB6_27
# BB#25:                                # %land.lhs.true
	cmpq	$1, 160(%r14)
	jne	.LBB6_27
# BB#26:                                # %if.then.351
	movq	168(%r14), %rsi
	movq	%r14, %rdi
	callq	gx_device_halftone_release
.LBB6_27:                               # %do.body.355
	movq	392(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_30
# BB#28:                                # %do.end.362
	decq	160(%rsi)
	jne	.LBB6_30
# BB#29:                                # %do.end.377
	movq	168(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*176(%rsi)
	movq	$0, 392(%rbx)
.LBB6_30:                               # %do.end.395
	movq	$0, 392(%rbx)
	movq	368(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_33
# BB#31:                                # %do.end.403
	decq	8(%rsi)
	jne	.LBB6_33
# BB#32:                                # %do.end.418
	movq	16(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rsi)
	movq	$0, 368(%rbx)
.LBB6_33:                               # %do.end.436
	movq	$0, 368(%rbx)
	movq	1312(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_36
# BB#34:                                # %do.end.444
	decq	8(%rsi)
	jne	.LBB6_36
# BB#35:                                # %do.end.459
	movq	16(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rsi)
	movq	$0, 1312(%rbx)
.LBB6_36:                               # %do.end.477
	movq	$0, 1312(%rbx)
	movq	1320(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_39
# BB#37:                                # %do.end.485
	decq	8(%rsi)
	jne	.LBB6_39
# BB#38:                                # %do.end.500
	movq	16(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rsi)
	movq	$0, 1320(%rbx)
.LBB6_39:                               # %do.end.518
	movq	$0, 1320(%rbx)
	movq	344(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_42
# BB#40:                                # %do.end.526
	decq	16(%rsi)
	jne	.LBB6_42
# BB#41:                                # %do.end.541
	movq	24(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*32(%rsi)
	movq	$0, 344(%rbx)
.LBB6_42:                               # %do.end.559
	movq	$0, 344(%rbx)
	movq	352(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_45
# BB#43:                                # %do.end.567
	decq	16(%rsi)
	jne	.LBB6_45
# BB#44:                                # %do.end.582
	movq	24(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*32(%rsi)
	movq	$0, 352(%rbx)
.LBB6_45:                               # %do.end.600
	movq	$0, 352(%rbx)
	movq	336(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_48
# BB#46:                                # %do.end.608
	decq	88(%rsi)
	jne	.LBB6_48
# BB#47:                                # %do.end.623
	movq	96(%rsi), %rdi
	movl	$.L.str.4, %edx
	callq	*104(%rsi)
	movq	$0, 336(%rbx)
.LBB6_48:                               # %do.end.641
	movq	$0, 336(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_imager_state_release, .Lfunc_end6-gs_imager_state_release
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_imager_state"
	.size	.L.str, 16

	.type	st_imager_state,@object # @st_imager_state
	.section	.rodata,"a",@progbits
	.globl	st_imager_state
	.align	8
st_imager_state:
	.long	1616                    # 0x650
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	imager_state_enum_ptrs
	.quad	imager_state_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_imager_state, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_imager_state_init(transfer)"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_imager_state_copy"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_imager_state_pre_assign"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_imager_state_release"
	.size	.L.str.4, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
