	.text
	.file	"gdevplnx.bc"
	.align	16, 0x90
	.type	device_plane_extract_enum_ptrs,@function
device_plane_extract_enum_ptrs:         # @device_plane_extract_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	testl	%ecx, %ecx
	je	.LBB0_1
# BB#2:                                 # %sw.default
	decl	%ecx
	movl	$st_device_forward, %r9d
	movq	%rbx, %r8
	popq	%rbx
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.LBB0_1:                                # %cleanup
	movq	1728(%rsi), %rdi
	callq	gx_device_enum_ptr
	movq	%rax, (%rbx)
	movl	$ptr_struct_procs, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	device_plane_extract_enum_ptrs, .Lfunc_end0-device_plane_extract_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_plane_extract_reloc_ptrs,@function
device_plane_extract_reloc_ptrs:        # @device_plane_extract_reloc_ptrs
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
	movl	$st_device_forward, %edx
	callq	*st_device_forward+40(%rip)
	movq	1736(%rbx), %rdi
	movq	%r14, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 1736(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	device_plane_extract_reloc_ptrs, .Lfunc_end1-device_plane_extract_reloc_ptrs
	.cfi_endproc

	.globl	plane_device_init
	.align	16, 0x90
	.type	plane_device_init,@function
plane_device_init:                      # @plane_device_init
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
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movzwl	108(%r14), %eax
	movl	$-15, %ebp
	cmpl	%eax, (%r12)
	jg	.LBB2_5
# BB#1:                                 # %if.end
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movq	24(%rbx), %rdx
	movl	$1, %r15d
	movl	$gs_plane_extract_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	gx_device_init
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gx_device_set_target
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	gx_device_copy_params
	movq	%r14, 1736(%rbx)
	movl	8(%r12), %eax
	movl	%eax, 1752(%rbx)
	movq	(%r12), %rax
	movq	%rax, 1744(%rbx)
	movzwl	108(%r14), %ebp
	movl	%ebp, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	gx_device_white
	movq	%rax, 1760(%rbx)
	movb	%bpl, %cl
	shll	%cl, %r15d
	decl	%r15d
	movl	%r15d, 1768(%rbx)
	xorl	%ebp, %ebp
	testq	%r12, %r12
	movl	$0, %ecx
	je	.LBB2_3
# BB#2:                                 # %land.rhs.i
	movq	1224(%r14), %rcx
	cmpq	1224(%r12), %rcx
	sete	%cl
.LBB2_3:                                # %plane_open_device.exit
	movzbl	%cl, %ecx
	movl	%ecx, 1772(%rbx)
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB2_5
# BB#4:                                 # %if.then.4
	movl	832(%r14), %ecx
	movl	836(%r14), %r8d
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %r9
	callq	*1200(%r14)
	movl	$0, 1776(%rbx)
.LBB2_5:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plane_device_init, .Lfunc_end2-plane_device_init
	.cfi_endproc

	.align	16, 0x90
	.type	plane_open_device,@function
plane_open_device:                      # @plane_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1736(%rbx), %r14
	movzwl	108(%r14), %ebp
	movl	%ebp, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	gx_device_white
	movq	%rax, 1760(%rbx)
	movl	$1, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	decl	%eax
	movl	%eax, 1768(%rbx)
	testq	%r15, %r15
	je	.LBB3_1
# BB#2:                                 # %land.rhs
	movq	1224(%r14), %rax
	cmpq	1224(%r15), %rax
	sete	%al
	jmp	.LBB3_3
.LBB3_1:
	xorl	%eax, %eax
.LBB3_3:                                # %land.end
	movzbl	%al, %eax
	movl	%eax, 1772(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plane_open_device, .Lfunc_end3-plane_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	plane_fill_rectangle,@function
plane_fill_rectangle:                   # @plane_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%r9, %r11
	movl	%ecx, %r10d
	movq	%rdi, %rax
	movq	1736(%rax), %rdi
	movb	1748(%rax), %cl
	shrq	%cl, %r11
	movl	1768(%rax), %r9d
	andq	%r11, %r9
	cmpq	1760(%rax), %r9
	jne	.LBB4_1
# BB#3:                                 # %if.else
	cmpl	$0, 1776(%rax)
	jne	.LBB4_2
# BB#4:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB4_1:                                # %if.then
	movl	$1, 1776(%rax)
.LBB4_2:                                # %if.end.5
	movq	1200(%rdi), %rax
	movl	%r10d, %ecx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	plane_fill_rectangle, .Lfunc_end4-plane_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	plane_copy_mono,@function
plane_copy_mono:                        # @plane_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 112
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%ecx, %r11d
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	144(%rsp), %rbp
	movq	136(%rsp), %r10
	movl	128(%rsp), %r8d
	movl	120(%rsp), %r15d
	movl	112(%rsp), %edx
	movq	1736(%rbx), %rdi
	movq	$-1, %r13
	cmpq	$-1, %r10
	movq	$-1, %rax
	je	.LBB5_2
# BB#1:                                 # %cond.false
	movb	1748(%rbx), %cl
	movq	%r10, %r12
	shrq	%cl, %r12
	movl	1768(%rbx), %eax
	andq	%r12, %rax
.LBB5_2:                                # %cond.end
	cmpq	$-1, %rbp
	je	.LBB5_4
# BB#3:                                 # %cond.false.5
	movb	1748(%rbx), %cl
	shrq	%cl, %rbp
	movl	1768(%rbx), %r13d
	andq	%rbp, %r13
.LBB5_4:                                # %cond.end.13
	cmpq	%r13, %rax
	jne	.LBB5_9
# BB#5:                                 # %if.then
	movb	1748(%rbx), %cl
	shrq	%cl, %r10
	movl	1768(%rbx), %ebp
	andq	%r10, %rbp
	cmpq	1760(%rbx), %rbp
	jne	.LBB5_6
# BB#7:                                 # %if.else.i
	cmpl	$0, 1776(%rbx)
	jne	.LBB5_8
	jmp	.LBB5_14
.LBB5_9:                                # %if.end
	movq	1760(%rbx), %rcx
	cmpq	$-1, %rax
	je	.LBB5_11
# BB#10:                                # %if.end
	cmpq	%rcx, %rax
	jne	.LBB5_15
.LBB5_11:                               # %land.lhs.true
	cmpq	$-1, %r13
	je	.LBB5_13
# BB#12:                                # %land.lhs.true
	cmpq	%rcx, %r13
	je	.LBB5_13
.LBB5_15:                               # %if.else
	movl	$1, 1776(%rbx)
	jmp	.LBB5_16
.LBB5_6:                                # %if.then.i
	movl	$1, 1776(%rbx)
.LBB5_8:                                # %if.end.5.i
	movq	1200(%rdi), %rax
	movl	%r9d, %esi
	movl	%r15d, %ecx
	movq	%rbp, %r9
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB5_13:                               # %if.then.27
	cmpl	$0, 1776(%rbx)
	je	.LBB5_14
.LBB5_16:                               # %if.end.31
	movq	%r13, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%edx, (%rsp)
	movl	%r14d, %edx
	movl	%r11d, %ecx
	movq	48(%rsp), %r8           # 8-byte Reload
	callq	*1216(%rdi)
	jmp	.LBB5_17
.LBB5_14:                               # %cleanup
	xorl	%eax, %eax
.LBB5_17:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plane_copy_mono, .Lfunc_end5-plane_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	plane_copy_color,@function
plane_copy_color:                       # @plane_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp48:
	.cfi_def_cfa_offset 320
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rsi, %r9
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movl	336(%rsp), %edx
	movl	328(%rsp), %r14d
	movl	320(%rsp), %r8d
	movq	1736(%rdi), %r15
	cmpl	$0, 1772(%rdi)
	je	.LBB6_9
# BB#1:                                 # %if.then
	movl	%r8d, %eax
	orl	%r13d, %eax
	js	.LBB6_3
# BB#2:
	movl	%r13d, %eax
	movl	%r8d, %edi
	jmp	.LBB6_6
.LBB6_9:                                # %if.end.35
	movzwl	108(%r15), %ecx
	movl	%ecx, %ebp
	imull	%r14d, %ebp
	addl	$63, %ebp
	sarl	$6, %ebp
	shll	$3, %ebp
	movl	%ebp, %eax
	imull	%edx, %eax
	cmpl	$97, %eax
	movl	%edx, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%r14d, %edx
	jb	.LBB6_13
# BB#10:                                # %if.else.i
	cmpl	$96, %ebp
	jbe	.LBB6_11
# BB#12:                                # %if.else.32.i
	movl	$8, %eax
	xorl	%edx, %edx
	divl	%ecx
	shll	$5, %eax
	leal	(%rax,%rax,2), %edx
	movl	$1, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB6_13
.LBB6_3:                                # %if.then.3
	movl	%r13d, %ecx
	sarl	$31, %ecx
	xorl	%edi, %edi
	testl	%r13d, %r13d
	movl	%r13d, %eax
	cmovsl	%edi, %eax
	andl	%r13d, %ecx
	leal	(%r14,%rcx), %r14d
	movq	88(%rsp), %rsi          # 8-byte Reload
	subl	%ecx, %esi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	testl	%r8d, %r8d
	js	.LBB6_5
# BB#4:
	movl	%r8d, %edi
	jmp	.LBB6_6
.LBB6_11:                               # %if.then.25.i
	movl	$96, %eax
	xorl	%edx, %edx
	divl	%ebp
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%r14d, %edx
.LBB6_13:                               # %begin_tiling.exit
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%r15, 48(%rsp)          # 8-byte Spill
	xorl	%edi, %edi
	jmp	.LBB6_14
	.align	16, 0x90
.LBB6_18:                               # %if.end.i
                                        #   in Loop: Header=BB6_14 Depth=1
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdi
	leal	(%rdi,%rsi), %eax
	movl	336(%rsp), %ecx
	movl	%ecx, %edx
	subl	%edi, %ecx
	cmpl	%edx, %eax
	cmovll	%esi, %ecx
	movl	%ecx, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r9           # 8-byte Reload
	movl	320(%rsp), %r8d
	movl	28(%rsp), %edx          # 4-byte Reload
.LBB6_14:                               # %do.body.40.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%edi, %eax
	imull	%ebp, %eax
	leaq	112(%rsp,%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%edi, %eax
	imull	108(%rsp), %eax         # 4-byte Folded Reload
	leaq	(%rax,%r9), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%rdi,%r8), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB6_15
	.align	16, 0x90
.LBB6_19:                               # %if.else.i.98
                                        #   in Loop: Header=BB6_15 Depth=2
	leal	(%r15,%r12), %eax
	movl	%r14d, %ecx
	subl	%r15d, %ecx
	cmpl	%r14d, %eax
	cmovll	%r12d, %ecx
	movl	%ecx, %r12d
.LBB6_15:                               # %do.body.40
                                        #   Parent Loop BB6_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 240(%rsp)
	movl	%ebp, 248(%rsp)
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	1744(%rcx), %eax
	movl	%eax, 252(%rsp)
	movl	$0, 256(%rsp)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 216(%rsp)
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 224(%rsp)
	movzwl	108(%rcx), %eax
	movl	%eax, 228(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %eax
	movl	%eax, 232(%rsp)
	movl	1748(%rcx), %edx
	leaq	240(%rsp), %rdi
	leaq	216(%rsp), %rsi
	movl	%r12d, %ecx
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %r8d
	callq	bits_extract_plane
	leal	(%r15,%r13), %r9d
	movl	%ebx, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	112(%rsp), %rsi
	movl	%ebp, %ecx
	callq	*1224(%rdi)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB6_20
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB6_15 Depth=2
	addl	%r12d, %r15d
	cmpl	%r14d, %r15d
	jl	.LBB6_19
# BB#17:                                # %if.then.i.96
                                        #   in Loop: Header=BB6_14 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	addl	%eax, %ecx
	cmpl	336(%rsp), %ecx
	movq	%rcx, %rax
	jl	.LBB6_18
.LBB6_20:                               # %end_tiling.exit
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	$1, 1776(%rax)
	jmp	.LBB6_21
.LBB6_5:                                # %if.then.7
	addl	%r8d, %edx
	imull	108(%rsp), %r8d         # 4-byte Folded Reload
	movslq	%r8d, %rcx
	subq	%rcx, %r9
.LBB6_6:                                # %if.end.10
	movq	96(%rsp), %rbp          # 8-byte Reload
	movl	832(%rbp), %ecx
	movl	836(%rbp), %r8d
	movq	%rbp, %r11
	subl	%eax, %ecx
	cmpl	%ecx, %r14d
	cmovlel	%r14d, %ecx
	subl	%edi, %r8d
	cmpl	%r8d, %edx
	cmovlel	%edx, %r8d
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	jle	.LBB6_21
# BB#7:                                 # %if.end.10
	testl	%r8d, %r8d
	jle	.LBB6_21
# BB#8:                                 # %end_tiling.exit66
	movslq	%edi, %rdx
	movq	2576(%r15), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	1736(%r15), %esi
	movq	%rdx, 240(%rsp)
	movl	%esi, 248(%rsp)
	movq	%r11, %rbp
	movl	1744(%rbp), %edx
	movl	%edx, 252(%rsp)
	movl	%eax, 256(%rsp)
	movq	%r9, 216(%rsp)
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 224(%rsp)
	movzwl	108(%rbp), %eax
	movl	%eax, 228(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, 232(%rsp)
	movl	1748(%rbp), %edx
	leaq	240(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	bits_extract_plane
	movl	$1, 1776(%rbp)
.LBB6_21:                               # %cleanup.61
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plane_copy_color, .Lfunc_end6-plane_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	plane_copy_alpha,@function
plane_copy_alpha:                       # @plane_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 64
.Ltmp58:
	.cfi_offset %rbx, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movl	%ecx, %r10d
	movq	%rdi, %rax
	movq	88(%rsp), %r11
	movq	1736(%rax), %rdi
	movb	1748(%rax), %cl
	shrq	%cl, %r11
	movl	1768(%rax), %ecx
	andq	%r11, %rcx
	cmpq	1760(%rax), %rcx
	jne	.LBB7_1
# BB#2:                                 # %if.else
	cmpl	$0, 1776(%rax)
	jne	.LBB7_3
# BB#4:                                 # %cleanup
	xorl	%eax, %eax
	jmp	.LBB7_5
.LBB7_1:                                # %if.then
	movl	$1, 1776(%rax)
.LBB7_3:                                # %if.end.5
	movl	96(%rsp), %eax
	movl	80(%rsp), %r11d
	movl	72(%rsp), %ebx
	movl	64(%rsp), %ebp
	movl	%eax, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%ebp, (%rsp)
	movl	%r10d, %ecx
	callq	*1312(%rdi)
.LBB7_5:                                # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plane_copy_alpha, .Lfunc_end7-plane_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	plane_fill_path,@function
plane_fill_path:                        # @plane_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp63:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp64:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 56
	subq	$2312, %rsp             # imm = 0x908
.Ltmp66:
	.cfi_def_cfa_offset 2368
.Ltmp67:
	.cfi_offset %rbx, -56
.Ltmp68:
	.cfi_offset %r12, -48
.Ltmp69:
	.cfi_offset %r13, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1736(%r14), %r13
	movq	%rbx, %rdi
	callq	gs_current_logical_op
	movl	%eax, %r15d
	movl	%r15d, 2308(%rsp)
	leaq	1648(%rsp), %rdi
	leaq	2308(%rsp), %rcx
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	reduce_drawing_color
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB8_6
# BB#1:                                 # %entry
	movq	%r13, %rax
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %r12          # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB8_5
# BB#2:                                 # %sw.bb.3
	movl	2308(%rsp), %ebp
	cmpl	%r15d, %ebp
	movq	%rax, %r15
	je	.LBB8_4
# BB#3:                                 # %if.then
	leaq	32(%rsp), %r14
	movl	$1616, %edx             # imm = 0x650
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gs_set_logical_op
	movq	%r14, %rbx
.LBB8_4:                                # %if.end
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	1648(%rsp), %r8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movq	%r12, %r9
	callq	*1336(%r15)
	jmp	.LBB8_6
.LBB8_5:                                # %sw.default
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	gx_default_fill_path
.LBB8_6:                                # %cleanup
	addq	$2312, %rsp             # imm = 0x908
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plane_fill_path, .Lfunc_end8-plane_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	plane_stroke_path,@function
plane_stroke_path:                      # @plane_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 56
	subq	$2312, %rsp             # imm = 0x908
.Ltmp79:
	.cfi_def_cfa_offset 2368
.Ltmp80:
	.cfi_offset %rbx, -56
.Ltmp81:
	.cfi_offset %r12, -48
.Ltmp82:
	.cfi_offset %r13, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1736(%r14), %r13
	movq	%rbx, %rdi
	callq	gs_current_logical_op
	movl	%eax, %r15d
	movl	%r15d, 2308(%rsp)
	leaq	1648(%rsp), %rdi
	leaq	2308(%rsp), %rcx
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	reduce_drawing_color
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_6
# BB#1:                                 # %entry
	movq	%r13, %rax
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %r12          # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB9_5
# BB#2:                                 # %sw.bb.3
	movl	2308(%rsp), %ebp
	cmpl	%r15d, %ebp
	movq	%rax, %r15
	je	.LBB9_4
# BB#3:                                 # %if.then
	leaq	32(%rsp), %r14
	movl	$1616, %edx             # imm = 0x650
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	gs_set_logical_op
	movq	%r14, %rbx
.LBB9_4:                                # %if.end
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	1648(%rsp), %r8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rcx
	movq	%r12, %r9
	callq	*1344(%r15)
	jmp	.LBB9_6
.LBB9_5:                                # %sw.default
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	gx_default_stroke_path
.LBB9_6:                                # %cleanup
	addq	$2312, %rsp             # imm = 0x908
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	plane_stroke_path, .Lfunc_end9-plane_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	plane_fill_mask,@function
plane_fill_mask:                        # @plane_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 56
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp92:
	.cfi_def_cfa_offset 784
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movl	%r9d, 60(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	808(%rsp), %rdx
	movl	824(%rsp), %eax
	movl	%eax, 724(%rsp)
	movq	1736(%rbx), %rbp
	leaq	64(%rsp), %r14
	leaq	724(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	reduce_drawing_color
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB10_4
# BB#1:                                 # %entry
	movq	832(%rsp), %rax
	movl	816(%rsp), %edi
	movl	800(%rsp), %esi
	movl	792(%rsp), %edx
	movl	784(%rsp), %r8d
	cmpl	$1, %ecx
	jne	.LBB10_3
# BB#2:                                 # %sw.bb.2
	movl	724(%rsp), %ecx
	movq	%rax, 48(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%edi, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%r8d, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	*1352(%rbp)
	jmp	.LBB10_4
.LBB10_3:                               # %sw.default
	movl	724(%rsp), %ecx
	movq	%rax, 48(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%edi, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%r8d, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_mask
.LBB10_4:                               # %cleanup
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	plane_fill_mask, .Lfunc_end10-plane_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	plane_fill_parallelogram,@function
plane_fill_parallelogram:               # @plane_fill_parallelogram
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
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp105:
	.cfi_def_cfa_offset 768
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
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	776(%rsp), %r15
	movl	784(%rsp), %eax
	movl	%eax, 708(%rsp)
	movq	1736(%r14), %rbp
	leaq	48(%rsp), %r12
	leaq	708(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB11_4
# BB#1:                                 # %entry
	movl	768(%rsp), %eax
	cmpl	$1, %ecx
	jne	.LBB11_3
# BB#2:                                 # %sw.bb.2
	movl	708(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	*1368(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %sw.default
	movl	708(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%r15, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_parallelogram
.LBB11_4:                               # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	plane_fill_parallelogram, .Lfunc_end11-plane_fill_parallelogram
	.cfi_endproc

	.align	16, 0x90
	.type	plane_fill_triangle,@function
plane_fill_triangle:                    # @plane_fill_triangle
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
	pushq	%r13
.Ltmp115:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp118:
	.cfi_def_cfa_offset 768
.Ltmp119:
	.cfi_offset %rbx, -56
.Ltmp120:
	.cfi_offset %r12, -48
.Ltmp121:
	.cfi_offset %r13, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	776(%rsp), %r15
	movl	784(%rsp), %eax
	movl	%eax, 708(%rsp)
	movq	1736(%r14), %rbp
	leaq	48(%rsp), %r12
	leaq	708(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB12_4
# BB#1:                                 # %entry
	movl	768(%rsp), %eax
	cmpl	$1, %ecx
	jne	.LBB12_3
# BB#2:                                 # %sw.bb.2
	movl	708(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	*1376(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %sw.default
	movl	708(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%r15, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	movl	44(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_fill_triangle
.LBB12_4:                               # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	plane_fill_triangle, .Lfunc_end12-plane_fill_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	plane_strip_tile_rectangle,@function
plane_strip_tile_rectangle:             # @plane_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp131:
	.cfi_def_cfa_offset 352
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	%ecx, %r11d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	376(%rsp), %r13d
	movl	368(%rsp), %r9d
	movq	360(%rsp), %r15
	movq	352(%rsp), %rbp
	movq	1736(%rbx), %r12
	movq	$-1, %rdi
	cmpq	$-1, %rbp
	movq	$-1, %rax
	je	.LBB13_2
# BB#1:                                 # %cond.false
	movb	1748(%rbx), %cl
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	movl	1768(%rbx), %eax
	andq	%rsi, %rax
.LBB13_2:                               # %cond.end
	cmpq	$-1, %r15
	je	.LBB13_4
# BB#3:                                 # %cond.false.5
	movb	1748(%rbx), %cl
	movq	%r15, %rsi
	shrq	%cl, %rsi
	movl	1768(%rbx), %edi
	andq	%rsi, %rdi
.LBB13_4:                               # %cond.end.13
	cmpq	%rdi, %rax
	jne	.LBB13_17
# BB#5:                                 # %if.then
	cmpq	$-1, %rax
	je	.LBB13_10
# BB#6:                                 # %if.then.19
	movb	1748(%rbx), %cl
	shrq	%cl, %rbp
	movl	1768(%rbx), %r9d
	andq	%rbp, %r9
	cmpq	1760(%rbx), %r9
	jne	.LBB13_7
# BB#8:                                 # %if.else.i
	xorl	%r15d, %r15d
	cmpl	$0, 1776(%rbx)
	jne	.LBB13_9
	jmp	.LBB13_22
.LBB13_17:                              # %if.end.39
	movq	1760(%rbx), %rcx
	cmpq	$-1, %rax
	je	.LBB13_19
# BB#18:                                # %if.end.39
	cmpq	%rcx, %rax
	jne	.LBB13_23
.LBB13_19:                              # %land.lhs.true
	cmpq	$-1, %rdi
	je	.LBB13_21
# BB#20:                                # %land.lhs.true
	cmpq	%rcx, %rdi
	je	.LBB13_21
.LBB13_23:                              # %if.else
	movl	$1, 1776(%rbx)
	jmp	.LBB13_24
.LBB13_10:                              # %if.end
	movl	%r13d, 72(%rsp)         # 4-byte Spill
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%r11d, 84(%rsp)         # 4-byte Spill
	movl	%r8d, 88(%rsp)          # 4-byte Spill
	movl	%r10d, 92(%rsp)         # 4-byte Spill
	movq	(%r14), %rdx
	movl	8(%r14), %edi
	movl	12(%r14), %ecx
	movl	16(%r14), %r8d
	movzwl	108(%r12), %r13d
	imull	%ecx, %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	movl	%r13d, %esi
	imull	%r8d, %esi
	cmpl	$96, %esi
	jbe	.LBB13_11
# BB#12:                                # %if.else.i.62
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	movq	24(%rbx), %rdi
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB13_26
# BB#13:
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movl	64(%rsp), %ecx          # 4-byte Reload
	movl	60(%rsp), %r8d          # 4-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	44(%rsp), %edi          # 4-byte Reload
	jmp	.LBB13_14
.LBB13_7:                               # %if.then.i
	movl	$1, 1776(%rbx)
.LBB13_9:                               # %if.end.5.i
	movq	1200(%r12), %rax
	movq	%r12, %rdi
	movl	%edx, %esi
	movl	%r11d, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB13_21:                              # %if.then.50
	xorl	%r15d, %r15d
	cmpl	$0, 1776(%rbx)
	je	.LBB13_22
.LBB13_24:                              # %if.end.55
	movl	%r13d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r11d, %ecx
	movl	%r10d, %r9d
	callq	*1416(%r12)
	jmp	.LBB13_25
.LBB13_22:                              # %cleanup.59
	movl	%r15d, %eax
	jmp	.LBB13_25
.LBB13_11:                              # %if.then.i.61
	movb	$1, %al
	movl	%eax, 68(%rsp)          # 4-byte Spill
	leaq	96(%rsp), %rax
.LBB13_14:                              # %if.end.28
	movq	%rax, 272(%rsp)
	movl	%r13d, 280(%rsp)
	movq	%rax, %rbp
	movl	1744(%rbx), %eax
	movl	%eax, 284(%rsp)
	movl	$0, 288(%rsp)
	movq	%rdx, 248(%rsp)
	movl	%edi, 256(%rsp)
	movzwl	108(%rbx), %eax
	movl	%eax, 260(%rsp)
	movl	$0, 264(%rsp)
	movl	1748(%rbx), %edx
	leaq	272(%rsp), %rdi
	leaq	248(%rsp), %rsi
	callq	bits_extract_plane
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movaps	%xmm2, 224(%rsp)
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	%rbp, 192(%rsp)
	movl	%r13d, 200(%rsp)
	movq	$0, 216(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, (%rsp)
	leaq	192(%rsp), %rsi
	movq	%r12, %rdi
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	*1416(%r12)
	movl	%eax, %r15d
	movl	68(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	jne	.LBB13_16
# BB#15:                                # %if.then.i.78
	movq	24(%rbx), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB13_16:                              # %end_tiling.exit
	movl	$1, 1776(%rbx)
	movl	%r15d, %eax
	jmp	.LBB13_25
.LBB13_26:                              # %if.then.26
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	92(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_strip_tile_rectangle
	movl	%eax, %r15d
.LBB13_25:                              # %cleanup.59
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	plane_strip_tile_rectangle, .Lfunc_end13-plane_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	plane_strip_copy_rop,@function
plane_strip_copy_rop:                   # @plane_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp141:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp142:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp144:
	.cfi_def_cfa_offset 704
.Ltmp145:
	.cfi_offset %rbx, -56
.Ltmp146:
	.cfi_offset %r12, -48
.Ltmp147:
	.cfi_offset %r13, -40
.Ltmp148:
	.cfi_offset %r14, -32
.Ltmp149:
	.cfi_offset %r15, -24
.Ltmp150:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movl	%edx, %r13d
	movl	768(%rsp), %edx
	movl	760(%rsp), %ecx
	movl	752(%rsp), %r12d
	movl	744(%rsp), %r15d
	movl	736(%rsp), %ebp
	movl	728(%rsp), %ebx
	movl	720(%rsp), %r14d
	movq	712(%rsp), %rax
	movq	704(%rsp), %r10
	testb	$3, %dh
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	%edx, 64(%rsp)
	movl	%ecx, 56(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r10, (%rsp)
	movl	%r13d, %edx
	movl	%r11d, %ecx
	callq	gx_default_strip_copy_rop
	movl	%eax, %r13d
	jmp	.LBB14_44
.LBB14_2:                               # %if.end
	movq	%rsi, %r14
	movq	1736(%rdi), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movzbl	%dl, %esi
	leal	(,%rsi,4), %ecx
	xorl	%edx, %ecx
	testb	$-52, %cl
	je	.LBB14_3
# BB#4:                                 # %if.else
	testq	%r9, %r9
	je	.LBB14_6
# BB#5:                                 # %if.then.6
	movq	(%r9), %rdx
	movb	1748(%rdi), %cl
	shrq	%cl, %rdx
	movl	1768(%rdi), %r8d
	andq	%r8, %rdx
	movq	%rdx, 488(%rsp)
	movq	8(%r9), %rax
	shrq	%cl, %rax
	andq	%r8, %rax
	movq	%rax, 496(%rsp)
	xorl	%ecx, %ecx
	cmpq	%rax, %rdx
	movq	%r14, %r9
	cmoveq	%rcx, %r9
	leaq	488(%rsp), %rax
	movq	%rax, 504(%rsp)
	jmp	.LBB14_7
.LBB14_3:                               # %if.then.4
	movq	$0, 504(%rsp)
	xorl	%r9d, %r9d
	jmp	.LBB14_8
.LBB14_6:                               # %if.else.29
	movq	$0, 504(%rsp)
	movq	%r14, %r9
.LBB14_7:                               # %if.end.32
	movl	768(%rsp), %edx
.LBB14_8:                               # %if.end.32
	movq	%r10, %r14
	movq	%r9, 112(%rsp)          # 8-byte Spill
	shll	$4, %esi
	xorl	%edx, %esi
	testb	$-16, %sil
	je	.LBB14_9
# BB#10:                                # %if.else.40
	movq	712(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB14_12
# BB#11:                                # %if.then.42
	movq	(%rsi), %rax
	movb	1748(%rdi), %cl
	shrq	%cl, %rax
	movl	1768(%rdi), %edx
	andq	%rdx, %rax
	movq	%rax, 376(%rsp)
	movq	8(%rsi), %rsi
	shrq	%cl, %rsi
	andq	%rdx, %rsi
	movq	%rsi, 384(%rsp)
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	cmoveq	%rcx, %r14
	leaq	376(%rsp), %rax
	movq	%rax, 392(%rsp)
	jmp	.LBB14_13
.LBB14_9:                               # %if.then.38
	movq	$0, 392(%rsp)
	xorl	%r14d, %r14d
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.74
	movq	$0, 392(%rsp)
.LBB14_13:                              # %if.end.77
	movl	$-1163005939, 100(%rsp) # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFFBAADF00D
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testq	%r9, %r9
	je	.LBB14_20
# BB#14:                                # %if.then.79
	movq	120(%rsp), %rax         # 8-byte Reload
	movzwl	108(%rax), %r8d
	movl	%r8d, %ecx
	imull	%ebp, %ecx
	addl	$63, %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movl	%ecx, %eax
	imull	%ebx, %eax
	movq	%rdi, 512(%rsp)
	movq	%r9, 520(%rsp)
	movl	%r13d, 528(%rsp)
	movl	%r11d, 532(%rsp)
	movl	%ebp, 536(%rsp)
	movl	%ebx, 540(%rsp)
	movl	$0, 544(%rsp)
	cmpl	$96, %eax
	leaq	272(%rsp), %rax
	movq	%rax, 552(%rsp)
	movl	$96, 560(%rsp)
	jbe	.LBB14_15
# BB#16:                                # %if.else.i
	movl	$0, 568(%rsp)
	cmpl	$96, %ecx
	leaq	564(%rsp), %rsi
	jbe	.LBB14_17
# BB#18:                                # %if.else.32.i
	movl	$96, 564(%rsp)
	movl	$8, %eax
	xorl	%edx, %edx
	divl	%r8d
	shll	$5, %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 584(%rsp)
	movl	$1, 588(%rsp)
	jmp	.LBB14_19
.LBB14_15:                              # %if.then.i
	leaq	564(%rsp), %rsi
	movl	%ecx, 564(%rsp)
	movl	$0, 568(%rsp)
	movl	%ebp, 584(%rsp)
	movl	%ebx, 588(%rsp)
	movl	%ebp, %eax
	jmp	.LBB14_19
.LBB14_17:                              # %if.then.25.i
	movl	%ecx, 564(%rsp)
	movl	%ebp, 584(%rsp)
	movl	$96, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 588(%rsp)
	movl	%ebp, %eax
.LBB14_19:                              # %if.end.86
	movl	%ecx, (%rsi)
	movl	$0, 580(%rsp)
	movl	$0, 576(%rsp)
	movl	%eax, 592(%rsp)
	movq	552(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	(%rsi), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
.LBB14_20:                              # %if.end.91
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testq	%r14, %r14
	je	.LBB14_21
# BB#30:                                # %if.then.93
	movl	%r13d, 76(%rsp)         # 4-byte Spill
	movq	(%r14), %rax
	movl	8(%r14), %ecx
	movl	12(%r14), %esi
	movl	16(%r14), %r12d
	movq	%r14, %rbp
	movq	120(%rsp), %rdx         # 8-byte Reload
	movzwl	108(%rdx), %r13d
	imull	%esi, %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	movl	%r13d, %r14d
	imull	%r12d, %r14d
	movq	%rdi, 400(%rsp)
	movq	%rax, 408(%rsp)
	movl	$0, 416(%rsp)
	movl	%ecx, 420(%rsp)
	movl	%esi, 424(%rsp)
	movl	%r12d, 428(%rsp)
	movl	$0, 432(%rsp)
	cmpl	$96, %r14d
	jbe	.LBB14_31
# BB#32:                                # %if.else.i.101
	movl	%esi, %ebx
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movq	24(%rdi), %rdi
	movl	$.L.str.3, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 440(%rsp)
	testq	%rax, %rax
	je	.LBB14_35
# BB#33:                                # %if.end.55.i
	movl	%r14d, 448(%rsp)
	movl	%r13d, 452(%rsp)
	movl	$1, 456(%rsp)
	leaq	472(%rsp), %rax
	movl	%ebx, %esi
	jmp	.LBB14_34
.LBB14_31:                              # %if.then.i.100
	movq	%r9, 112(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rax
	movq	%rax, 440(%rsp)
	movl	$96, 448(%rsp)
	movl	%r13d, 452(%rsp)
	movl	$0, 456(%rsp)
	leaq	472(%rsp), %rax
.LBB14_34:                              # %begin_tiling.exit109
	movl	%esi, 472(%rsp)
	movl	%r12d, 476(%rsp)
	movl	%r13d, 452(%rsp)
	movl	$0, 468(%rsp)
	movl	$0, 464(%rsp)
	movl	%esi, 480(%rsp)
	movq	%rbp, %r14
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movaps	%xmm2, 160(%rsp)
	movaps	%xmm1, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	440(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movl	452(%rsp), %edx
	movl	%edx, 136(%rsp)
	movq	400(%rsp), %rsi
	movq	%rcx, 624(%rsp)
	movl	%edx, 632(%rsp)
	movl	1744(%rsi), %ecx
	movl	%ecx, 636(%rsp)
	movl	432(%rsp), %ecx
	movl	%ecx, 640(%rsp)
	movq	408(%rsp), %rcx
	movl	420(%rsp), %edx
	movq	%rcx, 600(%rsp)
	movl	%edx, 608(%rsp)
	movzwl	108(%rsi), %ecx
	movl	%ecx, 612(%rsp)
	movl	416(%rsp), %ecx
	movl	%ecx, 616(%rsp)
	movl	1748(%rsi), %edx
	movq	(%rax), %rcx
	movq	%rcx, %r8
	shrq	$32, %r8
	leaq	624(%rsp), %rdi
	leaq	600(%rsp), %rsi
	callq	bits_extract_plane
	leaq	128(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	76(%rsp), %r13d         # 4-byte Reload
	movl	728(%rsp), %ebx
	movl	736(%rsp), %ebp
	movq	112(%rsp), %r9          # 8-byte Reload
	movl	752(%rsp), %r12d
.LBB14_21:                              # %do.body.preheader
	movq	%r14, 80(%rsp)          # 8-byte Spill
	jmp	.LBB14_22
	.align	16, 0x90
.LBB14_37:                              # %if.then.33.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movl	%esi, 584(%rsp)
.LBB14_22:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r9, %r9
	je	.LBB14_24
# BB#23:                                # %if.then.125
                                        #   in Loop: Header=BB14_22 Depth=1
	movq	512(%rsp), %rax
	movl	564(%rsp), %ecx
	movl	580(%rsp), %edx
	movl	%ecx, %esi
	imull	%edx, %esi
	addq	552(%rsp), %rsi
	movq	%rsi, 624(%rsp)
	movl	%ecx, 632(%rsp)
	movl	1744(%rax), %ecx
	movl	%ecx, 636(%rsp)
	movl	544(%rsp), %ecx
	movl	%ecx, 640(%rsp)
	movl	532(%rsp), %ecx
	imull	%ecx, %edx
	addq	520(%rsp), %rdx
	movq	%rdx, 600(%rsp)
	movl	%ecx, 608(%rsp)
	movzwl	108(%rax), %ecx
	movl	%ecx, 612(%rsp)
	movl	576(%rsp), %ecx
	addl	528(%rsp), %ecx
	movl	%ecx, 616(%rsp)
	movl	1748(%rax), %edx
	movq	584(%rsp), %rcx
	movq	%rcx, %r8
	shrq	$32, %r8
	leaq	624(%rsp), %rdi
	leaq	600(%rsp), %rsi
	callq	bits_extract_plane
.LBB14_24:                              # %if.end.128
                                        #   in Loop: Header=BB14_22 Depth=1
	movq	504(%rsp), %r9
	movq	392(%rsp), %rax
	movl	768(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movl	760(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r12d, %r14d
	movl	%r15d, 40(%rsp)
	movl	%r15d, %r12d
	movl	%ebp, 32(%rsp)
	movl	%ebp, %r15d
	movl	%ebx, 24(%rsp)
	movl	720(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	%r13d, %edx
	movl	%r13d, %ebp
	movl	100(%rsp), %ecx         # 4-byte Reload
	callq	*1424(%rdi)
	movl	%eax, %r13d
	movq	112(%rsp), %r9          # 8-byte Reload
	testq	%r9, %r9
	je	.LBB14_38
# BB#25:                                # %if.end.128
                                        #   in Loop: Header=BB14_22 Depth=1
	testl	%r13d, %r13d
	js	.LBB14_38
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB14_22 Depth=1
	movq	576(%rsp), %rcx
	movq	584(%rsp), %rax
	leal	(%rcx,%rax), %edi
	movl	%edi, 576(%rsp)
	movq	536(%rsp), %rdx
	movl	%edx, %esi
	subl	%edi, %esi
	jle	.LBB14_27
# BB#36:                                # %if.else.i.166
                                        #   in Loop: Header=BB14_22 Depth=1
	addl	%eax, %edi
	cmpl	%edx, %edi
	movl	%ebp, %r13d
	movl	%r15d, %ebp
	movl	%r12d, %r15d
	movl	%r14d, %r12d
	jl	.LBB14_22
	jmp	.LBB14_37
	.align	16, 0x90
.LBB14_27:                              # %if.then.i.164
                                        #   in Loop: Header=BB14_22 Depth=1
	shrq	$32, %rax
	shrq	$32, %rdx
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, 580(%rsp)
	movl	%edx, %esi
	subl	%ecx, %esi
	jle	.LBB14_38
# BB#28:                                # %if.end.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movl	$0, 576(%rsp)
	movl	592(%rsp), %edi
	movl	%edi, 584(%rsp)
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	movl	%ebp, %r13d
	movl	%r15d, %ebp
	movl	%r12d, %r15d
	movl	%r14d, %r12d
	jl	.LBB14_22
# BB#29:                                # %if.then.19.i
                                        #   in Loop: Header=BB14_22 Depth=1
	movl	%esi, 588(%rsp)
	jmp	.LBB14_22
.LBB14_38:                              # %do.end
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	je	.LBB14_41
# BB#39:                                # %if.then.139
	cmpl	$0, 456(%rsp)
	je	.LBB14_41
# BB#40:                                # %if.then.i.174
	movq	400(%rsp), %rax
	movq	440(%rsp), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r9, %rbx
	callq	*24(%rdi)
	movq	%rbx, %r9
.LBB14_41:                              # %if.end.141
	testq	%r9, %r9
	jne	.LBB14_42
	jmp	.LBB14_44
.LBB14_35:                              # %if.then.104
	movl	$-25, %r13d
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB14_44
.LBB14_42:                              # %if.then.143
	cmpl	$0, 568(%rsp)
	je	.LBB14_44
# BB#43:                                # %if.then.i.77
	movq	512(%rsp), %rax
	movq	552(%rsp), %rsi
	movq	24(%rax), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB14_44:                              # %cleanup
	movl	%r13d, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	plane_strip_copy_rop, .Lfunc_end14-plane_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	plane_begin_typed_image,@function
plane_begin_typed_image:                # @plane_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp152:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp154:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp155:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 56
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp157:
	.cfi_def_cfa_offset 784
.Ltmp158:
	.cfi_offset %rbx, -56
.Ltmp159:
	.cfi_offset %r12, -48
.Ltmp160:
	.cfi_offset %r13, -40
.Ltmp161:
	.cfi_offset %r14, -32
.Ltmp162:
	.cfi_offset %r15, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	800(%rsp), %r15
	movq	792(%rsp), %rbx
	movq	%r14, %rdi
	callq	gs_current_logical_op
	movl	%eax, 724(%rsp)
	movq	(%rbp), %rcx
	movl	48(%rcx), %edx
	xorl	%r12d, %r12d
	leal	-3(%rdx), %ecx
	cmpl	$2, %ecx
	movl	$0, %ecx
	jb	.LBB15_4
# BB#1:                                 # %entry
	cmpl	$1, %edx
	movl	$0, %r13d
	jne	.LBB15_17
# BB#2:                                 # %sw.bb
	xorl	%r13d, %r13d
	cmpl	$0, 592(%rbp)
	movl	$0, %r12d
	jne	.LBB15_17
# BB#3:                                 # %cleanup.thread
	movl	584(%rbp), %ecx
.LBB15_4:                               # %sw.epilog
	xorl	%r13d, %r13d
	testb	$1, %ah
	movl	$0, %r12d
	jne	.LBB15_17
# BB#5:                                 # %lor.lhs.false
	testl	%ecx, %ecx
	jne	.LBB15_7
# BB#6:                                 # %lor.lhs.false.3
	cmpl	$0, 572(%rbp)
	je	.LBB15_12
.LBB15_7:                               # %land.lhs.true
	xorl	%r13d, %r13d
	testb	$2, %ah
	movl	$0, %r12d
	jne	.LBB15_17
# BB#8:                                 # %if.end.8
	testl	%ecx, %ecx
	jne	.LBB15_11
# BB#9:                                 # %lor.lhs.false.10
	cmpl	$0, 572(%rbp)
	je	.LBB15_12
# BB#10:                                # %land.lhs.true.13
	movl	%eax, %ecx
	shll	$4, %ecx
	xorl	%eax, %ecx
	andl	$240, %ecx
	andl	$512, %eax              # imm = 0x200
	orl	%ecx, %eax
	je	.LBB15_12
.LBB15_11:                              # %if.then.19
	leaq	64(%rsp), %rdi
	leaq	724(%rsp), %rcx
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	reduce_drawing_color
	xorl	%r13d, %r13d
	cmpl	$2, %eax
	movl	$0, %r12d
	jne	.LBB15_13
	jmp	.LBB15_17
.LBB15_12:                              # %if.else
	movq	$0, 72(%rsp)
	movq	$gx_dc_type_data_pure, 64(%rsp)
	movl	$0, 424(%rsp)
.LBB15_13:                              # %if.end.25
	movl	$st_plane_image_enum, %esi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_imager_state_copy
	movq	%rax, %r13
	testq	%r12, %r12
	je	.LBB15_17
# BB#14:                                # %if.end.25
	testq	%r13, %r13
	je	.LBB15_17
# BB#15:                                # %if.end.32
	movl	$1616, %edx             # imm = 0x650
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%r12, 16(%r13)
	movq	$plane_get_cmap_procs, 360(%r13)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	1736(%rax), %rdi
	movq	%r12, %rax
	addq	$568, %rax              # imm = 0x238
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %r9
	movq	%r13, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	callq	*1440(%rdi)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB15_16
# BB#19:                                # %if.end.39
	movq	568(%r12), %rsi
	movl	$568, %edx              # imm = 0x238
	movq	%r12, %rdi
	callq	memcpy
	movq	$plane_image_enum_procs, 8(%r12)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%r12)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gs_next_ids
	movq	%rax, 32(%r12)
	movq	%rbx, 24(%r12)
	movq	%r14, 576(%r12)
	movq	%r13, 584(%r12)
	movq	800(%rsp), %rax
	movq	%r12, (%rax)
	jmp	.LBB15_18
.LBB15_16:
	movq	800(%rsp), %r15
.LBB15_17:                              # %fail
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movq	%r15, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	gx_default_begin_typed_image
	movl	%eax, %r15d
.LBB15_18:                              # %cleanup.51
	movl	%r15d, %eax
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	plane_begin_typed_image, .Lfunc_end15-plane_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	plane_get_bits_rectangle,@function
plane_get_bits_rectangle:               # @plane_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp167:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 56
	subq	$616, %rsp              # imm = 0x268
.Ltmp170:
	.cfi_def_cfa_offset 672
.Ltmp171:
	.cfi_offset %rbx, -56
.Ltmp172:
	.cfi_offset %r12, -48
.Ltmp173:
	.cfi_offset %r13, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	1736(%r14), %rsi
	movslq	1752(%r14), %r13
	movl	%r13d, %r15d
	movq	(%rbx), %r12
	movl	%r12d, %eax
	andl	$655360, %eax           # imm = 0xA0000
	cmpq	$655360, %rax           # imm = 0xA0000
	jne	.LBB16_29
# BB#1:                                 # %if.then
	movq	8(%rbx,%r13,8), %rax
	testq	%rax, %rax
	je	.LBB16_33
# BB#2:                                 # %for.cond.preheader
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movslq	100(%r14), %rax
	testq	%rax, %rax
	jle	.LBB16_8
# BB#3:                                 # %for.body.preheader
	movl	%r13d, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB16_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, %ecx
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB16_4 Depth=1
	cmpq	$0, 8(%rbx,%rdx,8)
	jne	.LBB16_6
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_4 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB16_4
.LBB16_8:                               # %for.end
	leaq	80(%rsp), %rdi
	movl	$536, %edx              # imm = 0x218
	movq	%rbx, %rsi
	callq	memcpy
	andq	$-983041, %r12          # imm = 0xFFFFFFFFFFF0FFFF
	orq	$65536, %r12            # imm = 0x10000
	movq	%r12, 80(%rsp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 88(%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	leaq	80(%rsp), %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	*1448(%rdi)
	testl	%eax, %eax
	js	.LBB16_35
# BB#9:                                 # %if.then.26
	movl	%eax, %ebp
	leaq	80(%rsp), %rsi
	movl	$536, %edx              # imm = 0x218
	movq	%rbx, %rdi
	callq	memcpy
	movq	$-983041, %rax          # imm = 0xFFFFFFFFFFF0FFFF
	andq	(%rbx), %rax
	orq	$655360, %rax           # imm = 0xA0000
	movq	%rax, (%rbx)
	movq	8(%rbx), %rax
	movq	%rax, 8(%rbx,%r13,8)
	movslq	100(%r14), %rax
	testq	%rax, %rax
	jle	.LBB16_10
# BB#11:                                # %for.body.40.lr.ph
	leaq	-1(%rax), %rdx
	xorl	%ecx, %ecx
	testb	$3, %al
	je	.LBB16_16
# BB#12:                                # %for.body.40.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB16_13:                              # %for.body.40.prol
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %r15d
	je	.LBB16_15
# BB#14:                                # %if.then.42.prol
                                        #   in Loop: Header=BB16_13 Depth=1
	movq	$0, 8(%rbx,%rcx,8)
.LBB16_15:                              # %for.inc.47.prol
                                        #   in Loop: Header=BB16_13 Depth=1
	incq	%rcx
	cmpq	%rcx, %rsi
	jne	.LBB16_13
.LBB16_16:                              # %for.body.40.lr.ph.split
	cmpq	$3, %rdx
	jae	.LBB16_18
# BB#17:
	movl	%ebp, %eax
	jmp	.LBB16_35
.LBB16_29:                              # %if.else
	movl	%r12d, %eax
	andl	$290521105, %eax        # imm = 0x11510011
	cmpq	$290521105, %rax        # imm = 0x11510011
	jne	.LBB16_33
# BB#30:                                # %if.then.53
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)
	movl	8(%rbp), %eax
	subl	(%rbp), %eax
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movzwl	108(%r14), %ecx
	imull	%ecx, %eax
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 64(%rsp)
	movl	%ecx, 68(%rsp)
	movl	$0, 72(%rsp)
	movzwl	108(%rsi), %eax
	movl	%eax, 44(%rsp)
	leaq	80(%rsp), %r13
	movl	$536, %edx              # imm = 0x218
	movq	%rsi, %r15
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r12, %rax
	andq	$-580255855, %rax       # imm = 0xFFFFFFFFDD69FF91
	movq	%rax, 80(%rsp)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	movl	%eax, 608(%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	callq	*1448(%r15)
	testl	%eax, %eax
	js	.LBB16_32
# BB#31:                                # %if.then.77
	movq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	608(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	520(%rbx), %eax
	movl	%eax, 48(%rsp)
	movl	1748(%r14), %edx
	movl	8(%rbp), %ecx
	movl	12(%rbp), %r8d
	subl	(%rbp), %ecx
	subl	4(%rbp), %r8d
	leaq	56(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	bits_expand_plane
.LBB16_32:                              # %if.end.95
	andq	$-582353007, %r12       # imm = 0xFFFFFFFFDD49FF91
	orq	$1048576, %r12          # imm = 0x100000
	movq	%r12, (%rbx)
	jmp	.LBB16_35
.LBB16_33:                              # %if.else.99
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
.LBB16_34:                              # %cleanup
	callq	gx_default_get_bits_rectangle
.LBB16_35:                              # %cleanup
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_6:                               # %if.then.14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB16_34
.LBB16_10:
	movl	%ebp, %eax
	jmp	.LBB16_35
.LBB16_18:                              # %for.body.40.lr.ph.split.split
	leaq	32(%rbx,%rcx,8), %rdx
	movl	%r15d, %esi
	subl	%ecx, %esi
	.align	16, 0x90
.LBB16_19:                              # %for.body.40
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB16_21
# BB#20:                                # %if.then.42
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	$0, -24(%rdx)
.LBB16_21:                              # %for.inc.47
                                        #   in Loop: Header=BB16_19 Depth=1
	leal	1(%rcx), %edi
	cmpl	%r15d, %edi
	je	.LBB16_23
# BB#22:                                # %if.then.42.1
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	$0, -16(%rdx)
.LBB16_23:                              # %for.inc.47.1
                                        #   in Loop: Header=BB16_19 Depth=1
	leal	2(%rcx), %edi
	cmpl	%r13d, %edi
	je	.LBB16_25
# BB#24:                                # %if.then.42.2
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	$0, -8(%rdx)
.LBB16_25:                              # %for.inc.47.2
                                        #   in Loop: Header=BB16_19 Depth=1
	leal	3(%rcx), %edi
	cmpl	%r15d, %edi
	je	.LBB16_27
# BB#26:                                # %if.then.42.3
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	$0, (%rdx)
.LBB16_27:                              # %for.inc.47.3
                                        #   in Loop: Header=BB16_19 Depth=1
	addq	$4, %rcx
	addq	$32, %rdx
	addl	$-4, %esi
	cmpq	%rax, %rcx
	jl	.LBB16_19
# BB#28:
	movl	%ebp, %eax
	jmp	.LBB16_35
.Lfunc_end16:
	.size	plane_get_bits_rectangle, .Lfunc_end16-plane_get_bits_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	reduce_drawing_color,@function
reduce_drawing_color:                   # @reduce_drawing_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp180:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp181:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp182:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp183:
	.cfi_def_cfa_offset 64
.Ltmp184:
	.cfi_offset %rbx, -56
.Ltmp185:
	.cfi_offset %r12, -48
.Ltmp186:
	.cfi_offset %r13, -40
.Ltmp187:
	.cfi_offset %r14, -32
.Ltmp188:
	.cfi_offset %r15, -24
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%r15), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB17_1
# BB#4:                                 # %if.else
	movl	$gx_dc_type_data_ht_binary, %ecx
	cmpq	%rcx, %rax
	je	.LBB17_5
# BB#12:                                # %if.else.78
	movl	$gx_dc_type_data_ht_colored, %ecx
	movl	$2, %ebp
	cmpq	%rcx, %rax
	jne	.LBB17_32
# BB#13:                                # %if.then.82
	movslq	1752(%rbx), %r13
	movl	$656, %edx              # imm = 0x290
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	xorl	%eax, %eax
	.align	16, 0x90
.LBB17_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	1752(%rbx), %eax
	je	.LBB17_16
# BB#15:                                # %if.then.92
                                        #   in Loop: Header=BB17_14 Depth=1
	movb	$0, 18(%r12,%rax)
	movl	$0, 84(%r12,%rax,4)
.LBB17_16:                              # %for.inc
                                        #   in Loop: Header=BB17_14 Depth=1
	leaq	1(%rax), %rcx
	cmpl	1752(%rbx), %ecx
	je	.LBB17_18
# BB#17:                                # %if.then.92.1
                                        #   in Loop: Header=BB17_14 Depth=1
	movb	$0, 19(%r12,%rax)
	movl	$0, 88(%r12,%rax,4)
.LBB17_18:                              # %for.inc.1
                                        #   in Loop: Header=BB17_14 Depth=1
	incq	%rcx
	cmpq	$64, %rcx
	movq	%rcx, %rax
	jne	.LBB17_14
# BB#19:                                # %for.end
	movl	$1, %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	cltq
	andq	%rax, 344(%r12)
	cmpl	$0, 84(%r12,%r13,4)
	je	.LBB17_20
# BB#21:                                # %if.else.137
	movzwl	340(%r12), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jne	.LBB17_32
# BB#22:                                # %if.else.144
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gx_devn_reduce_colored_halftone
	movq	16(%r12), %rax
	movb	1748(%rbx), %cl
	shrq	%cl, %rax
	movl	1768(%rbx), %edx
	andq	%rdx, %rax
	movq	%rax, 16(%r12)
	movq	24(%r12), %rax
	shrq	%cl, %rax
	andq	%rdx, %rax
	movq	%rax, 24(%r12)
	movq	(%r12), %rax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	*32(%rax)
	jmp	.LBB17_23
.LBB17_1:                               # %if.then
	movq	8(%r15), %rax
	movb	1748(%rbx), %cl
	shrq	%cl, %rax
	movl	1768(%rbx), %ecx
	andq	%rax, %rcx
	movq	%rcx, 8(%r12)
	movq	$gx_dc_type_data_pure, (%r12)
	movl	$0, 360(%r12)
.LBB17_2:                               # %if.then
	cmpq	1760(%rbx), %rcx
	jne	.LBB17_23
	jmp	.LBB17_3
.LBB17_5:                               # %if.then.10
	movq	16(%r15), %rax
	movq	$-1, %r13
	cmpq	$-1, %rax
	movq	$-1, %rbp
	je	.LBB17_7
# BB#6:                                 # %cond.false.15
	movb	1748(%rbx), %cl
	shrq	%cl, %rax
	movl	1768(%rbx), %ebp
	andq	%rax, %rbp
.LBB17_7:                               # %cond.end.27
	movq	24(%r15), %rax
	cmpq	$-1, %rax
	je	.LBB17_9
# BB#8:                                 # %cond.false.36
	movb	1748(%rbx), %cl
	shrq	%cl, %rax
	movl	1768(%rbx), %r13d
	andq	%rax, %r13
.LBB17_9:                               # %cond.end.48
	cmpq	%r13, %rbp
	jne	.LBB17_11
# BB#10:                                # %if.then.52
	movq	%rbp, 8(%r12)
	movq	$gx_dc_type_data_pure, (%r12)
	movl	$0, 360(%r12)
	cmpq	1760(%rbx), %rbp
	jne	.LBB17_23
.LBB17_3:                               # %land.lhs.true
	xorl	%r13d, %r13d
	cmpl	$0, 1776(%rbx)
	jne	.LBB17_23
	jmp	.LBB17_24
.LBB17_11:                              # %if.else.68
	movl	$656, %edx              # imm = 0x290
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%rbp, 16(%r12)
	movq	%r13, 24(%r12)
.LBB17_23:                              # %if.end.185
	movl	$1, 1776(%rbx)
	movl	$1, %r13d
.LBB17_24:                              # %if.end.185
	testb	$2, 1(%r14)
	je	.LBB17_31
# BB#25:                                # %if.then.188
	movq	%rbx, %rdi
	callq	gx_device_white
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%r12)
	je	.LBB17_26
# BB#28:                                # %if.else.207
	movl	$2, %ebp
	cmpq	%rax, 16(%r15)
	je	.LBB17_32
# BB#29:                                # %land.lhs.true.214
	cmpq	%rax, 24(%r15)
	je	.LBB17_32
	jmp	.LBB17_30
.LBB17_26:                              # %if.then.193
	cmpq	%rax, 8(%r15)
	jne	.LBB17_30
# BB#27:                                # %if.else.200
	movl	$gx_dc_type_data_pure, %eax
	movl	$2, %ebp
	cmpq	%rax, (%r15)
	jne	.LBB17_32
	jmp	.LBB17_31
.LBB17_30:                              # %if.then.221
	andb	$-3, 1(%r14)
.LBB17_31:                              # %if.end.229.critedge
	movl	%r13d, %ebp
.LBB17_32:                              # %cleanup.230
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_20:                              # %if.then.112
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gx_devn_reduce_colored_halftone
	movq	8(%r12), %rax
	movb	1748(%rbx), %cl
	shrq	%cl, %rax
	movl	1768(%rbx), %ecx
	andq	%rax, %rcx
	movq	%rcx, 8(%r12)
	jmp	.LBB17_2
.Lfunc_end17:
	.size	reduce_drawing_color, .Lfunc_end17-reduce_drawing_color
	.cfi_endproc

	.align	16, 0x90
	.type	plane_get_cmap_procs,@function
plane_get_cmap_procs:                   # @plane_get_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$plane_color_map_procs, %eax
	retq
.Lfunc_end18:
	.size	plane_get_cmap_procs, .Lfunc_end18-plane_get_cmap_procs
	.cfi_endproc

	.align	16, 0x90
	.type	plane_cmap_gray,@function
plane_cmap_gray:                        # @plane_cmap_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp190:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 32
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp193:
	.cfi_def_cfa_offset 704
.Ltmp194:
	.cfi_offset %rbx, -32
.Ltmp195:
	.cfi_offset %r14, -24
.Ltmp196:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	16(%rdx), %rax
	movq	16(%rax), %rbx
	movl	212(%rdx), %ecx
	movl	%ecx, 668(%rsp)
	movq	576(%rax), %rdx
	movq	1016(%rdx), %rax
	leaq	8(%rsp), %r15
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	*(%rax)
	leaq	668(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	plane_cmap_gray, .Lfunc_end19-plane_cmap_gray
	.cfi_endproc

	.align	16, 0x90
	.type	plane_cmap_rgb,@function
plane_cmap_rgb:                         # @plane_cmap_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 32
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp200:
	.cfi_def_cfa_offset 704
.Ltmp201:
	.cfi_offset %rbx, -32
.Ltmp202:
	.cfi_offset %r14, -24
.Ltmp203:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movl	704(%rsp), %r9d
	movq	16(%r8), %rcx
	movq	16(%rcx), %rbx
	movl	212(%r8), %eax
	movl	%eax, 668(%rsp)
	movq	576(%rcx), %r8
	movq	1016(%r8), %rax
	movl	%r9d, (%rsp)
	leaq	8(%rsp), %r15
	movq	%r15, %rcx
	movq	%rbx, %r9
	callq	*8(%rax)
	leaq	668(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	plane_cmap_rgb, .Lfunc_end20-plane_cmap_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	plane_cmap_cmyk,@function
plane_cmap_cmyk:                        # @plane_cmap_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp204:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp205:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp206:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 40
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp208:
	.cfi_def_cfa_offset 736
.Ltmp209:
	.cfi_offset %rbx, -40
.Ltmp210:
	.cfi_offset %r12, -32
.Ltmp211:
	.cfi_offset %r14, -24
.Ltmp212:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movl	744(%rsp), %r8d
	movq	16(%r9), %rax
	movq	16(%rax), %r12
	movl	212(%r9), %ebx
	movl	%ebx, 692(%rsp)
	movq	576(%rax), %r9
	movq	1016(%r9), %rax
	movl	%r8d, 8(%rsp)
	movq	%r12, (%rsp)
	movq	$0, 16(%rsp)
	leaq	32(%rsp), %r15
	movq	%r15, %r8
	callq	*16(%rax)
	leaq	692(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	plane_cmap_cmyk, .Lfunc_end21-plane_cmap_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	plane_cmap_rgb_alpha,@function
plane_cmap_rgb_alpha:                   # @plane_cmap_rgb_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp215:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 40
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp217:
	.cfi_def_cfa_offset 720
.Ltmp218:
	.cfi_offset %rbx, -40
.Ltmp219:
	.cfi_offset %r12, -32
.Ltmp220:
	.cfi_offset %r14, -24
.Ltmp221:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movl	728(%rsp), %r8d
	movq	16(%r9), %rax
	movq	16(%rax), %r12
	movl	212(%r9), %ebx
	movl	%ebx, 676(%rsp)
	movq	576(%rax), %r9
	movq	1016(%r9), %rax
	movl	%r8d, 8(%rsp)
	movq	%r12, (%rsp)
	leaq	16(%rsp), %r15
	movq	%r15, %r8
	callq	*24(%rax)
	leaq	676(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	reduce_drawing_color
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	plane_cmap_rgb_alpha, .Lfunc_end22-plane_cmap_rgb_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	plane_cmap_is_halftoned,@function
plane_cmap_is_halftoned:                # @plane_cmap_is_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	plane_cmap_is_halftoned, .Lfunc_end23-plane_cmap_is_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	plane_image_plane_data,@function
plane_image_plane_data:                 # @plane_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	568(%rdi), %rdi
	jmp	gx_image_plane_data_rows # TAILCALL
.Lfunc_end24:
	.size	plane_image_plane_data, .Lfunc_end24-plane_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	plane_image_end_image,@function
plane_image_end_image:                  # @plane_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp224:
	.cfi_def_cfa_offset 32
.Ltmp225:
	.cfi_offset %rbx, -24
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	%rbx, (%rsp)
	movq	568(%rbx), %rdi
	callq	gx_image_end
	movl	%eax, %ebp
	movq	24(%rbx), %rdi
	movq	584(%rbx), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	leaq	(%rsp), %rdi
	callq	gx_image_free_enum
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	plane_image_end_image, .Lfunc_end25-plane_image_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_plane_extract"
	.size	.L.str, 24

	.type	st_device_plane_extract,@object # @st_device_plane_extract
	.section	.rodata,"a",@progbits
	.globl	st_device_plane_extract
	.align	8
st_device_plane_extract:
	.long	1784                    # 0x6f8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_plane_extract_enum_ptrs
	.quad	device_plane_extract_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_plane_extract, 64

	.type	gs_plane_extract_device,@object # @gs_plane_extract_device
	.align	8
gs_plane_extract_device:
	.long	1784                    # 0x6f8
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.quad	.L.str.2
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
	.quad	plane_open_device
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_close_device
	.quad	0
	.quad	0
	.quad	plane_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	plane_copy_mono
	.quad	plane_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	plane_copy_alpha
	.quad	0
	.quad	gx_default_copy_rop
	.quad	plane_fill_path
	.quad	plane_stroke_path
	.quad	plane_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	plane_fill_parallelogram
	.quad	plane_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	plane_strip_tile_rectangle
	.quad	plane_strip_copy_rop
	.quad	0
	.quad	plane_begin_typed_image
	.quad	plane_get_bits_rectangle
	.quad	0
	.quad	gx_no_create_compositor
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
	.quad	gx_default_fill_rectangle_hl_color
	.quad	gx_default_include_color_space
	.quad	gx_default_fill_linear_color_scanline
	.quad	gx_default_fill_linear_color_trapezoid
	.quad	gx_default_fill_linear_color_triangle
	.quad	gx_default_update_spot_equivalent_colors
	.quad	gx_default_ret_devn_params
	.quad	gx_default_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_strip_copy_rop2
	.quad	gx_default_strip_tile_rect_devn
	.quad	gx_default_copy_alpha_hl_color
	.quad	0
	.quad	0
	.quad	0
	.zero	12
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.size	gs_plane_extract_device, 1784

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"plane_extract"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"begin_tiling"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"end_tiling"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"plane_image_begin_typed(info)"
	.size	.L.str.5, 30

	.type	plane_image_enum_procs,@object # @plane_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
plane_image_enum_procs:
	.quad	plane_image_plane_data
	.quad	plane_image_end_image
	.quad	0
	.quad	0
	.size	plane_image_enum_procs, 32

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"plane_image_begin_typed(pis_image)"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"plane_image_enum_t"
	.size	.L.str.7, 19

	.type	plane_image_enum_reloc_ptrs,@object # @plane_image_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
plane_image_enum_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	st_gx_image_enum_common
	.quad	plane_image_enum_enum_ptrs
	.size	plane_image_enum_reloc_ptrs, 24

	.type	st_plane_image_enum,@object # @st_plane_image_enum
	.align	8
st_plane_image_enum:
	.long	592                     # 0x250
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	plane_image_enum_reloc_ptrs
	.size	st_plane_image_enum, 64

	.type	plane_image_enum_enum_ptrs,@object # @plane_image_enum_enum_ptrs
	.align	2
plane_image_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	568                     # 0x238
	.short	0                       # 0x0
	.short	576                     # 0x240
	.short	0                       # 0x0
	.short	584                     # 0x248
	.size	plane_image_enum_enum_ptrs, 12

	.type	plane_color_map_procs,@object # @plane_color_map_procs
	.align	8
plane_color_map_procs:
	.quad	plane_cmap_gray
	.quad	plane_cmap_rgb
	.quad	plane_cmap_cmyk
	.quad	plane_cmap_rgb_alpha
	.quad	0
	.quad	0
	.quad	plane_cmap_is_halftoned
	.size	plane_color_map_procs, 56

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"plane_image_end_image(pis_image)"
	.size	.L.str.8, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
