	.text
	.file	"gimpproceduraldb_pdb.bc"
	.globl	gimp_procedural_db_temp_name
	.align	16, 0x90
	.type	gimp_procedural_db_temp_name,@function
gimp_procedural_db_temp_name:           # @gimp_procedural_db_temp_name
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
	subq	$32, %rsp
	leaq	.L.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movq	$0, -24(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_procedural_db_temp_name, .Lfunc_end0-gimp_procedural_db_temp_name
	.cfi_endproc

	.globl	gimp_procedural_db_dump
	.align	16, 0x90
	.type	gimp_procedural_db_dump,@function
gimp_procedural_db_dump:                # @gimp_procedural_db_dump
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
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_procedural_db_dump, .Lfunc_end1-gimp_procedural_db_dump
	.cfi_endproc

	.globl	gimp_procedural_db_query
	.align	16, 0x90
	.type	gimp_procedural_db_query,@function
gimp_procedural_db_query:               # @gimp_procedural_db_query
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	leaq	.L.str.2(%rip), %rbx
	leaq	-124(%rbp), %r14
	movl	$4, %r15d
	movl	$22, %r12d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	$1, -128(%rbp)
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %r8
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%r15d, %edx
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movl	%r15d, %r8d
	movl	$4, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$4, 48(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movl	$4, 64(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 72(%rsp)
	movl	$22, 80(%rsp)
	movb	$0, %al
	movl	%r12d, -172(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %edx
	movl	%edx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -132(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movslq	-132(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-132(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_procedural_db_query, .Lfunc_end2-gimp_procedural_db_query
	.cfi_endproc

	.globl	gimp_procedural_db_proc_exists
	.align	16, 0x90
	.type	gimp_procedural_db_proc_exists,@function
gimp_procedural_db_proc_exists:         # @gimp_procedural_db_proc_exists
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_procedural_db_proc_exists, .Lfunc_end3-gimp_procedural_db_proc_exists
	.cfi_endproc

	.hidden	_gimp_procedural_db_proc_info
	.globl	_gimp_procedural_db_proc_info
	.align	16, 0x90
	.type	_gimp_procedural_db_proc_info,@function
_gimp_procedural_db_proc_info:          # @_gimp_procedural_db_proc_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
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
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	leaq	.L.str.4(%rip), %rbx
	leaq	-124(%rbp), %r14
	movl	$4, %r15d
	movl	$22, %r12d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	$1, -128(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	movl	%r12d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %edx
	movl	%edx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-120(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_strdup@PLT
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-120(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_strdup@PLT
	movq	-72(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-120(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_strdup@PLT
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-120(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_strdup@PLT
	movq	-88(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-120(%rbp), %rax
	movl	248(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-120(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-120(%rbp), %rax
	movl	328(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, (%rax)
.LBB4_2:                                # %if.end
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_procedural_db_proc_info, .Lfunc_end4-_gimp_procedural_db_proc_info
	.cfi_endproc

	.globl	gimp_procedural_db_proc_arg
	.align	16, 0x90
	.type	gimp_procedural_db_proc_arg,@function
gimp_procedural_db_proc_arg:            # @gimp_procedural_db_proc_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp28:
	.cfi_offset %rbx, -32
.Ltmp29:
	.cfi_offset %r14, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-68(%rbp), %r9
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	$1, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%ebx, -80(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_strdup@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-64(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB5_2:                                # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_procedural_db_proc_arg, .Lfunc_end5-gimp_procedural_db_proc_arg
	.cfi_endproc

	.globl	gimp_procedural_db_proc_val
	.align	16, 0x90
	.type	gimp_procedural_db_proc_val,@function
gimp_procedural_db_proc_val:            # @gimp_procedural_db_proc_val
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-68(%rbp), %r9
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	$1, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%ebx, -80(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_strdup@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-64(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB6_2:                                # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_procedural_db_proc_val, .Lfunc_end6-gimp_procedural_db_proc_val
	.cfi_endproc

	.hidden	_gimp_procedural_db_get_data
	.globl	_gimp_procedural_db_get_data
	.align	16, 0x90
	.type	_gimp_procedural_db_get_data,@function
_gimp_procedural_db_get_data:           # @_gimp_procedural_db_get_data
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
	subq	$48, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_gimp_procedural_db_get_data, .Lfunc_end7-_gimp_procedural_db_get_data
	.cfi_endproc

	.globl	gimp_procedural_db_get_data_size
	.align	16, 0x90
	.type	gimp_procedural_db_get_data_size,@function
gimp_procedural_db_get_data_size:       # @gimp_procedural_db_get_data_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_procedural_db_get_data_size, .Lfunc_end8-gimp_procedural_db_get_data_size
	.cfi_endproc

	.hidden	_gimp_procedural_db_set_data
	.globl	_gimp_procedural_db_set_data
	.align	16, 0x90
	.type	_gimp_procedural_db_set_data,@function
_gimp_procedural_db_set_data:           # @_gimp_procedural_db_set_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$7, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$1, -48(%rbp)
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$7, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_procedural_db_set_data, .Lfunc_end9-_gimp_procedural_db_set_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-procedural-db-temp-name"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-procedural-db-dump"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-procedural-db-query"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-procedural-db-proc-exists"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-procedural-db-proc-info"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-procedural-db-proc-arg"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-procedural-db-proc-val"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-procedural-db-get-data"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-procedural-db-get-data-size"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-procedural-db-set-data"
	.size	.L.str.9, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
