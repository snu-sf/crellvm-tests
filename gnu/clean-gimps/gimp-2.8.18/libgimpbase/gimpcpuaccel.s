	.text
	.file	"gimpcpuaccel.bc"
	.globl	gimp_cpu_accel_get_support
	.align	16, 0x90
	.type	gimp_cpu_accel_get_support,@function
gimp_cpu_accel_get_support:             # @gimp_cpu_accel_get_support
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
	cmpl	$0, use_cpu_accel(%rip)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	callq	cpu_accel
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movl	-4(%rbp), %eax          # 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cpu_accel_get_support, .Lfunc_end0-gimp_cpu_accel_get_support
	.cfi_endproc

	.align	16, 0x90
	.type	cpu_accel,@function
cpu_accel:                              # @cpu_accel
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
	subq	$16, %rsp
	cmpl	$-1, cpu_accel.accel(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	cpu_accel.accel(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	callq	arch_accel
	movl	%eax, cpu_accel.accel(%rip)
	movl	cpu_accel.accel(%rip), %eax
	movl	%eax, -4(%rbp)
.LBB1_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cpu_accel, .Lfunc_end1-cpu_accel
	.cfi_endproc

	.globl	gimp_cpu_accel_set_use
	.align	16, 0x90
	.type	gimp_cpu_accel_set_use,@function
gimp_cpu_accel_set_use:                 # @gimp_cpu_accel_set_use
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
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, use_cpu_accel(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cpu_accel_set_use, .Lfunc_end2-gimp_cpu_accel_set_use
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel,@function
arch_accel:                             # @arch_accel
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
	subq	$32, %rsp
	callq	arch_get_vendor
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	ja	.LBB3_5
# BB#10:                                # %entry
	leaq	.LJTI3_0(%rip), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB3_1:                                # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %sw.bb.1
	callq	arch_accel_amd
	movl	%eax, -4(%rbp)
	jmp	.LBB3_6
.LBB3_3:                                # %sw.bb.3
	callq	arch_accel_centaur
	movl	%eax, -4(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %sw.bb.5
	callq	arch_accel_cyrix
	movl	%eax, -4(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %sw.default
	callq	arch_accel_intel
	movl	%eax, -4(%rbp)
.LBB3_6:                                # %sw.epilog
	movl	-4(%rbp), %eax
	andl	$268435456, %eax        # imm = 0x10000000
	cmpl	$0, %eax
	je	.LBB3_9
# BB#7:                                 # %land.lhs.true
	callq	arch_accel_sse_os_support
	cmpl	$0, %eax
	jne	.LBB3_9
# BB#8:                                 # %if.then
	movl	-4(%rbp), %eax
	andl	$-402653185, %eax       # imm = 0xFFFFFFFFE7FFFFFF
	movl	%eax, -4(%rbp)
.LBB3_9:                                # %if.end
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	arch_accel, .Lfunc_end3-arch_accel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI3_0:
	.long	.LBB3_1-.LJTI3_0
	.long	.LBB3_5-.LJTI3_0
	.long	.LBB3_2-.LJTI3_0
	.long	.LBB3_3-.LJTI3_0
	.long	.LBB3_4-.LJTI3_0
	.long	.LBB3_4-.LJTI3_0

	.text
	.align	16, 0x90
	.type	arch_get_vendor,@function
arch_get_vendor:                        # @arch_get_vendor
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	#APP
	cpuid
	#NO_APP
	movl	%eax, -16(%rbp)
	movl	%ebx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%edx, -28(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB4_8
.LBB4_2:                                # %if.end
	leaq	-48(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movb	$0, -36(%rbp)
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.11
	movl	$2, -12(%rbp)
	jmp	.LBB4_8
.LBB4_4:                                # %if.else
	leaq	-48(%rbp), %rax
	leaq	.L.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then.16
	movl	$1, -12(%rbp)
	jmp	.LBB4_8
.LBB4_6:                                # %if.end.17
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.18
	movl	$255, -12(%rbp)
.LBB4_8:                                # %return
	movl	-12(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	arch_get_vendor, .Lfunc_end4-arch_get_vendor
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel_amd,@function
arch_accel_amd:                         # @arch_accel_amd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp19:
	.cfi_offset %rbx, -24
	callq	arch_accel_intel
	movl	%eax, -16(%rbp)
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$-2147483647, -20(%rbp) # imm = 0xFFFFFFFF80000001
	jae	.LBB5_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	movl	$-2147483647, %eax      # imm = 0xFFFFFFFF80000001
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.8
	movl	-16(%rbp), %eax
	orl	$1073741824, %eax       # imm = 0x40000000
	movl	%eax, -16(%rbp)
.LBB5_4:                                # %if.end.9
	movl	-32(%rbp), %eax
	andl	$4194304, %eax          # imm = 0x400000
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then.12
	movl	-16(%rbp), %eax
	orl	$536870912, %eax        # imm = 0x20000000
	movl	%eax, -16(%rbp)
.LBB5_6:                                # %if.end.14
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB5_7:                                # %return
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	arch_accel_amd, .Lfunc_end5-arch_accel_amd
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel_centaur,@function
arch_accel_centaur:                     # @arch_accel_centaur
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	callq	arch_accel_intel
	movl	%eax, -16(%rbp)
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$-2147483647, -20(%rbp) # imm = 0xFFFFFFFF80000001
	jae	.LBB6_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_9
.LBB6_2:                                # %if.end
	movl	$-2147483647, %eax      # imm = 0xFFFFFFFF80000001
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.8
	movl	-16(%rbp), %eax
	orl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -16(%rbp)
.LBB6_4:                                # %if.end.9
	movl	-32(%rbp), %eax
	andl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then.12
	movl	-16(%rbp), %eax
	orl	$1073741824, %eax       # imm = 0x40000000
	movl	%eax, -16(%rbp)
.LBB6_6:                                # %if.end.14
	movl	-32(%rbp), %eax
	andl	$16777216, %eax         # imm = 0x1000000
	cmpl	$0, %eax
	je	.LBB6_8
# BB#7:                                 # %if.then.17
	movl	-16(%rbp), %eax
	orl	$536870912, %eax        # imm = 0x20000000
	movl	%eax, -16(%rbp)
.LBB6_8:                                # %if.end.19
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB6_9:                                # %return
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	arch_accel_centaur, .Lfunc_end6-arch_accel_centaur
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel_cyrix,@function
arch_accel_cyrix:                       # @arch_accel_cyrix
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	callq	arch_accel_intel
	movl	%eax, -16(%rbp)
	xorl	%eax, %eax
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movl	$-2147483647, %eax      # imm = 0xFFFFFFFF80000001
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movl	-16(%rbp), %eax
	orl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -16(%rbp)
.LBB7_4:                                # %if.end.9
	movl	-32(%rbp), %eax
	andl	$16777216, %eax         # imm = 0x1000000
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.12
	movl	-16(%rbp), %eax
	orl	$536870912, %eax        # imm = 0x20000000
	movl	%eax, -16(%rbp)
.LBB7_6:                                # %if.end.14
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB7_7:                                # %return
	movl	-12(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	arch_accel_cyrix, .Lfunc_end7-arch_accel_cyrix
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel_intel,@function
arch_accel_intel:                       # @arch_accel_intel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
.Ltmp31:
	.cfi_offset %rbx, -24
	movl	$0, -16(%rbp)
	movl	$1, %eax
	#APP
	cpuid
	#NO_APP
	movl	%eax, -20(%rbp)
	movl	%ebx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$8388608, %eax          # imm = 0x800000
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movl	$-2147483648, -16(%rbp) # imm = 0xFFFFFFFF80000000
	movl	-32(%rbp), %eax
	andl	$33554432, %eax         # imm = 0x2000000
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.5
	movl	-16(%rbp), %eax
	orl	$805306368, %eax        # imm = 0x30000000
	movl	%eax, -16(%rbp)
.LBB8_4:                                # %if.end.6
	movl	-32(%rbp), %eax
	andl	$67108864, %eax         # imm = 0x4000000
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.9
	movl	-16(%rbp), %eax
	orl	$134217728, %eax        # imm = 0x8000000
	movl	%eax, -16(%rbp)
.LBB8_6:                                # %if.end.11
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.14
	movl	-16(%rbp), %eax
	orl	$33554432, %eax         # imm = 0x2000000
	movl	%eax, -16(%rbp)
.LBB8_8:                                # %if.end.16
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB8_9:                                # %return
	movl	-12(%rbp), %eax
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	arch_accel_intel, .Lfunc_end8-arch_accel_intel
	.cfi_endproc

	.align	16, 0x90
	.type	arch_accel_sse_os_support,@function
arch_accel_sse_os_support:              # @arch_accel_sse_os_support
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	sigill_return(%rip), %rdi
	callq	_setjmp@PLT
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_4
.LBB9_2:                                # %if.else
	movl	$4, %edi
	leaq	sigill_handler(%rip), %rsi
	callq	signal@PLT
	#APP
	xorps	%xmm0, %xmm0
	#NO_APP
	movl	$4, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	signal@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
# BB#3:                                 # %if.end
	movl	$1, -4(%rbp)
.LBB9_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	arch_accel_sse_os_support, .Lfunc_end9-arch_accel_sse_os_support
	.cfi_endproc

	.align	16, 0x90
	.type	sigill_handler,@function
sigill_handler:                         # @sigill_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	sigill_return(%rip), %rax
	movl	$1, %esi
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	longjmp@PLT
.Lfunc_end10:
	.size	sigill_handler, .Lfunc_end10-sigill_handler
	.cfi_endproc

	.type	use_cpu_accel,@object   # @use_cpu_accel
	.data
	.align	4
use_cpu_accel:
	.long	1                       # 0x1
	.size	use_cpu_accel, 4

	.type	cpu_accel.accel,@object # @cpu_accel.accel
	.align	4
cpu_accel.accel:
	.long	4294967295              # 0xffffffff
	.size	cpu_accel.accel, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AuthenticAMD"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GenuineIntel"
	.size	.L.str.1, 13

	.type	sigill_return,@object   # @sigill_return
	.local	sigill_return
	.comm	sigill_return,200,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
