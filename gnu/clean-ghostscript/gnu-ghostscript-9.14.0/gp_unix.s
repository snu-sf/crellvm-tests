	.text
	.file	"gp_unix.bc"
	.globl	gp_init
	.align	16, 0x90
	.type	gp_init,@function
gp_init:                                # @gp_init
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end0:
	.size	gp_init, .Lfunc_end0-gp_init
	.cfi_endproc

	.globl	gp_exit
	.align	16, 0x90
	.type	gp_exit,@function
gp_exit:                                # @gp_exit
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end1:
	.size	gp_exit, .Lfunc_end1-gp_exit
	.cfi_endproc

	.globl	gp_do_exit
	.align	16, 0x90
	.type	gp_do_exit,@function
gp_do_exit:                             # @gp_do_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	callq	exit
.Lfunc_end2:
	.size	gp_do_exit, .Lfunc_end2-gp_do_exit
	.cfi_endproc

	.globl	gp_strerror
	.align	16, 0x90
	.type	gp_strerror,@function
gp_strerror:                            # @gp_strerror
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gp_strerror, .Lfunc_end3-gp_strerror
	.cfi_endproc

	.globl	gp_serialnumber
	.align	16, 0x90
	.type	gp_serialnumber,@function
gp_serialnumber:                        # @gp_serialnumber
	.cfi_startproc
# BB#0:                                 # %entry
	movl	gs_serialnumber(%rip), %eax
	retq
.Lfunc_end4:
	.size	gp_serialnumber, .Lfunc_end4-gp_serialnumber
	.cfi_endproc

	.globl	gp_read_macresource
	.align	16, 0x90
	.type	gp_read_macresource,@function
gp_read_macresource:                    # @gp_read_macresource
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gp_read_macresource, .Lfunc_end5-gp_read_macresource
	.cfi_endproc

	.globl	gp_get_realtime
	.align	16, 0x90
	.type	gp_get_realtime,@function
gp_get_realtime:                        # @gp_get_realtime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	gettimeofday
	cmpl	$-1, %eax
	je	.LBB6_2
# BB#1:                                 # %entry.if.end_crit_edge
	movq	16(%rsp), %rax
	movq	24(%rsp), %rbx
	jmp	.LBB6_3
.LBB6_2:                                # %if.then
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str, %edi
	movl	$161, %esi
	callq	lprintf_file_and_line
	xorl	%ebx, %ebx
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	xorl	%eax, %eax
.LBB6_3:                                # %if.end
	movq	%rax, (%r15)
	imulq	$1000, %rbx, %rax       # imm = 0x3E8
	xorl	%ecx, %ecx
	cmpq	$1000000, %rbx          # imm = 0xF4240
	cmovbq	%rax, %rcx
	movq	%rcx, 8(%r15)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gp_get_realtime, .Lfunc_end6-gp_get_realtime
	.cfi_endproc

	.globl	gp_get_usertime
	.align	16, 0x90
	.type	gp_get_usertime,@function
gp_get_usertime:                        # @gp_get_usertime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	callq	times
	movq	8(%rsp), %rcx
	addq	(%rsp), %rcx
	addq	16(%rsp), %rcx
	addq	24(%rsp), %rcx
	movabsq	$-6640827866535438581, %rdx # imm = 0xA3D70A3D70A3D70B
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$6, %rdx
	addq	%rax, %rdx
	movq	%rdx, (%rbx)
	imulq	$100, %rdx, %rax
	subq	%rax, %rcx
	imulq	$10000000, %rcx, %rax   # imm = 0x989680
	movq	%rax, 8(%rbx)
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gp_get_usertime, .Lfunc_end7-gp_get_usertime
	.cfi_endproc

	.globl	gp_getenv_display
	.align	16, 0x90
	.type	gp_getenv_display,@function
gp_getenv_display:                      # @gp_getenv_display
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.2, %edi
	jmp	getenv                  # TAILCALL
.Lfunc_end8:
	.size	gp_getenv_display, .Lfunc_end8-gp_getenv_display
	.cfi_endproc

	.globl	gp_open_printer
	.align	16, 0x90
	.type	gp_open_printer,@function
gp_open_printer:                        # @gp_open_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB9_1
# BB#2:                                 # %cond.false
	testl	%ebp, %ebp
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gp_fopen                # TAILCALL
.LBB9_1:                                # %cond.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gp_open_printer, .Lfunc_end9-gp_open_printer
	.cfi_endproc

	.globl	gp_open_printer_64
	.align	16, 0x90
	.type	gp_open_printer_64,@function
gp_open_printer_64:                     # @gp_open_printer_64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB10_1
# BB#2:                                 # %cond.false
	testl	%ebp, %ebp
	movl	$.L.str.3, %eax
	movl	$.L.str.4, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gp_fopen_64             # TAILCALL
.LBB10_1:                               # %cond.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gp_open_printer_64, .Lfunc_end10-gp_open_printer_64
	.cfi_endproc

	.globl	gp_close_printer
	.align	16, 0x90
	.type	gp_close_printer,@function
gp_close_printer:                       # @gp_close_printer
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %eax
	movq	%rsi, %rdi
	cmpl	$124, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	pclose                  # TAILCALL
.LBB11_2:                               # %if.else
	jmp	fclose                  # TAILCALL
.Lfunc_end11:
	.size	gp_close_printer, .Lfunc_end11-gp_close_printer
	.cfi_endproc

	.globl	gp_enumerate_fonts_init
	.align	16, 0x90
	.type	gp_enumerate_fonts_init,@function
gp_enumerate_fonts_init:                # @gp_enumerate_fonts_init
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	gp_enumerate_fonts_init, .Lfunc_end12-gp_enumerate_fonts_init
	.cfi_endproc

	.globl	gp_enumerate_fonts_next
	.align	16, 0x90
	.type	gp_enumerate_fonts_next,@function
gp_enumerate_fonts_next:                # @gp_enumerate_fonts_next
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	gp_enumerate_fonts_next, .Lfunc_end13-gp_enumerate_fonts_next
	.cfi_endproc

	.globl	gp_enumerate_fonts_free
	.align	16, 0x90
	.type	gp_enumerate_fonts_free,@function
gp_enumerate_fonts_free:                # @gp_enumerate_fonts_free
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end14:
	.size	gp_enumerate_fonts_free, .Lfunc_end14-gp_enumerate_fonts_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./base/gp_unix.c"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Ghostscript: gettimeofday failed!\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DISPLAY"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"wb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"w"
	.size	.L.str.4, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
