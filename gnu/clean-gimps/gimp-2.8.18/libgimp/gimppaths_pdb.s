	.text
	.file	"gimppaths_pdb.bc"
	.globl	gimp_path_list
	.align	16, 0x90
	.type	gimp_path_list,@function
gimp_path_list:                         # @gimp_path_list
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
	subq	$48, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_2
.LBB0_5:                                # %for.end
	jmp	.LBB0_6
.LBB0_6:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_path_list, .Lfunc_end0-gimp_path_list
	.cfi_endproc

	.globl	gimp_path_get_current
	.align	16, 0x90
	.type	gimp_path_get_current,@function
gimp_path_get_current:                  # @gimp_path_get_current
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
	subq	$32, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_path_get_current, .Lfunc_end1-gimp_path_get_current
	.cfi_endproc

	.globl	gimp_path_set_current
	.align	16, 0x90
	.type	gimp_path_set_current,@function
gimp_path_set_current:                  # @gimp_path_set_current
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
	subq	$64, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_path_set_current, .Lfunc_end2-gimp_path_set_current
	.cfi_endproc

	.globl	gimp_path_delete
	.align	16, 0x90
	.type	gimp_path_delete,@function
gimp_path_delete:                       # @gimp_path_delete
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
	subq	$64, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_path_delete, .Lfunc_end3-gimp_path_delete
	.cfi_endproc

	.globl	gimp_path_get_points
	.align	16, 0x90
	.type	gimp_path_get_points,@function
gimp_path_get_points:                   # @gimp_path_get_points
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
	subq	$88, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-60(%rbp), %r9
	movl	$13, %r10d
	movl	$4, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -64(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-56(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	-40(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$3, %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB4_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_path_get_points, .Lfunc_end4-gimp_path_get_points
	.cfi_endproc

	.globl	gimp_path_set_points
	.align	16, 0x90
	.type	gimp_path_set_points,@function
gimp_path_set_points:                   # @gimp_path_set_points
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
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-76(%rbp), %r9
	movl	$13, %r10d
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movl	$8, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %edi
	movq	-64(%rbp), %r8
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movq	-96(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$8, 32(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -116(%rbp)       # 4-byte Spill
	movl	%ebx, -120(%rbp)        # 4-byte Spill
	movl	%r14d, -124(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_path_set_points, .Lfunc_end5-gimp_path_set_points
	.cfi_endproc

	.globl	gimp_path_stroke_current
	.align	16, 0x90
	.type	gimp_path_stroke_current,@function
gimp_path_stroke_current:               # @gimp_path_stroke_current
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_path_stroke_current, .Lfunc_end6-gimp_path_stroke_current
	.cfi_endproc

	.globl	gimp_path_get_point_at_dist
	.align	16, 0x90
	.type	gimp_path_get_point_at_dist,@function
gimp_path_get_point_at_dist:            # @gimp_path_get_point_at_dist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$13, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -48(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_path_get_point_at_dist, .Lfunc_end7-gimp_path_get_point_at_dist
	.cfi_endproc

	.globl	gimp_path_get_tattoo
	.align	16, 0x90
	.type	gimp_path_get_tattoo,@function
gimp_path_get_tattoo:                   # @gimp_path_get_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_path_get_tattoo, .Lfunc_end8-gimp_path_get_tattoo
	.cfi_endproc

	.globl	gimp_path_set_tattoo
	.align	16, 0x90
	.type	gimp_path_set_tattoo,@function
gimp_path_set_tattoo:                   # @gimp_path_set_tattoo
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp35:
	.cfi_offset %rbx, -32
.Ltmp36:
	.cfi_offset %r14, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$13, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_path_set_tattoo, .Lfunc_end9-gimp_path_set_tattoo
	.cfi_endproc

	.globl	gimp_get_path_by_tattoo
	.align	16, 0x90
	.type	gimp_get_path_by_tattoo,@function
gimp_get_path_by_tattoo:                # @gimp_get_path_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	-36(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_get_path_by_tattoo, .Lfunc_end10-gimp_get_path_by_tattoo
	.cfi_endproc

	.globl	gimp_path_get_locked
	.align	16, 0x90
	.type	gimp_path_get_locked,@function
gimp_path_get_locked:                   # @gimp_path_get_locked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_path_get_locked, .Lfunc_end11-gimp_path_get_locked
	.cfi_endproc

	.globl	gimp_path_set_locked
	.align	16, 0x90
	.type	gimp_path_set_locked,@function
gimp_path_set_locked:                   # @gimp_path_set_locked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$13, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_path_set_locked, .Lfunc_end12-gimp_path_set_locked
	.cfi_endproc

	.globl	gimp_path_to_selection
	.align	16, 0x90
	.type	gimp_path_to_selection,@function
gimp_path_to_selection:                 # @gimp_path_to_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-92(%rbp), %r9
	movl	$13, %r10d
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movl	$3, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %edi
	movl	-60(%rbp), %r8d
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movq	-112(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movl	-116(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-120(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$3, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$2, %al
	movl	%r15d, -124(%rbp)       # 4-byte Spill
	movl	%r14d, -128(%rbp)       # 4-byte Spill
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -96(%rbp)
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_path_to_selection, .Lfunc_end13-gimp_path_to_selection
	.cfi_endproc

	.globl	gimp_path_import
	.align	16, 0x90
	.type	gimp_path_import,@function
gimp_path_import:                       # @gimp_path_import
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
	leaq	.L.str.14(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$13, %r9d
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -80(%rbp)         # 4-byte Spill
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_path_import, .Lfunc_end14-gimp_path_import
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-path-list"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-path-get-current"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-path-set-current"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-path-delete"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-path-get-points"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-path-set-points"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-path-stroke-current"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-path-get-point-at-dist"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-path-get-tattoo"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-path-set-tattoo"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-get-path-by-tattoo"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-path-get-locked"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-path-set-locked"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-path-to-selection"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-path-import"
	.size	.L.str.14, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
