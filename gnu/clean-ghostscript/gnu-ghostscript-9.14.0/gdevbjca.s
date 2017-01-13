	.text
	.file	"gdevbjca.bc"
	.globl	bjc_put_LF
	.align	16, 0x90
	.type	bjc_put_LF,@function
bjc_put_LF:                             # @bjc_put_LF
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$10, %edi
	movq	%rax, %rsi
	jmp	fputc                   # TAILCALL
.Lfunc_end0:
	.size	bjc_put_LF, .Lfunc_end0-bjc_put_LF
	.cfi_endproc

	.globl	bjc_put_FF
	.align	16, 0x90
	.type	bjc_put_FF,@function
bjc_put_FF:                             # @bjc_put_FF
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$12, %edi
	movq	%rax, %rsi
	jmp	fputc                   # TAILCALL
.Lfunc_end1:
	.size	bjc_put_FF, .Lfunc_end1-bjc_put_FF
	.cfi_endproc

	.globl	bjc_put_CR
	.align	16, 0x90
	.type	bjc_put_CR,@function
bjc_put_CR:                             # @bjc_put_CR
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$13, %edi
	movq	%rax, %rsi
	jmp	fputc                   # TAILCALL
.Lfunc_end2:
	.size	bjc_put_CR, .Lfunc_end2-bjc_put_CR
	.cfi_endproc

	.globl	bjc_put_initialize
	.align	16, 0x90
	.type	bjc_put_initialize,@function
bjc_put_initialize:                     # @bjc_put_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$.L.str, %edi
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	jmp	fwrite                  # TAILCALL
.Lfunc_end3:
	.size	bjc_put_initialize, .Lfunc_end3-bjc_put_initialize
	.cfi_endproc

	.globl	bjc_put_set_initial
	.align	16, 0x90
	.type	bjc_put_set_initial,@function
bjc_put_set_initial:                    # @bjc_put_set_initial
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$.L.str.1, %edi
	movl	$7, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	jmp	fwrite                  # TAILCALL
.Lfunc_end4:
	.size	bjc_put_set_initial, .Lfunc_end4-bjc_put_set_initial
	.cfi_endproc

	.globl	bjc_put_set_compression
	.align	16, 0x90
	.type	bjc_put_set_compression,@function
bjc_put_set_compression:                # @bjc_put_set_compression
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$98, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bjc_put_set_compression, .Lfunc_end5-bjc_put_set_compression
	.cfi_endproc

	.globl	bjc_put_print_method_short
	.align	16, 0x90
	.type	bjc_put_print_method_short,@function
bjc_put_print_method_short:             # @bjc_put_print_method_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$99, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bjc_put_print_method_short, .Lfunc_end6-bjc_put_print_method_short
	.cfi_endproc

	.globl	bjc_put_print_method
	.align	16, 0x90
	.type	bjc_put_print_method,@function
bjc_put_print_method:                   # @bjc_put_print_method
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 64
.Ltmp16:
	.cfi_offset %rbx, -48
.Ltmp17:
	.cfi_offset %r12, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%edx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	orl	%ecx, %r12d
	testb	%r14b, %r14b
	setne	%al
	movzbl	%al, %ebp
	orl	$2, %ebp
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$99, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r15d, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r12d, %edi
	movq	%rbx, %rsi
	callq	fputc
	testb	%r14b, %r14b
	je	.LBB7_2
# BB#1:                                 # %if.then
	movsbl	%r14b, %edi
	movq	%rbx, %rsi
	callq	fputc
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bjc_put_print_method, .Lfunc_end7-bjc_put_print_method
	.cfi_endproc

	.globl	bjc_put_raster_resolution
	.align	16, 0x90
	.type	bjc_put_raster_resolution,@function
bjc_put_raster_resolution:              # @bjc_put_raster_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$100, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	cmpl	%ebx, %ebp
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$2, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%edi, %edi
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$4, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bl, %edi
.LBB8_3:                                # %if.end
	movq	%r14, %rsi
	callq	fputc
	movl	%ebp, %ebx
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bjc_put_raster_resolution, .Lfunc_end8-bjc_put_raster_resolution
	.cfi_endproc

	.globl	bjc_put_raster_skip
	.align	16, 0x90
	.type	bjc_put_raster_skip,@function
bjc_put_raster_skip:                    # @bjc_put_raster_skip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$101, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	bjc_put_raster_skip, .Lfunc_end9-bjc_put_raster_skip
	.cfi_endproc

	.globl	bjc_put_page_margins
	.align	16, 0x90
	.type	bjc_put_page_margins,@function
bjc_put_page_margins:                   # @bjc_put_page_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movb	%sil, 8(%rsp)
	movb	%dl, 9(%rsp)
	movb	%cl, 10(%rsp)
	movb	%r8b, 11(%rsp)
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$103, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	leaq	8(%rsp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	bjc_put_page_margins, .Lfunc_end10-bjc_put_page_margins
	.cfi_endproc

	.globl	bjc_put_media_supply
	.align	16, 0x90
	.type	bjc_put_media_supply,@function
bjc_put_media_supply:                   # @bjc_put_media_supply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$108, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fputc
	shll	$4, %ebp
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bjc_put_media_supply, .Lfunc_end11-bjc_put_media_supply
	.cfi_endproc

	.globl	bjc_put_cmyk_image
	.align	16, 0x90
	.type	bjc_put_cmyk_image,@function
bjc_put_cmyk_image:                     # @bjc_put_cmyk_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 64
.Ltmp49:
	.cfi_offset %rbx, -48
.Ltmp50:
	.cfi_offset %r12, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbx
	leal	1(%r15), %ebp
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$65, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movl	%r12d, %edi
	movq	%rbx, %rsi
	callq	fputc
	movslq	%r15d, %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bjc_put_cmyk_image, .Lfunc_end12-bjc_put_cmyk_image
	.cfi_endproc

	.globl	bjc_put_move_lines
	.align	16, 0x90
	.type	bjc_put_move_lines,@function
bjc_put_move_lines:                     # @bjc_put_move_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$110, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bjc_put_move_lines, .Lfunc_end13-bjc_put_move_lines
	.cfi_endproc

	.globl	bjc_put_move_lines_unit
	.align	16, 0x90
	.type	bjc_put_move_lines_unit,@function
bjc_put_move_lines_unit:                # @bjc_put_move_lines_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$111, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	bjc_put_move_lines_unit, .Lfunc_end14-bjc_put_move_lines_unit
	.cfi_endproc

	.globl	bjc_put_extended_margins
	.align	16, 0x90
	.type	bjc_put_extended_margins,@function
bjc_put_extended_margins:               # @bjc_put_extended_margins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 64
.Ltmp70:
	.cfi_offset %rbx, -48
.Ltmp71:
	.cfi_offset %r12, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$112, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$8, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r12d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%r12b, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r15d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%r15b, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r14d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%r14b, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bjc_put_extended_margins, .Lfunc_end15-bjc_put_extended_margins
	.cfi_endproc

	.globl	bjc_put_image_format
	.align	16, 0x90
	.type	bjc_put_image_format,@function
bjc_put_image_format:                   # @bjc_put_image_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp79:
	.cfi_def_cfa_offset 48
.Ltmp80:
	.cfi_offset %rbx, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$116, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$3, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r15d, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bjc_put_image_format, .Lfunc_end16-bjc_put_image_format
	.cfi_endproc

	.globl	bjc_put_page_id
	.align	16, 0x90
	.type	bjc_put_page_id,@function
bjc_put_page_id:                        # @bjc_put_page_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 32
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$113, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bjc_put_page_id, .Lfunc_end17-bjc_put_page_id
	.cfi_endproc

	.globl	bjc_put_continue_image
	.align	16, 0x90
	.type	bjc_put_continue_image,@function
bjc_put_continue_image:                 # @bjc_put_continue_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 48
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movw	$10267, 12(%rsp)        # imm = 0x281B
	movb	$70, 14(%rsp)
	leaq	12(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbp, %rcx
	callq	fwrite
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bjc_put_continue_image, .Lfunc_end18-bjc_put_continue_image
	.cfi_endproc

	.globl	bjc_put_indexed_image
	.align	16, 0x90
	.type	bjc_put_indexed_image,@function
bjc_put_indexed_image:                  # @bjc_put_indexed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp100:
	.cfi_def_cfa_offset 48
.Ltmp101:
	.cfi_offset %rbx, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movw	$10267, 4(%rsp)         # imm = 0x281B
	movb	$102, 6(%rsp)
	leaq	4(%rsp), %rdi
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movl	$5, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$82, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r15d, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fputc
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bjc_put_indexed_image, .Lfunc_end19-bjc_put_indexed_image
	.cfi_endproc

	.globl	bjc_invert_bytes
	.align	16, 0x90
	.type	bjc_invert_bytes,@function
bjc_invert_bytes:                       # @bjc_invert_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbx, -16
	xorl	%eax, %eax
	cmpl	$2, %esi
	jb	.LBB20_14
# BB#1:                                 # %for.body.lr.ph
	leal	-2(%rsi), %r10d
	testb	$1, %sil
	jne	.LBB20_2
# BB#3:                                 # %for.body.prol
	testl	%edx, %edx
	movb	(%rdi), %al
	jne	.LBB20_5
# BB#4:                                 # %if.then.prol
	notb	%al
	movb	%al, (%rdi)
.LBB20_5:                               # %if.end.prol
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	leaq	1(%rdi), %r8
	decl	%esi
	jmp	.LBB20_6
.LBB20_2:
	xorl	%eax, %eax
	movq	%rdi, %r8
.LBB20_6:                               # %for.body.lr.ph.split
	leaq	1(%r10), %r9
	testl	%r10d, %r10d
	je	.LBB20_13
# BB#7:
	movl	$1, %r10d
	.align	16, 0x90
.LBB20_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	movb	(%r8), %r11b
	jne	.LBB20_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB20_8 Depth=1
	notb	%r11b
	movb	%r11b, (%r8)
.LBB20_10:                              # %if.end
                                        #   in Loop: Header=BB20_8 Depth=1
	testl	%edx, %edx
	movb	1(%r8), %bl
	jne	.LBB20_12
# BB#11:                                # %if.then.1
                                        #   in Loop: Header=BB20_8 Depth=1
	notb	%bl
	movb	%bl, 1(%r8)
.LBB20_12:                              # %if.end.1
                                        #   in Loop: Header=BB20_8 Depth=1
	orb	%r11b, %bl
	cmovnel	%r10d, %eax
	addq	$2, %r8
	addl	$-2, %esi
	cmpl	$1, %esi
	ja	.LBB20_8
.LBB20_13:                              # %for.cond.for.end_crit_edge
	addq	%r9, %rdi
.LBB20_14:                              # %for.end
	testl	%edx, %edx
	movb	(%rdi), %dl
	jne	.LBB20_16
# BB#15:                                # %if.then.6
	notb	%dl
	movb	%dl, (%rdi)
.LBB20_16:                              # %if.end.9
	andb	%cl, %dl
	movb	%dl, (%rdi)
	popq	%rbx
	retq
.Lfunc_end20:
	.size	bjc_invert_bytes, .Lfunc_end20-bjc_invert_bytes
	.cfi_endproc

	.globl	bjc_invert_cmyk_bytes
	.align	16, 0x90
	.type	bjc_invert_cmyk_bytes,@function
bjc_invert_cmyk_bytes:                  # @bjc_invert_cmyk_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 48
.Ltmp112:
	.cfi_offset %rbx, -48
.Ltmp113:
	.cfi_offset %r12, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	56(%rsp), %r10
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r10)
	xorl	%eax, %eax
	cmpl	$2, %r8d
	jb	.LBB21_14
# BB#1:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	movl	$1, %r11d
	.align	16, 0x90
.LBB21_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r9d, %r9d
	je	.LBB21_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	(%rcx), %bpl
	movb	(%rdi), %bl
	orb	%bpl, %bl
	movb	%bl, %r14b
	notb	%r14b
	movb	(%rsi), %r15b
	orb	%r15b, %bl
	orb	%bpl, %r15b
	notb	%r15b
	movb	(%rdx), %r12b
	orb	%r12b, %bpl
	notb	%bpl
	orb	%r12b, %bl
	notb	%bl
	movb	%bl, (%rcx)
	movb	%r14b, (%rdi)
	movb	%r15b, (%rsi)
	movb	%bpl, (%rdx)
.LBB21_4:                               # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpb	$0, (%rdi)
	je	.LBB21_6
# BB#5:                                 # %if.then.23
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$1, (%r10)
.LBB21_6:                               # %if.end.25
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpb	$0, (%rsi)
	je	.LBB21_8
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$1, 4(%r10)
.LBB21_8:                               # %if.end.29
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpb	$0, (%rdx)
	je	.LBB21_10
# BB#9:                                 # %if.then.31
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$1, 8(%r10)
.LBB21_10:                              # %if.end.33
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpb	$0, (%rcx)
	je	.LBB21_11
# BB#12:                                # %if.then.35
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$1, 12(%r10)
	movb	(%rcx), %bpl
	jmp	.LBB21_13
	.align	16, 0x90
.LBB21_11:                              #   in Loop: Header=BB21_2 Depth=1
	xorl	%ebp, %ebp
.LBB21_13:                              # %if.end.37
                                        #   in Loop: Header=BB21_2 Depth=1
	movb	(%rsi), %bl
	orb	(%rdi), %bl
	orb	(%rdx), %bl
	orb	%bpl, %bl
	cmovnel	%r11d, %eax
	incq	%rdi
	incq	%rsi
	incq	%rdx
	incq	%rcx
	decl	%r8d
	cmpl	$1, %r8d
	ja	.LBB21_2
.LBB21_14:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	bjc_invert_cmyk_bytes, .Lfunc_end21-bjc_invert_cmyk_bytes
	.cfi_endproc

	.globl	bjc_compress
	.align	16, 0x90
	.type	bjc_compress,@function
bjc_compress:                           # @bjc_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp123:
	.cfi_def_cfa_offset 80
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	testl	%esi, %esi
	movq	%rdx, %r15
	je	.LBB22_25
# BB#1:                                 # %while.body.lr.ph
	movl	%esi, %eax
	leaq	(%rax,%r12), %rsi
	movq	8(%rsp), %r15           # 8-byte Reload
	.align	16, 0x90
.LBB22_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_3 Depth 2
                                        #     Child Loop BB22_7 Depth 2
                                        #     Child Loop BB22_11 Depth 2
	movb	(%r12), %al
	movq	%r12, %r13
	.align	16, 0x90
.LBB22_3:                               # %while.cond.1
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, %r14b
	cmpq	%rsi, %r13
	jae	.LBB22_5
# BB#4:                                 # %while.body.3
                                        #   in Loop: Header=BB22_3 Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	movzbl	%r14b, %ecx
	cmpl	%eax, %ecx
	jne	.LBB22_3
.LBB22_5:                               # %while.end
                                        #   in Loop: Header=BB22_2 Depth=1
	cmpq	%rsi, %r13
	je	.LBB22_26
# BB#6:                                 # %while.cond.13.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	leaq	1(%r13), %rax
	.align	16, 0x90
.LBB22_7:                               # %while.cond.13
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	cmpq	%rsi, %rbp
	jae	.LBB22_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB22_7 Depth=2
	movzbl	%r14b, %ecx
	movzbl	(%rbp), %edx
	leaq	1(%rbp), %rax
	cmpl	%ecx, %edx
	je	.LBB22_7
.LBB22_9:                               #   in Loop: Header=BB22_2 Depth=1
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	jmp	.LBB22_10
	.align	16, 0x90
.LBB22_26:                              # %if.then.10
                                        #   in Loop: Header=BB22_2 Depth=1
	decq	%rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
.LBB22_10:                              # %for.cond.preheader
                                        #   in Loop: Header=BB22_2 Depth=1
	decq	%r13
	jmp	.LBB22_11
	.align	16, 0x90
.LBB22_27:                              # %cleanup
                                        #   in Loop: Header=BB22_11 Depth=2
	cmpl	$128, %eax
	movl	$128, %ecx
	cmoval	%ecx, %eax
	leal	255(%rax), %ecx
	leaq	1(%r15), %rdi
	movb	%cl, (%r15)
	movl	%eax, %ebx
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	leaq	1(%r15,%rbx), %r15
	addq	%rbx, %r12
.LBB22_11:                              # %for.cond
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rax
	subq	%r12, %rax
	movl	%eax, %edx
	cmpl	$6, %eax
	ja	.LBB22_27
# BB#12:                                # %for.cond
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	$1, %cl
	movb	$2, %bl
	movb	$3, %sil
	movb	$4, %r8b
	movb	$5, %dil
	jmpq	*.LJTI22_0(,%rdx,8)
.LBB22_13:                              # %sw.bb
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	5(%r12), %cl
	movb	%cl, 6(%r15)
	movb	$6, %dil
.LBB22_14:                              # %sw.bb.26
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	4(%r12), %cl
	movb	%cl, 5(%r15)
	movb	%dil, %r8b
.LBB22_15:                              # %sw.bb.29
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	3(%r12), %cl
	movb	%cl, 4(%r15)
	movb	%r8b, %sil
.LBB22_16:                              # %sw.bb.32
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	2(%r12), %cl
	movb	%cl, 3(%r15)
	movb	%sil, %bl
.LBB22_17:                              # %sw.bb.35
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	1(%r12), %cl
	movb	%cl, 2(%r15)
	movb	%bl, %cl
.LBB22_18:                              # %sw.bb.38
                                        #   in Loop: Header=BB22_2 Depth=1
	movb	(%r12), %dl
	movb	%dl, 1(%r15)
	decb	%cl
	movb	%cl, (%r15)
	incl	%eax
	addq	%rax, %r15
.LBB22_19:                              # %for.end
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	%ebp, %eax
	subl	%r13d, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	cmpq	%rsi, %rbp
	jb	.LBB22_23
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_2 Depth=1
	testb	%r14b, %r14b
	je	.LBB22_25
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_2 Depth=1
	testl	%eax, %eax
	jle	.LBB22_25
.LBB22_22:                              # %while.body.70
                                        #   in Loop: Header=BB22_2 Depth=1
	cmpl	$128, %eax
	movl	%eax, %ecx
	movl	$128, %edx
	cmovgl	%edx, %ecx
	movl	$257, %edx              # imm = 0x101
	subl	%ecx, %edx
	movb	%dl, (%r15)
	movb	%r14b, 1(%r15)
	addq	$2, %r15
	subl	%ecx, %eax
.LBB22_23:                              # %while.cond.67
                                        #   in Loop: Header=BB22_2 Depth=1
	testl	%eax, %eax
	jg	.LBB22_22
# BB#24:                                # %while.cond.backedge
                                        #   in Loop: Header=BB22_2 Depth=1
	cmpq	%rsi, %rbp
	movq	%rbp, %r12
	jb	.LBB22_2
.LBB22_25:                              # %while.end.80
	movq	8(%rsp), %rax           # 8-byte Reload
	subl	%eax, %r15d
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	bjc_compress, .Lfunc_end22-bjc_compress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_19
	.quad	.LBB22_18
	.quad	.LBB22_17
	.quad	.LBB22_16
	.quad	.LBB22_15
	.quad	.LBB22_14
	.quad	.LBB22_13

	.text
	.globl	bjc_rgb_to_cmy
	.align	16, 0x90
	.type	bjc_rgb_to_cmy,@function
bjc_rgb_to_cmy:                         # @bjc_rgb_to_cmy
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	$255, %edi
	movl	%edi, (%rcx)
	xorl	$255, %esi
	movl	%esi, (%r8)
	xorl	$255, %edx
	movl	%edx, (%r9)
	retq
.Lfunc_end23:
	.size	bjc_rgb_to_cmy, .Lfunc_end23-bjc_rgb_to_cmy
	.cfi_endproc

	.globl	bjc_rgb_to_gray
	.align	16, 0x90
	.type	bjc_rgb_to_gray,@function
bjc_rgb_to_gray:                        # @bjc_rgb_to_gray
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$77, %edi, %eax
	imull	$151, %esi, %esi
	addl	%eax, %esi
	imull	$28, %edx, %eax
	addl	%esi, %eax
	shrl	$8, %eax
	movl	%eax, (%rcx)
	retq
.Lfunc_end24:
	.size	bjc_rgb_to_gray, .Lfunc_end24-bjc_rgb_to_gray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_1:
	.quad	4643176031446892544     # double 255
.LCPI25_2:
	.quad	4661190429956374528     # double 4080
.LCPI25_3:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_4:
	.quad	255                     # 0xff
	.quad	254                     # 0xfe
.LCPI25_5:
	.quad	253                     # 0xfd
	.quad	252                     # 0xfc
	.text
	.globl	bjc_build_gamma_table
	.align	16, 0x90
	.type	bjc_build_gamma_table,@function
bjc_build_gamma_table:                  # @bjc_build_gamma_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 64
.Ltmp133:
	.cfi_offset %rbx, -24
.Ltmp134:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	cmpl	$89, %esi
	je	.LBB25_4
# BB#1:                                 # %entry
	cmpl	$77, %esi
	jne	.LBB25_2
# BB#3:                                 # %sw.bb.1
	addq	$23740, %r14            # imm = 0x5CBC
	jmp	.LBB25_5
.LBB25_4:                               # %sw.bb.3
	addq	$24764, %r14            # imm = 0x60BC
	jmp	.LBB25_5
.LBB25_2:                               # %entry
	cmpl	$67, %esi
	addq	$22716, %r14            # imm = 0x58BC
.LBB25_5:                               # %sw.epilog
	ucomiss	.LCPI25_0(%rip), %xmm0
	jne	.LBB25_6
	jnp	.LBB25_8
.LBB25_6:                               # %for.body.15.preheader
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB25_7:                               # %for.body.15
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	.LCPI25_1(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI25_3(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	$4080, %ecx             # imm = 0xFF0
	subl	%eax, %ecx
	movl	%ecx, (%r14,%rbx,4)
	leal	1(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI25_1(%rip), %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	mulsd	.LCPI25_2(%rip), %xmm0
	addsd	.LCPI25_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	$4080, %ecx             # imm = 0xFF0
	subl	%eax, %ecx
	movl	%ecx, 4(%r14,%rbx,4)
	addq	$2, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB25_7
	jmp	.LBB25_10
.LBB25_8:                               # %vector.body.preheader
	xorl	%eax, %eax
	movdqa	.LCPI25_4(%rip), %xmm0  # xmm0 = [255,254]
	movdqa	.LCPI25_5(%rip), %xmm1  # xmm1 = [253,252]
	.align	16, 0x90
.LBB25_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movdqa	%xmm0, %xmm3
	psubq	%xmm2, %xmm3
	movdqa	%xmm1, %xmm4
	psubq	%xmm2, %xmm4
	psllq	$4, %xmm3
	psllq	$4, %xmm4
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	movq	%xmm2, (%r14,%rax,4)
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	movq	%xmm2, 8(%r14,%rax,4)
	leaq	4(%rax), %rcx
	movd	%rcx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movdqa	%xmm0, %xmm3
	psubq	%xmm2, %xmm3
	movdqa	%xmm1, %xmm4
	psubq	%xmm2, %xmm4
	psllq	$4, %xmm3
	psllq	$4, %xmm4
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	movq	%xmm2, 16(%r14,%rax,4)
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	movq	%xmm2, 24(%r14,%rax,4)
	addq	$8, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB25_9
.LBB25_10:                              # %if.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	bjc_build_gamma_table, .Lfunc_end25-bjc_build_gamma_table
	.cfi_endproc

	.globl	bjc_rand
	.align	16, 0x90
	.type	bjc_rand,@function
bjc_rand:                               # @bjc_rand
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	18548(%rdi), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 18548(%rdi)
	movl	bjc_rand_seed(,%rax,4), %eax
	movslq	18544(%rdi), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 18544(%rdi)
	addl	bjc_rand_seed(,%rcx,4), %eax
	movl	%eax, bjc_rand_seed(,%rcx,4)
	cmpl	$55, 18544(%rdi)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$0, 18544(%rdi)
.LBB26_2:                               # %if.end
	cmpl	$55, 18548(%rdi)
	jne	.LBB26_4
# BB#3:                                 # %if.then.8
	movl	$0, 18548(%rdi)
.LBB26_4:                               # %if.end.10
	andl	$1023, %eax             # imm = 0x3FF
	retq
.Lfunc_end26:
	.size	bjc_rand, .Lfunc_end26-bjc_rand
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4630916388836259922     # double 40.640000000000001
.LCPI27_1:
	.quad	4562146422526312448     # double 9.765625E-4
.LCPI27_2:
	.quad	4656686830329004032     # double 2040
	.text
	.globl	bjc_init_tresh
	.align	16, 0x90
	.type	bjc_init_tresh,@function
bjc_init_tresh:                         # @bjc_init_tresh
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp137:
	.cfi_def_cfa_offset 32
.Ltmp138:
	.cfi_offset %rbx, -24
.Ltmp139:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%edi, %edi
	callq	time
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI27_0(%rip), %xmm0
	testb	%al, %al
	je	.LBB27_7
# BB#1:                                 # %for.body.lr.ph
	movl	18544(%rbx), %ecx
	movl	18548(%rbx), %edx
	movzbl	%al, %eax
	incl	%eax
	.align	16, 0x90
.LBB27_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%rdx), %esi
	movl	%esi, 18548(%rbx)
	movslq	%edx, %rdx
	movl	bjc_rand_seed(,%rdx,4), %edx
	leal	1(%rcx), %esi
	movl	%esi, 18544(%rbx)
	movslq	%ecx, %rcx
	addl	%edx, bjc_rand_seed(,%rcx,4)
	movl	18544(%rbx), %ecx
	cmpl	$55, %ecx
	jne	.LBB27_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	$0, 18544(%rbx)
	xorl	%ecx, %ecx
.LBB27_4:                               # %if.end.i
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	18548(%rbx), %edx
	cmpl	$55, %edx
	jne	.LBB27_6
# BB#5:                                 # %if.then.8.i
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	$0, 18548(%rbx)
	xorl	%edx, %edx
.LBB27_6:                               # %bjc_rand.exit
                                        #   in Loop: Header=BB27_2 Depth=1
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB27_2
.LBB27_7:                               # %for.body.8.preheader
	cvtsd2ss	%xmm0, %xmm0
	addq	$18556, %rbx            # imm = 0x487C
	movq	$-512, %rax             # imm = 0xFFFFFFFFFFFFFE00
	movsd	.LCPI27_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI27_2(%rip), %xmm2  # xmm2 = mem[0],zero
	.align	16, 0x90
.LBB27_8:                               # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm0, %xmm3
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, -4(%rbx)
	movl	%eax, %ecx
	orl	$1, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	mulss	%xmm0, %xmm3
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, (%rbx)
	addq	$2, %rax
	addq	$8, %rbx
	cmpq	$512, %rax              # imm = 0x200
	jne	.LBB27_8
# BB#9:                                 # %for.end.15
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	bjc_init_tresh, .Lfunc_end27-bjc_init_tresh
	.cfi_endproc

	.globl	FloydSteinbergInitG
	.align	16, 0x90
	.type	FloydSteinbergInitG,@function
FloydSteinbergInitG:                    # @FloydSteinbergInitG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	832(%rbx), %eax
	leal	12(,%rax,4), %esi
	movl	$.L.str.2, %edx
	callq	*64(%rdi)
	movq	%rax, 22688(%rbx)
	testq	%rax, %rax
	movl	$-1, %ecx
	je	.LBB28_5
# BB#1:                                 # %if.end
	movl	$1, 22648(%rbx)
	cmpl	$-2, 832(%rbx)
	jl	.LBB28_4
# BB#2:
	movq	$-1, %rcx
	.align	16, 0x90
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 4(%rax,%rcx,4)
	movslq	832(%rbx), %rdx
	addq	$2, %rdx
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	.LBB28_3
.LBB28_4:                               # %for.end
	movzbl	18532(%rbx), %eax
	movzbl	18536(%rbx), %ecx
	movzbl	18540(%rbx), %edx
	imull	$77, %eax, %eax
	imull	$151, %ecx, %ecx
	addl	%eax, %ecx
	imull	$28, %edx, %eax
	addl	%ecx, %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	shll	$4, %ecx
	movl	%ecx, 22712(%rbx)
	movl	18492(%rbx), %esi
	movq	%rbx, %rdi
	callq	bjc_init_tresh
	xorl	%ecx, %ecx
.LBB28_5:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end28:
	.size	FloydSteinbergInitG, .Lfunc_end28-FloydSteinbergInitG
	.cfi_endproc

	.globl	FloydSteinbergDitheringG
	.align	16, 0x90
	.type	FloydSteinbergDitheringG,@function
FloydSteinbergDitheringG:               # @FloydSteinbergDitheringG
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 48
.Ltmp147:
	.cfi_offset %rbx, -48
.Ltmp148:
	.cfi_offset %r12, -40
.Ltmp149:
	.cfi_offset %r14, -32
.Ltmp150:
	.cfi_offset %r15, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	cmpl	$0, 22648(%rdi)
	je	.LBB29_15
# BB#1:                                 # %if.then
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jle	.LBB29_29
# BB#2:                                 # %for.body.lr.ph
	movq	22688(%rdi), %r12
	addq	$8, %r12
	incl	%r14d
	movb	$-128, %r10b
	xorl	%eax, %eax
	movl	$4080, %r8d             # imm = 0xFF0
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB29_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebx
	xorq	$255, %rbx
	movl	22712(%rdi), %ebp
	addl	22716(%rdi,%rbx,4), %ebp
	cmpl	$4080, %ebp             # imm = 0xFF0
	movl	%ebp, %r15d
	cmovgl	%r8d, %r15d
	testl	%r9d, %r9d
	cmovel	%ebp, %r15d
	addl	(%r12), %eax
	movslq	18548(%rdi), %rbx
	leal	1(%rbx), %ebp
	movl	%ebp, 18548(%rdi)
	movl	bjc_rand_seed(,%rbx,4), %ebx
	movslq	18544(%rdi), %rbp
	leal	1(%rbp), %ecx
	movl	%ecx, 18544(%rdi)
	addl	bjc_rand_seed(,%rbp,4), %ebx
	movl	%ebx, bjc_rand_seed(,%rbp,4)
	cmpl	$55, 18544(%rdi)
	jne	.LBB29_5
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	$0, 18544(%rdi)
.LBB29_5:                               # %if.end.i
                                        #   in Loop: Header=BB29_3 Depth=1
	addl	%r15d, %eax
	cmpl	$55, 18548(%rdi)
	jne	.LBB29_7
# BB#6:                                 # %if.then.8.i
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	$0, 18548(%rdi)
.LBB29_7:                               # %bjc_rand.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	andl	$1023, %ebx             # imm = 0x3FF
	leal	-4080(%rax), %r15d
	cmpl	18552(%rdi,%rbx,4), %eax
	movb	%r10b, %bpl
	jg	.LBB29_9
# BB#8:                                 # %bjc_rand.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	movl	$0, %ebp
.LBB29_9:                               # %bjc_rand.exit
                                        #   in Loop: Header=BB29_3 Depth=1
	cmovgl	%r15d, %eax
	leal	8(%rax), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r12)
	leal	8(%rax,%rax,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -8(%r12)
	orb	%r11b, %bpl
	leal	(%rax,%rax,4), %ebx
	leal	8(%rax,%rax,4), %ecx
	sarl	$4, %ecx
	addl	%ecx, -4(%r12)
	movzbl	%r10b, %ecx
	cmpl	$1, %ecx
	jne	.LBB29_11
# BB#10:                                # %if.then.35
                                        #   in Loop: Header=BB29_3 Depth=1
	movb	%bpl, (%rdx)
	incq	%rdx
	movb	$-128, %r10b
	xorl	%ebp, %ebp
	jmp	.LBB29_14
	.align	16, 0x90
.LBB29_11:                              # %if.else
                                        #   in Loop: Header=BB29_3 Depth=1
	cmpl	$2, %r14d
	je	.LBB29_12
# BB#13:                                # %if.else.39
                                        #   in Loop: Header=BB29_3 Depth=1
	shrb	%r10b
.LBB29_14:                              # %for.inc
                                        #   in Loop: Header=BB29_3 Depth=1
	leal	8(%rbx,%rax,2), %eax
	sarl	$4, %eax
	incq	%rsi
	addq	$4, %r12
	decl	%r14d
	xorl	%ebx, %ebx
	cmpl	$1, %r14d
	movb	%bpl, %r11b
	jg	.LBB29_3
	jmp	.LBB29_29
.LBB29_15:                              # %if.else.48
	movl	$1, %ebx
	testl	%r14d, %r14d
	jle	.LBB29_29
# BB#16:                                # %for.body.65.lr.ph
	movq	22688(%rdi), %r10
	leal	(,%r8,8), %ecx
	subl	%r14d, %ecx
	movl	$1, %r11d
	shll	%cl, %r11d
	decl	%r8d
	addq	%r8, %rdx
	leal	-1(%r14), %eax
	addq	%rax, %rsi
	movl	%r14d, %r12d
	xorl	%ecx, %ecx
	movl	$4080, %r8d             # imm = 0xFF0
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB29_17:                              # %for.body.65
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebx
	xorq	$255, %rbx
	movl	22712(%rdi), %ebp
	addl	22716(%rdi,%rbx,4), %ebp
	cmpl	$4080, %ebp             # imm = 0xFF0
	movl	%ebp, %r15d
	cmovgl	%r8d, %r15d
	testl	%r9d, %r9d
	cmovel	%ebp, %r15d
	addl	(%r10,%r12,4), %ecx
	movslq	18548(%rdi), %rbx
	leal	1(%rbx), %ebp
	movl	%ebp, 18548(%rdi)
	movl	bjc_rand_seed(,%rbx,4), %ebx
	movslq	18544(%rdi), %rbp
	leal	1(%rbp), %eax
	movl	%eax, 18544(%rdi)
	addl	bjc_rand_seed(,%rbp,4), %ebx
	movl	%ebx, bjc_rand_seed(,%rbp,4)
	cmpl	$55, 18544(%rdi)
	jne	.LBB29_19
# BB#18:                                # %if.then.i.103
                                        #   in Loop: Header=BB29_17 Depth=1
	movl	$0, 18544(%rdi)
.LBB29_19:                              # %if.end.i.105
                                        #   in Loop: Header=BB29_17 Depth=1
	addl	%r15d, %ecx
	cmpl	$55, 18548(%rdi)
	jne	.LBB29_21
# BB#20:                                # %if.then.8.i.106
                                        #   in Loop: Header=BB29_17 Depth=1
	movl	$0, 18548(%rdi)
.LBB29_21:                              # %bjc_rand.exit108
                                        #   in Loop: Header=BB29_17 Depth=1
	andl	$1023, %ebx             # imm = 0x3FF
	leal	-4080(%rcx), %r15d
	cmpl	18552(%rdi,%rbx,4), %ecx
	movb	%r11b, %bpl
	jg	.LBB29_23
# BB#22:                                # %bjc_rand.exit108
                                        #   in Loop: Header=BB29_17 Depth=1
	movl	$0, %ebp
.LBB29_23:                              # %bjc_rand.exit108
                                        #   in Loop: Header=BB29_17 Depth=1
	cmovgl	%r15d, %ecx
	leal	8(%rcx), %eax
	sarl	$4, %eax
	movl	%eax, (%r10,%r12,4)
	leal	8(%rcx,%rcx,2), %eax
	sarl	$4, %eax
	addl	%eax, 8(%r10,%r12,4)
	orb	%r14b, %bpl
	leal	(%rcx,%rcx,4), %ebx
	leal	8(%rcx,%rcx,4), %eax
	sarl	$4, %eax
	addl	%eax, 4(%r10,%r12,4)
	movzbl	%r11b, %eax
	cmpl	$128, %eax
	jne	.LBB29_25
# BB#24:                                # %if.then.114
                                        #   in Loop: Header=BB29_17 Depth=1
	movb	%bpl, (%rdx)
	decq	%rdx
	movb	$1, %r11b
	xorl	%ebp, %ebp
	jmp	.LBB29_28
	.align	16, 0x90
.LBB29_25:                              # %if.else.116
                                        #   in Loop: Header=BB29_17 Depth=1
	cmpl	$1, %r12d
	je	.LBB29_26
# BB#27:                                # %if.else.120
                                        #   in Loop: Header=BB29_17 Depth=1
	addb	%r11b, %r11b
.LBB29_28:                              # %for.inc.126
                                        #   in Loop: Header=BB29_17 Depth=1
	leal	8(%rbx,%rcx,2), %ecx
	sarl	$4, %ecx
	decq	%rsi
	decq	%r12
	leal	1(%r12), %eax
	movl	$1, %ebx
	cmpl	$1, %eax
	movb	%bpl, %r14b
	jg	.LBB29_17
	jmp	.LBB29_29
.LBB29_12:                              # %for.inc.thread
	movb	%bpl, (%rdx)
	xorl	%ebx, %ebx
	jmp	.LBB29_29
.LBB29_26:                              # %for.inc.126.thread
	movb	%bpl, (%rdx)
	movl	$1, %ebx
.LBB29_29:                              # %if.end.132
	movl	%ebx, 22648(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	FloydSteinbergDitheringG, .Lfunc_end29-FloydSteinbergDitheringG
	.cfi_endproc

	.globl	FloydSteinbergCloseG
	.align	16, 0x90
	.type	FloydSteinbergCloseG,@function
FloydSteinbergCloseG:                   # @FloydSteinbergCloseG
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movq	24(%rax), %rcx
	movq	22688(%rdi), %rsi
	movl	$.L.str.2, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end30:
	.size	FloydSteinbergCloseG, .Lfunc_end30-FloydSteinbergCloseG
	.cfi_endproc

	.globl	FloydSteinbergInitC
	.align	16, 0x90
	.type	FloydSteinbergInitC,@function
FloydSteinbergInitC:                    # @FloydSteinbergInitC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 32
.Ltmp155:
	.cfi_offset %rbx, -24
.Ltmp156:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	movl	832(%rbx), %eax
	leal	(%rax,%rax,2), %eax
	leal	36(,%rax,4), %esi
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	movq	%rax, 22656(%rbx)
	testq	%rax, %rax
	movl	$-1, %r14d
	je	.LBB31_5
# BB#1:                                 # %for.cond.preheader
	movl	832(%rbx), %ecx
	leal	9(%rcx,%rcx,2), %ecx
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	jle	.LBB31_4
# BB#2:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB31_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rcx,4)
	incq	%rcx
	movl	832(%rbx), %edx
	leal	9(%rdx,%rdx,2), %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rcx
	jl	.LBB31_3
.LBB31_4:                               # %for.end
	movl	$1, 22648(%rbx)
	movl	18532(%rbx), %eax
	movl	18536(%rbx), %ecx
	movl	18540(%rbx), %edx
	shll	$4, %eax
	notl	%eax
	andl	$4080, %eax             # imm = 0xFF0
	movl	%eax, 22696(%rbx)
	shll	$4, %ecx
	notl	%ecx
	andl	$4080, %ecx             # imm = 0xFF0
	movl	%ecx, 22700(%rbx)
	shll	$4, %edx
	notl	%edx
	andl	$4080, %edx             # imm = 0xFF0
	movl	%edx, 22704(%rbx)
	movl	18492(%rbx), %esi
	movq	%rbx, %rdi
	callq	bjc_init_tresh
.LBB31_5:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end31:
	.size	FloydSteinbergInitC, .Lfunc_end31-FloydSteinbergInitC
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI32_0:
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	3                       # 0x3
.LCPI32_1:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	FloydSteinbergDitheringC
	.align	16, 0x90
	.type	FloydSteinbergDitheringC,@function
FloydSteinbergDitheringC:               # @FloydSteinbergDitheringC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp160:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp161:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 56
.Ltmp163:
	.cfi_offset %rbx, -56
.Ltmp164:
	.cfi_offset %r12, -48
.Ltmp165:
	.cfi_offset %r13, -40
.Ltmp166:
	.cfi_offset %r14, -32
.Ltmp167:
	.cfi_offset %r15, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movl	%r9d, -36(%rsp)         # 4-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	cmpl	$0, 22648(%rdi)
	je	.LBB32_32
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	testl	%ebx, %ebx
	jle	.LBB32_64
# BB#2:                                 # %for.body.lr.ph
	movq	22656(%rdi), %r11
	movl	%r8d, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	leal	(%r8,%r8), %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	leal	(%r8,%r8,2), %eax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	addq	$32, %r11
	incl	%ebx
	movb	$-128, -4(%rsp)         # 1-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movl	$0, -48(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB32_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	movzbl	(%rsi), %eax
	movzbl	3(%rsi), %ecx
	leaq	(%rax,%rcx), %rdx
	movl	22696(%rdi), %ebp
	movl	22700(%rdi), %eax
	addl	22716(%rdi,%rdx,4), %ebp
	movzbl	1(%rsi), %edx
	addq	%rcx, %rdx
	addl	23740(%rdi,%rdx,4), %eax
	movzbl	2(%rsi), %edx
	addq	%rcx, %rdx
	movl	22704(%rdi), %ecx
	addl	24764(%rdi,%rdx,4), %ecx
	cmpl	$4080, %ebp             # imm = 0xFF0
	movl	%ebp, %edx
	movl	$4080, %r9d             # imm = 0xFF0
	cmovgl	%r9d, %edx
	cmpl	$4080, %eax             # imm = 0xFF0
	movl	%eax, %r8d
	cmovgl	%r9d, %r8d
	cmpl	$4080, %ecx             # imm = 0xFF0
	movl	%ecx, %ebx
	cmovgl	%r9d, %ebx
	cmpl	$0, -36(%rsp)           # 4-byte Folded Reload
	cmovel	%ebp, %edx
	cmovel	%eax, %r8d
	cmovel	%ecx, %ebx
	addl	%r13d, %edx
	movl	-8(%r11), %r13d
	movl	-4(%r11), %r9d
	addl	(%r11), %r14d
	movslq	18548(%rdi), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 18548(%rdi)
	movl	bjc_rand_seed(,%rax,4), %ecx
	movslq	18544(%rdi), %rax
	leal	1(%rax), %ebp
	movl	%ebp, 18544(%rdi)
	addl	bjc_rand_seed(,%rax,4), %ecx
	movl	%ecx, bjc_rand_seed(,%rax,4)
	movl	18544(%rdi), %eax
	cmpl	$55, %eax
	jne	.LBB32_5
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18544(%rdi)
	xorl	%eax, %eax
.LBB32_5:                               # %if.end.i
                                        #   in Loop: Header=BB32_3 Depth=1
	addl	%r12d, %r8d
	addl	%r13d, %edx
	movl	18548(%rdi), %ebp
	cmpl	$55, %ebp
	jne	.LBB32_7
# BB#6:                                 # %if.then.8.i
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18548(%rdi)
	xorl	%ebp, %ebp
.LBB32_7:                               # %bjc_rand.exit
                                        #   in Loop: Header=BB32_3 Depth=1
	addl	%r9d, %r8d
	addl	%ebx, %r14d
	andl	$1023, %ecx             # imm = 0x3FF
	leal	-4080(%rdx), %ebx
	cmpl	18552(%rdi,%rcx,4), %edx
	movb	-4(%rsp), %cl           # 1-byte Reload
	movb	%cl, %r9b
	jg	.LBB32_9
# BB#8:                                 # %bjc_rand.exit
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, %r9d
.LBB32_9:                               # %bjc_rand.exit
                                        #   in Loop: Header=BB32_3 Depth=1
	cmovgl	%ebx, %edx
	leal	1(%rbp), %ecx
	movl	%ecx, 18548(%rdi)
	movslq	%ebp, %rcx
	movl	bjc_rand_seed(,%rcx,4), %ecx
	leal	1(%rax), %ebx
	movl	%ebx, 18544(%rdi)
	cltq
	addl	bjc_rand_seed(,%rax,4), %ecx
	movl	%ecx, bjc_rand_seed(,%rax,4)
	movl	18544(%rdi), %eax
	cmpl	$55, %eax
	jne	.LBB32_11
# BB#10:                                # %if.then.i.377
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18544(%rdi)
	xorl	%eax, %eax
.LBB32_11:                              # %if.end.i.379
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	18548(%rdi), %ebp
	cmpl	$55, %ebp
	jne	.LBB32_13
# BB#12:                                # %if.then.8.i.380
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18548(%rdi)
	xorl	%ebp, %ebp
.LBB32_13:                              # %bjc_rand.exit382
                                        #   in Loop: Header=BB32_3 Depth=1
	orb	%r10b, %r9b
	andl	$1023, %ecx             # imm = 0x3FF
	leal	-4080(%r8), %ebx
	cmpl	18552(%rdi,%rcx,4), %r8d
	movb	-4(%rsp), %cl           # 1-byte Reload
	movb	%cl, %r10b
	jg	.LBB32_15
# BB#14:                                # %bjc_rand.exit382
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, %r10d
.LBB32_15:                              # %bjc_rand.exit382
                                        #   in Loop: Header=BB32_3 Depth=1
	cmovgl	%ebx, %r8d
	leal	1(%rbp), %ecx
	movl	%ecx, 18548(%rdi)
	movslq	%ebp, %rcx
	movl	bjc_rand_seed(,%rcx,4), %ecx
	leal	1(%rax), %ebx
	movl	%ebx, 18544(%rdi)
	cltq
	addl	bjc_rand_seed(,%rax,4), %ecx
	movl	%ecx, bjc_rand_seed(,%rax,4)
	cmpl	$55, 18544(%rdi)
	jne	.LBB32_17
# BB#16:                                # %if.then.i.361
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18544(%rdi)
.LBB32_17:                              # %if.end.i.363
                                        #   in Loop: Header=BB32_3 Depth=1
	cmpl	$55, 18548(%rdi)
	jne	.LBB32_19
# BB#18:                                # %if.then.8.i.364
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, 18548(%rdi)
.LBB32_19:                              # %bjc_rand.exit366
                                        #   in Loop: Header=BB32_3 Depth=1
	orb	%r15b, %r10b
	andl	$1023, %ecx             # imm = 0x3FF
	leal	-4080(%r14), %ebx
	cmpl	18552(%rdi,%rcx,4), %r14d
	movb	-4(%rsp), %al           # 1-byte Reload
	jg	.LBB32_21
# BB#20:                                # %bjc_rand.exit366
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$0, %eax
.LBB32_21:                              # %bjc_rand.exit366
                                        #   in Loop: Header=BB32_3 Depth=1
	cmovgl	%ebx, %r14d
	movq	-32(%rsp), %rcx         # 8-byte Reload
	orb	%cl, %al
	leal	8(%rdx), %ecx
	sarl	$4, %ecx
	movl	%ecx, -8(%r11)
	leal	8(%rdx,%rdx,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -32(%r11)
	leal	(%rdx,%rdx,4), %ecx
	leal	8(%rdx,%rdx,4), %ebx
	sarl	$4, %ebx
	addl	%ebx, -20(%r11)
	leal	8(%rcx,%rdx,2), %r13d
	leal	8(%r8), %ecx
	sarl	$4, %ecx
	movl	%ecx, -4(%r11)
	leal	8(%r8,%r8,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -28(%r11)
	leal	(%r8,%r8,4), %ecx
	leal	8(%r8,%r8,4), %edx
	sarl	$4, %edx
	addl	%edx, -16(%r11)
	leal	8(%rcx,%r8,2), %r12d
	leal	8(%r14), %ecx
	sarl	$4, %ecx
	movl	%ecx, (%r11)
	leal	8(%r14,%r14,2), %ecx
	sarl	$4, %ecx
	addl	%ecx, -24(%r11)
	leal	8(%r14,%r14,4), %ecx
	sarl	$4, %ecx
	addl	%ecx, -12(%r11)
	leal	(%r14,%r14,4), %ecx
	leal	8(%rcx,%r14,2), %r14d
	movzbl	-4(%rsp), %ecx          # 1-byte Folded Reload
	cmpl	$1, %ecx
	jne	.LBB32_25
# BB#22:                                # %if.then.131
                                        #   in Loop: Header=BB32_3 Depth=1
	cmpl	$0, 56(%rsp)
	movl	-48(%rsp), %ebp         # 4-byte Reload
	je	.LBB32_24
# BB#23:                                # %if.then.133
                                        #   in Loop: Header=BB32_3 Depth=1
	movzbl	%r10b, %ecx
	andb	%r9b, %r10b
	movzbl	%r9b, %r9d
	movzbl	%al, %edx
	movb	%r10b, %bpl
	andb	%al, %bpl
	movzbl	%bpl, %eax
	notl	%eax
	andl	%eax, %r9d
	andl	%eax, %ecx
	andl	%edx, %eax
	movb	%cl, %r10b
.LBB32_24:                              # %if.end.153
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-16(%rsp), %rbx         # 8-byte Reload
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movb	%r9b, (%rcx)
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movb	%r10b, (%rcx,%rdx)
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%al, (%rcx,%rdx)
	movq	-72(%rsp), %rax         # 8-byte Reload
	movb	%bpl, (%rcx,%rax)
	incq	%rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movb	$-128, -4(%rsp)         # 1-byte Folded Spill
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movl	$0, -48(%rsp)           # 4-byte Folded Spill
	jmp	.LBB32_31
	.align	16, 0x90
.LBB32_25:                              # %if.else
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-16(%rsp), %rbx         # 8-byte Reload
	cmpl	$2, %ebx
	jne	.LBB32_30
# BB#26:                                # %if.then.162
                                        #   in Loop: Header=BB32_3 Depth=1
	cmpl	$0, 56(%rsp)
	je	.LBB32_27
# BB#28:                                # %if.then.164
                                        #   in Loop: Header=BB32_3 Depth=1
	movzbl	%r10b, %ecx
	andb	%r9b, %r10b
	movzbl	%r9b, %r9d
	movzbl	%al, %edx
	movb	%r10b, %bpl
	andb	%al, %bpl
	movzbl	%bpl, %eax
	notl	%eax
	andl	%eax, %r9d
	andl	%eax, %ecx
	andl	%edx, %eax
	movb	%cl, %r10b
	jmp	.LBB32_29
	.align	16, 0x90
.LBB32_30:                              # %if.else.195
                                        #   in Loop: Header=BB32_3 Depth=1
	shrb	-4(%rsp)                # 1-byte Folded Spill
	jmp	.LBB32_31
.LBB32_27:                              #   in Loop: Header=BB32_3 Depth=1
	movl	-48(%rsp), %ebp         # 4-byte Reload
.LBB32_29:                              # %if.end.186
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	%ebp, -48(%rsp)         # 4-byte Spill
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movb	%r9b, (%rcx)
	movq	-56(%rsp), %rdx         # 8-byte Reload
	movb	%r10b, (%rcx,%rdx)
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%al, (%rcx,%rdx)
	movq	-72(%rsp), %rdx         # 8-byte Reload
	movb	%bpl, (%rcx,%rdx)
.LBB32_31:                              # %for.inc
                                        #   in Loop: Header=BB32_3 Depth=1
	sarl	$4, %r13d
	sarl	$4, %r12d
	sarl	$4, %r14d
	addq	$12, %r11
	decl	%ebx
	addq	$4, %rsi
	xorl	%edx, %edx
	cmpl	$1, %ebx
	movb	%r10b, %r15b
	movb	%r9b, %r10b
	jg	.LBB32_3
	jmp	.LBB32_64
.LBB32_32:                              # %if.else.204
	movl	$1, %edx
	testl	%ebx, %ebx
	jle	.LBB32_64
# BB#33:                                # %for.body.224.lr.ph
	leal	(,%r8,8), %ecx
	subl	%ebx, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -4(%rsp)          # 4-byte Spill
	leal	-1(%r8), %eax
	addq	%rax, -24(%rsp)         # 8-byte Folded Spill
	leal	-4(,%rbx,4), %eax
	addq	%rax, %rsi
	movl	%r8d, %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leal	(%r8,%r8), %eax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	leal	(%r8,%r8,2), %eax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	leal	(%rbx,%rbx,2), %r14d
	shlq	$2, %r14
	addq	22656(%rdi), %r14
	incl	%ebx
	xorl	%r10d, %r10d
	movdqa	.LCPI32_0(%rip), %xmm0  # xmm0 = [5,5,5,3]
	pshufd	$250, %xmm0, %xmm1      # xmm1 = xmm0[2,2,3,3]
	movdqa	.LCPI32_1(%rip), %xmm2  # xmm2 = [8,8,8,8]
	movl	$0, %r12d
	movl	$0, %r11d
	movl	$0, %r8d
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB32_34:                              # %for.body.224
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, -64(%rsp)        # 4-byte Spill
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	%r8d, -72(%rsp)         # 4-byte Spill
	movq	%rbx, -16(%rsp)         # 8-byte Spill
	movzbl	(%rsi), %edx
	movzbl	3(%rsi), %ebp
	leaq	(%rdx,%rbp), %rdx
	movl	22696(%rdi), %ebx
	movl	22700(%rdi), %eax
	addl	22716(%rdi,%rdx,4), %ebx
	movzbl	1(%rsi), %edx
	addq	%rbp, %rdx
	addl	23740(%rdi,%rdx,4), %eax
	movzbl	2(%rsi), %edx
	addq	%rbp, %rdx
	movl	22704(%rdi), %ebp
	addl	24764(%rdi,%rdx,4), %ebp
	cmpl	$4080, %ebx             # imm = 0xFF0
	movl	%ebx, %r12d
	movl	$4080, %edx             # imm = 0xFF0
	cmovgl	%edx, %r12d
	cmpl	$4080, %eax             # imm = 0xFF0
	movl	%eax, %r8d
	cmovgl	%edx, %r8d
	cmpl	$4080, %ebp             # imm = 0xFF0
	movl	%ebp, %r15d
	cmovgl	%edx, %r15d
	cmpl	$0, -36(%rsp)           # 4-byte Folded Reload
	cmovel	%ebx, %r12d
	cmovel	%eax, %r8d
	cmovel	%ebp, %r15d
	addl	%r11d, %r12d
	movl	(%r14), %r9d
	movl	4(%r14), %r13d
	addl	8(%r14), %r10d
	movslq	18548(%rdi), %rax
	leal	1(%rax), %edx
	movl	%edx, 18548(%rdi)
	movl	bjc_rand_seed(,%rax,4), %edx
	movslq	18544(%rdi), %rax
	leal	1(%rax), %ebp
	movl	%ebp, 18544(%rdi)
	addl	bjc_rand_seed(,%rax,4), %edx
	movl	%edx, bjc_rand_seed(,%rax,4)
	movl	18544(%rdi), %eax
	cmpl	$55, %eax
	jne	.LBB32_36
# BB#35:                                # %if.then.i.345
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18544(%rdi)
	xorl	%eax, %eax
.LBB32_36:                              # %if.end.i.347
                                        #   in Loop: Header=BB32_34 Depth=1
	addl	-64(%rsp), %r8d         # 4-byte Folded Reload
	addl	%r9d, %r12d
	movl	18548(%rdi), %ebx
	cmpl	$55, %ebx
	jne	.LBB32_38
# BB#37:                                # %if.then.8.i.348
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18548(%rdi)
	xorl	%ebx, %ebx
.LBB32_38:                              # %bjc_rand.exit350
                                        #   in Loop: Header=BB32_34 Depth=1
	addl	%r13d, %r8d
	addl	%r15d, %r10d
	andl	$1023, %edx             # imm = 0x3FF
	leal	-4080(%r12), %ebp
	cmpl	18552(%rdi,%rdx,4), %r12d
	movl	-4(%rsp), %ecx          # 4-byte Reload
	movb	%cl, %r9b
	jg	.LBB32_40
# BB#39:                                # %bjc_rand.exit350
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, %r9d
.LBB32_40:                              # %bjc_rand.exit350
                                        #   in Loop: Header=BB32_34 Depth=1
	cmovgl	%ebp, %r12d
	leal	1(%rbx), %edx
	movl	%edx, 18548(%rdi)
	movslq	%ebx, %rdx
	movl	bjc_rand_seed(,%rdx,4), %edx
	leal	1(%rax), %ebp
	movl	%ebp, 18544(%rdi)
	cltq
	addl	bjc_rand_seed(,%rax,4), %edx
	movl	%edx, bjc_rand_seed(,%rax,4)
	movl	18544(%rdi), %eax
	cmpl	$55, %eax
	jne	.LBB32_42
# BB#41:                                # %if.then.i.329
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18544(%rdi)
	xorl	%eax, %eax
.LBB32_42:                              # %if.end.i.331
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	18548(%rdi), %ebx
	cmpl	$55, %ebx
	jne	.LBB32_44
# BB#43:                                # %if.then.8.i.332
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18548(%rdi)
	xorl	%ebx, %ebx
.LBB32_44:                              # %bjc_rand.exit334
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-56(%rsp), %rbp         # 8-byte Reload
	orb	%bpl, %r9b
	andl	$1023, %edx             # imm = 0x3FF
	leal	-4080(%r8), %ebp
	cmpl	18552(%rdi,%rdx,4), %r8d
	movb	%cl, %r13b
	jg	.LBB32_46
# BB#45:                                # %bjc_rand.exit334
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, %r13d
.LBB32_46:                              # %bjc_rand.exit334
                                        #   in Loop: Header=BB32_34 Depth=1
	cmovgl	%ebp, %r8d
	leal	1(%rbx), %edx
	movl	%edx, 18548(%rdi)
	movslq	%ebx, %rdx
	movl	bjc_rand_seed(,%rdx,4), %edx
	leal	1(%rax), %ebp
	movl	%ebp, 18544(%rdi)
	cltq
	addl	bjc_rand_seed(,%rax,4), %edx
	movl	%edx, bjc_rand_seed(,%rax,4)
	cmpl	$55, 18544(%rdi)
	jne	.LBB32_48
# BB#47:                                # %if.then.i.313
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18544(%rdi)
.LBB32_48:                              # %if.end.i.315
                                        #   in Loop: Header=BB32_34 Depth=1
	cmpl	$55, 18548(%rdi)
	movq	-16(%rsp), %rbx         # 8-byte Reload
	jne	.LBB32_50
# BB#49:                                # %if.then.8.i.316
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, 18548(%rdi)
.LBB32_50:                              # %bjc_rand.exit318
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-48(%rsp), %rax         # 8-byte Reload
	orb	%al, %r13b
	andl	$1023, %edx             # imm = 0x3FF
	leal	-4080(%r10), %eax
	cmpl	18552(%rdi,%rdx,4), %r10d
	movb	%cl, %r15b
	movl	%ecx, %edx
	jg	.LBB32_52
# BB#51:                                # %bjc_rand.exit318
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	$0, %r15d
.LBB32_52:                              # %bjc_rand.exit318
                                        #   in Loop: Header=BB32_34 Depth=1
	cmovgl	%eax, %r10d
	movq	-32(%rsp), %rax         # 8-byte Reload
	orb	%al, %r15b
	leal	8(%r12), %eax
	sarl	$4, %eax
	movl	%eax, (%r14)
	movd	%r10d, %xmm3
	movd	%r12d, %xmm4
	movd	%r8d, %xmm5
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm5      # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm4      # xmm4 = xmm5[0,2,2,3]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movd	%xmm3, %eax
	leal	8(%rax,%r12,2), %r11d
	leal	8(%r8), %eax
	sarl	$4, %eax
	movl	%eax, 4(%r14)
	leal	8(%r8,%r8,2), %eax
	sarl	$4, %eax
	addl	%eax, 28(%r14)
	pshufd	$229, %xmm3, %xmm4      # xmm4 = xmm3[1,1,2,3]
	movd	%xmm4, %eax
	leal	8(%rax,%r8,2), %r12d
	leal	8(%r10), %eax
	sarl	$4, %eax
	movl	%eax, 8(%r14)
	leal	8(%r10,%r10,2), %eax
	sarl	$4, %eax
	addl	%eax, 32(%r14)
	pshufd	$78, %xmm3, %xmm4       # xmm4 = xmm3[2,3,0,1]
	paddd	%xmm2, %xmm3
	psrad	$4, %xmm3
	movdqu	12(%r14), %xmm5
	paddd	%xmm3, %xmm5
	movdqu	%xmm5, 12(%r14)
	movd	%xmm4, %eax
	leal	8(%rax,%r10,2), %r10d
	movzbl	%dl, %eax
	cmpl	$128, %eax
	jne	.LBB32_57
# BB#53:                                # %if.then.373
                                        #   in Loop: Header=BB32_34 Depth=1
	cmpl	$0, 56(%rsp)
	je	.LBB32_54
# BB#55:                                # %if.then.375
                                        #   in Loop: Header=BB32_34 Depth=1
	movzbl	%r13b, %eax
	andb	%r9b, %r13b
	movzbl	%r9b, %r9d
	movzbl	%r15b, %edx
	movb	%r13b, %bpl
	andb	%r15b, %bpl
	movzbl	%bpl, %r15d
	notl	%r15d
	andl	%r15d, %r9d
	andl	%r15d, %eax
	andl	%edx, %r15d
	movb	%al, %r13b
	jmp	.LBB32_56
	.align	16, 0x90
.LBB32_57:                              # %if.else.407
                                        #   in Loop: Header=BB32_34 Depth=1
	cmpl	$2, %ebx
	jne	.LBB32_62
# BB#58:                                # %if.then.410
                                        #   in Loop: Header=BB32_34 Depth=1
	cmpl	$0, 56(%rsp)
	je	.LBB32_59
# BB#60:                                # %if.then.412
                                        #   in Loop: Header=BB32_34 Depth=1
	movzbl	%r13b, %eax
	andb	%r9b, %r13b
	movzbl	%r9b, %r9d
	movzbl	%r15b, %edx
	movb	%r13b, %r8b
	andb	%r15b, %r8b
	movzbl	%r8b, %r15d
	notl	%r15d
	andl	%r15d, %r9d
	andl	%r15d, %eax
	andl	%edx, %r15d
	movb	%al, %r13b
	jmp	.LBB32_61
	.align	16, 0x90
.LBB32_62:                              # %if.else.443
                                        #   in Loop: Header=BB32_34 Depth=1
	movl	-4(%rsp), %eax          # 4-byte Reload
	addb	%al, %al
	movl	%eax, -4(%rsp)          # 4-byte Spill
	movl	-72(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB32_63
.LBB32_54:                              #   in Loop: Header=BB32_34 Depth=1
	movl	-72(%rsp), %ebp         # 4-byte Reload
.LBB32_56:                              # %if.end.397
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	movb	%r9b, (%rax)
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movb	%r13b, (%rax,%rdx)
	movq	-88(%rsp), %rdx         # 8-byte Reload
	movb	%r15b, (%rax,%rdx)
	movq	-96(%rsp), %rdx         # 8-byte Reload
	movb	%bpl, (%rax,%rdx)
	decq	%rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movb	$1, %al
	movl	%eax, -4(%rsp)          # 4-byte Spill
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	jmp	.LBB32_63
.LBB32_59:                              #   in Loop: Header=BB32_34 Depth=1
	movl	-72(%rsp), %r8d         # 4-byte Reload
.LBB32_61:                              # %if.end.434
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	movb	%r9b, (%rax)
	movq	-80(%rsp), %rdx         # 8-byte Reload
	movb	%r13b, (%rax,%rdx)
	movq	-88(%rsp), %rdx         # 8-byte Reload
	movb	%r15b, (%rax,%rdx)
	movq	-96(%rsp), %rdx         # 8-byte Reload
	movb	%r8b, (%rax,%rdx)
.LBB32_63:                              # %for.inc.449
                                        #   in Loop: Header=BB32_34 Depth=1
	sarl	$4, %r11d
	sarl	$4, %r12d
	sarl	$4, %r10d
	addq	$-12, %r14
	decl	%ebx
	addq	$-4, %rsi
	cmpl	$1, %ebx
	movl	$1, %edx
	movb	%r15b, %al
	movb	%r13b, %bpl
	movb	%r9b, %cl
	jg	.LBB32_34
.LBB32_64:                              # %if.end.455
	movl	%edx, 22648(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	FloydSteinbergDitheringC, .Lfunc_end32-FloydSteinbergDitheringC
	.cfi_endproc

	.globl	FloydSteinbergCloseC
	.align	16, 0x90
	.type	FloydSteinbergCloseC,@function
FloydSteinbergCloseC:                   # @FloydSteinbergCloseC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movq	24(%rax), %rcx
	movq	22656(%rdi), %rsi
	movl	$.L.str.3, %edx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end33:
	.size	FloydSteinbergCloseC, .Lfunc_end33-FloydSteinbergCloseC
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033@"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.1:
	.asciz	"\033[K\002\000\000\017"
	.size	.L.str.1, 8

	.type	bjc_rand_seed,@object   # @bjc_rand_seed
	.data
	.globl	bjc_rand_seed
	.align	16
bjc_rand_seed:
	.long	3627                    # 0xe2b
	.long	15177                   # 0x3b49
	.long	6104                    # 0x17d8
	.long	15555                   # 0x3cc3
	.long	14210                   # 0x3782
	.long	9940                    # 0x26d4
	.long	11987                   # 0x2ed3
	.long	7070                    # 0x1b9e
	.long	6147                    # 0x1803
	.long	15691                   # 0x3d4b
	.long	14536                   # 0x38c8
	.long	12896                   # 0x3260
	.long	8959                    # 0x22ff
	.long	14926                   # 0x3a4e
	.long	9034                    # 0x234a
	.long	13544                   # 0x34e8
	.long	13665                   # 0x3561
	.long	3175                    # 0xc67
	.long	10177                   # 0x27c1
	.long	14856                   # 0x3a08
	.long	16042                   # 0x3eaa
	.long	4265                    # 0x10a9
	.long	13976                   # 0x3698
	.long	10805                   # 0x2a35
	.long	14817                   # 0x39e1
	.long	8216                    # 0x2018
	.long	695                     # 0x2b7
	.long	8656                    # 0x21d0
	.long	9189                    # 0x23e5
	.long	15304                   # 0x3bc8
	.long	1469                    # 0x5bd
	.long	9641                    # 0x25a9
	.long	1648                    # 0x670
	.long	16218                   # 0x3f5a
	.long	12421                   # 0x3085
	.long	5451                    # 0x154b
	.long	255                     # 0xff
	.long	11268                   # 0x2c04
	.long	16121                   # 0x3ef9
	.long	11645                   # 0x2d7d
	.long	1855                    # 0x73f
	.long	5982                    # 0x175e
	.long	9983                    # 0x26ff
	.long	1052                    # 0x41c
	.long	5255                    # 0x1487
	.long	15264                   # 0x3ba0
	.long	6123                    # 0x17eb
	.long	3577                    # 0xdf9
	.long	9712                    # 0x25f0
	.long	14629                   # 0x3925
	.long	4593                    # 0x11f1
	.long	15670                   # 0x3d36
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	bjc_rand_seed, 220

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"bjc error buffer"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bjc CMY error buffer"
	.size	.L.str.3, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
