	.text
	.file	"gimpunitcache.bc"
	.hidden	_gimp_unit_cache_get_number_of_units
	.globl	_gimp_unit_cache_get_number_of_units
	.align	16, 0x90
	.type	_gimp_unit_cache_get_number_of_units,@function
_gimp_unit_cache_get_number_of_units:   # @_gimp_unit_cache_get_number_of_units
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
	callq	_gimp_unit_get_number_of_units
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_gimp_unit_cache_get_number_of_units, .Lfunc_end0-_gimp_unit_cache_get_number_of_units
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_number_of_built_in_units
	.globl	_gimp_unit_cache_get_number_of_built_in_units
	.align	16, 0x90
	.type	_gimp_unit_cache_get_number_of_built_in_units,@function
_gimp_unit_cache_get_number_of_built_in_units: # @_gimp_unit_cache_get_number_of_built_in_units
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
	movl	$5, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_gimp_unit_cache_get_number_of_built_in_units, .Lfunc_end1-_gimp_unit_cache_get_number_of_built_in_units
	.cfi_endproc

	.hidden	_gimp_unit_cache_new
	.globl	_gimp_unit_cache_new
	.align	16, 0x90
	.type	_gimp_unit_cache_new,@function
_gimp_unit_cache_new:                   # @_gimp_unit_cache_new
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	_gimp_unit_new
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_gimp_unit_cache_new, .Lfunc_end2-_gimp_unit_cache_new
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_deletion_flag
	.globl	_gimp_unit_cache_get_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_cache_get_deletion_flag,@function
_gimp_unit_cache_get_deletion_flag:     # @_gimp_unit_cache_get_deletion_flag
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$5, -8(%rbp)
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movl	-8(%rbp), %edi
	callq	_gimp_unit_get_deletion_flag
	movl	%eax, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_gimp_unit_cache_get_deletion_flag, .Lfunc_end3-_gimp_unit_cache_get_deletion_flag
	.cfi_endproc

	.hidden	_gimp_unit_cache_set_deletion_flag
	.globl	_gimp_unit_cache_set_deletion_flag
	.align	16, 0x90
	.type	_gimp_unit_cache_set_deletion_flag,@function
_gimp_unit_cache_set_deletion_flag:     # @_gimp_unit_cache_set_deletion_flag
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$5, -4(%rbp)
	jae	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	_gimp_unit_set_deletion_flag
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB4_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_gimp_unit_cache_set_deletion_flag, .Lfunc_end4-_gimp_unit_cache_set_deletion_flag
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.hidden	_gimp_unit_cache_get_factor
	.globl	_gimp_unit_cache_get_factor
	.align	16, 0x90
	.type	_gimp_unit_cache_get_factor,@function
_gimp_unit_cache_get_factor:            # @_gimp_unit_cache_get_factor
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$1, -12(%rbp)
	jb	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_unit_cache_get_factor(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_10
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB5_7
# BB#6:                                 # %if.then.2
	movsd	gimp_unit_percent(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_10
.LBB5_7:                                # %if.end.3
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB5_9
# BB#8:                                 # %if.then.4
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB5_10
.LBB5_9:                                # %if.end.5
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB5_10:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_gimp_unit_cache_get_factor, .Lfunc_end5-_gimp_unit_cache_get_factor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_init,@function
gimp_unit_init:                         # @gimp_unit_init
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	cmpl	gimp_units_initialized(%rip), %edi
	jae	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB6_9
.LBB6_2:                                # %if.end
	callq	_gimp_unit_get_number_of_units
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jb	.LBB6_4
# BB#3:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB6_9
.LBB6_4:                                # %if.end.3
	movl	$56, %eax
	movl	%eax, %edx
	movq	gimp_unit_defs(%rip), %rcx
	movslq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_realloc_n@PLT
	movq	%rax, gimp_unit_defs(%rip)
	movl	gimp_units_initialized(%rip), %r8d
	movl	%r8d, -12(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-12(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	gimp_unit_defs(%rip), %rax
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_def_init
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
	movl	-16(%rbp), %eax
	movl	%eax, gimp_units_initialized(%rip)
	movl	$1, -4(%rbp)
.LBB6_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_unit_init, .Lfunc_end6-gimp_unit_init
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_digits
	.globl	_gimp_unit_cache_get_digits
	.align	16, 0x90
	.type	_gimp_unit_cache_get_digits,@function
_gimp_unit_cache_get_digits:            # @_gimp_unit_cache_get_digits
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpl	$1, -8(%rbp)
	jb	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__._gimp_unit_cache_get_digits(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_10
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpl	$65536, -8(%rbp)        # imm = 0x10000
	jne	.LBB7_7
# BB#6:                                 # %if.then.2
	movl	gimp_unit_percent+8(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_10
.LBB7_7:                                # %if.end.3
	movl	-8(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB7_9
# BB#8:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.end.5
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -4(%rbp)
.LBB7_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_gimp_unit_cache_get_digits, .Lfunc_end7-_gimp_unit_cache_get_digits
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_identifier
	.globl	_gimp_unit_cache_get_identifier
	.align	16, 0x90
	.type	_gimp_unit_cache_get_identifier,@function
_gimp_unit_cache_get_identifier:        # @_gimp_unit_cache_get_identifier
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	gimp_unit_percent+16(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -8(%rbp)
.LBB8_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gimp_unit_cache_get_identifier, .Lfunc_end8-_gimp_unit_cache_get_identifier
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_symbol
	.globl	_gimp_unit_cache_get_symbol
	.align	16, 0x90
	.type	_gimp_unit_cache_get_symbol,@function
_gimp_unit_cache_get_symbol:            # @_gimp_unit_cache_get_symbol
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	gimp_unit_percent+24(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.end.2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -8(%rbp)
.LBB9_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_gimp_unit_cache_get_symbol, .Lfunc_end9-_gimp_unit_cache_get_symbol
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_abbreviation
	.globl	_gimp_unit_cache_get_abbreviation
	.align	16, 0x90
	.type	_gimp_unit_cache_get_abbreviation,@function
_gimp_unit_cache_get_abbreviation:      # @_gimp_unit_cache_get_abbreviation
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	gimp_unit_percent+32(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB10_4
# BB#3:                                 # %if.then.1
	movq	$0, -8(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.2
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -8(%rbp)
.LBB10_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_gimp_unit_cache_get_abbreviation, .Lfunc_end10-_gimp_unit_cache_get_abbreviation
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_singular
	.globl	_gimp_unit_cache_get_singular
	.align	16, 0x90
	.type	_gimp_unit_cache_get_singular,@function
_gimp_unit_cache_get_singular:          # @_gimp_unit_cache_get_singular
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB11_2
# BB#1:                                 # %if.then
	leaq	.L.str.2(%rip), %rdi
	movq	gimp_unit_percent+40(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB11_4
# BB#3:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.3
	leaq	.L.str.2(%rip), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movq	40(%rcx), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
.LBB11_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_gimp_unit_cache_get_singular, .Lfunc_end11-_gimp_unit_cache_get_singular
	.cfi_endproc

	.hidden	_gimp_unit_cache_get_plural
	.globl	_gimp_unit_cache_get_plural
	.align	16, 0x90
	.type	_gimp_unit_cache_get_plural,@function
_gimp_unit_cache_get_plural:            # @_gimp_unit_cache_get_plural
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB12_2
# BB#1:                                 # %if.then
	leaq	.L.str.2(%rip), %rdi
	movq	gimp_unit_percent+48(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_unit_init
	cmpl	$0, %eax
	jne	.LBB12_4
# BB#3:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.end.3
	leaq	.L.str.2(%rip), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	imulq	$56, %rcx, %rcx
	addq	gimp_unit_defs(%rip), %rcx
	movq	48(%rcx), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
.LBB12_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_gimp_unit_cache_get_plural, .Lfunc_end12-_gimp_unit_cache_get_plural
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unit_def_init,@function
gimp_unit_def_init:                     # @gimp_unit_def_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_factor
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_digits
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_identifier
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_symbol
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_abbreviation
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_singular
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-12(%rbp), %edi
	callq	_gimp_unit_get_plural
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_unit_def_init, .Lfunc_end13-gimp_unit_def_init
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__._gimp_unit_cache_get_factor,@object # @__func__._gimp_unit_cache_get_factor
.L__func__._gimp_unit_cache_get_factor:
	.asciz	"_gimp_unit_cache_get_factor"
	.size	.L__func__._gimp_unit_cache_get_factor, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unit >= GIMP_UNIT_INCH"
	.size	.L.str.1, 23

	.type	gimp_unit_percent,@object # @gimp_unit_percent
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_unit_percent:
	.quad	0                       # double 0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.4
	.quad	.L.str.3
	.quad	.L.str.3
	.size	gimp_unit_percent, 56

	.type	gimp_unit_defs,@object  # @gimp_unit_defs
	.local	gimp_unit_defs
	.comm	gimp_unit_defs,8,8
	.type	.L__func__._gimp_unit_cache_get_digits,@object # @__func__._gimp_unit_cache_get_digits
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__._gimp_unit_cache_get_digits:
	.asciz	"_gimp_unit_cache_get_digits"
	.size	.L__func__._gimp_unit_cache_get_digits, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp20-libgimp"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"percent"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%"
	.size	.L.str.4, 2

	.type	gimp_units_initialized,@object # @gimp_units_initialized
	.local	gimp_units_initialized
	.comm	gimp_units_initialized,4,4
	.hidden	_gimp_unit_get_number_of_units
	.hidden	_gimp_unit_new
	.hidden	_gimp_unit_get_deletion_flag
	.hidden	_gimp_unit_set_deletion_flag
	.hidden	_gimp_unit_get_factor
	.hidden	_gimp_unit_get_digits
	.hidden	_gimp_unit_get_identifier
	.hidden	_gimp_unit_get_symbol
	.hidden	_gimp_unit_get_abbreviation
	.hidden	_gimp_unit_get_singular
	.hidden	_gimp_unit_get_plural

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
