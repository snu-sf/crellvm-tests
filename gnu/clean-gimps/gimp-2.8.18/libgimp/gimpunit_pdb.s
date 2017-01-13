	.text
	.file	"gimpunit_pdb.bc"
	.hidden	_gimp_unit_get_number_of_units
	.globl	_gimp_unit_get_number_of_units
	.align	16, 0x90
	.type	_gimp_unit_get_number_of_units,@function
_gimp_unit_get_number_of_units:         # @_gimp_unit_get_number_of_units
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
	leaq	.L.str(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$5, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_unit_get_number_of_units, .Lfunc_end0-_gimp_unit_get_number_of_units
	.cfi_endproc

	.hidden	_gimp_unit_get_number_of_built_in_units
	.globl	_gimp_unit_get_number_of_built_in_units
	.align	16, 0x90
	.type	_gimp_unit_get_number_of_built_in_units,@function
_gimp_unit_get_number_of_built_in_units: # @_gimp_unit_get_number_of_built_in_units
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
	leaq	.L.str.1(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$5, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gimp_unit_get_number_of_built_in_units, .Lfunc_end1-_gimp_unit_get_number_of_built_in_units
	.cfi_endproc

	.hidden	_gimp_unit_new
	.globl	_gimp_unit_new
	.align	16, 0x90
	.type	_gimp_unit_new,@function
_gimp_unit_new:                         # @_gimp_unit_new
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-92(%rbp), %r10
	movl	$4, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movq	%rdi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$1, -96(%rbp)
	movq	-32(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movl	%r14d, %r9d
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$4, 8(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	$4, 40(%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	$4, 56(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$1, %al
	movl	%r15d, -140(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB2_2:                                # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gimp_unit_new, .Lfunc_end2-_gimp_unit_new
	.cfi_endproc

	.hidden	_gimp_unit_get_deletion_flag
	.globl	_gimp_unit_get_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_get_deletion_flag,@function
_gimp_unit_get_deletion_flag:           # @_gimp_unit_get_deletion_flag
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
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
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
	.size	_gimp_unit_get_deletion_flag, .Lfunc_end3-_gimp_unit_get_deletion_flag
	.cfi_endproc

	.hidden	_gimp_unit_set_deletion_flag
	.globl	_gimp_unit_set_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_set_deletion_flag,@function
_gimp_unit_set_deletion_flag:           # @_gimp_unit_set_deletion_flag
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
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rcx
	xorl	%edx, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %r9d
	movq	%rax, %rdi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -32(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	-32(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_unit_set_deletion_flag, .Lfunc_end4-_gimp_unit_set_deletion_flag
	.cfi_endproc

	.hidden	_gimp_unit_get_identifier
	.globl	_gimp_unit_get_identifier
	.align	16, 0x90
	.type	_gimp_unit_get_identifier,@function
_gimp_unit_get_identifier:              # @_gimp_unit_get_identifier
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
	subq	$32, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
	.size	_gimp_unit_get_identifier, .Lfunc_end5-_gimp_unit_get_identifier
	.cfi_endproc

	.hidden	_gimp_unit_get_factor
	.globl	_gimp_unit_get_factor
	.align	16, 0x90
	.type	_gimp_unit_get_factor,@function
_gimp_unit_get_factor:                  # @_gimp_unit_get_factor
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
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_unit_get_factor, .Lfunc_end6-_gimp_unit_get_factor
	.cfi_endproc

	.hidden	_gimp_unit_get_digits
	.globl	_gimp_unit_get_digits
	.align	16, 0x90
	.type	_gimp_unit_get_digits,@function
_gimp_unit_get_digits:                  # @_gimp_unit_get_digits
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
	subq	$32, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
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
	.size	_gimp_unit_get_digits, .Lfunc_end7-_gimp_unit_get_digits
	.cfi_endproc

	.hidden	_gimp_unit_get_symbol
	.globl	_gimp_unit_get_symbol
	.align	16, 0x90
	.type	_gimp_unit_get_symbol,@function
_gimp_unit_get_symbol:                  # @_gimp_unit_get_symbol
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
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gimp_unit_get_symbol, .Lfunc_end8-_gimp_unit_get_symbol
	.cfi_endproc

	.hidden	_gimp_unit_get_abbreviation
	.globl	_gimp_unit_get_abbreviation
	.align	16, 0x90
	.type	_gimp_unit_get_abbreviation,@function
_gimp_unit_get_abbreviation:            # @_gimp_unit_get_abbreviation
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
	subq	$32, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_unit_get_abbreviation, .Lfunc_end9-_gimp_unit_get_abbreviation
	.cfi_endproc

	.hidden	_gimp_unit_get_singular
	.globl	_gimp_unit_get_singular
	.align	16, 0x90
	.type	_gimp_unit_get_singular,@function
_gimp_unit_get_singular:                # @_gimp_unit_get_singular
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
	subq	$32, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_gimp_unit_get_singular, .Lfunc_end10-_gimp_unit_get_singular
	.cfi_endproc

	.hidden	_gimp_unit_get_plural
	.globl	_gimp_unit_get_plural
	.align	16, 0x90
	.type	_gimp_unit_get_plural,@function
_gimp_unit_get_plural:                  # @_gimp_unit_get_plural
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
	subq	$32, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-20(%rbp), %rsi
	xorl	%edx, %edx
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
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gimp_unit_get_plural, .Lfunc_end11-_gimp_unit_get_plural
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-unit-get-number-of-units"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-unit-get-number-of-built-in-units"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-unit-new"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-unit-get-deletion-flag"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-unit-set-deletion-flag"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-unit-get-identifier"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-unit-get-factor"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-unit-get-digits"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-unit-get-symbol"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-unit-get-abbreviation"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-unit-get-singular"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-unit-get-plural"
	.size	.L.str.11, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
