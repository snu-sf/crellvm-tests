	.text
	.file	"gimppalette_pdb.bc"
	.globl	gimp_palette_new
	.align	16, 0x90
	.type	gimp_palette_new,@function
gimp_palette_new:                       # @gimp_palette_new
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
	leaq	.L.str(%rip), %rax
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
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_new, .Lfunc_end0-gimp_palette_new
	.cfi_endproc

	.globl	gimp_palette_duplicate
	.align	16, 0x90
	.type	gimp_palette_duplicate,@function
gimp_palette_duplicate:                 # @gimp_palette_duplicate
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
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rcx
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
	.size	gimp_palette_duplicate, .Lfunc_end1-gimp_palette_duplicate
	.cfi_endproc

	.globl	gimp_palette_rename
	.align	16, 0x90
	.type	gimp_palette_rename,@function
gimp_palette_rename:                    # @gimp_palette_rename
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
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -40(%rbp)
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_rename, .Lfunc_end2-gimp_palette_rename
	.cfi_endproc

	.globl	gimp_palette_delete
	.align	16, 0x90
	.type	gimp_palette_delete,@function
gimp_palette_delete:                    # @gimp_palette_delete
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
	leaq	.L.str.3(%rip), %rax
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
.Lfunc_end3:
	.size	gimp_palette_delete, .Lfunc_end3-gimp_palette_delete
	.cfi_endproc

	.globl	gimp_palette_is_editable
	.align	16, 0x90
	.type	gimp_palette_is_editable,@function
gimp_palette_is_editable:               # @gimp_palette_is_editable
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
	subq	$32, %rsp
	leaq	.L.str.4(%rip), %rax
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
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_is_editable, .Lfunc_end4-gimp_palette_is_editable
	.cfi_endproc

	.globl	gimp_palette_get_info
	.align	16, 0x90
	.type	gimp_palette_get_info,@function
gimp_palette_get_info:                  # @gimp_palette_get_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_get_info, .Lfunc_end5-gimp_palette_get_info
	.cfi_endproc

	.globl	gimp_palette_get_colors
	.align	16, 0x90
	.type	gimp_palette_get_colors,@function
gimp_palette_get_colors:                # @gimp_palette_get_colors
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
	leaq	.L.str.6(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$32, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$5, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_palette_get_colors, .Lfunc_end6-gimp_palette_get_colors
	.cfi_endproc

	.globl	gimp_palette_get_columns
	.align	16, 0x90
	.type	gimp_palette_get_columns,@function
gimp_palette_get_columns:               # @gimp_palette_get_columns
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
	leaq	.L.str.7(%rip), %rax
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
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_palette_get_columns, .Lfunc_end7-gimp_palette_get_columns
	.cfi_endproc

	.globl	gimp_palette_set_columns
	.align	16, 0x90
	.type	gimp_palette_set_columns,@function
gimp_palette_set_columns:               # @gimp_palette_set_columns
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
	subq	$64, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
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
.Lfunc_end8:
	.size	gimp_palette_set_columns, .Lfunc_end8-gimp_palette_set_columns
	.cfi_endproc

	.globl	gimp_palette_add_entry
	.align	16, 0x90
	.type	gimp_palette_add_entry,@function
gimp_palette_add_entry:                 # @gimp_palette_add_entry
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$4, %r9d
	movl	$10, %r10d
	movl	$22, %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$1, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %r8d
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	$10, (%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	%edx, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB9_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_palette_add_entry, .Lfunc_end9-gimp_palette_add_entry
	.cfi_endproc

	.globl	gimp_palette_delete_entry
	.align	16, 0x90
	.type	gimp_palette_delete_entry,@function
gimp_palette_delete_entry:              # @gimp_palette_delete_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
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
	.size	gimp_palette_delete_entry, .Lfunc_end10-gimp_palette_delete_entry
	.cfi_endproc

	.globl	gimp_palette_entry_get_color
	.align	16, 0x90
	.type	gimp_palette_entry_get_color,@function
gimp_palette_entry_get_color:           # @gimp_palette_entry_get_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB11_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_palette_entry_get_color, .Lfunc_end11-gimp_palette_entry_get_color
	.cfi_endproc

	.globl	gimp_palette_entry_set_color
	.align	16, 0x90
	.type	gimp_palette_entry_set_color,@function
gimp_palette_entry_set_color:           # @gimp_palette_entry_set_color
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp40:
	.cfi_offset %rbx, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$10, %r10d
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
	movl	$10, (%rsp)
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
.Lfunc_end12:
	.size	gimp_palette_entry_set_color, .Lfunc_end12-gimp_palette_entry_set_color
	.cfi_endproc

	.globl	gimp_palette_entry_get_name
	.align	16, 0x90
	.type	gimp_palette_entry_get_name,@function
gimp_palette_entry_get_name:            # @gimp_palette_entry_get_name
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
	subq	$80, %rsp
	leaq	.L.str.13(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$22, (%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_palette_entry_get_name, .Lfunc_end13-gimp_palette_entry_get_name
	.cfi_endproc

	.globl	gimp_palette_entry_set_name
	.align	16, 0x90
	.type	gimp_palette_entry_set_name,@function
gimp_palette_entry_set_name:            # @gimp_palette_entry_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	.L.str.14(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%r9d, %r8d
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	$4, (%rsp)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
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
.Lfunc_end14:
	.size	gimp_palette_entry_set_name, .Lfunc_end14-gimp_palette_entry_set_name
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-palette-new"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-palette-duplicate"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-palette-rename"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-palette-delete"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-palette-is-editable"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-palette-get-info"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-palette-get-colors"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-palette-get-columns"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-palette-set-columns"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-palette-add-entry"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-palette-delete-entry"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-palette-entry-get-color"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-palette-entry-set-color"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-palette-entry-get-name"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-palette-entry-set-name"
	.size	.L.str.14, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
