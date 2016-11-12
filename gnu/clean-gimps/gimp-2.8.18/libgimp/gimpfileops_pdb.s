	.text
	.file	"gimpfileops_pdb.bc"
	.globl	gimp_file_load
	.align	16, 0x90
	.type	gimp_file_load,@function
gimp_file_load:                         # @gimp_file_load
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
	subq	$96, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-36(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$-1, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$4, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_file_load, .Lfunc_end0-gimp_file_load
	.cfi_endproc

	.globl	gimp_file_load_layer
	.align	16, 0x90
	.type	gimp_file_load_layer,@function
gimp_file_load_layer:                   # @gimp_file_load_layer
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
	subq	$80, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-28(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	$13, %r9d
	movl	$4, %r10d
	movl	$22, %r11d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-36(%rbp), %r9d         # 4-byte Reload
	movl	$4, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	movl	%r11d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_file_load_layer, .Lfunc_end1-gimp_file_load_layer
	.cfi_endproc

	.globl	gimp_file_load_layers
	.align	16, 0x90
	.type	gimp_file_load_layers,@function
gimp_file_load_layers:                  # @gimp_file_load_layers
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-44(%rbp), %r8
	xorl	%r9d, %r9d
	movl	$13, %r10d
	movl	$4, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$4, (%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB2_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-56(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_file_load_layers, .Lfunc_end2-gimp_file_load_layers
	.cfi_endproc

	.globl	gimp_file_save
	.align	16, 0x90
	.type	gimp_file_save,@function
gimp_file_save:                         # @gimp_file_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-84(%rbp), %r9
	xorl	%r10d, %r10d
	movl	$13, %r11d
	movl	$16, %ebx
	movl	$4, %r14d
	movl	$22, %r15d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r12
	movq	%rax, %rdi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-96(%rbp), %r9d         # 4-byte Reload
	movl	$16, (%rsp)
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	%r12, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -108(%rbp)       # 4-byte Spill
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_file_save, .Lfunc_end3-gimp_file_save
	.cfi_endproc

	.globl	gimp_file_save_thumbnail
	.align	16, 0x90
	.type	gimp_file_save_thumbnail,@function
gimp_file_save_thumbnail:               # @gimp_file_save_thumbnail
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
	subq	$64, %rsp
	leaq	.L.str.4(%rip), %rax
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
.Lfunc_end4:
	.size	gimp_file_save_thumbnail, .Lfunc_end4-gimp_file_save_thumbnail
	.cfi_endproc

	.globl	gimp_temp_name
	.align	16, 0x90
	.type	gimp_temp_name,@function
gimp_temp_name:                         # @gimp_temp_name
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
	subq	$32, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_temp_name, .Lfunc_end5-gimp_temp_name
	.cfi_endproc

	.globl	gimp_register_magic_load_handler
	.align	16, 0x90
	.type	gimp_register_magic_load_handler,@function
gimp_register_magic_load_handler:       # @gimp_register_magic_load_handler
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
	subq	$128, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$4, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$4, (%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_register_magic_load_handler, .Lfunc_end6-gimp_register_magic_load_handler
	.cfi_endproc

	.globl	gimp_register_load_handler
	.align	16, 0x90
	.type	gimp_register_load_handler,@function
gimp_register_load_handler:             # @gimp_register_load_handler
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
	subq	$96, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$4, (%rsp)
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_register_load_handler, .Lfunc_end7-gimp_register_load_handler
	.cfi_endproc

	.globl	gimp_register_save_handler
	.align	16, 0x90
	.type	gimp_register_save_handler,@function
gimp_register_save_handler:             # @gimp_register_save_handler
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
	subq	$96, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$4, (%rsp)
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_register_save_handler, .Lfunc_end8-gimp_register_save_handler
	.cfi_endproc

	.globl	gimp_register_file_handler_mime
	.align	16, 0x90
	.type	gimp_register_file_handler_mime,@function
gimp_register_file_handler_mime:        # @gimp_register_file_handler_mime
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
	subq	$64, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_register_file_handler_mime, .Lfunc_end9-gimp_register_file_handler_mime
	.cfi_endproc

	.globl	gimp_register_thumbnail_loader
	.align	16, 0x90
	.type	gimp_register_thumbnail_loader,@function
gimp_register_thumbnail_loader:         # @gimp_register_thumbnail_loader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_register_thumbnail_loader, .Lfunc_end10-gimp_register_thumbnail_loader
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-file-load"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-file-load-layer"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-file-load-layers"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-file-save"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-file-save-thumbnail"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-temp-name"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-register-magic-load-handler"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-register-load-handler"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-register-save-handler"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-register-file-handler-mime"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-register-thumbnail-loader"
	.size	.L.str.10, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
