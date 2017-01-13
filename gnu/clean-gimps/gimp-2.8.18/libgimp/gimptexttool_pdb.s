	.text
	.file	"gimptexttool_pdb.bc"
	.globl	gimp_text_fontname
	.align	16, 0x90
	.type	gimp_text_fontname,@function
gimp_text_fontname:                     # @gimp_text_fontname
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	leaq	.L.str(%rip), %r10
	leaq	-116(%rbp), %r11
	movl	$13, %ebx
	movl	$16, %r14d
	movl	$3, %r15d
	movl	$4, %r12d
	xorl	%r13d, %r13d
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	$22, %ecx
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	%esi, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	%rax, -104(%rbp)
	movl	$-1, -120(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %r9d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %esi
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-92(%rbp), %edx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	-140(%rbp), %ebx        # 4-byte Reload
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%ebx, %ecx
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-144(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 80(%rsp)
	movl	$4, 88(%rsp)
	movq	%rax, 96(%rsp)
	movl	$22, 104(%rsp)
	movb	$3, %al
	movl	%r13d, -160(%rbp)       # 4-byte Spill
	movl	%r15d, -164(%rbp)       # 4-byte Spill
	movl	%r12d, -168(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -120(%rbp)
.LBB0_2:                                # %if.end
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-120(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_fontname, .Lfunc_end0-gimp_text_fontname
	.cfi_endproc

	.globl	gimp_text_get_extents_fontname
	.align	16, 0x90
	.type	gimp_text_get_extents_fontname,@function
gimp_text_get_extents_fontname:         # @gimp_text_get_extents_fontname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	leaq	.L.str.1(%rip), %r10
	leaq	-116(%rbp), %r11
	movl	$4, %ebx
	movl	$3, %r14d
	xorl	%r15d, %r15d
	movl	$22, %r12d
	movq	%rdi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	$1, -120(%rbp)
	movq	-48(%rbp), %rcx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %esi
	movq	-72(%rbp), %rax
	movq	%r10, %rdi
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movl	%ebx, %edx
	movl	%r14d, %r8d
	movl	%r15d, %r9d
	movl	-124(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	$4, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%r12d, -128(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %edx
	movl	%edx, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-112(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-112(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-112(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, (%rax)
.LBB1_2:                                # %if.end
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-120(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_get_extents_fontname, .Lfunc_end1-gimp_text_get_extents_fontname
	.cfi_endproc

	.globl	gimp_text
	.align	16, 0x90
	.type	gimp_text,@function
gimp_text:                              # @gimp_text
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movq	64(%rbp), %r10
	movq	56(%rbp), %r11
	movq	48(%rbp), %rbx
	movq	40(%rbp), %r14
	movq	32(%rbp), %r15
	movq	24(%rbp), %r12
	movq	16(%rbp), %r13
	movq	%rax, -184(%rbp)        # 8-byte Spill
	leaq	.L.str.2(%rip), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	leaq	-172(%rbp), %rax
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	$13, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	movl	$16, %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	$3, %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	$4, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movl	$22, %ecx
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-196(%rbp), %esi        # 4-byte Reload
	movl	%esi, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movq	%r13, -104(%rbp)
	movq	%r12, -112(%rbp)
	movq	%r15, -120(%rbp)
	movq	%r14, -128(%rbp)
	movq	%rbx, -136(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r10, -152(%rbp)
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -160(%rbp)
	movl	$-1, -176(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %r9d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %r10
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %esi
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-92(%rbp), %r11d
	movq	-104(%rbp), %rbx
	movq	-112(%rbp), %r14
	movq	-120(%rbp), %r15
	movq	-128(%rbp), %r12
	movq	-136(%rbp), %r13
	movq	-144(%rbp), %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%edi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	%esi, -248(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-200(%rbp), %eax        # 4-byte Reload
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -264(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	%r10, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	%r11d, 80(%rsp)
	movl	$4, 88(%rsp)
	movq	%rbx, 96(%rsp)
	movl	$4, 104(%rsp)
	movq	%r14, 112(%rsp)
	movl	$4, 120(%rsp)
	movq	%r15, 128(%rsp)
	movl	$4, 136(%rsp)
	movq	%r12, 144(%rsp)
	movl	$4, 152(%rsp)
	movq	%r13, 160(%rsp)
	movl	$4, 168(%rsp)
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, 176(%rsp)
	movl	$4, 184(%rsp)
	movq	-232(%rbp), %r10        # 8-byte Reload
	movq	%r10, 192(%rsp)
	movl	$4, 200(%rsp)
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%r10, 208(%rsp)
	movl	$22, 216(%rsp)
	movb	$3, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-168(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -176(%rbp)
.LBB2_2:                                # %if.end
	movq	-168(%rbp), %rdi
	movl	-172(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-176(%rbp), %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text, .Lfunc_end2-gimp_text
	.cfi_endproc

	.globl	gimp_text_get_extents
	.align	16, 0x90
	.type	gimp_text_get_extents,@function
gimp_text_get_extents:                  # @gimp_text_get_extents
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movq	64(%rbp), %r10
	movq	56(%rbp), %r11
	movq	48(%rbp), %rbx
	movq	40(%rbp), %r14
	movq	32(%rbp), %r15
	movq	24(%rbp), %r12
	movq	16(%rbp), %r13
	movq	%rax, -184(%rbp)        # 8-byte Spill
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	leaq	-172(%rbp), %rax
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movl	$4, %esi
	movl	%esi, -200(%rbp)        # 4-byte Spill
	movl	$3, %esi
	movl	%esi, -204(%rbp)        # 4-byte Spill
	xorl	%esi, %esi
	movl	%esi, -208(%rbp)        # 4-byte Spill
	movl	$22, %esi
	movq	%rdi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	-196(%rbp), %edi        # 4-byte Reload
	movl	%edi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%r13, -104(%rbp)
	movq	%r12, -112(%rbp)
	movq	%r15, -120(%rbp)
	movq	%r14, -128(%rbp)
	movq	%rbx, -136(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r10, -152(%rbp)
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -160(%rbp)
	movl	$1, -176(%rbp)
	movq	-48(%rbp), %rcx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %r10
	movq	-104(%rbp), %r11
	movq	-112(%rbp), %rbx
	movq	-120(%rbp), %r14
	movq	-128(%rbp), %r15
	movq	-192(%rbp), %r12        # 8-byte Reload
	movl	%edi, -212(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-200(%rbp), %r12d       # 4-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%r12d, %edx
	movl	-204(%rbp), %r12d       # 4-byte Reload
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movl	%r12d, %r8d
	movl	-208(%rbp), %r12d       # 4-byte Reload
	movq	%r9, -240(%rbp)         # 8-byte Spill
	movl	%r12d, %r9d
	movl	-212(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, (%rsp)
	movl	$4, 8(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$4, 40(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	$4, 56(%rsp)
	movq	%r10, 64(%rsp)
	movl	$4, 72(%rsp)
	movq	%r11, 80(%rsp)
	movl	$4, 88(%rsp)
	movq	%rbx, 96(%rsp)
	movl	$4, 104(%rsp)
	movq	%r14, 112(%rsp)
	movl	$4, 120(%rsp)
	movq	%r15, 128(%rsp)
	movl	$22, 136(%rsp)
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -168(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, (%rax)
	movq	-144(%rbp), %rax
	movl	$0, (%rax)
	movq	-152(%rbp), %rax
	movl	$0, (%rax)
	movq	-160(%rbp), %rax
	movl	$0, (%rax)
	movq	-168(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-168(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-168(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-144(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-168(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-168(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-160(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_2:                                # %if.end
	movq	-168(%rbp), %rdi
	movl	-172(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-176(%rbp), %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_get_extents, .Lfunc_end3-gimp_text_get_extents
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-fontname"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-text-get-extents-fontname"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-text"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-text-get-extents"
	.size	.L.str.3, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
