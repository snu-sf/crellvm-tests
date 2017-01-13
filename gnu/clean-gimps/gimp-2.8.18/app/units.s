	.text
	.file	"units.bc"
	.globl	units_init
	.align	16, 0x90
	.type	units_init,@function
units_init:                             # @units_init
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
	subq	$168, %rsp
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
	movq	%rdi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.units_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, the_unit_gimp
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.units_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	leaq	-176(%rbp), %rdi
	movabsq	$units_unit_get_plural, %rax
	movabsq	$units_unit_get_singular, %rcx
	movabsq	$units_unit_get_abbreviation, %rdx
	movabsq	$units_unit_get_symbol, %rsi
	movabsq	$units_unit_get_identifier, %r8
	movabsq	$units_unit_get_digits, %r9
	movabsq	$units_unit_get_factor, %r10
	movabsq	$units_unit_set_deletion_flag, %r11
	movabsq	$units_unit_get_deletion_flag, %rbx
	movabsq	$units_unit_new, %r14
	movabsq	$units_get_number_of_built_in_units, %r15
	movabsq	$units_get_number_of_units, %r12
	movq	-48(%rbp), %r13
	movq	%r13, the_unit_gimp
	movq	%r12, -176(%rbp)
	movq	%r15, -168(%rbp)
	movq	%r14, -160(%rbp)
	movq	%rbx, -152(%rbp)
	movq	%r11, -144(%rbp)
	movq	%r10, -136(%rbp)
	movq	%r9, -128(%rbp)
	movq	%r8, -120(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rax, -88(%rbp)
	callq	gimp_base_init
.LBB0_18:                               # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	units_init, .Lfunc_end0-units_init
	.cfi_endproc

	.align	16, 0x90
	.type	units_get_number_of_units,@function
units_get_number_of_units:              # @units_get_number_of_units
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
	movq	the_unit_gimp, %rdi
	callq	_gimp_unit_get_number_of_units
	popq	%rbp
	retq
.Lfunc_end1:
	.size	units_get_number_of_units, .Lfunc_end1-units_get_number_of_units
	.cfi_endproc

	.align	16, 0x90
	.type	units_get_number_of_built_in_units,@function
units_get_number_of_built_in_units:     # @units_get_number_of_built_in_units
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	movl	$5, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	units_get_number_of_built_in_units, .Lfunc_end2-units_get_number_of_built_in_units
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_new,@function
units_unit_new:                         # @units_unit_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	the_unit_gimp, %rdi
	movq	-8(%rbp), %rsi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	%rax, (%rsp)
	callq	_gimp_unit_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	units_unit_new, .Lfunc_end3-units_unit_new
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_deletion_flag,@function
units_unit_get_deletion_flag:           # @units_unit_get_deletion_flag
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_deletion_flag
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	units_unit_get_deletion_flag, .Lfunc_end4-units_unit_get_deletion_flag
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_set_deletion_flag,@function
units_unit_set_deletion_flag:           # @units_unit_set_deletion_flag
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	_gimp_unit_set_deletion_flag
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	units_unit_set_deletion_flag, .Lfunc_end5-units_unit_set_deletion_flag
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_factor,@function
units_unit_get_factor:                  # @units_unit_get_factor
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_factor
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	units_unit_get_factor, .Lfunc_end6-units_unit_get_factor
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_digits,@function
units_unit_get_digits:                  # @units_unit_get_digits
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_digits
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	units_unit_get_digits, .Lfunc_end7-units_unit_get_digits
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_identifier,@function
units_unit_get_identifier:              # @units_unit_get_identifier
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_identifier
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	units_unit_get_identifier, .Lfunc_end8-units_unit_get_identifier
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_symbol,@function
units_unit_get_symbol:                  # @units_unit_get_symbol
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	units_unit_get_symbol, .Lfunc_end9-units_unit_get_symbol
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_abbreviation,@function
units_unit_get_abbreviation:            # @units_unit_get_abbreviation
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
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_abbreviation
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	units_unit_get_abbreviation, .Lfunc_end10-units_unit_get_abbreviation
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_singular,@function
units_unit_get_singular:                # @units_unit_get_singular
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_singular
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	units_unit_get_singular, .Lfunc_end11-units_unit_get_singular
	.cfi_endproc

	.align	16, 0x90
	.type	units_unit_get_plural,@function
units_unit_get_plural:                  # @units_unit_get_plural
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	the_unit_gimp, %rdi
	movl	-4(%rbp), %esi
	callq	_gimp_unit_get_plural
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	units_unit_get_plural, .Lfunc_end12-units_unit_get_plural
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp"
	.size	.L.str, 5

	.type	.L__func__.units_init,@object # @__func__.units_init
.L__func__.units_init:
	.asciz	"units_init"
	.size	.L__func__.units_init, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	the_unit_gimp,@object   # @the_unit_gimp
	.local	the_unit_gimp
	.comm	the_unit_gimp,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"the_unit_gimp == NULL"
	.size	.L.str.2, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
