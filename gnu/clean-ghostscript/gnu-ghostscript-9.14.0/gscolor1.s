	.text
	.file	"gscolor1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_1:
	.long	1065353216              # float 1
	.text
	.globl	gs_setcmykcolor
	.align	16, 0x90
	.type	gs_setcmykcolor,@function
gs_setcmykcolor:                        # @gs_setcmykcolor
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 80
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movsd	%xmm3, 32(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceCMYK
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_20
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_setcolorspace
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_19
# BB#2:                                 # %if.then.3
	movq	1744(%rbx), %rsi
	movq	1752(%rbx), %rbp
	movq	(%rsi), %rax
	movl	$-1, %edx
	movq	%rbp, %rdi
	callq	*104(%rax)
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ja	.LBB0_6
# BB#3:                                 # %cond.false
	ucomisd	.LCPI0_0(%rip), %xmm3
	ja	.LBB0_4
# BB#5:                                 # %cond.false
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	jmp	.LBB0_6
.LBB0_4:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
.LBB0_6:                                # %cond.end.16
	movss	%xmm2, 8(%rbp)
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	%xmm2, %xmm1
	movsd	32(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	24(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	ja	.LBB0_10
# BB#7:                                 # %cond.false.22
	ucomisd	.LCPI0_0(%rip), %xmm1
	ja	.LBB0_8
# BB#9:                                 # %cond.false.22
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	jmp	.LBB0_10
.LBB0_8:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB0_10:                               # %cond.end.29
	movss	%xmm0, 12(%rbp)
	xorps	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm4, %xmm1
	xorpd	%xmm2, %xmm2
	ja	.LBB0_14
# BB#11:                                # %cond.false.38
	ucomisd	.LCPI0_0(%rip), %xmm4
	ja	.LBB0_12
# BB#13:                                # %cond.false.38
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	jmp	.LBB0_14
.LBB0_12:
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
.LBB0_14:                               # %cond.end.45
	movss	%xmm2, 16(%rbp)
	ucomisd	%xmm3, %xmm1
	ja	.LBB0_18
# BB#15:                                # %cond.false.54
	ucomisd	.LCPI0_0(%rip), %xmm3
	ja	.LBB0_16
# BB#17:                                # %cond.false.54
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	jmp	.LBB0_18
.LBB0_16:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB0_18:                               # %cond.end.61
	movss	%xmm0, 20(%rbp)
	movq	$0, (%rbp)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB0_19:                               # %if.end.70
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	rc_decrement_only_cs
.LBB0_20:                               # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_setcmykcolor, .Lfunc_end0-gs_setcmykcolor
	.cfi_endproc

	.globl	gs_setblackgeneration
	.align	16, 0x90
	.type	gs_setblackgeneration,@function
gs_setblackgeneration:                  # @gs_setblackgeneration
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edx
	jmp	gs_setblackgeneration_remap # TAILCALL
.Lfunc_end1:
	.size	gs_setblackgeneration, .Lfunc_end1-gs_setblackgeneration
	.cfi_endproc

	.globl	gs_setblackgeneration_remap
	.align	16, 0x90
	.type	gs_setblackgeneration_remap,@function
gs_setblackgeneration_remap:            # @gs_setblackgeneration_remap
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
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	416(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$1, (%rax)
	jg	.LBB2_3
# BB#2:                                 # %lor.lhs.false.3
	movq	8(%rax), %rdi
	cmpq	8(%rbx), %rdi
	je	.LBB2_7
.LBB2_3:                                # %if.then
	movq	8(%rbx), %rdi
	movl	$st_transfer_map, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB2_9
# BB#4:                                 # %do.body.13
	movq	$1, (%rax)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	416(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_6
# BB#5:                                 # %do.end.30
	decq	(%rcx)
.LBB2_6:                                # %if.end.36
	movq	%rax, 416(%rbx)
.LBB2_7:                                # %do.end.40
	movq	%r15, 24(%rax)
	movl	$1, %esi
	callq	gs_next_ids
	movq	416(%rbx), %rsi
	movq	%rax, 48(%rsi)
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	je	.LBB2_9
# BB#8:                                 # %if.then.47
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB2_9:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_setblackgeneration_remap, .Lfunc_end2-gs_setblackgeneration_remap
	.cfi_endproc

	.globl	gs_currentblackgeneration
	.align	16, 0x90
	.type	gs_currentblackgeneration,@function
gs_currentblackgeneration:              # @gs_currentblackgeneration
	.cfi_startproc
# BB#0:                                 # %entry
	movq	416(%rdi), %rax
	movq	24(%rax), %rax
	retq
.Lfunc_end3:
	.size	gs_currentblackgeneration, .Lfunc_end3-gs_currentblackgeneration
	.cfi_endproc

	.globl	gs_setundercolorremoval
	.align	16, 0x90
	.type	gs_setundercolorremoval,@function
gs_setundercolorremoval:                # @gs_setundercolorremoval
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edx
	jmp	gs_setundercolorremoval_remap # TAILCALL
.Lfunc_end4:
	.size	gs_setundercolorremoval, .Lfunc_end4-gs_setundercolorremoval
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gs_setundercolorremoval_remap
	.align	16, 0x90
	.type	gs_setundercolorremoval_remap,@function
gs_setundercolorremoval_remap:          # @gs_setundercolorremoval_remap
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
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	424(%rbx), %rax
	testq	%rax, %rax
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$1, (%rax)
	jg	.LBB5_3
# BB#2:                                 # %lor.lhs.false.3
	movq	8(%rax), %rdi
	cmpq	8(%rbx), %rdi
	je	.LBB5_7
.LBB5_3:                                # %if.then
	movq	8(%rbx), %rdi
	movl	$st_transfer_map, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB5_9
# BB#4:                                 # %do.body.13
	movq	$1, (%rax)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	424(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_6
# BB#5:                                 # %do.end.30
	decq	(%rcx)
.LBB5_6:                                # %if.end.36
	movq	%rax, 424(%rbx)
.LBB5_7:                                # %do.end.40
	movq	%r15, 24(%rax)
	movl	$1, %esi
	callq	gs_next_ids
	movq	424(%rbx), %rsi
	movq	%rax, 48(%rsi)
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	je	.LBB5_9
# BB#8:                                 # %if.then.47
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB5_9:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_setundercolorremoval_remap, .Lfunc_end5-gs_setundercolorremoval_remap
	.cfi_endproc

	.globl	gs_currentundercolorremoval
	.align	16, 0x90
	.type	gs_currentundercolorremoval,@function
gs_currentundercolorremoval:            # @gs_currentundercolorremoval
	.cfi_startproc
# BB#0:                                 # %entry
	movq	424(%rdi), %rax
	movq	24(%rax), %rax
	retq
.Lfunc_end6:
	.size	gs_currentundercolorremoval, .Lfunc_end6-gs_currentundercolorremoval
	.cfi_endproc

	.globl	gs_setcolortransfer_remap
	.align	16, 0x90
	.type	gs_setcolortransfer_remap,@function
gs_setcolortransfer_remap:              # @gs_setcolortransfer_remap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 112
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movl	%r9d, 52(%rsp)          # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movl	$4, %esi
	callq	gs_next_ids
	movq	%rax, %r15
	movq	1872(%rbx), %rbp
	movq	440(%rbx), %r13
	movq	456(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	488(%rbx), %r14
	testq	%r14, %r14
	je	.LBB7_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$1, (%r14)
	jg	.LBB7_3
# BB#2:                                 # %lor.lhs.false.3
	movq	8(%r14), %rdi
	cmpq	8(%rbx), %rdi
	movq	%r13, %rax
	je	.LBB7_7
.LBB7_3:                                # %if.then
	movq	8(%rbx), %rdi
	movl	$st_transfer_map, %esi
	movl	$.L.str.3, %edx
	callq	*72(%rdi)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB7_52
# BB#4:                                 # %do.body.15
	movq	$1, (%rax)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	488(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_6
# BB#5:                                 # %do.end.32
	decq	(%rcx)
.LBB7_6:                                # %cleanup.thread
	movq	%rax, 488(%rbx)
	movq	440(%rbx), %rax
.LBB7_7:                                # %do.body.43
	testq	%rax, %rax
	je	.LBB7_10
# BB#8:                                 # %lor.lhs.false.45
	cmpq	$1, (%rax)
	jg	.LBB7_10
# BB#9:                                 # %lor.lhs.false.50
	cmpq	%rdi, 8(%rax)
	je	.LBB7_14
.LBB7_10:                               # %if.then.56
	movl	$st_transfer_map, %esi
	movl	$.L.str.3, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB7_45
# BB#11:                                # %do.body.67
	movq	$1, (%rax)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	440(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_13
# BB#12:                                # %do.end.89
	decq	(%rcx)
.LBB7_13:                               # %cleanup.98.thread
	movq	%rax, 440(%rbx)
.LBB7_14:                               # %do.body.104
	movq	456(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_17
# BB#15:                                # %lor.lhs.false.106
	cmpq	$1, (%rax)
	jg	.LBB7_17
# BB#16:                                # %lor.lhs.false.111
	cmpq	%rdi, 8(%rax)
	je	.LBB7_21
.LBB7_17:                               # %if.then.117
	movl	$st_transfer_map, %esi
	movl	$.L.str.3, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	je	.LBB7_38
# BB#18:                                # %do.body.128
	movq	$1, (%rax)
	movq	8(%rbx), %rdi
	movq	%rdi, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	movq	456(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_20
# BB#19:                                # %do.end.150
	decq	(%rcx)
.LBB7_20:                               # %cleanup.159.thread
	movq	%rax, 456(%rbx)
.LBB7_21:                               # %do.body.165
	movq	472(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_24
# BB#22:                                # %lor.lhs.false.167
	cmpq	$1, (%rcx)
	jg	.LBB7_24
# BB#23:                                # %lor.lhs.false.172
	cmpq	%rdi, 8(%rcx)
	je	.LBB7_28
.LBB7_24:                               # %if.then.178
	movl	$st_transfer_map, %esi
	movl	$.L.str.3, %edx
	callq	*72(%rdi)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB7_31
# BB#25:                                # %do.body.189
	movq	$1, (%rcx)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rcx)
	movq	$rc_free_struct_only, 16(%rcx)
	movq	472(%rbx), %rax
	testq	%rax, %rax
	je	.LBB7_27
# BB#26:                                # %do.end.211
	decq	(%rax)
.LBB7_27:                               # %cleanup.220.thread
	movq	%rcx, 472(%rbx)
	movq	456(%rbx), %rax
.LBB7_28:                               # %do.end.225
	movq	488(%rbx), %rdx
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, 24(%rdx)
	movq	%r15, 48(%rdx)
	movq	440(%rbx), %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rsi, 24(%rdx)
	leaq	1(%r15), %rsi
	movq	%rsi, 48(%rdx)
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 24(%rax)
	leaq	2(%r15), %rdx
	movq	%rdx, 48(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rcx)
	addq	$3, %r15
	movq	%r15, 48(%rcx)
	movl	$.L.str.4, %esi
	movl	$3, %edx
	movl	$2, %ecx
	movq	%rbp, %rdi
	callq	gs_color_name_component_number
	movl	%eax, 432(%rbx)
	movl	$.L.str.5, %esi
	movl	$5, %edx
	movl	$2, %ecx
	movq	%rbp, %rdi
	callq	gs_color_name_component_number
	movl	%eax, 448(%rbx)
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movl	$2, %ecx
	movq	%rbp, %rdi
	callq	gs_color_name_component_number
	movl	%eax, 464(%rbx)
	movl	$.L.str.7, %esi
	movl	$4, %edx
	movl	$2, %ecx
	movq	%rbp, %rdi
	callq	gs_color_name_component_number
	movl	%eax, 480(%rbx)
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB7_30
# BB#29:                                # %if.then.248
	movq	440(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	456(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	472(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	488(%rbx), %rsi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	load_transfer_map
	movq	%rbx, %rdi
	callq	gx_set_effective_transfer
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB7_52
.LBB7_31:                               # %do.body.255
	movq	456(%rbx), %rsi
	cmpq	8(%rsp), %rsi           # 8-byte Folded Reload
	je	.LBB7_38
# BB#32:                                # %do.body.260
	movq	8(%rsp), %rbp           # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB7_34
# BB#33:                                # %do.body.264
	incq	(%rbp)
.LBB7_34:                               # %do.body.276
	testq	%rsi, %rsi
	je	.LBB7_37
# BB#35:                                # %do.end.283
	decq	(%rsi)
	jne	.LBB7_37
# BB#36:                                # %do.end.298
	movq	8(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*16(%rsi)
.LBB7_37:                               # %do.end.318
	movq	%rbp, 456(%rbx)
.LBB7_38:                               # %do.body.324
	movq	440(%rbx), %rsi
	cmpq	%r13, %rsi
	je	.LBB7_45
# BB#39:                                # %do.body.329
	testq	%r13, %r13
	je	.LBB7_41
# BB#40:                                # %do.body.333
	incq	(%r13)
.LBB7_41:                               # %do.body.346
	testq	%rsi, %rsi
	je	.LBB7_44
# BB#42:                                # %do.end.353
	decq	(%rsi)
	jne	.LBB7_44
# BB#43:                                # %do.end.368
	movq	8(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*16(%rsi)
.LBB7_44:                               # %do.end.388
	movq	%r13, 440(%rbx)
.LBB7_45:                               # %do.body.394
	movq	488(%rbx), %rsi
	movl	$-25, %r12d
	cmpq	%r14, %rsi
	je	.LBB7_52
# BB#46:                                # %do.body.399
	testq	%r14, %r14
	je	.LBB7_48
# BB#47:                                # %do.body.403
	incq	(%r14)
.LBB7_48:                               # %do.body.416
	testq	%rsi, %rsi
	je	.LBB7_51
# BB#49:                                # %do.end.423
	decq	(%rsi)
	jne	.LBB7_51
# BB#50:                                # %do.end.438
	movq	8(%rsi), %rdi
	movl	$.L.str.8, %edx
	callq	*16(%rsi)
.LBB7_51:                               # %do.end.458
	movq	%r14, 488(%rbx)
	jmp	.LBB7_52
.LBB7_30:                               # %if.else.253
	movq	%rbx, %rdi
	callq	gx_set_effective_transfer
	xorl	%r12d, %r12d
.LBB7_52:                               # %cleanup.464
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_setcolortransfer_remap, .Lfunc_end7-gs_setcolortransfer_remap
	.cfi_endproc

	.globl	gs_setcolortransfer
	.align	16, 0x90
	.type	gs_setcolortransfer,@function
gs_setcolortransfer:                    # @gs_setcolortransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %r9d
	jmp	gs_setcolortransfer_remap # TAILCALL
.Lfunc_end8:
	.size	gs_setcolortransfer, .Lfunc_end8-gs_setcolortransfer
	.cfi_endproc

	.globl	gs_currentcolortransfer
	.align	16, 0x90
	.type	gs_currentcolortransfer,@function
gs_currentcolortransfer:                # @gs_currentcolortransfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	440(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, (%rsi)
	movq	456(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, 8(%rsi)
	movq	472(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, 16(%rsi)
	movq	488(%rdi), %rax
	movq	24(%rax), %rax
	movq	%rax, 24(%rsi)
	retq
.Lfunc_end9:
	.size	gs_currentcolortransfer, .Lfunc_end9-gs_currentcolortransfer
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_setcmykcolor"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_setblackgeneration"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_setundercolorremoval"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_setcolortransfer"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Red"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Green"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Blue"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gray"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"setcolortransfer"
	.size	.L.str.8, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
