	.text
	.file	"gxpcmap.bc"
	.globl	gx_pat_cache_default_tiles
	.align	16, 0x90
	.type	gx_pat_cache_default_tiles,@function
gx_pat_cache_default_tiles:             # @gx_pat_cache_default_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$50, %eax
	retq
.Lfunc_end0:
	.size	gx_pat_cache_default_tiles, .Lfunc_end0-gx_pat_cache_default_tiles
	.cfi_endproc

	.globl	gx_pat_cache_default_bits
	.align	16, 0x90
	.type	gx_pat_cache_default_bits,@function
gx_pat_cache_default_bits:              # @gx_pat_cache_default_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$100000, %eax           # imm = 0x186A0
	retq
.Lfunc_end1:
	.size	gx_pat_cache_default_bits, .Lfunc_end1-gx_pat_cache_default_bits
	.cfi_endproc

	.globl	pattern_clist_open_device
	.align	16, 0x90
	.type	pattern_clist_open_device,@function
pattern_clist_open_device:              # @pattern_clist_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	jmpq	*gs_clist_device_procs(%rip) # TAILCALL
.Lfunc_end2:
	.size	pattern_clist_open_device, .Lfunc_end2-pattern_clist_open_device
	.cfi_endproc

	.globl	gx_device_is_pattern_accum
	.align	16, 0x90
	.type	gx_device_is_pattern_accum,@function
gx_device_is_pattern_accum:             # @gx_device_is_pattern_accum
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pattern_accum_open, %eax
	cmpq	%rax, 1144(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	gx_device_is_pattern_accum, .Lfunc_end3-gx_device_is_pattern_accum
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_open,@function
pattern_accum_open:                     # @pattern_accum_open
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
	subq	$808, %rsp              # imm = 0x328
.Ltmp6:
	.cfi_def_cfa_offset 864
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
	movq	%rdi, %r14
	movq	1744(%r14), %rbp
	movq	1728(%r14), %r12
	movq	1736(%r14), %r15
	testq	%r12, %r12
	jne	.LBB4_2
# BB#1:                                 # %cond.true
	movq	32(%rbp), %rdi
	callq	gs_currentdevice
	movq	%rax, %r12
.LBB4_2:                                # %cond.end
	movl	228(%rbp), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	232(%rbp), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%eax, 832(%r14)
	movl	%ecx, 836(%r14)
	movl	884(%r12), %eax
	movl	%eax, 884(%r14)
	movl	888(%r12), %eax
	movl	%eax, 888(%r14)
	leaq	96(%r14), %rbx
	leaq	96(%r12), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rdi
	callq	memcpy
	cmpl	$2, 88(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 128(%r14)
.LBB4_4:                                # %if.end
	cmpl	$0, 96(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then.18
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	$st_pattern_trans, %esi
	movl	$.L.str.13, %edx
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, 1768(%r14)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, (%rax)
	movq	$0, 24(%rax)
	movl	$0, 56(%rax)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	$0, 1768(%r14)
	movq	%r15, %rbx
.LBB4_7:                                # %if.end.27
	xorl	%r13d, %r13d
	cmpl	$0, 220(%rbp)
	movl	$0, %eax
	movl	$0, %r15d
	je	.LBB4_11
# BB#8:                                 # %if.then.29
	movl	$st_device_memory, %esi
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$-25, %r13d
	testq	%r15, %r15
	je	.LBB4_32
# BB#9:                                 # %if.end.35
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_make_mem_mono_device
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 832(%r15)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 836(%r15)
	movl	884(%r12), %eax
	movl	%eax, 884(%r15)
	movl	888(%r12), %eax
	movl	%eax, 888(%r15)
	movq	%rbx, 1752(%r15)
	movq	$0, 1744(%r15)
	movq	%r15, %rdi
	callq	*1144(%r15)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB4_31
# BB#10:                                # %if.then.51
	movq	1744(%r15), %rdi
	movl	836(%r15), %edx
	imull	1736(%r15), %edx
	xorl	%esi, %esi
	callq	memset
	movl	$1, %eax
.LBB4_11:                               # %if.then.59
	cmpl	$0, 96(%rbp)
	jne	.LBB4_12
# BB#14:                                # %if.else.64
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	88(%rbp), %eax
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB4_15
# BB#16:                                # %sw.bb.67
	movl	$st_device_memory, %esi
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB4_28
# BB#17:                                # %if.else.74
	movzwl	108(%r14), %edi
	callq	gdev_mem_device_for_bits
	movl	$-1, %ecx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%r12, %r8
	callq	gs_make_mem_device
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 832(%rbp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 836(%rbp)
	movl	884(%r12), %eax
	movl	%eax, 884(%rbp)
	movl	888(%r12), %eax
	movl	%eax, 888(%rbp)
	leaq	96(%rbp), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	memcpy
	movq	%rbx, 1752(%rbp)
	cmpl	$0, 848(%r12)
	jle	.LBB4_25
# BB#18:                                # %if.then.93
	movq	%rbp, %r11
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	100(%r14), %esi
	movzwl	108(%r12), %eax
	xorl	%edx, %edx
	idivl	100(%r12)
	testl	%esi, %esi
	jle	.LBB4_24
# BB#19:                                # %for.body.lr.ph
	leal	-1(%rsi), %r8d
	xorl	%edx, %edx
	testb	$1, %sil
	je	.LBB4_21
# BB#20:                                # %for.body.prol
	movl	%r8d, %ecx
	imull	%eax, %ecx
	movl	%ecx, 36(%rsp)
	movl	%eax, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	$1, %edx
.LBB4_21:                               # %for.body.lr.ph.split
	testl	%r8d, %r8d
	je	.LBB4_24
# BB#22:                                # %for.body.lr.ph.split.split
	movl	%r8d, %r10d
	subl	%edx, %r10d
	imull	%eax, %r10d
	leal	(%rax,%rax), %r9d
	leaq	1(%rdx), %rbp
	leaq	(%rbp,%rbp,2), %rcx
	leaq	40(%rsp,%rcx,4), %rcx
	subl	%ebp, %r8d
	imull	%eax, %r8d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_23:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rbp), %edi
	movl	%edi, -16(%rcx)
	movl	%eax, -20(%rcx)
	movl	%edx, -12(%rcx)
	leal	1(%rdx), %edi
	leal	(%r8,%rbp), %ebx
	movl	%ebx, -4(%rcx)
	movl	%eax, -8(%rcx)
	movl	%edi, (%rcx)
	addq	$2, %rdx
	subl	%r9d, %ebp
	addq	$24, %rcx
	cmpl	%esi, %edx
	jne	.LBB4_23
.LBB4_24:                               # %if.end.112
	leaq	32(%rsp), %rdx
	movq	%r11, %rbp
	movq	%rbp, %rdi
	callq	gdev_mem_set_planar
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movq	24(%rsp), %rbx          # 8-byte Reload
	js	.LBB4_26
.LBB4_25:                               # %if.end.123
	movq	%rbp, %rdi
	callq	*1144(%rbp)
	movl	%eax, %r13d
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gx_device_set_target
	testl	%r13d, %r13d
	jns	.LBB4_13
	jmp	.LBB4_27
.LBB4_15:                               # %if.else.64
	cmpl	$2, %eax
	jne	.LBB4_13
.LBB4_12:                               # %if.then.63
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gx_device_set_target
	xorl	%ebp, %ebp
.LBB4_13:                               # %if.end.144
	movq	%r15, 1760(%r14)
	movq	%rbp, 1752(%r14)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gx_device_retain
	jmp	.LBB4_32
.LBB4_26:                               # %if.then.126
	testq	%rbp, %rbp
	je	.LBB4_28
.LBB4_27:                               # %if.then.129
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB4_28:                               # %if.end.131
	testq	%r15, %r15
	je	.LBB4_32
# BB#29:                                # %if.then.134
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB4_31
# BB#30:                                # %if.then.136
	movq	%r15, %rdi
	callq	*1176(%r15)
.LBB4_31:                               # %if.end.140
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
.LBB4_32:                               # %cleanup
	movl	%r13d, %eax
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pattern_accum_open, .Lfunc_end4-pattern_accum_open
	.cfi_endproc

	.globl	gx_device_is_pattern_clist
	.align	16, 0x90
	.type	gx_device_is_pattern_clist,@function
gx_device_is_pattern_clist:             # @gx_device_is_pattern_clist
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end5:
	.size	gx_device_is_pattern_clist, .Lfunc_end5-gx_device_is_pattern_clist
	.cfi_endproc

	.globl	gx_pattern_accum_alloc
	.align	16, 0x90
	.type	gx_pattern_accum_alloc,@function
gx_pattern_accum_alloc:                 # @gx_pattern_accum_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, %r8
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	32(%r14), %rcx
	movq	1872(%rcx), %r12
	movl	$128, %ebp
	andl	1112(%r12), %ebp
	movl	$1, %edx
	cmpl	$2, 88(%r14)
	je	.LBB6_2
# BB#1:                                 # %cond.false.i
	movzwl	108(%r12), %edx
.LBB6_2:                                # %cond.end.i
	cmpl	$0, 96(%r14)
	movl	228(%r14), %eax
	je	.LBB6_5
# BB#3:                                 # %if.then.i
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	shrl	$3, %edx
	orl	$1, %ebp
	addl	%edx, %ebp
	imull	%eax, %ebp
	movslq	232(%r14), %rdi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	idivl	%edi
	movl	$2147418112, %edx       # imm = 0x7FFF0000
	cmpl	%eax, %ebp
	jg	.LBB6_6
# BB#4:                                 # %cond.false.12.i
	movslq	%ebp, %rax
	imulq	%rax, %rdi
	movq	%rdi, %rdx
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.i
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	imull	%edx, %eax
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %eax
	sarl	$3, %eax
	cltq
	movslq	232(%r14), %rdx
	imulq	%rax, %rdx
.LBB6_6:                                # %gx_pattern_size_estimate.exit
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	movl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmovlel	%edx, %ebx
	movl	848(%r12), %eax
	movl	1052(%r12), %edx
	testl	%edx, %edx
	movl	$10000000, %ebp         # imm = 0x989680
	cmovnel	%edx, %ebp
	movl	%eax, 216(%r14)
	cmpl	$0, 316(%rcx)
	jne	.LBB6_8
# BB#7:                                 # %land.lhs.true
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%r8, %r15
	callq	*1664(%r12)
	movq	%r15, %r8
	cmpl	$1, %eax
	je	.LBB6_11
.LBB6_8:                                # %lor.lhs.false
	cmpl	%ebp, %ebx
	jge	.LBB6_10
# BB#9:                                 # %land.lhs.true.16
	cmpl	$0, 224(%r14)
	je	.LBB6_11
.LBB6_10:                               # %lor.lhs.false.18
	cmpl	$1, 88(%r14)
	jne	.LBB6_11
# BB#13:                                # %if.else
	movups	.Lgx_pattern_accum_alloc.buf_procs+16(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	.Lgx_pattern_accum_alloc.buf_procs(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	200(%r15), %rdi
	movl	$32768, %esi            # imm = 0x8000
	movq	%r8, %rdx
	movq	%r8, %rbx
	callq	*64(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB6_16
# BB#14:                                # %if.end.35
	movl	$1, 224(%r14)
	movl	228(%r14), %eax
	movl	%eax, 32(%rsp)
	movl	232(%r14), %eax
	movl	%eax, 36(%rsp)
	movq	$0, 40(%rsp)
	movl	96(%r14), %eax
	movq	%r14, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$1, (%rsp)
	leaq	48(%rsp), %r8
	leaq	32(%rsp), %r9
	movl	$.L.str, %esi
	movl	$32768, %ecx            # imm = 0x8000
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	clist_make_accum_device
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_15
# BB#17:                                # %cleanup.50
	movq	$gx_pattern_accum_finalize_cw, 48(%rbp)
	movq	$pattern_clist_open_device, 1144(%rbp)
	jmp	.LBB6_18
.LBB6_11:                               # %if.then.21
	movl	$st_device_pattern_accum, %esi
	movq	%r13, %rdi
	movq	%r8, %rdx
	callq	*72(%r13)
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB6_19
# BB#12:                                # %cleanup.thread
	movl	$0, 224(%r14)
	movl	$gs_pattern_accum_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	gx_device_init
	movq	%r14, 1744(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1736(%rbx)
	movq	%rbx, %rbp
.LBB6_18:                               # %if.end.58
	movl	844(%r12), %eax
	movl	%eax, 844(%rbp)
	movl	840(%r12), %eax
	movl	%eax, 840(%rbp)
	movl	848(%r12), %eax
	movl	%eax, 848(%rbp)
	movq	%rbp, %rdi
	callq	check_device_separable
	movq	%rbp, %rdi
	callq	gx_device_forward_fill_in_procs
	jmp	.LBB6_19
.LBB6_15:                               # %if.then.43
	movq	200(%r15), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*24(%rdi)
.LBB6_16:                               # %cleanup.50.thread
	xorl	%ebp, %ebp
.LBB6_19:                               # %cleanup.63
	movq	%rbp, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_pattern_accum_alloc, .Lfunc_end6-gx_pattern_accum_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_create_buf_device,@function
dummy_create_buf_device:                # @dummy_create_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rsi, %rbx
	movq	(%rdi), %r15
	movzwl	108(%rbx), %edi
	callq	gdev_mem_device_for_bits
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%rbx, %r8
	callq	gs_make_mem_device
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	dummy_create_buf_device, .Lfunc_end7-dummy_create_buf_device
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_size_buf_device,@function
dummy_size_buf_device:                  # @dummy_size_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	dummy_size_buf_device, .Lfunc_end8-dummy_size_buf_device
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_setup_buf_device,@function
dummy_setup_buf_device:                 # @dummy_setup_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	dummy_setup_buf_device, .Lfunc_end9-dummy_setup_buf_device
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_destroy_buf_device,@function
dummy_destroy_buf_device:               # @dummy_destroy_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end10:
	.size	dummy_destroy_buf_device, .Lfunc_end10-dummy_destroy_buf_device
	.cfi_endproc

	.align	16, 0x90
	.type	gx_pattern_accum_finalize_cw,@function
gx_pattern_accum_finalize_cw:           # @gx_pattern_accum_finalize_cw
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB11_2
# BB#1:                                 # %do.end
	decq	56(%rsi)
	je	.LBB11_3
.LBB11_2:                               # %do.end.30
	retq
.LBB11_3:                               # %do.end.14
	movq	64(%rsi), %rdi
	movq	72(%rsi), %rax
	movl	$.L.str.12, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	gx_pattern_accum_finalize_cw, .Lfunc_end11-gx_pattern_accum_finalize_cw
	.cfi_endproc

	.globl	new_pattern_trans_buff
	.align	16, 0x90
	.type	new_pattern_trans_buff,@function
new_pattern_trans_buff:                 # @new_pattern_trans_buff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 16
	movl	$st_pattern_trans, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	popq	%rdx
	retq
.Lfunc_end12:
	.size	new_pattern_trans_buff, .Lfunc_end12-new_pattern_trans_buff
	.cfi_endproc

	.globl	gx_pattern_alloc_cache
	.align	16, 0x90
	.type	gx_pattern_alloc_cache,@function
gx_pattern_alloc_cache:                 # @gx_pattern_alloc_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	callq	*72(%rbx)
	movq	%rax, %r14
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*104(%rbx)
	testq	%r14, %r14
	je	.LBB13_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB13_2
# BB#3:                                 # %if.end
	movq	%rbx, (%r14)
	movq	%rax, 8(%r14)
	movl	%ebp, 16(%r14)
	movl	$0, 20(%r14)
	movl	$0, 24(%r14)
	movq	$0, 32(%r14)
	movq	%r15, 40(%r14)
	movq	$pattern_cache_free_all, 48(%r14)
	testl	%ebp, %ebp
	je	.LBB13_8
# BB#4:                                 # %for.body.lr.ph
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%edx, %edx
	testb	$1, %bpl
	je	.LBB13_6
# BB#5:                                 # %for.body.prol
	movq	$0, (%rax)
	movq	%rcx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	$0, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	addq	$232, %rax
	movl	$1, %edx
.LBB13_6:                               # %for.body.lr.ph.split
	cmpl	$1, %ebp
	je	.LBB13_8
	.align	16, 0x90
.LBB13_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rcx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%edx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rcx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rdx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %edx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	%ebp, %edx
	jne	.LBB13_7
	jmp	.LBB13_8
.LBB13_2:                               # %if.then
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB13_8:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_pattern_alloc_cache, .Lfunc_end13-gx_pattern_alloc_cache
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_cache_free_all,@function
pattern_cache_free_all:                 # @pattern_cache_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 32
.Ltmp45:
	.cfi_offset %rbx, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB14_6
# BB#1:                                 # %for.cond.preheader.i
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB14_6
# BB#2:                                 # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB14_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	movq	8(%rbx), %rsi
	imulq	$232, %rcx, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB14_5
# BB#4:                                 # %if.then.3.i
                                        #   in Loop: Header=BB14_3 Depth=1
	addq	%rcx, %rsi
	movq	%rbx, %rdi
	callq	gx_pattern_cache_free_entry
	movl	16(%rbx), %eax
.LBB14_5:                               # %if.end.4.i
                                        #   in Loop: Header=BB14_3 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB14_3
.LBB14_6:                               # %gx_pattern_cache_winnow.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pattern_cache_free_all, .Lfunc_end14-pattern_cache_free_all
	.cfi_endproc

	.globl	gx_pattern_cache_free
	.align	16, 0x90
	.type	gx_pattern_cache_free,@function
gx_pattern_cache_free:                  # @gx_pattern_cache_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 32
.Ltmp50:
	.cfi_offset %rbx, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB15_6
# BB#1:                                 # %for.cond.preheader.i.i
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB15_6
# BB#2:                                 # %for.body.lr.ph.i.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB15_3:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	movq	8(%rbx), %rsi
	imulq	$232, %rcx, %rcx
	cmpq	$0, (%rsi,%rcx)
	je	.LBB15_5
# BB#4:                                 # %if.then.3.i.i
                                        #   in Loop: Header=BB15_3 Depth=1
	addq	%rcx, %rsi
	movq	%rbx, %rdi
	callq	gx_pattern_cache_free_entry
	movl	16(%rbx), %eax
.LBB15_5:                               # %if.end.4.i.i
                                        #   in Loop: Header=BB15_3 Depth=1
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB15_3
.LBB15_6:                               # %pattern_cache_free_all.exit
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, 8(%rbx)
	movq	(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.4, %edx
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end15:
	.size	gx_pattern_cache_free, .Lfunc_end15-gx_pattern_cache_free
	.cfi_endproc

	.globl	gstate_pattern_cache
	.align	16, 0x90
	.type	gstate_pattern_cache,@function
gstate_pattern_cache:                   # @gstate_pattern_cache
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1304(%rdi), %rax
	retq
.Lfunc_end16:
	.size	gstate_pattern_cache, .Lfunc_end16-gstate_pattern_cache
	.cfi_endproc

	.globl	gstate_set_pattern_cache
	.align	16, 0x90
	.type	gstate_set_pattern_cache,@function
gstate_set_pattern_cache:               # @gstate_set_pattern_cache
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 1304(%rdi)
	retq
.Lfunc_end17:
	.size	gstate_set_pattern_cache, .Lfunc_end17-gstate_set_pattern_cache
	.cfi_endproc

	.globl	gx_pattern_cache_ensure_space
	.align	16, 0x90
	.type	gx_pattern_cache_ensure_space,@function
gx_pattern_cache_ensure_space:          # @gx_pattern_cache_ensure_space
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movq	1304(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB18_6
# BB#1:                                 # %if.then.i
	movq	8(%r15), %rbp
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %rbx
	movl	$50, %esi
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%rbp, %rdi
	callq	*104(%rbp)
	testq	%rbx, %rbx
	je	.LBB18_11
# BB#2:                                 # %if.then.i
	testq	%rax, %rax
	je	.LBB18_11
# BB#3:                                 # %if.end.i.17
	movq	%rbp, (%rbx)
	movq	%rax, 8(%rbx)
	movl	$50, 16(%rbx)
	movl	$0, 20(%rbx)
	movl	$0, 24(%rbx)
	movl	$100000, %ecx           # imm = 0x186A0
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 32(%rbx)
	movq	$pattern_cache_free_all, 48(%rbx)
	xorl	%ecx, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB18_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%ecx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rdx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %ecx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	$50, %ecx
	jne	.LBB18_4
# BB#5:                                 # %if.end.i
	movq	%rbx, 1304(%r15)
.LBB18_6:                               # %if.end
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB18_10
# BB#7:                                 # %if.end
	movslq	%r14d, %rbp
	.align	16, 0x90
.LBB18_8:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	addq	%rbp, %rax
	cmpq	40(%rbx), %rax
	jbe	.LBB18_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	24(%rbx), %eax
	incl	%eax
	xorl	%edx, %edx
	divl	16(%rbx)
	movl	%edx, 24(%rbx)
	imulq	$232, %rdx, %rsi
	addq	8(%rbx), %rsi
	movq	%rbx, %rdi
	callq	gx_pattern_cache_free_entry
	movq	32(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB18_8
.LBB18_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_11:                              # %gx_pattern_alloc_cache.exit.thread
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*24(%rbp)
	movq	24(%rbp), %rax
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end18:
	.size	gx_pattern_cache_ensure_space, .Lfunc_end18-gx_pattern_cache_ensure_space
	.cfi_endproc

	.align	16, 0x90
	.type	gx_pattern_cache_free_entry,@function
gx_pattern_cache_free_entry:            # @gx_pattern_cache_free_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 48
.Ltmp66:
	.cfi_offset %rbx, -40
.Ltmp67:
	.cfi_offset %r12, -32
.Ltmp68:
	.cfi_offset %r14, -24
.Ltmp69:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	$0, (%rbx)
	je	.LBB19_22
# BB#1:                                 # %land.lhs.true
	cmpb	$0, 210(%rbx)
	jne	.LBB19_22
# BB#2:                                 # %if.then
	movq	(%r14), %r15
	movq	144(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB19_4
# BB#3:                                 # %if.then.2
	movl	$.L.str.20, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 144(%rbx)
.LBB19_4:                               # %if.end
	movq	96(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB19_6
# BB#5:                                 # %if.then.9
	movl	$.L.str.21, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 96(%rbx)
.LBB19_6:                               # %if.end.16
	movq	200(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB19_11
# BB#7:                                 # %if.then.18
	movl	$0, 1808(%rdi)
	callq	*1176(%rdi)
	movq	200(%rbx), %rax
	movq	10160(%rax), %rdi
	movq	24(%rax), %rsi
	callq	clist_free_icc_table
	movq	200(%rbx), %rdi
	movq	$0, 10160(%rdi)
	movq	10168(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB19_10
# BB#8:                                 # %do.end
	decq	16(%rsi)
	jne	.LBB19_10
# BB#9:                                 # %do.end.56
	movq	24(%rsi), %rdi
	movl	$.L.str.22, %edx
	callq	*32(%rsi)
	movq	200(%rbx), %rdi
	movq	$0, 10168(%rdi)
.LBB19_10:                              # %do.end.80
	movq	$0, 10168(%rdi)
	movq	$0, 12176(%rdi)
	xorl	%esi, %esi
	callq	gx_device_retain
	movq	$0, 200(%rbx)
.LBB19_11:                              # %if.end.87
	movq	192(%rbx), %rax
	testq	%rax, %rax
	je	.LBB19_21
# BB#12:                                # %do.end.92
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# BB#16:                                # %if.else.115
	callq	*1176(%rdi)
	movq	192(%rbx), %rax
	movq	(%rax), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_retain
	testq	%r12, %r12
	je	.LBB19_19
# BB#17:                                # %do.end.132
	decq	56(%r12)
	jne	.LBB19_19
# BB#18:                                # %do.end.145
	movq	64(%r12), %rdi
	movl	$.L.str.22, %edx
	movq	%r12, %rsi
	callq	*72(%r12)
.LBB19_19:                              # %do.end.159
	movq	192(%rbx), %rsi
	movq	$0, (%rsi)
	jmp	.LBB19_20
.LBB19_13:                              # %if.then.95
	movq	16(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB19_15
# BB#14:                                # %if.then.99
	movq	8(%rax), %rsi
	movl	$.L.str.23, %edx
	callq	*24(%rdi)
	movq	192(%rbx), %rax
.LBB19_15:                              # %if.end.107
	movq	24(%rax), %rsi
	movl	$.L.str.24, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	192(%rbx), %rsi
.LBB19_20:                              # %if.end.166
	movq	$0, 8(%rsi)
	movq	$0, 24(%rsi)
	movl	$.L.str.25, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 192(%rbx)
.LBB19_21:                              # %if.end.171
	decl	20(%r14)
	movslq	32(%rbx), %rax
	subq	%rax, 32(%r14)
	movq	$0, (%rbx)
.LBB19_22:                              # %if.end.174
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	gx_pattern_cache_free_entry, .Lfunc_end19-gx_pattern_cache_free_entry
	.cfi_endproc

	.globl	gx_pattern_cache_update_used
	.align	16, 0x90
	.type	gx_pattern_cache_update_used,@function
gx_pattern_cache_update_used:           # @gx_pattern_cache_update_used
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1304(%rdi), %rax
	addq	%rsi, 32(%rax)
	incl	20(%rax)
	retq
.Lfunc_end20:
	.size	gx_pattern_cache_update_used, .Lfunc_end20-gx_pattern_cache_update_used
	.cfi_endproc

	.globl	gx_pattern_cache_add_entry
	.align	16, 0x90
	.type	gx_pattern_cache_add_entry,@function
gx_pattern_cache_add_entry:             # @gx_pattern_cache_add_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 128
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	1304(%rbx), %r13
	testq	%r13, %r13
	jne	.LBB21_7
# BB#1:                                 # %if.then.i
	movq	8(%rbx), %rbp
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %r13
	movl	$50, %esi
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%rbp, %rdi
	callq	*104(%rbp)
	testq	%r13, %r13
	je	.LBB21_3
# BB#2:                                 # %if.then.i
	testq	%rax, %rax
	je	.LBB21_3
# BB#4:                                 # %if.end.i.104
	movq	%rbp, (%r13)
	movq	%rax, 8(%r13)
	movl	$50, 16(%r13)
	movl	$0, 20(%r13)
	movl	$0, 24(%r13)
	movl	$100000, %ecx           # imm = 0x186A0
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 32(%r13)
	movq	$pattern_cache_free_all, 48(%r13)
	xorl	%ecx, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB21_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%ecx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rdx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %ecx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	$50, %ecx
	jne	.LBB21_5
# BB#6:                                 # %if.end.i
	movq	%r13, 1304(%rbx)
.LBB21_7:                               # %if.end
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%r12)
	je	.LBB21_26
# BB#8:                                 # %if.then.3
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	1744(%r12), %r14
	movq	1752(%r12), %r10
	movq	1760(%r12), %rax
	movq	1768(%r12), %r15
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB21_19
# BB#9:                                 # %for.cond.preheader
	movslq	836(%rax), %r9
	xorl	%ebx, %ebx
	testq	%r9, %r9
	jle	.LBB21_19
# BB#10:                                # %for.body.lr.ph
	movq	2576(%rax), %r8
	movl	832(%rax), %edi
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
.LBB21_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_15 Depth 2
	movq	(%r8,%rbp,8), %rsi
	movb	(%rsi), %dl
	cmpl	$9, %edi
	jl	.LBB21_13
# BB#14:                                # %for.body.9.preheader
                                        #   in Loop: Header=BB21_12 Depth=1
	incq	%rsi
	movl	%edi, %ecx
	.align	16, 0x90
.LBB21_15:                              # %for.body.9
                                        #   Parent Loop BB21_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%dl, %edx
	cmpl	$255, %edx
	jne	.LBB21_18
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB21_15 Depth=2
	addl	$-8, %ecx
	movb	(%rsi), %dl
	incq	%rsi
	cmpl	$8, %ecx
	jg	.LBB21_15
	jmp	.LBB21_17
	.align	16, 0x90
.LBB21_13:                              #   in Loop: Header=BB21_12 Depth=1
	movl	%edi, %ecx
.LBB21_17:                              # %for.end
                                        #   in Loop: Header=BB21_12 Depth=1
	movzbl	%dl, %edx
	movl	$255, %esi
	shrl	%cl, %esi
	orl	%edx, %esi
	cmpl	$255, %esi
	jne	.LBB21_18
# BB#11:                                # %for.cond
                                        #   in Loop: Header=BB21_12 Depth=1
	incq	%rbp
	cmpq	%r9, %rbp
	jl	.LBB21_12
	jmp	.LBB21_19
.LBB21_26:                              # %if.else
	movq	%r14, %rbx
	movq	%r12, %rdi
	callq	clist_end_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB21_46
# BB#27:                                # %if.end.47
	movq	12176(%r12), %r14
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	clist_data_size
	movl	%eax, %r15d
	movl	$-28, %ebp
	testl	%r15d, %r15d
	js	.LBB21_46
# BB#28:                                # %if.end.53
	movl	$1, %esi
	movq	%r12, %rdi
	callq	clist_data_size
	testl	%eax, %eax
	js	.LBB21_46
# BB#29:                                # %cleanup.61
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	addl	%r15d, %eax
	cltq
	movq	%rax, 64(%rsp)
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jmp	.LBB21_30
.LBB21_3:                               # %gx_pattern_alloc_cache.exit.thread
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*24(%rbp)
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*24(%rbp)
	movl	$-25, %ebp
	jmp	.LBB21_46
.LBB21_18:
	movq	%rax, %rbx
.LBB21_19:                              # %if.end.22
	testq	%r10, %r10
	movq	%r10, %rbp
	je	.LBB21_21
# BB#20:                                # %if.then.25
	movl	832(%rbp), %esi
	movl	836(%rbp), %edx
	leaq	64(%rsp), %rcx
	movq	%rbp, %rdi
	callq	gdev_mem_data_size
.LBB21_21:                              # %if.end.29
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB21_23
# BB#22:                                # %if.then.32
	movl	832(%rbx), %esi
	movl	836(%rbx), %edx
	leaq	56(%rsp), %rcx
	movq	%rbx, %rdi
	callq	gdev_mem_data_size
	movq	56(%rsp), %rax
	addq	%rax, 64(%rsp)
.LBB21_23:                              # %if.end.36
	testq	%r15, %r15
	je	.LBB21_24
# BB#25:                                # %if.then.39
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movslq	56(%r15), %rax
	movslq	52(%r15), %rcx
	movq	%r15, 24(%rsp)          # 8-byte Spill
	imulq	%rax, %rcx
	addq	%rcx, 64(%rsp)
	jmp	.LBB21_30
.LBB21_24:
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB21_30:                              # %if.end.65
	movq	240(%r14), %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	16(%r13), %ecx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	movq	8(%r13), %rbp
	imulq	$232, %rdx, %r15
	leaq	(%rbp,%r15), %rax
	movq	%r13, %rdi
	movq	%rax, %r13
	movq	%r13, %rsi
	callq	gx_pattern_cache_free_entry
	movq	%rbx, (%rbp,%r15)
	movl	216(%r14), %eax
	movl	%eax, 224(%rbp,%r15)
	movzwl	108(%r12), %eax
	movl	%eax, 8(%rbp,%r15)
	movups	64(%r14), %xmm0
	movups	%xmm0, 16(%rbp,%r15)
	movl	92(%r14), %eax
	movl	%eax, 36(%rbp,%r15)
	movq	168(%r14), %rax
	movq	%rax, 56(%rbp,%r15)
	movups	152(%r14), %xmm0
	movups	%xmm0, 40(%rbp,%r15)
	movdqu	176(%r14), %xmm0
	movups	192(%r14), %xmm1
	movups	%xmm1, 80(%rbp,%r15)
	movdqu	%xmm0, 64(%rbp,%r15)
	movb	208(%r14), %al
	movb	%al, 208(%rbp,%r15)
	movb	212(%r14), %al
	movb	%al, 209(%rbp,%r15)
	movb	$0, 210(%rbp,%r15)
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%r12)
	je	.LBB21_44
# BB#31:                                # %if.then.86
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	leaq	96(%rbp,%r15), %rbx
	je	.LBB21_35
# BB#32:                                # %if.then.89
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$1, %r14d
	movl	$1, %esi
	movq	%rcx, %r13
	callq	gs_next_ids
	movq	%r13, %rdx
	movq	1744(%rdx), %rcx
	movq	%rcx, (%rbx)
	movl	1736(%rdx), %ecx
	movl	%ecx, 104(%rbp,%r15)
	movl	832(%rdx), %ecx
	movl	%ecx, 108(%rbp,%r15)
	movw	%cx, 128(%rbp,%r15)
	movl	836(%rdx), %ecx
	movl	%ecx, 112(%rbp,%r15)
	movw	%cx, 130(%rbp,%r15)
	movq	%rax, 120(%rbp,%r15)
	movl	$0, 132(%rbp,%r15)
	cmpl	$0, 848(%rdx)
	je	.LBB21_34
# BB#33:                                # %cond.true.i
	movl	100(%rdx), %r14d
.LBB21_34:                              # %make_bitmap.exit
	movl	%r14d, 136(%rbp,%r15)
	movq	$0, 1752(%rdx)
	movq	%r12, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	(%rsp), %r13            # 8-byte Reload
	jmp	.LBB21_36
.LBB21_44:                              # %if.else.107
	movq	$0, 96(%rbp,%r15)
	movl	$0, 108(%rbp,%r15)
	movl	$0, 112(%rbp,%r15)
	movq	$0, 144(%rbp,%r15)
	movl	$0, 156(%rbp,%r15)
	movl	$0, 160(%rbp,%r15)
	movq	%r12, 200(%rbp,%r15)
	movl	$1, 1808(%r12)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB21_45
.LBB21_35:                              # %if.else.91
	movq	$0, (%rbx)
	movq	%r12, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
.LBB21_36:                              # %if.end.93
	testq	%rdx, %rdx
	leaq	144(%rbp,%r15), %rax
	je	.LBB21_40
# BB#37:                                # %if.then.96
	movq	1744(%rdx), %rcx
	movq	%rcx, (%rax)
	movl	1736(%rdx), %eax
	movl	%eax, 152(%rbp,%r15)
	movl	832(%rdx), %eax
	movl	%eax, 156(%rbp,%r15)
	movw	%ax, 176(%rbp,%r15)
	movl	836(%rdx), %eax
	movl	%eax, 160(%rbp,%r15)
	movw	%ax, 178(%rbp,%r15)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 168(%rbp,%r15)
	movl	$0, 180(%rbp,%r15)
	movl	$1, %eax
	cmpl	$0, 848(%rdx)
	je	.LBB21_39
# BB#38:                                # %cond.true.i.123
	movl	100(%rdx), %eax
.LBB21_39:                              # %make_bitmap.exit126
	movl	%eax, 184(%rbp,%r15)
	movq	$0, 1752(%rdx)
	jmp	.LBB21_41
.LBB21_40:                              # %if.else.98
	movq	$0, (%rax)
.LBB21_41:                              # %if.end.101
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB21_43
# BB#42:                                # %do.end
	movq	%rsi, 192(%rbp,%r15)
.LBB21_43:                              # %if.end.105
	movq	$0, 200(%rbp,%r15)
.LBB21_45:                              # %if.end.124
	movq	64(%rsp), %rax
	movl	%eax, 32(%rbp,%r15)
	movq	1304(%rcx), %rcx
	addq	%rax, 32(%rcx)
	incl	20(%rcx)
	movq	%r13, (%rdx)
	xorl	%ebp, %ebp
.LBB21_46:                              # %cleanup.126
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gx_pattern_cache_add_entry, .Lfunc_end21-gx_pattern_cache_add_entry
	.cfi_endproc

	.globl	gx_pattern_cache_get_entry
	.align	16, 0x90
	.type	gx_pattern_cache_get_entry,@function
gx_pattern_cache_get_entry:             # @gx_pattern_cache_get_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 64
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	1304(%r12), %r14
	testq	%r14, %r14
	jne	.LBB22_7
# BB#1:                                 # %if.then.i
	movq	8(%r12), %r13
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %r14
	movl	$50, %esi
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%r13, %rdi
	callq	*104(%r13)
	testq	%r14, %r14
	je	.LBB22_3
# BB#2:                                 # %if.then.i
	testq	%rax, %rax
	je	.LBB22_3
# BB#4:                                 # %if.end.i.16
	movq	%r13, (%r14)
	movq	%rax, 8(%r14)
	movl	$50, 16(%r14)
	movl	$0, 20(%r14)
	movl	$0, 24(%r14)
	movl	$100000, %ecx           # imm = 0x186A0
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 32(%r14)
	movq	$pattern_cache_free_all, 48(%r14)
	xorl	%ecx, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB22_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%ecx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rdx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %ecx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	$50, %ecx
	jne	.LBB22_5
# BB#6:                                 # %if.end.i
	movq	%r14, 1304(%r12)
.LBB22_7:                               # %if.end
	movl	16(%r14), %ecx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	movq	8(%r14), %r13
	imulq	$232, %rdx, %rbp
	movq	%rbx, %r12
	leaq	(%r13,%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_pattern_cache_free_entry
	xorl	%eax, %eax
	movq	%r12, (%r13,%rbp)
	movq	%rbx, (%r15)
	jmp	.LBB22_8
.LBB22_3:                               # %gx_pattern_alloc_cache.exit.thread
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	*24(%r13)
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*24(%r13)
	movl	$-25, %eax
.LBB22_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gx_pattern_cache_get_entry, .Lfunc_end22-gx_pattern_cache_get_entry
	.cfi_endproc

	.globl	gx_pattern_tile_is_clist
	.align	16, 0x90
	.type	gx_pattern_tile_is_clist,@function
gx_pattern_tile_is_clist:               # @gx_pattern_tile_is_clist
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB23_1
# BB#2:                                 # %land.rhs
	cmpq	$0, 200(%rdi)
	setne	%al
	movzbl	%al, %eax
	retq
.LBB23_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end23:
	.size	gx_pattern_tile_is_clist, .Lfunc_end23-gx_pattern_tile_is_clist
	.cfi_endproc

	.globl	gx_pattern_cache_add_dummy_entry
	.align	16, 0x90
	.type	gx_pattern_cache_add_dummy_entry,@function
gx_pattern_cache_add_dummy_entry:       # @gx_pattern_cache_add_dummy_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp102:
	.cfi_def_cfa_offset 64
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	240(%rbx), %r12
	movq	1304(%r13), %r14
	testq	%r14, %r14
	jne	.LBB24_7
# BB#1:                                 # %if.then.i
	movq	8(%r13), %rbp
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %r14
	movl	$50, %esi
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%rbp, %rdi
	callq	*104(%rbp)
	testq	%r14, %r14
	je	.LBB24_3
# BB#2:                                 # %if.then.i
	testq	%rax, %rax
	je	.LBB24_3
# BB#4:                                 # %if.end.i.39
	movq	%rbp, (%r14)
	movq	%rax, 8(%r14)
	movl	$50, 16(%r14)
	movl	$0, 20(%r14)
	movl	$0, 24(%r14)
	movl	$100000, %ecx           # imm = 0x186A0
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 32(%r14)
	movq	$pattern_cache_free_all, 48(%r14)
	xorl	%ecx, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB24_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%ecx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rdx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %ecx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	$50, %ecx
	jne	.LBB24_5
# BB#6:                                 # %if.end.i
	movq	%r14, 1304(%r13)
.LBB24_7:                               # %if.end
	movl	16(%r14), %ecx
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%rcx
	movq	8(%r14), %rbp
	movl	%r15d, %r13d
	imulq	$232, %rdx, %r15
	leaq	(%rbp,%r15), %rsi
	movq	%r14, %rdi
	callq	gx_pattern_cache_free_entry
	movq	%r12, (%rbp,%r15)
	movl	%r13d, 8(%rbp,%r15)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 16(%rbp,%r15)
	movl	92(%rbx), %eax
	movl	%eax, 36(%rbp,%r15)
	movq	168(%rbx), %rax
	movq	%rax, 56(%rbp,%r15)
	movups	152(%rbx), %xmm0
	movups	%xmm0, 40(%rbp,%r15)
	movups	176(%rbx), %xmm0
	movups	192(%rbx), %xmm1
	movups	%xmm1, 80(%rbp,%r15)
	movups	%xmm0, 64(%rbp,%r15)
	movb	208(%rbx), %al
	movb	%al, 208(%rbp,%r15)
	movb	212(%rbx), %al
	movb	%al, 209(%rbp,%r15)
	movb	$1, 210(%rbp,%r15)
	leaq	96(%rbp,%r15), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset
	movq	228(%rbx), %rax
	movq	%rax, 108(%rbp,%r15)
	movq	$0, 120(%rbp,%r15)
	leaq	144(%rbp,%r15), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	memset
	xorl	%eax, %eax
	movq	$0, 200(%rbp,%r15)
	movq	$0, 192(%rbp,%r15)
	movl	$0, 32(%rbp,%r15)
	incl	20(%r14)
	jmp	.LBB24_8
.LBB24_3:                               # %gx_pattern_alloc_cache.exit.thread
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*24(%rbp)
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*24(%rbp)
	movl	$-25, %eax
.LBB24_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gx_pattern_cache_add_dummy_entry, .Lfunc_end24-gx_pattern_cache_add_dummy_entry
	.cfi_endproc

	.globl	gx_pattern_cache_winnow
	.align	16, 0x90
	.type	gx_pattern_cache_winnow,@function
gx_pattern_cache_winnow:                # @gx_pattern_cache_winnow
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
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 48
.Ltmp114:
	.cfi_offset %rbx, -48
.Ltmp115:
	.cfi_offset %r12, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB25_7
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 16(%r12)
	je	.LBB25_7
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB25_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	8(%r12), %rbx
	imulq	$232, %rax, %rax
	cmpq	$0, (%rbx,%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB25_3 Depth=1
	addq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	testl	%eax, %eax
	je	.LBB25_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gx_pattern_cache_free_entry
.LBB25_6:                               # %if.end.4
                                        #   in Loop: Header=BB25_3 Depth=1
	incl	%ebp
	cmpl	16(%r12), %ebp
	jb	.LBB25_3
.LBB25_7:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gx_pattern_cache_winnow, .Lfunc_end25-gx_pattern_cache_winnow
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gx_erase_colored_pattern
	.align	16, 0x90
	.type	gx_erase_colored_pattern,@function
gx_erase_colored_pattern:               # @gx_erase_colored_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 64
.Ltmp123:
	.cfi_offset %rbx, -32
.Ltmp124:
	.cfi_offset %r14, -24
.Ltmp125:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	gs_currentdevice
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	gs_gsave
	testl	%eax, %eax
	js	.LBB26_4
# BB#1:                                 # %if.end
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_setgray
	testl	%eax, %eax
	js	.LBB26_3
# BB#2:                                 # %if.then.4
	movl	$252, 212(%rbx)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	832(%r14), %xmm0
	movsd	%xmm0, 16(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	836(%r14), %xmm0
	movsd	%xmm0, 24(%rsp)
	movq	1760(%r14), %r15
	movq	$0, 1760(%r14)
	leaq	(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gs_rectfill
	movq	%r15, 1760(%r14)
	testl	%eax, %eax
	js	.LBB26_4
.LBB26_3:                               # %if.end.19
	movq	%rbx, %rdi
	callq	gs_grestore_only
.LBB26_4:                               # %cleanup.21
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	gx_erase_colored_pattern, .Lfunc_end26-gx_erase_colored_pattern
	.cfi_endproc

	.globl	gx_pattern_load
	.align	16, 0x90
	.type	gx_pattern_load,@function
gx_pattern_load:                        # @gx_pattern_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 96
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rsi, %rbp
	movq	368(%rdi), %r12
	movq	8(%rbp), %r13
	movl	$128, %r15d
	andl	1112(%rdx), %r15d
	cmpq	$0, 1304(%rbp)
	jne	.LBB27_7
# BB#1:                                 # %if.then.i
	movq	%rdi, %r14
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movl	$st_pattern_cache, %esi
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbx
	movl	$50, %esi
	movl	$st_color_tile_element, %edx
	movl	$.L.str.3, %ecx
	movq	%r13, %rdi
	callq	*104(%r13)
	testq	%rbx, %rbx
	je	.LBB27_3
# BB#2:                                 # %if.then.i
	testq	%rax, %rax
	je	.LBB27_3
# BB#4:                                 # %if.end.i.88
	movq	%r13, (%rbx)
	movq	%rax, 8(%rbx)
	movl	$50, 16(%rbx)
	movl	$0, 20(%rbx)
	movl	$0, 24(%rbx)
	movl	$100000, %ecx           # imm = 0x186A0
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 32(%rbx)
	movq	$pattern_cache_free_all, 48(%rbx)
	xorl	%ecx, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%r14, %rdi
	.align	16, 0x90
.LBB27_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movq	%rdx, 16(%rax)
	movq	$0, 24(%rax)
	movl	$0, 32(%rax)
	movq	$0, 96(%rax)
	movq	$0, 144(%rax)
	movl	%ecx, 216(%rax)
	movq	$0, 200(%rax)
	movq	$0, 192(%rax)
	movl	$0, 224(%rax)
	movq	$0, 232(%rax)
	movq	%rdx, 248(%rax)
	movq	$0, 256(%rax)
	movl	$0, 264(%rax)
	movq	$0, 328(%rax)
	movq	$0, 376(%rax)
	leal	1(%rcx), %esi
	movl	%esi, 448(%rax)
	movq	$0, 432(%rax)
	movq	$0, 424(%rax)
	movl	$0, 456(%rax)
	addl	$2, %ecx
	addq	$464, %rax              # imm = 0x1D0
	cmpl	$50, %ecx
	jne	.LBB27_5
# BB#6:                                 # %ensure_pattern_cache.exit
	movq	%rbx, 1304(%rbp)
	movl	8(%rsp), %ebx           # 4-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB27_7:                               # %if.end.3
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %rsi
	movl	%ebx, %ecx
	callq	gx_pattern_cache_lookup
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB27_42
# BB#8:                                 # %if.end.6
	movl	$1, %ecx
	cmpl	$2, 88(%r12)
	je	.LBB27_10
# BB#9:                                 # %cond.false.i
	movq	32(%r12), %rax
	movq	1872(%rax), %rax
	movzwl	108(%rax), %ecx
.LBB27_10:                              # %cond.end.i
	cmpl	$0, 96(%r12)
	movl	228(%r12), %eax
	je	.LBB27_13
# BB#11:                                # %if.then.i.90
	shrl	$3, %ecx
	orl	$1, %r15d
	addl	%ecx, %r15d
	imull	%eax, %r15d
	movslq	232(%r12), %rcx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	idivl	%ecx
	movl	$2147418112, %edx       # imm = 0x7FFF0000
	cmpl	%eax, %r15d
	jg	.LBB27_14
# BB#12:                                # %cond.false.12.i
	movslq	%r15d, %rax
	imulq	%rax, %rcx
	movq	%rcx, %rdx
	jmp	.LBB27_14
.LBB27_3:                               # %gx_pattern_alloc_cache.exit.thread
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	*24(%r13)
	movl	$.L.str.2, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
	movl	$-25, %r14d
	jmp	.LBB27_42
.LBB27_13:                              # %if.else.i
	imull	%ecx, %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	cltq
	movslq	232(%r12), %rdx
	imulq	%rax, %rdx
.LBB27_14:                              # %gx_pattern_size_estimate.exit
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmovlel	%edx, %esi
	movq	%rbp, %rdi
	callq	gx_pattern_cache_ensure_space
	movq	1304(%rbp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.5, %ecx
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	gx_pattern_accum_alloc
	movq	%rax, %r15
	movl	$-25, %r14d
	testq	%r15, %r15
	je	.LBB27_42
# BB#15:                                # %if.end.13
	movq	%r15, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gx_device_set_target
	movq	%r15, %rdi
	callq	*1144(%r15)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_39
# BB#16:                                # %if.end.18
	movq	32(%r12), %rdi
	callq	gs_gstate
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB27_39
# BB#17:                                # %if.end.23
	cmpq	$0, 1304(%rax)
	jne	.LBB27_19
# BB#18:                                # %if.then.26
	movq	1304(%rbp), %rcx
	movq	%rcx, 1304(%rax)
.LBB27_19:                              # %if.end.29
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rax, %r14
	callq	gs_setdevice_no_init
	cmpl	$0, 96(%r12)
	je	.LBB27_22
# BB#20:                                # %do.end
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r14, 8(%rsp)           # 8-byte Spill
	callq	gs_push_pdf14trans_device
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_42
# BB#21:                                # %if.end.36
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	1872(%rax), %rax
	movl	$1, 84(%rax)
	jmp	.LBB27_25
.LBB27_39:                              # %fail
	movl	$pattern_clist_open_device, %eax
	cmpq	%rax, 1144(%r15)
	jne	.LBB27_41
# BB#40:                                # %if.then.121
	movq	1768(%r15), %rdi
	movq	1776(%r15), %rsi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
	movq	$0, 1776(%r15)
.LBB27_41:                              # %if.end.128
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*24(%r13)
	jmp	.LBB27_42
.LBB27_22:                              # %if.else
	movq	%r14, 8(%rsp)           # 8-byte Spill
	cmpl	$1, 88(%r12)
	jne	.LBB27_25
# BB#23:                                # %land.lhs.true
	cmpl	$0, 224(%r12)
	jne	.LBB27_25
# BB#24:                                # %if.then.40
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	gx_erase_colored_pattern
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_42
.LBB27_25:                              # %if.end.46
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	368(%rax), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*144(%r12)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_26
# BB#31:                                # %if.end.74
	cmpl	$0, 96(%r12)
	je	.LBB27_35
# BB#32:                                # %if.then.78
	cmpl	$0, 224(%r12)
	je	.LBB27_34
# BB#33:                                # %if.then.81
	movl	$1, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	gs_pop_pdf14trans_device
	jmp	.LBB27_35
.LBB27_26:                              # %if.then.51
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	1872(%rax), %rdi
	movq	%rax, %rbx
	xorl	%esi, %esi
	callq	gx_device_retain
	cmpl	$0, 96(%r12)
	je	.LBB27_30
# BB#27:                                # %if.then.56
	cmpl	$0, 224(%r12)
	jne	.LBB27_29
# BB#28:                                # %if.then.59
	movq	1736(%r15), %rdi
	movq	1768(%r15), %rsi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
.LBB27_29:                              # %if.end.62
	movq	%r15, %rdi
	callq	*1176(%r15)
.LBB27_30:                              # %if.end.66
	movq	1872(%rbx), %rdi
	callq	*1176(%rdi)
	movq	%rbx, %rdi
	callq	gs_state_free
	jmp	.LBB27_42
.LBB27_34:                              # %if.else.88
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	1872(%rax), %rdi
	movq	1768(%r15), %rsi
	movq	8(%rax), %rdx
	movl	$1, %ecx
	callq	pdf14_get_buffer_information
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_42
.LBB27_35:                              # %if.end.98
	leaq	32(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gx_pattern_cache_add_entry
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB27_38
# BB#36:                                # %if.then.102
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%ebx, %ecx
	callq	gx_pattern_cache_lookup
	testl	%eax, %eax
	jne	.LBB27_38
# BB#37:                                # %if.then.105
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.6, %esi
	movl	$1337, %edx             # imm = 0x539
	movq	%r13, %rdi
	callq	mlprintf_file_and_line
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	errprintf
	movl	$-100, %r14d
.LBB27_38:                              # %if.end.110
	movq	%r15, %rdi
	callq	*1176(%r15)
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	gs_state_free_chain
.LBB27_42:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gx_pattern_load, .Lfunc_end27-gx_pattern_load
	.cfi_endproc

	.globl	gs_pattern1_remap_color
	.align	16, 0x90
	.type	gs_pattern1_remap_color,@function
gs_pattern1_remap_color:                # @gs_pattern1_remap_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp143:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp145:
	.cfi_def_cfa_offset 64
.Ltmp146:
	.cfi_offset %rbx, -56
.Ltmp147:
	.cfi_offset %r12, -48
.Ltmp148:
	.cfi_offset %r13, -40
.Ltmp149:
	.cfi_offset %r14, -32
.Ltmp150:
	.cfi_offset %r15, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	(%rbp), %r14
	leaq	368(%rbx), %rdi
	movl	$264, %edx              # imm = 0x108
	movq	%rbp, %rsi
	callq	memcpy
	movl	$1, 360(%rbx)
	testq	%r14, %r14
	je	.LBB28_1
# BB#3:                                 # %if.end
	cmpl	$2, 88(%r14)
	jne	.LBB28_13
# BB#4:                                 # %if.then.4
	movq	40(%r13), %rsi
	movq	(%rsi), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movl	4(%rsp), %r13d          # 4-byte Reload
	movl	%r13d, %r9d
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB28_2
# BB#5:                                 # %if.end.9
	movq	(%rbx), %rcx
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rcx
	je	.LBB28_6
# BB#7:                                 # %if.else
	movl	$gx_dc_type_data_ht_binary, %eax
	cmpq	%rax, %rcx
	je	.LBB28_8
# BB#9:                                 # %if.else.18
	movl	$gx_dc_type_data_ht_colored, %eax
	cmpq	%rax, %rcx
	je	.LBB28_10
# BB#11:                                # %if.else.23
	movl	$gx_dc_type_data_devn, %edx
	movl	$-28, %eax
	cmpq	%rdx, %rcx
	jne	.LBB28_2
# BB#12:                                # %if.then.26
	movq	$gx_dc_devn_masked, (%rbx)
	jmp	.LBB28_14
.LBB28_1:                               # %if.then
	movq	$0, 640(%rbx)
	movq	$0, 648(%rbx)
	movq	$0, 8(%rbx)
	movq	$gx_dc_pattern, (%rbx)
	xorl	%eax, %eax
.LBB28_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_13:                              # %if.else.33
	movq	$0, 640(%rbx)
	movq	$0, 648(%rbx)
	movq	$0, 8(%rbx)
	movq	$gx_dc_pattern, (%rbx)
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB28_14
.LBB28_6:                               # %if.then.12
	movq	$gx_dc_pure_masked, (%rbx)
	jmp	.LBB28_14
.LBB28_8:                               # %if.then.16
	movq	$gx_dc_binary_masked, (%rbx)
	jmp	.LBB28_14
.LBB28_10:                              # %if.then.21
	movq	$gx_dc_colored_masked, (%rbx)
.LBB28_14:                              # %if.end.42
	movq	240(%r14), %rax
	movq	%rax, 640(%rbx)
	movq	$0, 648(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%r13d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_pattern_load         # TAILCALL
.Lfunc_end28:
	.size	gs_pattern1_remap_color, .Lfunc_end28-gs_pattern1_remap_color
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_close,@function
pattern_accum_close:                    # @pattern_accum_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 32
.Ltmp155:
	.cfi_offset %rbx, -24
.Ltmp156:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	1736(%rbx), %r14
	xorl	%esi, %esi
	callq	gx_device_set_target
	movq	$0, 1752(%rbx)
	movq	1760(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB29_2
# BB#1:                                 # %if.then
	callq	*1176(%rdi)
	movq	1760(%rbx), %rsi
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 1760(%rbx)
.LBB29_2:                               # %if.end
	cmpq	$0, 1768(%rbx)
	je	.LBB29_4
# BB#3:                                 # %if.then.8
	movq	1728(%rbx), %rsi
	movl	$.L.str.11, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 1768(%rbx)
.LBB29_4:                               # %if.end.12
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_retain
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end29:
	.size	pattern_accum_close, .Lfunc_end29-pattern_accum_close
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_fill_rectangle,@function
pattern_accum_fill_rectangle:           # @pattern_accum_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp161:
	.cfi_def_cfa_offset 48
.Ltmp162:
	.cfi_offset %rbx, -48
.Ltmp163:
	.cfi_offset %r12, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpq	$0, 1752(%rbx)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	1728(%rbx), %rdi
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	callq	*1200(%rdi)
.LBB30_2:                               # %if.end
	movq	1760(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB30_3
# BB#4:                                 # %if.then.3
	movq	1200(%rdi), %rax
	movl	$1, %r9d
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB30_3:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	pattern_accum_fill_rectangle, .Lfunc_end30-pattern_accum_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_copy_mono,@function
pattern_accum_copy_mono:                # @pattern_accum_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 128
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movq	%rdi, %r13
	movq	160(%rsp), %r14
	movq	152(%rsp), %r15
	movq	%r14, %rax
	andq	%r15, %rax
	cmpq	$-1, %rax
	je	.LBB31_7
# BB#1:                                 # %if.end
	movl	144(%rsp), %r11d
	movl	136(%rsp), %ebx
	movl	128(%rsp), %eax
	cmpq	$0, 1752(%r13)
	je	.LBB31_3
# BB#2:                                 # %if.then.2
	movq	1728(%r13), %rdi
	movq	%r14, 32(%rsp)
	movq	%r15, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %ebp
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%r8, %r12
	movl	%r10d, %r9d
	movl	%r10d, 60(%rsp)         # 4-byte Spill
	movl	%r11d, 56(%rsp)         # 4-byte Spill
	callq	*1216(%rdi)
	movl	56(%rsp), %r11d         # 4-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%ebx, %edx
	movl	52(%rsp), %ebx          # 4-byte Reload
	movl	%ebp, %ecx
	movq	%r12, %r8
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	60(%rsp), %r10d         # 4-byte Reload
.LBB31_3:                               # %if.end.4
	movq	1760(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB31_7
# BB#4:                                 # %if.then.6
	cmpq	$-1, %r15
	je	.LBB31_6
# BB#5:                                 # %if.then.6
	cmpq	$-1, %r14
	je	.LBB31_6
# BB#9:                                 # %if.then.16
	movq	1200(%rdi), %rbp
	movl	$1, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%r11d, %r8d
	movq	%rbp, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB31_7:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB31_8
.LBB31_6:                               # %if.else
	cmpq	$-1, %r14
	movl	$1, %ebp
	cmovneq	%rbp, %r14
	cmpq	$-1, %r15
	cmoveq	%r15, %rbp
	movl	%r11d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, 32(%rsp)
	movq	%rbp, 24(%rsp)
	movl	%r10d, %r9d
	callq	*1216(%rdi)
.LBB31_8:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pattern_accum_copy_mono, .Lfunc_end31-pattern_accum_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_copy_color,@function
pattern_accum_copy_color:               # @pattern_accum_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp184:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp185:
	.cfi_def_cfa_offset 80
.Ltmp186:
	.cfi_offset %rbx, -48
.Ltmp187:
	.cfi_offset %r12, -40
.Ltmp188:
	.cfi_offset %r14, -32
.Ltmp189:
	.cfi_offset %r15, -24
.Ltmp190:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rdi, %rbx
	movl	96(%rsp), %r15d
	movl	88(%rsp), %r12d
	movl	80(%rsp), %ebp
	cmpq	$0, 1752(%rbx)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	1728(%rbx), %rdi
	movl	%r15d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	%r14d, %r9d
	callq	*1224(%rdi)
.LBB32_2:                               # %if.end
	movq	1760(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB32_3
# BB#4:                                 # %if.then.3
	movq	1200(%rdi), %rax
	movl	$1, %r9d
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB32_3:                               # %cleanup
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	pattern_accum_copy_color, .Lfunc_end32-pattern_accum_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_get_bits_rectangle,@function
pattern_accum_get_bits_rectangle:       # @pattern_accum_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$0, 1752(%rdi)
	je	.LBB33_1
# BB#4:                                 # %if.then
	movq	1728(%rdi), %rdi
	movq	1448(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB33_1:                               # %if.end
	movq	1744(%rdi), %rcx
	xorl	%eax, %eax
	cmpl	$2, 88(%rcx)
	je	.LBB33_3
# BB#2:                                 # %select.mid
	movl	$-100, %eax
.LBB33_3:                               # %cleanup
	retq
.Lfunc_end33:
	.size	pattern_accum_get_bits_rectangle, .Lfunc_end33-pattern_accum_get_bits_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_fill_rectangle_hl_color,@function
pattern_accum_fill_rectangle_hl_color:  # @pattern_accum_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp193:
	.cfi_def_cfa_offset 32
.Ltmp194:
	.cfi_offset %rbx, -24
.Ltmp195:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 1752(%rbx)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	1728(%rbx), %rdi
	movq	%r14, %rsi
	callq	*1576(%rdi)
.LBB34_2:                               # %if.end
	movq	1760(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB34_3
# BB#4:                                 # %if.then.3
	movl	(%r14), %esi
	movl	4(%r14), %edx
	sarl	$8, %esi
	sarl	$8, %edx
	movl	8(%r14), %ecx
	sarl	$8, %ecx
	subl	%esi, %ecx
	movl	12(%r14), %r8d
	sarl	$8, %r8d
	subl	%edx, %r8d
	movq	1200(%rdi), %rax
	movl	$1, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB34_3:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end34:
	.size	pattern_accum_fill_rectangle_hl_color, .Lfunc_end34-pattern_accum_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_accum_copy_planes,@function
pattern_accum_copy_planes:              # @pattern_accum_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp199:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp201:
	.cfi_def_cfa_offset 80
.Ltmp202:
	.cfi_offset %rbx, -48
.Ltmp203:
	.cfi_offset %r12, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rdi, %rbx
	movl	96(%rsp), %r15d
	movl	88(%rsp), %r12d
	movl	80(%rsp), %ebp
	cmpq	$0, 1752(%rbx)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movl	104(%rsp), %eax
	movq	1728(%rbx), %rdi
	movl	%eax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	%r14d, %r9d
	callq	*1672(%rdi)
.LBB35_2:                               # %if.end
	movq	1760(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB35_3
# BB#4:                                 # %if.then.3
	movq	1200(%rdi), %rax
	movl	$1, %r9d
	movl	%r14d, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB35_3:                               # %cleanup
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	pattern_accum_copy_planes, .Lfunc_end35-pattern_accum_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	color_tile_elt_enum_ptrs,@function
color_tile_elt_enum_ptrs:               # @color_tile_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	movl	$2369637129, %eax       # imm = 0x8D3DCB09
	cmpl	$232, %edx
	jae	.LBB36_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB36_2:                               # %if.end
	imulq	%rax, %r9
	shrq	$39, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imulq	$232, %rdx, %rcx
	addq	%rcx, %rsi
	movl	$232, %edx
	movl	$st_color_tile, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end36:
	.size	color_tile_elt_enum_ptrs, .Lfunc_end36-color_tile_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	color_tile_elt_reloc_ptrs,@function
color_tile_elt_reloc_ptrs:              # @color_tile_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 32
.Ltmp210:
	.cfi_offset %rbx, -32
.Ltmp211:
	.cfi_offset %r14, -24
.Ltmp212:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$232, %esi
	jb	.LBB37_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$2369637129, %r15d      # imm = 0x8D3DCB09
	imulq	%rax, %r15
	shrq	$39, %r15
	negl	%r15d
	.align	16, 0x90
.LBB37_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$232, %esi
	movl	$st_color_tile, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$232, %rbx
	incl	%r15d
	jne	.LBB37_2
.LBB37_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end37:
	.size	color_tile_elt_reloc_ptrs, .Lfunc_end37-color_tile_elt_reloc_ptrs
	.cfi_endproc

	.type	st_device_pattern_accum,@object # @st_device_pattern_accum
	.section	.rodata,"a",@progbits
	.align	8
st_device_pattern_accum:
	.long	1776                    # 0x6f0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	pattern_accum_reloc
	.size	st_device_pattern_accum, 64

	.type	.Lgx_pattern_accum_alloc.buf_procs,@object # @gx_pattern_accum_alloc.buf_procs
	.align	8
.Lgx_pattern_accum_alloc.buf_procs:
	.quad	dummy_create_buf_device
	.quad	dummy_size_buf_device
	.quad	dummy_setup_buf_device
	.quad	dummy_destroy_buf_device
	.size	.Lgx_pattern_accum_alloc.buf_procs, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern-clist"
	.size	.L.str, 14

	.type	st_pattern_trans,@object # @st_pattern_trans
	.section	.rodata,"a",@progbits
	.align	8
st_pattern_trans:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern_trans_reloc_ptrs
	.size	st_pattern_trans, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"new_pattern_trans_buff"
	.size	.L.str.1, 23

	.type	st_pattern_cache,@object # @st_pattern_cache
	.section	.rodata,"a",@progbits
	.align	8
st_pattern_cache:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern_cache_reloc
	.size	st_pattern_cache, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gx_pattern_alloc_cache(struct)"
	.size	.L.str.2, 31

	.type	st_color_tile_element,@object # @st_color_tile_element
	.section	.rodata,"a",@progbits
	.align	8
st_color_tile_element:
	.long	232                     # 0xe8
	.zero	4
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	color_tile_elt_enum_ptrs
	.quad	color_tile_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_color_tile_element, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_pattern_alloc_cache(tiles)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gx_pattern_cache_free"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_pattern_load"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/gxpcmap.c"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Pattern cache lookup failed after insertion!\n"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pattern accumulator"
	.size	.L.str.8, 20

	.type	pattern_accum_reloc,@object # @pattern_accum_reloc
	.section	.rodata,"a",@progbits
	.align	8
pattern_accum_reloc:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_forward
	.quad	pattern_accum_enum
	.size	pattern_accum_reloc, 24

	.type	pattern_accum_enum,@object # @pattern_accum_enum
	.align	16
pattern_accum_enum:
	.short	0                       # 0x0
	.short	1744                    # 0x6d0
	.short	0                       # 0x0
	.short	1752                    # 0x6d8
	.short	0                       # 0x0
	.short	1760                    # 0x6e0
	.short	0                       # 0x0
	.short	1768                    # 0x6e8
	.size	pattern_accum_enum, 16

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"DeviceGray"
	.size	.L.str.9, 11

	.type	gs_pattern_accum_device,@object # @gs_pattern_accum_device
	.section	.rodata,"a",@progbits
	.align	8
gs_pattern_accum_device:
	.long	1776                    # 0x6f0
	.zero	4
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.9
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	pattern_accum_open
	.quad	0
	.quad	0
	.quad	0
	.quad	pattern_accum_close
	.quad	0
	.quad	0
	.quad	pattern_accum_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	pattern_accum_copy_mono
	.quad	pattern_accum_copy_color
	.quad	0
	.quad	gx_default_get_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_copy_alpha
	.quad	0
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_default_strip_copy_rop
	.quad	gx_get_largest_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	pattern_accum_get_bits_rectangle
	.quad	0
	.quad	gx_default_create_compositor
	.quad	0
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pattern_accum_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pattern_accum_copy_planes
	.quad	0
	.quad	0
	.quad	gx_default_strip_copy_rop2
	.quad	gx_default_strip_tile_rect_devn
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pattern_accum_device, 1776

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"pattern_accum_close(mask)"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"pattern_accum_close(transbuff)"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gx_pattern_accum_finalize_cw"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pattern_accum_open(trans)"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pattern_accum_open(mask)"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pattern_accum_open(bits)"
	.size	.L.str.15, 25

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gx_pattern_trans"
	.size	.L.str.16, 17

	.type	pattern_trans_reloc_ptrs,@object # @pattern_trans_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pattern_trans_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pattern_trans_enum_ptrs
	.size	pattern_trans_reloc_ptrs, 24

	.type	pattern_trans_enum_ptrs,@object # @pattern_trans_enum_ptrs
	.align	2
pattern_trans_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	pattern_trans_enum_ptrs, 12

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"gx_pattern_cache"
	.size	.L.str.17, 17

	.type	pattern_cache_reloc,@object # @pattern_cache_reloc
	.section	.rodata,"a",@progbits
	.align	8
pattern_cache_reloc:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pattern_cache_enum
	.size	pattern_cache_reloc, 24

	.type	pattern_cache_enum,@object # @pattern_cache_enum
	.align	2
pattern_cache_enum:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	pattern_cache_enum, 4

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"gx_color_tile[]"
	.size	.L.str.18, 16

	.type	st_color_tile,@object   # @st_color_tile
	.section	.rodata,"a",@progbits
	.align	8
st_color_tile:
	.long	232                     # 0xe8
	.zero	4
	.quad	.L.str.19
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	color_tile_reloc_ptrs
	.size	st_color_tile, 64

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"gx_color_tile"
	.size	.L.str.19, 14

	.type	color_tile_reloc_ptrs,@object # @color_tile_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
color_tile_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	color_tile_enum_ptrs
	.size	color_tile_reloc_ptrs, 24

	.type	color_tile_enum_ptrs,@object # @color_tile_enum_ptrs
	.align	16
color_tile_enum_ptrs:
	.short	0                       # 0x0
	.short	96                      # 0x60
	.short	0                       # 0x0
	.short	144                     # 0x90
	.short	0                       # 0x0
	.short	200                     # 0xc8
	.short	0                       # 0x0
	.short	192                     # 0xc0
	.size	color_tile_enum_ptrs, 16

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"free_pattern_cache_entry(mask data)"
	.size	.L.str.20, 36

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"free_pattern_cache_entry(bits data)"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gx_pattern_cache_free_entry"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"free_pattern_cache_entry(transbytes)"
	.size	.L.str.23, 37

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"free_pattern_cache_entry(fill_trans_buffer)"
	.size	.L.str.24, 44

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"free_pattern_cache_entry(ttrans)"
	.size	.L.str.25, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
