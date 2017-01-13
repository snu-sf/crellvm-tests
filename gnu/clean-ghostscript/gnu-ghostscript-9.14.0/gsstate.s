	.text
	.file	"gsstate.bc"
	.align	16, 0x90
	.type	gs_state_enum_ptrs,@function
gs_state_enum_ptrs:                     # @gs_state_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movl	%ecx, %eax
	cmpl	$16, %ecx
	jbe	.LBB0_1
# BB#2:                                 # %sw.default
	addl	$-17, %ecx
	movl	$st_imager_state, %r9d
	movq	%rbx, %r8
	popq	%rbx
	jmpq	*st_imager_state+32(%rip) # TAILCALL
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_3:                                # %sw.bb
	movq	1616(%rsi), %rax
	jmp	.LBB0_20
.LBB0_4:                                # %sw.bb.1
	movq	1680(%rsi), %rax
	jmp	.LBB0_20
.LBB0_5:                                # %sw.bb.3
	movq	1688(%rsi), %rax
	jmp	.LBB0_20
.LBB0_6:                                # %sw.bb.5
	movq	1696(%rsi), %rax
	jmp	.LBB0_20
.LBB0_7:                                # %sw.bb.7
	movq	1704(%rsi), %rax
	jmp	.LBB0_20
.LBB0_8:                                # %sw.bb.9
	movq	1728(%rsi), %rax
	jmp	.LBB0_20
.LBB0_9:                                # %sw.bb.11
	movq	1744(%rsi), %rax
	jmp	.LBB0_20
.LBB0_10:                               # %sw.bb.13
	movq	1752(%rsi), %rax
	jmp	.LBB0_20
.LBB0_11:                               # %sw.bb.17
	movq	1760(%rsi), %rax
	jmp	.LBB0_20
.LBB0_12:                               # %sw.bb.21
	movq	1768(%rsi), %rax
	jmp	.LBB0_20
.LBB0_13:                               # %sw.bb.26
	movq	1776(%rsi), %rax
	jmp	.LBB0_20
.LBB0_14:                               # %sw.bb.31
	movq	1784(%rsi), %rax
	jmp	.LBB0_20
.LBB0_15:                               # %sw.bb.36
	movq	1792(%rsi), %rax
	jmp	.LBB0_20
.LBB0_16:                               # %sw.bb.38
	movq	1800(%rsi), %rax
	jmp	.LBB0_20
.LBB0_17:                               # %sw.bb.40
	movq	1856(%rsi), %rax
	jmp	.LBB0_20
.LBB0_18:                               # %sw.bb.42
	movq	1872(%rsi), %rdi
	callq	gx_device_enum_ptr
	jmp	.LBB0_20
.LBB0_19:                               # %sw.bb.45
	movq	1880(%rsi), %rax
.LBB0_20:                               # %cleanup
	movq	%rax, (%rbx)
	movl	$ptr_struct_procs, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_state_enum_ptrs, .Lfunc_end0-gs_state_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_3
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

	.text
	.align	16, 0x90
	.type	gs_state_reloc_ptrs,@function
gs_state_reloc_ptrs:                    # @gs_state_reloc_ptrs
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_imager_state, %edx
	callq	*st_imager_state+40(%rip)
	movq	(%r14), %rax
	movq	1616(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1616(%rbx)
	movq	(%r14), %rax
	movq	1680(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1680(%rbx)
	movq	(%r14), %rax
	movq	1688(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1688(%rbx)
	movq	(%r14), %rax
	movq	1696(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1696(%rbx)
	movq	(%r14), %rax
	movq	1704(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1704(%rbx)
	movq	(%r14), %rax
	movq	1728(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1728(%rbx)
	movq	(%r14), %rax
	movq	1744(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1744(%rbx)
	movq	(%r14), %rax
	movq	1752(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1752(%rbx)
	movq	(%r14), %rax
	movq	1760(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1760(%rbx)
	movq	(%r14), %rax
	movq	1768(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1768(%rbx)
	movq	(%r14), %rax
	movq	1776(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1776(%rbx)
	movq	(%r14), %rax
	movq	1784(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1784(%rbx)
	movq	(%r14), %rax
	movq	1792(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1792(%rbx)
	movq	(%r14), %rax
	movq	1800(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1800(%rbx)
	movq	(%r14), %rax
	movq	1856(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1856(%rbx)
	movq	1872(%rbx), %rdi
	movq	%r14, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 1872(%rbx)
	movq	(%r14), %rax
	movq	1880(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 1880(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gs_state_reloc_ptrs, .Lfunc_end1-gs_state_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_state_alloc
	.align	16, 0x90
	.type	gs_state_alloc,@function
gs_state_alloc:                         # @gs_state_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp11:
	.cfi_def_cfa_offset 320
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r12, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	callq	gstate_alloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_12
# BB#1:                                 # %if.end
	movl	$gstate_initial, %esi
	movl	$1616, %edx             # imm = 0x650
	movq	%r12, %rdi
	callq	memcpy
	movq	$0, 1616(%r12)
	movq	$0, 1680(%r12)
	movq	$0, 1688(%r12)
	movq	$0, 1696(%r12)
	movq	$0, 1704(%r12)
	movq	$0, 1728(%r12)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 1792(%r12)
	movq	$0, 1856(%r12)
	movq	$0, 1872(%r12)
	movq	$0, 1880(%r12)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gs_imager_state_initialize
	testl	%eax, %eax
	js	.LBB2_11
# BB#2:                                 # %do.body
	movl	$st_halftone, %esi
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, 368(%r12)
	testq	%rax, %rax
	je	.LBB2_11
# BB#3:                                 # %do.body.8
	movq	$1, 8(%rax)
	movq	%r14, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movl	$0, (%rax)
	movq	%r14, %rdi
	callq	*32(%r14)
	xorl	%edi, %edi
	movl	$.L.str.3, %edx
	movq	%rax, %rsi
	callq	gx_path_alloc_shared
	movq	%rax, 1680(%r12)
	xorl	%edi, %edi
	movl	$.L.str.4, %edx
	movq	%r14, %rsi
	callq	gx_cpath_alloc_shared
	movq	%rax, 1688(%r12)
	movq	$0, 1696(%r12)
	xorl	%edi, %edi
	movl	$.L.str.5, %edx
	movq	%r14, %rsi
	callq	gx_cpath_alloc_shared
	movq	%rax, 1704(%r12)
	testq	%rax, %rax
	je	.LBB2_11
# BB#4:                                 # %if.end.32
	movl	$0, 232(%rax)
	movq	1688(%r12), %rax
	movq	296(%rax), %rcx
	movq	%rcx, 1712(%r12)
	movq	$0, 1720(%r12)
	movq	%rax, 1728(%r12)
	movl	$1, 1736(%r12)
	movq	8(%r12), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 1744(%r12)
	testq	%rax, %rax
	je	.LBB2_11
# BB#5:                                 # %if.end.44
	movq	8(%r12), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 1768(%r12)
	testq	%rax, %rax
	je	.LBB2_11
# BB#6:                                 # %if.end.55
	movl	$0, 1848(%r12)
	movupd	1776(%r12), %xmm0
	movq	1760(%r12), %rcx
	movups	1744(%r12), %xmm1
	movupd	%xmm0, 1752(%r12)
	movq	%rcx, 1784(%r12)
	movq	%rax, 1744(%r12)
	movups	%xmm1, 1768(%r12)
	movq	1008(%r12), %rax
	movq	1328(%r12), %rcx
	movq	%rcx, 1008(%r12)
	movq	%rax, 1328(%r12)
	leaq	1024(%r12), %r14
	leaq	(%rsp), %rbx
	movl	$280, %edx              # imm = 0x118
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%r12, %r15
	addq	$1336, %r15             # imm = 0x538
	movl	$280, %edx              # imm = 0x118
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	272(%r12), %eax
	movl	284(%r12), %ecx
	movl	%ecx, 272(%r12)
	movl	%eax, 284(%r12)
	movl	276(%r12), %eax
	movl	288(%r12), %ecx
	movl	%ecx, 276(%r12)
	movl	%eax, 288(%r12)
	movl	280(%r12), %eax
	movl	292(%r12), %ecx
	movl	%ecx, 280(%r12)
	movl	%eax, 292(%r12)
	movq	%r12, %rdi
	callq	gx_set_device_color_1
	testl	%eax, %eax
	js	.LBB2_11
# BB#7:                                 # %if.end.59
	movupd	1768(%r12), %xmm0
	movq	1760(%r12), %rax
	movq	1784(%r12), %rcx
	movq	%rcx, 1760(%r12)
	movq	%rax, 1784(%r12)
	movups	1744(%r12), %xmm1
	movupd	%xmm0, 1744(%r12)
	movups	%xmm1, 1768(%r12)
	movq	1008(%r12), %rax
	movq	1328(%r12), %rcx
	movq	%rcx, 1008(%r12)
	movq	%rax, 1328(%r12)
	leaq	(%rsp), %rbx
	movl	$280, %edx              # imm = 0x118
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	272(%r12), %eax
	movl	284(%r12), %ecx
	movl	%ecx, 272(%r12)
	movl	%eax, 284(%r12)
	movl	276(%r12), %eax
	movl	288(%r12), %ecx
	movl	%ecx, 276(%r12)
	movl	%eax, 288(%r12)
	movl	280(%r12), %eax
	movl	292(%r12), %ecx
	movl	%ecx, 280(%r12)
	movl	%eax, 292(%r12)
	movq	%r12, %rdi
	callq	gx_set_device_color_1
	testl	%eax, %eax
	js	.LBB2_11
# BB#8:                                 # %if.end.63
	movq	$0, 1872(%r12)
	movq	%r12, %rdi
	callq	gs_nulldevice
	testl	%eax, %eax
	js	.LBB2_11
# BB#9:                                 # %if.end.68
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	gs_setalpha
	movl	$gs_identity_transfer, %esi
	movq	%r12, %rdi
	callq	gs_settransfer
	movq	%r12, %rdi
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	gs_setflat
	movl	$76, 300(%r12)
	movl	$76, 304(%r12)
	movl	$0, 208(%r12)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_setstrokeadjust
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 1792(%r12)
	movl	$0, 1852(%r12)
	movq	$0, 1856(%r12)
	movl	$0, 1864(%r12)
	movq	$0, 1880(%r12)
	movq	%r12, %rdi
	callq	gs_initgraphics
	testl	%eax, %eax
	js	.LBB2_11
# BB#10:
	movq	%r12, %rbx
	jmp	.LBB2_12
.LBB2_11:                               # %fail
	movq	%r12, %rdi
	callq	gstate_free_contents
	movq	8(%r12), %rdi
	movl	$.L.str.6, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
.LBB2_12:                               # %cleanup
	movq	%rbx, %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gs_state_alloc, .Lfunc_end2-gs_state_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_alloc,@function
gstate_alloc:                           # @gstate_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r13, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$st_gs_state, %esi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB3_15
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	*32(%rbx)
	testq	%r12, %r12
	je	.LBB3_2
# BB#3:                                 # %lor.lhs.false.i
	movq	1680(%r12), %rdi
	movl	$.L.str.17, %edx
	movq	%rax, %rsi
	callq	gx_path_alloc_shared
	movq	%rax, 1680(%r15)
	movq	1688(%r12), %rdi
	movl	$.L.str.18, %edx
	movq	%rbx, %rsi
	callq	gx_cpath_alloc_shared
	movq	%r15, %r13
	addq	$1688, %r13             # imm = 0x698
	movq	%rax, 1688(%r15)
	cmpl	$0, 1736(%r12)
	jne	.LBB3_4
# BB#5:                                 # %if.else.i
	movq	1728(%r12), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	gx_cpath_alloc_shared
	movq	%rax, 1728(%r15)
	movl	$0, 1736(%r15)
	jmp	.LBB3_6
.LBB3_2:                                # %cond.end.9.i
	xorl	%edi, %edi
	movl	$.L.str.17, %edx
	movq	%rax, %rsi
	callq	gx_path_alloc_shared
	movq	%rax, 1680(%r15)
	xorl	%edi, %edi
	movl	$.L.str.18, %edx
	movq	%rbx, %rsi
	callq	gx_cpath_alloc_shared
	movq	%r15, %r13
	addq	$1688, %r13             # imm = 0x698
	movq	%rax, 1688(%r15)
.LBB3_4:                                # %if.then.i
	movq	(%r13), %rax
	movq	%rax, 1728(%r15)
	movl	$1, 1736(%r15)
.LBB3_6:                                # %if.end.i
	movq	$0, 1744(%r15)
	movq	$0, 1768(%r15)
	movl	$st_client_color, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, 1752(%r15)
	movl	$st_client_color, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, 1776(%r15)
	movl	$st_device_color, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, 1760(%r15)
	movl	$st_device_color, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*72(%rbx)
	movq	%rax, 1784(%r15)
	cmpq	$0, 1680(%r15)
	je	.LBB3_13
# BB#7:                                 # %lor.lhs.false.44.i
	cmpq	$0, (%r13)
	je	.LBB3_13
# BB#8:                                 # %lor.lhs.false.47.i
	cmpq	$0, 1728(%r15)
	je	.LBB3_13
# BB#9:                                 # %lor.lhs.false.50.i
	cmpq	$0, 1752(%r15)
	je	.LBB3_13
# BB#10:                                # %lor.lhs.false.55.i
	cmpq	$0, 1760(%r15)
	je	.LBB3_13
# BB#11:                                # %lor.lhs.false.60.i
	testq	%rax, %rax
	je	.LBB3_13
# BB#12:                                # %lor.lhs.false.60.i
	movq	1776(%r15), %rax
	testq	%rax, %rax
	je	.LBB3_13
# BB#14:                                # %if.end.5
	movq	%rbx, 8(%r15)
	movq	%r15, %rax
	jmp	.LBB3_15
.LBB3_13:                               # %if.then.3
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gstate_free_parts
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*24(%rbx)
	xorl	%eax, %eax
.LBB3_15:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gstate_alloc, .Lfunc_end3-gstate_alloc
	.cfi_endproc

	.globl	gs_swapcolors_quick
	.align	16, 0x90
	.type	gs_swapcolors_quick,@function
gs_swapcolors_quick:                    # @gs_swapcolors_quick
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 40
	subq	$280, %rsp              # imm = 0x118
.Ltmp30:
	.cfi_def_cfa_offset 320
.Ltmp31:
	.cfi_offset %rbx, -40
.Ltmp32:
	.cfi_offset %r12, -32
.Ltmp33:
	.cfi_offset %r14, -24
.Ltmp34:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movups	1768(%rbx), %xmm0
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movups	1744(%rbx), %xmm1
	movups	%xmm0, 1744(%rbx)
	movups	%xmm1, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	1024(%rbx), %r14
	leaq	(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	leaq	1336(%rbx), %r12
	movl	$280, %edx              # imm = 0x118
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gs_swapcolors_quick, .Lfunc_end4-gs_swapcolors_quick
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_setfilladjust
	.align	16, 0x90
	.type	gs_setfilladjust,@function
gs_setfilladjust:                       # @gs_setfilladjust
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	xorps	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	movl	$0, %ecx
	jae	.LBB5_3
# BB#1:                                 # %cond.false
	movl	$128, %ecx
	ucomisd	.LCPI5_0(%rip), %xmm0
	jae	.LBB5_3
# BB#2:                                 # %cond.false.3
	mulsd	.LCPI5_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
.LBB5_3:                                # %cond.end.5
	movl	%ecx, 300(%rdi)
	ucomisd	%xmm1, %xmm2
	jae	.LBB5_6
# BB#4:                                 # %cond.false.11
	movl	$128, %eax
	ucomisd	.LCPI5_0(%rip), %xmm1
	jae	.LBB5_6
# BB#5:                                 # %cond.false.15
	mulsd	.LCPI5_1(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB5_6:                                # %cond.end.21
	movl	%eax, 304(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gs_setfilladjust, .Lfunc_end5-gs_setfilladjust
	.cfi_endproc

	.globl	gs_setlimitclamp
	.align	16, 0x90
	.type	gs_setlimitclamp,@function
gs_setlimitclamp:                       # @gs_setlimitclamp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 208(%rdi)
	retq
.Lfunc_end6:
	.size	gs_setlimitclamp, .Lfunc_end6-gs_setlimitclamp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gs_initgraphics
	.align	16, 0x90
	.type	gs_initgraphics,@function
gs_initgraphics:                        # @gs_initgraphics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_initmatrix
	movq	%rbx, %rdi
	callq	gs_newpath
	testl	%eax, %eax
	js	.LBB7_13
# BB#1:                                 # %lor.lhs.false
	movq	%rbx, %rdi
	callq	gs_initclip
	testl	%eax, %eax
	js	.LBB7_13
# BB#2:                                 # %lor.lhs.false.4
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	testl	%eax, %eax
	js	.LBB7_13
# BB#3:                                 # %lor.lhs.false.7
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setlinestartcap
	testl	%eax, %eax
	js	.LBB7_13
# BB#4:                                 # %lor.lhs.false.10
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setlineendcap
	testl	%eax, %eax
	js	.LBB7_13
# BB#5:                                 # %lor.lhs.false.13
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setlinedashcap
	testl	%eax, %eax
	js	.LBB7_13
# BB#6:                                 # %lor.lhs.false.16
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setlinejoin
	testl	%eax, %eax
	js	.LBB7_13
# BB#7:                                 # %lor.lhs.false.19
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	gs_setcurvejoin
	testl	%eax, %eax
	js	.LBB7_13
# BB#8:                                 # %lor.lhs.false.22
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorpd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setdash
	testl	%eax, %eax
	js	.LBB7_13
# BB#9:                                 # %lor.lhs.false.25
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setdashadapt
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gs_setdotlength
	testl	%eax, %eax
	js	.LBB7_13
# BB#10:                                # %lor.lhs.false.28
	movq	%rbx, %rdi
	callq	gs_setdotorientation
	testl	%eax, %eax
	js	.LBB7_13
# BB#11:                                # %lor.lhs.false.31
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_setmiterlimit
	testl	%eax, %eax
	js	.LBB7_13
# BB#12:                                # %if.end
	movl	$252, 212(%rbx)
	xorl	%eax, %eax
.LBB7_13:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gs_initgraphics, .Lfunc_end7-gs_initgraphics
	.cfi_endproc

	.globl	gs_state_free
	.align	16, 0x90
	.type	gs_state_free,@function
gs_state_free:                          # @gs_state_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gstate_free_contents
	movq	8(%rbx), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	gs_state_free, .Lfunc_end8-gs_state_free
	.cfi_endproc

	.globl	gs_state_set_client
	.align	16, 0x90
	.type	gs_state_set_client,@function
gs_state_set_client:                    # @gs_state_set_client
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 16(%rdi)
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 1904(%rdi)
	movups	%xmm0, 1888(%rdi)
	movl	%ecx, 316(%rdi)
	retq
.Lfunc_end9:
	.size	gs_state_set_client, .Lfunc_end9-gs_state_set_client
	.cfi_endproc

	.globl	gs_state_client_data
	.align	16, 0x90
	.type	gs_state_client_data,@function
gs_state_client_data:                   # @gs_state_client_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	retq
.Lfunc_end10:
	.size	gs_state_client_data, .Lfunc_end10-gs_state_client_data
	.cfi_endproc

	.globl	gs_state_free_chain
	.align	16, 0x90
	.type	gs_state_free_chain,@function
gs_state_free_chain:                    # @gs_state_free_chain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -24
.Ltmp43:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB11_2
	.align	16, 0x90
.LBB11_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	1616(%rbx), %r14
	movq	%rbx, %rdi
	callq	gstate_free_contents
	movq	8(%rbx), %rdi
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	testq	%r14, %r14
	movq	%r14, %rbx
	jne	.LBB11_1
.LBB11_2:                               # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	gs_state_free_chain, .Lfunc_end11-gs_state_free_chain
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_free_contents,@function
gstate_free_contents:                   # @gstate_free_contents
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp50:
	.cfi_def_cfa_offset 336
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
	movq	%rdi, %rbp
	movq	8(%rbp), %r14
	movq	1872(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_3
# BB#1:                                 # %do.end
	decq	56(%rsi)
	jne	.LBB12_3
# BB#2:                                 # %do.end.14
	movq	64(%rsi), %rdi
	movl	$.L.str.20, %edx
	callq	*72(%rsi)
	movq	$0, 1872(%rbp)
.LBB12_3:                               # %do.end.29
	movq	1696(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_6
	.align	16, 0x90
.LBB12_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	32(%rsi), %rbx
	decq	%rax
	movq	%rax, (%rsi)
	jne	.LBB12_5
# BB#12:                                # %do.end.13.i
                                        #   in Loop: Header=BB12_4 Depth=1
	movq	8(%rsi), %rdi
	movl	$.L.str.20, %edx
	callq	*16(%rsi)
.LBB12_5:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB12_4 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB12_4
.LBB12_6:                               # %clip_stack_rc_adjust.exit
	movq	1880(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_9
# BB#7:                                 # %do.end.36
	decq	24(%rsi)
	jne	.LBB12_9
# BB#8:                                 # %do.end.51
	movq	32(%rsi), %rdi
	movl	$.L.str.20, %edx
	callq	*40(%rsi)
	movq	$0, 1880(%rbp)
.LBB12_9:                               # %do.end.69
	movq	1752(%rbp), %rax
	movq	1776(%rbp), %rcx
	movq	%rcx, 1752(%rbp)
	movq	%rax, 1776(%rbp)
	movq	1760(%rbp), %rax
	movq	1784(%rbp), %rcx
	movq	%rcx, 1760(%rbp)
	movq	%rax, 1784(%rbp)
	movq	1744(%rbp), %rax
	movq	1768(%rbp), %rcx
	movq	%rcx, 1744(%rbp)
	movq	%rax, 1768(%rbp)
	movq	1008(%rbp), %rax
	movq	1328(%rbp), %rcx
	movq	%rcx, 1008(%rbp)
	movq	%rax, 1328(%rbp)
	leaq	1024(%rbp), %r15
	leaq	(%rsp), %r13
	movl	$280, %edx              # imm = 0x118
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy
	leaq	1336(%rbp), %r12
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	272(%rbp), %eax
	movl	284(%rbp), %ecx
	movl	%ecx, 272(%rbp)
	movl	%eax, 284(%rbp)
	movl	276(%rbp), %eax
	movl	288(%rbp), %ecx
	movl	%ecx, 276(%rbp)
	movl	%eax, 288(%rbp)
	movl	280(%rbp), %eax
	movl	292(%rbp), %ecx
	movl	%ecx, 280(%rbp)
	movl	%eax, 292(%rbp)
	movl	$-1, %esi
	movq	%rbp, %rdi
	callq	cs_adjust_counts_icc
	movq	1752(%rbp), %rax
	movq	1776(%rbp), %rcx
	movq	%rcx, 1752(%rbp)
	movq	%rax, 1776(%rbp)
	movq	1760(%rbp), %rax
	movq	1784(%rbp), %rcx
	movq	%rcx, 1760(%rbp)
	movq	%rax, 1784(%rbp)
	movq	1744(%rbp), %rax
	movq	1768(%rbp), %rcx
	movq	%rcx, 1744(%rbp)
	movq	%rax, 1768(%rbp)
	movq	1008(%rbp), %rax
	movq	1328(%rbp), %rcx
	movq	%rcx, 1008(%rbp)
	movq	%rax, 1328(%rbp)
	leaq	(%rsp), %r13
	movl	$280, %edx              # imm = 0x118
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	272(%rbp), %eax
	movl	284(%rbp), %ecx
	movl	%ecx, 272(%rbp)
	movl	%eax, 284(%rbp)
	movl	276(%rbp), %eax
	movl	288(%rbp), %ecx
	movl	%ecx, 276(%rbp)
	movl	%eax, 288(%rbp)
	movl	280(%rbp), %eax
	movl	292(%rbp), %ecx
	movl	%ecx, 280(%rbp)
	movl	%eax, 292(%rbp)
	movl	$-1, %esi
	movq	%rbp, %rdi
	callq	cs_adjust_counts_icc
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB12_11
# BB#10:                                # %if.then.70
	movq	%r14, %rsi
	callq	*1904(%rbp)
.LBB12_11:                              # %if.end.73
	movq	88(%rbp), %rsi
	movl	$.L.str.20, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movl	$.L.str.20, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gstate_free_parts
	movq	%rbp, %rdi
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_imager_state_release # TAILCALL
.Lfunc_end12:
	.size	gstate_free_contents, .Lfunc_end12-gstate_free_contents
	.cfi_endproc

	.globl	gs_gsave
	.align	16, 0x90
	.type	gs_gsave,@function
gs_gsave:                               # @gs_gsave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rsi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	callq	gstate_clone
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB13_6
# BB#1:                                 # %if.end
	movq	$0, 1696(%rbx)
	movq	1880(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB13_3
# BB#2:                                 # %do.body.2
	incq	24(%rcx)
.LBB13_3:                               # %do.end.9
	movq	%rax, 1616(%rbx)
	cmpq	%rbx, 1856(%rbx)
	jne	.LBB13_5
# BB#4:                                 # %if.then.11
	movq	%rax, 1856(%rax)
	movq	%rax, 1856(%rbx)
.LBB13_5:                               # %if.end.14
	incl	1864(%rbx)
	xorl	%ecx, %ecx
.LBB13_6:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	gs_gsave, .Lfunc_end13-gs_gsave
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_clone,@function
gstate_clone:                           # @gstate_clone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp65:
	.cfi_def_cfa_offset 384
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	gstate_alloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB14_16
# BB#1:                                 # %if.end
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	1680(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	1688(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	1728(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	1752(%rbx), %rbp
	movq	1760(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	1776(%rbx), %r13
	movq	1784(%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$1920, %edx             # imm = 0x780
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	cmpq	$0, 88(%rbx)
	je	.LBB14_3
# BB#2:                                 # %if.then.24
	movq	$0, 88(%rbx)
	movq	88(%r12), %rsi
	movl	96(%r12), %edx
	movss	100(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setdash
	testl	%eax, %eax
	js	.LBB14_15
.LBB14_3:                               # %if.end.32
	cmpq	$0, 16(%rbx)
	je	.LBB14_9
# BB#4:                                 # %if.then.34
	movq	%r14, %rdi
	callq	*1888(%rbx)
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB14_15
# BB#5:                                 # %lor.lhs.false
	movq	16(%r12), %rsi
	movq	1912(%rbx), %rcx
	movq	%rax, %rdi
	testq	%rcx, %rcx
	je	.LBB14_7
# BB#6:                                 # %cond.true.i
	movl	4(%rsp), %edx           # 4-byte Reload
	callq	*%rcx
	jmp	.LBB14_8
.LBB14_7:                               # %cond.false.i
	callq	*1896(%rbx)
.LBB14_8:                               # %cleanup.43
	testl	%eax, %eax
	js	.LBB14_15
.LBB14_9:                               # %if.end.46
	movq	%rbx, %rdi
	callq	gs_imager_state_copied
	movq	1872(%rbx), %rax
	testq	%rax, %rax
	je	.LBB14_11
# BB#10:                                # %do.body.49
	incq	56(%rax)
.LBB14_11:                              # %do.end.56
	movq	1752(%r12), %rsi
	movl	$264, %edx              # imm = 0x108
	movq	%rbp, %rdi
	callq	memcpy
	movq	1760(%r12), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	callq	memcpy
	movq	1776(%r12), %rsi
	movl	$264, %edx              # imm = 0x108
	movq	%r13, %rdi
	callq	memcpy
	movq	1784(%r12), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rdi
	callq	memcpy
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB14_12
# BB#13:                                # %if.else
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 1680(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1688(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1728(%rbx)
	movq	%rbp, 1752(%rbx)
	movq	%r14, 1760(%rbx)
	movq	%r13, 1776(%rbx)
	movq	%r15, 1784(%rbx)
	jmp	.LBB14_14
.LBB14_15:                              # %fail
	movq	88(%rbx), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*24(%r14)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 1680(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1688(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1728(%rbx)
	movq	%rbp, 1752(%rbx)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1760(%rbx)
	movq	%r13, 1776(%rbx)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1784(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	gstate_free_parts
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*24(%r14)
	xorl	%eax, %eax
	jmp	.LBB14_16
.LBB14_12:                              # %if.then.82
	movq	88(%r12), %rax
	movq	88(%rbx), %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rdx, 1680(%r12)
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 1688(%r12)
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, 1728(%r12)
	movq	%rbp, 1752(%r12)
	movq	%r14, 1760(%r12)
	movq	%r13, 1776(%r12)
	movq	%r15, 1784(%r12)
	movq	%rax, 88(%rbx)
	movq	%rcx, 88(%r12)
	movq	1752(%rbx), %rbp
	movq	1760(%rbx), %r14
	movq	1776(%rbx), %r13
	movq	1784(%rbx), %r15
.LBB14_14:                              # %if.end.155
	movq	%r13, 1752(%rbx)
	movq	%rbp, 1776(%rbx)
	movq	%r15, 1760(%rbx)
	movq	%r14, 1784(%rbx)
	movq	1744(%rbx), %rax
	movq	1768(%rbx), %rcx
	movq	%rcx, 1744(%rbx)
	movq	%rax, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	1024(%rbx), %r14
	leaq	48(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%rbx, %rbp
	addq	$1336, %rbp             # imm = 0x538
	movl	$280, %edx              # imm = 0x118
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movq	1752(%rbx), %rax
	movq	1776(%rbx), %rcx
	movq	%rcx, 1752(%rbx)
	movq	%rax, 1776(%rbx)
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movq	1744(%rbx), %rax
	movq	1768(%rbx), %rcx
	movq	%rcx, 1744(%rbx)
	movq	%rax, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	48(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movq	%rbx, %rax
.LBB14_16:                              # %cleanup.191
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gstate_clone, .Lfunc_end14-gstate_clone
	.cfi_endproc

	.globl	gs_gsave_for_save
	.align	16, 0x90
	.type	gs_gsave_for_save,@function
gs_gsave_for_save:                      # @gs_gsave_for_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1704(%rbx), %rdi
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	8(%rbx), %rsi
	movl	$.L.str.8, %edx
	callq	gx_cpath_alloc_shared
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB15_12
.LBB15_2:                               # %if.end.2
	movq	8(%rbx), %rsi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gstate_clone
	testq	%rax, %rax
	je	.LBB15_10
# BB#3:                                 # %if.end.i
	movq	$0, 1696(%rbx)
	movq	1880(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB15_5
# BB#4:                                 # %do.body.2.i
	incq	24(%rcx)
.LBB15_5:                               # %do.end.9.i
	movq	%rax, 1616(%rbx)
	cmpq	%rbx, 1856(%rbx)
	jne	.LBB15_7
# BB#6:                                 # %if.then.11.i
	movq	%rax, 1856(%rax)
	movq	%rax, 1856(%rbx)
.LBB15_7:                               # %if.end.6
	incl	1864(%rbx)
	movq	1728(%rbx), %rcx
	cmpq	1704(%rbx), %rcx
	jne	.LBB15_9
# BB#8:                                 # %if.then.9
	movq	%r15, 1728(%rbx)
.LBB15_9:                               # %if.end.11
	movq	%r15, 1704(%rbx)
	movq	%rax, (%r14)
	movq	$0, 1616(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB15_12
.LBB15_10:                              # %fail
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB15_12
# BB#11:                                # %if.then.15
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	gx_cpath_free
.LBB15_12:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_gsave_for_save, .Lfunc_end15-gs_gsave_for_save
	.cfi_endproc

	.globl	gs_grestore_only
	.align	16, 0x90
	.type	gs_grestore_only,@function
gs_grestore_only:                       # @gs_grestore_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %rbx, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1616(%rbx), %r14
	movl	$1, %eax
	testq	%r14, %r14
	je	.LBB16_15
# BB#1:                                 # %if.end
	movq	16(%rbx), %rdi
	movl	272(%rbx), %ebp
	movq	16(%r14), %rsi
	cmpq	$0, 1304(%r14)
	jne	.LBB16_3
# BB#2:                                 # %if.then.3
	movq	1304(%rbx), %rax
	movq	%rax, 1304(%r14)
.LBB16_3:                               # %if.end.6
	movq	%rsi, 16(%rbx)
	movq	%rdi, 16(%r14)
	testq	%rdi, %rdi
	je	.LBB16_8
# BB#4:                                 # %if.end.6
	testq	%rsi, %rsi
	je	.LBB16_8
# BB#5:                                 # %if.then.11
	movq	1912(%rbx), %rax
	testq	%rax, %rax
	je	.LBB16_7
# BB#6:                                 # %cond.true.i
	movl	$1, %edx
	callq	*%rax
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false.i
	callq	*1896(%rbx)
.LBB16_8:                               # %if.end.12
	movq	%rbx, %rdi
	callq	gstate_free_contents
	movl	$1920, %edx             # imm = 0x780
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	cmpq	%r14, 1856(%rbx)
	jne	.LBB16_10
# BB#9:                                 # %if.then.14
	movq	%rbx, 1856(%rbx)
.LBB16_10:                              # %if.end.16
	movq	8(%rbx), %rdi
	movl	$.L.str.9, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	testl	%ebp, %ebp
	jne	.LBB16_12
# BB#11:                                # %lor.lhs.false
	xorl	%eax, %eax
	cmpl	$0, 272(%rbx)
	je	.LBB16_15
.LBB16_12:                              # %if.then.21
	movq	1744(%rbx), %r14
	movq	1752(%rbx), %r15
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB16_14
# BB#13:                                # %land.lhs.true.i
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB16_14
# BB#16:                                # %if.then.i
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB16_14:                              # %if.else.i
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*88(%rax)
	xorl	%eax, %eax
.LBB16_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_grestore_only, .Lfunc_end16-gs_grestore_only
	.cfi_endproc

	.globl	gs_do_set_overprint
	.align	16, 0x90
	.type	gs_do_set_overprint,@function
gs_do_set_overprint:                    # @gs_do_set_overprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	1744(%r14), %rbx
	movq	1752(%r14), %r15
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB17_2
# BB#1:                                 # %land.lhs.true
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_2
# BB#3:                                 # %if.then
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB17_2:                               # %if.end
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*88(%rax)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	gs_do_set_overprint, .Lfunc_end17-gs_do_set_overprint
	.cfi_endproc

	.globl	gs_grestore
	.align	16, 0x90
	.type	gs_grestore,@function
gs_grestore:                            # @gs_grestore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$0, 1616(%rbx)
	je	.LBB18_3
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_grestore_only
	testl	%eax, %eax
	js	.LBB18_9
# BB#2:                                 # %if.end.3
	xorl	%eax, %eax
	cmpq	$0, 1616(%rbx)
	jne	.LBB18_9
.LBB18_3:                               # %if.end.7
	movq	8(%rbx), %rsi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	gstate_clone
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB18_9
# BB#4:                                 # %if.end.i.12
	movq	$0, 1696(%rbx)
	movq	1880(%rcx), %rax
	testq	%rax, %rax
	je	.LBB18_6
# BB#5:                                 # %do.body.2.i.15
	incq	24(%rax)
.LBB18_6:                               # %do.end.9.i.19
	movq	%rcx, 1616(%rbx)
	cmpq	%rbx, 1856(%rbx)
	jne	.LBB18_8
# BB#7:                                 # %if.then.11.i.21
	movq	%rcx, 1856(%rcx)
	movq	%rcx, 1856(%rbx)
.LBB18_8:                               # %if.end.14.i.24
	incl	1864(%rbx)
	xorl	%eax, %eax
.LBB18_9:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end18:
	.size	gs_grestore, .Lfunc_end18-gs_grestore
	.cfi_endproc

	.globl	gs_grestoreall_for_restore
	.align	16, 0x90
	.type	gs_grestoreall_for_restore,@function
gs_grestoreall_for_restore:             # @gs_grestoreall_for_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp100:
	.cfi_def_cfa_offset 32
.Ltmp101:
	.cfi_offset %rbx, -24
.Ltmp102:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	1616(%rbx), %rax
	cmpq	$0, 1616(%rax)
	je	.LBB19_4
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	%rbx, %rdi
	callq	gs_grestore
	testl	%eax, %eax
	jns	.LBB19_1
	jmp	.LBB19_3
.LBB19_4:                               # %while.end
	movq	1304(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB19_6
# BB#5:                                 # %if.then.4
	callq	*48(%rdi)
	movq	1616(%rbx), %rax
.LBB19_6:                               # %if.end.7
	movq	%r14, 1616(%rax)
	movq	%rbx, %rdi
	callq	gs_grestore
	testl	%eax, %eax
	js	.LBB19_3
# BB#7:                                 # %if.end.13
	movq	1704(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB19_9
# BB#8:                                 # %if.then.15
	movl	$.L.str.10, %esi
	callq	gx_cpath_free
	movq	$0, 1704(%rbx)
.LBB19_9:                               # %if.end.18
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_grestore             # TAILCALL
.LBB19_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	gs_grestoreall_for_restore, .Lfunc_end19-gs_grestoreall_for_restore
	.cfi_endproc

	.globl	gs_grestoreall
	.align	16, 0x90
	.type	gs_grestoreall,@function
gs_grestoreall:                         # @gs_grestoreall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -32
.Ltmp107:
	.cfi_offset %r14, -24
.Ltmp108:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	1616(%r15), %rax
	testq	%rax, %rax
	je	.LBB20_4
# BB#1:                                 # %while.cond.preheader
	movq	1616(%rax), %r14
	movq	%r15, %rdi
	callq	gs_grestore
	cmpq	$0, %r14
	je	.LBB20_10
	.align	16, 0x90
.LBB20_2:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB20_10
# BB#3:                                 # %while.body.while.cond_crit_edge
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	1616(%r15), %rax
	movq	1616(%rax), %rbx
	movq	%r15, %rdi
	callq	gs_grestore
	cmpq	$0, %rbx
	jne	.LBB20_2
	jmp	.LBB20_10
.LBB20_4:                               # %if.then
	movq	8(%r15), %rsi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	gstate_clone
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB20_10
# BB#5:                                 # %if.end.i
	movq	$0, 1696(%r15)
	movq	1880(%rcx), %rax
	testq	%rax, %rax
	je	.LBB20_7
# BB#6:                                 # %do.body.2.i
	incq	24(%rax)
.LBB20_7:                               # %do.end.9.i
	movq	%rcx, 1616(%r15)
	cmpq	%r15, 1856(%r15)
	jne	.LBB20_9
# BB#8:                                 # %if.then.11.i
	movq	%rcx, 1856(%rcx)
	movq	%rcx, 1856(%r15)
.LBB20_9:                               # %if.end.14.i
	incl	1864(%r15)
	xorl	%eax, %eax
.LBB20_10:                              # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	gs_grestoreall, .Lfunc_end20-gs_grestoreall
	.cfi_endproc

	.globl	gs_gstate
	.align	16, 0x90
	.type	gs_gstate,@function
gs_gstate:                              # @gs_gstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp113:
	.cfi_def_cfa_offset 48
.Ltmp114:
	.cfi_offset %rbx, -40
.Ltmp115:
	.cfi_offset %r12, -32
.Ltmp116:
	.cfi_offset %r14, -24
.Ltmp117:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	8(%r12), %rsi
	movq	1704(%r12), %r15
	movq	$0, 1704(%r12)
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	callq	gstate_clone
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB21_9
# BB#1:                                 # %if.end.i
	movq	1696(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB21_4
	.align	16, 0x90
.LBB21_2:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	32(%rsi), %rbx
	incq	%rax
	movq	%rax, (%rsi)
	jne	.LBB21_3
# BB#10:                                # %do.end.13.i.i
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	8(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*16(%rsi)
.LBB21_3:                               # %while.cond.backedge.i.i
                                        #   in Loop: Header=BB21_2 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB21_2
.LBB21_4:                               # %clip_stack_rc_adjust.exit.i
	movq	1880(%r14), %rax
	testq	%rax, %rax
	je	.LBB21_6
# BB#5:                                 # %do.body.4.i
	incq	24(%rax)
.LBB21_6:                               # %do.end.11.i
	movq	%r15, 1704(%r12)
	movq	$0, 1616(%r14)
	cmpq	%r12, 1856(%r12)
	movq	%r14, %rax
	je	.LBB21_8
# BB#7:                                 # %select.mid
	xorl	%eax, %eax
.LBB21_8:                               # %select.end
	movq	%rax, 1856(%r14)
	movq	%r14, %rax
.LBB21_9:                               # %gs_state_copy.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	gs_gstate, .Lfunc_end21-gs_gstate
	.cfi_endproc

	.globl	gs_state_copy
	.align	16, 0x90
	.type	gs_state_copy,@function
gs_state_copy:                          # @gs_state_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp122:
	.cfi_def_cfa_offset 48
.Ltmp123:
	.cfi_offset %rbx, -40
.Ltmp124:
	.cfi_offset %r12, -32
.Ltmp125:
	.cfi_offset %r14, -24
.Ltmp126:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	1704(%r14), %r15
	movq	$0, 1704(%r14)
	movl	$.L.str.11, %edx
	movl	$2, %ecx
	callq	gstate_clone
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB22_9
# BB#1:                                 # %if.end
	movq	1696(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB22_4
	.align	16, 0x90
.LBB22_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	32(%rsi), %rbx
	incq	%rax
	movq	%rax, (%rsi)
	jne	.LBB22_3
# BB#10:                                # %do.end.13.i
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	8(%rsi), %rdi
	movl	$.L.str.12, %edx
	callq	*16(%rsi)
.LBB22_3:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB22_2 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB22_2
.LBB22_4:                               # %clip_stack_rc_adjust.exit
	movq	1880(%r12), %rax
	testq	%rax, %rax
	je	.LBB22_6
# BB#5:                                 # %do.body.4
	incq	24(%rax)
.LBB22_6:                               # %do.end.11
	movq	%r15, 1704(%r14)
	movq	$0, 1616(%r12)
	cmpq	%r14, 1856(%r14)
	movq	%r12, %rax
	je	.LBB22_8
# BB#7:                                 # %select.mid
	xorl	%eax, %eax
.LBB22_8:                               # %select.end
	movq	%rax, 1856(%r12)
	movq	%r12, %rax
.LBB22_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gs_state_copy, .Lfunc_end22-gs_state_copy
	.cfi_endproc

	.globl	gs_copygstate
	.align	16, 0x90
	.type	gs_copygstate,@function
gs_copygstate:                          # @gs_copygstate
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, %edx
	movl	$.L.str.13, %ecx
	jmp	gstate_copy             # TAILCALL
.Lfunc_end23:
	.size	gs_copygstate, .Lfunc_end23-gs_copygstate
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_copy,@function
gstate_copy:                            # @gstate_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp128:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp129:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp130:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 56
	subq	$376, %rsp              # imm = 0x178
.Ltmp133:
	.cfi_def_cfa_offset 432
.Ltmp134:
	.cfi_offset %rbx, -56
.Ltmp135:
	.cfi_offset %r12, -48
.Ltmp136:
	.cfi_offset %r13, -40
.Ltmp137:
	.cfi_offset %r14, -32
.Ltmp138:
	.cfi_offset %r15, -24
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1680(%rbx), %rbp
	movq	1688(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	1728(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	1752(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	1760(%rbx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	1776(%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	1784(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	88(%r14), %rsi
	testq	%rsi, %rsi
	jne	.LBB24_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 88(%rbx)
	je	.LBB24_3
.LBB24_2:                               # %if.then
	movl	96(%r14), %edx
	movss	100(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setdash
	testl	%eax, %eax
	js	.LBB24_36
.LBB24_3:                               # %if.end.29
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movq	1752(%rbx), %rax
	movq	1776(%rbx), %rcx
	movq	%rcx, 1752(%rbx)
	movq	%rax, 1776(%rbx)
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movq	1744(%rbx), %rax
	movq	1768(%rbx), %rcx
	movq	%rcx, 1744(%rbx)
	movq	%rax, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	1024(%rbx), %r12
	movq	%r12, 40(%rsp)          # 8-byte Spill
	leaq	96(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	leaq	1336(%rbx), %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movq	1752(%rbx), %rax
	movq	1776(%rbx), %rcx
	movq	%rcx, 1752(%rbx)
	movq	%rax, 1776(%rbx)
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movq	1744(%rbx), %rax
	movq	1768(%rbx), %rcx
	movq	%rcx, 1744(%rbx)
	movq	%rax, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	96(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	movq	1680(%rbx), %rdi
	movq	1680(%r14), %rsi
	callq	gx_path_assign_preserve
	movq	1688(%rbx), %rdi
	movq	1688(%r14), %rsi
	callq	gx_cpath_assign_preserve
	cmpl	$0, 1736(%r14)
	je	.LBB24_6
# BB#4:                                 # %if.then.37
	movq	1728(%r14), %rax
	cmpq	1704(%r14), %rax
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jne	.LBB24_7
# BB#5:                                 # %cond.true
	movq	1704(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jmp	.LBB24_7
.LBB24_6:                               # %if.else
	movq	1728(%rbx), %rdi
	movq	1728(%r14), %rsi
	callq	gx_cpath_assign_preserve
.LBB24_7:                               # %if.end.46
	movq	1752(%r14), %rsi
	movl	$264, %edx              # imm = 0x108
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	movq	1760(%r14), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	movq	1776(%r14), %rsi
	movl	$264, %edx              # imm = 0x108
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	movq	1784(%r14), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
	movq	1872(%rbx), %rsi
	movq	1872(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB24_13
# BB#8:                                 # %do.body.74
	testq	%rax, %rax
	je	.LBB24_10
# BB#9:                                 # %do.body.78
	incq	56(%rax)
.LBB24_10:                              # %do.body.86
	testq	%rsi, %rsi
	je	.LBB24_13
# BB#11:                                # %do.end.93
	decq	56(%rsi)
	jne	.LBB24_13
# BB#12:                                # %do.end.107
	movq	64(%rsi), %rdi
	movq	%r13, %rdx
	callq	*72(%rsi)
.LBB24_13:                              # %do.body.129
	movq	1880(%rbx), %rsi
	movq	1880(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB24_19
# BB#14:                                # %do.body.133
	testq	%rax, %rax
	je	.LBB24_16
# BB#15:                                # %do.body.137
	incq	24(%rax)
.LBB24_16:                              # %do.body.150
	testq	%rsi, %rsi
	je	.LBB24_19
# BB#17:                                # %do.end.157
	decq	24(%rsi)
	jne	.LBB24_19
# BB#18:                                # %do.end.172
	movq	32(%rsi), %rdi
	movq	%r13, %rdx
	callq	*40(%rsi)
.LBB24_19:                              # %do.end.195
	movq	1696(%rbx), %rsi
	movq	1696(%r14), %rax
	cmpq	%rax, %rsi
	je	.LBB24_27
# BB#20:                                # %if.then.198
	testq	%rax, %rax
	je	.LBB24_24
	.align	16, 0x90
.LBB24_21:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movq	32(%rax), %rbp
	incq	%rcx
	movq	%rcx, (%rax)
	jne	.LBB24_22
# BB#37:                                # %do.end.13.i
                                        #   in Loop: Header=BB24_21 Depth=1
	movq	8(%rax), %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	*16(%rax)
.LBB24_22:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB24_21 Depth=1
	testq	%rbp, %rbp
	movq	%rbp, %rax
	jne	.LBB24_21
# BB#23:                                # %clip_stack_rc_adjust.exit.loopexit
	movq	1696(%rbx), %rsi
.LBB24_24:                              # %clip_stack_rc_adjust.exit
	testq	%rsi, %rsi
	je	.LBB24_27
	.align	16, 0x90
.LBB24_25:                              # %while.body.i.171
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	32(%rsi), %rbp
	decq	%rax
	movq	%rax, (%rsi)
	jne	.LBB24_26
# BB#38:                                # %do.end.13.i.176
                                        #   in Loop: Header=BB24_25 Depth=1
	movq	8(%rsi), %rdi
	movq	%r13, %rdx
	callq	*16(%rsi)
.LBB24_26:                              # %while.cond.backedge.i.173
                                        #   in Loop: Header=BB24_25 Depth=1
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB24_25
.LBB24_27:                              # %if.end.201
	movq	1304(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbp
	movq	1616(%rbx), %r12
	movq	88(%rbx), %r13
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gs_imager_state_pre_assign
	movl	$1920, %edx             # imm = 0x780
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%rbp, %rdi
	movq	%rdi, 16(%rbx)
	movq	%r15, 8(%rbx)
	movq	%r12, 1616(%rbx)
	movq	%r13, 88(%rbx)
	cmpq	$0, 1304(%rbx)
	jne	.LBB24_29
# BB#28:                                # %if.then.216
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 1304(%rbx)
.LBB24_29:                              # %if.end.218
	movq	16(%r14), %rsi
	testq	%rsi, %rsi
	movq	24(%rsp), %rbp          # 8-byte Reload
	je	.LBB24_33
# BB#30:                                # %if.then.221
	movq	1912(%r14), %rax
	testq	%rax, %rax
	je	.LBB24_32
# BB#31:                                # %cond.true.i
	movl	20(%rsp), %edx          # 4-byte Reload
	callq	*%rax
	jmp	.LBB24_33
.LBB24_32:                              # %cond.false.i
	callq	*1896(%r14)
.LBB24_33:                              # %if.end.224
	movq	%rbp, 1680(%rbx)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1688(%rbx)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1728(%rbx)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1752(%rbx)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1760(%rbx)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1776(%rbx)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1784(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movups	1768(%rbx), %xmm0
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movups	1744(%rbx), %xmm1
	movups	%xmm0, 1744(%rbx)
	movups	%xmm1, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	96(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	cs_adjust_counts_icc
	movups	1768(%rbx), %xmm0
	movq	1760(%rbx), %rax
	movq	1784(%rbx), %rcx
	movq	%rcx, 1760(%rbx)
	movq	%rax, 1784(%rbx)
	movups	1744(%rbx), %xmm1
	movups	%xmm0, 1744(%rbx)
	movups	%xmm1, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	96(%rsp), %r15
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movl	272(%rbx), %eax
	movl	284(%rbx), %ecx
	movl	%ecx, 272(%rbx)
	movl	%eax, 284(%rbx)
	movl	276(%rbx), %eax
	movl	288(%rbx), %ecx
	movl	%ecx, 276(%rbx)
	movl	%eax, 288(%rbx)
	movl	280(%rbx), %eax
	movl	292(%rbx), %ecx
	movl	%ecx, 280(%rbx)
	movl	%eax, 292(%rbx)
	cmpq	%r14, 1856(%r14)
	movq	%rbx, %rax
	je	.LBB24_35
# BB#34:                                # %select.mid
	xorl	%eax, %eax
.LBB24_35:                              # %select.end
	movq	%rax, 1856(%rbx)
	xorl	%eax, %eax
.LBB24_36:                              # %cleanup.261
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gstate_copy, .Lfunc_end24-gstate_copy
	.cfi_endproc

	.globl	gs_currentgstate
	.align	16, 0x90
	.type	gs_currentgstate,@function
gs_currentgstate:                       # @gs_currentgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$5, %edx
	movl	$.L.str.14, %ecx
	callq	gstate_copy
	testl	%eax, %eax
	js	.LBB25_2
# BB#1:                                 # %if.then
	movq	$0, 1704(%rbx)
.LBB25_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end25:
	.size	gs_currentgstate, .Lfunc_end25-gs_currentgstate
	.cfi_endproc

	.globl	gs_setgstate
	.align	16, 0x90
	.type	gs_setgstate,@function
gs_setgstate:                           # @gs_setgstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp148:
	.cfi_def_cfa_offset 64
.Ltmp149:
	.cfi_offset %rbx, -56
.Ltmp150:
	.cfi_offset %r12, -48
.Ltmp151:
	.cfi_offset %r13, -40
.Ltmp152:
	.cfi_offset %r14, -32
.Ltmp153:
	.cfi_offset %r15, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	1704(%rbx), %r13
	movq	1856(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	1864(%rbx), %r12d
	movl	272(%rbp), %r15d
	movq	$0, 1704(%rbx)
	movl	$3, %edx
	movl	$.L.str.15, %ecx
	callq	gstate_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB26_7
# BB#1:                                 # %if.end
	movl	%r12d, 1864(%rbx)
	movq	%r13, 1704(%rbx)
	cmpq	%rbp, 1856(%rbx)
	movq	%rbx, %rax
	je	.LBB26_3
# BB#2:                                 # %select.mid
	movq	(%rsp), %rax            # 8-byte Reload
.LBB26_3:                               # %select.end
	movq	%rax, 1856(%rbx)
	xorl	%r14d, %r14d
	cmpl	%r15d, 272(%rbx)
	je	.LBB26_7
# BB#4:                                 # %if.then.11
	movq	1744(%rbx), %rbp
	movq	1752(%rbx), %r15
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB26_6
# BB#5:                                 # %land.lhs.true.i
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB26_6
# BB#8:                                 # %if.then.i
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB26_6:                               # %if.else.i
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*88(%rax)
.LBB26_7:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gs_setgstate, .Lfunc_end26-gs_setgstate
	.cfi_endproc

	.globl	gs_state_memory
	.align	16, 0x90
	.type	gs_state_memory,@function
gs_state_memory:                        # @gs_state_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end27:
	.size	gs_state_memory, .Lfunc_end27-gs_state_memory
	.cfi_endproc

	.globl	gs_state_saved
	.align	16, 0x90
	.type	gs_state_saved,@function
gs_state_saved:                         # @gs_state_saved
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1616(%rdi), %rax
	retq
.Lfunc_end28:
	.size	gs_state_saved, .Lfunc_end28-gs_state_saved
	.cfi_endproc

	.globl	gs_state_swap_saved
	.align	16, 0x90
	.type	gs_state_swap_saved,@function
gs_state_swap_saved:                    # @gs_state_swap_saved
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1616(%rdi), %rax
	movq	%rsi, 1616(%rdi)
	retq
.Lfunc_end29:
	.size	gs_state_swap_saved, .Lfunc_end29-gs_state_swap_saved
	.cfi_endproc

	.globl	gs_state_swap_memory
	.align	16, 0x90
	.type	gs_state_swap_memory,@function
gs_state_swap_memory:                   # @gs_state_swap_memory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	%rsi, 8(%rdi)
	retq
.Lfunc_end30:
	.size	gs_state_swap_memory, .Lfunc_end30-gs_state_swap_memory
	.cfi_endproc

	.globl	gs_state_update_overprint
	.align	16, 0x90
	.type	gs_state_update_overprint,@function
gs_state_update_overprint:              # @gs_state_update_overprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp159:
	.cfi_def_cfa_offset 64
.Ltmp160:
	.cfi_offset %rbx, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 16(%rsp)
	movq	1872(%rbx), %r15
	movq	8(%rbx), %rdx
	leaq	16(%rsp), %rdi
	callq	gs_create_overprint
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_4
# BB#1:                                 # %land.lhs.true
	movq	16(%rsp), %rdx
	movq	8(%rbx), %r8
	leaq	8(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	*1464(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_4
# BB#2:                                 # %if.then
	movq	8(%rsp), %rsi
	cmpq	%r15, %rsi
	je	.LBB31_4
# BB#3:                                 # %if.then.5
	movq	%rbx, %rdi
	callq	gx_set_device_only
.LBB31_4:                               # %if.end.6
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB31_6
# BB#5:                                 # %if.then.8
	movq	8(%rbx), %rdi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
.LBB31_6:                               # %if.end.12
	cmpl	$-1, %ebp
	jne	.LBB31_8
# BB#7:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	cmpl	(%r14), %eax
	sbbl	%ebp, %ebp
.LBB31_8:                               # %if.end.16
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gs_state_update_overprint, .Lfunc_end31-gs_state_update_overprint
	.cfi_endproc

	.globl	gs_setoverprint
	.align	16, 0x90
	.type	gs_setoverprint,@function
gs_setoverprint:                        # @gs_setoverprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 48
.Ltmp168:
	.cfi_offset %rbx, -32
.Ltmp169:
	.cfi_offset %r14, -24
.Ltmp170:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	272(%rbx), %r14d
	movq	1872(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB32_6
# BB#1:                                 # %if.then
	movq	1680(%rdi), %rax
	testq	%rax, %rax
	je	.LBB32_2
# BB#3:                                 # %if.else
	leaq	8(%rsp), %rsi
	callq	*%rax
	movq	8(%rsp), %rax
	jmp	.LBB32_4
.LBB32_2:                               # %if.then.2
	movq	1104(%rdi), %rax
	movq	%rax, 8(%rsp)
.LBB32_4:                               # %if.end
	testq	%rax, %rax
	je	.LBB32_6
# BB#5:                                 # %land.lhs.true
	cmpl	$0, 172(%rax)
	je	.LBB32_11
.LBB32_6:                               # %if.end.9
	movl	%ebp, 272(%rbx)
	cmpl	%ebp, %r14d
	je	.LBB32_11
# BB#7:                                 # %if.then.12
	movq	1744(%rbx), %rbp
	movq	1752(%rbx), %r14
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB32_10
# BB#8:                                 # %land.lhs.true.i
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB32_10
# BB#9:                                 # %if.then.i
	movq	24(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.i
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*88(%rax)
.LBB32_11:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gs_setoverprint, .Lfunc_end32-gs_setoverprint
	.cfi_endproc

	.globl	gs_currentoverprint
	.align	16, 0x90
	.type	gs_currentoverprint,@function
gs_currentoverprint:                    # @gs_currentoverprint
	.cfi_startproc
# BB#0:                                 # %entry
	movl	272(%rdi), %eax
	retq
.Lfunc_end33:
	.size	gs_currentoverprint, .Lfunc_end33-gs_currentoverprint
	.cfi_endproc

	.globl	gs_setoverprintmode
	.align	16, 0x90
	.type	gs_setoverprintmode,@function
gs_setoverprintmode:                    # @gs_setoverprintmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp174:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp175:
	.cfi_def_cfa_offset 48
.Ltmp176:
	.cfi_offset %rbx, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-15, %ebp
	cmpl	$1, %esi
	ja	.LBB34_6
# BB#1:                                 # %if.end
	movl	280(%rbx), %eax
	movl	%esi, 276(%rbx)
	xorl	%ebp, %ebp
	cmpl	%esi, %eax
	je	.LBB34_6
# BB#2:                                 # %if.end
	movl	272(%rbx), %eax
	testl	%eax, %eax
	je	.LBB34_6
# BB#3:                                 # %if.then.3
	movq	1744(%rbx), %r14
	movq	1752(%rbx), %r15
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB34_5
# BB#4:                                 # %land.lhs.true.i
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB34_5
# BB#7:                                 # %if.then.i
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB34_5:                               # %if.else.i
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*88(%rax)
.LBB34_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gs_setoverprintmode, .Lfunc_end34-gs_setoverprintmode
	.cfi_endproc

	.globl	gs_currentoverprintmode
	.align	16, 0x90
	.type	gs_currentoverprintmode,@function
gs_currentoverprintmode:                # @gs_currentoverprintmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	276(%rdi), %eax
	retq
.Lfunc_end35:
	.size	gs_currentoverprintmode, .Lfunc_end35-gs_currentoverprintmode
	.cfi_endproc

	.globl	gs_setcpsimode
	.align	16, 0x90
	.type	gs_setcpsimode,@function
gs_setcpsimode:                         # @gs_setcpsimode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	callq	gs_lib_ctx_get_interp_instance
	movl	%ebx, 176(%rax)
	popq	%rbx
	retq
.Lfunc_end36:
	.size	gs_setcpsimode, .Lfunc_end36-gs_setcpsimode
	.cfi_endproc

	.globl	gs_currentcpsimode
	.align	16, 0x90
	.type	gs_currentcpsimode,@function
gs_currentcpsimode:                     # @gs_currentcpsimode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp182:
	.cfi_def_cfa_offset 16
	callq	gs_lib_ctx_get_interp_instance
	movl	176(%rax), %eax
	popq	%rdx
	retq
.Lfunc_end37:
	.size	gs_currentcpsimode, .Lfunc_end37-gs_currentcpsimode
	.cfi_endproc

	.globl	gs_setrenderingintent
	.align	16, 0x90
	.type	gs_setrenderingintent,@function
gs_setrenderingintent:                  # @gs_setrenderingintent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$3, %esi
	ja	.LBB38_2
# BB#1:                                 # %if.end
	movl	%esi, 324(%rdi)
	xorl	%eax, %eax
.LBB38_2:                               # %return
	retq
.Lfunc_end38:
	.size	gs_setrenderingintent, .Lfunc_end38-gs_setrenderingintent
	.cfi_endproc

	.globl	gs_currentrenderingintent
	.align	16, 0x90
	.type	gs_currentrenderingintent,@function
gs_currentrenderingintent:              # @gs_currentrenderingintent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	324(%rdi), %eax
	retq
.Lfunc_end39:
	.size	gs_currentrenderingintent, .Lfunc_end39-gs_currentrenderingintent
	.cfi_endproc

	.globl	gs_setblackptcomp
	.align	16, 0x90
	.type	gs_setblackptcomp,@function
gs_setblackptcomp:                      # @gs_setblackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 328(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end40:
	.size	gs_setblackptcomp, .Lfunc_end40-gs_setblackptcomp
	.cfi_endproc

	.globl	gs_currentblackptcomp
	.align	16, 0x90
	.type	gs_currentblackptcomp,@function
gs_currentblackptcomp:                  # @gs_currentblackptcomp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	328(%rdi), %eax
	retq
.Lfunc_end41:
	.size	gs_currentblackptcomp, .Lfunc_end41-gs_currentblackptcomp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI42_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_currentfilladjust
	.align	16, 0x90
	.type	gs_currentfilladjust,@function
gs_currentfilladjust:                   # @gs_currentfilladjust
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsi2sdl	300(%rdi), %xmm0
	movsd	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	304(%rdi), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end42:
	.size	gs_currentfilladjust, .Lfunc_end42-gs_currentfilladjust
	.cfi_endproc

	.globl	gs_currentlimitclamp
	.align	16, 0x90
	.type	gs_currentlimitclamp,@function
gs_currentlimitclamp:                   # @gs_currentlimitclamp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	208(%rdi), %eax
	retq
.Lfunc_end43:
	.size	gs_currentlimitclamp, .Lfunc_end43-gs_currentlimitclamp
	.cfi_endproc

	.globl	gs_settextrenderingmode
	.align	16, 0x90
	.type	gs_settextrenderingmode,@function
gs_settextrenderingmode:                # @gs_settextrenderingmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 252(%rdi)
	retq
.Lfunc_end44:
	.size	gs_settextrenderingmode, .Lfunc_end44-gs_settextrenderingmode
	.cfi_endproc

	.globl	gs_currenttextrenderingmode
	.align	16, 0x90
	.type	gs_currenttextrenderingmode,@function
gs_currenttextrenderingmode:            # @gs_currenttextrenderingmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	252(%rdi), %eax
	retq
.Lfunc_end45:
	.size	gs_currenttextrenderingmode, .Lfunc_end45-gs_currenttextrenderingmode
	.cfi_endproc

	.globl	gs_sethpglpathmode
	.align	16, 0x90
	.type	gs_sethpglpathmode,@function
gs_sethpglpathmode:                     # @gs_sethpglpathmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 128(%rdi)
	retq
.Lfunc_end46:
	.size	gs_sethpglpathmode, .Lfunc_end46-gs_sethpglpathmode
	.cfi_endproc

	.globl	gs_currenthpglpathmode
	.align	16, 0x90
	.type	gs_currenthpglpathmode,@function
gs_currenthpglpathmode:                 # @gs_currenthpglpathmode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rdi), %eax
	retq
.Lfunc_end47:
	.size	gs_currenthpglpathmode, .Lfunc_end47-gs_currenthpglpathmode
	.cfi_endproc

	.globl	gx_get_clip_path_id
	.align	16, 0x90
	.type	gx_get_clip_path_id,@function
gx_get_clip_path_id:                    # @gx_get_clip_path_id
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1688(%rdi), %rax
	movq	296(%rax), %rax
	retq
.Lfunc_end48:
	.size	gx_get_clip_path_id, .Lfunc_end48-gx_get_clip_path_id
	.cfi_endproc

	.globl	gs_swapcolors
	.align	16, 0x90
	.type	gs_swapcolors,@function
gs_swapcolors:                          # @gs_swapcolors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp184:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp185:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp186:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp189:
	.cfi_def_cfa_offset 352
.Ltmp190:
	.cfi_offset %rbx, -56
.Ltmp191:
	.cfi_offset %r12, -48
.Ltmp192:
	.cfi_offset %r13, -40
.Ltmp193:
	.cfi_offset %r14, -32
.Ltmp194:
	.cfi_offset %r15, -24
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	272(%rbx), %ebp
	movups	1776(%rbx), %xmm1
	movaps	%xmm1, (%rsp)           # 16-byte Spill
	movq	1760(%rbx), %rax
	movups	1744(%rbx), %xmm0
	movups	%xmm1, 1752(%rbx)
	movq	%rax, 1784(%rbx)
	movq	1768(%rbx), %r14
	movq	%r14, 1744(%rbx)
	movups	%xmm0, 1768(%rbx)
	movq	1008(%rbx), %rax
	movq	1328(%rbx), %rcx
	movq	%rcx, 1008(%rbx)
	movq	%rax, 1328(%rbx)
	leaq	1024(%rbx), %r15
	leaq	16(%rsp), %r12
	movl	$280, %edx              # imm = 0x118
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	leaq	1336(%rbx), %r13
	movl	$280, %edx              # imm = 0x118
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$280, %edx              # imm = 0x118
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	284(%rbx), %eax
	movl	%eax, 272(%rbx)
	movl	%ebp, 284(%rbx)
	movl	276(%rbx), %ecx
	movl	288(%rbx), %edx
	movl	%edx, 276(%rbx)
	movl	%ecx, 288(%rbx)
	movl	280(%rbx), %ecx
	movl	292(%rbx), %edx
	movl	%edx, 280(%rbx)
	movl	%ecx, 292(%rbx)
	orl	%eax, %ebp
	je	.LBB49_4
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jns	.LBB49_3
# BB#2:                                 # %land.lhs.true.i
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movd	%xmm0, %rdi
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB49_3
# BB#5:                                 # %if.then.i
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rbx, %rsi
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB49_3:                               # %if.else.i
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*88(%rax)
.LBB49_4:                               # %cleanup
	xorl	%eax, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gs_swapcolors, .Lfunc_end49-gs_swapcolors
	.cfi_endproc

	.align	16, 0x90
	.type	gstate_free_parts,@function
gstate_free_parts:                      # @gstate_free_parts
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 32
.Ltmp199:
	.cfi_offset %rbx, -32
.Ltmp200:
	.cfi_offset %r14, -24
.Ltmp201:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	1784(%r15), %rsi
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	1776(%r15), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*24(%rbx)
	movq	1760(%r15), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*24(%rbx)
	movq	1752(%r15), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	*24(%rbx)
	cmpl	$0, 1736(%r15)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	1728(%r15), %rdi
	movq	%r14, %rsi
	callq	gx_cpath_free
.LBB50_2:                               # %if.end
	movq	1688(%r15), %rdi
	movq	%r14, %rsi
	callq	gx_cpath_free
	movq	1680(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB50_3
# BB#4:                                 # %if.then.16
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gx_path_free            # TAILCALL
.LBB50_3:                               # %if.end.18
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end50:
	.size	gstate_free_parts, .Lfunc_end50-gstate_free_parts
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_state"
	.size	.L.str, 9

	.type	st_gs_state,@object     # @st_gs_state
	.section	.rodata,"a",@progbits
	.globl	st_gs_state
	.align	8
st_gs_state:
	.long	1920                    # 0x780
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_state_enum_ptrs
	.quad	gs_state_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_state, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_state_alloc"
	.size	.L.str.1, 15

	.type	gstate_initial,@object  # @gstate_initial
	.section	.rodata,"a",@progbits
	.align	8
gstate_initial:
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1092616192              # float 10
	.long	1045425820              # float 0.20305866
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # float 0
	.zero	4
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	252                     # 0xfc
	.short	65535                   # 0xffff
	.zero	2
	.long	16                      # 0x10
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.zero	8
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_get_cmap_procs
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	64
	.zero	512
	.quad	0
	.quad	0
	.zero	280
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	280
	.size	gstate_initial, 1616

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_state_alloc(halftone)"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_state_alloc(path)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_state_alloc(clip_path)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_state_alloc(view_clip)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_state_free"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_gsave"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gs_gsave_for_save(view_clip)"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gs_grestore"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gs_grestoreall_for_restore"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_gstate"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gs_state_copy"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gs_copygstate"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gs_currentgstate"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gs_setgstate"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gs_state_update_overprint"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gstate_alloc_parts(path)"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gstate_alloc_parts(clip_path)"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gstate_alloc_parts(effective_clip_path)"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gstate_free_contents"
	.size	.L.str.20, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
