	.text
	.file	"emacs.bc"
	.globl	XLI
	.align	16, 0x90
	.type	XLI,@function
XLI:                                    # @XLI
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	XLI, .Lfunc_end0-XLI
	.cfi_endproc

	.globl	XIL
	.align	16, 0x90
	.type	XIL,@function
XIL:                                    # @XIL
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	XIL, .Lfunc_end1-XIL
	.cfi_endproc

	.globl	make_number
	.align	16, 0x90
	.type	make_number,@function
make_number:                            # @make_number
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	make_number, .Lfunc_end2-make_number
	.cfi_endproc

	.globl	XINT
	.align	16, 0x90
	.type	XINT,@function
XINT:                                   # @XINT
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	XINT, .Lfunc_end3-XINT
	.cfi_endproc

	.globl	XFASTINT
	.align	16, 0x90
	.type	XFASTINT,@function
XFASTINT:                               # @XFASTINT
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$2, %rdi
	movq	%rdi, -16(%rbp)
	cmpq	-16(%rbp), %rcx
	jg	.LBB4_2
# BB#1:                                 # %cond.true
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
.LBB4_3:                                # %cond.end
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	XFASTINT, .Lfunc_end4-XFASTINT
	.cfi_endproc

	.globl	XSYMBOL
	.align	16, 0x90
	.type	XSYMBOL,@function
XSYMBOL:                                # @XSYMBOL
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
	movabsq	$lispsym, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	addq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	XSYMBOL, .Lfunc_end5-XSYMBOL
	.cfi_endproc

	.globl	XTYPE
	.align	16, 0x90
	.type	XTYPE,@function
XTYPE:                                  # @XTYPE
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	XTYPE, .Lfunc_end6-XTYPE
	.cfi_endproc

	.globl	XUNTAG
	.align	16, 0x90
	.type	XUNTAG,@function
XUNTAG:                                 # @XUNTAG
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	subq	%rax, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	XUNTAG, .Lfunc_end7-XUNTAG
	.cfi_endproc

	.globl	XUINT
	.align	16, 0x90
	.type	XUINT,@function
XUINT:                                  # @XUINT
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	shrq	$2, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	XUINT, .Lfunc_end8-XUINT
	.cfi_endproc

	.globl	XHASH
	.align	16, 0x90
	.type	XHASH,@function
XHASH:                                  # @XHASH
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XUINT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	XHASH, .Lfunc_end9-XHASH
	.cfi_endproc

	.globl	make_natnum
	.align	16, 0x90
	.type	make_natnum,@function
make_natnum:                            # @make_natnum
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
	movq	%rdi, -8(%rbp)
	movq	$2, -16(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	make_natnum, .Lfunc_end10-make_natnum
	.cfi_endproc

	.globl	EQ
	.align	16, 0x90
	.type	EQ,@function
EQ:                                     # @EQ
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	-16(%rbp), %rsi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	EQ, .Lfunc_end11-EQ
	.cfi_endproc

	.globl	clip_to_bounds
	.align	16, 0x90
	.type	clip_to_bounds,@function
clip_to_bounds:                         # @clip_to_bounds
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	-8(%rbp), %rdx
	jge	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_2:                               # %cond.false
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jg	.LBB12_4
# BB#3:                                 # %cond.true.2
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false.3
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB12_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB12_6:                               # %cond.end.4
	movq	-32(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end12:
	.size	clip_to_bounds, .Lfunc_end12-clip_to_bounds
	.cfi_endproc

	.globl	XCONS
	.align	16, 0x90
	.type	XCONS,@function
XCONS:                                  # @XCONS
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	XCONS, .Lfunc_end13-XCONS
	.cfi_endproc

	.globl	XVECTOR
	.align	16, 0x90
	.type	XVECTOR,@function
XVECTOR:                                # @XVECTOR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	XVECTOR, .Lfunc_end14-XVECTOR
	.cfi_endproc

	.globl	XSTRING
	.align	16, 0x90
	.type	XSTRING,@function
XSTRING:                                # @XSTRING
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$4, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	XSTRING, .Lfunc_end15-XSTRING
	.cfi_endproc

	.globl	XFLOAT
	.align	16, 0x90
	.type	XFLOAT,@function
XFLOAT:                                 # @XFLOAT
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$7, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	XFLOAT, .Lfunc_end16-XFLOAT
	.cfi_endproc

	.globl	XPROCESS
	.align	16, 0x90
	.type	XPROCESS,@function
XPROCESS:                               # @XPROCESS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	XPROCESS, .Lfunc_end17-XPROCESS
	.cfi_endproc

	.globl	XWINDOW
	.align	16, 0x90
	.type	XWINDOW,@function
XWINDOW:                                # @XWINDOW
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	XWINDOW, .Lfunc_end18-XWINDOW
	.cfi_endproc

	.globl	XTERMINAL
	.align	16, 0x90
	.type	XTERMINAL,@function
XTERMINAL:                              # @XTERMINAL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	XTERMINAL, .Lfunc_end19-XTERMINAL
	.cfi_endproc

	.globl	XSUBR
	.align	16, 0x90
	.type	XSUBR,@function
XSUBR:                                  # @XSUBR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	XSUBR, .Lfunc_end20-XSUBR
	.cfi_endproc

	.globl	XBUFFER
	.align	16, 0x90
	.type	XBUFFER,@function
XBUFFER:                                # @XBUFFER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end21:
	.size	XBUFFER, .Lfunc_end21-XBUFFER
	.cfi_endproc

	.globl	XCHAR_TABLE
	.align	16, 0x90
	.type	XCHAR_TABLE,@function
XCHAR_TABLE:                            # @XCHAR_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	XCHAR_TABLE, .Lfunc_end22-XCHAR_TABLE
	.cfi_endproc

	.globl	XSUB_CHAR_TABLE
	.align	16, 0x90
	.type	XSUB_CHAR_TABLE,@function
XSUB_CHAR_TABLE:                        # @XSUB_CHAR_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	XSUB_CHAR_TABLE, .Lfunc_end23-XSUB_CHAR_TABLE
	.cfi_endproc

	.globl	XBOOL_VECTOR
	.align	16, 0x90
	.type	XBOOL_VECTOR,@function
XBOOL_VECTOR:                           # @XBOOL_VECTOR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	XBOOL_VECTOR, .Lfunc_end24-XBOOL_VECTOR
	.cfi_endproc

	.globl	make_lisp_ptr
	.align	16, 0x90
	.type	make_lisp_ptr,@function
make_lisp_ptr:                          # @make_lisp_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	addq	%rax, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	make_lisp_ptr, .Lfunc_end25-make_lisp_ptr
	.cfi_endproc

	.globl	make_lisp_symbol
	.align	16, 0x90
	.type	make_lisp_symbol,@function
make_lisp_symbol:                       # @make_lisp_symbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movabsq	$lispsym, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	%rax, %rdi
	addq	$0, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	make_lisp_symbol, .Lfunc_end26-make_lisp_symbol
	.cfi_endproc

	.globl	builtin_lisp_symbol
	.align	16, 0x90
	.type	builtin_lisp_symbol,@function
builtin_lisp_symbol:                    # @builtin_lisp_symbol
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$lispsym, %rax
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	make_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	builtin_lisp_symbol, .Lfunc_end27-builtin_lisp_symbol
	.cfi_endproc

	.globl	XINTPTR
	.align	16, 0x90
	.type	XINTPTR,@function
XINTPTR:                                # @XINTPTR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$2, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	XINTPTR, .Lfunc_end28-XINTPTR
	.cfi_endproc

	.globl	make_pointer_integer
	.align	16, 0x90
	.type	make_pointer_integer,@function
make_pointer_integer:                   # @make_pointer_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$2, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	make_pointer_integer, .Lfunc_end29-make_pointer_integer
	.cfi_endproc

	.globl	CHECK_TYPE
	.align	16, 0x90
	.type	CHECK_TYPE,@function
CHECK_TYPE:                             # @CHECK_TYPE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB30_2
# BB#1:                                 # %cond.true
	jmp	.LBB30_3
.LBB30_2:                               # %cond.false
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB30_3:                               # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	CHECK_TYPE, .Lfunc_end30-CHECK_TYPE
	.cfi_endproc

	.globl	xcar_addr
	.align	16, 0x90
	.type	xcar_addr,@function
xcar_addr:                              # @xcar_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	xcar_addr, .Lfunc_end31-xcar_addr
	.cfi_endproc

	.globl	xcdr_addr
	.align	16, 0x90
	.type	xcdr_addr,@function
xcdr_addr:                              # @xcdr_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	addq	$8, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	xcdr_addr, .Lfunc_end32-xcdr_addr
	.cfi_endproc

	.globl	XCAR
	.align	16, 0x90
	.type	XCAR,@function
XCAR:                                   # @XCAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	XCAR, .Lfunc_end33-XCAR
	.cfi_endproc

	.globl	XCDR
	.align	16, 0x90
	.type	XCDR,@function
XCDR:                                   # @XCDR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	XCDR, .Lfunc_end34-XCDR
	.cfi_endproc

	.globl	XSETCAR
	.align	16, 0x90
	.type	XSETCAR,@function
XSETCAR:                                # @XSETCAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	xcar_addr
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	XSETCAR, .Lfunc_end35-XSETCAR
	.cfi_endproc

	.globl	XSETCDR
	.align	16, 0x90
	.type	XSETCDR,@function
XSETCDR:                                # @XSETCDR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	xcdr_addr
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	XSETCDR, .Lfunc_end36-XSETCDR
	.cfi_endproc

	.globl	CAR
	.align	16, 0x90
	.type	CAR,@function
CAR:                                    # @CAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB37_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB37_6
.LBB37_2:                               # %cond.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_4
# BB#3:                                 # %cond.true.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB37_5
.LBB37_4:                               # %cond.false.6
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB37_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB37_6
.LBB37_6:                               # %cond.end.8
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	CAR, .Lfunc_end37-CAR
	.cfi_endproc

	.globl	CDR
	.align	16, 0x90
	.type	CDR,@function
CDR:                                    # @CDR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB38_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB38_6
.LBB38_2:                               # %cond.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_4
# BB#3:                                 # %cond.true.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB38_5
.LBB38_4:                               # %cond.false.6
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB38_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB38_6
.LBB38_6:                               # %cond.end.8
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	CDR, .Lfunc_end38-CDR
	.cfi_endproc

	.globl	CAR_SAFE
	.align	16, 0x90
	.type	CAR_SAFE,@function
CAR_SAFE:                               # @CAR_SAFE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB39_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB39_3
.LBB39_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB39_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	CAR_SAFE, .Lfunc_end39-CAR_SAFE
	.cfi_endproc

	.globl	CDR_SAFE
	.align	16, 0x90
	.type	CDR_SAFE,@function
CDR_SAFE:                               # @CDR_SAFE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB40_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB40_3
.LBB40_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB40_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	CDR_SAFE, .Lfunc_end40-CDR_SAFE
	.cfi_endproc

	.globl	STRING_MULTIBYTE
	.align	16, 0x90
	.type	STRING_MULTIBYTE,@function
STRING_MULTIBYTE:                       # @STRING_MULTIBYTE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSTRING
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	cmpq	8(%rax), %rdi
	setle	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	STRING_MULTIBYTE, .Lfunc_end41-STRING_MULTIBYTE
	.cfi_endproc

	.globl	SDATA
	.align	16, 0x90
	.type	SDATA,@function
SDATA:                                  # @SDATA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	SDATA, .Lfunc_end42-SDATA
	.cfi_endproc

	.globl	SSDATA
	.align	16, 0x90
	.type	SSDATA,@function
SSDATA:                                 # @SSDATA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	SSDATA, .Lfunc_end43-SSDATA
	.cfi_endproc

	.globl	SREF
	.align	16, 0x90
	.type	SREF,@function
SREF:                                   # @SREF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movzbl	(%rax,%rsi), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	SREF, .Lfunc_end44-SREF
	.cfi_endproc

	.globl	SSET
	.align	16, 0x90
	.type	SSET,@function
SSET:                                   # @SSET
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)
	movb	-17(%rbp), %al
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movb	%al, -18(%rbp)          # 1-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movb	-18(%rbp), %cl          # 1-byte Reload
	movb	%cl, (%rax,%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	SSET, .Lfunc_end45-SSET
	.cfi_endproc

	.globl	SCHARS
	.align	16, 0x90
	.type	SCHARS,@function
SCHARS:                                 # @SCHARS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	SCHARS, .Lfunc_end46-SCHARS
	.cfi_endproc

	.globl	STRING_BYTES
	.align	16, 0x90
	.type	STRING_BYTES,@function
STRING_BYTES:                           # @STRING_BYTES
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jge	.LBB47_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB47_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end47:
	.size	STRING_BYTES, .Lfunc_end47-STRING_BYTES
	.cfi_endproc

	.globl	SBYTES
	.align	16, 0x90
	.type	SBYTES,@function
SBYTES:                                 # @SBYTES
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	%rax, %rdi
	callq	STRING_BYTES
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	SBYTES, .Lfunc_end48-SBYTES
	.cfi_endproc

	.globl	STRING_SET_CHARS
	.align	16, 0x90
	.type	STRING_SET_CHARS,@function
STRING_SET_CHARS:                       # @STRING_SET_CHARS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XSTRING
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	STRING_SET_CHARS, .Lfunc_end49-STRING_SET_CHARS
	.cfi_endproc

	.globl	bool_vector_size
	.align	16, 0x90
	.type	bool_vector_size,@function
bool_vector_size:                       # @bool_vector_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBOOL_VECTOR
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	-16(%rbp), %rdi
	jg	.LBB50_2
# BB#1:                                 # %cond.true
	jmp	.LBB50_3
.LBB50_2:                               # %cond.false
.LBB50_3:                               # %cond.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	bool_vector_size, .Lfunc_end50-bool_vector_size
	.cfi_endproc

	.globl	bool_vector_data
	.align	16, 0x90
	.type	bool_vector_data,@function
bool_vector_data:                       # @bool_vector_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XBOOL_VECTOR
	addq	$16, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	bool_vector_data, .Lfunc_end51-bool_vector_data
	.cfi_endproc

	.globl	bool_vector_uchar_data
	.align	16, 0x90
	.type	bool_vector_uchar_data,@function
bool_vector_uchar_data:                 # @bool_vector_uchar_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	bool_vector_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	bool_vector_uchar_data, .Lfunc_end52-bool_vector_uchar_data
	.cfi_endproc

	.globl	bool_vector_words
	.align	16, 0x90
	.type	bool_vector_words,@function
bool_vector_words:                      # @bool_vector_words
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	cmpq	-8(%rbp), %rcx
	jg	.LBB53_3
# BB#1:                                 # %land.lhs.true
	movabsq	$9223372036854775744, %rax # imm = 0x7FFFFFFFFFFFFFC0
	cmpq	%rax, -8(%rbp)
	jg	.LBB53_3
# BB#2:                                 # %cond.true
	jmp	.LBB53_4
.LBB53_3:                               # %cond.false
.LBB53_4:                               # %cond.end
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$64, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	popq	%rbp
	retq
.Lfunc_end53:
	.size	bool_vector_words, .Lfunc_end53-bool_vector_words
	.cfi_endproc

	.globl	bool_vector_bytes
	.align	16, 0x90
	.type	bool_vector_bytes,@function
bool_vector_bytes:                      # @bool_vector_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	cmpq	-8(%rbp), %rcx
	jg	.LBB54_3
# BB#1:                                 # %land.lhs.true
	movabsq	$9223372036854775744, %rax # imm = 0x7FFFFFFFFFFFFFC0
	cmpq	%rax, -8(%rbp)
	jg	.LBB54_3
# BB#2:                                 # %cond.true
	jmp	.LBB54_4
.LBB54_3:                               # %cond.false
.LBB54_4:                               # %cond.end
	movl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	popq	%rbp
	retq
.Lfunc_end54:
	.size	bool_vector_bytes, .Lfunc_end54-bool_vector_bytes
	.cfi_endproc

	.globl	bool_vector_bitref
	.align	16, 0x90
	.type	bool_vector_bitref,@function
bool_vector_bitref:                     # @bool_vector_bitref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	-16(%rbp), %rcx
	jg	.LBB55_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	bool_vector_size
	movq	-24(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB55_3
# BB#2:                                 # %cond.true
	jmp	.LBB55_4
.LBB55_3:                               # %cond.false
.LBB55_4:                               # %cond.end
	movl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	bool_vector_uchar_data
	movl	$1, %esi
	movl	$8, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rax,%rdi), %r8d
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movl	%edx, %r9d
	movl	%r9d, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %r8d
	cmpl	$0, %r8d
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	bool_vector_bitref, .Lfunc_end55-bool_vector_bitref
	.cfi_endproc

	.globl	bool_vector_ref
	.align	16, 0x90
	.type	bool_vector_ref,@function
bool_vector_ref:                        # @bool_vector_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	bool_vector_bitref
	testb	$1, %al
	jne	.LBB56_1
	jmp	.LBB56_2
.LBB56_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB56_3
.LBB56_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB56_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	bool_vector_ref, .Lfunc_end56-bool_vector_ref
	.cfi_endproc

	.globl	bool_vector_set
	.align	16, 0x90
	.type	bool_vector_set,@function
bool_vector_set:                        # @bool_vector_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%dl, %al
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	cmpq	-16(%rbp), %rcx
	jg	.LBB57_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	bool_vector_size
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB57_3
# BB#2:                                 # %cond.true
	jmp	.LBB57_4
.LBB57_3:                               # %cond.false
.LBB57_4:                               # %cond.end
	movl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	cqto
	idivq	%rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	bool_vector_uchar_data
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB57_6
# BB#5:                                 # %if.then
	movl	$1, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	cqto
	movq	-64(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edi         # 4-byte Reload
	shll	%cl, %edi
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %r8d
	orl	%edi, %r8d
	movb	%r8b, %cl
	movb	%cl, (%rdx)
	jmp	.LBB57_7
.LBB57_6:                               # %if.else
	movl	$1, %eax
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cqto
	movq	-80(%rbp), %rsi         # 8-byte Reload
	idivq	%rsi
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-68(%rbp), %edi         # 4-byte Reload
	shll	%cl, %edi
	xorl	$-1, %edi
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %r8d
	andl	%edi, %r8d
	movb	%r8b, %cl
	movb	%cl, (%rdx)
.LBB57_7:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	bool_vector_set, .Lfunc_end57-bool_vector_set
	.cfi_endproc

	.globl	AREF
	.align	16, 0x90
	.type	AREF,@function
AREF:                                   # @AREF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	8(%rax,%rsi,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	AREF, .Lfunc_end58-AREF
	.cfi_endproc

	.globl	aref_addr
	.align	16, 0x90
	.type	aref_addr,@function
aref_addr:                              # @aref_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	-24(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	aref_addr, .Lfunc_end59-aref_addr
	.cfi_endproc

	.globl	ASIZE
	.align	16, 0x90
	.type	ASIZE,@function
ASIZE:                                  # @ASIZE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XVECTOR
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	-16(%rbp), %rdi
	jg	.LBB60_2
# BB#1:                                 # %cond.true
	jmp	.LBB60_3
.LBB60_2:                               # %cond.false
.LBB60_3:                               # %cond.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	ASIZE, .Lfunc_end60-ASIZE
	.cfi_endproc

	.globl	gc_asize
	.align	16, 0x90
	.type	gc_asize,@function
gc_asize:                               # @gc_asize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XVECTOR
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	andq	(%rax), %rdi
	movq	%rdi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gc_asize, .Lfunc_end61-gc_asize
	.cfi_endproc

	.globl	ASET
	.align	16, 0x90
	.type	ASET,@function
ASET:                                   # @ASET
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 8(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	ASET, .Lfunc_end62-ASET
	.cfi_endproc

	.globl	gc_aset
	.align	16, 0x90
	.type	gc_aset,@function
gc_aset:                                # @gc_aset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 8(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gc_aset, .Lfunc_end63-gc_aset
	.cfi_endproc

	.globl	memclear
	.align	16, 0x90
	.type	memclear,@function
memclear:                               # @memclear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	memset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	memclear, .Lfunc_end64-memclear
	.cfi_endproc

	.globl	CHAR_TABLE_REF_ASCII
	.align	16, 0x90
	.type	CHAR_TABLE_REF_ASCII,@function
CHAR_TABLE_REF_ASCII:                   # @CHAR_TABLE_REF_ASCII
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB65_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB65_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB65_4
.LBB65_3:                               # %cond.false
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB65_4:                               # %cond.end
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB65_6
# BB#5:                                 # %cond.true.3
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB65_7
.LBB65_6:                               # %cond.false.5
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	16(%rax,%rcx,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB65_7:                               # %cond.end.8
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB65_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB65_9:                               # %if.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_10
.LBB65_10:                              # %do.cond
                                        #   in Loop: Header=BB65_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jne	.LBB65_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB65_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB65_12:                              # %land.end
                                        #   in Loop: Header=BB65_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB65_1
# BB#13:                                # %do.end
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	CHAR_TABLE_REF_ASCII, .Lfunc_end65-CHAR_TABLE_REF_ASCII
	.cfi_endproc

	.globl	SUB_CHAR_TABLE_P
	.align	16, 0x90
	.type	SUB_CHAR_TABLE_P,@function
SUB_CHAR_TABLE_P:                       # @SUB_CHAR_TABLE_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$16, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	SUB_CHAR_TABLE_P, .Lfunc_end66-SUB_CHAR_TABLE_P
	.cfi_endproc

	.globl	CHAR_TABLE_REF
	.align	16, 0x90
	.type	CHAR_TABLE_REF,@function
CHAR_TABLE_REF:                         # @CHAR_TABLE_REF
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	testb	$1, %al
	jne	.LBB67_1
	jmp	.LBB67_2
.LBB67_1:                               # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB67_3
	jmp	.LBB67_4
.LBB67_2:                               # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB67_4
.LBB67_3:                               # %cond.true.4
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	CHAR_TABLE_REF_ASCII
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB67_5
.LBB67_4:                               # %cond.false.6
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	char_table_ref
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB67_5:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	CHAR_TABLE_REF, .Lfunc_end67-CHAR_TABLE_REF
	.cfi_endproc

	.globl	CHAR_TABLE_SET
	.align	16, 0x90
	.type	CHAR_TABLE_SET,@function
CHAR_TABLE_SET:                         # @CHAR_TABLE_SET
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	testb	$1, %al
	jne	.LBB68_1
	jmp	.LBB68_2
.LBB68_1:                               # %cond.true
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB68_3
	jmp	.LBB68_5
.LBB68_2:                               # %cond.false
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB68_5
.LBB68_3:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	32(%rax), %rdi
	callq	SUB_CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB68_4
	jmp	.LBB68_5
.LBB68_4:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	XCHAR_TABLE
	movq	32(%rax), %rdi
	movslq	-12(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_sub_char_table_contents
	jmp	.LBB68_6
.LBB68_5:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	char_table_set
.LBB68_6:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	CHAR_TABLE_SET, .Lfunc_end68-CHAR_TABLE_SET
	.cfi_endproc

	.globl	set_sub_char_table_contents
	.align	16, 0x90
	.type	set_sub_char_table_contents,@function
set_sub_char_table_contents:            # @set_sub_char_table_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XSUB_CHAR_TABLE
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 16(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	set_sub_char_table_contents, .Lfunc_end69-set_sub_char_table_contents
	.cfi_endproc

	.globl	CHAR_TABLE_EXTRA_SLOTS
	.align	16, 0x90
	.type	CHAR_TABLE_EXTRA_SLOTS,@function
CHAR_TABLE_EXTRA_SLOTS:                 # @CHAR_TABLE_EXTRA_SLOTS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	andq	$4095, %rdi             # imm = 0xFFF
	subq	$68, %rdi
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end70:
	.size	CHAR_TABLE_EXTRA_SLOTS, .Lfunc_end70-CHAR_TABLE_EXTRA_SLOTS
	.cfi_endproc

	.globl	SYMBOL_VAL
	.align	16, 0x90
	.type	SYMBOL_VAL,@function
SYMBOL_VAL:                             # @SYMBOL_VAL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end71:
	.size	SYMBOL_VAL, .Lfunc_end71-SYMBOL_VAL
	.cfi_endproc

	.globl	SYMBOL_ALIAS
	.align	16, 0x90
	.type	SYMBOL_ALIAS,@function
SYMBOL_ALIAS:                           # @SYMBOL_ALIAS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end72:
	.size	SYMBOL_ALIAS, .Lfunc_end72-SYMBOL_ALIAS
	.cfi_endproc

	.globl	SYMBOL_BLV
	.align	16, 0x90
	.type	SYMBOL_BLV,@function
SYMBOL_BLV:                             # @SYMBOL_BLV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end73:
	.size	SYMBOL_BLV, .Lfunc_end73-SYMBOL_BLV
	.cfi_endproc

	.globl	SYMBOL_FWD
	.align	16, 0x90
	.type	SYMBOL_FWD,@function
SYMBOL_FWD:                             # @SYMBOL_FWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end74:
	.size	SYMBOL_FWD, .Lfunc_end74-SYMBOL_FWD
	.cfi_endproc

	.globl	SET_SYMBOL_VAL
	.align	16, 0x90
	.type	SET_SYMBOL_VAL,@function
SET_SYMBOL_VAL:                         # @SET_SYMBOL_VAL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end75:
	.size	SET_SYMBOL_VAL, .Lfunc_end75-SET_SYMBOL_VAL
	.cfi_endproc

	.globl	SET_SYMBOL_ALIAS
	.align	16, 0x90
	.type	SET_SYMBOL_ALIAS,@function
SET_SYMBOL_ALIAS:                       # @SET_SYMBOL_ALIAS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end76:
	.size	SET_SYMBOL_ALIAS, .Lfunc_end76-SET_SYMBOL_ALIAS
	.cfi_endproc

	.globl	SET_SYMBOL_BLV
	.align	16, 0x90
	.type	SET_SYMBOL_BLV,@function
SET_SYMBOL_BLV:                         # @SET_SYMBOL_BLV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end77:
	.size	SET_SYMBOL_BLV, .Lfunc_end77-SET_SYMBOL_BLV
	.cfi_endproc

	.globl	SET_SYMBOL_FWD
	.align	16, 0x90
	.type	SET_SYMBOL_FWD,@function
SET_SYMBOL_FWD:                         # @SET_SYMBOL_FWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end78:
	.size	SET_SYMBOL_FWD, .Lfunc_end78-SET_SYMBOL_FWD
	.cfi_endproc

	.globl	SYMBOL_NAME
	.align	16, 0x90
	.type	SYMBOL_NAME,@function
SYMBOL_NAME:                            # @SYMBOL_NAME
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movq	lispsym+8(,%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end79:
	.size	SYMBOL_NAME, .Lfunc_end79-SYMBOL_NAME
	.cfi_endproc

	.globl	SYMBOL_INTERNED_P
	.align	16, 0x90
	.type	SYMBOL_INTERNED_P,@function
SYMBOL_INTERNED_P:                      # @SYMBOL_INTERNED_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movw	lispsym(,%rdi), %ax
	shrw	$6, %ax
	andw	$3, %ax
	movzwl	%ax, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
.Lfunc_end80:
	.size	SYMBOL_INTERNED_P, .Lfunc_end80-SYMBOL_INTERNED_P
	.cfi_endproc

	.globl	SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P
	.align	16, 0x90
	.type	SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P,@function
SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P:   # @SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movw	lispsym(,%rdi), %ax
	shrw	$6, %ax
	andw	$3, %ax
	movzwl	%ax, %ecx
	cmpl	$2, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
.Lfunc_end81:
	.size	SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P, .Lfunc_end81-SYMBOL_INTERNED_IN_INITIAL_OBARRAY_P
	.cfi_endproc

	.globl	SYMBOL_CONSTANT_P
	.align	16, 0x90
	.type	SYMBOL_CONSTANT_P,@function
SYMBOL_CONSTANT_P:                      # @SYMBOL_CONSTANT_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movw	lispsym(,%rdi), %ax
	shrw	$4, %ax
	andw	$3, %ax
	movzwl	%ax, %eax
	popq	%rbp
	retq
.Lfunc_end82:
	.size	SYMBOL_CONSTANT_P, .Lfunc_end82-SYMBOL_CONSTANT_P
	.cfi_endproc

	.globl	HASH_TABLE_P
	.align	16, 0x90
	.type	HASH_TABLE_P,@function
HASH_TABLE_P:                           # @HASH_TABLE_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$7, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	HASH_TABLE_P, .Lfunc_end83-HASH_TABLE_P
	.cfi_endproc

	.globl	PSEUDOVECTORP
	.align	16, 0x90
	.type	PSEUDOVECTORP,@function
PSEUDOVECTORP:                          # @PSEUDOVECTORP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	cmpl	$5, %esi
	je	.LBB84_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB84_3
.LBB84_2:                               # %if.else
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	PSEUDOVECTOR_TYPEP
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB84_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	PSEUDOVECTORP, .Lfunc_end84-PSEUDOVECTORP
	.cfi_endproc

	.globl	XHASH_TABLE
	.align	16, 0x90
	.type	XHASH_TABLE,@function
XHASH_TABLE:                            # @XHASH_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end85:
	.size	XHASH_TABLE, .Lfunc_end85-XHASH_TABLE
	.cfi_endproc

	.globl	HASH_KEY
	.align	16, 0x90
	.type	HASH_KEY,@function
HASH_KEY:                               # @HASH_KEY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rdi
	movq	-16(%rbp), %rsi
	shlq	$1, %rsi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	HASH_KEY, .Lfunc_end86-HASH_KEY
	.cfi_endproc

	.globl	HASH_VALUE
	.align	16, 0x90
	.type	HASH_VALUE,@function
HASH_VALUE:                             # @HASH_VALUE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rdi
	movq	-16(%rbp), %rsi
	shlq	$1, %rsi
	addq	$1, %rsi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	HASH_VALUE, .Lfunc_end87-HASH_VALUE
	.cfi_endproc

	.globl	HASH_NEXT
	.align	16, 0x90
	.type	HASH_NEXT,@function
HASH_NEXT:                              # @HASH_NEXT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	HASH_NEXT, .Lfunc_end88-HASH_NEXT
	.cfi_endproc

	.globl	HASH_HASH
	.align	16, 0x90
	.type	HASH_HASH,@function
HASH_HASH:                              # @HASH_HASH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	HASH_HASH, .Lfunc_end89-HASH_HASH
	.cfi_endproc

	.globl	HASH_INDEX
	.align	16, 0x90
	.type	HASH_INDEX,@function
HASH_INDEX:                             # @HASH_INDEX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	AREF
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	HASH_INDEX, .Lfunc_end90-HASH_INDEX
	.cfi_endproc

	.globl	HASH_TABLE_SIZE
	.align	16, 0x90
	.type	HASH_TABLE_SIZE,@function
HASH_TABLE_SIZE:                        # @HASH_TABLE_SIZE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	ASIZE
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	HASH_TABLE_SIZE, .Lfunc_end91-HASH_TABLE_SIZE
	.cfi_endproc

	.globl	sxhash_combine
	.align	16, 0x90
	.type	sxhash_combine,@function
sxhash_combine:                         # @sxhash_combine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	shlq	$4, %rsi
	movq	-8(%rbp), %rdi
	shrq	$60, %rdi
	addq	%rdi, %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end92:
	.size	sxhash_combine, .Lfunc_end92-sxhash_combine
	.cfi_endproc

	.globl	SXHASH_REDUCE
	.align	16, 0x90
	.type	SXHASH_REDUCE,@function
SXHASH_REDUCE:                          # @SXHASH_REDUCE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	shrq	$2, %rax
	xorq	%rax, %rdi
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	andq	%rax, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end93:
	.size	SXHASH_REDUCE, .Lfunc_end93-SXHASH_REDUCE
	.cfi_endproc

	.globl	save_type
	.align	16, 0x90
	.type	save_type,@function
save_type:                              # @save_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %esi
	shrl	$19, %esi
	imull	$3, -12(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	andl	$7, %esi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end94:
	.size	save_type, .Lfunc_end94-save_type
	.cfi_endproc

	.globl	XSAVE_POINTER
	.align	16, 0x90
	.type	XSAVE_POINTER,@function
XSAVE_POINTER:                          # @XSAVE_POINTER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_VALUE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	8(%rax,%rdi,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	XSAVE_POINTER, .Lfunc_end95-XSAVE_POINTER
	.cfi_endproc

	.globl	XSAVE_VALUE
	.align	16, 0x90
	.type	XSAVE_VALUE,@function
XSAVE_VALUE:                            # @XSAVE_VALUE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	XSAVE_VALUE, .Lfunc_end96-XSAVE_VALUE
	.cfi_endproc

	.globl	set_save_pointer
	.align	16, 0x90
	.type	set_save_pointer,@function
set_save_pointer:                       # @set_save_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	XSAVE_VALUE
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 8(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	set_save_pointer, .Lfunc_end97-set_save_pointer
	.cfi_endproc

	.globl	XSAVE_FUNCPOINTER
	.align	16, 0x90
	.type	XSAVE_FUNCPOINTER,@function
XSAVE_FUNCPOINTER:                      # @XSAVE_FUNCPOINTER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_VALUE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	8(%rax,%rdi,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	XSAVE_FUNCPOINTER, .Lfunc_end98-XSAVE_FUNCPOINTER
	.cfi_endproc

	.globl	XSAVE_INTEGER
	.align	16, 0x90
	.type	XSAVE_INTEGER,@function
XSAVE_INTEGER:                          # @XSAVE_INTEGER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_VALUE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	8(%rax,%rdi,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	XSAVE_INTEGER, .Lfunc_end99-XSAVE_INTEGER
	.cfi_endproc

	.globl	set_save_integer
	.align	16, 0x90
	.type	set_save_integer,@function
set_save_integer:                       # @set_save_integer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	XSAVE_VALUE
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, 8(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	set_save_integer, .Lfunc_end100-set_save_integer
	.cfi_endproc

	.globl	XSAVE_OBJECT
	.align	16, 0x90
	.type	XSAVE_OBJECT,@function
XSAVE_OBJECT:                           # @XSAVE_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_VALUE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	8(%rax,%rdi,8), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	XSAVE_OBJECT, .Lfunc_end101-XSAVE_OBJECT
	.cfi_endproc

	.globl	XMISC
	.align	16, 0x90
	.type	XMISC,@function
XMISC:                                  # @XMISC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$1, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end102:
	.size	XMISC, .Lfunc_end102-XMISC
	.cfi_endproc

	.globl	XMISCANY
	.align	16, 0x90
	.type	XMISCANY,@function
XMISCANY:                               # @XMISCANY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	XMISCANY, .Lfunc_end103-XMISCANY
	.cfi_endproc

	.globl	XMISCTYPE
	.align	16, 0x90
	.type	XMISCTYPE,@function
XMISCTYPE:                              # @XMISCTYPE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISCANY
	movl	(%rax), %ecx
	andl	$65535, %ecx            # imm = 0xFFFF
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	XMISCTYPE, .Lfunc_end104-XMISCTYPE
	.cfi_endproc

	.globl	XMARKER
	.align	16, 0x90
	.type	XMARKER,@function
XMARKER:                                # @XMARKER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	XMARKER, .Lfunc_end105-XMARKER
	.cfi_endproc

	.globl	XOVERLAY
	.align	16, 0x90
	.type	XOVERLAY,@function
XOVERLAY:                               # @XOVERLAY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	XOVERLAY, .Lfunc_end106-XOVERLAY
	.cfi_endproc

	.globl	XFINALIZER
	.align	16, 0x90
	.type	XFINALIZER,@function
XFINALIZER:                             # @XFINALIZER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMISC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	XFINALIZER, .Lfunc_end107-XFINALIZER
	.cfi_endproc

	.globl	XFWDTYPE
	.align	16, 0x90
	.type	XFWDTYPE,@function
XFWDTYPE:                               # @XFWDTYPE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end108:
	.size	XFWDTYPE, .Lfunc_end108-XFWDTYPE
	.cfi_endproc

	.globl	XBUFFER_OBJFWD
	.align	16, 0x90
	.type	XBUFFER_OBJFWD,@function
XBUFFER_OBJFWD:                         # @XBUFFER_OBJFWD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end109:
	.size	XBUFFER_OBJFWD, .Lfunc_end109-XBUFFER_OBJFWD
	.cfi_endproc

	.globl	XFLOAT_DATA
	.align	16, 0x90
	.type	XFLOAT_DATA,@function
XFLOAT_DATA:                            # @XFLOAT_DATA
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFLOAT
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	XFLOAT_DATA, .Lfunc_end110-XFLOAT_DATA
	.cfi_endproc

	.globl	NILP
	.align	16, 0x90
	.type	NILP,@function
NILP:                                   # @NILP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	NILP, .Lfunc_end111-NILP
	.cfi_endproc

	.globl	NUMBERP
	.align	16, 0x90
	.type	NUMBERP,@function
NUMBERP:                                # @NUMBERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	movb	%al, -9(%rbp)           # 1-byte Spill
	je	.LBB112_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB112_2:                              # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end112:
	.size	NUMBERP, .Lfunc_end112-NUMBERP
	.cfi_endproc

	.globl	NATNUMP
	.align	16, 0x90
	.type	NATNUMP,@function
NATNUMP:                                # @NATNUMP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB113_2
# BB#1:                                 # %land.rhs
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	setle	%sil
	movb	%sil, -9(%rbp)          # 1-byte Spill
.LBB113_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end113:
	.size	NATNUMP, .Lfunc_end113-NATNUMP
	.cfi_endproc

	.globl	RANGED_INTEGERP
	.align	16, 0x90
	.type	RANGED_INTEGERP,@function
RANGED_INTEGERP:                        # @RANGED_INTEGERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB114_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jg	.LBB114_3
# BB#2:                                 # %land.rhs
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	-24(%rbp), %rax
	setle	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB114_3:                              # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end114:
	.size	RANGED_INTEGERP, .Lfunc_end114-RANGED_INTEGERP
	.cfi_endproc

	.globl	CONSP
	.align	16, 0x90
	.type	CONSP,@function
CONSP:                                  # @CONSP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end115:
	.size	CONSP, .Lfunc_end115-CONSP
	.cfi_endproc

	.globl	FLOATP
	.align	16, 0x90
	.type	FLOATP,@function
FLOATP:                                 # @FLOATP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$7, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end116:
	.size	FLOATP, .Lfunc_end116-FLOATP
	.cfi_endproc

	.globl	MISCP
	.align	16, 0x90
	.type	MISCP,@function
MISCP:                                  # @MISCP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end117:
	.size	MISCP, .Lfunc_end117-MISCP
	.cfi_endproc

	.globl	SYMBOLP
	.align	16, 0x90
	.type	SYMBOLP,@function
SYMBOLP:                                # @SYMBOLP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end118:
	.size	SYMBOLP, .Lfunc_end118-SYMBOLP
	.cfi_endproc

	.globl	INTEGERP
	.align	16, 0x90
	.type	INTEGERP,@function
INTEGERP:                               # @INTEGERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end119:
	.size	INTEGERP, .Lfunc_end119-INTEGERP
	.cfi_endproc

	.globl	VECTORLIKEP
	.align	16, 0x90
	.type	VECTORLIKEP,@function
VECTORLIKEP:                            # @VECTORLIKEP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end120:
	.size	VECTORLIKEP, .Lfunc_end120-VECTORLIKEP
	.cfi_endproc

	.globl	MARKERP
	.align	16, 0x90
	.type	MARKERP,@function
MARKERP:                                # @MARKERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB121_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB121_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	MARKERP, .Lfunc_end121-MARKERP
	.cfi_endproc

	.globl	STRINGP
	.align	16, 0x90
	.type	STRINGP,@function
STRINGP:                                # @STRINGP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$4, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end122:
	.size	STRINGP, .Lfunc_end122-STRINGP
	.cfi_endproc

	.globl	VECTORP
	.align	16, 0x90
	.type	VECTORP,@function
VECTORP:                                # @VECTORP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$5, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB123_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	ASIZE
	movabsq	$4611686018427387904, %rdi # imm = 0x4000000000000000
	andq	%rdi, %rax
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB123_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	VECTORP, .Lfunc_end123-VECTORP
	.cfi_endproc

	.globl	OVERLAYP
	.align	16, 0x90
	.type	OVERLAYP,@function
OVERLAYP:                               # @OVERLAYP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB124_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24237, %eax            # imm = 0x5EAD
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB124_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	OVERLAYP, .Lfunc_end124-OVERLAYP
	.cfi_endproc

	.globl	SAVE_VALUEP
	.align	16, 0x90
	.type	SAVE_VALUEP,@function
SAVE_VALUEP:                            # @SAVE_VALUEP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB125_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24238, %eax            # imm = 0x5EAE
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB125_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	SAVE_VALUEP, .Lfunc_end125-SAVE_VALUEP
	.cfi_endproc

	.globl	FINALIZERP
	.align	16, 0x90
	.type	FINALIZERP,@function
FINALIZERP:                             # @FINALIZERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB126_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24239, %eax            # imm = 0x5EAF
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB126_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	FINALIZERP, .Lfunc_end126-FINALIZERP
	.cfi_endproc

	.globl	AUTOLOADP
	.align	16, 0x90
	.type	AUTOLOADP,@function
AUTOLOADP:                              # @AUTOLOADP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB127_2
# BB#1:                                 # %land.rhs
	movl	$191, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB127_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	AUTOLOADP, .Lfunc_end127-AUTOLOADP
	.cfi_endproc

	.globl	BUFFER_OBJFWDP
	.align	16, 0x90
	.type	BUFFER_OBJFWDP,@function
BUFFER_OBJFWDP:                         # @BUFFER_OBJFWDP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XFWDTYPE
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	BUFFER_OBJFWDP, .Lfunc_end128-BUFFER_OBJFWDP
	.cfi_endproc

	.globl	PSEUDOVECTOR_TYPEP
	.align	16, 0x90
	.type	PSEUDOVECTOR_TYPEP,@function
PSEUDOVECTOR_TYPEP:                     # @PSEUDOVECTOR_TYPEP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movabsq	$4611686019484352512, %rax # imm = 0x400000003F000000
	andq	(%rdi), %rax
	movl	-12(%rbp), %esi
	shll	$24, %esi
	movslq	%esi, %rdi
	movabsq	$4611686018427387904, %rcx # imm = 0x4000000000000000
	orq	%rcx, %rdi
	cmpq	%rdi, %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	popq	%rbp
	retq
.Lfunc_end129:
	.size	PSEUDOVECTOR_TYPEP, .Lfunc_end129-PSEUDOVECTOR_TYPEP
	.cfi_endproc

	.globl	WINDOW_CONFIGURATIONP
	.align	16, 0x90
	.type	WINDOW_CONFIGURATIONP,@function
WINDOW_CONFIGURATIONP:                  # @WINDOW_CONFIGURATIONP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$9, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	WINDOW_CONFIGURATIONP, .Lfunc_end130-WINDOW_CONFIGURATIONP
	.cfi_endproc

	.globl	PROCESSP
	.align	16, 0x90
	.type	PROCESSP,@function
PROCESSP:                               # @PROCESSP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	PROCESSP, .Lfunc_end131-PROCESSP
	.cfi_endproc

	.globl	WINDOWP
	.align	16, 0x90
	.type	WINDOWP,@function
WINDOWP:                                # @WINDOWP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	WINDOWP, .Lfunc_end132-WINDOWP
	.cfi_endproc

	.globl	TERMINALP
	.align	16, 0x90
	.type	TERMINALP,@function
TERMINALP:                              # @TERMINALP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$8, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	TERMINALP, .Lfunc_end133-TERMINALP
	.cfi_endproc

	.globl	SUBRP
	.align	16, 0x90
	.type	SUBRP,@function
SUBRP:                                  # @SUBRP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$10, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	SUBRP, .Lfunc_end134-SUBRP
	.cfi_endproc

	.globl	COMPILEDP
	.align	16, 0x90
	.type	COMPILEDP,@function
COMPILEDP:                              # @COMPILEDP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$14, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	COMPILEDP, .Lfunc_end135-COMPILEDP
	.cfi_endproc

	.globl	BUFFERP
	.align	16, 0x90
	.type	BUFFERP,@function
BUFFERP:                                # @BUFFERP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$6, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	BUFFERP, .Lfunc_end136-BUFFERP
	.cfi_endproc

	.globl	CHAR_TABLE_P
	.align	16, 0x90
	.type	CHAR_TABLE_P,@function
CHAR_TABLE_P:                           # @CHAR_TABLE_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$15, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	CHAR_TABLE_P, .Lfunc_end137-CHAR_TABLE_P
	.cfi_endproc

	.globl	BOOL_VECTOR_P
	.align	16, 0x90
	.type	BOOL_VECTOR_P,@function
BOOL_VECTOR_P:                          # @BOOL_VECTOR_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$5, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	BOOL_VECTOR_P, .Lfunc_end138-BOOL_VECTOR_P
	.cfi_endproc

	.globl	FRAMEP
	.align	16, 0x90
	.type	FRAMEP,@function
FRAMEP:                                 # @FRAMEP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$3, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	FRAMEP, .Lfunc_end139-FRAMEP
	.cfi_endproc

	.globl	IMAGEP
	.align	16, 0x90
	.type	IMAGEP,@function
IMAGEP:                                 # @IMAGEP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB140_2
# BB#1:                                 # %land.rhs
	movl	$537, %edi              # imm = 0x219
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB140_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	IMAGEP, .Lfunc_end140-IMAGEP
	.cfi_endproc

	.globl	ARRAYP
	.align	16, 0x90
	.type	ARRAYP,@function
ARRAYP:                                 # @ARRAYP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	VECTORP
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB141_4
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	STRINGP
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB141_4
# BB#2:                                 # %lor.lhs.false.2
	movq	-8(%rbp), %rdi
	callq	CHAR_TABLE_P
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jne	.LBB141_4
# BB#3:                                 # %lor.rhs
	movq	-8(%rbp), %rdi
	callq	BOOL_VECTOR_P
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB141_4:                              # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	ARRAYP, .Lfunc_end141-ARRAYP
	.cfi_endproc

	.globl	CHECK_LIST
	.align	16, 0x90
	.type	CHECK_LIST,@function
CHECK_LIST:                             # @CHECK_LIST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	je	.LBB142_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB142_3
.LBB142_2:                              # %cond.true
	jmp	.LBB142_4
.LBB142_3:                              # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB142_4:                              # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	CHECK_LIST, .Lfunc_end142-CHECK_LIST
	.cfi_endproc

	.globl	CHECK_LIST_CONS
	.align	16, 0x90
	.type	CHECK_LIST_CONS,@function
CHECK_LIST_CONS:                        # @CHECK_LIST_CONS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB143_2
# BB#1:                                 # %cond.true
	jmp	.LBB143_3
.LBB143_2:                              # %cond.false
	movl	$626, %edi              # imm = 0x272
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB143_3:                              # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end143:
	.size	CHECK_LIST_CONS, .Lfunc_end143-CHECK_LIST_CONS
	.cfi_endproc

	.globl	CHECK_SYMBOL
	.align	16, 0x90
	.type	CHECK_SYMBOL,@function
CHECK_SYMBOL:                           # @CHECK_SYMBOL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB144_2
# BB#1:                                 # %cond.true
	jmp	.LBB144_3
.LBB144_2:                              # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB144_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	CHECK_SYMBOL, .Lfunc_end144-CHECK_SYMBOL
	.cfi_endproc

	.globl	CHECK_NUMBER
	.align	16, 0x90
	.type	CHECK_NUMBER,@function
CHECK_NUMBER:                           # @CHECK_NUMBER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB145_2
# BB#1:                                 # %cond.true
	jmp	.LBB145_3
.LBB145_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB145_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	CHECK_NUMBER, .Lfunc_end145-CHECK_NUMBER
	.cfi_endproc

	.globl	CHECK_STRING
	.align	16, 0x90
	.type	CHECK_STRING,@function
CHECK_STRING:                           # @CHECK_STRING
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB146_1
	jmp	.LBB146_2
.LBB146_1:                              # %cond.true
	jmp	.LBB146_3
.LBB146_2:                              # %cond.false
	movl	$885, %edi              # imm = 0x375
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB146_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end146:
	.size	CHECK_STRING, .Lfunc_end146-CHECK_STRING
	.cfi_endproc

	.globl	CHECK_STRING_CAR
	.align	16, 0x90
	.type	CHECK_STRING_CAR,@function
CHECK_STRING_CAR:                       # @CHECK_STRING_CAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB147_1
	jmp	.LBB147_2
.LBB147_1:                              # %cond.true
	jmp	.LBB147_3
.LBB147_2:                              # %cond.false
	movl	$885, %edi              # imm = 0x375
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB147_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	CHECK_STRING_CAR, .Lfunc_end147-CHECK_STRING_CAR
	.cfi_endproc

	.globl	CHECK_CONS
	.align	16, 0x90
	.type	CHECK_CONS,@function
CHECK_CONS:                             # @CHECK_CONS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB148_2
# BB#1:                                 # %cond.true
	jmp	.LBB148_3
.LBB148_2:                              # %cond.false
	movl	$296, %edi              # imm = 0x128
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB148_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end148:
	.size	CHECK_CONS, .Lfunc_end148-CHECK_CONS
	.cfi_endproc

	.globl	CHECK_VECTOR
	.align	16, 0x90
	.type	CHECK_VECTOR,@function
CHECK_VECTOR:                           # @CHECK_VECTOR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB149_1
	jmp	.LBB149_2
.LBB149_1:                              # %cond.true
	jmp	.LBB149_3
.LBB149_2:                              # %cond.false
	movl	$996, %edi              # imm = 0x3E4
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB149_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	CHECK_VECTOR, .Lfunc_end149-CHECK_VECTOR
	.cfi_endproc

	.globl	CHECK_BOOL_VECTOR
	.align	16, 0x90
	.type	CHECK_BOOL_VECTOR,@function
CHECK_BOOL_VECTOR:                      # @CHECK_BOOL_VECTOR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp450:
	.cfi_def_cfa_offset 16
.Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp452:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB150_1
	jmp	.LBB150_2
.LBB150_1:                              # %cond.true
	jmp	.LBB150_3
.LBB150_2:                              # %cond.false
	movl	$207, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB150_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end150:
	.size	CHECK_BOOL_VECTOR, .Lfunc_end150-CHECK_BOOL_VECTOR
	.cfi_endproc

	.globl	CHECK_VECTOR_OR_STRING
	.align	16, 0x90
	.type	CHECK_VECTOR_OR_STRING,@function
CHECK_VECTOR_OR_STRING:                 # @CHECK_VECTOR_OR_STRING
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp453:
	.cfi_def_cfa_offset 16
.Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp455:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB151_1
	jmp	.LBB151_2
.LBB151_1:                              # %if.then
	movq	-16(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -8(%rbp)
	jmp	.LBB151_5
.LBB151_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB151_3
	jmp	.LBB151_4
.LBB151_3:                              # %if.then.3
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -8(%rbp)
	jmp	.LBB151_5
.LBB151_4:                              # %if.end.5
	movl	$179, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB151_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	CHECK_VECTOR_OR_STRING, .Lfunc_end151-CHECK_VECTOR_OR_STRING
	.cfi_endproc

	.globl	CHECK_ARRAY
	.align	16, 0x90
	.type	CHECK_ARRAY,@function
CHECK_ARRAY:                            # @CHECK_ARRAY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp456:
	.cfi_def_cfa_offset 16
.Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp458:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	ARRAYP
	testb	$1, %al
	jne	.LBB152_1
	jmp	.LBB152_2
.LBB152_1:                              # %cond.true
	jmp	.LBB152_3
.LBB152_2:                              # %cond.false
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB152_3:                              # %cond.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	CHECK_ARRAY, .Lfunc_end152-CHECK_ARRAY
	.cfi_endproc

	.globl	CHECK_BUFFER
	.align	16, 0x90
	.type	CHECK_BUFFER,@function
CHECK_BUFFER:                           # @CHECK_BUFFER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
.Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp461:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB153_1
	jmp	.LBB153_2
.LBB153_1:                              # %cond.true
	jmp	.LBB153_3
.LBB153_2:                              # %cond.false
	movl	$229, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB153_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	CHECK_BUFFER, .Lfunc_end153-CHECK_BUFFER
	.cfi_endproc

	.globl	CHECK_WINDOW
	.align	16, 0x90
	.type	CHECK_WINDOW,@function
CHECK_WINDOW:                           # @CHECK_WINDOW
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp462:
	.cfi_def_cfa_offset 16
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp464:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB154_1
	jmp	.LBB154_2
.LBB154_1:                              # %cond.true
	jmp	.LBB154_3
.LBB154_2:                              # %cond.false
	movl	$1037, %edi             # imm = 0x40D
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB154_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	CHECK_WINDOW, .Lfunc_end154-CHECK_WINDOW
	.cfi_endproc

	.globl	CHECK_PROCESS
	.align	16, 0x90
	.type	CHECK_PROCESS,@function
CHECK_PROCESS:                          # @CHECK_PROCESS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
.Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp467:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB155_1
	jmp	.LBB155_2
.LBB155_1:                              # %cond.true
	jmp	.LBB155_3
.LBB155_2:                              # %cond.false
	movl	$775, %edi              # imm = 0x307
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB155_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	CHECK_PROCESS, .Lfunc_end155-CHECK_PROCESS
	.cfi_endproc

	.globl	CHECK_NATNUM
	.align	16, 0x90
	.type	CHECK_NATNUM,@function
CHECK_NATNUM:                           # @CHECK_NATNUM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB156_1
	jmp	.LBB156_2
.LBB156_1:                              # %cond.true
	jmp	.LBB156_3
.LBB156_2:                              # %cond.false
	movl	$1015, %edi             # imm = 0x3F7
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB156_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	CHECK_NATNUM, .Lfunc_end156-CHECK_NATNUM
	.cfi_endproc

	.globl	XFLOATINT
	.align	16, 0x90
	.type	XFLOATINT,@function
XFLOATINT:                              # @XFLOATINT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
.Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp473:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	extract_float
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end157:
	.size	XFLOATINT, .Lfunc_end157-XFLOATINT
	.cfi_endproc

	.globl	CHECK_NUMBER_OR_FLOAT
	.align	16, 0x90
	.type	CHECK_NUMBER_OR_FLOAT,@function
CHECK_NUMBER_OR_FLOAT:                  # @CHECK_NUMBER_OR_FLOAT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
.Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp476:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB158_1
	jmp	.LBB158_2
.LBB158_1:                              # %cond.true
	jmp	.LBB158_3
.LBB158_2:                              # %cond.false
	movl	$711, %edi              # imm = 0x2C7
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB158_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	CHECK_NUMBER_OR_FLOAT, .Lfunc_end158-CHECK_NUMBER_OR_FLOAT
	.cfi_endproc

	.globl	CHECK_NUMBER_CAR
	.align	16, 0x90
	.type	CHECK_NUMBER_CAR,@function
CHECK_NUMBER_CAR:                       # @CHECK_NUMBER_CAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp477:
	.cfi_def_cfa_offset 16
.Ltmp478:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp479:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB159_2
# BB#1:                                 # %cond.true
	jmp	.LBB159_3
.LBB159_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB159_3:                              # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCAR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	CHECK_NUMBER_CAR, .Lfunc_end159-CHECK_NUMBER_CAR
	.cfi_endproc

	.globl	CHECK_NUMBER_CDR
	.align	16, 0x90
	.type	CHECK_NUMBER_CDR,@function
CHECK_NUMBER_CDR:                       # @CHECK_NUMBER_CDR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp480:
	.cfi_def_cfa_offset 16
.Ltmp481:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp482:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB160_2
# BB#1:                                 # %cond.true
	jmp	.LBB160_3
.LBB160_2:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB160_3:                              # %cond.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCDR
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	CHECK_NUMBER_CDR, .Lfunc_end160-CHECK_NUMBER_CDR
	.cfi_endproc

	.globl	FUNCTIONP
	.align	16, 0x90
	.type	FUNCTIONP,@function
FUNCTIONP:                              # @FUNCTIONP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp483:
	.cfi_def_cfa_offset 16
.Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp485:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	functionp
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end161:
	.size	FUNCTIONP, .Lfunc_end161-FUNCTIONP
	.cfi_endproc

	.globl	functionp
	.align	16, 0x90
	.type	functionp,@function
functionp:                              # @functionp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp486:
	.cfi_def_cfa_offset 16
.Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp488:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB162_14
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB162_14
# BB#2:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Findirect_function
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB162_13
# BB#3:                                 # %land.lhs.true.11
	movl	$191, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB162_13
# BB#4:                                 # %if.then.15
	movl	$0, -20(%rbp)
.LBB162_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$4, -20(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jge	.LBB162_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB162_5 Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB162_7:                              # %land.end
                                        #   in Loop: Header=BB162_5 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB162_8
	jmp	.LBB162_10
.LBB162_8:                              # %for.body
                                        #   in Loop: Header=BB162_5 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB162_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB162_5
.LBB162_10:                             # %for.end
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -58(%rbp)          # 1-byte Spill
	jne	.LBB162_12
# BB#11:                                # %land.rhs.27
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -58(%rbp)          # 1-byte Spill
.LBB162_12:                             # %land.end.33
	movb	-58(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB162_23
.LBB162_13:                             # %if.end
	jmp	.LBB162_14
.LBB162_14:                             # %if.end.35
	movq	-16(%rbp), %rdi
	callq	SUBRP
	testb	$1, %al
	jne	.LBB162_15
	jmp	.LBB162_16
.LBB162_15:                             # %if.then.37
	movq	-16(%rbp), %rdi
	callq	XSUBR
	movswl	18(%rax), %ecx
	cmpl	$-1, %ecx
	setne	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
	jmp	.LBB162_23
.LBB162_16:                             # %if.else
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB162_17
	jmp	.LBB162_18
.LBB162_17:                             # %if.then.43
	movb	$1, -1(%rbp)
	jmp	.LBB162_23
.LBB162_18:                             # %if.else.44
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB162_22
# BB#19:                                # %if.then.49
	movl	$598, %edi              # imm = 0x256
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB162_21
# BB#20:                                # %lor.rhs
	movl	$271, %edi              # imm = 0x10F
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB162_21:                             # %lor.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB162_23
.LBB162_22:                             # %if.else.59
	movb	$0, -1(%rbp)
.LBB162_23:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	functionp, .Lfunc_end162-functionp
	.cfi_endproc

	.globl	SPECPDL_INDEX
	.align	16, 0x90
	.type	SPECPDL_INDEX,@function
SPECPDL_INDEX:                          # @SPECPDL_INDEX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp489:
	.cfi_def_cfa_offset 16
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp491:
	.cfi_def_cfa_register %rbp
	movq	specpdl_ptr, %rax
	movq	specpdl, %rcx
	subq	%rcx, %rax
	sarq	$5, %rax
	popq	%rbp
	retq
.Lfunc_end163:
	.size	SPECPDL_INDEX, .Lfunc_end163-SPECPDL_INDEX
	.cfi_endproc

	.globl	vcopy
	.align	16, 0x90
	.type	vcopy,@function
vcopy:                                  # @vcopy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp492:
	.cfi_def_cfa_offset 16
.Ltmp493:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp494:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	vcopy, .Lfunc_end164-vcopy
	.cfi_endproc

	.globl	set_hash_key_slot
	.align	16, 0x90
	.type	set_hash_key_slot,@function
set_hash_key_slot:                      # @set_hash_key_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp495:
	.cfi_def_cfa_offset 16
.Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp497:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	72(%rdx), %rdi
	movq	-16(%rbp), %rdx
	shlq	$1, %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	gc_aset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	set_hash_key_slot, .Lfunc_end165-set_hash_key_slot
	.cfi_endproc

	.globl	set_hash_value_slot
	.align	16, 0x90
	.type	set_hash_value_slot,@function
set_hash_value_slot:                    # @set_hash_value_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp498:
	.cfi_def_cfa_offset 16
.Ltmp499:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp500:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	72(%rdx), %rdi
	movq	-16(%rbp), %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	gc_aset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end166:
	.size	set_hash_value_slot, .Lfunc_end166-set_hash_value_slot
	.cfi_endproc

	.globl	set_symbol_function
	.align	16, 0x90
	.type	set_symbol_function,@function
set_symbol_function:                    # @set_symbol_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp503:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movq	%rsi, lispsym+24(,%rdi)
	popq	%rbp
	retq
.Lfunc_end167:
	.size	set_symbol_function, .Lfunc_end167-set_symbol_function
	.cfi_endproc

	.globl	set_symbol_plist
	.align	16, 0x90
	.type	set_symbol_plist,@function
set_symbol_plist:                       # @set_symbol_plist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp504:
	.cfi_def_cfa_offset 16
.Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp506:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movq	%rsi, lispsym+32(,%rdi)
	popq	%rbp
	retq
.Lfunc_end168:
	.size	set_symbol_plist, .Lfunc_end168-set_symbol_plist
	.cfi_endproc

	.globl	set_symbol_next
	.align	16, 0x90
	.type	set_symbol_next,@function
set_symbol_next:                        # @set_symbol_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp507:
	.cfi_def_cfa_offset 16
.Ltmp508:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp509:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	subq	$0, %rdi
	movq	%rsi, lispsym+40(,%rdi)
	popq	%rbp
	retq
.Lfunc_end169:
	.size	set_symbol_next, .Lfunc_end169-set_symbol_next
	.cfi_endproc

	.globl	blv_found
	.align	16, 0x90
	.type	blv_found,@function
blv_found:                              # @blv_found
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp510:
	.cfi_def_cfa_offset 16
.Ltmp511:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp512:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end170:
	.size	blv_found, .Lfunc_end170-blv_found
	.cfi_endproc

	.globl	set_overlay_plist
	.align	16, 0x90
	.type	set_overlay_plist,@function
set_overlay_plist:                      # @set_overlay_plist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp513:
	.cfi_def_cfa_offset 16
.Ltmp514:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp515:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XOVERLAY
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 32(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	set_overlay_plist, .Lfunc_end171-set_overlay_plist
	.cfi_endproc

	.globl	string_intervals
	.align	16, 0x90
	.type	string_intervals,@function
string_intervals:                       # @string_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp516:
	.cfi_def_cfa_offset 16
.Ltmp517:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp518:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSTRING
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	string_intervals, .Lfunc_end172-string_intervals
	.cfi_endproc

	.globl	set_string_intervals
	.align	16, 0x90
	.type	set_string_intervals,@function
set_string_intervals:                   # @set_string_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp519:
	.cfi_def_cfa_offset 16
.Ltmp520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp521:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XSTRING
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	set_string_intervals, .Lfunc_end173-set_string_intervals
	.cfi_endproc

	.globl	set_char_table_defalt
	.align	16, 0x90
	.type	set_char_table_defalt,@function
set_char_table_defalt:                  # @set_char_table_defalt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp522:
	.cfi_def_cfa_offset 16
.Ltmp523:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp524:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end174:
	.size	set_char_table_defalt, .Lfunc_end174-set_char_table_defalt
	.cfi_endproc

	.globl	set_char_table_purpose
	.align	16, 0x90
	.type	set_char_table_purpose,@function
set_char_table_purpose:                 # @set_char_table_purpose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp525:
	.cfi_def_cfa_offset 16
.Ltmp526:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp527:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 24(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	set_char_table_purpose, .Lfunc_end175-set_char_table_purpose
	.cfi_endproc

	.globl	set_char_table_extras
	.align	16, 0x90
	.type	set_char_table_extras,@function
set_char_table_extras:                  # @set_char_table_extras
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
.Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp530:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 552(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end176:
	.size	set_char_table_extras, .Lfunc_end176-set_char_table_extras
	.cfi_endproc

	.globl	set_char_table_contents
	.align	16, 0x90
	.type	set_char_table_contents,@function
set_char_table_contents:                # @set_char_table_contents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp531:
	.cfi_def_cfa_offset 16
.Ltmp532:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp533:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	XCHAR_TABLE
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 40(%rax,%rdx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	set_char_table_contents, .Lfunc_end177-set_char_table_contents
	.cfi_endproc

	.globl	list2i
	.align	16, 0x90
	.type	list2i,@function
list2i:                                 # @list2i
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
.Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp536:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	list2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end178:
	.size	list2i, .Lfunc_end178-list2i
	.cfi_endproc

	.globl	list3i
	.align	16, 0x90
	.type	list3i,@function
list3i:                                 # @list3i
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp537:
	.cfi_def_cfa_offset 16
.Ltmp538:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp539:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-16(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-24(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	list3
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end179:
	.size	list3i, .Lfunc_end179-list3i
	.cfi_endproc

	.globl	list4i
	.align	16, 0x90
	.type	list4i,@function
list4i:                                 # @list4i
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp540:
	.cfi_def_cfa_offset 16
.Ltmp541:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp542:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	-24(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-32(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	list4
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end180:
	.size	list4i, .Lfunc_end180-list4i
	.cfi_endproc

	.globl	build_unibyte_string
	.align	16, 0x90
	.type	build_unibyte_string,@function
build_unibyte_string:                   # @build_unibyte_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp543:
	.cfi_def_cfa_offset 16
.Ltmp544:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp545:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_unibyte_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end181:
	.size	build_unibyte_string, .Lfunc_end181-build_unibyte_string
	.cfi_endproc

	.globl	build_pure_c_string
	.align	16, 0x90
	.type	build_pure_c_string,@function
build_pure_c_string:                    # @build_pure_c_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp546:
	.cfi_def_cfa_offset 16
.Ltmp547:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp548:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_pure_c_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end182:
	.size	build_pure_c_string, .Lfunc_end182-build_pure_c_string
	.cfi_endproc

	.globl	build_string
	.align	16, 0x90
	.type	build_string,@function
build_string:                           # @build_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp549:
	.cfi_def_cfa_offset 16
.Ltmp550:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp551:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	make_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end183:
	.size	build_string, .Lfunc_end183-build_string
	.cfi_endproc

	.globl	make_uninit_vector
	.align	16, 0x90
	.type	make_uninit_vector,@function
make_uninit_vector:                     # @make_uninit_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp552:
	.cfi_def_cfa_offset 16
.Ltmp553:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp554:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	allocate_vector
	movl	$5, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end184:
	.size	make_uninit_vector, .Lfunc_end184-make_uninit_vector
	.cfi_endproc

	.globl	make_uninit_sub_char_table
	.align	16, 0x90
	.type	make_uninit_sub_char_table,@function
make_uninit_sub_char_table:             # @make_uninit_sub_char_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp555:
	.cfi_def_cfa_offset 16
.Ltmp556:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp557:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-4(%rbp), %rax
	movl	chartab_size(,%rax,4), %esi
	addl	$1, %esi
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	callq	make_uninit_vector
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XVECTOR
	movabsq	$4611686018695823360, %rdi # imm = 0x4000000010000000
	orq	(%rax), %rdi
	movq	%rdi, (%rax)
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	callq	XSUB_CHAR_TABLE
	movl	-28(%rbp), %esi         # 4-byte Reload
	movl	%esi, 8(%rax)
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	callq	XSUB_CHAR_TABLE
	movl	-32(%rbp), %esi         # 4-byte Reload
	movl	%esi, 12(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end185:
	.size	make_uninit_sub_char_table, .Lfunc_end185-make_uninit_sub_char_table
	.cfi_endproc

	.globl	check_cons_list
	.align	16, 0x90
	.type	check_cons_list,@function
check_cons_list:                        # @check_cons_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp558:
	.cfi_def_cfa_offset 16
.Ltmp559:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp560:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end186:
	.size	check_cons_list, .Lfunc_end186-check_cons_list
	.cfi_endproc

	.globl	LOADHIST_ATTACH
	.align	16, 0x90
	.type	LOADHIST_ATTACH,@function
LOADHIST_ATTACH:                        # @LOADHIST_ATTACH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp561:
	.cfi_def_cfa_offset 16
.Ltmp562:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp563:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, initialized
	je	.LBB187_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	globals+392, %rsi
	callq	Fcons
	movq	%rax, globals+392
.LBB187_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end187:
	.size	LOADHIST_ATTACH, .Lfunc_end187-LOADHIST_ATTACH
	.cfi_endproc

	.globl	intern
	.align	16, 0x90
	.type	intern,@function
intern:                                 # @intern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp564:
	.cfi_def_cfa_offset 16
.Ltmp565:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp566:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	intern_1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end188:
	.size	intern, .Lfunc_end188-intern
	.cfi_endproc

	.globl	intern_c_string
	.align	16, 0x90
	.type	intern_c_string,@function
intern_c_string:                        # @intern_c_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp567:
	.cfi_def_cfa_offset 16
.Ltmp568:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp569:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	intern_c_string_1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end189:
	.size	intern_c_string, .Lfunc_end189-intern_c_string
	.cfi_endproc

	.globl	fast_string_match
	.align	16, 0x90
	.type	fast_string_match,@function
fast_string_match:                      # @fast_string_match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp570:
	.cfi_def_cfa_offset 16
.Ltmp571:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp572:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	fast_string_match_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end190:
	.size	fast_string_match, .Lfunc_end190-fast_string_match
	.cfi_endproc

	.globl	fast_string_match_ignore_case
	.align	16, 0x90
	.type	fast_string_match_ignore_case,@function
fast_string_match_ignore_case:          # @fast_string_match_ignore_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp573:
	.cfi_def_cfa_offset 16
.Ltmp574:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp575:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	Vascii_canon_table, %rdx
	callq	fast_string_match_internal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end191:
	.size	fast_string_match_ignore_case, .Lfunc_end191-fast_string_match_ignore_case
	.cfi_endproc

	.globl	lispstpcpy
	.align	16, 0x90
	.type	lispstpcpy,@function
lispstpcpy:                             # @lispstpcpy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp576:
	.cfi_def_cfa_offset 16
.Ltmp577:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp578:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rax
	addq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end192:
	.size	lispstpcpy, .Lfunc_end192-lispstpcpy
	.cfi_endproc

	.globl	egetenv
	.align	16, 0x90
	.type	egetenv,@function
egetenv:                                # @egetenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp579:
	.cfi_def_cfa_offset 16
.Ltmp580:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp581:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	egetenv_internal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end193:
	.size	egetenv, .Lfunc_end193-egetenv
	.cfi_endproc

	.globl	maybe_gc
	.align	16, 0x90
	.type	maybe_gc,@function
maybe_gc:                               # @maybe_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp582:
	.cfi_def_cfa_offset 16
.Ltmp583:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp584:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	consing_since_gc, %rax
	cmpq	globals+3112, %rax
	jle	.LBB194_2
# BB#1:                                 # %land.lhs.true
	movq	consing_since_gc, %rax
	cmpq	gc_relative_threshold, %rax
	jg	.LBB194_4
.LBB194_2:                              # %lor.lhs.false
	xorl	%edi, %edi
	movq	globals+1392, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB194_5
# BB#3:                                 # %land.lhs.true.3
	movq	consing_since_gc, %rax
	cmpq	memory_full_cons_threshold, %rax
	jle	.LBB194_5
.LBB194_4:                              # %if.then
	callq	Fgarbage_collect
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB194_5:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end194:
	.size	maybe_gc, .Lfunc_end194-maybe_gc
	.cfi_endproc

	.globl	sanitize_tab_width
	.align	16, 0x90
	.type	sanitize_tab_width,@function
sanitize_tab_width:                     # @sanitize_tab_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp585:
	.cfi_def_cfa_offset 16
.Ltmp586:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp587:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	cmpq	-8(%rbp), %rcx
	jge	.LBB195_3
# BB#1:                                 # %land.lhs.true
	cmpq	$1000, -8(%rbp)         # imm = 0x3E8
	jg	.LBB195_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB195_4
.LBB195_3:                              # %cond.false
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB195_4
.LBB195_4:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end195:
	.size	sanitize_tab_width, .Lfunc_end195-sanitize_tab_width
	.cfi_endproc

	.globl	sanitize_char_width
	.align	16, 0x90
	.type	sanitize_char_width,@function
sanitize_char_width:                    # @sanitize_char_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp588:
	.cfi_def_cfa_offset 16
.Ltmp589:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp590:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	cmpq	-8(%rbp), %rcx
	jg	.LBB196_3
# BB#1:                                 # %land.lhs.true
	cmpq	$1000, -8(%rbp)         # imm = 0x3E8
	jg	.LBB196_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB196_4
.LBB196_3:                              # %cond.false
	movl	$1000, %eax             # imm = 0x3E8
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB196_4
.LBB196_4:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end196:
	.size	sanitize_char_width, .Lfunc_end196-sanitize_char_width
	.cfi_endproc

	.globl	char_table_translate
	.align	16, 0x90
	.type	char_table_translate,@function
char_table_translate:                   # @char_table_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp591:
	.cfi_def_cfa_offset 16
.Ltmp592:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp593:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB197_1
	jmp	.LBB197_3
.LBB197_1:                              # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB197_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB197_4
.LBB197_3:                              # %cond.false
	movslq	-12(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB197_4:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end197:
	.size	char_table_translate, .Lfunc_end197-char_table_translate
	.cfi_endproc

	.globl	xstrcasecmp
	.align	16, 0x90
	.type	xstrcasecmp,@function
xstrcasecmp:                            # @xstrcasecmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp594:
	.cfi_def_cfa_offset 16
.Ltmp595:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp596:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	c_strcasecmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end198:
	.size	xstrcasecmp, .Lfunc_end198-xstrcasecmp
	.cfi_endproc

	.globl	GLYPH_CHAR
	.align	16, 0x90
	.type	GLYPH_CHAR,@function
GLYPH_CHAR:                             # @GLYPH_CHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp597:
	.cfi_def_cfa_offset 16
.Ltmp598:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp599:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end199:
	.size	GLYPH_CHAR, .Lfunc_end199-GLYPH_CHAR
	.cfi_endproc

	.globl	GLYPH_FACE
	.align	16, 0x90
	.type	GLYPH_FACE,@function
GLYPH_FACE:                             # @GLYPH_FACE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp600:
	.cfi_def_cfa_offset 16
.Ltmp601:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp602:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end200:
	.size	GLYPH_FACE, .Lfunc_end200-GLYPH_FACE
	.cfi_endproc

	.globl	GLYPH_CODE_CHAR
	.align	16, 0x90
	.type	GLYPH_CODE_CHAR,@function
GLYPH_CODE_CHAR:                        # @GLYPH_CODE_CHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp603:
	.cfi_def_cfa_offset 16
.Ltmp604:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp605:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB201_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB201_3
.LBB201_2:                              # %cond.false
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	andq	$4194303, %rax          # imm = 0x3FFFFF
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB201_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end201:
	.size	GLYPH_CODE_CHAR, .Lfunc_end201-GLYPH_CODE_CHAR
	.cfi_endproc

	.globl	GLYPH_CODE_FACE
	.align	16, 0x90
	.type	GLYPH_CODE_FACE,@function
GLYPH_CODE_FACE:                        # @GLYPH_CODE_FACE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp606:
	.cfi_def_cfa_offset 16
.Ltmp607:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp608:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB202_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB202_3
.LBB202_2:                              # %cond.false
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	sarq	$22, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB202_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end202:
	.size	GLYPH_CODE_FACE, .Lfunc_end202-GLYPH_CODE_FACE
	.cfi_endproc

	.globl	face_tty_specified_color
	.align	16, 0x90
	.type	face_tty_specified_color,@function
face_tty_specified_color:               # @face_tty_specified_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp609:
	.cfi_def_cfa_offset 16
.Ltmp610:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp611:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	cmpq	$-3, -8(%rbp)
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end203:
	.size	face_tty_specified_color, .Lfunc_end203-face_tty_specified_color
	.cfi_endproc

	.globl	GLYPH_CHAR_VALID_P
	.align	16, 0x90
	.type	GLYPH_CHAR_VALID_P,@function
GLYPH_CHAR_VALID_P:                     # @GLYPH_CHAR_VALID_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp612:
	.cfi_def_cfa_offset 16
.Ltmp613:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp614:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	GLYPH_CHAR
	addl	$0, %eax
	cmpl	$4194303, %eax          # imm = 0x3FFFFF
	setbe	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end204:
	.size	GLYPH_CHAR_VALID_P, .Lfunc_end204-GLYPH_CHAR_VALID_P
	.cfi_endproc

	.globl	GLYPH_CODE_P
	.align	16, 0x90
	.type	GLYPH_CODE_P,@function
GLYPH_CODE_P:                           # @GLYPH_CODE_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp615:
	.cfi_def_cfa_offset 16
.Ltmp616:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp617:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB205_5
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB205_2
	jmp	.LBB205_4
.LBB205_2:                              # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	$4194303, %rdx          # imm = 0x3FFFFF
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jg	.LBB205_4
# BB#3:                                 # %land.rhs
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB205_4:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	jmp	.LBB205_6
.LBB205_5:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$4398046511103, %rdx    # imm = 0x3FFFFFFFFFF
	movq	-8(%rbp), %rsi
	callq	RANGED_INTEGERP
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
.LBB205_6:                              # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end205:
	.size	GLYPH_CODE_P, .Lfunc_end205-GLYPH_CODE_P
	.cfi_endproc

	.globl	reset_mouse_highlight
	.align	16, 0x90
	.type	reset_mouse_highlight,@function
reset_mouse_highlight:                  # @reset_mouse_highlight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp618:
	.cfi_def_cfa_offset 16
.Ltmp619:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp620:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$-1, 4(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, (%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 16(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 12(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 60(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 20(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movb	64(%rax), %dl
	andb	$-2, %dl
	movb	%dl, 64(%rax)
	movq	-8(%rbp), %rax
	movb	64(%rax), %dl
	andb	$-5, %dl
	movb	%dl, 64(%rax)
	movq	-8(%rbp), %rax
	movb	64(%rax), %dl
	andb	$-3, %dl
	movb	%dl, 64(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end206:
	.size	reset_mouse_highlight, .Lfunc_end206-reset_mouse_highlight
	.cfi_endproc

	.globl	invalid_timespec
	.align	16, 0x90
	.type	invalid_timespec,@function
invalid_timespec:                       # @invalid_timespec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp621:
	.cfi_def_cfa_offset 16
.Ltmp622:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp623:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	$-1, %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end207:
	.size	invalid_timespec, .Lfunc_end207-invalid_timespec
	.cfi_endproc

	.globl	timespec_valid_p
	.align	16, 0x90
	.type	timespec_valid_p,@function
timespec_valid_p:                       # @timespec_valid_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp624:
	.cfi_def_cfa_offset 16
.Ltmp625:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp626:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end208:
	.size	timespec_valid_p, .Lfunc_end208-timespec_valid_p
	.cfi_endproc

	.globl	current_timespec
	.align	16, 0x90
	.type	current_timespec,@function
current_timespec:                       # @current_timespec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp627:
	.cfi_def_cfa_offset 16
.Ltmp628:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp629:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-32(%rbp), %rdi
	callq	gettime
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end209:
	.size	current_timespec, .Lfunc_end209-current_timespec
	.cfi_endproc

	.globl	tset_charset_list
	.align	16, 0x90
	.type	tset_charset_list,@function
tset_charset_list:                      # @tset_charset_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp630:
	.cfi_def_cfa_offset 16
.Ltmp631:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp632:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end210:
	.size	tset_charset_list, .Lfunc_end210-tset_charset_list
	.cfi_endproc

	.globl	tset_selection_alist
	.align	16, 0x90
	.type	tset_selection_alist,@function
tset_selection_alist:                   # @tset_selection_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp633:
	.cfi_def_cfa_offset 16
.Ltmp634:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp635:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end211:
	.size	tset_selection_alist, .Lfunc_end211-tset_selection_alist
	.cfi_endproc

	.globl	SELECTION_EVENT_DISPLAY
	.align	16, 0x90
	.type	SELECTION_EVENT_DISPLAY,@function
SELECTION_EVENT_DISPLAY:                # @SELECTION_EVENT_DISPLAY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp636:
	.cfi_def_cfa_offset 16
.Ltmp637:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp638:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	16(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end212:
	.size	SELECTION_EVENT_DISPLAY, .Lfunc_end212-SELECTION_EVENT_DISPLAY
	.cfi_endproc

	.globl	x_display_pixel_height
	.align	16, 0x90
	.type	x_display_pixel_height,@function
x_display_pixel_height:                 # @x_display_pixel_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp639:
	.cfi_def_cfa_offset 16
.Ltmp640:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp641:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	28(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end213:
	.size	x_display_pixel_height, .Lfunc_end213-x_display_pixel_height
	.cfi_endproc

	.globl	x_display_pixel_width
	.align	16, 0x90
	.type	x_display_pixel_width,@function
x_display_pixel_width:                  # @x_display_pixel_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp642:
	.cfi_def_cfa_offset 16
.Ltmp643:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp644:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	24(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end214:
	.size	x_display_pixel_width, .Lfunc_end214-x_display_pixel_width
	.cfi_endproc

	.globl	x_display_set_last_user_time
	.align	16, 0x90
	.type	x_display_set_last_user_time,@function
x_display_set_last_user_time:           # @x_display_set_last_user_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp645:
	.cfi_def_cfa_offset 16
.Ltmp646:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp647:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 664(%rdi)
	popq	%rbp
	retq
.Lfunc_end215:
	.size	x_display_set_last_user_time, .Lfunc_end215-x_display_set_last_user_time
	.cfi_endproc

	.globl	x_make_truecolor_pixel
	.align	16, 0x90
	.type	x_make_truecolor_pixel,@function
x_make_truecolor_pixel:                 # @x_make_truecolor_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp648:
	.cfi_def_cfa_offset 16
.Ltmp649:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp650:
	.cfi_def_cfa_register %rbp
	movl	$16, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%eax, %edx
	subl	748(%rdi), %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movq	-8(%rbp), %rdi
	movl	760(%rdi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movslq	%edx, %rdi
	movq	%rdi, -32(%rbp)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	subl	756(%rdi), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movq	-8(%rbp), %rdi
	movl	768(%rdi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movslq	%edx, %rdi
	movq	%rdi, -40(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	subl	752(%rdi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movq	-8(%rbp), %rdi
	movl	764(%rdi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movslq	%edx, %rdi
	movq	%rdi, -48(%rbp)
	movq	-32(%rbp), %rdi
	orq	-40(%rbp), %rdi
	orq	-48(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end216:
	.size	x_make_truecolor_pixel, .Lfunc_end216-x_make_truecolor_pixel
	.cfi_endproc

	.globl	x_mutable_colormap
	.align	16, 0x90
	.type	x_mutable_colormap,@function
x_mutable_colormap:                     # @x_mutable_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp651:
	.cfi_def_cfa_offset 16
.Ltmp652:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp653:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	movb	%cl, -13(%rbp)          # 1-byte Spill
	je	.LBB217_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -13(%rbp)          # 1-byte Spill
	je	.LBB217_3
# BB#2:                                 # %land.rhs
	cmpl	$4, -12(%rbp)
	setne	%al
	movb	%al, -13(%rbp)          # 1-byte Spill
.LBB217_3:                              # %land.end
	movb	-13(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end217:
	.size	x_mutable_colormap, .Lfunc_end217-x_mutable_colormap
	.cfi_endproc

	.globl	FONTP
	.align	16, 0x90
	.type	FONTP,@function
FONTP:                                  # @FONTP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp654:
	.cfi_def_cfa_offset 16
.Ltmp655:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp656:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$17, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	PSEUDOVECTORP
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end218:
	.size	FONTP, .Lfunc_end218-FONTP
	.cfi_endproc

	.globl	FONT_SPEC_P
	.align	16, 0x90
	.type	FONT_SPEC_P,@function
FONT_SPEC_P:                            # @FONT_SPEC_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp657:
	.cfi_def_cfa_offset 16
.Ltmp658:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp659:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB219_1
	jmp	.LBB219_2
.LBB219_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$13, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB219_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end219:
	.size	FONT_SPEC_P, .Lfunc_end219-FONT_SPEC_P
	.cfi_endproc

	.globl	GC_FONT_SPEC_P
	.align	16, 0x90
	.type	GC_FONT_SPEC_P,@function
GC_FONT_SPEC_P:                         # @GC_FONT_SPEC_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp660:
	.cfi_def_cfa_offset 16
.Ltmp661:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp662:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB220_1
	jmp	.LBB220_2
.LBB220_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	gc_asize
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$13, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB220_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end220:
	.size	GC_FONT_SPEC_P, .Lfunc_end220-GC_FONT_SPEC_P
	.cfi_endproc

	.globl	FONT_ENTITY_P
	.align	16, 0x90
	.type	FONT_ENTITY_P,@function
FONT_ENTITY_P:                          # @FONT_ENTITY_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp663:
	.cfi_def_cfa_offset 16
.Ltmp664:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp665:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB221_1
	jmp	.LBB221_2
.LBB221_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$14, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB221_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end221:
	.size	FONT_ENTITY_P, .Lfunc_end221-FONT_ENTITY_P
	.cfi_endproc

	.globl	GC_FONT_ENTITY_P
	.align	16, 0x90
	.type	GC_FONT_ENTITY_P,@function
GC_FONT_ENTITY_P:                       # @GC_FONT_ENTITY_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp666:
	.cfi_def_cfa_offset 16
.Ltmp667:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp668:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB222_1
	jmp	.LBB222_2
.LBB222_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	gc_asize
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$14, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB222_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end222:
	.size	GC_FONT_ENTITY_P, .Lfunc_end222-GC_FONT_ENTITY_P
	.cfi_endproc

	.globl	FONT_OBJECT_P
	.align	16, 0x90
	.type	FONT_OBJECT_P,@function
FONT_OBJECT_P:                          # @FONT_OBJECT_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp669:
	.cfi_def_cfa_offset 16
.Ltmp670:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp671:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB223_1
	jmp	.LBB223_2
.LBB223_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	ASIZE
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$17, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB223_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end223:
	.size	FONT_OBJECT_P, .Lfunc_end223-FONT_OBJECT_P
	.cfi_endproc

	.globl	GC_FONT_OBJECT_P
	.align	16, 0x90
	.type	GC_FONT_OBJECT_P,@function
GC_FONT_OBJECT_P:                       # @GC_FONT_OBJECT_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp672:
	.cfi_def_cfa_offset 16
.Ltmp673:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp674:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB224_1
	jmp	.LBB224_2
.LBB224_1:                              # %land.rhs
	movq	-8(%rbp), %rdi
	callq	gc_asize
	andq	$4095, %rax             # imm = 0xFFF
	cmpq	$17, %rax
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB224_2:                              # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end224:
	.size	GC_FONT_OBJECT_P, .Lfunc_end224-GC_FONT_OBJECT_P
	.cfi_endproc

	.globl	CHECK_FONT
	.align	16, 0x90
	.type	CHECK_FONT,@function
CHECK_FONT:                             # @CHECK_FONT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp675:
	.cfi_def_cfa_offset 16
.Ltmp676:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp677:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB225_1
	jmp	.LBB225_2
.LBB225_1:                              # %cond.true
	jmp	.LBB225_3
.LBB225_2:                              # %cond.false
	movl	$439, %edi              # imm = 0x1B7
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB225_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end225:
	.size	CHECK_FONT, .Lfunc_end225-CHECK_FONT
	.cfi_endproc

	.globl	CHECK_FONT_SPEC
	.align	16, 0x90
	.type	CHECK_FONT_SPEC,@function
CHECK_FONT_SPEC:                        # @CHECK_FONT_SPEC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp678:
	.cfi_def_cfa_offset 16
.Ltmp679:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp680:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB226_1
	jmp	.LBB226_2
.LBB226_1:                              # %cond.true
	jmp	.LBB226_3
.LBB226_2:                              # %cond.false
	movl	$446, %edi              # imm = 0x1BE
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB226_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end226:
	.size	CHECK_FONT_SPEC, .Lfunc_end226-CHECK_FONT_SPEC
	.cfi_endproc

	.globl	CHECK_FONT_ENTITY
	.align	16, 0x90
	.type	CHECK_FONT_ENTITY,@function
CHECK_FONT_ENTITY:                      # @CHECK_FONT_ENTITY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp681:
	.cfi_def_cfa_offset 16
.Ltmp682:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp683:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONT_ENTITY_P
	testb	$1, %al
	jne	.LBB227_1
	jmp	.LBB227_2
.LBB227_1:                              # %cond.true
	jmp	.LBB227_3
.LBB227_2:                              # %cond.false
	movl	$441, %edi              # imm = 0x1B9
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB227_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end227:
	.size	CHECK_FONT_ENTITY, .Lfunc_end227-CHECK_FONT_ENTITY
	.cfi_endproc

	.globl	CHECK_FONT_OBJECT
	.align	16, 0x90
	.type	CHECK_FONT_OBJECT,@function
CHECK_FONT_OBJECT:                      # @CHECK_FONT_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp684:
	.cfi_def_cfa_offset 16
.Ltmp685:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp686:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB228_1
	jmp	.LBB228_2
.LBB228_1:                              # %cond.true
	jmp	.LBB228_3
.LBB228_2:                              # %cond.false
	movl	$443, %edi              # imm = 0x1BB
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB228_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end228:
	.size	CHECK_FONT_OBJECT, .Lfunc_end228-CHECK_FONT_OBJECT
	.cfi_endproc

	.globl	XFONT_SPEC
	.align	16, 0x90
	.type	XFONT_SPEC,@function
XFONT_SPEC:                             # @XFONT_SPEC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp687:
	.cfi_def_cfa_offset 16
.Ltmp688:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp689:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end229:
	.size	XFONT_SPEC, .Lfunc_end229-XFONT_SPEC
	.cfi_endproc

	.globl	GC_XFONT_SPEC
	.align	16, 0x90
	.type	GC_XFONT_SPEC,@function
GC_XFONT_SPEC:                          # @GC_XFONT_SPEC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp690:
	.cfi_def_cfa_offset 16
.Ltmp691:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp692:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end230:
	.size	GC_XFONT_SPEC, .Lfunc_end230-GC_XFONT_SPEC
	.cfi_endproc

	.globl	XFONT_ENTITY
	.align	16, 0x90
	.type	XFONT_ENTITY,@function
XFONT_ENTITY:                           # @XFONT_ENTITY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp693:
	.cfi_def_cfa_offset 16
.Ltmp694:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp695:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end231:
	.size	XFONT_ENTITY, .Lfunc_end231-XFONT_ENTITY
	.cfi_endproc

	.globl	GC_XFONT_ENTITY
	.align	16, 0x90
	.type	GC_XFONT_ENTITY,@function
GC_XFONT_ENTITY:                        # @GC_XFONT_ENTITY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp696:
	.cfi_def_cfa_offset 16
.Ltmp697:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp698:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end232:
	.size	GC_XFONT_ENTITY, .Lfunc_end232-GC_XFONT_ENTITY
	.cfi_endproc

	.globl	XFONT_OBJECT
	.align	16, 0x90
	.type	XFONT_OBJECT,@function
XFONT_OBJECT:                           # @XFONT_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp699:
	.cfi_def_cfa_offset 16
.Ltmp700:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp701:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end233:
	.size	XFONT_OBJECT, .Lfunc_end233-XFONT_OBJECT
	.cfi_endproc

	.globl	GC_XFONT_OBJECT
	.align	16, 0x90
	.type	GC_XFONT_OBJECT,@function
GC_XFONT_OBJECT:                        # @GC_XFONT_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp702:
	.cfi_def_cfa_offset 16
.Ltmp703:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp704:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end234:
	.size	GC_XFONT_OBJECT, .Lfunc_end234-GC_XFONT_OBJECT
	.cfi_endproc

	.globl	CHECK_FONT_GET_OBJECT
	.align	16, 0x90
	.type	CHECK_FONT_GET_OBJECT,@function
CHECK_FONT_GET_OBJECT:                  # @CHECK_FONT_GET_OBJECT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp705:
	.cfi_def_cfa_offset 16
.Ltmp706:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp707:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_FONT_OBJECT
	movq	-8(%rbp), %rdi
	callq	XFONT_OBJECT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end235:
	.size	CHECK_FONT_GET_OBJECT, .Lfunc_end235-CHECK_FONT_GET_OBJECT
	.cfi_endproc

	.globl	valid_font_driver
	.align	16, 0x90
	.type	valid_font_driver,@function
valid_font_driver:                      # @valid_font_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp708:
	.cfi_def_cfa_offset 16
.Ltmp709:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp710:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end236:
	.size	valid_font_driver, .Lfunc_end236-valid_font_driver
	.cfi_endproc

	.globl	composition_registered_p
	.align	16, 0x90
	.type	composition_registered_p,@function
composition_registered_p:               # @composition_registered_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp711:
	.cfi_def_cfa_offset 16
.Ltmp712:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp713:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end237:
	.size	composition_registered_p, .Lfunc_end237-composition_registered_p
	.cfi_endproc

	.globl	composition_method
	.align	16, 0x90
	.type	composition_method,@function
composition_method:                     # @composition_method
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp714:
	.cfi_def_cfa_offset 16
.Ltmp715:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp716:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB238_1
	jmp	.LBB238_2
.LBB238_1:                              # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	composition_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	20(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB238_8
.LBB238_2:                              # %if.else
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB238_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB238_7
.LBB238_4:                              # %cond.false
	movb	$1, %al
	movq	-24(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movb	%al, -37(%rbp)          # 1-byte Spill
	je	.LBB238_6
# BB#5:                                 # %lor.rhs
	movq	-24(%rbp), %rdi
	callq	STRINGP
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB238_6:                              # %lor.end
	movb	-37(%rbp), %al          # 1-byte Reload
	movl	$3, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB238_7:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB238_8:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end238:
	.size	composition_method, .Lfunc_end238-composition_method
	.cfi_endproc

	.globl	composition_valid_p
	.align	16, 0x90
	.type	composition_valid_p,@function
composition_valid_p:                    # @composition_valid_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp717:
	.cfi_def_cfa_offset 16
.Ltmp718:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp719:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB239_15
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB239_2
	jmp	.LBB239_5
.LBB239_2:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	$0, %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jl	.LBB239_15
# BB#3:                                 # %land.lhs.true.5
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	n_compositions, %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jg	.LBB239_15
# BB#4:                                 # %land.lhs.true.11
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB239_11
	jmp	.LBB239_15
.LBB239_5:                              # %cond.false
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB239_15
# BB#6:                                 # %land.lhs.true.23
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB239_11
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB239_11
# BB#8:                                 # %lor.lhs.false.39
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB239_11
# BB#9:                                 # %lor.lhs.false.47
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB239_11
# BB#10:                                # %lor.lhs.false.58
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB239_15
.LBB239_11:                             # %land.rhs
	movq	-24(%rbp), %rdi
	callq	composition_registered_p
	testb	$1, %al
	jne	.LBB239_12
	jmp	.LBB239_13
.LBB239_12:                             # %cond.true.70
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB239_14
.LBB239_13:                             # %cond.false.77
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB239_14:                             # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	subq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	sete	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB239_15:                             # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end239:
	.size	composition_valid_p, .Lfunc_end239-composition_valid_p
	.cfi_endproc

	.globl	lgstring_glyph_addr
	.align	16, 0x90
	.type	lgstring_glyph_addr,@function
lgstring_glyph_addr:                    # @lgstring_glyph_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp720:
	.cfi_def_cfa_offset 16
.Ltmp721:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp722:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$2, %rsi
	callq	aref_addr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end240:
	.size	lgstring_glyph_addr, .Lfunc_end240-lgstring_glyph_addr
	.cfi_endproc

	.globl	set_interval_object
	.align	16, 0x90
	.type	set_interval_object,@function
set_interval_object:                    # @set_interval_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp723:
	.cfi_def_cfa_offset 16
.Ltmp724:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp725:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movb	40(%rsi), %al
	andb	$-2, %al
	orb	$1, %al
	movb	%al, 40(%rsi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end241:
	.size	set_interval_object, .Lfunc_end241-set_interval_object
	.cfi_endproc

	.globl	set_interval_parent
	.align	16, 0x90
	.type	set_interval_parent,@function
set_interval_parent:                    # @set_interval_parent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp726:
	.cfi_def_cfa_offset 16
.Ltmp727:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp728:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movb	40(%rsi), %al
	andb	$-2, %al
	movb	%al, 40(%rsi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end242:
	.size	set_interval_parent, .Lfunc_end242-set_interval_parent
	.cfi_endproc

	.globl	set_interval_plist
	.align	16, 0x90
	.type	set_interval_plist,@function
set_interval_plist:                     # @set_interval_plist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp729:
	.cfi_def_cfa_offset 16
.Ltmp730:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp731:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end243:
	.size	set_interval_plist, .Lfunc_end243-set_interval_plist
	.cfi_endproc

	.globl	bset_bidi_paragraph_direction
	.align	16, 0x90
	.type	bset_bidi_paragraph_direction,@function
bset_bidi_paragraph_direction:          # @bset_bidi_paragraph_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp732:
	.cfi_def_cfa_offset 16
.Ltmp733:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp734:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 248(%rdi)
	popq	%rbp
	retq
.Lfunc_end244:
	.size	bset_bidi_paragraph_direction, .Lfunc_end244-bset_bidi_paragraph_direction
	.cfi_endproc

	.globl	bset_cache_long_scans
	.align	16, 0x90
	.type	bset_cache_long_scans,@function
bset_cache_long_scans:                  # @bset_cache_long_scans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp735:
	.cfi_def_cfa_offset 16
.Ltmp736:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp737:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 344(%rdi)
	popq	%rbp
	retq
.Lfunc_end245:
	.size	bset_cache_long_scans, .Lfunc_end245-bset_cache_long_scans
	.cfi_endproc

	.globl	bset_case_canon_table
	.align	16, 0x90
	.type	bset_case_canon_table,@function
bset_case_canon_table:                  # @bset_case_canon_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp738:
	.cfi_def_cfa_offset 16
.Ltmp739:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp740:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 200(%rdi)
	popq	%rbp
	retq
.Lfunc_end246:
	.size	bset_case_canon_table, .Lfunc_end246-bset_case_canon_table
	.cfi_endproc

	.globl	bset_case_eqv_table
	.align	16, 0x90
	.type	bset_case_eqv_table,@function
bset_case_eqv_table:                    # @bset_case_eqv_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp741:
	.cfi_def_cfa_offset 16
.Ltmp742:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp743:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 208(%rdi)
	popq	%rbp
	retq
.Lfunc_end247:
	.size	bset_case_eqv_table, .Lfunc_end247-bset_case_eqv_table
	.cfi_endproc

	.globl	bset_directory
	.align	16, 0x90
	.type	bset_directory,@function
bset_directory:                         # @bset_directory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp744:
	.cfi_def_cfa_offset 16
.Ltmp745:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp746:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end248:
	.size	bset_directory, .Lfunc_end248-bset_directory
	.cfi_endproc

	.globl	bset_display_count
	.align	16, 0x90
	.type	bset_display_count,@function
bset_display_count:                     # @bset_display_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp747:
	.cfi_def_cfa_offset 16
.Ltmp748:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp749:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 416(%rdi)
	popq	%rbp
	retq
.Lfunc_end249:
	.size	bset_display_count, .Lfunc_end249-bset_display_count
	.cfi_endproc

	.globl	bset_display_time
	.align	16, 0x90
	.type	bset_display_time,@function
bset_display_time:                      # @bset_display_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp750:
	.cfi_def_cfa_offset 16
.Ltmp751:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp752:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 528(%rdi)
	popq	%rbp
	retq
.Lfunc_end250:
	.size	bset_display_time, .Lfunc_end250-bset_display_time
	.cfi_endproc

	.globl	bset_downcase_table
	.align	16, 0x90
	.type	bset_downcase_table,@function
bset_downcase_table:                    # @bset_downcase_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp753:
	.cfi_def_cfa_offset 16
.Ltmp754:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp755:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 184(%rdi)
	popq	%rbp
	retq
.Lfunc_end251:
	.size	bset_downcase_table, .Lfunc_end251-bset_downcase_table
	.cfi_endproc

	.globl	bset_enable_multibyte_characters
	.align	16, 0x90
	.type	bset_enable_multibyte_characters,@function
bset_enable_multibyte_characters:       # @bset_enable_multibyte_characters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp756:
	.cfi_def_cfa_offset 16
.Ltmp757:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp758:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 312(%rdi)
	popq	%rbp
	retq
.Lfunc_end252:
	.size	bset_enable_multibyte_characters, .Lfunc_end252-bset_enable_multibyte_characters
	.cfi_endproc

	.globl	bset_filename
	.align	16, 0x90
	.type	bset_filename,@function
bset_filename:                          # @bset_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp759:
	.cfi_def_cfa_offset 16
.Ltmp760:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp761:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end253:
	.size	bset_filename, .Lfunc_end253-bset_filename
	.cfi_endproc

	.globl	bset_keymap
	.align	16, 0x90
	.type	bset_keymap,@function
bset_keymap:                            # @bset_keymap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp762:
	.cfi_def_cfa_offset 16
.Ltmp763:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp764:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end254:
	.size	bset_keymap, .Lfunc_end254-bset_keymap
	.cfi_endproc

	.globl	bset_last_selected_window
	.align	16, 0x90
	.type	bset_last_selected_window,@function
bset_last_selected_window:              # @bset_last_selected_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp765:
	.cfi_def_cfa_offset 16
.Ltmp766:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp767:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 408(%rdi)
	popq	%rbp
	retq
.Lfunc_end255:
	.size	bset_last_selected_window, .Lfunc_end255-bset_last_selected_window
	.cfi_endproc

	.globl	bset_local_var_alist
	.align	16, 0x90
	.type	bset_local_var_alist,@function
bset_local_var_alist:                   # @bset_local_var_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp768:
	.cfi_def_cfa_offset 16
.Ltmp769:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp770:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end256:
	.size	bset_local_var_alist, .Lfunc_end256-bset_local_var_alist
	.cfi_endproc

	.globl	bset_mark_active
	.align	16, 0x90
	.type	bset_mark_active,@function
bset_mark_active:                       # @bset_mark_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp771:
	.cfi_def_cfa_offset 16
.Ltmp772:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp773:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 304(%rdi)
	popq	%rbp
	retq
.Lfunc_end257:
	.size	bset_mark_active, .Lfunc_end257-bset_mark_active
	.cfi_endproc

	.globl	bset_point_before_scroll
	.align	16, 0x90
	.type	bset_point_before_scroll,@function
bset_point_before_scroll:               # @bset_point_before_scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp774:
	.cfi_def_cfa_offset 16
.Ltmp775:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp776:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 384(%rdi)
	popq	%rbp
	retq
.Lfunc_end258:
	.size	bset_point_before_scroll, .Lfunc_end258-bset_point_before_scroll
	.cfi_endproc

	.globl	bset_read_only
	.align	16, 0x90
	.type	bset_read_only,@function
bset_read_only:                         # @bset_read_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp777:
	.cfi_def_cfa_offset 16
.Ltmp778:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp779:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end259:
	.size	bset_read_only, .Lfunc_end259-bset_read_only
	.cfi_endproc

	.globl	bset_truncate_lines
	.align	16, 0x90
	.type	bset_truncate_lines,@function
bset_truncate_lines:                    # @bset_truncate_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp780:
	.cfi_def_cfa_offset 16
.Ltmp781:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp782:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 216(%rdi)
	popq	%rbp
	retq
.Lfunc_end260:
	.size	bset_truncate_lines, .Lfunc_end260-bset_truncate_lines
	.cfi_endproc

	.globl	bset_undo_list
	.align	16, 0x90
	.type	bset_undo_list,@function
bset_undo_list:                         # @bset_undo_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp783:
	.cfi_def_cfa_offset 16
.Ltmp784:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp785:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 968(%rdi)
	popq	%rbp
	retq
.Lfunc_end261:
	.size	bset_undo_list, .Lfunc_end261-bset_undo_list
	.cfi_endproc

	.globl	bset_upcase_table
	.align	16, 0x90
	.type	bset_upcase_table,@function
bset_upcase_table:                      # @bset_upcase_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp786:
	.cfi_def_cfa_offset 16
.Ltmp787:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp788:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 192(%rdi)
	popq	%rbp
	retq
.Lfunc_end262:
	.size	bset_upcase_table, .Lfunc_end262-bset_upcase_table
	.cfi_endproc

	.globl	bset_width_table
	.align	16, 0x90
	.type	bset_width_table,@function
bset_width_table:                       # @bset_width_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp789:
	.cfi_def_cfa_offset 16
.Ltmp790:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp791:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 352(%rdi)
	popq	%rbp
	retq
.Lfunc_end263:
	.size	bset_width_table, .Lfunc_end263-bset_width_table
	.cfi_endproc

	.globl	decode_buffer
	.align	16, 0x90
	.type	decode_buffer,@function
decode_buffer:                          # @decode_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp792:
	.cfi_def_cfa_offset 16
.Ltmp793:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp794:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB264_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB264_3
.LBB264_2:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB264_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end264:
	.size	decode_buffer, .Lfunc_end264-decode_buffer
	.cfi_endproc

	.globl	set_buffer_internal
	.align	16, 0x90
	.type	set_buffer_internal,@function
set_buffer_internal:                    # @set_buffer_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp795:
	.cfi_def_cfa_offset 16
.Ltmp796:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp797:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	cmpq	-8(%rbp), %rdi
	je	.LBB265_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	set_buffer_internal_1
.LBB265_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end265:
	.size	set_buffer_internal, .Lfunc_end265-set_buffer_internal
	.cfi_endproc

	.globl	record_unwind_current_buffer
	.align	16, 0x90
	.type	record_unwind_current_buffer,@function
record_unwind_current_buffer:           # @record_unwind_current_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp798:
	.cfi_def_cfa_offset 16
.Ltmp799:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp800:
	.cfi_def_cfa_register %rbp
	callq	Fcurrent_buffer
	movabsq	$set_buffer_if_live, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	popq	%rbp
	retq
.Lfunc_end266:
	.size	record_unwind_current_buffer, .Lfunc_end266-record_unwind_current_buffer
	.cfi_endproc

	.globl	buffer_intervals
	.align	16, 0x90
	.type	buffer_intervals,@function
buffer_intervals:                       # @buffer_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp801:
	.cfi_def_cfa_offset 16
.Ltmp802:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp803:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	120(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end267:
	.size	buffer_intervals, .Lfunc_end267-buffer_intervals
	.cfi_endproc

	.globl	set_buffer_intervals
	.align	16, 0x90
	.type	set_buffer_intervals,@function
set_buffer_intervals:                   # @set_buffer_intervals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp804:
	.cfi_def_cfa_offset 16
.Ltmp805:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp806:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end268:
	.size	set_buffer_intervals, .Lfunc_end268-set_buffer_intervals
	.cfi_endproc

	.globl	buffer_has_overlays
	.align	16, 0x90
	.type	buffer_has_overlays,@function
buffer_has_overlays:                    # @buffer_has_overlays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp807:
	.cfi_def_cfa_offset 16
.Ltmp808:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp809:
	.cfi_def_cfa_register %rbp
	movb	$1, %al
	movq	current_buffer, %rcx
	cmpq	$0, 944(%rcx)
	movb	%al, -1(%rbp)           # 1-byte Spill
	jne	.LBB269_2
# BB#1:                                 # %lor.rhs
	movq	current_buffer, %rax
	cmpq	$0, 952(%rax)
	setne	%cl
	movb	%cl, -1(%rbp)           # 1-byte Spill
.LBB269_2:                              # %lor.end
	movb	-1(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end269:
	.size	buffer_has_overlays, .Lfunc_end269-buffer_has_overlays
	.cfi_endproc

	.globl	FETCH_MULTIBYTE_CHAR
	.align	16, 0x90
	.type	FETCH_MULTIBYTE_CHAR,@function
FETCH_MULTIBYTE_CHAR:                   # @FETCH_MULTIBYTE_CHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp810:
	.cfi_def_cfa_offset 16
.Ltmp811:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp812:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	24(%rax), %rdi
	jl	.LBB270_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB270_3
.LBB270_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB270_3
.LBB270_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB270_5
# BB#4:                                 # %cond.true.4
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB270_12
.LBB270_5:                              # %cond.false.7
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB270_7
# BB#6:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jmp	.LBB270_11
.LBB270_7:                              # %cond.false.25
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB270_9
# BB#8:                                 # %cond.true.30
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB270_10
.LBB270_9:                              # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB270_10:                             # %cond.end.45
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB270_11:                             # %cond.end.47
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB270_12:                             # %cond.end.49
	movl	-28(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end270:
	.size	FETCH_MULTIBYTE_CHAR, .Lfunc_end270-FETCH_MULTIBYTE_CHAR
	.cfi_endproc

	.globl	BUF_FETCH_MULTIBYTE_CHAR
	.align	16, 0x90
	.type	BUF_FETCH_MULTIBYTE_CHAR,@function
BUF_FETCH_MULTIBYTE_CHAR:               # @BUF_FETCH_MULTIBYTE_CHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp813:
	.cfi_def_cfa_offset 16
.Ltmp814:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp815:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	720(%rdi), %rdi
	cmpq	24(%rdi), %rsi
	jl	.LBB271_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB271_3
.LBB271_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB271_3
.LBB271_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB271_5
# BB#4:                                 # %cond.true.4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB271_12
.LBB271_5:                              # %cond.false.7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB271_7
# BB#6:                                 # %cond.true.12
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	jmp	.LBB271_11
.LBB271_7:                              # %cond.false.25
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB271_9
# BB#8:                                 # %cond.true.30
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB271_10
.LBB271_9:                              # %cond.false.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB271_10:                             # %cond.end.45
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB271_11:                             # %cond.end.47
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB271_12:                             # %cond.end.49
	movl	-36(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end271:
	.size	BUF_FETCH_MULTIBYTE_CHAR, .Lfunc_end271-BUF_FETCH_MULTIBYTE_CHAR
	.cfi_endproc

	.globl	buffer_window_count
	.align	16, 0x90
	.type	buffer_window_count,@function
buffer_window_count:                    # @buffer_window_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp816:
	.cfi_def_cfa_offset 16
.Ltmp817:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp818:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 784(%rdi)
	je	.LBB272_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB272_2:                              # %if.end
	movq	-8(%rbp), %rax
	movl	796(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end272:
	.size	buffer_window_count, .Lfunc_end272-buffer_window_count
	.cfi_endproc

	.globl	per_buffer_default
	.align	16, 0x90
	.type	per_buffer_default,@function
per_buffer_default:                     # @per_buffer_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp819:
	.cfi_def_cfa_offset 16
.Ltmp820:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp821:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	buffer_defaults(,%rax), %rax
	popq	%rbp
	retq
.Lfunc_end273:
	.size	per_buffer_default, .Lfunc_end273-per_buffer_default
	.cfi_endproc

	.globl	set_per_buffer_default
	.align	16, 0x90
	.type	set_per_buffer_default,@function
set_per_buffer_default:                 # @set_per_buffer_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp822:
	.cfi_def_cfa_offset 16
.Ltmp823:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp824:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-4(%rbp), %rax
	movq	%rsi, buffer_defaults(,%rax)
	popq	%rbp
	retq
.Lfunc_end274:
	.size	set_per_buffer_default, .Lfunc_end274-set_per_buffer_default
	.cfi_endproc

	.globl	per_buffer_value
	.align	16, 0x90
	.type	per_buffer_value,@function
per_buffer_value:                       # @per_buffer_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp825:
	.cfi_def_cfa_offset 16
.Ltmp826:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp827:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movslq	%esi, %rax
	movq	(%rdi,%rax), %rax
	popq	%rbp
	retq
.Lfunc_end275:
	.size	per_buffer_value, .Lfunc_end275-per_buffer_value
	.cfi_endproc

	.globl	set_per_buffer_value
	.align	16, 0x90
	.type	set_per_buffer_value,@function
set_per_buffer_value:                   # @set_per_buffer_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp828:
	.cfi_def_cfa_offset 16
.Ltmp829:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp830:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movslq	%esi, %rax
	movq	%rdx, (%rdi,%rax)
	popq	%rbp
	retq
.Lfunc_end276:
	.size	set_per_buffer_value, .Lfunc_end276-set_per_buffer_value
	.cfi_endproc

	.globl	downcase
	.align	16, 0x90
	.type	downcase,@function
downcase:                               # @downcase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp831:
	.cfi_def_cfa_offset 16
.Ltmp832:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp833:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	current_buffer, %rax
	movq	184(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB277_1
	jmp	.LBB277_2
.LBB277_1:                              # %cond.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB277_3
.LBB277_2:                              # %cond.false
	movslq	-4(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB277_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end277:
	.size	downcase, .Lfunc_end277-downcase
	.cfi_endproc

	.globl	uppercasep
	.align	16, 0x90
	.type	uppercasep,@function
uppercasep:                             # @uppercasep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp834:
	.cfi_def_cfa_offset 16
.Ltmp835:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp836:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	downcase
	cmpl	-4(%rbp), %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end278:
	.size	uppercasep, .Lfunc_end278-uppercasep
	.cfi_endproc

	.globl	upcase1
	.align	16, 0x90
	.type	upcase1,@function
upcase1:                                # @upcase1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp837:
	.cfi_def_cfa_offset 16
.Ltmp838:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp839:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	current_buffer, %rax
	movq	192(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB279_1
	jmp	.LBB279_2
.LBB279_1:                              # %cond.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB279_3
.LBB279_2:                              # %cond.false
	movslq	-4(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB279_3:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end279:
	.size	upcase1, .Lfunc_end279-upcase1
	.cfi_endproc

	.globl	lowercasep
	.align	16, 0x90
	.type	lowercasep,@function
lowercasep:                             # @lowercasep
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp840:
	.cfi_def_cfa_offset 16
.Ltmp841:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp842:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	uppercasep
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jne	.LBB280_2
# BB#1:                                 # %land.rhs
	movl	-4(%rbp), %edi
	callq	upcase1
	cmpl	-4(%rbp), %eax
	setne	%cl
	movb	%cl, -5(%rbp)           # 1-byte Spill
.LBB280_2:                              # %land.end
	movb	-5(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end280:
	.size	lowercasep, .Lfunc_end280-lowercasep
	.cfi_endproc

	.globl	upcase
	.align	16, 0x90
	.type	upcase,@function
upcase:                                 # @upcase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp843:
	.cfi_def_cfa_offset 16
.Ltmp844:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp845:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	uppercasep
	testb	$1, %al
	jne	.LBB281_1
	jmp	.LBB281_2
.LBB281_1:                              # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB281_3
.LBB281_2:                              # %cond.false
	movl	-4(%rbp), %edi
	callq	upcase1
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB281_3:                              # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end281:
	.size	upcase, .Lfunc_end281-upcase
	.cfi_endproc

	.globl	wset_frame
	.align	16, 0x90
	.type	wset_frame,@function
wset_frame:                             # @wset_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp846:
	.cfi_def_cfa_offset 16
.Ltmp847:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp848:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end282:
	.size	wset_frame, .Lfunc_end282-wset_frame
	.cfi_endproc

	.globl	wset_next
	.align	16, 0x90
	.type	wset_next,@function
wset_next:                              # @wset_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp849:
	.cfi_def_cfa_offset 16
.Ltmp850:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp851:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end283:
	.size	wset_next, .Lfunc_end283-wset_next
	.cfi_endproc

	.globl	wset_prev
	.align	16, 0x90
	.type	wset_prev,@function
wset_prev:                              # @wset_prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp852:
	.cfi_def_cfa_offset 16
.Ltmp853:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp854:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end284:
	.size	wset_prev, .Lfunc_end284-wset_prev
	.cfi_endproc

	.globl	wset_redisplay_end_trigger
	.align	16, 0x90
	.type	wset_redisplay_end_trigger,@function
wset_redisplay_end_trigger:             # @wset_redisplay_end_trigger
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp855:
	.cfi_def_cfa_offset 16
.Ltmp856:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp857:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 168(%rdi)
	popq	%rbp
	retq
.Lfunc_end285:
	.size	wset_redisplay_end_trigger, .Lfunc_end285-wset_redisplay_end_trigger
	.cfi_endproc

	.globl	wset_new_pixel
	.align	16, 0x90
	.type	wset_new_pixel,@function
wset_new_pixel:                         # @wset_new_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp858:
	.cfi_def_cfa_offset 16
.Ltmp859:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp860:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end286:
	.size	wset_new_pixel, .Lfunc_end286-wset_new_pixel
	.cfi_endproc

	.globl	wset_vertical_scroll_bar
	.align	16, 0x90
	.type	wset_vertical_scroll_bar,@function
wset_vertical_scroll_bar:               # @wset_vertical_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp861:
	.cfi_def_cfa_offset 16
.Ltmp862:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp863:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end287:
	.size	wset_vertical_scroll_bar, .Lfunc_end287-wset_vertical_scroll_bar
	.cfi_endproc

	.globl	wset_horizontal_scroll_bar
	.align	16, 0x90
	.type	wset_horizontal_scroll_bar,@function
wset_horizontal_scroll_bar:             # @wset_horizontal_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp864:
	.cfi_def_cfa_offset 16
.Ltmp865:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp866:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end288:
	.size	wset_horizontal_scroll_bar, .Lfunc_end288-wset_horizontal_scroll_bar
	.cfi_endproc

	.globl	wset_horizontal_scroll_bar_type
	.align	16, 0x90
	.type	wset_horizontal_scroll_bar_type,@function
wset_horizontal_scroll_bar_type:        # @wset_horizontal_scroll_bar_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp867:
	.cfi_def_cfa_offset 16
.Ltmp868:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp869:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end289:
	.size	wset_horizontal_scroll_bar_type, .Lfunc_end289-wset_horizontal_scroll_bar_type
	.cfi_endproc

	.globl	wset_prev_buffers
	.align	16, 0x90
	.type	wset_prev_buffers,@function
wset_prev_buffers:                      # @wset_prev_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp870:
	.cfi_def_cfa_offset 16
.Ltmp871:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp872:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 208(%rdi)
	popq	%rbp
	retq
.Lfunc_end290:
	.size	wset_prev_buffers, .Lfunc_end290-wset_prev_buffers
	.cfi_endproc

	.globl	wset_next_buffers
	.align	16, 0x90
	.type	wset_next_buffers,@function
wset_next_buffers:                      # @wset_next_buffers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp873:
	.cfi_def_cfa_offset 16
.Ltmp874:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp875:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 216(%rdi)
	popq	%rbp
	retq
.Lfunc_end291:
	.size	wset_next_buffers, .Lfunc_end291-wset_next_buffers
	.cfi_endproc

	.globl	output_cursor_to
	.align	16, 0x90
	.type	output_cursor_to,@function
output_cursor_to:                       # @output_cursor_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp876:
	.cfi_def_cfa_offset 16
.Ltmp877:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp878:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 392(%rdi)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 396(%rdi)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 384(%rdi)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 388(%rdi)
	popq	%rbp
	retq
.Lfunc_end292:
	.size	output_cursor_to, .Lfunc_end292-output_cursor_to
	.cfi_endproc

	.globl	syms_of_xwidget
	.align	16, 0x90
	.type	syms_of_xwidget,@function
syms_of_xwidget:                        # @syms_of_xwidget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp879:
	.cfi_def_cfa_offset 16
.Ltmp880:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp881:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end293:
	.size	syms_of_xwidget, .Lfunc_end293-syms_of_xwidget
	.cfi_endproc

	.globl	valid_xwidget_spec_p
	.align	16, 0x90
	.type	valid_xwidget_spec_p,@function
valid_xwidget_spec_p:                   # @valid_xwidget_spec_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp882:
	.cfi_def_cfa_offset 16
.Ltmp883:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp884:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end294:
	.size	valid_xwidget_spec_p, .Lfunc_end294-valid_xwidget_spec_p
	.cfi_endproc

	.globl	xwidget_view_delete_all_in_window
	.align	16, 0x90
	.type	xwidget_view_delete_all_in_window,@function
xwidget_view_delete_all_in_window:      # @xwidget_view_delete_all_in_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp885:
	.cfi_def_cfa_offset 16
.Ltmp886:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp887:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end295:
	.size	xwidget_view_delete_all_in_window, .Lfunc_end295-xwidget_view_delete_all_in_window
	.cfi_endproc

	.globl	x_draw_xwidget_glyph_string
	.align	16, 0x90
	.type	x_draw_xwidget_glyph_string,@function
x_draw_xwidget_glyph_string:            # @x_draw_xwidget_glyph_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp888:
	.cfi_def_cfa_offset 16
.Ltmp889:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp890:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Lfunc_end296:
	.size	x_draw_xwidget_glyph_string, .Lfunc_end296-x_draw_xwidget_glyph_string
	.cfi_endproc

	.globl	lookup_xwidget
	.align	16, 0x90
	.type	lookup_xwidget,@function
lookup_xwidget:                         # @lookup_xwidget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp891:
	.cfi_def_cfa_offset 16
.Ltmp892:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp893:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Lfunc_end297:
	.size	lookup_xwidget, .Lfunc_end297-lookup_xwidget
	.cfi_endproc

	.globl	xwidget_end_redisplay
	.align	16, 0x90
	.type	xwidget_end_redisplay,@function
xwidget_end_redisplay:                  # @xwidget_end_redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp894:
	.cfi_def_cfa_offset 16
.Ltmp895:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp896:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end298:
	.size	xwidget_end_redisplay, .Lfunc_end298-xwidget_end_redisplay
	.cfi_endproc

	.globl	kill_buffer_xwidgets
	.align	16, 0x90
	.type	kill_buffer_xwidgets,@function
kill_buffer_xwidgets:                   # @kill_buffer_xwidgets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp897:
	.cfi_def_cfa_offset 16
.Ltmp898:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp899:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end299:
	.size	kill_buffer_xwidgets, .Lfunc_end299-kill_buffer_xwidgets
	.cfi_endproc

	.globl	block_input
	.align	16, 0x90
	.type	block_input,@function
block_input:                            # @block_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp900:
	.cfi_def_cfa_offset 16
.Ltmp901:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp902:
	.cfi_def_cfa_register %rbp
	movl	interrupt_input_blocked, %eax
	addl	$1, %eax
	movl	%eax, interrupt_input_blocked
	popq	%rbp
	retq
.Lfunc_end300:
	.size	block_input, .Lfunc_end300-block_input
	.cfi_endproc

	.globl	input_blocked_p
	.align	16, 0x90
	.type	input_blocked_p,@function
input_blocked_p:                        # @input_blocked_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp903:
	.cfi_def_cfa_offset 16
.Ltmp904:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp905:
	.cfi_def_cfa_register %rbp
	movl	interrupt_input_blocked, %eax
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end301:
	.size	input_blocked_p, .Lfunc_end301-input_blocked_p
	.cfi_endproc

	.globl	pset_childp
	.align	16, 0x90
	.type	pset_childp,@function
pset_childp:                            # @pset_childp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp906:
	.cfi_def_cfa_offset 16
.Ltmp907:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp908:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end302:
	.size	pset_childp, .Lfunc_end302-pset_childp
	.cfi_endproc

	.globl	pset_gnutls_cred_type
	.align	16, 0x90
	.type	pset_gnutls_cred_type,@function
pset_gnutls_cred_type:                  # @pset_gnutls_cred_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp909:
	.cfi_def_cfa_offset 16
.Ltmp910:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp911:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end303:
	.size	pset_gnutls_cred_type, .Lfunc_end303-pset_gnutls_cred_type
	.cfi_endproc

	.globl	fset_buffer_list
	.align	16, 0x90
	.type	fset_buffer_list,@function
fset_buffer_list:                       # @fset_buffer_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp912:
	.cfi_def_cfa_offset 16
.Ltmp913:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp914:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end304:
	.size	fset_buffer_list, .Lfunc_end304-fset_buffer_list
	.cfi_endproc

	.globl	fset_buried_buffer_list
	.align	16, 0x90
	.type	fset_buried_buffer_list,@function
fset_buried_buffer_list:                # @fset_buried_buffer_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp915:
	.cfi_def_cfa_offset 16
.Ltmp916:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp917:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end305:
	.size	fset_buried_buffer_list, .Lfunc_end305-fset_buried_buffer_list
	.cfi_endproc

	.globl	fset_condemned_scroll_bars
	.align	16, 0x90
	.type	fset_condemned_scroll_bars,@function
fset_condemned_scroll_bars:             # @fset_condemned_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp918:
	.cfi_def_cfa_offset 16
.Ltmp919:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp920:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	popq	%rbp
	retq
.Lfunc_end306:
	.size	fset_condemned_scroll_bars, .Lfunc_end306-fset_condemned_scroll_bars
	.cfi_endproc

	.globl	fset_face_alist
	.align	16, 0x90
	.type	fset_face_alist,@function
fset_face_alist:                        # @fset_face_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp921:
	.cfi_def_cfa_offset 16
.Ltmp922:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp923:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end307:
	.size	fset_face_alist, .Lfunc_end307-fset_face_alist
	.cfi_endproc

	.globl	fset_focus_frame
	.align	16, 0x90
	.type	fset_focus_frame,@function
fset_focus_frame:                       # @fset_focus_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp924:
	.cfi_def_cfa_offset 16
.Ltmp925:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp926:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end308:
	.size	fset_focus_frame, .Lfunc_end308-fset_focus_frame
	.cfi_endproc

	.globl	fset_icon_name
	.align	16, 0x90
	.type	fset_icon_name,@function
fset_icon_name:                         # @fset_icon_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp927:
	.cfi_def_cfa_offset 16
.Ltmp928:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp929:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end309:
	.size	fset_icon_name, .Lfunc_end309-fset_icon_name
	.cfi_endproc

	.globl	fset_menu_bar_items
	.align	16, 0x90
	.type	fset_menu_bar_items,@function
fset_menu_bar_items:                    # @fset_menu_bar_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp930:
	.cfi_def_cfa_offset 16
.Ltmp931:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp932:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 88(%rdi)
	popq	%rbp
	retq
.Lfunc_end310:
	.size	fset_menu_bar_items, .Lfunc_end310-fset_menu_bar_items
	.cfi_endproc

	.globl	fset_menu_bar_vector
	.align	16, 0x90
	.type	fset_menu_bar_vector,@function
fset_menu_bar_vector:                   # @fset_menu_bar_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp933:
	.cfi_def_cfa_offset 16
.Ltmp934:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp935:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 104(%rdi)
	popq	%rbp
	retq
.Lfunc_end311:
	.size	fset_menu_bar_vector, .Lfunc_end311-fset_menu_bar_vector
	.cfi_endproc

	.globl	fset_name
	.align	16, 0x90
	.type	fset_name,@function
fset_name:                              # @fset_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp936:
	.cfi_def_cfa_offset 16
.Ltmp937:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp938:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end312:
	.size	fset_name, .Lfunc_end312-fset_name
	.cfi_endproc

	.globl	fset_param_alist
	.align	16, 0x90
	.type	fset_param_alist,@function
fset_param_alist:                       # @fset_param_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp939:
	.cfi_def_cfa_offset 16
.Ltmp940:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp941:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end313:
	.size	fset_param_alist, .Lfunc_end313-fset_param_alist
	.cfi_endproc

	.globl	fset_root_window
	.align	16, 0x90
	.type	fset_root_window,@function
fset_root_window:                       # @fset_root_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp942:
	.cfi_def_cfa_offset 16
.Ltmp943:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp944:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end314:
	.size	fset_root_window, .Lfunc_end314-fset_root_window
	.cfi_endproc

	.globl	fset_scroll_bars
	.align	16, 0x90
	.type	fset_scroll_bars,@function
fset_scroll_bars:                       # @fset_scroll_bars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp945:
	.cfi_def_cfa_offset 16
.Ltmp946:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp947:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end315:
	.size	fset_scroll_bars, .Lfunc_end315-fset_scroll_bars
	.cfi_endproc

	.globl	fset_selected_window
	.align	16, 0x90
	.type	fset_selected_window,@function
fset_selected_window:                   # @fset_selected_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp948:
	.cfi_def_cfa_offset 16
.Ltmp949:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp950:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end316:
	.size	fset_selected_window, .Lfunc_end316-fset_selected_window
	.cfi_endproc

	.globl	fset_title
	.align	16, 0x90
	.type	fset_title,@function
fset_title:                             # @fset_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp951:
	.cfi_def_cfa_offset 16
.Ltmp952:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp953:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end317:
	.size	fset_title, .Lfunc_end317-fset_title
	.cfi_endproc

	.globl	fset_tool_bar_items
	.align	16, 0x90
	.type	fset_tool_bar_items,@function
fset_tool_bar_items:                    # @fset_tool_bar_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp954:
	.cfi_def_cfa_offset 16
.Ltmp955:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp956:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end318:
	.size	fset_tool_bar_items, .Lfunc_end318-fset_tool_bar_items
	.cfi_endproc

	.globl	fset_tool_bar_position
	.align	16, 0x90
	.type	fset_tool_bar_position,@function
fset_tool_bar_position:                 # @fset_tool_bar_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp957:
	.cfi_def_cfa_offset 16
.Ltmp958:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp959:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	popq	%rbp
	retq
.Lfunc_end319:
	.size	fset_tool_bar_position, .Lfunc_end319-fset_tool_bar_position
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI320_0:
	.quad	-4616189618054758400    # double -1
.LCPI320_1:
	.quad	4634766966517661696     # double 72
	.text
	.globl	default_pixels_per_inch_x
	.align	16, 0x90
	.type	default_pixels_per_inch_x,@function
default_pixels_per_inch_x:              # @default_pixels_per_inch_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp960:
	.cfi_def_cfa_offset 16
.Ltmp961:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp962:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	globals+568, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB320_2
# BB#1:                                 # %cond.true
	movq	globals+568, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB320_3
.LBB320_2:                              # %cond.false
	movq	globals+568, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB320_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB320_4
	jmp	.LBB320_5
.LBB320_4:                              # %cond.true.3
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB320_6
.LBB320_5:                              # %cond.false.5
	movsd	.LCPI320_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB320_6
.LBB320_6:                              # %cond.end.6
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB320_11
# BB#7:                                 # %cond.true.10
	movq	-8(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB320_8
	jmp	.LBB320_9
.LBB320_8:                              # %cond.true.13
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB320_10
.LBB320_9:                              # %cond.false.15
	movsd	.LCPI320_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB320_10
.LBB320_10:                             # %cond.end.16
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB320_12
.LBB320_11:                             # %cond.false.18
	movsd	.LCPI320_1, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB320_12
.LBB320_12:                             # %cond.end.19
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end320:
	.size	default_pixels_per_inch_x, .Lfunc_end320-default_pixels_per_inch_x
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI321_0:
	.quad	-4616189618054758400    # double -1
.LCPI321_1:
	.quad	4634766966517661696     # double 72
	.text
	.globl	default_pixels_per_inch_y
	.align	16, 0x90
	.type	default_pixels_per_inch_y,@function
default_pixels_per_inch_y:              # @default_pixels_per_inch_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp963:
	.cfi_def_cfa_offset 16
.Ltmp964:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp965:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	globals+568, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB321_2
# BB#1:                                 # %cond.true
	movq	globals+568, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB321_3
.LBB321_2:                              # %cond.false
	movq	globals+568, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB321_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB321_4
	jmp	.LBB321_5
.LBB321_4:                              # %cond.true.3
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB321_6
.LBB321_5:                              # %cond.false.5
	movsd	.LCPI321_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB321_6
.LBB321_6:                              # %cond.end.6
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB321_11
# BB#7:                                 # %cond.true.10
	movq	-8(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB321_8
	jmp	.LBB321_9
.LBB321_8:                              # %cond.true.13
	movq	-8(%rbp), %rdi
	callq	XFLOATINT
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB321_10
.LBB321_9:                              # %cond.false.15
	movsd	.LCPI321_0, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB321_10
.LBB321_10:                             # %cond.end.16
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB321_12
.LBB321_11:                             # %cond.false.18
	movsd	.LCPI321_1, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB321_12
.LBB321_12:                             # %cond.end.19
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end321:
	.size	default_pixels_per_inch_y, .Lfunc_end321-default_pixels_per_inch_y
	.cfi_endproc

	.globl	SET_FRAME_VISIBLE
	.align	16, 0x90
	.type	SET_FRAME_VISIBLE,@function
SET_FRAME_VISIBLE:                      # @SET_FRAME_VISIBLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp966:
	.cfi_def_cfa_offset 16
.Ltmp967:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp968:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB322_7
# BB#1:                                 # %if.then
	cmpl	$1, -12(%rbp)
	jne	.LBB322_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB322_4
# BB#3:                                 # %if.then.2
	callq	redisplay_other_windows
.LBB322_4:                              # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$13, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB322_6
# BB#5:                                 # %if.then.7
	movb	$1, frame_garbaged
.LBB322_6:                              # %if.end.8
	jmp	.LBB322_7
.LBB322_7:                              # %if.end.9
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	movq	208(%rcx), %rsi
	andq	$3, %rdx
	shlq	$10, %rdx
	andq	$-3073, %rsi            # imm = 0xFFFFFFFFFFFFF3FF
	orq	%rdx, %rsi
	movq	%rsi, 208(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end322:
	.size	SET_FRAME_VISIBLE, .Lfunc_end322-SET_FRAME_VISIBLE
	.cfi_endproc

	.globl	x_set_bitmap_icon
	.align	16, 0x90
	.type	x_set_bitmap_icon,@function
x_set_bitmap_icon:                      # @x_set_bitmap_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp969:
	.cfi_def_cfa_offset 16
.Ltmp970:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp971:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$532, %eax              # imm = 0x214
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	assq_no_quit
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB323_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB323_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	x_bitmap_icon
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB323_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end323:
	.size	x_set_bitmap_icon, .Lfunc_end323-x_set_bitmap_icon
	.cfi_endproc

	.globl	flush_frame
	.align	16, 0x90
	.type	flush_frame,@function
flush_frame:                            # @flush_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp972:
	.cfi_def_cfa_offset 16
.Ltmp973:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp974:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB324_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB324_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB324_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end324:
	.size	flush_frame, .Lfunc_end324-flush_frame
	.cfi_endproc

	.globl	kset_default_minibuffer_frame
	.align	16, 0x90
	.type	kset_default_minibuffer_frame,@function
kset_default_minibuffer_frame:          # @kset_default_minibuffer_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp975:
	.cfi_def_cfa_offset 16
.Ltmp976:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp977:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 160(%rdi)
	popq	%rbp
	retq
.Lfunc_end325:
	.size	kset_default_minibuffer_frame, .Lfunc_end325-kset_default_minibuffer_frame
	.cfi_endproc

	.globl	kset_defining_kbd_macro
	.align	16, 0x90
	.type	kset_defining_kbd_macro,@function
kset_defining_kbd_macro:                # @kset_defining_kbd_macro
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp978:
	.cfi_def_cfa_offset 16
.Ltmp979:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp980:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end326:
	.size	kset_defining_kbd_macro, .Lfunc_end326-kset_defining_kbd_macro
	.cfi_endproc

	.globl	kset_input_decode_map
	.align	16, 0x90
	.type	kset_input_decode_map,@function
kset_input_decode_map:                  # @kset_input_decode_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp981:
	.cfi_def_cfa_offset 16
.Ltmp982:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp983:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end327:
	.size	kset_input_decode_map, .Lfunc_end327-kset_input_decode_map
	.cfi_endproc

	.globl	kset_last_command
	.align	16, 0x90
	.type	kset_last_command,@function
kset_last_command:                      # @kset_last_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp984:
	.cfi_def_cfa_offset 16
.Ltmp985:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp986:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end328:
	.size	kset_last_command, .Lfunc_end328-kset_last_command
	.cfi_endproc

	.globl	kset_last_kbd_macro
	.align	16, 0x90
	.type	kset_last_kbd_macro,@function
kset_last_kbd_macro:                    # @kset_last_kbd_macro
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp987:
	.cfi_def_cfa_offset 16
.Ltmp988:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp989:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end329:
	.size	kset_last_kbd_macro, .Lfunc_end329-kset_last_kbd_macro
	.cfi_endproc

	.globl	kset_prefix_arg
	.align	16, 0x90
	.type	kset_prefix_arg,@function
kset_prefix_arg:                        # @kset_prefix_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp990:
	.cfi_def_cfa_offset 16
.Ltmp991:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp992:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end330:
	.size	kset_prefix_arg, .Lfunc_end330-kset_prefix_arg
	.cfi_endproc

	.globl	kset_system_key_alist
	.align	16, 0x90
	.type	kset_system_key_alist,@function
kset_system_key_alist:                  # @kset_system_key_alist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp993:
	.cfi_def_cfa_offset 16
.Ltmp994:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp995:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end331:
	.size	kset_system_key_alist, .Lfunc_end331-kset_system_key_alist
	.cfi_endproc

	.globl	kset_window_system
	.align	16, 0x90
	.type	kset_window_system,@function
kset_window_system:                     # @kset_window_system
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp996:
	.cfi_def_cfa_offset 16
.Ltmp997:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp998:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end332:
	.size	kset_window_system, .Lfunc_end332-kset_window_system
	.cfi_endproc

	.globl	kbd_buffer_store_event_hold
	.align	16, 0x90
	.type	kbd_buffer_store_event_hold,@function
kbd_buffer_store_event_hold:            # @kbd_buffer_store_event_hold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp999:
	.cfi_def_cfa_offset 16
.Ltmp1000:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1001:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	kbd_buffer_store_buffered_event
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end333:
	.size	kbd_buffer_store_event_hold, .Lfunc_end333-kbd_buffer_store_event_hold
	.cfi_endproc

	.globl	CATEGORY_MEMBER
	.align	16, 0x90
	.type	CATEGORY_MEMBER,@function
CATEGORY_MEMBER:                        # @CATEGORY_MEMBER
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1002:
	.cfi_def_cfa_offset 16
.Ltmp1003:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1004:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	bool_vector_bitref
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end334:
	.size	CATEGORY_MEMBER, .Lfunc_end334-CATEGORY_MEMBER
	.cfi_endproc

	.globl	CHAR_HAS_CATEGORY
	.align	16, 0x90
	.type	CHAR_HAS_CATEGORY,@function
CHAR_HAS_CATEGORY:                      # @CHAR_HAS_CATEGORY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1005:
	.cfi_def_cfa_offset 16
.Ltmp1006:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1007:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	char_category_set
	movq	%rax, -16(%rbp)
	movslq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	CATEGORY_MEMBER
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end335:
	.size	CHAR_HAS_CATEGORY, .Lfunc_end335-CHAR_HAS_CATEGORY
	.cfi_endproc

	.globl	set_charset_attr
	.align	16, 0x90
	.type	set_charset_attr,@function
set_charset_attr:                       # @set_charset_attr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1008:
	.cfi_def_cfa_offset 16
.Ltmp1009:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1010:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	Vcharset_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	ASET
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end336:
	.size	set_charset_attr, .Lfunc_end336-set_charset_attr
	.cfi_endproc

	.globl	syntax_property_entry
	.align	16, 0x90
	.type	syntax_property_entry,@function
syntax_property_entry:                  # @syntax_property_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1011:
	.cfi_def_cfa_offset 16
.Ltmp1012:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1013:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movl	%edi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB337_5
# BB#1:                                 # %if.then
	testb	$1, gl_state+24
	je	.LBB337_3
# BB#2:                                 # %cond.true
	movq	gl_state+32, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB337_4
.LBB337_3:                              # %cond.false
	movq	gl_state+40, %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB337_4:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB337_6
.LBB337_5:                              # %if.end
	movq	current_buffer, %rax
	movq	128(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -8(%rbp)
.LBB337_6:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end337:
	.size	syntax_property_entry, .Lfunc_end337-syntax_property_entry
	.cfi_endproc

	.globl	SYNTAX_ENTRY
	.align	16, 0x90
	.type	SYNTAX_ENTRY,@function
SYNTAX_ENTRY:                           # @SYNTAX_ENTRY
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1014:
	.cfi_def_cfa_offset 16
.Ltmp1015:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1016:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property_entry
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end338:
	.size	SYNTAX_ENTRY, .Lfunc_end338-SYNTAX_ENTRY
	.cfi_endproc

	.globl	syntax_property_with_flags
	.align	16, 0x90
	.type	syntax_property_with_flags,@function
syntax_property_with_flags:             # @syntax_property_with_flags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1017:
	.cfi_def_cfa_offset 16
.Ltmp1018:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1019:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movl	%edi, -4(%rbp)
	andb	$1, %al
	movb	%al, -5(%rbp)
	movl	-4(%rbp), %edi
	movb	-5(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	syntax_property_entry
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$3, %esi
	jne	.LBB339_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB339_3
.LBB339_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB339_3
.LBB339_3:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end339:
	.size	syntax_property_with_flags, .Lfunc_end339-syntax_property_with_flags
	.cfi_endproc

	.globl	SYNTAX_WITH_FLAGS
	.align	16, 0x90
	.type	SYNTAX_WITH_FLAGS,@function
SYNTAX_WITH_FLAGS:                      # @SYNTAX_WITH_FLAGS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1020:
	.cfi_def_cfa_offset 16
.Ltmp1021:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1022:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property_with_flags
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end340:
	.size	SYNTAX_WITH_FLAGS, .Lfunc_end340-SYNTAX_WITH_FLAGS
	.cfi_endproc

	.globl	syntax_property
	.align	16, 0x90
	.type	syntax_property,@function
syntax_property:                        # @syntax_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1023:
	.cfi_def_cfa_offset 16
.Ltmp1024:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1025:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movl	%edi, -4(%rbp)
	andb	$1, %al
	movb	%al, -5(%rbp)
	movl	-4(%rbp), %edi
	movb	-5(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	syntax_property_with_flags
	andl	$255, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end341:
	.size	syntax_property, .Lfunc_end341-syntax_property
	.cfi_endproc

	.globl	SYNTAX
	.align	16, 0x90
	.type	SYNTAX,@function
SYNTAX:                                 # @SYNTAX
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1026:
	.cfi_def_cfa_offset 16
.Ltmp1027:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1028:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	syntax_property
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end342:
	.size	SYNTAX, .Lfunc_end342-SYNTAX
	.cfi_endproc

	.globl	SYNTAX_TABLE_BYTE_TO_CHAR
	.align	16, 0x90
	.type	SYNTAX_TABLE_BYTE_TO_CHAR,@function
SYNTAX_TABLE_BYTE_TO_CHAR:              # @SYNTAX_TABLE_BYTE_TO_CHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1029:
	.cfi_def_cfa_offset 16
.Ltmp1030:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1031:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3420
	jne	.LBB343_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB343_24
.LBB343_2:                              # %cond.false
	movq	gl_state, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB343_3
	jmp	.LBB343_4
.LBB343_3:                              # %cond.true.1
	movq	gl_state, %rdi
	movq	-8(%rbp), %rsi
	callq	string_byte_to_char
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB343_23
.LBB343_4:                              # %cond.false.3
	movq	gl_state, %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB343_5
	jmp	.LBB343_18
.LBB343_5:                              # %cond.true.5
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	-8(%rbp), %rdi
	movq	gl_state, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB343_7
# BB#6:                                 # %cond.true.8
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB343_11
.LBB343_7:                              # %cond.false.9
	movq	gl_state, %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB343_9
# BB#8:                                 # %cond.true.13
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	760(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB343_10
.LBB343_9:                              # %cond.false.16
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB343_10:                             # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB343_11:                             # %cond.end.20
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	subq	$1, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	callq	buf_bytepos_to_charpos
	movq	gl_state, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB343_13
# BB#12:                                # %cond.true.25
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB343_17
.LBB343_13:                             # %cond.false.26
	movq	gl_state, %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB343_15
# BB#14:                                # %cond.true.31
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB343_16
.LBB343_15:                             # %cond.false.34
	movq	gl_state, %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB343_16:                             # %cond.end.38
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB343_17:                             # %cond.end.40
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB343_22
.LBB343_18:                             # %cond.false.44
	xorl	%edi, %edi
	movq	gl_state, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB343_20
# BB#19:                                # %cond.true.47
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	movq	current_buffer, %rcx
	addq	760(%rcx), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	current_buffer, %rcx
	subq	752(%rcx), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB343_21
.LBB343_20:                             # %cond.false.55
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB343_21:                             # %cond.end.56
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB343_22:                             # %cond.end.58
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB343_23:                             # %cond.end.60
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB343_24:                             # %cond.end.62
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end343:
	.size	SYNTAX_TABLE_BYTE_TO_CHAR, .Lfunc_end343-SYNTAX_TABLE_BYTE_TO_CHAR
	.cfi_endproc

	.globl	UPDATE_SYNTAX_TABLE_FORWARD
	.align	16, 0x90
	.type	UPDATE_SYNTAX_TABLE_FORWARD,@function
UPDATE_SYNTAX_TABLE_FORWARD:            # @UPDATE_SYNTAX_TABLE_FORWARD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1032:
	.cfi_def_cfa_offset 16
.Ltmp1033:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1034:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3420
	je	.LBB344_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	gl_state+64, %rax
	jl	.LBB344_3
# BB#2:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	addq	gl_state+96, %rax
	movq	gl_state, %rdx
	movq	%rax, %rdi
	callq	update_syntax_table_forward
.LBB344_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end344:
	.size	UPDATE_SYNTAX_TABLE_FORWARD, .Lfunc_end344-UPDATE_SYNTAX_TABLE_FORWARD
	.cfi_endproc

	.globl	UPDATE_SYNTAX_TABLE_FORWARD_FAST
	.align	16, 0x90
	.type	UPDATE_SYNTAX_TABLE_FORWARD_FAST,@function
UPDATE_SYNTAX_TABLE_FORWARD_FAST:       # @UPDATE_SYNTAX_TABLE_FORWARD_FAST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1035:
	.cfi_def_cfa_offset 16
.Ltmp1036:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1037:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3420
	je	.LBB345_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	gl_state+64, %rax
	jl	.LBB345_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	addq	gl_state+96, %rcx
	movq	gl_state, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-16(%rbp), %rcx         # 8-byte Reload
	callq	update_syntax_table
.LBB345_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end345:
	.size	UPDATE_SYNTAX_TABLE_FORWARD_FAST, .Lfunc_end345-UPDATE_SYNTAX_TABLE_FORWARD_FAST
	.cfi_endproc

	.globl	UPDATE_SYNTAX_TABLE_BACKWARD
	.align	16, 0x90
	.type	UPDATE_SYNTAX_TABLE_BACKWARD,@function
UPDATE_SYNTAX_TABLE_BACKWARD:           # @UPDATE_SYNTAX_TABLE_BACKWARD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1038:
	.cfi_def_cfa_offset 16
.Ltmp1039:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1040:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, globals+3420
	je	.LBB346_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	gl_state+56, %rax
	jge	.LBB346_3
# BB#2:                                 # %if.then
	movq	$-1, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	addq	gl_state+96, %rax
	movq	gl_state, %rcx
	movq	%rax, %rdi
	callq	update_syntax_table
.LBB346_3:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end346:
	.size	UPDATE_SYNTAX_TABLE_BACKWARD, .Lfunc_end346-UPDATE_SYNTAX_TABLE_BACKWARD
	.cfi_endproc

	.globl	UPDATE_SYNTAX_TABLE
	.align	16, 0x90
	.type	UPDATE_SYNTAX_TABLE,@function
UPDATE_SYNTAX_TABLE:                    # @UPDATE_SYNTAX_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1041:
	.cfi_def_cfa_offset 16
.Ltmp1042:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1043:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end347:
	.size	UPDATE_SYNTAX_TABLE, .Lfunc_end347-UPDATE_SYNTAX_TABLE
	.cfi_endproc

	.globl	UPDATE_SYNTAX_TABLE_FAST
	.align	16, 0x90
	.type	UPDATE_SYNTAX_TABLE_FAST,@function
UPDATE_SYNTAX_TABLE_FAST:               # @UPDATE_SYNTAX_TABLE_FAST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1044:
	.cfi_def_cfa_offset 16
.Ltmp1045:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1046:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_BACKWARD
	movq	-8(%rbp), %rdi
	callq	UPDATE_SYNTAX_TABLE_FORWARD_FAST
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end348:
	.size	UPDATE_SYNTAX_TABLE_FAST, .Lfunc_end348-UPDATE_SYNTAX_TABLE_FAST
	.cfi_endproc

	.globl	SETUP_BUFFER_SYNTAX_TABLE
	.align	16, 0x90
	.type	SETUP_BUFFER_SYNTAX_TABLE,@function
SETUP_BUFFER_SYNTAX_TABLE:              # @SETUP_BUFFER_SYNTAX_TABLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1047:
	.cfi_def_cfa_offset 16
.Ltmp1048:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1049:
	.cfi_def_cfa_register %rbp
	movb	$0, gl_state+24
	movb	$0, gl_state+72
	movq	current_buffer, %rax
	movq	128(%rax), %rax
	movq	%rax, gl_state+40
	popq	%rbp
	retq
.Lfunc_end349:
	.size	SETUP_BUFFER_SYNTAX_TABLE, .Lfunc_end349-SETUP_BUFFER_SYNTAX_TABLE
	.cfi_endproc

	.globl	fd_CLR
	.align	16, 0x90
	.type	fd_CLR,@function
fd_CLR:                                 # @fd_CLR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1050:
	.cfi_def_cfa_offset 16
.Ltmp1051:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1052:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB350_3
# BB#1:                                 # %land.lhs.true
	cmpl	$1024, -4(%rbp)         # imm = 0x400
	jge	.LBB350_3
# BB#2:                                 # %cond.true
	jmp	.LBB350_4
.LBB350_3:                              # %cond.false
.LBB350_4:                              # %cond.end
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	xorq	$-1, %rsi
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	cltd
	movl	-20(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movslq	%eax, %r8
	movq	-16(%rbp), %r9
	andq	(%r9,%r8,8), %rsi
	movq	%rsi, (%r9,%r8,8)
	popq	%rbp
	retq
.Lfunc_end350:
	.size	fd_CLR, .Lfunc_end350-fd_CLR
	.cfi_endproc

	.globl	fd_ISSET
	.align	16, 0x90
	.type	fd_ISSET,@function
fd_ISSET:                               # @fd_ISSET
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1053:
	.cfi_def_cfa_offset 16
.Ltmp1054:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1055:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB351_3
# BB#1:                                 # %land.lhs.true
	cmpl	$1024, -4(%rbp)         # imm = 0x400
	jge	.LBB351_3
# BB#2:                                 # %cond.true
	jmp	.LBB351_4
.LBB351_3:                              # %cond.false
.LBB351_4:                              # %cond.end
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movl	-4(%rbp), %edx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-20(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movl	-4(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %edx
	movl	%edx, %r8d
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-32(%rbp), %r8          # 8-byte Reload
	shlq	%cl, %r8
	andq	%r8, %rdi
	cmpq	$0, %rdi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end351:
	.size	fd_ISSET, .Lfunc_end351-fd_ISSET
	.cfi_endproc

	.globl	fd_SET
	.align	16, 0x90
	.type	fd_SET,@function
fd_SET:                                 # @fd_SET
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1056:
	.cfi_def_cfa_offset 16
.Ltmp1057:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1058:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB352_3
# BB#1:                                 # %land.lhs.true
	cmpl	$1024, -4(%rbp)         # imm = 0x400
	jge	.LBB352_3
# BB#2:                                 # %cond.true
	jmp	.LBB352_4
.LBB352_3:                              # %cond.false
.LBB352_4:                              # %cond.end
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	-4(%rbp), %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	cltd
	movl	-20(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	movslq	%eax, %r8
	movq	-16(%rbp), %r9
	orq	(%r9,%r8,8), %rsi
	movq	%rsi, (%r9,%r8,8)
	popq	%rbp
	retq
.Lfunc_end352:
	.size	fd_SET, .Lfunc_end352-fd_SET
	.cfi_endproc

	.globl	PURE_P
	.align	16, 0x90
	.type	PURE_P,@function
PURE_P:                                 # @PURE_P
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1059:
	.cfi_def_cfa_offset 16
.Ltmp1060:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1061:
	.cfi_def_cfa_register %rbp
	movabsq	$pure, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	%rax, %rdi
	cmpq	$3000000, %rdi          # imm = 0x2DC6C0
	setbe	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end353:
	.size	PURE_P, .Lfunc_end353-PURE_P
	.cfi_endproc

	.globl	CHECK_IMPURE
	.align	16, 0x90
	.type	CHECK_IMPURE,@function
CHECK_IMPURE:                           # @CHECK_IMPURE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1062:
	.cfi_def_cfa_offset 16
.Ltmp1063:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1064:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	PURE_P
	testb	$1, %al
	jne	.LBB354_1
	jmp	.LBB354_2
.LBB354_1:                              # %cond.true
	movq	-8(%rbp), %rdi
	callq	pure_write_error
.LBB354_2:                              # %cond.false
	jmp	.LBB354_3
.LBB354_3:                              # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end354:
	.size	CHECK_IMPURE, .Lfunc_end354-CHECK_IMPURE
	.cfi_endproc

	.globl	terminate_due_to_signal
	.align	16, 0x90
	.type	terminate_due_to_signal,@function
terminate_due_to_signal:                # @terminate_due_to_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1065:
	.cfi_def_cfa_offset 16
.Ltmp1066:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1067:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, %rsi
	callq	signal
	testb	$1, fatal_error_in_progress
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB355_6
# BB#1:                                 # %if.then
	movb	$1, fatal_error_in_progress
	callq	totally_unblock_input
	cmpl	$15, -4(%rbp)
	je	.LBB355_4
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, -4(%rbp)
	je	.LBB355_4
# BB#3:                                 # %lor.lhs.false.2
	cmpl	$2, -4(%rbp)
	jne	.LBB355_5
.LBB355_4:                              # %if.then.4
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB355_5:                              # %if.end
	xorl	%edi, %edi
	movl	-4(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	-156(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	shut_down_emacs
	movl	-8(%rbp), %edi
	callq	emacs_backtrace
.LBB355_6:                              # %if.end.6
	leaq	-136(%rbp), %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	sigaddset
	movl	$1, %edi
	leaq	-136(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	-4(%rbp), %edi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	raise
	movl	$1, %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	exit
.Lfunc_end355:
	.size	terminate_due_to_signal, .Lfunc_end355-terminate_due_to_signal
	.cfi_endproc

	.globl	Fkill_emacs
	.align	16, 0x90
	.type	Fkill_emacs,@function
Fkill_emacs:                            # @Fkill_emacs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1068:
	.cfi_def_cfa_offset 16
.Ltmp1069:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1070:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$595, %eax              # imm = 0x253
	movq	%rdi, -16(%rbp)
	movb	$0, waiting_for_input
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	run_hook
	callq	x_clipboard_manager_save_all
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB356_1
	jmp	.LBB356_3
.LBB356_1:                              # %land.lhs.true
	movq	stdin, %rdi
	callq	feof
	cmpl	$0, %eax
	jne	.LBB356_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB356_4
.LBB356_3:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB356_4:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	shut_down_emacs
	movq	globals+80, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB356_5
	jmp	.LBB356_6
.LBB356_5:                              # %if.then
	xorl	%edi, %edi
	movq	globals+80, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB356_6:                              # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB356_11
# BB#7:                                 # %if.then.11
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB356_9
# BB#8:                                 # %cond.true.14
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	orq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB356_10
.LBB356_9:                              # %cond.false.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	andq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB356_10:                             # %cond.end.19
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB356_12
.LBB356_11:                             # %if.else
	movl	$0, -20(%rbp)
.LBB356_12:                             # %if.end.22
	movl	-20(%rbp), %edi
	callq	exit
.Lfunc_end356:
	.size	Fkill_emacs, .Lfunc_end356-Fkill_emacs
	.cfi_endproc

	.globl	shut_down_emacs
	.align	16, 0x90
	.type	shut_down_emacs,@function
shut_down_emacs:                        # @shut_down_emacs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1071:
	.cfi_def_cfa_offset 16
.Ltmp1072:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1073:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, Vrun_hooks
	callq	builtin_lisp_symbol
	movq	%rax, globals+1120
	callq	getpgrp
	xorl	%edi, %edi
	movl	%eax, -20(%rbp)
	callq	tcgetpgrp
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	je	.LBB357_6
# BB#1:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB357_6
# BB#2:                                 # %if.then
	callq	reset_all_sys_modes
	cmpl	$0, -4(%rbp)
	je	.LBB357_5
# BB#3:                                 # %land.lhs.true.5
	cmpl	$15, -4(%rbp)
	je	.LBB357_5
# BB#4:                                 # %if.then.7
	movabsq	$shut_down_emacs.format, %rsi
	leaq	-64(%rbp), %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -68(%rbp)
	movl	-4(%rbp), %edi
	callq	safe_strsignal
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movslq	-68(%rbp), %rdx
	callq	emacs_write
	movl	$2, %edi
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	strlen
	movl	-84(%rbp), %edi         # 4-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	emacs_write
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB357_5:                              # %if.end
	jmp	.LBB357_6
.LBB357_6:                              # %if.end.14
	movq	-16(%rbp), %rdi
	callq	stuff_buffered_input
	xorl	%edi, %edi
	movb	$1, inhibit_sentinels
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	kill_buffer_processes
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdo_auto_save
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	unlock_all_files
	callq	unrequest_sigio
	cmpl	$0, -4(%rbp)
	je	.LBB357_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$15, -4(%rbp)
	jne	.LBB357_9
.LBB357_8:                              # %if.then.23
	callq	check_glyph_memory
	callq	check_message_stack
.LBB357_9:                              # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end357:
	.size	shut_down_emacs, .Lfunc_end357-shut_down_emacs
	.cfi_endproc

	.globl	Finvocation_name
	.align	16, 0x90
	.type	Finvocation_name,@function
Finvocation_name:                       # @Finvocation_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1074:
	.cfi_def_cfa_offset 16
.Ltmp1075:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1076:
	.cfi_def_cfa_register %rbp
	movq	globals+1192, %rdi
	callq	Fcopy_sequence
	popq	%rbp
	retq
.Lfunc_end358:
	.size	Finvocation_name, .Lfunc_end358-Finvocation_name
	.cfi_endproc

	.globl	Finvocation_directory
	.align	16, 0x90
	.type	Finvocation_directory,@function
Finvocation_directory:                  # @Finvocation_directory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1077:
	.cfi_def_cfa_offset 16
.Ltmp1078:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1079:
	.cfi_def_cfa_register %rbp
	movq	globals+1184, %rdi
	callq	Fcopy_sequence
	popq	%rbp
	retq
.Lfunc_end359:
	.size	Finvocation_directory, .Lfunc_end359-Finvocation_directory
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1080:
	.cfi_def_cfa_offset 16
.Ltmp1081:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1082:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	leaq	-24(%rbp), %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movb	$0, -49(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	%rax, stack_base
	movb	initialized, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, might_dump
	testb	$1, initialized
	jne	.LBB360_5
# BB#1:                                 # %if.then
	callq	my_heap_start
	movabsq	$my_endbss, %rcx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	my_endbss_static, %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jbe	.LBB360_3
# BB#2:                                 # %cond.true
	movabsq	$my_endbss, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB360_4
.LBB360_3:                              # %cond.false
	movq	my_endbss_static, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB360_4:                              # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, heap_bss_diff
.LBB360_5:                              # %if.end
	movabsq	$close_output_streams, %rdi
	callq	atexit
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	sort_args
	movl	$0, -8(%rbp)
.LBB360_6:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB360_8
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB360_6 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB360_6
.LBB360_8:                              # %while.end
	movabsq	$.L.str, %rdx
	movabsq	$.L.str.1, %rcx
	movl	$3, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_9
	jmp	.LBB360_18
.LBB360_9:                              # %if.then.5
	testb	$1, initialized
	je	.LBB360_16
# BB#10:                                # %if.then.7
	movabsq	$.L.str.2, %rdi
	callq	intern_c_string
	movq	%rax, %rdi
	callq	Fsymbol_value
	movabsq	$.L.str.3, %rdi
	movq	%rax, -120(%rbp)
	callq	intern_c_string
	movq	%rax, %rdi
	callq	Fsymbol_value
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB360_12
# BB#11:                                # %if.then.13
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_12:                             # %if.end.15
	movq	-128(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB360_14
# BB#13:                                # %if.then.17
	movabsq	$.L.str.5, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_14:                             # %if.else
	movq	-120(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -112(%rbp)
# BB#15:                                # %if.end.21
	jmp	.LBB360_17
.LBB360_16:                             # %if.else.22
	movabsq	$emacs_copyright, %rax
	movabsq	$emacs_version, %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -112(%rbp)
.LBB360_17:                             # %if.end.23
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movq	-112(%rbp), %rsi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.7, %rsi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.7, %rsi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.12, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.13, %rdi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_18:                             # %if.end.31
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movl	$4, %r8d
	leaq	-80(%rbp), %r9
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_19
	jmp	.LBB360_22
.LBB360_19:                             # %if.then.33
	callq	get_current_dir_name
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	chdir
	cmpl	$0, %eax
	je	.LBB360_21
# BB#20:                                # %if.then.37
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.16, %rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_21:                             # %if.end.42
	jmp	.LBB360_22
.LBB360_22:                             # %if.end.43
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, initialized
	movb	%cl, -325(%rbp)         # 1-byte Spill
	jne	.LBB360_26
# BB#23:                                # %land.rhs
	movb	$1, %al
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	movb	%al, -326(%rbp)         # 1-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	movb	-326(%rbp), %r8b        # 1-byte Reload
	movb	%r8b, -327(%rbp)        # 1-byte Spill
	je	.LBB360_25
# BB#24:                                # %lor.rhs
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%r8b
	movb	%r8b, -327(%rbp)        # 1-byte Spill
.LBB360_25:                             # %lor.end
	movb	-327(%rbp), %al         # 1-byte Reload
	movb	%al, -325(%rbp)         # 1-byte Spill
.LBB360_26:                             # %land.end
	movb	-325(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -27(%rbp)
	testb	$1, -27(%rbp)
	je	.LBB360_29
# BB#27:                                # %land.lhs.true
	movabsq	$.L.str.19, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB360_29
# BB#28:                                # %if.then.58
	movabsq	$.L.str.20, %rdi
	callq	xputenv
	movl	$262152, %eax           # imm = 0x40008
	movl	%eax, %edi
	callq	personality
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	execvp
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	emacs_perror
.LBB360_29:                             # %if.end.63
	testb	$1, noninteractive
	je	.LBB360_31
# BB#30:                                # %lor.lhs.false
	testb	$1, initialized
	je	.LBB360_37
.LBB360_31:                             # %land.lhs.true.66
	movl	$3, %edi
	leaq	-48(%rbp), %rsi
	callq	getrlimit
	cmpl	$0, %eax
	jne	.LBB360_37
# BB#32:                                # %if.then.69
	movl	$3, %eax
	movl	$160, -140(%rbp)
	movl	-140(%rbp), %ecx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-340(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	re_max_failures, %rsi
	movslq	-140(%rbp), %rdi
	imulq	%rdi, %rsi
	addq	$200000, %rsi           # imm = 0x30D40
	movq	%rsi, -136(%rbp)
	movq	-136(%rbp), %rsi
	cmpq	-40(%rbp), %rsi
	jbe	.LBB360_34
# BB#33:                                # %if.then.73
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	subq	$200000, %rax           # imm = 0x30D40
	movslq	-140(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	%rax, re_max_failures
.LBB360_34:                             # %if.end.78
	movq	-48(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB360_36
# BB#35:                                # %if.then.81
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB360_36:                             # %if.end.83
	movl	$3, %edi
	leaq	-48(%rbp), %rsi
	callq	setrlimit
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB360_37:                             # %if.end.85
	leaq	-25(%rbp), %rax
	movq	%rax, stack_bottom
	movq	stdin, %rdi
	callq	clearerr
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	emacs_backtrace
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movabsq	$malloc_warning, %rsi
	callq	memory_warnings
	movl	$4, %ecx
	movl	%ecx, %edi
	callq	malloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	realloc
	movq	%rax, %rdi
	callq	free
	movabsq	$.L.str.21, %rdi
	callq	getenv
	movb	$1, %dl
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	movb	%dl, -345(%rbp)         # 1-byte Spill
	je	.LBB360_39
# BB#38:                                # %lor.rhs.90
	movq	-152(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -345(%rbp)         # 1-byte Spill
.LBB360_39:                             # %lor.end.93
	movb	-345(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -26(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB360_41
# BB#40:                                # %if.then.96
	movl	$6, %edi
	movabsq	$.L.str.23, %rsi
	callq	setlocale
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB360_41:                             # %if.end.98
	callq	using_utf8
	andb	$1, %al
	movb	%al, globals+3430
	movb	$0, inhibit_window_system
.LBB360_42:                             # %while.body.102
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movl	$4, %r8d
	leaq	-160(%rbp), %r9
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_43
	jmp	.LBB360_49
.LBB360_43:                             # %if.then.104
                                        #   in Loop: Header=BB360_42 Depth=1
	xorl	%edi, %edi
	callq	emacs_close
	movl	$1, %edi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	emacs_close
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	emacs_open
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jl	.LBB360_45
# BB#44:                                # %lor.lhs.false.110
                                        #   in Loop: Header=BB360_42 Depth=1
	xorl	%edi, %edi
	movl	$1030, %esi             # imm = 0x406
	movl	$1, %edx
	movb	$0, %al
	callq	rpl_fcntl
	cmpl	$0, %eax
	jge	.LBB360_46
.LBB360_45:                             # %if.then.114
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.26, %rsi
	movq	%rax, -176(%rbp)
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-160(%rbp), %rcx
	movq	-176(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_46:                             # %if.end.119
                                        #   in Loop: Header=BB360_42 Depth=1
	xorl	%edi, %edi
	callq	isatty
	cmpl	$0, %eax
	jne	.LBB360_48
# BB#47:                                # %if.then.122
	movabsq	$.L.str.27, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-160(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_48:                             # %if.end.125
                                        #   in Loop: Header=BB360_42 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	stderr, %rdi
	movq	-160(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movb	$1, inhibit_window_system
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB360_50
.LBB360_49:                             # %if.else.127
	jmp	.LBB360_51
.LBB360_50:                             # %if.end.128
                                        #   in Loop: Header=BB360_42 Depth=1
	jmp	.LBB360_42
.LBB360_51:                             # %while.end.129
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	movl	$6, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-392(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_53
# BB#52:                                # %lor.lhs.false.132
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.31, %rcx
	movl	$6, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-400(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_53
	jmp	.LBB360_54
.LBB360_53:                             # %if.then.135
	movb	$1, inhibit_window_system
.LBB360_54:                             # %if.end.136
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rcx
	movl	$5, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movb	$0, noninteractive
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_55
	jmp	.LBB360_56
.LBB360_55:                             # %if.then.138
	xorl	%edi, %edi
	movb	$1, noninteractive
	callq	builtin_lisp_symbol
	movq	%rax, globals+2496
.LBB360_56:                             # %if.end.140
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movl	$3, %r8d
	leaq	-64(%rbp), %r9
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_57
	jmp	.LBB360_58
.LBB360_57:                             # %if.then.142
	movabsq	$.L.str.36, %rax
	movb	$1, noninteractive
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movl	-32(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -32(%rbp)
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	sort_args
.LBB360_58:                             # %if.end.147
	movabsq	$.L.str.37, %rdx
	movabsq	$.L.str.38, %rcx
	movl	$3, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-416(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_59
	jmp	.LBB360_64
.LBB360_59:                             # %if.then.149
	movabsq	$.L.str.39, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	$0, -180(%rbp)
	movl	%eax, -420(%rbp)        # 4-byte Spill
.LBB360_60:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-180(%rbp), %rax
	cmpq	$12, %rax
	jae	.LBB360_63
# BB#61:                                # %for.body
                                        #   in Loop: Header=BB360_60 Depth=1
	movslq	-180(%rbp), %rax
	movq	usage_message(,%rax,8), %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -424(%rbp)        # 4-byte Spill
# BB#62:                                # %for.inc
                                        #   in Loop: Header=BB360_60 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB360_60
.LBB360_63:                             # %for.end
	xorl	%edi, %edi
	callq	exit
.LBB360_64:                             # %if.end.159
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movl	$5, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movl	$0, daemon_pipe+4
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-432(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_66
# BB#65:                                # %lor.lhs.false.162
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.41, %rcx
	movl	$5, %r8d
	leaq	-72(%rbp), %r9
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_66
	jmp	.LBB360_85
.LBB360_66:                             # %if.then.165
	movabsq	$daemon_pipe, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	je	.LBB360_68
# BB#67:                                # %if.then.169
	movabsq	$.L.str.42, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_68:                             # %if.end.171
	movabsq	$.L.str.43, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -440(%rbp)        # 4-byte Spill
	callq	fork
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jle	.LBB360_80
# BB#69:                                # %if.then.176
	movl	daemon_pipe+4, %edi
	callq	emacs_close
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB360_70:                             # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-189(%rbp), %rcx
	movl	daemon_pipe, %edi
	movq	%rcx, %rsi
	callq	read
	movl	%eax, %edi
	movl	%edi, -188(%rbp)
# BB#71:                                # %do.cond
                                        #   in Loop: Header=BB360_70 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -188(%rbp)
	movb	%cl, -445(%rbp)         # 1-byte Spill
	jne	.LBB360_73
# BB#72:                                # %land.rhs.183
                                        #   in Loop: Header=BB360_70 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -445(%rbp)         # 1-byte Spill
.LBB360_73:                             # %land.end.187
                                        #   in Loop: Header=BB360_70 Depth=1
	movb	-445(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB360_70
# BB#74:                                # %do.end
	cmpl	$0, -188(%rbp)
	jge	.LBB360_76
# BB#75:                                # %if.then.190
	movabsq	$.L.str.44, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_76:                             # %if.else.192
	cmpl	$0, -188(%rbp)
	jne	.LBB360_78
# BB#77:                                # %if.then.195
	movabsq	$.L.str.45, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -456(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_78:                             # %if.end.197
	jmp	.LBB360_79
.LBB360_79:                             # %if.end.198
	movl	daemon_pipe, %edi
	callq	emacs_close
	xorl	%edi, %edi
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	exit
.LBB360_80:                             # %if.end.200
	cmpl	$0, -184(%rbp)
	jge	.LBB360_82
# BB#81:                                # %if.then.203
	movabsq	$.L.str.46, %rdi
	callq	emacs_perror
	movl	$125, %edi
	callq	exit
.LBB360_82:                             # %if.end.204
	movl	daemon_pipe, %edi
	callq	emacs_close
	movl	%eax, -464(%rbp)        # 4-byte Spill
	callq	setsid
	cmpq	$0, -72(%rbp)
	movl	%eax, -468(%rbp)        # 4-byte Spill
	je	.LBB360_84
# BB#83:                                # %if.then.208
	movq	-72(%rbp), %rdi
	callq	xstrdup
	movq	%rax, daemon_name
.LBB360_84:                             # %if.end.210
	jmp	.LBB360_85
.LBB360_85:                             # %if.end.211
	movb	-27(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	init_signals
	movb	noninteractive, %al
	andb	$1, %al
	movb	%al, globals+3417
	testb	$1, initialized
	jne	.LBB360_87
# BB#86:                                # %if.then.216
	callq	init_alloc_once
	callq	init_obarray
	callq	init_eval_once
	callq	init_charset_once
	callq	init_coding_once
	callq	init_syntax_once
	callq	init_category_once
	callq	init_casetab_once
	callq	init_buffer_once
	callq	init_minibuf_once
	callq	syms_of_xfaces
	callq	syms_of_keymap
	callq	syms_of_keyboard
	callq	syms_of_data
	callq	syms_of_fns
	callq	syms_of_fileio
	callq	syms_of_alloc
	callq	init_print_once
	callq	syms_of_charset
	callq	syms_of_coding
	callq	init_window_once
	callq	init_fringe_once
.LBB360_87:                             # %if.end.217
	callq	init_alloc
	testb	$1, -26(%rbp)
	je	.LBB360_89
# BB#88:                                # %if.then.219
	callq	fixup_locale
	movq	globals+1808, %rax
	movq	%rax, globals+2272
	movq	globals+1816, %rax
	movq	%rax, globals+2288
.LBB360_89:                             # %if.end.220
	callq	init_eval
	callq	init_atimer
	movb	$0, running_asynch_code
	callq	init_random
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.48, %rcx
	movl	$6, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-480(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	movabsq	$.L.str.49, %rdx
	movabsq	$.L.str.50, %rcx
	movl	$11, %r8d
	xorl	%esi, %esi
	movl	%esi, %r9d
	leaq	-32(%rbp), %rdi
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	-16(%rbp), %r10
	movl	-8(%rbp), %esi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-488(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	andb	$1, %al
	movb	%al, no_site_lisp
	movq	$0, -200(%rbp)
	movl	-32(%rbp), %esi
	movl	%esi, -204(%rbp)
.LBB360_90:                             # %while.body.226
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.52, %rcx
	movl	$3, %r8d
	leaq	-200(%rbp), %r9
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %esi
	movl	%esi, -208(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_91
	jmp	.LBB360_92
.LBB360_91:                             # %if.then.228
                                        #   in Loop: Header=BB360_90 Depth=1
	movb	$1, display_arg
	jmp	.LBB360_96
.LBB360_92:                             # %if.else.229
                                        #   in Loop: Header=BB360_90 Depth=1
	movabsq	$.L.str.53, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$3, %r8d
	leaq	-200(%rbp), %r9
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-496(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_93
	jmp	.LBB360_94
.LBB360_93:                             # %if.then.231
                                        #   in Loop: Header=BB360_90 Depth=1
	movb	$1, display_arg
	jmp	.LBB360_95
.LBB360_94:                             # %if.else.232
	jmp	.LBB360_97
.LBB360_95:                             # %if.end.233
                                        #   in Loop: Header=BB360_90 Depth=1
	jmp	.LBB360_96
.LBB360_96:                             # %if.end.234
                                        #   in Loop: Header=BB360_90 Depth=1
	movl	-208(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB360_90
.LBB360_97:                             # %while.end.235
	cmpq	$0, -200(%rbp)
	je	.LBB360_102
# BB#98:                                # %land.lhs.true.237
	movl	-204(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB360_102
# BB#99:                                # %if.then.240
	movl	-32(%rbp), %eax
	movl	-204(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB360_101
# BB#100:                               # %if.then.244
	movq	-16(%rbp), %rax
	movslq	-204(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	addq	$24, %rax
	movq	-16(%rbp), %rcx
	movslq	-204(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$16, %rcx
	movl	-8(%rbp), %esi
	movl	-204(%rbp), %edi
	addl	$2, %edi
	subl	%edi, %esi
	movslq	%esi, %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	-200(%rbp), %rax
	movl	-204(%rbp), %r8d
	addl	$2, %r8d
	movslq	%r8d, %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-8(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -8(%rbp)
.LBB360_101:                            # %if.end.257
	movabsq	$.L.str.51, %rax
	movl	-204(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
.LBB360_102:                            # %if.end.261
	testb	$1, no_site_lisp
	jne	.LBB360_107
# BB#103:                               # %if.then.263
	movabsq	$.L.str.54, %rdx
	movabsq	$.L.str.55, %rcx
	movl	$3, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_105
# BB#104:                               # %lor.lhs.false.266
	movabsq	$.L.str.56, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$2, %r8d
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movq	-520(%rbp), %r9         # 8-byte Reload
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_105
	jmp	.LBB360_106
.LBB360_105:                            # %if.then.269
	movb	$1, no_site_lisp
.LBB360_106:                            # %if.end.270
	jmp	.LBB360_107
.LBB360_107:                            # %if.end.271
	movl	-204(%rbp), %eax
	movl	%eax, -32(%rbp)
	testb	$1, initialized
	jne	.LBB360_109
# BB#108:                               # %if.then.273
	callq	syms_of_callproc
.LBB360_109:                            # %if.end.274
	testb	$1, -27(%rbp)
	jne	.LBB360_111
# BB#110:                               # %if.then.276
	callq	set_initial_environment
.LBB360_111:                            # %if.end.277
	movb	initialized, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	init_buffer
	callq	init_callproc_1
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-32(%rbp), %edx
	movq	-88(%rbp), %rcx
	callq	init_cmdargs
	testb	$1, initialized
	je	.LBB360_113
# BB#112:                               # %if.then.281
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	globals+1440, %rcx
	movq	%rcx, -216(%rbp)
	callq	make_natnum
	movabsq	$.L.str.23, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, globals+1440
	callq	message_dolog
	movq	-216(%rbp), %rax
	movq	%rax, globals+1440
.LBB360_113:                            # %if.end.283
	callq	init_callproc
	callq	init_fileio
	callq	init_lread
	testb	$1, initialized
	jne	.LBB360_115
# BB#114:                               # %if.then.285
	callq	syms_of_chartab
	callq	syms_of_lread
	callq	syms_of_print
	callq	syms_of_eval
	callq	syms_of_floatfns
	callq	syms_of_buffer
	callq	syms_of_bytecode
	callq	syms_of_callint
	callq	syms_of_casefiddle
	callq	syms_of_casetab
	callq	syms_of_category
	callq	syms_of_ccl
	callq	syms_of_character
	callq	syms_of_cmds
	callq	syms_of_dired
	callq	syms_of_display
	callq	syms_of_doc
	callq	syms_of_editfns
	callq	syms_of_emacs
	callq	syms_of_filelock
	callq	syms_of_indent
	callq	syms_of_insdel
	callq	syms_of_macros
	callq	syms_of_marker
	callq	syms_of_minibuf
	callq	syms_of_process
	callq	syms_of_search
	callq	syms_of_frame
	callq	syms_of_syntax
	callq	syms_of_terminal
	callq	syms_of_term
	callq	syms_of_undo
	callq	syms_of_sound
	callq	syms_of_textprop
	callq	syms_of_composite
	callq	syms_of_window
	callq	syms_of_xdisp
	callq	syms_of_font
	callq	syms_of_fringe
	callq	syms_of_image
	callq	syms_of_xterm
	callq	syms_of_xfns
	callq	syms_of_xmenu
	callq	syms_of_fontset
	callq	syms_of_xwidget
	callq	syms_of_xsettings
	callq	syms_of_xsmfns
	callq	syms_of_xselect
	callq	syms_of_decompress
	callq	syms_of_menu
	callq	syms_of_gnutls
	callq	syms_of_inotify
	callq	syms_of_profiler
	callq	keys_of_casefiddle
	callq	keys_of_cmds
	callq	keys_of_buffer
	callq	keys_of_keyboard
	callq	keys_of_keymap
	callq	keys_of_window
	jmp	.LBB360_116
.LBB360_115:                            # %if.else.286
	jmp	.LBB360_116
.LBB360_116:                            # %if.end.287
	callq	init_charset
	movb	-27(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	init_editfns
	callq	init_xterm
	callq	init_process_emacs
	callq	init_keyboard
	testb	$1, noninteractive
	jne	.LBB360_118
# BB#117:                               # %if.then.290
	callq	init_display
.LBB360_118:                            # %if.end.291
	callq	init_xdisp
	callq	init_fringe
	callq	init_macros
	callq	init_window
	callq	init_font
	testb	$1, initialized
	jne	.LBB360_124
# BB#119:                               # %if.then.293
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.58, %rcx
	movl	$3, %r8d
	leaq	-224(%rbp), %r9
	leaq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	movq	%rax, (%rsp)
	callq	argmatch
	testb	$1, %al
	jne	.LBB360_120
	jmp	.LBB360_121
.LBB360_120:                            # %if.then.295
	movl	$628, %edi              # imm = 0x274
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	build_unibyte_string
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, globals+2432
.LBB360_121:                            # %if.end.299
	testb	$1, -49(%rbp)
	jne	.LBB360_123
# BB#122:                               # %if.then.301
	movl	$628, %edi              # imm = 0x274
	callq	builtin_lisp_symbol
	movabsq	$.L.str.59, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, globals+2432
.LBB360_123:                            # %if.end.305
	jmp	.LBB360_124
.LBB360_124:                            # %if.end.306
	movb	$1, initialized
	callq	Frecursive_edit
	xorl	%ecx, %ecx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end360:
	.size	main, .Lfunc_end360-main
	.cfi_endproc

	.align	16, 0x90
	.type	close_output_streams,@function
close_output_streams:                   # @close_output_streams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1083:
	.cfi_def_cfa_offset 16
.Ltmp1084:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1085:
	.cfi_def_cfa_register %rbp
	movq	stdout, %rdi
	callq	close_stream
	cmpl	$0, %eax
	je	.LBB361_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.78, %rdi
	callq	emacs_perror
	movl	$1, %edi
	callq	_exit
.LBB361_2:                              # %if.end
	movq	stderr, %rdi
	callq	close_stream
	cmpl	$0, %eax
	je	.LBB361_4
# BB#3:                                 # %if.then.3
	movl	$1, %edi
	callq	_exit
.LBB361_4:                              # %if.end.4
	popq	%rbp
	retq
.Lfunc_end361:
	.size	close_output_streams, .Lfunc_end361-close_output_streams
	.cfi_endproc

	.align	16, 0x90
	.type	sort_args,@function
sort_args:                              # @sort_args
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1086:
	.cfi_def_cfa_offset 16
.Ltmp1087:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1088:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	-4(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	xmalloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movslq	-4(%rbp), %rdi
	callq	xnmalloc
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movslq	-4(%rbp), %rdi
	callq	xnmalloc
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB362_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB362_11 Depth 2
                                        #     Child Loop BB362_23 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB362_43
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	jne	.LBB362_41
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %edx
	cmpl	$45, %edx
	jne	.LBB362_10
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	2(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB362_10
# BB#5:                                 # %if.then.26
	jmp	.LBB362_6
.LBB362_6:                              # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB362_9
# BB#7:                                 # %for.body.30
                                        #   in Loop: Header=BB362_6 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$-100, (%rcx,%rax,4)
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB362_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB362_6
.LBB362_9:                              # %for.end
	jmp	.LBB362_43
.LBB362_10:                             # %if.end
                                        #   in Loop: Header=BB362_1 Depth=1
	movl	$0, -56(%rbp)
.LBB362_11:                             # %for.cond.35
                                        #   Parent Loop BB362_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-56(%rbp), %rax
	cmpq	$71, %rax
	jae	.LBB362_18
# BB#12:                                # %for.body.39
                                        #   in Loop: Header=BB362_11 Depth=2
	movabsq	$standard_args, %rax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB362_16
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB362_1 Depth=1
	movabsq	$standard_args, %rax
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	20(%rdx), %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%esi, (%rdx,%rcx,4)
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	16(%rdx), %esi
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	%esi, (%rdx,%rcx,4)
	movl	-52(%rbp), %esi
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	addl	20(%rax), %esi
	cmpl	-4(%rbp), %esi
	jl	.LBB362_15
# BB#14:                                # %if.then.60
	movabsq	$.L.str.97, %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movb	$0, %al
	callq	fatal
.LBB362_15:                             # %if.end.63
                                        #   in Loop: Header=BB362_1 Depth=1
	movabsq	$standard_args, %rax
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	20(%rax), %edx
	addl	-52(%rbp), %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB362_40
.LBB362_16:                             # %if.end.68
                                        #   in Loop: Header=BB362_11 Depth=2
	jmp	.LBB362_17
.LBB362_17:                             # %for.inc.69
                                        #   in Loop: Header=BB362_11 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB362_11
.LBB362_18:                             # %for.end.71
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %edx
	cmpl	$45, %edx
	jne	.LBB362_39
# BB#19:                                # %if.then.78
                                        #   in Loop: Header=BB362_1 Depth=1
	movl	$61, %esi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strchr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB362_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB362_1 Depth=1
	movq	-72(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB362_22
.LBB362_21:                             # %cond.false
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB362_22:                             # %cond.end
                                        #   in Loop: Header=BB362_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -56(%rbp)
.LBB362_23:                             # %for.cond.88
                                        #   Parent Loop BB362_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-56(%rbp), %rax
	cmpq	$71, %rax
	jae	.LBB362_32
# BB#24:                                # %for.body.92
                                        #   in Loop: Header=BB362_23 Depth=2
	movabsq	$standard_args, %rax
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB362_30
# BB#25:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB362_23 Depth=2
	movabsq	$standard_args, %rax
	movslq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-56(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB362_30
# BB#26:                                # %if.then.104
                                        #   in Loop: Header=BB362_23 Depth=2
	cmpl	$-1, -60(%rbp)
	jne	.LBB362_28
# BB#27:                                # %if.then.107
                                        #   in Loop: Header=BB362_23 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB362_29
.LBB362_28:                             # %if.else
                                        #   in Loop: Header=BB362_23 Depth=2
	movl	$-2, -60(%rbp)
.LBB362_29:                             # %if.end.108
                                        #   in Loop: Header=BB362_23 Depth=2
	jmp	.LBB362_30
.LBB362_30:                             # %if.end.109
                                        #   in Loop: Header=BB362_23 Depth=2
	jmp	.LBB362_31
.LBB362_31:                             # %for.inc.110
                                        #   in Loop: Header=BB362_23 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB362_23
.LBB362_32:                             # %for.end.112
                                        #   in Loop: Header=BB362_1 Depth=1
	cmpl	$0, -60(%rbp)
	jl	.LBB362_38
# BB#33:                                # %if.then.115
                                        #   in Loop: Header=BB362_1 Depth=1
	movabsq	$standard_args, %rax
	movslq	-60(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	20(%rdx), %esi
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%esi, (%rdx,%rcx,4)
	movslq	-60(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %esi
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	%esi, (%rcx,%rax,4)
	cmpq	$0, -72(%rbp)
	je	.LBB362_35
# BB#34:                                # %if.then.128
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
.LBB362_35:                             # %if.end.131
                                        #   in Loop: Header=BB362_1 Depth=1
	movl	-52(%rbp), %eax
	movslq	-52(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB362_37
# BB#36:                                # %if.then.137
	movabsq	$.L.str.97, %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movb	$0, %al
	callq	fatal
.LBB362_37:                             # %if.end.140
                                        #   in Loop: Header=BB362_1 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-52(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB362_38:                             # %if.end.144
                                        #   in Loop: Header=BB362_1 Depth=1
	jmp	.LBB362_39
.LBB362_39:                             # %if.end.145
                                        #   in Loop: Header=BB362_1 Depth=1
	jmp	.LBB362_40
.LBB362_40:                             # %done
                                        #   in Loop: Header=BB362_1 Depth=1
	jmp	.LBB362_41
.LBB362_41:                             # %if.end.146
                                        #   in Loop: Header=BB362_1 Depth=1
	jmp	.LBB362_42
.LBB362_42:                             # %for.inc.147
                                        #   in Loop: Header=BB362_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB362_1
.LBB362_43:                             # %for.end.149
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB362_44:                             # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB362_46 Depth 2
                                        #     Child Loop BB362_59 Depth 2
                                        #     Child Loop BB362_67 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB362_71
# BB#45:                                # %while.body
                                        #   in Loop: Header=BB362_44 Depth=1
	movl	$-1, -84(%rbp)
	movl	$-9999, -88(%rbp)       # imm = 0xFFFFFFFFFFFFD8F1
	movl	$1, -52(%rbp)
.LBB362_46:                             # %for.cond.154
                                        #   Parent Loop BB362_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB362_54
# BB#47:                                # %for.body.157
                                        #   in Loop: Header=BB362_46 Depth=2
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB362_50
# BB#48:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB362_46 Depth=2
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-88(%rbp), %edx
	jle	.LBB362_50
# BB#49:                                # %if.then.167
                                        #   in Loop: Header=BB362_46 Depth=2
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -88(%rbp)
	movl	-52(%rbp), %edx
	movl	%edx, -84(%rbp)
.LBB362_50:                             # %if.end.170
                                        #   in Loop: Header=BB362_46 Depth=2
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jle	.LBB362_52
# BB#51:                                # %if.then.175
                                        #   in Loop: Header=BB362_46 Depth=2
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-52(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB362_52:                             # %if.end.179
                                        #   in Loop: Header=BB362_46 Depth=2
	jmp	.LBB362_53
.LBB362_53:                             # %for.inc.180
                                        #   in Loop: Header=BB362_46 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB362_46
.LBB362_54:                             # %for.end.182
                                        #   in Loop: Header=BB362_44 Depth=1
	cmpl	$0, -84(%rbp)
	jge	.LBB362_56
# BB#55:                                # %if.then.185
	callq	emacs_abort
.LBB362_56:                             # %if.end.186
                                        #   in Loop: Header=BB362_44 Depth=1
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jne	.LBB362_58
# BB#57:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB362_44 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB362_63
.LBB362_58:                             # %if.then.198
                                        #   in Loop: Header=BB362_44 Depth=1
	movslq	-84(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movl	$0, -56(%rbp)
.LBB362_59:                             # %for.cond.204
                                        #   Parent Loop BB362_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movslq	-84(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jge	.LBB362_62
# BB#60:                                # %for.body.209
                                        #   in Loop: Header=BB362_59 Depth=2
	movl	-84(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rdi
	movq	%rcx, (%rdi,%rdx,8)
# BB#61:                                # %for.inc.217
                                        #   in Loop: Header=BB362_59 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB362_59
.LBB362_62:                             # %for.end.219
                                        #   in Loop: Header=BB362_44 Depth=1
	jmp	.LBB362_63
.LBB362_63:                             # %if.end.220
                                        #   in Loop: Header=BB362_44 Depth=1
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jle	.LBB362_65
# BB#64:                                # %cond.true.225
                                        #   in Loop: Header=BB362_44 Depth=1
	movslq	-84(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB362_66
.LBB362_65:                             # %cond.false.228
                                        #   in Loop: Header=BB362_44 Depth=1
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB362_66
.LBB362_66:                             # %cond.end.229
                                        #   in Loop: Header=BB362_44 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	$0, (%rdx,%rcx,8)
	movl	$0, -56(%rbp)
.LBB362_67:                             # %for.cond.235
                                        #   Parent Loop BB362_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movslq	-84(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jge	.LBB362_70
# BB#68:                                # %for.body.240
                                        #   in Loop: Header=BB362_67 Depth=2
	movl	-84(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	$0, (%rdx,%rcx,8)
# BB#69:                                # %for.inc.245
                                        #   in Loop: Header=BB362_67 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB362_67
.LBB362_70:                             # %for.end.247
                                        #   in Loop: Header=BB362_44 Depth=1
	jmp	.LBB362_44
.LBB362_71:                             # %while.end
	jmp	.LBB362_72
.LBB362_72:                             # %while.cond.248
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB362_74
# BB#73:                                # %while.body.251
                                        #   in Loop: Header=BB362_72 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movq	$0, (%rsi,%rdx,8)
	jmp	.LBB362_72
.LBB362_74:                             # %while.end.255
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end362:
	.size	sort_args, .Lfunc_end362-sort_args
	.cfi_endproc

	.align	16, 0x90
	.type	argmatch,@function
argmatch:                               # @argmatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1089:
	.cfi_def_cfa_offset 16
.Ltmp1090:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1091:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	-20(%rbp), %esi
	movq	-64(%rbp), %rax
	movl	(%rax), %r8d
	addl	$1, %r8d
	cmpl	%r8d, %esi
	jg	.LBB363_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB363_24
.LBB363_2:                              # %if.end
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB363_4
# BB#3:                                 # %if.then.3
	movb	$0, -1(%rbp)
	jmp	.LBB363_24
.LBB363_4:                              # %if.end.4
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB363_9
# BB#5:                                 # %if.then.6
	cmpq	$0, -56(%rbp)
	je	.LBB363_7
# BB#6:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB363_8
.LBB363_7:                              # %if.else
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB363_8:                              # %if.end.14
	movb	$1, -1(%rbp)
	jmp	.LBB363_24
.LBB363_9:                              # %if.end.15
	cmpq	$0, -56(%rbp)
	je	.LBB363_12
# BB#10:                                # %land.lhs.true
	movl	$61, %esi
	movq	-88(%rbp), %rdi
	callq	strchr
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	je	.LBB363_12
# BB#11:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB363_13
.LBB363_12:                             # %cond.false
	movq	-88(%rbp), %rdi
	callq	strlen
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB363_13:                             # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB363_16
# BB#14:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cmpq	%rcx, %rax
	jl	.LBB363_16
# BB#15:                                # %lor.lhs.false.23
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB363_17
.LBB363_16:                             # %if.then.27
	movb	$0, -1(%rbp)
	jmp	.LBB363_24
.LBB363_17:                             # %if.else.28
	cmpq	$0, -56(%rbp)
	jne	.LBB363_19
# BB#18:                                # %if.then.31
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB363_24
.LBB363_19:                             # %if.else.33
	cmpq	$0, -72(%rbp)
	je	.LBB363_21
# BB#20:                                # %if.then.36
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB363_24
.LBB363_21:                             # %if.else.38
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB363_23
# BB#22:                                # %if.then.44
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	addl	$2, %ecx
	movl	%ecx, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB363_24
.LBB363_23:                             # %if.else.49
	movb	$0, -1(%rbp)
.LBB363_24:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end363:
	.size	argmatch, .Lfunc_end363-argmatch
	.cfi_endproc

	.align	16, 0x90
	.type	using_utf8,@function
using_utf8:                             # @using_utf8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1092:
	.cfi_def_cfa_offset 16
.Ltmp1093:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1094:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-4(%rbp), %rdi
	movabsq	$.L.str.79, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	xorl	%eax, %eax
	movl	$8, %r8d
	movl	%r8d, %r9d
	movq	%rcx, %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	memset
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	mbrtowc
	xorl	%r8d, %r8d
	movb	%r8b, %r11b
	cmpq	$2, %rax
	movb	%r11b, -49(%rbp)        # 1-byte Spill
	jne	.LBB364_2
# BB#1:                                 # %land.rhs
	cmpl	$256, -4(%rbp)          # imm = 0x100
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB364_2:                              # %land.end
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end364:
	.size	using_utf8, .Lfunc_end364-using_utf8
	.cfi_endproc

	.globl	fixup_locale
	.align	16, 0x90
	.type	fixup_locale,@function
fixup_locale:                           # @fixup_locale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1095:
	.cfi_def_cfa_offset 16
.Ltmp1096:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1097:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edi
	movabsq	$.L.str.22, %rsi
	callq	setlocale
	movq	%rax, -8(%rbp)          # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end365:
	.size	fixup_locale, .Lfunc_end365-fixup_locale
	.cfi_endproc

	.align	16, 0x90
	.type	init_cmdargs,@function
init_cmdargs:                           # @init_cmdargs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1098:
	.cfi_def_cfa_offset 16
.Ltmp1099:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1100:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	callq	SPECPDL_INDEX
	movl	$4, %esi
	leaq	-120(%rbp), %rcx
	movabsq	$.L.str.71, %r8
	movq	%rax, -72(%rbp)
	movq	$2, -120(%rbp)
	movq	$-1, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	%r8, -96(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, initial_argv
	movl	-4(%rbp), %edx
	movl	%edx, initial_argc
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_unibyte_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	concat2
	movq	%rax, -80(%rbp)
.LBB366_2:                              # %if.end
	movq	-80(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	%rax, globals+1192
	movq	-80(%rbp), %rdi
	callq	Ffile_name_directory
	xorl	%edi, %edi
	movq	%rax, globals+1184
	movq	globals+1184, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB366_8
# BB#3:                                 # %if.then.12
	leaq	-128(%rbp), %rcx
	movl	$6, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	globals+672, %rdi
	movq	globals+1192, %rsi
	movq	globals+680, %rdx
	callq	openp
	movl	%eax, -132(%rbp)
	cmpl	$1, -132(%rbp)
	jne	.LBB366_7
# BB#4:                                 # %if.then.15
	movl	$901, %edi              # imm = 0x385
	movq	-128(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB366_6
# BB#5:                                 # %if.then.20
	movq	-88(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	concat2
	movq	%rax, -128(%rbp)
.LBB366_6:                              # %if.end.22
	movq	-128(%rbp), %rdi
	callq	Ffile_name_directory
	movq	%rax, globals+1184
.LBB366_7:                              # %if.end.24
	jmp	.LBB366_8
.LBB366_8:                              # %if.end.25
	xorl	%edi, %edi
	movq	globals+1184, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_14
# BB#9:                                 # %land.lhs.true
	movq	globals+1184, %rdi
	callq	Ffile_name_absolute_p
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB366_14
# BB#10:                                # %if.then.31
	cmpq	$0, -32(%rbp)
	je	.LBB366_12
# BB#11:                                # %cond.true
	movq	-32(%rbp), %rdi
	callq	build_unibyte_string
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB366_13
.LBB366_12:                             # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB366_13:                             # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	movq	globals+1184, %rdi
	movq	-144(%rbp), %rsi
	callq	Fexpand_file_name
	movq	%rax, globals+1184
.LBB366_14:                             # %if.end.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+1160
	movq	globals+1184, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_31
# BB#15:                                # %if.then.39
	movq	globals+1184, %rax
	movq	%rax, -56(%rbp)
	movq	globals+1192, %rdi
	movq	-56(%rbp), %rsi
	callq	Fexpand_file_name
	movq	%rax, -48(%rbp)
.LBB366_16:                             # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.92, %rdi
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB366_18
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB366_16 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_21
.LBB366_18:                             # %if.then.49
                                        #   in Loop: Header=BB366_16 Depth=1
	movabsq	$.L.str.93, %rdi
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB366_20
# BB#19:                                # %if.then.55
	movq	-56(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, globals+1160
	jmp	.LBB366_30
.LBB366_20:                             # %if.end.57
                                        #   in Loop: Header=BB366_16 Depth=1
	jmp	.LBB366_21
.LBB366_21:                             # %if.end.58
                                        #   in Loop: Header=BB366_16 Depth=1
	movabsq	$.L.str.94, %rdi
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB366_23
# BB#22:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB366_16 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_26
.LBB366_23:                             # %if.then.68
                                        #   in Loop: Header=BB366_16 Depth=1
	movabsq	$.L.str.95, %rdi
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB366_25
# BB#24:                                # %if.then.74
	movabsq	$.L.str.96, %rdi
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, globals+1160
	jmp	.LBB366_30
.LBB366_25:                             # %if.end.78
                                        #   in Loop: Header=BB366_16 Depth=1
	jmp	.LBB366_26
.LBB366_26:                             # %if.end.79
                                        #   in Loop: Header=BB366_16 Depth=1
	movq	-48(%rbp), %rdi
	callq	Ffile_symlink_p
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB366_28
# BB#27:                                # %if.then.83
                                        #   in Loop: Header=BB366_16 Depth=1
	movq	-152(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fexpand_file_name
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Ffile_name_directory
	movq	%rax, -56(%rbp)
	jmp	.LBB366_29
.LBB366_28:                             # %if.else
	jmp	.LBB366_30
.LBB366_29:                             # %if.end.86
                                        #   in Loop: Header=BB366_16 Depth=1
	jmp	.LBB366_16
.LBB366_30:                             # %while.end
	jmp	.LBB366_31
.LBB366_31:                             # %if.end.87
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+336
	movl	-4(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -36(%rbp)
.LBB366_32:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB366_38
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB366_32 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB366_35
# BB#34:                                # %lor.lhs.false.91
                                        #   in Loop: Header=BB366_32 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB366_36
.LBB366_35:                             # %if.then.93
                                        #   in Loop: Header=BB366_32 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	build_unibyte_string
	movq	globals+336, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+336
.LBB366_36:                             # %if.end.97
                                        #   in Loop: Header=BB366_32 Depth=1
	jmp	.LBB366_37
.LBB366_37:                             # %for.inc
                                        #   in Loop: Header=BB366_32 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB366_32
.LBB366_38:                             # %for.end
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -320(%rbp)        # 8-byte Spill
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end366:
	.size	init_cmdargs, .Lfunc_end366-init_cmdargs
	.cfi_endproc

	.align	16, 0x90
	.type	syms_of_emacs,@function
syms_of_emacs:                          # @syms_of_emacs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1101:
	.cfi_def_cfa_offset 16
.Ltmp1102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1103:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$Sdump_emacs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skill_emacs, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinvocation_name, %rdi
	callq	defsubr
	movabsq	$Sinvocation_directory, %rdi
	callq	defsubr
	movabsq	$Sdaemonp, %rdi
	callq	defsubr
	movabsq	$Sdaemon_initialized, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_emacs.o_fwd, %rdi
	movabsq	$.L.str.193, %rsi
	movabsq	$globals, %rax
	addq	$336, %rax              # imm = 0x150
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	jmp	.LBB367_3
.LBB367_3:                              # %do.body.1
	movabsq	$syms_of_emacs.o_fwd.194, %rdi
	movabsq	$.L.str.195, %rsi
	movabsq	$globals, %rax
	addq	$2296, %rax             # imm = 0x8F8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	movabsq	$.L.str.196, %rdi
	callq	intern_c_string
	movq	%rax, globals+2296
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_emacs.o_fwd.197, %rdi
	movabsq	$.L.str.198, %rsi
	movabsq	$globals, %rax
	addq	$2248, %rax             # imm = 0x8C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	movabsq	$.L.str.199, %rdi
	callq	build_string
	movq	%rax, globals+2248
# BB#7:                                 # %do.body.6
	movabsq	$syms_of_emacs.o_fwd.200, %rdi
	movabsq	$.L.str.201, %rsi
	movabsq	$globals, %rax
	addq	$2264, %rax             # imm = 0x8D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.7
	movabsq	$.L.str.202, %rdi
	callq	build_string
	movq	%rax, globals+2264
# BB#9:                                 # %do.body.9
	movabsq	$syms_of_emacs.o_fwd.203, %rdi
	movabsq	$.L.str.204, %rsi
	movabsq	$globals, %rax
	addq	$2256, %rax             # imm = 0x8D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.10
	movabsq	$.L.str.205, %rdi
	callq	build_string
	movq	%rax, globals+2256
# BB#11:                                # %do.body.12
	movabsq	$syms_of_emacs.b_fwd, %rdi
	movabsq	$.L.str.206, %rsi
	movabsq	$globals, %rax
	addq	$3417, %rax             # imm = 0xD59
	movq	%rax, %rdx
	callq	defvar_bool
# BB#12:                                # %do.end.13
	jmp	.LBB367_13
.LBB367_13:                             # %do.body.14
	movabsq	$syms_of_emacs.o_fwd.207, %rdi
	movabsq	$.L.str.208, %rsi
	movabsq	$globals, %rax
	addq	$1224, %rax             # imm = 0x4C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1224
# BB#15:                                # %do.body.17
	movabsq	$syms_of_emacs.o_fwd.209, %rdi
	movabsq	$.L.str.210, %rsi
	movabsq	$globals, %rax
	addq	$1744, %rax             # imm = 0x6D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.18
	leaq	-1(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movb	$58, -1(%rbp)
	callq	make_string
	movq	%rax, globals+1744
# BB#17:                                # %do.body.20
	movabsq	$syms_of_emacs.o_fwd.211, %rdi
	movabsq	$.L.str.212, %rsi
	movabsq	$globals, %rax
	addq	$1192, %rax             # imm = 0x4A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.21
	jmp	.LBB367_19
.LBB367_19:                             # %do.body.22
	movabsq	$syms_of_emacs.o_fwd.213, %rdi
	movabsq	$.L.str.214, %rsi
	movabsq	$globals, %rax
	addq	$1184, %rax             # imm = 0x4A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.23
	jmp	.LBB367_21
.LBB367_21:                             # %do.body.24
	movabsq	$syms_of_emacs.o_fwd.215, %rdi
	movabsq	$.L.str.216, %rsi
	movabsq	$globals, %rax
	addq	$1160, %rax             # imm = 0x488
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.25
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1160
# BB#23:                                # %do.body.27
	movabsq	$syms_of_emacs.o_fwd.217, %rdi
	movabsq	$.L.str.218, %rsi
	movabsq	$globals, %rax
	addq	$2272, %rax             # imm = 0x8E0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.28
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2272
# BB#25:                                # %do.body.30
	movabsq	$syms_of_emacs.o_fwd.219, %rdi
	movabsq	$.L.str.220, %rsi
	movabsq	$globals, %rax
	addq	$1808, %rax             # imm = 0x710
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.31
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1808
# BB#27:                                # %do.body.33
	movabsq	$syms_of_emacs.o_fwd.221, %rdi
	movabsq	$.L.str.222, %rsi
	movabsq	$globals, %rax
	addq	$2288, %rax             # imm = 0x8F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#28:                                # %do.end.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2288
# BB#29:                                # %do.body.36
	movabsq	$syms_of_emacs.o_fwd.223, %rdi
	movabsq	$.L.str.224, %rsi
	movabsq	$globals, %rax
	addq	$1816, %rax             # imm = 0x718
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#30:                                # %do.end.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1816
# BB#31:                                # %do.body.39
	movabsq	$syms_of_emacs.o_fwd.225, %rdi
	movabsq	$.L.str.226, %rsi
	movabsq	$globals, %rax
	addq	$112, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#32:                                # %do.end.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+112
# BB#33:                                # %do.body.42
	movabsq	$syms_of_emacs.o_fwd.227, %rdi
	movabsq	$.L.str.228, %rsi
	movabsq	$globals, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#34:                                # %do.end.43
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+8
# BB#35:                                # %do.body.45
	movabsq	$syms_of_emacs.b_fwd.229, %rdi
	movabsq	$.L.str.230, %rsi
	movabsq	$globals, %rax
	addq	$3401, %rax             # imm = 0xD49
	movq	%rax, %rdx
	callq	defvar_bool
# BB#36:                                # %do.end.46
	movb	$0, globals+3401
# BB#37:                                # %do.body.47
	movabsq	$syms_of_emacs.o_fwd.231, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$globals, %rax
	addq	$616, %rax              # imm = 0x268
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#38:                                # %do.end.48
	movabsq	$emacs_copyright, %rdi
	callq	build_string
	movq	%rax, globals+616
# BB#39:                                # %do.body.50
	movabsq	$syms_of_emacs.o_fwd.232, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$624, %rax              # imm = 0x270
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#40:                                # %do.end.51
	movabsq	$emacs_version, %rdi
	callq	build_string
	movq	%rax, globals+624
# BB#41:                                # %do.body.53
	movabsq	$syms_of_emacs.o_fwd.233, %rdi
	movabsq	$.L.str.234, %rsi
	movabsq	$globals, %rax
	addq	$2032, %rax             # imm = 0x7F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#42:                                # %do.end.54
	movabsq	$emacs_bugreport, %rdi
	callq	build_string
	movq	%rax, globals+2032
# BB#43:                                # %do.body.56
	movabsq	$syms_of_emacs.o_fwd.235, %rdi
	movabsq	$.L.str.236, %rsi
	movabsq	$globals, %rax
	addq	$600, %rax              # imm = 0x258
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#44:                                # %do.end.57
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.236, %rdi
	movq	%rax, globals+600
	callq	intern_c_string
	movl	$818, %edi              # imm = 0x332
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end367:
	.size	syms_of_emacs, .Lfunc_end367-syms_of_emacs
	.cfi_endproc

	.globl	Fdump_emacs
	.align	16, 0x90
	.type	Fdump_emacs,@function
Fdump_emacs:                            # @Fdump_emacs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1104:
	.cfi_def_cfa_offset 16
.Ltmp1105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1106:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	callq	check_pure_size
	testb	$1, noninteractive
	jne	.LBB368_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.60, %rdi
	movb	$0, %al
	callq	error
.LBB368_2:                              # %if.end
	testb	$1, might_dump
	jne	.LBB368_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.61, %rdi
	movb	$0, %al
	callq	error
.LBB368_4:                              # %if.end.3
	cmpq	$1048576, heap_bss_diff # imm = 0x100000
	jbe	.LBB368_6
# BB#5:                                 # %if.then.4
	movabsq	$.L.str.62, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.63, %rsi
	movq	stderr, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.64, %rsi
	movq	stderr, %rdi
	movq	heap_bss_diff, %rdx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.65, %rsi
	movq	stderr, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.66, %rsi
	movq	stderr, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.67, %rsi
	movq	stderr, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.62, %rsi
	movq	stderr, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB368_6:                              # %if.end.12
	movabsq	$.L.str.68, %rdi
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB368_10
# BB#7:                                 # %if.then.20
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB368_9
# BB#8:                                 # %if.then.23
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -16(%rbp)
.LBB368_9:                              # %if.end.27
	jmp	.LBB368_10
.LBB368_10:                             # %if.end.28
	xorl	%edi, %edi
	movq	globals+1920, %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, globals+1920
	movq	stdout, %rdi
	callq	fflush
	movabsq	$my_edata, %rdi
	movabsq	$malloc_warning, %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	memory_warnings
	callq	alloc_unexec_pre
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB368_12
# BB#11:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB368_13
.LBB368_12:                             # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB368_13
.LBB368_13:                             # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unexec
	callq	alloc_unexec_post
	callq	reset_image_types
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, globals+1920
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end368:
	.size	Fdump_emacs, .Lfunc_end368-Fdump_emacs
	.cfi_endproc

	.globl	synchronize_system_time_locale
	.align	16, 0x90
	.type	synchronize_system_time_locale,@function
synchronize_system_time_locale:         # @synchronize_system_time_locale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1107:
	.cfi_def_cfa_offset 16
.Ltmp1108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1109:
	.cfi_def_cfa_register %rbp
	movl	$2, %edi
	movabsq	$globals, %rax
	addq	$1816, %rax             # imm = 0x718
	movq	globals+2288, %rdx
	movq	%rax, %rsi
	callq	synchronize_locale
	popq	%rbp
	retq
.Lfunc_end369:
	.size	synchronize_system_time_locale, .Lfunc_end369-synchronize_system_time_locale
	.cfi_endproc

	.align	16, 0x90
	.type	synchronize_locale,@function
synchronize_locale:                     # @synchronize_locale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1110:
	.cfi_def_cfa_offset 16
.Ltmp1111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1112:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-24(%rbp), %rdx
	je	.LBB370_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB370_2
	jmp	.LBB370_3
.LBB370_2:                              # %cond.true
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB370_4
.LBB370_3:                              # %cond.false
	movabsq	$.L.str.23, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB370_4
.LBB370_4:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	-28(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	setlocale
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB370_5:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end370:
	.size	synchronize_locale, .Lfunc_end370-synchronize_locale
	.cfi_endproc

	.globl	synchronize_system_messages_locale
	.align	16, 0x90
	.type	synchronize_system_messages_locale,@function
synchronize_system_messages_locale:     # @synchronize_system_messages_locale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1113:
	.cfi_def_cfa_offset 16
.Ltmp1114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1115:
	.cfi_def_cfa_register %rbp
	movl	$5, %edi
	movabsq	$globals, %rax
	addq	$1808, %rax             # imm = 0x710
	movq	globals+2272, %rdx
	movq	%rax, %rsi
	callq	synchronize_locale
	popq	%rbp
	retq
.Lfunc_end371:
	.size	synchronize_system_messages_locale, .Lfunc_end371-synchronize_system_messages_locale
	.cfi_endproc

	.globl	decode_env_path
	.align	16, 0x90
	.type	decode_env_path,@function
decode_env_path:                        # @decode_env_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1116:
	.cfi_def_cfa_offset 16
.Ltmp1117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1118:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB372_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB372_3
.LBB372_2:                              # %cond.false
	movabsq	$.L.str.69, %rdi
	callq	build_string
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB372_3:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB372_5
# BB#4:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	getenv
	movq	%rax, -32(%rbp)
	jmp	.LBB372_6
.LBB372_5:                              # %if.else
	movq	$0, -32(%rbp)
.LBB372_6:                              # %if.end
	cmpq	$0, -32(%rbp)
	jne	.LBB372_8
# BB#7:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB372_8:                              # %if.end.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB372_9:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB372_11
# BB#10:                                # %if.then.9
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-136(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB372_11:                             # %if.end.11
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB372_13
# BB#12:                                # %cond.true.13
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	make_unibyte_string
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB372_14
.LBB372_13:                             # %cond.false.18
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB372_14:                             # %cond.end.19
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB372_22
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB372_9 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB372_19
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB372_9 Depth=1
	movabsq	$.L.str.70, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	intern
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB372_18
# BB#17:                                # %if.then.34
                                        #   in Loop: Header=BB372_9 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB372_18:                             # %if.end.36
                                        #   in Loop: Header=BB372_9 Depth=1
	jmp	.LBB372_19
.LBB372_19:                             # %if.end.37
                                        #   in Loop: Header=BB372_9 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB372_21
# BB#20:                                # %if.then.41
                                        #   in Loop: Header=BB372_9 Depth=1
	movl	$4, %esi
	leaq	-120(%rbp), %rax
	movabsq	$.L.str.71, %rcx
	movq	$2, -120(%rbp)
	movq	$-1, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	concat2
	movq	%rax, -56(%rbp)
.LBB372_21:                             # %if.end.45
                                        #   in Loop: Header=BB372_9 Depth=1
	jmp	.LBB372_22
.LBB372_22:                             # %if.end.46
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fcons
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB372_24
# BB#23:                                # %if.then.49
                                        #   in Loop: Header=BB372_9 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB372_25
.LBB372_24:                             # %if.else.51
	jmp	.LBB372_26
.LBB372_25:                             # %if.end.52
                                        #   in Loop: Header=BB372_9 Depth=1
	jmp	.LBB372_9
.LBB372_26:                             # %while.end
	movq	-48(%rbp), %rdi
	callq	Fnreverse
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end372:
	.size	decode_env_path, .Lfunc_end372-decode_env_path
	.cfi_endproc

	.globl	Fdaemonp
	.align	16, 0x90
	.type	Fdaemonp,@function
Fdaemonp:                               # @Fdaemonp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1119:
	.cfi_def_cfa_offset 16
.Ltmp1120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1121:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, daemon_pipe+4
	je	.LBB373_4
# BB#1:                                 # %if.then
	cmpq	$0, daemon_name
	je	.LBB373_3
# BB#2:                                 # %if.then.1
	movq	daemon_name, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB373_5
.LBB373_3:                              # %if.else
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB373_5
.LBB373_4:                              # %if.else.3
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB373_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end373:
	.size	Fdaemonp, .Lfunc_end373-Fdaemonp
	.cfi_endproc

	.globl	Fdaemon_initialized
	.align	16, 0x90
	.type	Fdaemon_initialized,@function
Fdaemon_initialized:                    # @Fdaemon_initialized
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1122:
	.cfi_def_cfa_offset 16
.Ltmp1123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1124:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	$0, -1(%rbp)
	cmpl	$0, daemon_pipe+4
	jne	.LBB374_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.72, %rdi
	movb	$0, %al
	callq	error
.LBB374_2:                              # %if.end
	cmpl	$0, daemon_pipe+4
	jge	.LBB374_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.73, %rdi
	movb	$0, %al
	callq	error
.LBB374_4:                              # %if.end.3
	xorl	%edi, %edi
	movq	globals+8, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB374_6
# BB#5:                                 # %if.then.5
	movabsq	$.L.str.74, %rdi
	movb	$0, %al
	callq	error
.LBB374_6:                              # %if.end.6
	movabsq	$.L.str.75, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	emacs_open
	xorl	%esi, %esi
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	-8(%rbp), %edi
	callq	dup2
	movl	$1, %esi
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	-8(%rbp), %edi
	callq	dup2
	movl	$2, %esi
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	-8(%rbp), %edi
	callq	dup2
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	orl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	-8(%rbp), %edi
	callq	emacs_close
	movabsq	$.L.str.76, %rsi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edi
	orl	%eax, %edi
	cmpl	$0, %edi
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	daemon_pipe+4, %edi
	callq	write
	cmpq	$0, %rax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	orl	%edi, %r8d
	cmpl	$0, %r8d
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	daemon_pipe+4, %edi
	callq	emacs_close
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edi
	orl	%eax, %edi
	cmpl	$0, %edi
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movl	$-1, daemon_pipe+4
	testb	$1, -1(%rbp)
	je	.LBB374_8
# BB#7:                                 # %if.then.60
	movabsq	$.L.str.77, %rdi
	movb	$0, %al
	callq	error
.LBB374_8:                              # %if.end.61
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end374:
	.size	Fdaemon_initialized, .Lfunc_end374-Fdaemon_initialized
	.cfi_endproc

	.type	GCTYPEBITS,@object      # @GCTYPEBITS
	.section	.rodata,"a",@progbits
	.globl	GCTYPEBITS
	.align	4
GCTYPEBITS:
	.long	3                       # 0x3
	.size	GCTYPEBITS, 4

	.type	USE_LSB_TAG,@object     # @USE_LSB_TAG
	.globl	USE_LSB_TAG
USE_LSB_TAG:
	.byte	1                       # 0x1
	.size	USE_LSB_TAG, 1

	.type	Qnil,@object            # @Qnil
	.globl	Qnil
	.align	8
Qnil:
	.quad	0                       # 0x0
	.size	Qnil, 8

	.type	QATOM,@object           # @QATOM
	.globl	QATOM
	.align	8
QATOM:
	.quad	48                      # 0x30
	.size	QATOM, 8

	.type	QCLIPBOARD,@object      # @QCLIPBOARD
	.globl	QCLIPBOARD
	.align	8
QCLIPBOARD:
	.quad	96                      # 0x60
	.size	QCLIPBOARD, 8

	.type	QCLIPBOARD_MANAGER,@object # @QCLIPBOARD_MANAGER
	.globl	QCLIPBOARD_MANAGER
	.align	8
QCLIPBOARD_MANAGER:
	.quad	144                     # 0x90
	.size	QCLIPBOARD_MANAGER, 8

	.type	QCOMPOUND_TEXT,@object  # @QCOMPOUND_TEXT
	.globl	QCOMPOUND_TEXT
	.align	8
QCOMPOUND_TEXT:
	.quad	192                     # 0xc0
	.size	QCOMPOUND_TEXT, 8

	.type	QCadstyle,@object       # @QCadstyle
	.globl	QCadstyle
	.align	8
QCadstyle:
	.quad	240                     # 0xf0
	.size	QCadstyle, 8

	.type	QCadvertised_binding,@object # @QCadvertised_binding
	.globl	QCadvertised_binding
	.align	8
QCadvertised_binding:
	.quad	288                     # 0x120
	.size	QCadvertised_binding, 8

	.type	QCalign_to,@object      # @QCalign_to
	.globl	QCalign_to
	.align	8
QCalign_to:
	.quad	336                     # 0x150
	.size	QCalign_to, 8

	.type	QCantialias,@object     # @QCantialias
	.globl	QCantialias
	.align	8
QCantialias:
	.quad	384                     # 0x180
	.size	QCantialias, 8

	.type	QCascent,@object        # @QCascent
	.globl	QCascent
	.align	8
QCascent:
	.quad	432                     # 0x1b0
	.size	QCascent, 8

	.type	QCascii_compatible_p,@object # @QCascii_compatible_p
	.globl	QCascii_compatible_p
	.align	8
QCascii_compatible_p:
	.quad	480                     # 0x1e0
	.size	QCascii_compatible_p, 8

	.type	QCautohint,@object      # @QCautohint
	.globl	QCautohint
	.align	8
QCautohint:
	.quad	528                     # 0x210
	.size	QCautohint, 8

	.type	QCavgwidth,@object      # @QCavgwidth
	.globl	QCavgwidth
	.align	8
QCavgwidth:
	.quad	576                     # 0x240
	.size	QCavgwidth, 8

	.type	QCbackground,@object    # @QCbackground
	.globl	QCbackground
	.align	8
QCbackground:
	.quad	624                     # 0x270
	.size	QCbackground, 8

	.type	QCbold,@object          # @QCbold
	.globl	QCbold
	.align	8
QCbold:
	.quad	672                     # 0x2a0
	.size	QCbold, 8

	.type	QCbox,@object           # @QCbox
	.globl	QCbox
	.align	8
QCbox:
	.quad	720                     # 0x2d0
	.size	QCbox, 8

	.type	QCbuffer,@object        # @QCbuffer
	.globl	QCbuffer
	.align	8
QCbuffer:
	.quad	768                     # 0x300
	.size	QCbuffer, 8

	.type	QCbutton,@object        # @QCbutton
	.globl	QCbutton
	.align	8
QCbutton:
	.quad	816                     # 0x330
	.size	QCbutton, 8

	.type	QCbytesize,@object      # @QCbytesize
	.globl	QCbytesize
	.align	8
QCbytesize:
	.quad	864                     # 0x360
	.size	QCbytesize, 8

	.type	QCcategory,@object      # @QCcategory
	.globl	QCcategory
	.align	8
QCcategory:
	.quad	912                     # 0x390
	.size	QCcategory, 8

	.type	QCcoding,@object        # @QCcoding
	.globl	QCcoding
	.align	8
QCcoding:
	.quad	960                     # 0x3c0
	.size	QCcoding, 8

	.type	QCcolor,@object         # @QCcolor
	.globl	QCcolor
	.align	8
QCcolor:
	.quad	1008                    # 0x3f0
	.size	QCcolor, 8

	.type	QCcolor_adjustment,@object # @QCcolor_adjustment
	.globl	QCcolor_adjustment
	.align	8
QCcolor_adjustment:
	.quad	1056                    # 0x420
	.size	QCcolor_adjustment, 8

	.type	QCcolor_symbols,@object # @QCcolor_symbols
	.globl	QCcolor_symbols
	.align	8
QCcolor_symbols:
	.quad	1104                    # 0x450
	.size	QCcolor_symbols, 8

	.type	QCcombining_capability,@object # @QCcombining_capability
	.globl	QCcombining_capability
	.align	8
QCcombining_capability:
	.quad	1152                    # 0x480
	.size	QCcombining_capability, 8

	.type	QCcommand,@object       # @QCcommand
	.globl	QCcommand
	.align	8
QCcommand:
	.quad	1200                    # 0x4b0
	.size	QCcommand, 8

	.type	QCconnection_type,@object # @QCconnection_type
	.globl	QCconnection_type
	.align	8
QCconnection_type:
	.quad	1248                    # 0x4e0
	.size	QCconnection_type, 8

	.type	QCconversion,@object    # @QCconversion
	.globl	QCconversion
	.align	8
QCconversion:
	.quad	1296                    # 0x510
	.size	QCconversion, 8

	.type	QCcrop,@object          # @QCcrop
	.globl	QCcrop
	.align	8
QCcrop:
	.quad	1344                    # 0x540
	.size	QCcrop, 8

	.type	QCdata,@object          # @QCdata
	.globl	QCdata
	.align	8
QCdata:
	.quad	1392                    # 0x570
	.size	QCdata, 8

	.type	QCdecode_translation_table,@object # @QCdecode_translation_table
	.globl	QCdecode_translation_table
	.align	8
QCdecode_translation_table:
	.quad	1440                    # 0x5a0
	.size	QCdecode_translation_table, 8

	.type	QCdefault_char,@object  # @QCdefault_char
	.globl	QCdefault_char
	.align	8
QCdefault_char:
	.quad	1488                    # 0x5d0
	.size	QCdefault_char, 8

	.type	QCdevice,@object        # @QCdevice
	.globl	QCdevice
	.align	8
QCdevice:
	.quad	1536                    # 0x600
	.size	QCdevice, 8

	.type	QCdistant_foreground,@object # @QCdistant_foreground
	.globl	QCdistant_foreground
	.align	8
QCdistant_foreground:
	.quad	1584                    # 0x630
	.size	QCdistant_foreground, 8

	.type	QCdocumentation,@object # @QCdocumentation
	.globl	QCdocumentation
	.align	8
QCdocumentation:
	.quad	1632                    # 0x660
	.size	QCdocumentation, 8

	.type	QCdpi,@object           # @QCdpi
	.globl	QCdpi
	.align	8
QCdpi:
	.quad	1680                    # 0x690
	.size	QCdpi, 8

	.type	QCembolden,@object      # @QCembolden
	.globl	QCembolden
	.align	8
QCembolden:
	.quad	1728                    # 0x6c0
	.size	QCembolden, 8

	.type	QCenable,@object        # @QCenable
	.globl	QCenable
	.align	8
QCenable:
	.quad	1776                    # 0x6f0
	.size	QCenable, 8

	.type	QCencode_translation_table,@object # @QCencode_translation_table
	.globl	QCencode_translation_table
	.align	8
QCencode_translation_table:
	.quad	1824                    # 0x720
	.size	QCencode_translation_table, 8

	.type	QCeval,@object          # @QCeval
	.globl	QCeval
	.align	8
QCeval:
	.quad	1872                    # 0x750
	.size	QCeval, 8

	.type	QCfamily,@object        # @QCfamily
	.globl	QCfamily
	.align	8
QCfamily:
	.quad	1920                    # 0x780
	.size	QCfamily, 8

	.type	QCfile,@object          # @QCfile
	.globl	QCfile
	.align	8
QCfile:
	.quad	1968                    # 0x7b0
	.size	QCfile, 8

	.type	QCfilter,@object        # @QCfilter
	.globl	QCfilter
	.align	8
QCfilter:
	.quad	2016                    # 0x7e0
	.size	QCfilter, 8

	.type	QCflowcontrol,@object   # @QCflowcontrol
	.globl	QCflowcontrol
	.align	8
QCflowcontrol:
	.quad	2064                    # 0x810
	.size	QCflowcontrol, 8

	.type	QCfont,@object          # @QCfont
	.globl	QCfont
	.align	8
QCfont:
	.quad	2112                    # 0x840
	.size	QCfont, 8

	.type	QCfont_entity,@object   # @QCfont_entity
	.globl	QCfont_entity
	.align	8
QCfont_entity:
	.quad	2160                    # 0x870
	.size	QCfont_entity, 8

	.type	QCfontset,@object       # @QCfontset
	.globl	QCfontset
	.align	8
QCfontset:
	.quad	2208                    # 0x8a0
	.size	QCfontset, 8

	.type	QCforeground,@object    # @QCforeground
	.globl	QCforeground
	.align	8
QCforeground:
	.quad	2256                    # 0x8d0
	.size	QCforeground, 8

	.type	QCfoundry,@object       # @QCfoundry
	.globl	QCfoundry
	.align	8
QCfoundry:
	.quad	2304                    # 0x900
	.size	QCfoundry, 8

	.type	QCgnutls_bootprop_crlfiles,@object # @QCgnutls_bootprop_crlfiles
	.globl	QCgnutls_bootprop_crlfiles
	.align	8
QCgnutls_bootprop_crlfiles:
	.quad	2352                    # 0x930
	.size	QCgnutls_bootprop_crlfiles, 8

	.type	QCgnutls_bootprop_hostname,@object # @QCgnutls_bootprop_hostname
	.globl	QCgnutls_bootprop_hostname
	.align	8
QCgnutls_bootprop_hostname:
	.quad	2400                    # 0x960
	.size	QCgnutls_bootprop_hostname, 8

	.type	QCgnutls_bootprop_keylist,@object # @QCgnutls_bootprop_keylist
	.globl	QCgnutls_bootprop_keylist
	.align	8
QCgnutls_bootprop_keylist:
	.quad	2448                    # 0x990
	.size	QCgnutls_bootprop_keylist, 8

	.type	QCgnutls_bootprop_loglevel,@object # @QCgnutls_bootprop_loglevel
	.globl	QCgnutls_bootprop_loglevel
	.align	8
QCgnutls_bootprop_loglevel:
	.quad	2496                    # 0x9c0
	.size	QCgnutls_bootprop_loglevel, 8

	.type	QCgnutls_bootprop_min_prime_bits,@object # @QCgnutls_bootprop_min_prime_bits
	.globl	QCgnutls_bootprop_min_prime_bits
	.align	8
QCgnutls_bootprop_min_prime_bits:
	.quad	2544                    # 0x9f0
	.size	QCgnutls_bootprop_min_prime_bits, 8

	.type	QCgnutls_bootprop_priority,@object # @QCgnutls_bootprop_priority
	.globl	QCgnutls_bootprop_priority
	.align	8
QCgnutls_bootprop_priority:
	.quad	2592                    # 0xa20
	.size	QCgnutls_bootprop_priority, 8

	.type	QCgnutls_bootprop_trustfiles,@object # @QCgnutls_bootprop_trustfiles
	.globl	QCgnutls_bootprop_trustfiles
	.align	8
QCgnutls_bootprop_trustfiles:
	.quad	2640                    # 0xa50
	.size	QCgnutls_bootprop_trustfiles, 8

	.type	QCgnutls_bootprop_verify_error,@object # @QCgnutls_bootprop_verify_error
	.globl	QCgnutls_bootprop_verify_error
	.align	8
QCgnutls_bootprop_verify_error:
	.quad	2688                    # 0xa80
	.size	QCgnutls_bootprop_verify_error, 8

	.type	QCgnutls_bootprop_verify_flags,@object # @QCgnutls_bootprop_verify_flags
	.globl	QCgnutls_bootprop_verify_flags
	.align	8
QCgnutls_bootprop_verify_flags:
	.quad	2736                    # 0xab0
	.size	QCgnutls_bootprop_verify_flags, 8

	.type	QCheight,@object        # @QCheight
	.globl	QCheight
	.align	8
QCheight:
	.quad	2784                    # 0xae0
	.size	QCheight, 8

	.type	QChelp,@object          # @QChelp
	.globl	QChelp
	.align	8
QChelp:
	.quad	2832                    # 0xb10
	.size	QChelp, 8

	.type	QCheuristic_mask,@object # @QCheuristic_mask
	.globl	QCheuristic_mask
	.align	8
QCheuristic_mask:
	.quad	2880                    # 0xb40
	.size	QCheuristic_mask, 8

	.type	QChinting,@object       # @QChinting
	.globl	QChinting
	.align	8
QChinting:
	.quad	2928                    # 0xb70
	.size	QChinting, 8

	.type	QChintstyle,@object     # @QChintstyle
	.globl	QChintstyle
	.align	8
QChintstyle:
	.quad	2976                    # 0xba0
	.size	QChintstyle, 8

	.type	QChost,@object          # @QChost
	.globl	QChost
	.align	8
QChost:
	.quad	3024                    # 0xbd0
	.size	QChost, 8

	.type	QCignore_defface,@object # @QCignore_defface
	.globl	QCignore_defface
	.align	8
QCignore_defface:
	.quad	3072                    # 0xc00
	.size	QCignore_defface, 8

	.type	QCimage,@object         # @QCimage
	.globl	QCimage
	.align	8
QCimage:
	.quad	3120                    # 0xc30
	.size	QCimage, 8

	.type	QCindex,@object         # @QCindex
	.globl	QCindex
	.align	8
QCindex:
	.quad	3168                    # 0xc60
	.size	QCindex, 8

	.type	QCinherit,@object       # @QCinherit
	.globl	QCinherit
	.align	8
QCinherit:
	.quad	3216                    # 0xc90
	.size	QCinherit, 8

	.type	QCinverse_video,@object # @QCinverse_video
	.globl	QCinverse_video
	.align	8
QCinverse_video:
	.quad	3264                    # 0xcc0
	.size	QCinverse_video, 8

	.type	QCitalic,@object        # @QCitalic
	.globl	QCitalic
	.align	8
QCitalic:
	.quad	3312                    # 0xcf0
	.size	QCitalic, 8

	.type	QCkey_sequence,@object  # @QCkey_sequence
	.globl	QCkey_sequence
	.align	8
QCkey_sequence:
	.quad	3360                    # 0xd20
	.size	QCkey_sequence, 8

	.type	QCkeys,@object          # @QCkeys
	.globl	QCkeys
	.align	8
QCkeys:
	.quad	3408                    # 0xd50
	.size	QCkeys, 8

	.type	QClabel,@object         # @QClabel
	.globl	QClabel
	.align	8
QClabel:
	.quad	3456                    # 0xd80
	.size	QClabel, 8

	.type	QClang,@object          # @QClang
	.globl	QClang
	.align	8
QClang:
	.quad	3504                    # 0xdb0
	.size	QClang, 8

	.type	QClcdfilter,@object     # @QClcdfilter
	.globl	QClcdfilter
	.align	8
QClcdfilter:
	.quad	3552                    # 0xde0
	.size	QClcdfilter, 8

	.type	QCline_width,@object    # @QCline_width
	.globl	QCline_width
	.align	8
QCline_width:
	.quad	3600                    # 0xe10
	.size	QCline_width, 8

	.type	QCloader,@object        # @QCloader
	.globl	QCloader
	.align	8
QCloader:
	.quad	3648                    # 0xe40
	.size	QCloader, 8

	.type	QClocal,@object         # @QClocal
	.globl	QClocal
	.align	8
QClocal:
	.quad	3696                    # 0xe70
	.size	QClocal, 8

	.type	QClog,@object           # @QClog
	.globl	QClog
	.align	8
QClog:
	.quad	3744                    # 0xea0
	.size	QClog, 8

	.type	QCmap,@object           # @QCmap
	.globl	QCmap
	.align	8
QCmap:
	.quad	3792                    # 0xed0
	.size	QCmap, 8

	.type	QCmargin,@object        # @QCmargin
	.globl	QCmargin
	.align	8
QCmargin:
	.quad	3840                    # 0xf00
	.size	QCmargin, 8

	.type	QCmask,@object          # @QCmask
	.globl	QCmask
	.align	8
QCmask:
	.quad	3888                    # 0xf30
	.size	QCmask, 8

	.type	QCmatrix,@object        # @QCmatrix
	.globl	QCmatrix
	.align	8
QCmatrix:
	.quad	3936                    # 0xf60
	.size	QCmatrix, 8

	.type	QCmax_height,@object    # @QCmax_height
	.globl	QCmax_height
	.align	8
QCmax_height:
	.quad	3984                    # 0xf90
	.size	QCmax_height, 8

	.type	QCmax_width,@object     # @QCmax_width
	.globl	QCmax_width
	.align	8
QCmax_width:
	.quad	4032                    # 0xfc0
	.size	QCmax_width, 8

	.type	QCmnemonic,@object      # @QCmnemonic
	.globl	QCmnemonic
	.align	8
QCmnemonic:
	.quad	4080                    # 0xff0
	.size	QCmnemonic, 8

	.type	QCname,@object          # @QCname
	.globl	QCname
	.align	8
QCname:
	.quad	4128                    # 0x1020
	.size	QCname, 8

	.type	QCnoquery,@object       # @QCnoquery
	.globl	QCnoquery
	.align	8
QCnoquery:
	.quad	4176                    # 0x1050
	.size	QCnoquery, 8

	.type	QCnowait,@object        # @QCnowait
	.globl	QCnowait
	.align	8
QCnowait:
	.quad	4224                    # 0x1080
	.size	QCnowait, 8

	.type	QCotf,@object           # @QCotf
	.globl	QCotf
	.align	8
QCotf:
	.quad	4272                    # 0x10b0
	.size	QCotf, 8

	.type	QCoverline,@object      # @QCoverline
	.globl	QCoverline
	.align	8
QCoverline:
	.quad	4320                    # 0x10e0
	.size	QCoverline, 8

	.type	QCparity,@object        # @QCparity
	.globl	QCparity
	.align	8
QCparity:
	.quad	4368                    # 0x1110
	.size	QCparity, 8

	.type	QCplist,@object         # @QCplist
	.globl	QCplist
	.align	8
QCplist:
	.quad	4416                    # 0x1140
	.size	QCplist, 8

	.type	QCpointer,@object       # @QCpointer
	.globl	QCpointer
	.align	8
QCpointer:
	.quad	4464                    # 0x1170
	.size	QCpointer, 8

	.type	QCport,@object          # @QCport
	.globl	QCport
	.align	8
QCport:
	.quad	4512                    # 0x11a0
	.size	QCport, 8

	.type	QCpost_read_conversion,@object # @QCpost_read_conversion
	.globl	QCpost_read_conversion
	.align	8
QCpost_read_conversion:
	.quad	4560                    # 0x11d0
	.size	QCpost_read_conversion, 8

	.type	QCpre_write_conversion,@object # @QCpre_write_conversion
	.globl	QCpre_write_conversion
	.align	8
QCpre_write_conversion:
	.quad	4608                    # 0x1200
	.size	QCpre_write_conversion, 8

	.type	QCprocess,@object       # @QCprocess
	.globl	QCprocess
	.align	8
QCprocess:
	.quad	4656                    # 0x1230
	.size	QCprocess, 8

	.type	QCpropertize,@object    # @QCpropertize
	.globl	QCpropertize
	.align	8
QCpropertize:
	.quad	4704                    # 0x1260
	.size	QCpropertize, 8

	.type	QCpt_height,@object     # @QCpt_height
	.globl	QCpt_height
	.align	8
QCpt_height:
	.quad	4752                    # 0x1290
	.size	QCpt_height, 8

	.type	QCpt_width,@object      # @QCpt_width
	.globl	QCpt_width
	.align	8
QCpt_width:
	.quad	4800                    # 0x12c0
	.size	QCpt_width, 8

	.type	QCradio,@object         # @QCradio
	.globl	QCradio
	.align	8
QCradio:
	.quad	4848                    # 0x12f0
	.size	QCradio, 8

	.type	QCregistry,@object      # @QCregistry
	.globl	QCregistry
	.align	8
QCregistry:
	.quad	4896                    # 0x1320
	.size	QCregistry, 8

	.type	QCrehash_size,@object   # @QCrehash_size
	.globl	QCrehash_size
	.align	8
QCrehash_size:
	.quad	4944                    # 0x1350
	.size	QCrehash_size, 8

	.type	QCrehash_threshold,@object # @QCrehash_threshold
	.globl	QCrehash_threshold
	.align	8
QCrehash_threshold:
	.quad	4992                    # 0x1380
	.size	QCrehash_threshold, 8

	.type	QCrelative_height,@object # @QCrelative_height
	.globl	QCrelative_height
	.align	8
QCrelative_height:
	.quad	5040                    # 0x13b0
	.size	QCrelative_height, 8

	.type	QCrelative_width,@object # @QCrelative_width
	.globl	QCrelative_width
	.align	8
QCrelative_width:
	.quad	5088                    # 0x13e0
	.size	QCrelative_width, 8

	.type	QCrelief,@object        # @QCrelief
	.globl	QCrelief
	.align	8
QCrelief:
	.quad	5136                    # 0x1410
	.size	QCrelief, 8

	.type	QCremote,@object        # @QCremote
	.globl	QCremote
	.align	8
QCremote:
	.quad	5184                    # 0x1440
	.size	QCremote, 8

	.type	QCreverse_video,@object # @QCreverse_video
	.globl	QCreverse_video
	.align	8
QCreverse_video:
	.quad	5232                    # 0x1470
	.size	QCreverse_video, 8

	.type	QCrgba,@object          # @QCrgba
	.globl	QCrgba
	.align	8
QCrgba:
	.quad	5280                    # 0x14a0
	.size	QCrgba, 8

	.type	QCrotation,@object      # @QCrotation
	.globl	QCrotation
	.align	8
QCrotation:
	.quad	5328                    # 0x14d0
	.size	QCrotation, 8

	.type	QCrtl,@object           # @QCrtl
	.globl	QCrtl
	.align	8
QCrtl:
	.quad	5376                    # 0x1500
	.size	QCrtl, 8

	.type	QCscalable,@object      # @QCscalable
	.globl	QCscalable
	.align	8
QCscalable:
	.quad	5424                    # 0x1530
	.size	QCscalable, 8

	.type	QCscript,@object        # @QCscript
	.globl	QCscript
	.align	8
QCscript:
	.quad	5472                    # 0x1560
	.size	QCscript, 8

	.type	QCsentinel,@object      # @QCsentinel
	.globl	QCsentinel
	.align	8
QCsentinel:
	.quad	5520                    # 0x1590
	.size	QCsentinel, 8

	.type	QCserver,@object        # @QCserver
	.globl	QCserver
	.align	8
QCserver:
	.quad	5568                    # 0x15c0
	.size	QCserver, 8

	.type	QCservice,@object       # @QCservice
	.globl	QCservice
	.align	8
QCservice:
	.quad	5616                    # 0x15f0
	.size	QCservice, 8

	.type	QCsize,@object          # @QCsize
	.globl	QCsize
	.align	8
QCsize:
	.quad	5664                    # 0x1620
	.size	QCsize, 8

	.type	QCslant,@object         # @QCslant
	.globl	QCslant
	.align	8
QCslant:
	.quad	5712                    # 0x1650
	.size	QCslant, 8

	.type	QCspacing,@object       # @QCspacing
	.globl	QCspacing
	.align	8
QCspacing:
	.quad	5760                    # 0x1680
	.size	QCspacing, 8

	.type	QCspeed,@object         # @QCspeed
	.globl	QCspeed
	.align	8
QCspeed:
	.quad	5808                    # 0x16b0
	.size	QCspeed, 8

	.type	QCstderr,@object        # @QCstderr
	.globl	QCstderr
	.align	8
QCstderr:
	.quad	5856                    # 0x16e0
	.size	QCstderr, 8

	.type	QCstipple,@object       # @QCstipple
	.globl	QCstipple
	.align	8
QCstipple:
	.quad	5904                    # 0x1710
	.size	QCstipple, 8

	.type	QCstop,@object          # @QCstop
	.globl	QCstop
	.align	8
QCstop:
	.quad	5952                    # 0x1740
	.size	QCstop, 8

	.type	QCstopbits,@object      # @QCstopbits
	.globl	QCstopbits
	.align	8
QCstopbits:
	.quad	6000                    # 0x1770
	.size	QCstopbits, 8

	.type	QCstrike_through,@object # @QCstrike_through
	.globl	QCstrike_through
	.align	8
QCstrike_through:
	.quad	6048                    # 0x17a0
	.size	QCstrike_through, 8

	.type	QCstyle,@object         # @QCstyle
	.globl	QCstyle
	.align	8
QCstyle:
	.quad	6096                    # 0x17d0
	.size	QCstyle, 8

	.type	QCsummary,@object       # @QCsummary
	.globl	QCsummary
	.align	8
QCsummary:
	.quad	6144                    # 0x1800
	.size	QCsummary, 8

	.type	QCtest,@object          # @QCtest
	.globl	QCtest
	.align	8
QCtest:
	.quad	6192                    # 0x1830
	.size	QCtest, 8

	.type	QCtoggle,@object        # @QCtoggle
	.globl	QCtoggle
	.align	8
QCtoggle:
	.quad	6240                    # 0x1860
	.size	QCtoggle, 8

	.type	QCtype,@object          # @QCtype
	.globl	QCtype
	.align	8
QCtype:
	.quad	6288                    # 0x1890
	.size	QCtype, 8

	.type	QCunderline,@object     # @QCunderline
	.globl	QCunderline
	.align	8
QCunderline:
	.quad	6336                    # 0x18c0
	.size	QCunderline, 8

	.type	QCuser_spec,@object     # @QCuser_spec
	.globl	QCuser_spec
	.align	8
QCuser_spec:
	.quad	6384                    # 0x18f0
	.size	QCuser_spec, 8

	.type	QCvert_only,@object     # @QCvert_only
	.globl	QCvert_only
	.align	8
QCvert_only:
	.quad	6432                    # 0x1920
	.size	QCvert_only, 8

	.type	QCvisible,@object       # @QCvisible
	.globl	QCvisible
	.align	8
QCvisible:
	.quad	6480                    # 0x1950
	.size	QCvisible, 8

	.type	QCvolume,@object        # @QCvolume
	.globl	QCvolume
	.align	8
QCvolume:
	.quad	6528                    # 0x1980
	.size	QCvolume, 8

	.type	QCweakness,@object      # @QCweakness
	.globl	QCweakness
	.align	8
QCweakness:
	.quad	6576                    # 0x19b0
	.size	QCweakness, 8

	.type	QCweight,@object        # @QCweight
	.globl	QCweight
	.align	8
QCweight:
	.quad	6624                    # 0x19e0
	.size	QCweight, 8

	.type	QCwidth,@object         # @QCwidth
	.globl	QCwidth
	.align	8
QCwidth:
	.quad	6672                    # 0x1a10
	.size	QCwidth, 8

	.type	QDELETE,@object         # @QDELETE
	.globl	QDELETE
	.align	8
QDELETE:
	.quad	6720                    # 0x1a40
	.size	QDELETE, 8

	.type	QEMACS_TMP,@object      # @QEMACS_TMP
	.globl	QEMACS_TMP
	.align	8
QEMACS_TMP:
	.quad	6768                    # 0x1a70
	.size	QEMACS_TMP, 8

	.type	QEmacsFrameResize,@object # @QEmacsFrameResize
	.globl	QEmacsFrameResize
	.align	8
QEmacsFrameResize:
	.quad	6816                    # 0x1aa0
	.size	QEmacsFrameResize, 8

	.type	QINCR,@object           # @QINCR
	.globl	QINCR
	.align	8
QINCR:
	.quad	6864                    # 0x1ad0
	.size	QINCR, 8

	.type	QINTEGER,@object        # @QINTEGER
	.globl	QINTEGER
	.align	8
QINTEGER:
	.quad	6912                    # 0x1b00
	.size	QINTEGER, 8

	.type	QMULTIPLE,@object       # @QMULTIPLE
	.globl	QMULTIPLE
	.align	8
QMULTIPLE:
	.quad	6960                    # 0x1b30
	.size	QMULTIPLE, 8

	.type	QNULL,@object           # @QNULL
	.globl	QNULL
	.align	8
QNULL:
	.quad	7008                    # 0x1b60
	.size	QNULL, 8

	.type	QPRIMARY,@object        # @QPRIMARY
	.globl	QPRIMARY
	.align	8
QPRIMARY:
	.quad	7056                    # 0x1b90
	.size	QPRIMARY, 8

	.type	QSAVE_TARGETS,@object   # @QSAVE_TARGETS
	.globl	QSAVE_TARGETS
	.align	8
QSAVE_TARGETS:
	.quad	7104                    # 0x1bc0
	.size	QSAVE_TARGETS, 8

	.type	QSECONDARY,@object      # @QSECONDARY
	.globl	QSECONDARY
	.align	8
QSECONDARY:
	.quad	7152                    # 0x1bf0
	.size	QSECONDARY, 8

	.type	QSTRING,@object         # @QSTRING
	.globl	QSTRING
	.align	8
QSTRING:
	.quad	7200                    # 0x1c20
	.size	QSTRING, 8

	.type	QTARGETS,@object        # @QTARGETS
	.globl	QTARGETS
	.align	8
QTARGETS:
	.quad	7248                    # 0x1c50
	.size	QTARGETS, 8

	.type	QTEXT,@object           # @QTEXT
	.globl	QTEXT
	.align	8
QTEXT:
	.quad	7296                    # 0x1c80
	.size	QTEXT, 8

	.type	QTIMESTAMP,@object      # @QTIMESTAMP
	.globl	QTIMESTAMP
	.align	8
QTIMESTAMP:
	.quad	7344                    # 0x1cb0
	.size	QTIMESTAMP, 8

	.type	QUTF8_STRING,@object    # @QUTF8_STRING
	.globl	QUTF8_STRING
	.align	8
QUTF8_STRING:
	.quad	7392                    # 0x1ce0
	.size	QUTF8_STRING, 8

	.type	Qabove,@object          # @Qabove
	.globl	Qabove
	.align	8
Qabove:
	.quad	7440                    # 0x1d10
	.size	Qabove, 8

	.type	Qabove_handle,@object   # @Qabove_handle
	.globl	Qabove_handle
	.align	8
Qabove_handle:
	.quad	7488                    # 0x1d40
	.size	Qabove_handle, 8

	.type	Qaccess,@object         # @Qaccess
	.globl	Qaccess
	.align	8
Qaccess:
	.quad	7536                    # 0x1d70
	.size	Qaccess, 8

	.type	Qaccess_file,@object    # @Qaccess_file
	.globl	Qaccess_file
	.align	8
Qaccess_file:
	.quad	7584                    # 0x1da0
	.size	Qaccess_file, 8

	.type	Qactivate_input_method,@object # @Qactivate_input_method
	.globl	Qactivate_input_method
	.align	8
Qactivate_input_method:
	.quad	7632                    # 0x1dd0
	.size	Qactivate_input_method, 8

	.type	Qactivate_menubar_hook,@object # @Qactivate_menubar_hook
	.globl	Qactivate_menubar_hook
	.align	8
Qactivate_menubar_hook:
	.quad	7680                    # 0x1e00
	.size	Qactivate_menubar_hook, 8

	.type	Qadd_name_to_file,@object # @Qadd_name_to_file
	.globl	Qadd_name_to_file
	.align	8
Qadd_name_to_file:
	.quad	7728                    # 0x1e30
	.size	Qadd_name_to_file, 8

	.type	Qadjust_frame_size_1,@object # @Qadjust_frame_size_1
	.globl	Qadjust_frame_size_1
	.align	8
Qadjust_frame_size_1:
	.quad	7776                    # 0x1e60
	.size	Qadjust_frame_size_1, 8

	.type	Qadjust_frame_size_2,@object # @Qadjust_frame_size_2
	.globl	Qadjust_frame_size_2
	.align	8
Qadjust_frame_size_2:
	.quad	7824                    # 0x1e90
	.size	Qadjust_frame_size_2, 8

	.type	Qadjust_frame_size_3,@object # @Qadjust_frame_size_3
	.globl	Qadjust_frame_size_3
	.align	8
Qadjust_frame_size_3:
	.quad	7872                    # 0x1ec0
	.size	Qadjust_frame_size_3, 8

	.type	Qafter_change_functions,@object # @Qafter_change_functions
	.globl	Qafter_change_functions
	.align	8
Qafter_change_functions:
	.quad	7920                    # 0x1ef0
	.size	Qafter_change_functions, 8

	.type	Qafter_handle,@object   # @Qafter_handle
	.globl	Qafter_handle
	.align	8
Qafter_handle:
	.quad	7968                    # 0x1f20
	.size	Qafter_handle, 8

	.type	Qafter_insert_file_set_coding,@object # @Qafter_insert_file_set_coding
	.globl	Qafter_insert_file_set_coding
	.align	8
Qafter_insert_file_set_coding:
	.quad	8016                    # 0x1f50
	.size	Qafter_insert_file_set_coding, 8

	.type	Qafter_string,@object   # @Qafter_string
	.globl	Qafter_string
	.align	8
Qafter_string:
	.quad	8064                    # 0x1f80
	.size	Qafter_string, 8

	.type	Qall_events,@object     # @Qall_events
	.globl	Qall_events
	.align	8
Qall_events:
	.quad	8112                    # 0x1fb0
	.size	Qall_events, 8

	.type	Qalpha,@object          # @Qalpha
	.globl	Qalpha
	.align	8
Qalpha:
	.quad	8160                    # 0x1fe0
	.size	Qalpha, 8

	.type	Qalt,@object            # @Qalt
	.globl	Qalt
	.align	8
Qalt:
	.quad	8208                    # 0x2010
	.size	Qalt, 8

	.type	Qand_optional,@object   # @Qand_optional
	.globl	Qand_optional
	.align	8
Qand_optional:
	.quad	8256                    # 0x2040
	.size	Qand_optional, 8

	.type	Qand_rest,@object       # @Qand_rest
	.globl	Qand_rest
	.align	8
Qand_rest:
	.quad	8304                    # 0x2070
	.size	Qand_rest, 8

	.type	Qappend,@object         # @Qappend
	.globl	Qappend
	.align	8
Qappend:
	.quad	8352                    # 0x20a0
	.size	Qappend, 8

	.type	Qapply,@object          # @Qapply
	.globl	Qapply
	.align	8
Qapply:
	.quad	8400                    # 0x20d0
	.size	Qapply, 8

	.type	Qargs,@object           # @Qargs
	.globl	Qargs
	.align	8
Qargs:
	.quad	8448                    # 0x2100
	.size	Qargs, 8

	.type	Qargs_out_of_range,@object # @Qargs_out_of_range
	.globl	Qargs_out_of_range
	.align	8
Qargs_out_of_range:
	.quad	8496                    # 0x2130
	.size	Qargs_out_of_range, 8

	.type	Qarith_error,@object    # @Qarith_error
	.globl	Qarith_error
	.align	8
Qarith_error:
	.quad	8544                    # 0x2160
	.size	Qarith_error, 8

	.type	Qarrayp,@object         # @Qarrayp
	.globl	Qarrayp
	.align	8
Qarrayp:
	.quad	8592                    # 0x2190
	.size	Qarrayp, 8

	.type	Qarrow,@object          # @Qarrow
	.globl	Qarrow
	.align	8
Qarrow:
	.quad	8640                    # 0x21c0
	.size	Qarrow, 8

	.type	Qascii,@object          # @Qascii
	.globl	Qascii
	.align	8
Qascii:
	.quad	8688                    # 0x21f0
	.size	Qascii, 8

	.type	Qascii_0,@object        # @Qascii_0
	.globl	Qascii_0
	.align	8
Qascii_0:
	.quad	8736                    # 0x2220
	.size	Qascii_0, 8

	.type	Qascii_character,@object # @Qascii_character
	.globl	Qascii_character
	.align	8
Qascii_character:
	.quad	8784                    # 0x2250
	.size	Qascii_character, 8

	.type	Qattrib,@object         # @Qattrib
	.globl	Qattrib
	.align	8
Qattrib:
	.quad	8832                    # 0x2280
	.size	Qattrib, 8

	.type	Qauto_composed,@object  # @Qauto_composed
	.globl	Qauto_composed
	.align	8
Qauto_composed:
	.quad	8880                    # 0x22b0
	.size	Qauto_composed, 8

	.type	Qauto_fill_chars,@object # @Qauto_fill_chars
	.globl	Qauto_fill_chars
	.align	8
Qauto_fill_chars:
	.quad	8928                    # 0x22e0
	.size	Qauto_fill_chars, 8

	.type	Qauto_hscroll_mode,@object # @Qauto_hscroll_mode
	.globl	Qauto_hscroll_mode
	.align	8
Qauto_hscroll_mode:
	.quad	8976                    # 0x2310
	.size	Qauto_hscroll_mode, 8

	.type	Qauto_lower,@object     # @Qauto_lower
	.globl	Qauto_lower
	.align	8
Qauto_lower:
	.quad	9024                    # 0x2340
	.size	Qauto_lower, 8

	.type	Qauto_raise,@object     # @Qauto_raise
	.globl	Qauto_raise
	.align	8
Qauto_raise:
	.quad	9072                    # 0x2370
	.size	Qauto_raise, 8

	.type	Qauto_save_coding,@object # @Qauto_save_coding
	.globl	Qauto_save_coding
	.align	8
Qauto_save_coding:
	.quad	9120                    # 0x23a0
	.size	Qauto_save_coding, 8

	.type	Qautoload,@object       # @Qautoload
	.globl	Qautoload
	.align	8
Qautoload:
	.quad	9168                    # 0x23d0
	.size	Qautoload, 8

	.type	Qautomatic_gc,@object   # @Qautomatic_gc
	.globl	Qautomatic_gc
	.align	8
Qautomatic_gc:
	.quad	9216                    # 0x2400
	.size	Qautomatic_gc, 8

	.type	Qbackground_color,@object # @Qbackground_color
	.globl	Qbackground_color
	.align	8
Qbackground_color:
	.quad	9264                    # 0x2430
	.size	Qbackground_color, 8

	.type	Qbackground_mode,@object # @Qbackground_mode
	.globl	Qbackground_mode
	.align	8
Qbackground_mode:
	.quad	9312                    # 0x2460
	.size	Qbackground_mode, 8

	.type	Qbackquote,@object      # @Qbackquote
	.globl	Qbackquote
	.align	8
Qbackquote:
	.quad	9360                    # 0x2490
	.size	Qbackquote, 8

	.type	Qbar,@object            # @Qbar
	.globl	Qbar
	.align	8
Qbar:
	.quad	9408                    # 0x24c0
	.size	Qbar, 8

	.type	Qbefore_change_functions,@object # @Qbefore_change_functions
	.globl	Qbefore_change_functions
	.align	8
Qbefore_change_functions:
	.quad	9456                    # 0x24f0
	.size	Qbefore_change_functions, 8

	.type	Qbefore_handle,@object  # @Qbefore_handle
	.globl	Qbefore_handle
	.align	8
Qbefore_handle:
	.quad	9504                    # 0x2520
	.size	Qbefore_handle, 8

	.type	Qbefore_string,@object  # @Qbefore_string
	.globl	Qbefore_string
	.align	8
Qbefore_string:
	.quad	9552                    # 0x2550
	.size	Qbefore_string, 8

	.type	Qbeginning_of_buffer,@object # @Qbeginning_of_buffer
	.globl	Qbeginning_of_buffer
	.align	8
Qbeginning_of_buffer:
	.quad	9600                    # 0x2580
	.size	Qbeginning_of_buffer, 8

	.type	Qbelow_handle,@object   # @Qbelow_handle
	.globl	Qbelow_handle
	.align	8
Qbelow_handle:
	.quad	9648                    # 0x25b0
	.size	Qbelow_handle, 8

	.type	Qbig,@object            # @Qbig
	.globl	Qbig
	.align	8
Qbig:
	.quad	9696                    # 0x25e0
	.size	Qbig, 8

	.type	Qbig5,@object           # @Qbig5
	.globl	Qbig5
	.align	8
Qbig5:
	.quad	9744                    # 0x2610
	.size	Qbig5, 8

	.type	Qbitmap_spec_p,@object  # @Qbitmap_spec_p
	.globl	Qbitmap_spec_p
	.align	8
Qbitmap_spec_p:
	.quad	9792                    # 0x2640
	.size	Qbitmap_spec_p, 8

	.type	Qbold,@object           # @Qbold
	.globl	Qbold
	.align	8
Qbold:
	.quad	9840                    # 0x2670
	.size	Qbold, 8

	.type	Qbool_vector,@object    # @Qbool_vector
	.globl	Qbool_vector
	.align	8
Qbool_vector:
	.quad	9888                    # 0x26a0
	.size	Qbool_vector, 8

	.type	Qbool_vector_p,@object  # @Qbool_vector_p
	.globl	Qbool_vector_p
	.align	8
Qbool_vector_p:
	.quad	9936                    # 0x26d0
	.size	Qbool_vector_p, 8

	.type	Qborder,@object         # @Qborder
	.globl	Qborder
	.align	8
Qborder:
	.quad	9984                    # 0x2700
	.size	Qborder, 8

	.type	Qborder_color,@object   # @Qborder_color
	.globl	Qborder_color
	.align	8
Qborder_color:
	.quad	10032                   # 0x2730
	.size	Qborder_color, 8

	.type	Qborder_width,@object   # @Qborder_width
	.globl	Qborder_width
	.align	8
Qborder_width:
	.quad	10080                   # 0x2760
	.size	Qborder_width, 8

	.type	Qboth,@object           # @Qboth
	.globl	Qboth
	.align	8
Qboth:
	.quad	10128                   # 0x2790
	.size	Qboth, 8

	.type	Qboth_horiz,@object     # @Qboth_horiz
	.globl	Qboth_horiz
	.align	8
Qboth_horiz:
	.quad	10176                   # 0x27c0
	.size	Qboth_horiz, 8

	.type	Qbottom,@object         # @Qbottom
	.globl	Qbottom
	.align	8
Qbottom:
	.quad	10224                   # 0x27f0
	.size	Qbottom, 8

	.type	Qbottom_divider,@object # @Qbottom_divider
	.globl	Qbottom_divider
	.align	8
Qbottom_divider:
	.quad	10272                   # 0x2820
	.size	Qbottom_divider, 8

	.type	Qbottom_divider_width,@object # @Qbottom_divider_width
	.globl	Qbottom_divider_width
	.align	8
Qbottom_divider_width:
	.quad	10320                   # 0x2850
	.size	Qbottom_divider_width, 8

	.type	Qbottom_margin,@object  # @Qbottom_margin
	.globl	Qbottom_margin
	.align	8
Qbottom_margin:
	.quad	10368                   # 0x2880
	.size	Qbottom_margin, 8

	.type	Qboundary,@object       # @Qboundary
	.globl	Qboundary
	.align	8
Qboundary:
	.quad	10416                   # 0x28b0
	.size	Qboundary, 8

	.type	Qbox,@object            # @Qbox
	.globl	Qbox
	.align	8
Qbox:
	.quad	10464                   # 0x28e0
	.size	Qbox, 8

	.type	Qbuffer,@object         # @Qbuffer
	.globl	Qbuffer
	.align	8
Qbuffer:
	.quad	10512                   # 0x2910
	.size	Qbuffer, 8

	.type	Qbuffer_access_fontify_functions,@object # @Qbuffer_access_fontify_functions
	.globl	Qbuffer_access_fontify_functions
	.align	8
Qbuffer_access_fontify_functions:
	.quad	10560                   # 0x2940
	.size	Qbuffer_access_fontify_functions, 8

	.type	Qbuffer_file_coding_system,@object # @Qbuffer_file_coding_system
	.globl	Qbuffer_file_coding_system
	.align	8
Qbuffer_file_coding_system:
	.quad	10608                   # 0x2970
	.size	Qbuffer_file_coding_system, 8

	.type	Qbuffer_list,@object    # @Qbuffer_list
	.globl	Qbuffer_list
	.align	8
Qbuffer_list:
	.quad	10656                   # 0x29a0
	.size	Qbuffer_list, 8

	.type	Qbuffer_list_update_hook,@object # @Qbuffer_list_update_hook
	.globl	Qbuffer_list_update_hook
	.align	8
Qbuffer_list_update_hook:
	.quad	10704                   # 0x29d0
	.size	Qbuffer_list_update_hook, 8

	.type	Qbuffer_name_history,@object # @Qbuffer_name_history
	.globl	Qbuffer_name_history
	.align	8
Qbuffer_name_history:
	.quad	10752                   # 0x2a00
	.size	Qbuffer_name_history, 8

	.type	Qbuffer_or_string_p,@object # @Qbuffer_or_string_p
	.globl	Qbuffer_or_string_p
	.align	8
Qbuffer_or_string_p:
	.quad	10800                   # 0x2a30
	.size	Qbuffer_or_string_p, 8

	.type	Qbuffer_position,@object # @Qbuffer_position
	.globl	Qbuffer_position
	.align	8
Qbuffer_position:
	.quad	10848                   # 0x2a60
	.size	Qbuffer_position, 8

	.type	Qbuffer_predicate,@object # @Qbuffer_predicate
	.globl	Qbuffer_predicate
	.align	8
Qbuffer_predicate:
	.quad	10896                   # 0x2a90
	.size	Qbuffer_predicate, 8

	.type	Qbuffer_read_only,@object # @Qbuffer_read_only
	.globl	Qbuffer_read_only
	.align	8
Qbuffer_read_only:
	.quad	10944                   # 0x2ac0
	.size	Qbuffer_read_only, 8

	.type	Qbufferp,@object        # @Qbufferp
	.globl	Qbufferp
	.align	8
Qbufferp:
	.quad	10992                   # 0x2af0
	.size	Qbufferp, 8

	.type	Qbuffers,@object        # @Qbuffers
	.globl	Qbuffers
	.align	8
Qbuffers:
	.quad	11040                   # 0x2b20
	.size	Qbuffers, 8

	.type	Qburied_buffer_list,@object # @Qburied_buffer_list
	.globl	Qburied_buffer_list
	.align	8
Qburied_buffer_list:
	.quad	11088                   # 0x2b50
	.size	Qburied_buffer_list, 8

	.type	Qbyte_code_meter,@object # @Qbyte_code_meter
	.globl	Qbyte_code_meter
	.align	8
Qbyte_code_meter:
	.quad	11136                   # 0x2b80
	.size	Qbyte_code_meter, 8

	.type	Qc,@object              # @Qc
	.globl	Qc
	.align	8
Qc:
	.quad	11184                   # 0x2bb0
	.size	Qc, 8

	.type	Qcall_process,@object   # @Qcall_process
	.globl	Qcall_process
	.align	8
Qcall_process:
	.quad	11232                   # 0x2be0
	.size	Qcall_process, 8

	.type	Qcall_process_region,@object # @Qcall_process_region
	.globl	Qcall_process_region
	.align	8
Qcall_process_region:
	.quad	11280                   # 0x2c10
	.size	Qcall_process_region, 8

	.type	Qcancel_timer,@object   # @Qcancel_timer
	.globl	Qcancel_timer
	.align	8
Qcancel_timer:
	.quad	11328                   # 0x2c40
	.size	Qcancel_timer, 8

	.type	Qcar_less_than_car,@object # @Qcar_less_than_car
	.globl	Qcar_less_than_car
	.align	8
Qcar_less_than_car:
	.quad	11376                   # 0x2c70
	.size	Qcar_less_than_car, 8

	.type	Qcase_fold_search,@object # @Qcase_fold_search
	.globl	Qcase_fold_search
	.align	8
Qcase_fold_search:
	.quad	11424                   # 0x2ca0
	.size	Qcase_fold_search, 8

	.type	Qcase_table,@object     # @Qcase_table
	.globl	Qcase_table
	.align	8
Qcase_table:
	.quad	11472                   # 0x2cd0
	.size	Qcase_table, 8

	.type	Qcase_table_p,@object   # @Qcase_table_p
	.globl	Qcase_table_p
	.align	8
Qcase_table_p:
	.quad	11520                   # 0x2d00
	.size	Qcase_table_p, 8

	.type	Qcategory,@object       # @Qcategory
	.globl	Qcategory
	.align	8
Qcategory:
	.quad	11568                   # 0x2d30
	.size	Qcategory, 8

	.type	Qcategory_table,@object # @Qcategory_table
	.globl	Qcategory_table
	.align	8
Qcategory_table:
	.quad	11616                   # 0x2d60
	.size	Qcategory_table, 8

	.type	Qcategory_table_p,@object # @Qcategory_table_p
	.globl	Qcategory_table_p
	.align	8
Qcategory_table_p:
	.quad	11664                   # 0x2d90
	.size	Qcategory_table_p, 8

	.type	Qcategoryp,@object      # @Qcategoryp
	.globl	Qcategoryp
	.align	8
Qcategoryp:
	.quad	11712                   # 0x2dc0
	.size	Qcategoryp, 8

	.type	Qcategorysetp,@object   # @Qcategorysetp
	.globl	Qcategorysetp
	.align	8
Qcategorysetp:
	.quad	11760                   # 0x2df0
	.size	Qcategorysetp, 8

	.type	Qccl,@object            # @Qccl
	.globl	Qccl
	.align	8
Qccl:
	.quad	11808                   # 0x2e20
	.size	Qccl, 8

	.type	Qccl_program_idx,@object # @Qccl_program_idx
	.globl	Qccl_program_idx
	.align	8
Qccl_program_idx:
	.quad	11856                   # 0x2e50
	.size	Qccl_program_idx, 8

	.type	Qcclp,@object           # @Qcclp
	.globl	Qcclp
	.align	8
Qcclp:
	.quad	11904                   # 0x2e80
	.size	Qcclp, 8

	.type	Qcdr,@object            # @Qcdr
	.globl	Qcdr
	.align	8
Qcdr:
	.quad	11952                   # 0x2eb0
	.size	Qcdr, 8

	.type	Qceiling,@object        # @Qceiling
	.globl	Qceiling
	.align	8
Qceiling:
	.quad	12000                   # 0x2ee0
	.size	Qceiling, 8

	.type	Qcenter,@object         # @Qcenter
	.globl	Qcenter
	.align	8
Qcenter:
	.quad	12048                   # 0x2f10
	.size	Qcenter, 8

	.type	Qchange_frame_size,@object # @Qchange_frame_size
	.globl	Qchange_frame_size
	.align	8
Qchange_frame_size:
	.quad	12096                   # 0x2f40
	.size	Qchange_frame_size, 8

	.type	Qchange_major_mode_hook,@object # @Qchange_major_mode_hook
	.globl	Qchange_major_mode_hook
	.align	8
Qchange_major_mode_hook:
	.quad	12144                   # 0x2f70
	.size	Qchange_major_mode_hook, 8

	.type	Qchar_code_property_table,@object # @Qchar_code_property_table
	.globl	Qchar_code_property_table
	.align	8
Qchar_code_property_table:
	.quad	12192                   # 0x2fa0
	.size	Qchar_code_property_table, 8

	.type	Qchar_or_string_p,@object # @Qchar_or_string_p
	.globl	Qchar_or_string_p
	.align	8
Qchar_or_string_p:
	.quad	12240                   # 0x2fd0
	.size	Qchar_or_string_p, 8

	.type	Qchar_script_table,@object # @Qchar_script_table
	.globl	Qchar_script_table
	.align	8
Qchar_script_table:
	.quad	12288                   # 0x3000
	.size	Qchar_script_table, 8

	.type	Qchar_table,@object     # @Qchar_table
	.globl	Qchar_table
	.align	8
Qchar_table:
	.quad	12336                   # 0x3030
	.size	Qchar_table, 8

	.type	Qchar_table_extra_slots,@object # @Qchar_table_extra_slots
	.globl	Qchar_table_extra_slots
	.align	8
Qchar_table_extra_slots:
	.quad	12384                   # 0x3060
	.size	Qchar_table_extra_slots, 8

	.type	Qchar_table_p,@object   # @Qchar_table_p
	.globl	Qchar_table_p
	.align	8
Qchar_table_p:
	.quad	12432                   # 0x3090
	.size	Qchar_table_p, 8

	.type	Qcharacterp,@object     # @Qcharacterp
	.globl	Qcharacterp
	.align	8
Qcharacterp:
	.quad	12480                   # 0x30c0
	.size	Qcharacterp, 8

	.type	Qcharset,@object        # @Qcharset
	.globl	Qcharset
	.align	8
Qcharset:
	.quad	12528                   # 0x30f0
	.size	Qcharset, 8

	.type	Qcharsetp,@object       # @Qcharsetp
	.globl	Qcharsetp
	.align	8
Qcharsetp:
	.quad	12576                   # 0x3120
	.size	Qcharsetp, 8

	.type	Qchoice,@object         # @Qchoice
	.globl	Qchoice
	.align	8
Qchoice:
	.quad	12624                   # 0x3150
	.size	Qchoice, 8

	.type	Qcircle,@object         # @Qcircle
	.globl	Qcircle
	.align	8
Qcircle:
	.quad	12672                   # 0x3180
	.size	Qcircle, 8

	.type	Qcircular_list,@object  # @Qcircular_list
	.globl	Qcircular_list
	.align	8
Qcircular_list:
	.quad	12720                   # 0x31b0
	.size	Qcircular_list, 8

	.type	Qclone_of,@object       # @Qclone_of
	.globl	Qclone_of
	.align	8
Qclone_of:
	.quad	12768                   # 0x31e0
	.size	Qclone_of, 8

	.type	Qclose,@object          # @Qclose
	.globl	Qclose
	.align	8
Qclose:
	.quad	12816                   # 0x3210
	.size	Qclose, 8

	.type	Qclose_nowrite,@object  # @Qclose_nowrite
	.globl	Qclose_nowrite
	.align	8
Qclose_nowrite:
	.quad	12864                   # 0x3240
	.size	Qclose_nowrite, 8

	.type	Qclose_write,@object    # @Qclose_write
	.globl	Qclose_write
	.align	8
Qclose_write:
	.quad	12912                   # 0x3270
	.size	Qclose_write, 8

	.type	Qclosed,@object         # @Qclosed
	.globl	Qclosed
	.align	8
Qclosed:
	.quad	12960                   # 0x32a0
	.size	Qclosed, 8

	.type	Qclosure,@object        # @Qclosure
	.globl	Qclosure
	.align	8
Qclosure:
	.quad	13008                   # 0x32d0
	.size	Qclosure, 8

	.type	Qcmajflt,@object        # @Qcmajflt
	.globl	Qcmajflt
	.align	8
Qcmajflt:
	.quad	13056                   # 0x3300
	.size	Qcmajflt, 8

	.type	Qcminflt,@object        # @Qcminflt
	.globl	Qcminflt
	.align	8
Qcminflt:
	.quad	13104                   # 0x3330
	.size	Qcminflt, 8

	.type	Qcode_conversion_map,@object # @Qcode_conversion_map
	.globl	Qcode_conversion_map
	.align	8
Qcode_conversion_map:
	.quad	13152                   # 0x3360
	.size	Qcode_conversion_map, 8

	.type	Qcode_conversion_map_id,@object # @Qcode_conversion_map_id
	.globl	Qcode_conversion_map_id
	.align	8
Qcode_conversion_map_id:
	.quad	13200                   # 0x3390
	.size	Qcode_conversion_map_id, 8

	.type	Qcodeset,@object        # @Qcodeset
	.globl	Qcodeset
	.align	8
Qcodeset:
	.quad	13248                   # 0x33c0
	.size	Qcodeset, 8

	.type	Qcoding_system_define_form,@object # @Qcoding_system_define_form
	.globl	Qcoding_system_define_form
	.align	8
Qcoding_system_define_form:
	.quad	13296                   # 0x33f0
	.size	Qcoding_system_define_form, 8

	.type	Qcoding_system_error,@object # @Qcoding_system_error
	.globl	Qcoding_system_error
	.align	8
Qcoding_system_error:
	.quad	13344                   # 0x3420
	.size	Qcoding_system_error, 8

	.type	Qcoding_system_history,@object # @Qcoding_system_history
	.globl	Qcoding_system_history
	.align	8
Qcoding_system_history:
	.quad	13392                   # 0x3450
	.size	Qcoding_system_history, 8

	.type	Qcoding_system_p,@object # @Qcoding_system_p
	.globl	Qcoding_system_p
	.align	8
Qcoding_system_p:
	.quad	13440                   # 0x3480
	.size	Qcoding_system_p, 8

	.type	Qcomm,@object           # @Qcomm
	.globl	Qcomm
	.align	8
Qcomm:
	.quad	13488                   # 0x34b0
	.size	Qcomm, 8

	.type	Qcomma,@object          # @Qcomma
	.globl	Qcomma
	.align	8
Qcomma:
	.quad	13536                   # 0x34e0
	.size	Qcomma, 8

	.type	Qcomma_at,@object       # @Qcomma_at
	.globl	Qcomma_at
	.align	8
Qcomma_at:
	.quad	13584                   # 0x3510
	.size	Qcomma_at, 8

	.type	Qcomma_dot,@object      # @Qcomma_dot
	.globl	Qcomma_dot
	.align	8
Qcomma_dot:
	.quad	13632                   # 0x3540
	.size	Qcomma_dot, 8

	.type	Qcommand_execute,@object # @Qcommand_execute
	.globl	Qcommand_execute
	.align	8
Qcommand_execute:
	.quad	13680                   # 0x3570
	.size	Qcommand_execute, 8

	.type	Qcommandp,@object       # @Qcommandp
	.globl	Qcommandp
	.align	8
Qcommandp:
	.quad	13728                   # 0x35a0
	.size	Qcommandp, 8

	.type	Qcomment_end_can_be_escaped,@object # @Qcomment_end_can_be_escaped
	.globl	Qcomment_end_can_be_escaped
	.align	8
Qcomment_end_can_be_escaped:
	.quad	13776                   # 0x35d0
	.size	Qcomment_end_can_be_escaped, 8

	.type	Qcompiled_function,@object # @Qcompiled_function
	.globl	Qcompiled_function
	.align	8
Qcompiled_function:
	.quad	13824                   # 0x3600
	.size	Qcompiled_function, 8

	.type	Qcompletion_ignore_case,@object # @Qcompletion_ignore_case
	.globl	Qcompletion_ignore_case
	.align	8
Qcompletion_ignore_case:
	.quad	13872                   # 0x3630
	.size	Qcompletion_ignore_case, 8

	.type	Qcomposition,@object    # @Qcomposition
	.globl	Qcomposition
	.align	8
Qcomposition:
	.quad	13920                   # 0x3660
	.size	Qcomposition, 8

	.type	Qcompound_text,@object  # @Qcompound_text
	.globl	Qcompound_text
	.align	8
Qcompound_text:
	.quad	13968                   # 0x3690
	.size	Qcompound_text, 8

	.type	Qconfig_changed_event,@object # @Qconfig_changed_event
	.globl	Qconfig_changed_event
	.align	8
Qconfig_changed_event:
	.quad	14016                   # 0x36c0
	.size	Qconfig_changed_event, 8

	.type	Qconnect,@object        # @Qconnect
	.globl	Qconnect
	.align	8
Qconnect:
	.quad	14064                   # 0x36f0
	.size	Qconnect, 8

	.type	Qcons,@object           # @Qcons
	.globl	Qcons
	.align	8
Qcons:
	.quad	14112                   # 0x3720
	.size	Qcons, 8

	.type	Qconses,@object         # @Qconses
	.globl	Qconses
	.align	8
Qconses:
	.quad	14160                   # 0x3750
	.size	Qconses, 8

	.type	Qconsp,@object          # @Qconsp
	.globl	Qconsp
	.align	8
Qconsp:
	.quad	14208                   # 0x3780
	.size	Qconsp, 8

	.type	Qcontinuation,@object   # @Qcontinuation
	.globl	Qcontinuation
	.align	8
Qcontinuation:
	.quad	14256                   # 0x37b0
	.size	Qcontinuation, 8

	.type	Qcopy_directory,@object # @Qcopy_directory
	.globl	Qcopy_directory
	.align	8
Qcopy_directory:
	.quad	14304                   # 0x37e0
	.size	Qcopy_directory, 8

	.type	Qcopy_file,@object      # @Qcopy_file
	.globl	Qcopy_file
	.align	8
Qcopy_file:
	.quad	14352                   # 0x3810
	.size	Qcopy_file, 8

	.type	Qcount,@object          # @Qcount
	.globl	Qcount
	.align	8
Qcount:
	.quad	14400                   # 0x3840
	.size	Qcount, 8

	.type	Qcreate,@object         # @Qcreate
	.globl	Qcreate
	.align	8
Qcreate:
	.quad	14448                   # 0x3870
	.size	Qcreate, 8

	.type	Qcstime,@object         # @Qcstime
	.globl	Qcstime
	.align	8
Qcstime:
	.quad	14496                   # 0x38a0
	.size	Qcstime, 8

	.type	Qctime,@object          # @Qctime
	.globl	Qctime
	.align	8
Qctime:
	.quad	14544                   # 0x38d0
	.size	Qctime, 8

	.type	Qcurrent_input_method,@object # @Qcurrent_input_method
	.globl	Qcurrent_input_method
	.align	8
Qcurrent_input_method:
	.quad	14592                   # 0x3900
	.size	Qcurrent_input_method, 8

	.type	Qcurrent_load_list,@object # @Qcurrent_load_list
	.globl	Qcurrent_load_list
	.align	8
Qcurrent_load_list:
	.quad	14640                   # 0x3930
	.size	Qcurrent_load_list, 8

	.type	Qcursor,@object         # @Qcursor
	.globl	Qcursor
	.align	8
Qcursor:
	.quad	14688                   # 0x3960
	.size	Qcursor, 8

	.type	Qcursor_color,@object   # @Qcursor_color
	.globl	Qcursor_color
	.align	8
Qcursor_color:
	.quad	14736                   # 0x3990
	.size	Qcursor_color, 8

	.type	Qcursor_in_echo_area,@object # @Qcursor_in_echo_area
	.globl	Qcursor_in_echo_area
	.align	8
Qcursor_in_echo_area:
	.quad	14784                   # 0x39c0
	.size	Qcursor_in_echo_area, 8

	.type	Qcursor_type,@object    # @Qcursor_type
	.globl	Qcursor_type
	.align	8
Qcursor_type:
	.quad	14832                   # 0x39f0
	.size	Qcursor_type, 8

	.type	Qcustom_variable_p,@object # @Qcustom_variable_p
	.globl	Qcustom_variable_p
	.align	8
Qcustom_variable_p:
	.quad	14880                   # 0x3a20
	.size	Qcustom_variable_p, 8

	.type	Qcutime,@object         # @Qcutime
	.globl	Qcutime
	.align	8
Qcutime:
	.quad	14928                   # 0x3a50
	.size	Qcutime, 8

	.type	Qcyclic_function_indirection,@object # @Qcyclic_function_indirection
	.globl	Qcyclic_function_indirection
	.align	8
Qcyclic_function_indirection:
	.quad	14976                   # 0x3a80
	.size	Qcyclic_function_indirection, 8

	.type	Qcyclic_variable_indirection,@object # @Qcyclic_variable_indirection
	.globl	Qcyclic_variable_indirection
	.align	8
Qcyclic_variable_indirection:
	.quad	15024                   # 0x3ab0
	.size	Qcyclic_variable_indirection, 8

	.type	Qd,@object              # @Qd
	.globl	Qd
	.align	8
Qd:
	.quad	15072                   # 0x3ae0
	.size	Qd, 8

	.type	Qdata,@object           # @Qdata
	.globl	Qdata
	.align	8
Qdata:
	.quad	15120                   # 0x3b10
	.size	Qdata, 8

	.type	Qdatagram,@object       # @Qdatagram
	.globl	Qdatagram
	.align	8
Qdatagram:
	.quad	15168                   # 0x3b40
	.size	Qdatagram, 8

	.type	Qdays,@object           # @Qdays
	.globl	Qdays
	.align	8
Qdays:
	.quad	15216                   # 0x3b70
	.size	Qdays, 8

	.type	Qdbus_event,@object     # @Qdbus_event
	.globl	Qdbus_event
	.align	8
Qdbus_event:
	.quad	15264                   # 0x3ba0
	.size	Qdbus_event, 8

	.type	Qdeactivate_mark,@object # @Qdeactivate_mark
	.globl	Qdeactivate_mark
	.align	8
Qdeactivate_mark:
	.quad	15312                   # 0x3bd0
	.size	Qdeactivate_mark, 8

	.type	Qdebug,@object          # @Qdebug
	.globl	Qdebug
	.align	8
Qdebug:
	.quad	15360                   # 0x3c00
	.size	Qdebug, 8

	.type	Qdebug_on_next_call,@object # @Qdebug_on_next_call
	.globl	Qdebug_on_next_call
	.align	8
Qdebug_on_next_call:
	.quad	15408                   # 0x3c30
	.size	Qdebug_on_next_call, 8

	.type	Qdecomposed_characters,@object # @Qdecomposed_characters
	.globl	Qdecomposed_characters
	.align	8
Qdecomposed_characters:
	.quad	15456                   # 0x3c60
	.size	Qdecomposed_characters, 8

	.type	Qdefalias_fset_function,@object # @Qdefalias_fset_function
	.globl	Qdefalias_fset_function
	.align	8
Qdefalias_fset_function:
	.quad	15504                   # 0x3c90
	.size	Qdefalias_fset_function, 8

	.type	Qdefault,@object        # @Qdefault
	.globl	Qdefault
	.align	8
Qdefault:
	.quad	15552                   # 0x3cc0
	.size	Qdefault, 8

	.type	Qdefault_directory,@object # @Qdefault_directory
	.globl	Qdefault_directory
	.align	8
Qdefault_directory:
	.quad	15600                   # 0x3cf0
	.size	Qdefault_directory, 8

	.type	Qdeferred_action_function,@object # @Qdeferred_action_function
	.globl	Qdeferred_action_function
	.align	8
Qdeferred_action_function:
	.quad	15648                   # 0x3d20
	.size	Qdeferred_action_function, 8

	.type	Qdefun,@object          # @Qdefun
	.globl	Qdefun
	.align	8
Qdefun:
	.quad	15696                   # 0x3d50
	.size	Qdefun, 8

	.type	Qdelay,@object          # @Qdelay
	.globl	Qdelay
	.align	8
Qdelay:
	.quad	15744                   # 0x3d80
	.size	Qdelay, 8

	.type	Qdelayed_warnings_hook,@object # @Qdelayed_warnings_hook
	.globl	Qdelayed_warnings_hook
	.align	8
Qdelayed_warnings_hook:
	.quad	15792                   # 0x3db0
	.size	Qdelayed_warnings_hook, 8

	.type	Qdelete,@object         # @Qdelete
	.globl	Qdelete
	.align	8
Qdelete:
	.quad	15840                   # 0x3de0
	.size	Qdelete, 8

	.type	Qdelete_by_moving_to_trash,@object # @Qdelete_by_moving_to_trash
	.globl	Qdelete_by_moving_to_trash
	.align	8
Qdelete_by_moving_to_trash:
	.quad	15888                   # 0x3e10
	.size	Qdelete_by_moving_to_trash, 8

	.type	Qdelete_directory,@object # @Qdelete_directory
	.globl	Qdelete_directory
	.align	8
Qdelete_directory:
	.quad	15936                   # 0x3e40
	.size	Qdelete_directory, 8

	.type	Qdelete_file,@object    # @Qdelete_file
	.globl	Qdelete_file
	.align	8
Qdelete_file:
	.quad	15984                   # 0x3e70
	.size	Qdelete_file, 8

	.type	Qdelete_frame,@object   # @Qdelete_frame
	.globl	Qdelete_frame
	.align	8
Qdelete_frame:
	.quad	16032                   # 0x3ea0
	.size	Qdelete_frame, 8

	.type	Qdelete_frame_functions,@object # @Qdelete_frame_functions
	.globl	Qdelete_frame_functions
	.align	8
Qdelete_frame_functions:
	.quad	16080                   # 0x3ed0
	.size	Qdelete_frame_functions, 8

	.type	Qdelete_self,@object    # @Qdelete_self
	.globl	Qdelete_self
	.align	8
Qdelete_self:
	.quad	16128                   # 0x3f00
	.size	Qdelete_self, 8

	.type	Qdelete_terminal_functions,@object # @Qdelete_terminal_functions
	.globl	Qdelete_terminal_functions
	.align	8
Qdelete_terminal_functions:
	.quad	16176                   # 0x3f30
	.size	Qdelete_terminal_functions, 8

	.type	Qdelete_window,@object  # @Qdelete_window
	.globl	Qdelete_window
	.align	8
Qdelete_window:
	.quad	16224                   # 0x3f60
	.size	Qdelete_window, 8

	.type	Qdir_ok,@object         # @Qdir_ok
	.globl	Qdir_ok
	.align	8
Qdir_ok:
	.quad	16272                   # 0x3f90
	.size	Qdir_ok, 8

	.type	Qdirectory_file_name,@object # @Qdirectory_file_name
	.globl	Qdirectory_file_name
	.align	8
Qdirectory_file_name:
	.quad	16320                   # 0x3fc0
	.size	Qdirectory_file_name, 8

	.type	Qdirectory_files,@object # @Qdirectory_files
	.globl	Qdirectory_files
	.align	8
Qdirectory_files:
	.quad	16368                   # 0x3ff0
	.size	Qdirectory_files, 8

	.type	Qdirectory_files_and_attributes,@object # @Qdirectory_files_and_attributes
	.globl	Qdirectory_files_and_attributes
	.align	8
Qdirectory_files_and_attributes:
	.quad	16416                   # 0x4020
	.size	Qdirectory_files_and_attributes, 8

	.type	Qdisabled,@object       # @Qdisabled
	.globl	Qdisabled
	.align	8
Qdisabled:
	.quad	16464                   # 0x4050
	.size	Qdisabled, 8

	.type	Qdisplay,@object        # @Qdisplay
	.globl	Qdisplay
	.align	8
Qdisplay:
	.quad	16512                   # 0x4080
	.size	Qdisplay, 8

	.type	Qdisplay_buffer,@object # @Qdisplay_buffer
	.globl	Qdisplay_buffer
	.align	8
Qdisplay_buffer:
	.quad	16560                   # 0x40b0
	.size	Qdisplay_buffer, 8

	.type	Qdisplay_table,@object  # @Qdisplay_table
	.globl	Qdisplay_table
	.align	8
Qdisplay_table:
	.quad	16608                   # 0x40e0
	.size	Qdisplay_table, 8

	.type	Qdisplay_type,@object   # @Qdisplay_type
	.globl	Qdisplay_type
	.align	8
Qdisplay_type:
	.quad	16656                   # 0x4110
	.size	Qdisplay_type, 8

	.type	Qdo_after_load_evaluation,@object # @Qdo_after_load_evaluation
	.globl	Qdo_after_load_evaluation
	.align	8
Qdo_after_load_evaluation:
	.quad	16704                   # 0x4140
	.size	Qdo_after_load_evaluation, 8

	.type	Qdomain_error,@object   # @Qdomain_error
	.globl	Qdomain_error
	.align	8
Qdomain_error:
	.quad	16752                   # 0x4170
	.size	Qdomain_error, 8

	.type	Qdont_follow,@object    # @Qdont_follow
	.globl	Qdont_follow
	.align	8
Qdont_follow:
	.quad	16800                   # 0x41a0
	.size	Qdont_follow, 8

	.type	Qdos,@object            # @Qdos
	.globl	Qdos
	.align	8
Qdos:
	.quad	16848                   # 0x41d0
	.size	Qdos, 8

	.type	Qdown,@object           # @Qdown
	.globl	Qdown
	.align	8
Qdown:
	.quad	16896                   # 0x4200
	.size	Qdown, 8

	.type	Qdrag_n_drop,@object    # @Qdrag_n_drop
	.globl	Qdrag_n_drop
	.align	8
Qdrag_n_drop:
	.quad	16944                   # 0x4230
	.size	Qdrag_n_drop, 8

	.type	Qdragging,@object       # @Qdragging
	.globl	Qdragging
	.align	8
Qdragging:
	.quad	16992                   # 0x4260
	.size	Qdragging, 8

	.type	Qecho_area_clear_hook,@object # @Qecho_area_clear_hook
	.globl	Qecho_area_clear_hook
	.align	8
Qecho_area_clear_hook:
	.quad	17040                   # 0x4290
	.size	Qecho_area_clear_hook, 8

	.type	Qecho_keystrokes,@object # @Qecho_keystrokes
	.globl	Qecho_keystrokes
	.align	8
Qecho_keystrokes:
	.quad	17088                   # 0x42c0
	.size	Qecho_keystrokes, 8

	.type	Qedge_detection,@object # @Qedge_detection
	.globl	Qedge_detection
	.align	8
Qedge_detection:
	.quad	17136                   # 0x42f0
	.size	Qedge_detection, 8

	.type	Qegid,@object           # @Qegid
	.globl	Qegid
	.align	8
Qegid:
	.quad	17184                   # 0x4320
	.size	Qegid, 8

	.type	Qeight_bit,@object      # @Qeight_bit
	.globl	Qeight_bit
	.align	8
Qeight_bit:
	.quad	17232                   # 0x4350
	.size	Qeight_bit, 8

	.type	Qemacs,@object          # @Qemacs
	.globl	Qemacs
	.align	8
Qemacs:
	.quad	17280                   # 0x4380
	.size	Qemacs, 8

	.type	Qemacs_mule,@object     # @Qemacs_mule
	.globl	Qemacs_mule
	.align	8
Qemacs_mule:
	.quad	17328                   # 0x43b0
	.size	Qemacs_mule, 8

	.type	Qemboss,@object         # @Qemboss
	.globl	Qemboss
	.align	8
Qemboss:
	.quad	17376                   # 0x43e0
	.size	Qemboss, 8

	.type	Qempty_box,@object      # @Qempty_box
	.globl	Qempty_box
	.align	8
Qempty_box:
	.quad	17424                   # 0x4410
	.size	Qempty_box, 8

	.type	Qempty_line,@object     # @Qempty_line
	.globl	Qempty_line
	.align	8
Qempty_line:
	.quad	17472                   # 0x4440
	.size	Qempty_line, 8

	.type	Qenable_recursive_minibuffers,@object # @Qenable_recursive_minibuffers
	.globl	Qenable_recursive_minibuffers
	.align	8
Qenable_recursive_minibuffers:
	.quad	17520                   # 0x4470
	.size	Qenable_recursive_minibuffers, 8

	.type	Qend_of_buffer,@object  # @Qend_of_buffer
	.globl	Qend_of_buffer
	.align	8
Qend_of_buffer:
	.quad	17568                   # 0x44a0
	.size	Qend_of_buffer, 8

	.type	Qend_of_file,@object    # @Qend_of_file
	.globl	Qend_of_file
	.align	8
Qend_of_file:
	.quad	17616                   # 0x44d0
	.size	Qend_of_file, 8

	.type	Qend_scroll,@object     # @Qend_scroll
	.globl	Qend_scroll
	.align	8
Qend_scroll:
	.quad	17664                   # 0x4500
	.size	Qend_scroll, 8

	.type	Qeq,@object             # @Qeq
	.globl	Qeq
	.align	8
Qeq:
	.quad	17712                   # 0x4530
	.size	Qeq, 8

	.type	Qeql,@object            # @Qeql
	.globl	Qeql
	.align	8
Qeql:
	.quad	17760                   # 0x4560
	.size	Qeql, 8

	.type	Qequal,@object          # @Qequal
	.globl	Qequal
	.align	8
Qequal:
	.quad	17808                   # 0x4590
	.size	Qequal, 8

	.type	Qerror,@object          # @Qerror
	.globl	Qerror
	.align	8
Qerror:
	.quad	17856                   # 0x45c0
	.size	Qerror, 8

	.type	Qerror_conditions,@object # @Qerror_conditions
	.globl	Qerror_conditions
	.align	8
Qerror_conditions:
	.quad	17904                   # 0x45f0
	.size	Qerror_conditions, 8

	.type	Qerror_message,@object  # @Qerror_message
	.globl	Qerror_message
	.align	8
Qerror_message:
	.quad	17952                   # 0x4620
	.size	Qerror_message, 8

	.type	Qescape_glyph,@object   # @Qescape_glyph
	.globl	Qescape_glyph
	.align	8
Qescape_glyph:
	.quad	18000                   # 0x4650
	.size	Qescape_glyph, 8

	.type	Qetime,@object          # @Qetime
	.globl	Qetime
	.align	8
Qetime:
	.quad	18048                   # 0x4680
	.size	Qetime, 8

	.type	Qeuid,@object           # @Qeuid
	.globl	Qeuid
	.align	8
Qeuid:
	.quad	18096                   # 0x46b0
	.size	Qeuid, 8

	.type	Qeval,@object           # @Qeval
	.globl	Qeval
	.align	8
Qeval:
	.quad	18144                   # 0x46e0
	.size	Qeval, 8

	.type	Qeval_buffer_list,@object # @Qeval_buffer_list
	.globl	Qeval_buffer_list
	.align	8
Qeval_buffer_list:
	.quad	18192                   # 0x4710
	.size	Qeval_buffer_list, 8

	.type	Qevaporate,@object      # @Qevaporate
	.globl	Qevaporate
	.align	8
Qevaporate:
	.quad	18240                   # 0x4740
	.size	Qevaporate, 8

	.type	Qeven,@object           # @Qeven
	.globl	Qeven
	.align	8
Qeven:
	.quad	18288                   # 0x4770
	.size	Qeven, 8

	.type	Qevent_kind,@object     # @Qevent_kind
	.globl	Qevent_kind
	.align	8
Qevent_kind:
	.quad	18336                   # 0x47a0
	.size	Qevent_kind, 8

	.type	Qevent_symbol_element_mask,@object # @Qevent_symbol_element_mask
	.globl	Qevent_symbol_element_mask
	.align	8
Qevent_symbol_element_mask:
	.quad	18384                   # 0x47d0
	.size	Qevent_symbol_element_mask, 8

	.type	Qevent_symbol_elements,@object # @Qevent_symbol_elements
	.globl	Qevent_symbol_elements
	.align	8
Qevent_symbol_elements:
	.quad	18432                   # 0x4800
	.size	Qevent_symbol_elements, 8

	.type	Qexcl,@object           # @Qexcl
	.globl	Qexcl
	.align	8
Qexcl:
	.quad	18480                   # 0x4830
	.size	Qexcl, 8

	.type	Qexcl_unlink,@object    # @Qexcl_unlink
	.globl	Qexcl_unlink
	.align	8
Qexcl_unlink:
	.quad	18528                   # 0x4860
	.size	Qexcl_unlink, 8

	.type	Qexit,@object           # @Qexit
	.globl	Qexit
	.align	8
Qexit:
	.quad	18576                   # 0x4890
	.size	Qexit, 8

	.type	Qexpand_abbrev,@object  # @Qexpand_abbrev
	.globl	Qexpand_abbrev
	.align	8
Qexpand_abbrev:
	.quad	18624                   # 0x48c0
	.size	Qexpand_abbrev, 8

	.type	Qexpand_file_name,@object # @Qexpand_file_name
	.globl	Qexpand_file_name
	.align	8
Qexpand_file_name:
	.quad	18672                   # 0x48f0
	.size	Qexpand_file_name, 8

	.type	Qexplicit,@object       # @Qexplicit
	.globl	Qexplicit
	.align	8
Qexplicit:
	.quad	18720                   # 0x4920
	.size	Qexplicit, 8

	.type	Qexplicit_name,@object  # @Qexplicit_name
	.globl	Qexplicit_name
	.align	8
Qexplicit_name:
	.quad	18768                   # 0x4950
	.size	Qexplicit_name, 8

	.type	Qextension_data,@object # @Qextension_data
	.globl	Qextension_data
	.align	8
Qextension_data:
	.quad	18816                   # 0x4980
	.size	Qextension_data, 8

	.type	Qexternal_border_size,@object # @Qexternal_border_size
	.globl	Qexternal_border_size
	.align	8
Qexternal_border_size:
	.quad	18864                   # 0x49b0
	.size	Qexternal_border_size, 8

	.type	Qexternal_debugging_output,@object # @Qexternal_debugging_output
	.globl	Qexternal_debugging_output
	.align	8
Qexternal_debugging_output:
	.quad	18912                   # 0x49e0
	.size	Qexternal_debugging_output, 8

	.type	Qextra_bold,@object     # @Qextra_bold
	.globl	Qextra_bold
	.align	8
Qextra_bold:
	.quad	18960                   # 0x4a10
	.size	Qextra_bold, 8

	.type	Qextra_light,@object    # @Qextra_light
	.globl	Qextra_light
	.align	8
Qextra_light:
	.quad	19008                   # 0x4a40
	.size	Qextra_light, 8

	.type	Qface,@object           # @Qface
	.globl	Qface
	.align	8
Qface:
	.quad	19056                   # 0x4a70
	.size	Qface, 8

	.type	Qface_alias,@object     # @Qface_alias
	.globl	Qface_alias
	.align	8
Qface_alias:
	.quad	19104                   # 0x4aa0
	.size	Qface_alias, 8

	.type	Qface_no_inherit,@object # @Qface_no_inherit
	.globl	Qface_no_inherit
	.align	8
Qface_no_inherit:
	.quad	19152                   # 0x4ad0
	.size	Qface_no_inherit, 8

	.type	Qface_set_after_frame_default,@object # @Qface_set_after_frame_default
	.globl	Qface_set_after_frame_default
	.align	8
Qface_set_after_frame_default:
	.quad	19200                   # 0x4b00
	.size	Qface_set_after_frame_default, 8

	.type	Qfailed,@object         # @Qfailed
	.globl	Qfailed
	.align	8
Qfailed:
	.quad	19248                   # 0x4b30
	.size	Qfailed, 8

	.type	Qfboundp,@object        # @Qfboundp
	.globl	Qfboundp
	.align	8
Qfboundp:
	.quad	19296                   # 0x4b60
	.size	Qfboundp, 8

	.type	Qfield,@object          # @Qfield
	.globl	Qfield
	.align	8
Qfield:
	.quad	19344                   # 0x4b90
	.size	Qfield, 8

	.type	Qfile_accessible_directory_p,@object # @Qfile_accessible_directory_p
	.globl	Qfile_accessible_directory_p
	.align	8
Qfile_accessible_directory_p:
	.quad	19392                   # 0x4bc0
	.size	Qfile_accessible_directory_p, 8

	.type	Qfile_acl,@object       # @Qfile_acl
	.globl	Qfile_acl
	.align	8
Qfile_acl:
	.quad	19440                   # 0x4bf0
	.size	Qfile_acl, 8

	.type	Qfile_already_exists,@object # @Qfile_already_exists
	.globl	Qfile_already_exists
	.align	8
Qfile_already_exists:
	.quad	19488                   # 0x4c20
	.size	Qfile_already_exists, 8

	.type	Qfile_attributes,@object # @Qfile_attributes
	.globl	Qfile_attributes
	.align	8
Qfile_attributes:
	.quad	19536                   # 0x4c50
	.size	Qfile_attributes, 8

	.type	Qfile_attributes_lessp,@object # @Qfile_attributes_lessp
	.globl	Qfile_attributes_lessp
	.align	8
Qfile_attributes_lessp:
	.quad	19584                   # 0x4c80
	.size	Qfile_attributes_lessp, 8

	.type	Qfile_date_error,@object # @Qfile_date_error
	.globl	Qfile_date_error
	.align	8
Qfile_date_error:
	.quad	19632                   # 0x4cb0
	.size	Qfile_date_error, 8

	.type	Qfile_directory_p,@object # @Qfile_directory_p
	.globl	Qfile_directory_p
	.align	8
Qfile_directory_p:
	.quad	19680                   # 0x4ce0
	.size	Qfile_directory_p, 8

	.type	Qfile_error,@object     # @Qfile_error
	.globl	Qfile_error
	.align	8
Qfile_error:
	.quad	19728                   # 0x4d10
	.size	Qfile_error, 8

	.type	Qfile_executable_p,@object # @Qfile_executable_p
	.globl	Qfile_executable_p
	.align	8
Qfile_executable_p:
	.quad	19776                   # 0x4d40
	.size	Qfile_executable_p, 8

	.type	Qfile_exists_p,@object  # @Qfile_exists_p
	.globl	Qfile_exists_p
	.align	8
Qfile_exists_p:
	.quad	19824                   # 0x4d70
	.size	Qfile_exists_p, 8

	.type	Qfile_modes,@object     # @Qfile_modes
	.globl	Qfile_modes
	.align	8
Qfile_modes:
	.quad	19872                   # 0x4da0
	.size	Qfile_modes, 8

	.type	Qfile_name_all_completions,@object # @Qfile_name_all_completions
	.globl	Qfile_name_all_completions
	.align	8
Qfile_name_all_completions:
	.quad	19920                   # 0x4dd0
	.size	Qfile_name_all_completions, 8

	.type	Qfile_name_as_directory,@object # @Qfile_name_as_directory
	.globl	Qfile_name_as_directory
	.align	8
Qfile_name_as_directory:
	.quad	19968                   # 0x4e00
	.size	Qfile_name_as_directory, 8

	.type	Qfile_name_completion,@object # @Qfile_name_completion
	.globl	Qfile_name_completion
	.align	8
Qfile_name_completion:
	.quad	20016                   # 0x4e30
	.size	Qfile_name_completion, 8

	.type	Qfile_name_directory,@object # @Qfile_name_directory
	.globl	Qfile_name_directory
	.align	8
Qfile_name_directory:
	.quad	20064                   # 0x4e60
	.size	Qfile_name_directory, 8

	.type	Qfile_name_handler_alist,@object # @Qfile_name_handler_alist
	.globl	Qfile_name_handler_alist
	.align	8
Qfile_name_handler_alist:
	.quad	20112                   # 0x4e90
	.size	Qfile_name_handler_alist, 8

	.type	Qfile_name_history,@object # @Qfile_name_history
	.globl	Qfile_name_history
	.align	8
Qfile_name_history:
	.quad	20160                   # 0x4ec0
	.size	Qfile_name_history, 8

	.type	Qfile_name_nondirectory,@object # @Qfile_name_nondirectory
	.globl	Qfile_name_nondirectory
	.align	8
Qfile_name_nondirectory:
	.quad	20208                   # 0x4ef0
	.size	Qfile_name_nondirectory, 8

	.type	Qfile_newer_than_file_p,@object # @Qfile_newer_than_file_p
	.globl	Qfile_newer_than_file_p
	.align	8
Qfile_newer_than_file_p:
	.quad	20256                   # 0x4f20
	.size	Qfile_newer_than_file_p, 8

	.type	Qfile_notify,@object    # @Qfile_notify
	.globl	Qfile_notify
	.align	8
Qfile_notify:
	.quad	20304                   # 0x4f50
	.size	Qfile_notify, 8

	.type	Qfile_notify_error,@object # @Qfile_notify_error
	.globl	Qfile_notify_error
	.align	8
Qfile_notify_error:
	.quad	20352                   # 0x4f80
	.size	Qfile_notify_error, 8

	.type	Qfile_readable_p,@object # @Qfile_readable_p
	.globl	Qfile_readable_p
	.align	8
Qfile_readable_p:
	.quad	20400                   # 0x4fb0
	.size	Qfile_readable_p, 8

	.type	Qfile_regular_p,@object # @Qfile_regular_p
	.globl	Qfile_regular_p
	.align	8
Qfile_regular_p:
	.quad	20448                   # 0x4fe0
	.size	Qfile_regular_p, 8

	.type	Qfile_selinux_context,@object # @Qfile_selinux_context
	.globl	Qfile_selinux_context
	.align	8
Qfile_selinux_context:
	.quad	20496                   # 0x5010
	.size	Qfile_selinux_context, 8

	.type	Qfile_symlink_p,@object # @Qfile_symlink_p
	.globl	Qfile_symlink_p
	.align	8
Qfile_symlink_p:
	.quad	20544                   # 0x5040
	.size	Qfile_symlink_p, 8

	.type	Qfile_truename,@object  # @Qfile_truename
	.globl	Qfile_truename
	.align	8
Qfile_truename:
	.quad	20592                   # 0x5070
	.size	Qfile_truename, 8

	.type	Qfile_writable_p,@object # @Qfile_writable_p
	.globl	Qfile_writable_p
	.align	8
Qfile_writable_p:
	.quad	20640                   # 0x50a0
	.size	Qfile_writable_p, 8

	.type	Qfinalizer,@object      # @Qfinalizer
	.globl	Qfinalizer
	.align	8
Qfinalizer:
	.quad	20688                   # 0x50d0
	.size	Qfinalizer, 8

	.type	Qfirst_change_hook,@object # @Qfirst_change_hook
	.globl	Qfirst_change_hook
	.align	8
Qfirst_change_hook:
	.quad	20736                   # 0x5100
	.size	Qfirst_change_hook, 8

	.type	Qfloat,@object          # @Qfloat
	.globl	Qfloat
	.align	8
Qfloat:
	.quad	20784                   # 0x5130
	.size	Qfloat, 8

	.type	Qfloatp,@object         # @Qfloatp
	.globl	Qfloatp
	.align	8
Qfloatp:
	.quad	20832                   # 0x5160
	.size	Qfloatp, 8

	.type	Qfloats,@object         # @Qfloats
	.globl	Qfloats
	.align	8
Qfloats:
	.quad	20880                   # 0x5190
	.size	Qfloats, 8

	.type	Qfloor,@object          # @Qfloor
	.globl	Qfloor
	.align	8
Qfloor:
	.quad	20928                   # 0x51c0
	.size	Qfloor, 8

	.type	Qfocus_in,@object       # @Qfocus_in
	.globl	Qfocus_in
	.align	8
Qfocus_in:
	.quad	20976                   # 0x51f0
	.size	Qfocus_in, 8

	.type	Qfocus_out,@object      # @Qfocus_out
	.globl	Qfocus_out
	.align	8
Qfocus_out:
	.quad	21024                   # 0x5220
	.size	Qfocus_out, 8

	.type	Qfont,@object           # @Qfont
	.globl	Qfont
	.align	8
Qfont:
	.quad	21072                   # 0x5250
	.size	Qfont, 8

	.type	Qfont_backend,@object   # @Qfont_backend
	.globl	Qfont_backend
	.align	8
Qfont_backend:
	.quad	21120                   # 0x5280
	.size	Qfont_backend, 8

	.type	Qfont_entity,@object    # @Qfont_entity
	.globl	Qfont_entity
	.align	8
Qfont_entity:
	.quad	21168                   # 0x52b0
	.size	Qfont_entity, 8

	.type	Qfont_name,@object      # @Qfont_name
	.globl	Qfont_name
	.align	8
Qfont_name:
	.quad	21216                   # 0x52e0
	.size	Qfont_name, 8

	.type	Qfont_object,@object    # @Qfont_object
	.globl	Qfont_object
	.align	8
Qfont_object:
	.quad	21264                   # 0x5310
	.size	Qfont_object, 8

	.type	Qfont_param,@object     # @Qfont_param
	.globl	Qfont_param
	.align	8
Qfont_param:
	.quad	21312                   # 0x5340
	.size	Qfont_param, 8

	.type	Qfont_render,@object    # @Qfont_render
	.globl	Qfont_render
	.align	8
Qfont_render:
	.quad	21360                   # 0x5370
	.size	Qfont_render, 8

	.type	Qfont_spec,@object      # @Qfont_spec
	.globl	Qfont_spec
	.align	8
Qfont_spec:
	.quad	21408                   # 0x53a0
	.size	Qfont_spec, 8

	.type	Qfontification_functions,@object # @Qfontification_functions
	.globl	Qfontification_functions
	.align	8
Qfontification_functions:
	.quad	21456                   # 0x53d0
	.size	Qfontification_functions, 8

	.type	Qfontified,@object      # @Qfontified
	.globl	Qfontified
	.align	8
Qfontified:
	.quad	21504                   # 0x5400
	.size	Qfontified, 8

	.type	Qfontset,@object        # @Qfontset
	.globl	Qfontset
	.align	8
Qfontset:
	.quad	21552                   # 0x5430
	.size	Qfontset, 8

	.type	Qfontset_info,@object   # @Qfontset_info
	.globl	Qfontset_info
	.align	8
Qfontset_info:
	.quad	21600                   # 0x5460
	.size	Qfontset_info, 8

	.type	Qforeground_color,@object # @Qforeground_color
	.globl	Qforeground_color
	.align	8
Qforeground_color:
	.quad	21648                   # 0x5490
	.size	Qforeground_color, 8

	.type	Qforeign_selection,@object # @Qforeign_selection
	.globl	Qforeign_selection
	.align	8
Qforeign_selection:
	.quad	21696                   # 0x54c0
	.size	Qforeign_selection, 8

	.type	Qformat_annotate_function,@object # @Qformat_annotate_function
	.globl	Qformat_annotate_function
	.align	8
Qformat_annotate_function:
	.quad	21744                   # 0x54f0
	.size	Qformat_annotate_function, 8

	.type	Qformat_decode,@object  # @Qformat_decode
	.globl	Qformat_decode
	.align	8
Qformat_decode:
	.quad	21792                   # 0x5520
	.size	Qformat_decode, 8

	.type	Qfraction,@object       # @Qfraction
	.globl	Qfraction
	.align	8
Qfraction:
	.quad	21840                   # 0x5550
	.size	Qfraction, 8

	.type	Qframe,@object          # @Qframe
	.globl	Qframe
	.align	8
Qframe:
	.quad	21888                   # 0x5580
	.size	Qframe, 8

	.type	Qframe_inhibit_resize,@object # @Qframe_inhibit_resize
	.globl	Qframe_inhibit_resize
	.align	8
Qframe_inhibit_resize:
	.quad	21936                   # 0x55b0
	.size	Qframe_inhibit_resize, 8

	.type	Qframe_live_p,@object   # @Qframe_live_p
	.globl	Qframe_live_p
	.align	8
Qframe_live_p:
	.quad	21984                   # 0x55e0
	.size	Qframe_live_p, 8

	.type	Qframe_set_background_mode,@object # @Qframe_set_background_mode
	.globl	Qframe_set_background_mode
	.align	8
Qframe_set_background_mode:
	.quad	22032                   # 0x5610
	.size	Qframe_set_background_mode, 8

	.type	Qframe_windows_min_size,@object # @Qframe_windows_min_size
	.globl	Qframe_windows_min_size
	.align	8
Qframe_windows_min_size:
	.quad	22080                   # 0x5640
	.size	Qframe_windows_min_size, 8

	.type	Qframep,@object         # @Qframep
	.globl	Qframep
	.align	8
Qframep:
	.quad	22128                   # 0x5670
	.size	Qframep, 8

	.type	Qframes,@object         # @Qframes
	.globl	Qframes
	.align	8
Qframes:
	.quad	22176                   # 0x56a0
	.size	Qframes, 8

	.type	Qfree_frame_menubar_1,@object # @Qfree_frame_menubar_1
	.globl	Qfree_frame_menubar_1
	.align	8
Qfree_frame_menubar_1:
	.quad	22224                   # 0x56d0
	.size	Qfree_frame_menubar_1, 8

	.type	Qfree_frame_menubar_2,@object # @Qfree_frame_menubar_2
	.globl	Qfree_frame_menubar_2
	.align	8
Qfree_frame_menubar_2:
	.quad	22272                   # 0x5700
	.size	Qfree_frame_menubar_2, 8

	.type	Qfree_frame_tool_bar,@object # @Qfree_frame_tool_bar
	.globl	Qfree_frame_tool_bar
	.align	8
Qfree_frame_tool_bar:
	.quad	22320                   # 0x5730
	.size	Qfree_frame_tool_bar, 8

	.type	Qfreetype,@object       # @Qfreetype
	.globl	Qfreetype
	.align	8
Qfreetype:
	.quad	22368                   # 0x5760
	.size	Qfreetype, 8

	.type	Qfringe,@object         # @Qfringe
	.globl	Qfringe
	.align	8
Qfringe:
	.quad	22416                   # 0x5790
	.size	Qfringe, 8

	.type	Qfront_sticky,@object   # @Qfront_sticky
	.globl	Qfront_sticky
	.align	8
Qfront_sticky:
	.quad	22464                   # 0x57c0
	.size	Qfront_sticky, 8

	.type	Qftx,@object            # @Qftx
	.globl	Qftx
	.align	8
Qftx:
	.quad	22512                   # 0x57f0
	.size	Qftx, 8

	.type	Qfullboth,@object       # @Qfullboth
	.globl	Qfullboth
	.align	8
Qfullboth:
	.quad	22560                   # 0x5820
	.size	Qfullboth, 8

	.type	Qfullheight,@object     # @Qfullheight
	.globl	Qfullheight
	.align	8
Qfullheight:
	.quad	22608                   # 0x5850
	.size	Qfullheight, 8

	.type	Qfullscreen,@object     # @Qfullscreen
	.globl	Qfullscreen
	.align	8
Qfullscreen:
	.quad	22656                   # 0x5880
	.size	Qfullscreen, 8

	.type	Qfullwidth,@object      # @Qfullwidth
	.globl	Qfullwidth
	.align	8
Qfullwidth:
	.quad	22704                   # 0x58b0
	.size	Qfullwidth, 8

	.type	Qfuncall,@object        # @Qfuncall
	.globl	Qfuncall
	.align	8
Qfuncall:
	.quad	22752                   # 0x58e0
	.size	Qfuncall, 8

	.type	Qfuncall_interactively,@object # @Qfuncall_interactively
	.globl	Qfuncall_interactively
	.align	8
Qfuncall_interactively:
	.quad	22800                   # 0x5910
	.size	Qfuncall_interactively, 8

	.type	Qfunction,@object       # @Qfunction
	.globl	Qfunction
	.align	8
Qfunction:
	.quad	22848                   # 0x5940
	.size	Qfunction, 8

	.type	Qfunction_documentation,@object # @Qfunction_documentation
	.globl	Qfunction_documentation
	.align	8
Qfunction_documentation:
	.quad	22896                   # 0x5970
	.size	Qfunction_documentation, 8

	.type	Qfunction_key,@object   # @Qfunction_key
	.globl	Qfunction_key
	.align	8
Qfunction_key:
	.quad	22944                   # 0x59a0
	.size	Qfunction_key, 8

	.type	Qfundamental_mode,@object # @Qfundamental_mode
	.globl	Qfundamental_mode
	.align	8
Qfundamental_mode:
	.quad	22992                   # 0x59d0
	.size	Qfundamental_mode, 8

	.type	Qgc_cons_threshold,@object # @Qgc_cons_threshold
	.globl	Qgc_cons_threshold
	.align	8
Qgc_cons_threshold:
	.quad	23040                   # 0x5a00
	.size	Qgc_cons_threshold, 8

	.type	Qgdk_pixbuf,@object     # @Qgdk_pixbuf
	.globl	Qgdk_pixbuf
	.align	8
Qgdk_pixbuf:
	.quad	23088                   # 0x5a30
	.size	Qgdk_pixbuf, 8

	.type	Qgeometry,@object       # @Qgeometry
	.globl	Qgeometry
	.align	8
Qgeometry:
	.quad	23136                   # 0x5a60
	.size	Qgeometry, 8

	.type	Qget_buffer_window_list,@object # @Qget_buffer_window_list
	.globl	Qget_buffer_window_list
	.align	8
Qget_buffer_window_list:
	.quad	23184                   # 0x5a90
	.size	Qget_buffer_window_list, 8

	.type	Qget_emacs_mule_file_char,@object # @Qget_emacs_mule_file_char
	.globl	Qget_emacs_mule_file_char
	.align	8
Qget_emacs_mule_file_char:
	.quad	23232                   # 0x5ac0
	.size	Qget_emacs_mule_file_char, 8

	.type	Qget_file_buffer,@object # @Qget_file_buffer
	.globl	Qget_file_buffer
	.align	8
Qget_file_buffer:
	.quad	23280                   # 0x5af0
	.size	Qget_file_buffer, 8

	.type	Qget_file_char,@object  # @Qget_file_char
	.globl	Qget_file_char
	.align	8
Qget_file_char:
	.quad	23328                   # 0x5b20
	.size	Qget_file_char, 8

	.type	Qget_mru_window,@object # @Qget_mru_window
	.globl	Qget_mru_window
	.align	8
Qget_mru_window:
	.quad	23376                   # 0x5b50
	.size	Qget_mru_window, 8

	.type	Qgif,@object            # @Qgif
	.globl	Qgif
	.align	8
Qgif:
	.quad	23424                   # 0x5b80
	.size	Qgif, 8

	.type	Qglib,@object           # @Qglib
	.globl	Qglib
	.align	8
Qglib:
	.quad	23472                   # 0x5bb0
	.size	Qglib, 8

	.type	Qglyphless_char,@object # @Qglyphless_char
	.globl	Qglyphless_char
	.align	8
Qglyphless_char:
	.quad	23520                   # 0x5be0
	.size	Qglyphless_char, 8

	.type	Qglyphless_char_display,@object # @Qglyphless_char_display
	.globl	Qglyphless_char_display
	.align	8
Qglyphless_char_display:
	.quad	23568                   # 0x5c10
	.size	Qglyphless_char_display, 8

	.type	Qgnutls_anon,@object    # @Qgnutls_anon
	.globl	Qgnutls_anon
	.align	8
Qgnutls_anon:
	.quad	23616                   # 0x5c40
	.size	Qgnutls_anon, 8

	.type	Qgnutls_code,@object    # @Qgnutls_code
	.globl	Qgnutls_code
	.align	8
Qgnutls_code:
	.quad	23664                   # 0x5c70
	.size	Qgnutls_code, 8

	.type	Qgnutls_e_again,@object # @Qgnutls_e_again
	.globl	Qgnutls_e_again
	.align	8
Qgnutls_e_again:
	.quad	23712                   # 0x5ca0
	.size	Qgnutls_e_again, 8

	.type	Qgnutls_e_interrupted,@object # @Qgnutls_e_interrupted
	.globl	Qgnutls_e_interrupted
	.align	8
Qgnutls_e_interrupted:
	.quad	23760                   # 0x5cd0
	.size	Qgnutls_e_interrupted, 8

	.type	Qgnutls_e_invalid_session,@object # @Qgnutls_e_invalid_session
	.globl	Qgnutls_e_invalid_session
	.align	8
Qgnutls_e_invalid_session:
	.quad	23808                   # 0x5d00
	.size	Qgnutls_e_invalid_session, 8

	.type	Qgnutls_e_not_ready_for_handshake,@object # @Qgnutls_e_not_ready_for_handshake
	.globl	Qgnutls_e_not_ready_for_handshake
	.align	8
Qgnutls_e_not_ready_for_handshake:
	.quad	23856                   # 0x5d30
	.size	Qgnutls_e_not_ready_for_handshake, 8

	.type	Qgnutls_x509pki,@object # @Qgnutls_x509pki
	.globl	Qgnutls_x509pki
	.align	8
Qgnutls_x509pki:
	.quad	23904                   # 0x5d60
	.size	Qgnutls_x509pki, 8

	.type	Qgobject,@object        # @Qgobject
	.globl	Qgobject
	.align	8
Qgobject:
	.quad	23952                   # 0x5d90
	.size	Qgobject, 8

	.type	Qgrave,@object          # @Qgrave
	.globl	Qgrave
	.align	8
Qgrave:
	.quad	24000                   # 0x5dc0
	.size	Qgrave, 8

	.type	Qgroup,@object          # @Qgroup
	.globl	Qgroup
	.align	8
Qgroup:
	.quad	24048                   # 0x5df0
	.size	Qgroup, 8

	.type	Qgrow_only,@object      # @Qgrow_only
	.globl	Qgrow_only
	.align	8
Qgrow_only:
	.quad	24096                   # 0x5e20
	.size	Qgrow_only, 8

	.type	Qgui_set_selection,@object # @Qgui_set_selection
	.globl	Qgui_set_selection
	.align	8
Qgui_set_selection:
	.quad	24144                   # 0x5e50
	.size	Qgui_set_selection, 8

	.type	Qhand,@object           # @Qhand
	.globl	Qhand
	.align	8
Qhand:
	.quad	24192                   # 0x5e80
	.size	Qhand, 8

	.type	Qhandle,@object         # @Qhandle
	.globl	Qhandle
	.align	8
Qhandle:
	.quad	24240                   # 0x5eb0
	.size	Qhandle, 8

	.type	Qhandle_select_window,@object # @Qhandle_select_window
	.globl	Qhandle_select_window
	.align	8
Qhandle_select_window:
	.quad	24288                   # 0x5ee0
	.size	Qhandle_select_window, 8

	.type	Qhandle_shift_selection,@object # @Qhandle_shift_selection
	.globl	Qhandle_shift_selection
	.align	8
Qhandle_shift_selection:
	.quad	24336                   # 0x5f10
	.size	Qhandle_shift_selection, 8

	.type	Qhandle_switch_frame,@object # @Qhandle_switch_frame
	.globl	Qhandle_switch_frame
	.align	8
Qhandle_switch_frame:
	.quad	24384                   # 0x5f40
	.size	Qhandle_switch_frame, 8

	.type	Qhash_table,@object     # @Qhash_table
	.globl	Qhash_table
	.align	8
Qhash_table:
	.quad	24432                   # 0x5f70
	.size	Qhash_table, 8

	.type	Qhash_table_p,@object   # @Qhash_table_p
	.globl	Qhash_table_p
	.align	8
Qhash_table_p:
	.quad	24480                   # 0x5fa0
	.size	Qhash_table_p, 8

	.type	Qhash_table_test,@object # @Qhash_table_test
	.globl	Qhash_table_test
	.align	8
Qhash_table_test:
	.quad	24528                   # 0x5fd0
	.size	Qhash_table_test, 8

	.type	Qhbar,@object           # @Qhbar
	.globl	Qhbar
	.align	8
Qhbar:
	.quad	24576                   # 0x6000
	.size	Qhbar, 8

	.type	Qheader_line,@object    # @Qheader_line
	.globl	Qheader_line
	.align	8
Qheader_line:
	.quad	24624                   # 0x6030
	.size	Qheader_line, 8

	.type	Qheap,@object           # @Qheap
	.globl	Qheap
	.align	8
Qheap:
	.quad	24672                   # 0x6060
	.size	Qheap, 8

	.type	Qheight,@object         # @Qheight
	.globl	Qheight
	.align	8
Qheight:
	.quad	24720                   # 0x6090
	.size	Qheight, 8

	.type	Qhelp_echo,@object      # @Qhelp_echo
	.globl	Qhelp_echo
	.align	8
Qhelp_echo:
	.quad	24768                   # 0x60c0
	.size	Qhelp_echo, 8

	.type	Qhelp_form_show,@object # @Qhelp_form_show
	.globl	Qhelp_form_show
	.align	8
Qhelp_form_show:
	.quad	24816                   # 0x60f0
	.size	Qhelp_form_show, 8

	.type	Qheuristic,@object      # @Qheuristic
	.globl	Qheuristic
	.align	8
Qheuristic:
	.quad	24864                   # 0x6120
	.size	Qheuristic, 8

	.type	Qhex_code,@object       # @Qhex_code
	.globl	Qhex_code
	.align	8
Qhex_code:
	.quad	24912                   # 0x6150
	.size	Qhex_code, 8

	.type	Qhistory_length,@object # @Qhistory_length
	.globl	Qhistory_length
	.align	8
Qhistory_length:
	.quad	24960                   # 0x6180
	.size	Qhistory_length, 8

	.type	Qhollow,@object         # @Qhollow
	.globl	Qhollow
	.align	8
Qhollow:
	.quad	25008                   # 0x61b0
	.size	Qhollow, 8

	.type	Qhollow_small,@object   # @Qhollow_small
	.globl	Qhollow_small
	.align	8
Qhollow_small:
	.quad	25056                   # 0x61e0
	.size	Qhollow_small, 8

	.type	Qhorizontal_handle,@object # @Qhorizontal_handle
	.globl	Qhorizontal_handle
	.align	8
Qhorizontal_handle:
	.quad	25104                   # 0x6210
	.size	Qhorizontal_handle, 8

	.type	Qhorizontal_scroll_bar,@object # @Qhorizontal_scroll_bar
	.globl	Qhorizontal_scroll_bar
	.align	8
Qhorizontal_scroll_bar:
	.quad	25152                   # 0x6240
	.size	Qhorizontal_scroll_bar, 8

	.type	Qhorizontal_scroll_bars,@object # @Qhorizontal_scroll_bars
	.globl	Qhorizontal_scroll_bars
	.align	8
Qhorizontal_scroll_bars:
	.quad	25200                   # 0x6270
	.size	Qhorizontal_scroll_bars, 8

	.type	Qhw,@object             # @Qhw
	.globl	Qhw
	.align	8
Qhw:
	.quad	25248                   # 0x62a0
	.size	Qhw, 8

	.type	Qhyper,@object          # @Qhyper
	.globl	Qhyper
	.align	8
Qhyper:
	.quad	25296                   # 0x62d0
	.size	Qhyper, 8

	.type	Qicon,@object           # @Qicon
	.globl	Qicon
	.align	8
Qicon:
	.quad	25344                   # 0x6300
	.size	Qicon, 8

	.type	Qicon_left,@object      # @Qicon_left
	.globl	Qicon_left
	.align	8
Qicon_left:
	.quad	25392                   # 0x6330
	.size	Qicon_left, 8

	.type	Qicon_name,@object      # @Qicon_name
	.globl	Qicon_name
	.align	8
Qicon_name:
	.quad	25440                   # 0x6360
	.size	Qicon_name, 8

	.type	Qicon_top,@object       # @Qicon_top
	.globl	Qicon_top
	.align	8
Qicon_top:
	.quad	25488                   # 0x6390
	.size	Qicon_top, 8

	.type	Qicon_type,@object      # @Qicon_type
	.globl	Qicon_type
	.align	8
Qicon_type:
	.quad	25536                   # 0x63c0
	.size	Qicon_type, 8

	.type	Qiconify_frame,@object  # @Qiconify_frame
	.globl	Qiconify_frame
	.align	8
Qiconify_frame:
	.quad	25584                   # 0x63f0
	.size	Qiconify_frame, 8

	.type	Qidentity,@object       # @Qidentity
	.globl	Qidentity
	.align	8
Qidentity:
	.quad	25632                   # 0x6420
	.size	Qidentity, 8

	.type	Qif,@object             # @Qif
	.globl	Qif
	.align	8
Qif:
	.quad	25680                   # 0x6450
	.size	Qif, 8

	.type	Qignored,@object        # @Qignored
	.globl	Qignored
	.align	8
Qignored:
	.quad	25728                   # 0x6480
	.size	Qignored, 8

	.type	Qimage,@object          # @Qimage
	.globl	Qimage
	.align	8
Qimage:
	.quad	25776                   # 0x64b0
	.size	Qimage, 8

	.type	Qimagemagick,@object    # @Qimagemagick
	.globl	Qimagemagick
	.align	8
Qimagemagick:
	.quad	25824                   # 0x64e0
	.size	Qimagemagick, 8

	.type	Qinhibit_debugger,@object # @Qinhibit_debugger
	.globl	Qinhibit_debugger
	.align	8
Qinhibit_debugger:
	.quad	25872                   # 0x6510
	.size	Qinhibit_debugger, 8

	.type	Qinhibit_eval_during_redisplay,@object # @Qinhibit_eval_during_redisplay
	.globl	Qinhibit_eval_during_redisplay
	.align	8
Qinhibit_eval_during_redisplay:
	.quad	25920                   # 0x6540
	.size	Qinhibit_eval_during_redisplay, 8

	.type	Qinhibit_file_name_operation,@object # @Qinhibit_file_name_operation
	.globl	Qinhibit_file_name_operation
	.align	8
Qinhibit_file_name_operation:
	.quad	25968                   # 0x6570
	.size	Qinhibit_file_name_operation, 8

	.type	Qinhibit_free_realized_faces,@object # @Qinhibit_free_realized_faces
	.globl	Qinhibit_free_realized_faces
	.align	8
Qinhibit_free_realized_faces:
	.quad	26016                   # 0x65a0
	.size	Qinhibit_free_realized_faces, 8

	.type	Qinhibit_menubar_update,@object # @Qinhibit_menubar_update
	.globl	Qinhibit_menubar_update
	.align	8
Qinhibit_menubar_update:
	.quad	26064                   # 0x65d0
	.size	Qinhibit_menubar_update, 8

	.type	Qinhibit_modification_hooks,@object # @Qinhibit_modification_hooks
	.globl	Qinhibit_modification_hooks
	.align	8
Qinhibit_modification_hooks:
	.quad	26112                   # 0x6600
	.size	Qinhibit_modification_hooks, 8

	.type	Qinhibit_point_motion_hooks,@object # @Qinhibit_point_motion_hooks
	.globl	Qinhibit_point_motion_hooks
	.align	8
Qinhibit_point_motion_hooks:
	.quad	26160                   # 0x6630
	.size	Qinhibit_point_motion_hooks, 8

	.type	Qinhibit_quit,@object   # @Qinhibit_quit
	.globl	Qinhibit_quit
	.align	8
Qinhibit_quit:
	.quad	26208                   # 0x6660
	.size	Qinhibit_quit, 8

	.type	Qinhibit_read_only,@object # @Qinhibit_read_only
	.globl	Qinhibit_read_only
	.align	8
Qinhibit_read_only:
	.quad	26256                   # 0x6690
	.size	Qinhibit_read_only, 8

	.type	Qinhibit_redisplay,@object # @Qinhibit_redisplay
	.globl	Qinhibit_redisplay
	.align	8
Qinhibit_redisplay:
	.quad	26304                   # 0x66c0
	.size	Qinhibit_redisplay, 8

	.type	Qinner_edges,@object    # @Qinner_edges
	.globl	Qinner_edges
	.align	8
Qinner_edges:
	.quad	26352                   # 0x66f0
	.size	Qinner_edges, 8

	.type	Qinput_method_exit_on_first_char,@object # @Qinput_method_exit_on_first_char
	.globl	Qinput_method_exit_on_first_char
	.align	8
Qinput_method_exit_on_first_char:
	.quad	26400                   # 0x6720
	.size	Qinput_method_exit_on_first_char, 8

	.type	Qinput_method_use_echo_area,@object # @Qinput_method_use_echo_area
	.globl	Qinput_method_use_echo_area
	.align	8
Qinput_method_use_echo_area:
	.quad	26448                   # 0x6750
	.size	Qinput_method_use_echo_area, 8

	.type	Qinsert_behind_hooks,@object # @Qinsert_behind_hooks
	.globl	Qinsert_behind_hooks
	.align	8
Qinsert_behind_hooks:
	.quad	26496                   # 0x6780
	.size	Qinsert_behind_hooks, 8

	.type	Qinsert_file_contents,@object # @Qinsert_file_contents
	.globl	Qinsert_file_contents
	.align	8
Qinsert_file_contents:
	.quad	26544                   # 0x67b0
	.size	Qinsert_file_contents, 8

	.type	Qinsert_in_front_hooks,@object # @Qinsert_in_front_hooks
	.globl	Qinsert_in_front_hooks
	.align	8
Qinsert_in_front_hooks:
	.quad	26592                   # 0x67e0
	.size	Qinsert_in_front_hooks, 8

	.type	Qinsufficient_source,@object # @Qinsufficient_source
	.globl	Qinsufficient_source
	.align	8
Qinsufficient_source:
	.quad	26640                   # 0x6810
	.size	Qinsufficient_source, 8

	.type	Qintangible,@object     # @Qintangible
	.globl	Qintangible
	.align	8
Qintangible:
	.quad	26688                   # 0x6840
	.size	Qintangible, 8

	.type	Qinteger,@object        # @Qinteger
	.globl	Qinteger
	.align	8
Qinteger:
	.quad	26736                   # 0x6870
	.size	Qinteger, 8

	.type	Qinteger_or_marker_p,@object # @Qinteger_or_marker_p
	.globl	Qinteger_or_marker_p
	.align	8
Qinteger_or_marker_p:
	.quad	26784                   # 0x68a0
	.size	Qinteger_or_marker_p, 8

	.type	Qintegerp,@object       # @Qintegerp
	.globl	Qintegerp
	.align	8
Qintegerp:
	.quad	26832                   # 0x68d0
	.size	Qintegerp, 8

	.type	Qinteractive,@object    # @Qinteractive
	.globl	Qinteractive
	.align	8
Qinteractive:
	.quad	26880                   # 0x6900
	.size	Qinteractive, 8

	.type	Qinteractive_form,@object # @Qinteractive_form
	.globl	Qinteractive_form
	.align	8
Qinteractive_form:
	.quad	26928                   # 0x6930
	.size	Qinteractive_form, 8

	.type	Qinternal__syntax_propertize,@object # @Qinternal__syntax_propertize
	.globl	Qinternal__syntax_propertize
	.align	8
Qinternal__syntax_propertize:
	.quad	26976                   # 0x6960
	.size	Qinternal__syntax_propertize, 8

	.type	Qinternal_border_width,@object # @Qinternal_border_width
	.globl	Qinternal_border_width
	.align	8
Qinternal_border_width:
	.quad	27024                   # 0x6990
	.size	Qinternal_border_width, 8

	.type	Qinternal_default_process_filter,@object # @Qinternal_default_process_filter
	.globl	Qinternal_default_process_filter
	.align	8
Qinternal_default_process_filter:
	.quad	27072                   # 0x69c0
	.size	Qinternal_default_process_filter, 8

	.type	Qinternal_default_process_sentinel,@object # @Qinternal_default_process_sentinel
	.globl	Qinternal_default_process_sentinel
	.align	8
Qinternal_default_process_sentinel:
	.quad	27120                   # 0x69f0
	.size	Qinternal_default_process_sentinel, 8

	.type	Qinternal_echo_keystrokes_prefix,@object # @Qinternal_echo_keystrokes_prefix
	.globl	Qinternal_echo_keystrokes_prefix
	.align	8
Qinternal_echo_keystrokes_prefix:
	.quad	27168                   # 0x6a20
	.size	Qinternal_echo_keystrokes_prefix, 8

	.type	Qinternal_interpreter_environment,@object # @Qinternal_interpreter_environment
	.globl	Qinternal_interpreter_environment
	.align	8
Qinternal_interpreter_environment:
	.quad	27216                   # 0x6a50
	.size	Qinternal_interpreter_environment, 8

	.type	Qinterrupted,@object    # @Qinterrupted
	.globl	Qinterrupted
	.align	8
Qinterrupted:
	.quad	27264                   # 0x6a80
	.size	Qinterrupted, 8

	.type	Qintervals,@object      # @Qintervals
	.globl	Qintervals
	.align	8
Qintervals:
	.quad	27312                   # 0x6ab0
	.size	Qintervals, 8

	.type	Qinvalid_function,@object # @Qinvalid_function
	.globl	Qinvalid_function
	.align	8
Qinvalid_function:
	.quad	27360                   # 0x6ae0
	.size	Qinvalid_function, 8

	.type	Qinvalid_read_syntax,@object # @Qinvalid_read_syntax
	.globl	Qinvalid_read_syntax
	.align	8
Qinvalid_read_syntax:
	.quad	27408                   # 0x6b10
	.size	Qinvalid_read_syntax, 8

	.type	Qinvalid_regexp,@object # @Qinvalid_regexp
	.globl	Qinvalid_regexp
	.align	8
Qinvalid_regexp:
	.quad	27456                   # 0x6b40
	.size	Qinvalid_regexp, 8

	.type	Qinvalid_source,@object # @Qinvalid_source
	.globl	Qinvalid_source
	.align	8
Qinvalid_source:
	.quad	27504                   # 0x6b70
	.size	Qinvalid_source, 8

	.type	Qinvisible,@object      # @Qinvisible
	.globl	Qinvisible
	.align	8
Qinvisible:
	.quad	27552                   # 0x6ba0
	.size	Qinvisible, 8

	.type	Qipv4,@object           # @Qipv4
	.globl	Qipv4
	.align	8
Qipv4:
	.quad	27600                   # 0x6bd0
	.size	Qipv4, 8

	.type	Qipv6,@object           # @Qipv6
	.globl	Qipv6
	.align	8
Qipv6:
	.quad	27648                   # 0x6c00
	.size	Qipv6, 8

	.type	Qisdir,@object          # @Qisdir
	.globl	Qisdir
	.align	8
Qisdir:
	.quad	27696                   # 0x6c30
	.size	Qisdir, 8

	.type	Qiso10646_1,@object     # @Qiso10646_1
	.globl	Qiso10646_1
	.align	8
Qiso10646_1:
	.quad	27744                   # 0x6c60
	.size	Qiso10646_1, 8

	.type	Qiso8859_1,@object      # @Qiso8859_1
	.globl	Qiso8859_1
	.align	8
Qiso8859_1:
	.quad	27792                   # 0x6c90
	.size	Qiso8859_1, 8

	.type	Qiso_2022,@object       # @Qiso_2022
	.globl	Qiso_2022
	.align	8
Qiso_2022:
	.quad	27840                   # 0x6cc0
	.size	Qiso_2022, 8

	.type	Qiso_8859_1,@object     # @Qiso_8859_1
	.globl	Qiso_8859_1
	.align	8
Qiso_8859_1:
	.quad	27888                   # 0x6cf0
	.size	Qiso_8859_1, 8

	.type	Qitalic,@object         # @Qitalic
	.globl	Qitalic
	.align	8
Qitalic:
	.quad	27936                   # 0x6d20
	.size	Qitalic, 8

	.type	Qja,@object             # @Qja
	.globl	Qja
	.align	8
Qja:
	.quad	27984                   # 0x6d50
	.size	Qja, 8

	.type	Qjpeg,@object           # @Qjpeg
	.globl	Qjpeg
	.align	8
Qjpeg:
	.quad	28032                   # 0x6d80
	.size	Qjpeg, 8

	.type	Qkbd_macro_termination_hook,@object # @Qkbd_macro_termination_hook
	.globl	Qkbd_macro_termination_hook
	.align	8
Qkbd_macro_termination_hook:
	.quad	28080                   # 0x6db0
	.size	Qkbd_macro_termination_hook, 8

	.type	Qkey,@object            # @Qkey
	.globl	Qkey
	.align	8
Qkey:
	.quad	28128                   # 0x6de0
	.size	Qkey, 8

	.type	Qkey_and_value,@object  # @Qkey_and_value
	.globl	Qkey_and_value
	.align	8
Qkey_and_value:
	.quad	28176                   # 0x6e10
	.size	Qkey_and_value, 8

	.type	Qkey_or_value,@object   # @Qkey_or_value
	.globl	Qkey_or_value
	.align	8
Qkey_or_value:
	.quad	28224                   # 0x6e40
	.size	Qkey_or_value, 8

	.type	Qkeymap,@object         # @Qkeymap
	.globl	Qkeymap
	.align	8
Qkeymap:
	.quad	28272                   # 0x6e70
	.size	Qkeymap, 8

	.type	Qkeymap_canonicalize,@object # @Qkeymap_canonicalize
	.globl	Qkeymap_canonicalize
	.align	8
Qkeymap_canonicalize:
	.quad	28320                   # 0x6ea0
	.size	Qkeymap_canonicalize, 8

	.type	Qkeymapp,@object        # @Qkeymapp
	.globl	Qkeymapp
	.align	8
Qkeymapp:
	.quad	28368                   # 0x6ed0
	.size	Qkeymapp, 8

	.type	Qkill_buffer_hook,@object # @Qkill_buffer_hook
	.globl	Qkill_buffer_hook
	.align	8
Qkill_buffer_hook:
	.quad	28416                   # 0x6f00
	.size	Qkill_buffer_hook, 8

	.type	Qkill_buffer_query_functions,@object # @Qkill_buffer_query_functions
	.globl	Qkill_buffer_query_functions
	.align	8
Qkill_buffer_query_functions:
	.quad	28464                   # 0x6f30
	.size	Qkill_buffer_query_functions, 8

	.type	Qkill_emacs,@object     # @Qkill_emacs
	.globl	Qkill_emacs
	.align	8
Qkill_emacs:
	.quad	28512                   # 0x6f60
	.size	Qkill_emacs, 8

	.type	Qkill_emacs_hook,@object # @Qkill_emacs_hook
	.globl	Qkill_emacs_hook
	.align	8
Qkill_emacs_hook:
	.quad	28560                   # 0x6f90
	.size	Qkill_emacs_hook, 8

	.type	Qkill_forward_chars,@object # @Qkill_forward_chars
	.globl	Qkill_forward_chars
	.align	8
Qkill_forward_chars:
	.quad	28608                   # 0x6fc0
	.size	Qkill_forward_chars, 8

	.type	Qko,@object             # @Qko
	.globl	Qko
	.align	8
Qko:
	.quad	28656                   # 0x6ff0
	.size	Qko, 8

	.type	Qlambda,@object         # @Qlambda
	.globl	Qlambda
	.align	8
Qlambda:
	.quad	28704                   # 0x7020
	.size	Qlambda, 8

	.type	Qlandscape,@object      # @Qlandscape
	.globl	Qlandscape
	.align	8
Qlandscape:
	.quad	28752                   # 0x7050
	.size	Qlandscape, 8

	.type	Qlanguage_change,@object # @Qlanguage_change
	.globl	Qlanguage_change
	.align	8
Qlanguage_change:
	.quad	28800                   # 0x7080
	.size	Qlanguage_change, 8

	.type	Qlaplace,@object        # @Qlaplace
	.globl	Qlaplace
	.align	8
Qlaplace:
	.quad	28848                   # 0x70b0
	.size	Qlaplace, 8

	.type	Qlast_arrow_position,@object # @Qlast_arrow_position
	.globl	Qlast_arrow_position
	.align	8
Qlast_arrow_position:
	.quad	28896                   # 0x70e0
	.size	Qlast_arrow_position, 8

	.type	Qlast_arrow_string,@object # @Qlast_arrow_string
	.globl	Qlast_arrow_string
	.align	8
Qlast_arrow_string:
	.quad	28944                   # 0x7110
	.size	Qlast_arrow_string, 8

	.type	Qlast_nonmenu_event,@object # @Qlast_nonmenu_event
	.globl	Qlast_nonmenu_event
	.align	8
Qlast_nonmenu_event:
	.quad	28992                   # 0x7140
	.size	Qlast_nonmenu_event, 8

	.type	Qlatin,@object          # @Qlatin
	.globl	Qlatin
	.align	8
Qlatin:
	.quad	29040                   # 0x7170
	.size	Qlatin, 8

	.type	Qlatin_1,@object        # @Qlatin_1
	.globl	Qlatin_1
	.align	8
Qlatin_1:
	.quad	29088                   # 0x71a0
	.size	Qlatin_1, 8

	.type	Qleft,@object           # @Qleft
	.globl	Qleft
	.align	8
Qleft:
	.quad	29136                   # 0x71d0
	.size	Qleft, 8

	.type	Qleft_fringe,@object    # @Qleft_fringe
	.globl	Qleft_fringe
	.align	8
Qleft_fringe:
	.quad	29184                   # 0x7200
	.size	Qleft_fringe, 8

	.type	Qleft_margin,@object    # @Qleft_margin
	.globl	Qleft_margin
	.align	8
Qleft_margin:
	.quad	29232                   # 0x7230
	.size	Qleft_margin, 8

	.type	Qleft_to_right,@object  # @Qleft_to_right
	.globl	Qleft_to_right
	.align	8
Qleft_to_right:
	.quad	29280                   # 0x7260
	.size	Qleft_to_right, 8

	.type	Qleftmost,@object       # @Qleftmost
	.globl	Qleftmost
	.align	8
Qleftmost:
	.quad	29328                   # 0x7290
	.size	Qleftmost, 8

	.type	Qlet,@object            # @Qlet
	.globl	Qlet
	.align	8
Qlet:
	.quad	29376                   # 0x72c0
	.size	Qlet, 8

	.type	Qletx,@object           # @Qletx
	.globl	Qletx
	.align	8
Qletx:
	.quad	29424                   # 0x72f0
	.size	Qletx, 8

	.type	Qlexical_binding,@object # @Qlexical_binding
	.globl	Qlexical_binding
	.align	8
Qlexical_binding:
	.quad	29472                   # 0x7320
	.size	Qlexical_binding, 8

	.type	Qlibgif_version,@object # @Qlibgif_version
	.globl	Qlibgif_version
	.align	8
Qlibgif_version:
	.quad	29520                   # 0x7350
	.size	Qlibgif_version, 8

	.type	Qlibgnutls_version,@object # @Qlibgnutls_version
	.globl	Qlibgnutls_version
	.align	8
Qlibgnutls_version:
	.quad	29568                   # 0x7380
	.size	Qlibgnutls_version, 8

	.type	Qlibjpeg_version,@object # @Qlibjpeg_version
	.globl	Qlibjpeg_version
	.align	8
Qlibjpeg_version:
	.quad	29616                   # 0x73b0
	.size	Qlibjpeg_version, 8

	.type	Qlibpng_version,@object # @Qlibpng_version
	.globl	Qlibpng_version
	.align	8
Qlibpng_version:
	.quad	29664                   # 0x73e0
	.size	Qlibpng_version, 8

	.type	Qlight,@object          # @Qlight
	.globl	Qlight
	.align	8
Qlight:
	.quad	29712                   # 0x7410
	.size	Qlight, 8

	.type	Qline,@object           # @Qline
	.globl	Qline
	.align	8
Qline:
	.quad	29760                   # 0x7440
	.size	Qline, 8

	.type	Qline_height,@object    # @Qline_height
	.globl	Qline_height
	.align	8
Qline_height:
	.quad	29808                   # 0x7470
	.size	Qline_height, 8

	.type	Qline_prefix,@object    # @Qline_prefix
	.globl	Qline_prefix
	.align	8
Qline_prefix:
	.quad	29856                   # 0x74a0
	.size	Qline_prefix, 8

	.type	Qline_spacing,@object   # @Qline_spacing
	.globl	Qline_spacing
	.align	8
Qline_spacing:
	.quad	29904                   # 0x74d0
	.size	Qline_spacing, 8

	.type	Qlist,@object           # @Qlist
	.globl	Qlist
	.align	8
Qlist:
	.quad	29952                   # 0x7500
	.size	Qlist, 8

	.type	Qlisten,@object         # @Qlisten
	.globl	Qlisten
	.align	8
Qlisten:
	.quad	30000                   # 0x7530
	.size	Qlisten, 8

	.type	Qlistp,@object          # @Qlistp
	.globl	Qlistp
	.align	8
Qlistp:
	.quad	30048                   # 0x7560
	.size	Qlistp, 8

	.type	Qlittle,@object         # @Qlittle
	.globl	Qlittle
	.align	8
Qlittle:
	.quad	30096                   # 0x7590
	.size	Qlittle, 8

	.type	Qload,@object           # @Qload
	.globl	Qload
	.align	8
Qload:
	.quad	30144                   # 0x75c0
	.size	Qload, 8

	.type	Qload_file_name,@object # @Qload_file_name
	.globl	Qload_file_name
	.align	8
Qload_file_name:
	.quad	30192                   # 0x75f0
	.size	Qload_file_name, 8

	.type	Qload_force_doc_strings,@object # @Qload_force_doc_strings
	.globl	Qload_force_doc_strings
	.align	8
Qload_force_doc_strings:
	.quad	30240                   # 0x7620
	.size	Qload_force_doc_strings, 8

	.type	Qload_in_progress,@object # @Qload_in_progress
	.globl	Qload_in_progress
	.align	8
Qload_in_progress:
	.quad	30288                   # 0x7650
	.size	Qload_in_progress, 8

	.type	Qlocal,@object          # @Qlocal
	.globl	Qlocal
	.align	8
Qlocal:
	.quad	30336                   # 0x7680
	.size	Qlocal, 8

	.type	Qlocal_map,@object      # @Qlocal_map
	.globl	Qlocal_map
	.align	8
Qlocal_map:
	.quad	30384                   # 0x76b0
	.size	Qlocal_map, 8

	.type	Qm,@object              # @Qm
	.globl	Qm
	.align	8
Qm:
	.quad	30432                   # 0x76e0
	.size	Qm, 8

	.type	Qmac,@object            # @Qmac
	.globl	Qmac
	.align	8
Qmac:
	.quad	30480                   # 0x7710
	.size	Qmac, 8

	.type	Qmacro,@object          # @Qmacro
	.globl	Qmacro
	.align	8
Qmacro:
	.quad	30528                   # 0x7740
	.size	Qmacro, 8

	.type	Qmajflt,@object         # @Qmajflt
	.globl	Qmajflt
	.align	8
Qmajflt:
	.quad	30576                   # 0x7770
	.size	Qmajflt, 8

	.type	Qmake_directory,@object # @Qmake_directory
	.globl	Qmake_directory
	.align	8
Qmake_directory:
	.quad	30624                   # 0x77a0
	.size	Qmake_directory, 8

	.type	Qmake_directory_internal,@object # @Qmake_directory_internal
	.globl	Qmake_directory_internal
	.align	8
Qmake_directory_internal:
	.quad	30672                   # 0x77d0
	.size	Qmake_directory_internal, 8

	.type	Qmake_frame_visible,@object # @Qmake_frame_visible
	.globl	Qmake_frame_visible
	.align	8
Qmake_frame_visible:
	.quad	30720                   # 0x7800
	.size	Qmake_frame_visible, 8

	.type	Qmake_symbolic_link,@object # @Qmake_symbolic_link
	.globl	Qmake_symbolic_link
	.align	8
Qmake_symbolic_link:
	.quad	30768                   # 0x7830
	.size	Qmake_symbolic_link, 8

	.type	Qmany,@object           # @Qmany
	.globl	Qmany
	.align	8
Qmany:
	.quad	30816                   # 0x7860
	.size	Qmany, 8

	.type	Qmargin,@object         # @Qmargin
	.globl	Qmargin
	.align	8
Qmargin:
	.quad	30864                   # 0x7890
	.size	Qmargin, 8

	.type	Qmark_inactive,@object  # @Qmark_inactive
	.globl	Qmark_inactive
	.align	8
Qmark_inactive:
	.quad	30912                   # 0x78c0
	.size	Qmark_inactive, 8

	.type	Qmarker,@object         # @Qmarker
	.globl	Qmarker
	.align	8
Qmarker:
	.quad	30960                   # 0x78f0
	.size	Qmarker, 8

	.type	Qmarkerp,@object        # @Qmarkerp
	.globl	Qmarkerp
	.align	8
Qmarkerp:
	.quad	31008                   # 0x7920
	.size	Qmarkerp, 8

	.type	Qmask_add,@object       # @Qmask_add
	.globl	Qmask_add
	.align	8
Qmask_add:
	.quad	31056                   # 0x7950
	.size	Qmask_add, 8

	.type	Qmaximized,@object      # @Qmaximized
	.globl	Qmaximized
	.align	8
Qmaximized:
	.quad	31104                   # 0x7980
	.size	Qmaximized, 8

	.type	Qmd5,@object            # @Qmd5
	.globl	Qmd5
	.align	8
Qmd5:
	.quad	31152                   # 0x79b0
	.size	Qmd5, 8

	.type	Qmenu,@object           # @Qmenu
	.globl	Qmenu
	.align	8
Qmenu:
	.quad	31200                   # 0x79e0
	.size	Qmenu, 8

	.type	Qmenu_bar,@object       # @Qmenu_bar
	.globl	Qmenu_bar
	.align	8
Qmenu_bar:
	.quad	31248                   # 0x7a10
	.size	Qmenu_bar, 8

	.type	Qmenu_bar_external,@object # @Qmenu_bar_external
	.globl	Qmenu_bar_external
	.align	8
Qmenu_bar_external:
	.quad	31296                   # 0x7a40
	.size	Qmenu_bar_external, 8

	.type	Qmenu_bar_lines,@object # @Qmenu_bar_lines
	.globl	Qmenu_bar_lines
	.align	8
Qmenu_bar_lines:
	.quad	31344                   # 0x7a70
	.size	Qmenu_bar_lines, 8

	.type	Qmenu_bar_size,@object  # @Qmenu_bar_size
	.globl	Qmenu_bar_size
	.align	8
Qmenu_bar_size:
	.quad	31392                   # 0x7aa0
	.size	Qmenu_bar_size, 8

	.type	Qmenu_bar_update_hook,@object # @Qmenu_bar_update_hook
	.globl	Qmenu_bar_update_hook
	.align	8
Qmenu_bar_update_hook:
	.quad	31440                   # 0x7ad0
	.size	Qmenu_bar_update_hook, 8

	.type	Qmenu_enable,@object    # @Qmenu_enable
	.globl	Qmenu_enable
	.align	8
Qmenu_enable:
	.quad	31488                   # 0x7b00
	.size	Qmenu_enable, 8

	.type	Qmenu_item,@object      # @Qmenu_item
	.globl	Qmenu_item
	.align	8
Qmenu_item:
	.quad	31536                   # 0x7b30
	.size	Qmenu_item, 8

	.type	Qmeta,@object           # @Qmeta
	.globl	Qmeta
	.align	8
Qmeta:
	.quad	31584                   # 0x7b60
	.size	Qmeta, 8

	.type	Qmetadata,@object       # @Qmetadata
	.globl	Qmetadata
	.align	8
Qmetadata:
	.quad	31632                   # 0x7b90
	.size	Qmetadata, 8

	.type	Qminflt,@object         # @Qminflt
	.globl	Qminflt
	.align	8
Qminflt:
	.quad	31680                   # 0x7bc0
	.size	Qminflt, 8

	.type	Qminibuffer,@object     # @Qminibuffer
	.globl	Qminibuffer
	.align	8
Qminibuffer:
	.quad	31728                   # 0x7bf0
	.size	Qminibuffer, 8

	.type	Qminibuffer_completion_table,@object # @Qminibuffer_completion_table
	.globl	Qminibuffer_completion_table
	.align	8
Qminibuffer_completion_table:
	.quad	31776                   # 0x7c20
	.size	Qminibuffer_completion_table, 8

	.type	Qminibuffer_default,@object # @Qminibuffer_default
	.globl	Qminibuffer_default
	.align	8
Qminibuffer_default:
	.quad	31824                   # 0x7c50
	.size	Qminibuffer_default, 8

	.type	Qminibuffer_exit_hook,@object # @Qminibuffer_exit_hook
	.globl	Qminibuffer_exit_hook
	.align	8
Qminibuffer_exit_hook:
	.quad	31872                   # 0x7c80
	.size	Qminibuffer_exit_hook, 8

	.type	Qminibuffer_history,@object # @Qminibuffer_history
	.globl	Qminibuffer_history
	.align	8
Qminibuffer_history:
	.quad	31920                   # 0x7cb0
	.size	Qminibuffer_history, 8

	.type	Qminibuffer_prompt,@object # @Qminibuffer_prompt
	.globl	Qminibuffer_prompt
	.align	8
Qminibuffer_prompt:
	.quad	31968                   # 0x7ce0
	.size	Qminibuffer_prompt, 8

	.type	Qminibuffer_setup_hook,@object # @Qminibuffer_setup_hook
	.globl	Qminibuffer_setup_hook
	.align	8
Qminibuffer_setup_hook:
	.quad	32016                   # 0x7d10
	.size	Qminibuffer_setup_hook, 8

	.type	Qminus,@object          # @Qminus
	.globl	Qminus
	.align	8
Qminus:
	.quad	32064                   # 0x7d40
	.size	Qminus, 8

	.type	Qmiscs,@object          # @Qmiscs
	.globl	Qmiscs
	.align	8
Qmiscs:
	.quad	32112                   # 0x7d70
	.size	Qmiscs, 8

	.type	Qmm_size,@object        # @Qmm_size
	.globl	Qmm_size
	.align	8
Qmm_size:
	.quad	32160                   # 0x7da0
	.size	Qmm_size, 8

	.type	Qmode_class,@object     # @Qmode_class
	.globl	Qmode_class
	.align	8
Qmode_class:
	.quad	32208                   # 0x7dd0
	.size	Qmode_class, 8

	.type	Qmode_line,@object      # @Qmode_line
	.globl	Qmode_line
	.align	8
Qmode_line:
	.quad	32256                   # 0x7e00
	.size	Qmode_line, 8

	.type	Qmode_line_default_help_echo,@object # @Qmode_line_default_help_echo
	.globl	Qmode_line_default_help_echo
	.align	8
Qmode_line_default_help_echo:
	.quad	32304                   # 0x7e30
	.size	Qmode_line_default_help_echo, 8

	.type	Qmode_line_inactive,@object # @Qmode_line_inactive
	.globl	Qmode_line_inactive
	.align	8
Qmode_line_inactive:
	.quad	32352                   # 0x7e60
	.size	Qmode_line_inactive, 8

	.type	Qmodeline,@object       # @Qmodeline
	.globl	Qmodeline
	.align	8
Qmodeline:
	.quad	32400                   # 0x7e90
	.size	Qmodeline, 8

	.type	Qmodification_hooks,@object # @Qmodification_hooks
	.globl	Qmodification_hooks
	.align	8
Qmodification_hooks:
	.quad	32448                   # 0x7ec0
	.size	Qmodification_hooks, 8

	.type	Qmodifier_cache,@object # @Qmodifier_cache
	.globl	Qmodifier_cache
	.align	8
Qmodifier_cache:
	.quad	32496                   # 0x7ef0
	.size	Qmodifier_cache, 8

	.type	Qmodifier_value,@object # @Qmodifier_value
	.globl	Qmodifier_value
	.align	8
Qmodifier_value:
	.quad	32544                   # 0x7f20
	.size	Qmodifier_value, 8

	.type	Qmodify,@object         # @Qmodify
	.globl	Qmodify
	.align	8
Qmodify:
	.quad	32592                   # 0x7f50
	.size	Qmodify, 8

	.type	Qmono,@object           # @Qmono
	.globl	Qmono
	.align	8
Qmono:
	.quad	32640                   # 0x7f80
	.size	Qmono, 8

	.type	Qmonospace,@object      # @Qmonospace
	.globl	Qmonospace
	.align	8
Qmonospace:
	.quad	32688                   # 0x7fb0
	.size	Qmonospace, 8

	.type	Qmonospace_font_name,@object # @Qmonospace_font_name
	.globl	Qmonospace_font_name
	.align	8
Qmonospace_font_name:
	.quad	32736                   # 0x7fe0
	.size	Qmonospace_font_name, 8

	.type	Qmonths,@object         # @Qmonths
	.globl	Qmonths
	.align	8
Qmonths:
	.quad	32784                   # 0x8010
	.size	Qmonths, 8

	.type	Qmouse,@object          # @Qmouse
	.globl	Qmouse
	.align	8
Qmouse:
	.quad	32832                   # 0x8040
	.size	Qmouse, 8

	.type	Qmouse_click,@object    # @Qmouse_click
	.globl	Qmouse_click
	.align	8
Qmouse_click:
	.quad	32880                   # 0x8070
	.size	Qmouse_click, 8

	.type	Qmouse_color,@object    # @Qmouse_color
	.globl	Qmouse_color
	.align	8
Qmouse_color:
	.quad	32928                   # 0x80a0
	.size	Qmouse_color, 8

	.type	Qmouse_face,@object     # @Qmouse_face
	.globl	Qmouse_face
	.align	8
Qmouse_face:
	.quad	32976                   # 0x80d0
	.size	Qmouse_face, 8

	.type	Qmouse_fixup_help_message,@object # @Qmouse_fixup_help_message
	.globl	Qmouse_fixup_help_message
	.align	8
Qmouse_fixup_help_message:
	.quad	33024                   # 0x8100
	.size	Qmouse_fixup_help_message, 8

	.type	Qmouse_leave_buffer_hook,@object # @Qmouse_leave_buffer_hook
	.globl	Qmouse_leave_buffer_hook
	.align	8
Qmouse_leave_buffer_hook:
	.quad	33072                   # 0x8130
	.size	Qmouse_leave_buffer_hook, 8

	.type	Qmouse_movement,@object # @Qmouse_movement
	.globl	Qmouse_movement
	.align	8
Qmouse_movement:
	.quad	33120                   # 0x8160
	.size	Qmouse_movement, 8

	.type	Qmove,@object           # @Qmove
	.globl	Qmove
	.align	8
Qmove:
	.quad	33168                   # 0x8190
	.size	Qmove, 8

	.type	Qmove_file_to_trash,@object # @Qmove_file_to_trash
	.globl	Qmove_file_to_trash
	.align	8
Qmove_file_to_trash:
	.quad	33216                   # 0x81c0
	.size	Qmove_file_to_trash, 8

	.type	Qmove_self,@object      # @Qmove_self
	.globl	Qmove_self
	.align	8
Qmove_self:
	.quad	33264                   # 0x81f0
	.size	Qmove_self, 8

	.type	Qmoved_from,@object     # @Qmoved_from
	.globl	Qmoved_from
	.align	8
Qmoved_from:
	.quad	33312                   # 0x8220
	.size	Qmoved_from, 8

	.type	Qmoved_to,@object       # @Qmoved_to
	.globl	Qmoved_to
	.align	8
Qmoved_to:
	.quad	33360                   # 0x8250
	.size	Qmoved_to, 8

	.type	Qname,@object           # @Qname
	.globl	Qname
	.align	8
Qname:
	.quad	33408                   # 0x8280
	.size	Qname, 8

	.type	Qnative_edges,@object   # @Qnative_edges
	.globl	Qnative_edges
	.align	8
Qnative_edges:
	.quad	33456                   # 0x82b0
	.size	Qnative_edges, 8

	.type	Qnatnump,@object        # @Qnatnump
	.globl	Qnatnump
	.align	8
Qnatnump:
	.quad	33504                   # 0x82e0
	.size	Qnatnump, 8

	.type	Qnetwork,@object        # @Qnetwork
	.globl	Qnetwork
	.align	8
Qnetwork:
	.quad	33552                   # 0x8310
	.size	Qnetwork, 8

	.type	Qnice,@object           # @Qnice
	.globl	Qnice
	.align	8
Qnice:
	.quad	33600                   # 0x8340
	.size	Qnice, 8

	.type	Qno_catch,@object       # @Qno_catch
	.globl	Qno_catch
	.align	8
Qno_catch:
	.quad	33648                   # 0x8370
	.size	Qno_catch, 8

	.type	Qno_conversion,@object  # @Qno_conversion
	.globl	Qno_conversion
	.align	8
Qno_conversion:
	.quad	33696                   # 0x83a0
	.size	Qno_conversion, 8

	.type	Qnobreak_space,@object  # @Qnobreak_space
	.globl	Qnobreak_space
	.align	8
Qnobreak_space:
	.quad	33744                   # 0x83d0
	.size	Qnobreak_space, 8

	.type	Qnoelisp,@object        # @Qnoelisp
	.globl	Qnoelisp
	.align	8
Qnoelisp:
	.quad	33792                   # 0x8400
	.size	Qnoelisp, 8

	.type	Qnon_ascii,@object      # @Qnon_ascii
	.globl	Qnon_ascii
	.align	8
Qnon_ascii:
	.quad	33840                   # 0x8430
	.size	Qnon_ascii, 8

	.type	Qnone,@object           # @Qnone
	.globl	Qnone
	.align	8
Qnone:
	.quad	33888                   # 0x8460
	.size	Qnone, 8

	.type	Qnormal,@object         # @Qnormal
	.globl	Qnormal
	.align	8
Qnormal:
	.quad	33936                   # 0x8490
	.size	Qnormal, 8

	.type	Qns,@object             # @Qns
	.globl	Qns
	.align	8
Qns:
	.quad	33984                   # 0x84c0
	.size	Qns, 8

	.type	Qns_parse_geometry,@object # @Qns_parse_geometry
	.globl	Qns_parse_geometry
	.align	8
Qns_parse_geometry:
	.quad	34032                   # 0x84f0
	.size	Qns_parse_geometry, 8

	.type	Qnumber_or_marker_p,@object # @Qnumber_or_marker_p
	.globl	Qnumber_or_marker_p
	.align	8
Qnumber_or_marker_p:
	.quad	34080                   # 0x8520
	.size	Qnumber_or_marker_p, 8

	.type	Qnumberp,@object        # @Qnumberp
	.globl	Qnumberp
	.align	8
Qnumberp:
	.quad	34128                   # 0x8550
	.size	Qnumberp, 8

	.type	Qobject,@object         # @Qobject
	.globl	Qobject
	.align	8
Qobject:
	.quad	34176                   # 0x8580
	.size	Qobject, 8

	.type	Qoblique,@object        # @Qoblique
	.globl	Qoblique
	.align	8
Qoblique:
	.quad	34224                   # 0x85b0
	.size	Qoblique, 8

	.type	Qodd,@object            # @Qodd
	.globl	Qodd
	.align	8
Qodd:
	.quad	34272                   # 0x85e0
	.size	Qodd, 8

	.type	Qold_style_backquotes,@object # @Qold_style_backquotes
	.globl	Qold_style_backquotes
	.align	8
Qold_style_backquotes:
	.quad	34320                   # 0x8610
	.size	Qold_style_backquotes, 8

	.type	Qoneshot,@object        # @Qoneshot
	.globl	Qoneshot
	.align	8
Qoneshot:
	.quad	34368                   # 0x8640
	.size	Qoneshot, 8

	.type	Qonly,@object           # @Qonly
	.globl	Qonly
	.align	8
Qonly:
	.quad	34416                   # 0x8670
	.size	Qonly, 8

	.type	Qonlydir,@object        # @Qonlydir
	.globl	Qonlydir
	.align	8
Qonlydir:
	.quad	34464                   # 0x86a0
	.size	Qonlydir, 8

	.type	Qopen,@object           # @Qopen
	.globl	Qopen
	.align	8
Qopen:
	.quad	34512                   # 0x86d0
	.size	Qopen, 8

	.type	Qopen_network_stream,@object # @Qopen_network_stream
	.globl	Qopen_network_stream
	.align	8
Qopen_network_stream:
	.quad	34560                   # 0x8700
	.size	Qopen_network_stream, 8

	.type	Qopentype,@object       # @Qopentype
	.globl	Qopentype
	.align	8
Qopentype:
	.quad	34608                   # 0x8730
	.size	Qopentype, 8

	.type	Qoperations,@object     # @Qoperations
	.globl	Qoperations
	.align	8
Qoperations:
	.quad	34656                   # 0x8760
	.size	Qoperations, 8

	.type	Qorientation,@object    # @Qorientation
	.globl	Qorientation
	.align	8
Qorientation:
	.quad	34704                   # 0x8790
	.size	Qorientation, 8

	.type	Qouter_edges,@object    # @Qouter_edges
	.globl	Qouter_edges
	.align	8
Qouter_edges:
	.quad	34752                   # 0x87c0
	.size	Qouter_edges, 8

	.type	Qouter_position,@object # @Qouter_position
	.globl	Qouter_position
	.align	8
Qouter_position:
	.quad	34800                   # 0x87f0
	.size	Qouter_position, 8

	.type	Qouter_size,@object     # @Qouter_size
	.globl	Qouter_size
	.align	8
Qouter_size:
	.quad	34848                   # 0x8820
	.size	Qouter_size, 8

	.type	Qouter_window_id,@object # @Qouter_window_id
	.globl	Qouter_window_id
	.align	8
Qouter_window_id:
	.quad	34896                   # 0x8850
	.size	Qouter_window_id, 8

	.type	Qoverflow_error,@object # @Qoverflow_error
	.globl	Qoverflow_error
	.align	8
Qoverflow_error:
	.quad	34944                   # 0x8880
	.size	Qoverflow_error, 8

	.type	Qoverlay,@object        # @Qoverlay
	.globl	Qoverlay
	.align	8
Qoverlay:
	.quad	34992                   # 0x88b0
	.size	Qoverlay, 8

	.type	Qoverlay_arrow,@object  # @Qoverlay_arrow
	.globl	Qoverlay_arrow
	.align	8
Qoverlay_arrow:
	.quad	35040                   # 0x88e0
	.size	Qoverlay_arrow, 8

	.type	Qoverlay_arrow_bitmap,@object # @Qoverlay_arrow_bitmap
	.globl	Qoverlay_arrow_bitmap
	.align	8
Qoverlay_arrow_bitmap:
	.quad	35088                   # 0x8910
	.size	Qoverlay_arrow_bitmap, 8

	.type	Qoverlay_arrow_string,@object # @Qoverlay_arrow_string
	.globl	Qoverlay_arrow_string
	.align	8
Qoverlay_arrow_string:
	.quad	35136                   # 0x8940
	.size	Qoverlay_arrow_string, 8

	.type	Qoverlayp,@object       # @Qoverlayp
	.globl	Qoverlayp
	.align	8
Qoverlayp:
	.quad	35184                   # 0x8970
	.size	Qoverlayp, 8

	.type	Qoverriding_local_map,@object # @Qoverriding_local_map
	.globl	Qoverriding_local_map
	.align	8
Qoverriding_local_map:
	.quad	35232                   # 0x89a0
	.size	Qoverriding_local_map, 8

	.type	Qoverriding_terminal_local_map,@object # @Qoverriding_terminal_local_map
	.globl	Qoverriding_terminal_local_map
	.align	8
Qoverriding_terminal_local_map:
	.quad	35280                   # 0x89d0
	.size	Qoverriding_terminal_local_map, 8

	.type	Qoverwrite_mode,@object # @Qoverwrite_mode
	.globl	Qoverwrite_mode
	.align	8
Qoverwrite_mode:
	.quad	35328                   # 0x8a00
	.size	Qoverwrite_mode, 8

	.type	Qoverwrite_mode_binary,@object # @Qoverwrite_mode_binary
	.globl	Qoverwrite_mode_binary
	.align	8
Qoverwrite_mode_binary:
	.quad	35376                   # 0x8a30
	.size	Qoverwrite_mode_binary, 8

	.type	Qp,@object              # @Qp
	.globl	Qp
	.align	8
Qp:
	.quad	35424                   # 0x8a60
	.size	Qp, 8

	.type	Qpaper,@object          # @Qpaper
	.globl	Qpaper
	.align	8
Qpaper:
	.quad	35472                   # 0x8a90
	.size	Qpaper, 8

	.type	Qparagraph_separate,@object # @Qparagraph_separate
	.globl	Qparagraph_separate
	.align	8
Qparagraph_separate:
	.quad	35520                   # 0x8ac0
	.size	Qparagraph_separate, 8

	.type	Qparagraph_start,@object # @Qparagraph_start
	.globl	Qparagraph_start
	.align	8
Qparagraph_start:
	.quad	35568                   # 0x8af0
	.size	Qparagraph_start, 8

	.type	Qparent_id,@object      # @Qparent_id
	.globl	Qparent_id
	.align	8
Qparent_id:
	.quad	35616                   # 0x8b20
	.size	Qparent_id, 8

	.type	Qpbm,@object            # @Qpbm
	.globl	Qpbm
	.align	8
Qpbm:
	.quad	35664                   # 0x8b50
	.size	Qpbm, 8

	.type	Qpc,@object             # @Qpc
	.globl	Qpc
	.align	8
Qpc:
	.quad	35712                   # 0x8b80
	.size	Qpc, 8

	.type	Qpcpu,@object           # @Qpcpu
	.globl	Qpcpu
	.align	8
Qpcpu:
	.quad	35760                   # 0x8bb0
	.size	Qpcpu, 8

	.type	Qpdf,@object            # @Qpdf
	.globl	Qpdf
	.align	8
Qpdf:
	.quad	35808                   # 0x8be0
	.size	Qpdf, 8

	.type	Qpermanent_local,@object # @Qpermanent_local
	.globl	Qpermanent_local
	.align	8
Qpermanent_local:
	.quad	35856                   # 0x8c10
	.size	Qpermanent_local, 8

	.type	Qpermanent_local_hook,@object # @Qpermanent_local_hook
	.globl	Qpermanent_local_hook
	.align	8
Qpermanent_local_hook:
	.quad	35904                   # 0x8c40
	.size	Qpermanent_local_hook, 8

	.type	Qpgrp,@object           # @Qpgrp
	.globl	Qpgrp
	.align	8
Qpgrp:
	.quad	35952                   # 0x8c70
	.size	Qpgrp, 8

	.type	Qpipe,@object           # @Qpipe
	.globl	Qpipe
	.align	8
Qpipe:
	.quad	36000                   # 0x8ca0
	.size	Qpipe, 8

	.type	Qplay_sound_functions,@object # @Qplay_sound_functions
	.globl	Qplay_sound_functions
	.align	8
Qplay_sound_functions:
	.quad	36048                   # 0x8cd0
	.size	Qplay_sound_functions, 8

	.type	Qplus,@object           # @Qplus
	.globl	Qplus
	.align	8
Qplus:
	.quad	36096                   # 0x8d00
	.size	Qplus, 8

	.type	Qpmem,@object           # @Qpmem
	.globl	Qpmem
	.align	8
Qpmem:
	.quad	36144                   # 0x8d30
	.size	Qpmem, 8

	.type	Qpng,@object            # @Qpng
	.globl	Qpng
	.align	8
Qpng:
	.quad	36192                   # 0x8d60
	.size	Qpng, 8

	.type	Qpoint_entered,@object  # @Qpoint_entered
	.globl	Qpoint_entered
	.align	8
Qpoint_entered:
	.quad	36240                   # 0x8d90
	.size	Qpoint_entered, 8

	.type	Qpoint_left,@object     # @Qpoint_left
	.globl	Qpoint_left
	.align	8
Qpoint_left:
	.quad	36288                   # 0x8dc0
	.size	Qpoint_left, 8

	.type	Qpointer,@object        # @Qpointer
	.globl	Qpointer
	.align	8
Qpointer:
	.quad	36336                   # 0x8df0
	.size	Qpointer, 8

	.type	Qpolling_period,@object # @Qpolling_period
	.globl	Qpolling_period
	.align	8
Qpolling_period:
	.quad	36384                   # 0x8e20
	.size	Qpolling_period, 8

	.type	Qpoly,@object           # @Qpoly
	.globl	Qpoly
	.align	8
Qpoly:
	.quad	36432                   # 0x8e50
	.size	Qpoly, 8

	.type	Qportrait,@object       # @Qportrait
	.globl	Qportrait
	.align	8
Qportrait:
	.quad	36480                   # 0x8e80
	.size	Qportrait, 8

	.type	Qposition,@object       # @Qposition
	.globl	Qposition
	.align	8
Qposition:
	.quad	36528                   # 0x8eb0
	.size	Qposition, 8

	.type	Qpost_command_hook,@object # @Qpost_command_hook
	.globl	Qpost_command_hook
	.align	8
Qpost_command_hook:
	.quad	36576                   # 0x8ee0
	.size	Qpost_command_hook, 8

	.type	Qpost_gc_hook,@object   # @Qpost_gc_hook
	.globl	Qpost_gc_hook
	.align	8
Qpost_gc_hook:
	.quad	36624                   # 0x8f10
	.size	Qpost_gc_hook, 8

	.type	Qpost_self_insert_hook,@object # @Qpost_self_insert_hook
	.globl	Qpost_self_insert_hook
	.align	8
Qpost_self_insert_hook:
	.quad	36672                   # 0x8f40
	.size	Qpost_self_insert_hook, 8

	.type	Qpostscript,@object     # @Qpostscript
	.globl	Qpostscript
	.align	8
Qpostscript:
	.quad	36720                   # 0x8f70
	.size	Qpostscript, 8

	.type	Qppid,@object           # @Qppid
	.globl	Qppid
	.align	8
Qppid:
	.quad	36768                   # 0x8fa0
	.size	Qppid, 8

	.type	Qpre_command_hook,@object # @Qpre_command_hook
	.globl	Qpre_command_hook
	.align	8
Qpre_command_hook:
	.quad	36816                   # 0x8fd0
	.size	Qpre_command_hook, 8

	.type	Qpressed_button,@object # @Qpressed_button
	.globl	Qpressed_button
	.align	8
Qpressed_button:
	.quad	36864                   # 0x9000
	.size	Qpressed_button, 8

	.type	Qpri,@object            # @Qpri
	.globl	Qpri
	.align	8
Qpri:
	.quad	36912                   # 0x9030
	.size	Qpri, 8

	.type	Qprint_escape_multibyte,@object # @Qprint_escape_multibyte
	.globl	Qprint_escape_multibyte
	.align	8
Qprint_escape_multibyte:
	.quad	36960                   # 0x9060
	.size	Qprint_escape_multibyte, 8

	.type	Qprint_escape_newlines,@object # @Qprint_escape_newlines
	.globl	Qprint_escape_newlines
	.align	8
Qprint_escape_newlines:
	.quad	37008                   # 0x9090
	.size	Qprint_escape_newlines, 8

	.type	Qprint_escape_nonascii,@object # @Qprint_escape_nonascii
	.globl	Qprint_escape_nonascii
	.align	8
Qprint_escape_nonascii:
	.quad	37056                   # 0x90c0
	.size	Qprint_escape_nonascii, 8

	.type	Qpriority,@object       # @Qpriority
	.globl	Qpriority
	.align	8
Qpriority:
	.quad	37104                   # 0x90f0
	.size	Qpriority, 8

	.type	Qprocess,@object        # @Qprocess
	.globl	Qprocess
	.align	8
Qprocess:
	.quad	37152                   # 0x9120
	.size	Qprocess, 8

	.type	Qprocessp,@object       # @Qprocessp
	.globl	Qprocessp
	.align	8
Qprocessp:
	.quad	37200                   # 0x9150
	.size	Qprocessp, 8

	.type	Qprofiler_backtrace_equal,@object # @Qprofiler_backtrace_equal
	.globl	Qprofiler_backtrace_equal
	.align	8
Qprofiler_backtrace_equal:
	.quad	37248                   # 0x9180
	.size	Qprofiler_backtrace_equal, 8

	.type	Qprogn,@object          # @Qprogn
	.globl	Qprogn
	.align	8
Qprogn:
	.quad	37296                   # 0x91b0
	.size	Qprogn, 8

	.type	Qprotected_field,@object # @Qprotected_field
	.globl	Qprotected_field
	.align	8
Qprotected_field:
	.quad	37344                   # 0x91e0
	.size	Qprotected_field, 8

	.type	Qprovide,@object        # @Qprovide
	.globl	Qprovide
	.align	8
Qprovide:
	.quad	37392                   # 0x9210
	.size	Qprovide, 8

	.type	Qpty,@object            # @Qpty
	.globl	Qpty
	.align	8
Qpty:
	.quad	37440                   # 0x9240
	.size	Qpty, 8

	.type	Qq_overflow,@object     # @Qq_overflow
	.globl	Qq_overflow
	.align	8
Qq_overflow:
	.quad	37488                   # 0x9270
	.size	Qq_overflow, 8

	.type	Qquit,@object           # @Qquit
	.globl	Qquit
	.align	8
Qquit:
	.quad	37536                   # 0x92a0
	.size	Qquit, 8

	.type	Qquote,@object          # @Qquote
	.globl	Qquote
	.align	8
Qquote:
	.quad	37584                   # 0x92d0
	.size	Qquote, 8

	.type	Qraise,@object          # @Qraise
	.globl	Qraise
	.align	8
Qraise:
	.quad	37632                   # 0x9300
	.size	Qraise, 8

	.type	Qrange,@object          # @Qrange
	.globl	Qrange
	.align	8
Qrange:
	.quad	37680                   # 0x9330
	.size	Qrange, 8

	.type	Qrange_error,@object    # @Qrange_error
	.globl	Qrange_error
	.align	8
Qrange_error:
	.quad	37728                   # 0x9360
	.size	Qrange_error, 8

	.type	Qratio,@object          # @Qratio
	.globl	Qratio
	.align	8
Qratio:
	.quad	37776                   # 0x9390
	.size	Qratio, 8

	.type	Qraw_text,@object       # @Qraw_text
	.globl	Qraw_text
	.align	8
Qraw_text:
	.quad	37824                   # 0x93c0
	.size	Qraw_text, 8

	.type	Qread,@object           # @Qread
	.globl	Qread
	.align	8
Qread:
	.quad	37872                   # 0x93f0
	.size	Qread, 8

	.type	Qread_char,@object      # @Qread_char
	.globl	Qread_char
	.align	8
Qread_char:
	.quad	37920                   # 0x9420
	.size	Qread_char, 8

	.type	Qread_number,@object    # @Qread_number
	.globl	Qread_number
	.align	8
Qread_number:
	.quad	37968                   # 0x9450
	.size	Qread_number, 8

	.type	Qread_only,@object      # @Qread_only
	.globl	Qread_only
	.align	8
Qread_only:
	.quad	38016                   # 0x9480
	.size	Qread_only, 8

	.type	Qreal,@object           # @Qreal
	.globl	Qreal
	.align	8
Qreal:
	.quad	38064                   # 0x94b0
	.size	Qreal, 8

	.type	Qrear_nonsticky,@object # @Qrear_nonsticky
	.globl	Qrear_nonsticky
	.align	8
Qrear_nonsticky:
	.quad	38112                   # 0x94e0
	.size	Qrear_nonsticky, 8

	.type	Qrecompute_lucid_menubar,@object # @Qrecompute_lucid_menubar
	.globl	Qrecompute_lucid_menubar
	.align	8
Qrecompute_lucid_menubar:
	.quad	38160                   # 0x9510
	.size	Qrecompute_lucid_menubar, 8

	.type	Qrecord_window_buffer,@object # @Qrecord_window_buffer
	.globl	Qrecord_window_buffer
	.align	8
Qrecord_window_buffer:
	.quad	38208                   # 0x9540
	.size	Qrecord_window_buffer, 8

	.type	Qrect,@object           # @Qrect
	.globl	Qrect
	.align	8
Qrect:
	.quad	38256                   # 0x9570
	.size	Qrect, 8

	.type	Qredisplay_dont_pause,@object # @Qredisplay_dont_pause
	.globl	Qredisplay_dont_pause
	.align	8
Qredisplay_dont_pause:
	.quad	38304                   # 0x95a0
	.size	Qredisplay_dont_pause, 8

	.type	Qredisplay_end_trigger_functions,@object # @Qredisplay_end_trigger_functions
	.globl	Qredisplay_end_trigger_functions
	.align	8
Qredisplay_end_trigger_functions:
	.quad	38352                   # 0x95d0
	.size	Qredisplay_end_trigger_functions, 8

	.type	Qredisplay_internal,@object # @Qredisplay_internal
	.globl	Qredisplay_internal
	.align	8
Qredisplay_internal:
	.quad	38400                   # 0x9600
	.size	Qredisplay_internal, 8

	.type	Qregion_extract_function,@object # @Qregion_extract_function
	.globl	Qregion_extract_function
	.align	8
Qregion_extract_function:
	.quad	38448                   # 0x9630
	.size	Qregion_extract_function, 8

	.type	Qrehash_size,@object    # @Qrehash_size
	.globl	Qrehash_size
	.align	8
Qrehash_size:
	.quad	38496                   # 0x9660
	.size	Qrehash_size, 8

	.type	Qrehash_threshold,@object # @Qrehash_threshold
	.globl	Qrehash_threshold
	.align	8
Qrehash_threshold:
	.quad	38544                   # 0x9690
	.size	Qrehash_threshold, 8

	.type	Qreleased_button,@object # @Qreleased_button
	.globl	Qreleased_button
	.align	8
Qreleased_button:
	.quad	38592                   # 0x96c0
	.size	Qreleased_button, 8

	.type	Qremap,@object          # @Qremap
	.globl	Qremap
	.align	8
Qremap:
	.quad	38640                   # 0x96f0
	.size	Qremap, 8

	.type	Qrename_file,@object    # @Qrename_file
	.globl	Qrename_file
	.align	8
Qrename_file:
	.quad	38688                   # 0x9720
	.size	Qrename_file, 8

	.type	Qreplace_buffer_in_windows,@object # @Qreplace_buffer_in_windows
	.globl	Qreplace_buffer_in_windows
	.align	8
Qreplace_buffer_in_windows:
	.quad	38736                   # 0x9750
	.size	Qreplace_buffer_in_windows, 8

	.type	Qrequire,@object        # @Qrequire
	.globl	Qrequire
	.align	8
Qrequire:
	.quad	38784                   # 0x9780
	.size	Qrequire, 8

	.type	Qreverse_landscape,@object # @Qreverse_landscape
	.globl	Qreverse_landscape
	.align	8
Qreverse_landscape:
	.quad	38832                   # 0x97b0
	.size	Qreverse_landscape, 8

	.type	Qreverse_portrait,@object # @Qreverse_portrait
	.globl	Qreverse_portrait
	.align	8
Qreverse_portrait:
	.quad	38880                   # 0x97e0
	.size	Qreverse_portrait, 8

	.type	Qright,@object          # @Qright
	.globl	Qright
	.align	8
Qright:
	.quad	38928                   # 0x9810
	.size	Qright, 8

	.type	Qright_divider,@object  # @Qright_divider
	.globl	Qright_divider
	.align	8
Qright_divider:
	.quad	38976                   # 0x9840
	.size	Qright_divider, 8

	.type	Qright_divider_width,@object # @Qright_divider_width
	.globl	Qright_divider_width
	.align	8
Qright_divider_width:
	.quad	39024                   # 0x9870
	.size	Qright_divider_width, 8

	.type	Qright_fringe,@object   # @Qright_fringe
	.globl	Qright_fringe
	.align	8
Qright_fringe:
	.quad	39072                   # 0x98a0
	.size	Qright_fringe, 8

	.type	Qright_margin,@object   # @Qright_margin
	.globl	Qright_margin
	.align	8
Qright_margin:
	.quad	39120                   # 0x98d0
	.size	Qright_margin, 8

	.type	Qright_to_left,@object  # @Qright_to_left
	.globl	Qright_to_left
	.align	8
Qright_to_left:
	.quad	39168                   # 0x9900
	.size	Qright_to_left, 8

	.type	Qrightmost,@object      # @Qrightmost
	.globl	Qrightmost
	.align	8
Qrightmost:
	.quad	39216                   # 0x9930
	.size	Qrightmost, 8

	.type	Qrisky_local_variable,@object # @Qrisky_local_variable
	.globl	Qrisky_local_variable
	.align	8
Qrisky_local_variable:
	.quad	39264                   # 0x9960
	.size	Qrisky_local_variable, 8

	.type	Qrss,@object            # @Qrss
	.globl	Qrss
	.align	8
Qrss:
	.quad	39312                   # 0x9990
	.size	Qrss, 8

	.type	Qrun,@object            # @Qrun
	.globl	Qrun
	.align	8
Qrun:
	.quad	39360                   # 0x99c0
	.size	Qrun, 8

	.type	Qrun_hook_with_args,@object # @Qrun_hook_with_args
	.globl	Qrun_hook_with_args
	.align	8
Qrun_hook_with_args:
	.quad	39408                   # 0x99f0
	.size	Qrun_hook_with_args, 8

	.type	Qsafe,@object           # @Qsafe
	.globl	Qsafe
	.align	8
Qsafe:
	.quad	39456                   # 0x9a20
	.size	Qsafe, 8

	.type	Qsans,@object           # @Qsans
	.globl	Qsans
	.align	8
Qsans:
	.quad	39504                   # 0x9a50
	.size	Qsans, 8

	.type	Qsans__serif,@object    # @Qsans__serif
	.globl	Qsans__serif
	.align	8
Qsans__serif:
	.quad	39552                   # 0x9a80
	.size	Qsans__serif, 8

	.type	Qsans_serif,@object     # @Qsans_serif
	.globl	Qsans_serif
	.align	8
Qsans_serif:
	.quad	39600                   # 0x9ab0
	.size	Qsans_serif, 8

	.type	Qsave_excursion,@object # @Qsave_excursion
	.globl	Qsave_excursion
	.align	8
Qsave_excursion:
	.quad	39648                   # 0x9ae0
	.size	Qsave_excursion, 8

	.type	Qsave_session,@object   # @Qsave_session
	.globl	Qsave_session
	.align	8
Qsave_session:
	.quad	39696                   # 0x9b10
	.size	Qsave_session, 8

	.type	Qscan_error,@object     # @Qscan_error
	.globl	Qscan_error
	.align	8
Qscan_error:
	.quad	39744                   # 0x9b40
	.size	Qscan_error, 8

	.type	Qscreen_gamma,@object   # @Qscreen_gamma
	.globl	Qscreen_gamma
	.align	8
Qscreen_gamma:
	.quad	39792                   # 0x9b70
	.size	Qscreen_gamma, 8

	.type	Qscroll_bar,@object     # @Qscroll_bar
	.globl	Qscroll_bar
	.align	8
Qscroll_bar:
	.quad	39840                   # 0x9ba0
	.size	Qscroll_bar, 8

	.type	Qscroll_bar_background,@object # @Qscroll_bar_background
	.globl	Qscroll_bar_background
	.align	8
Qscroll_bar_background:
	.quad	39888                   # 0x9bd0
	.size	Qscroll_bar_background, 8

	.type	Qscroll_bar_foreground,@object # @Qscroll_bar_foreground
	.globl	Qscroll_bar_foreground
	.align	8
Qscroll_bar_foreground:
	.quad	39936                   # 0x9c00
	.size	Qscroll_bar_foreground, 8

	.type	Qscroll_bar_height,@object # @Qscroll_bar_height
	.globl	Qscroll_bar_height
	.align	8
Qscroll_bar_height:
	.quad	39984                   # 0x9c30
	.size	Qscroll_bar_height, 8

	.type	Qscroll_bar_movement,@object # @Qscroll_bar_movement
	.globl	Qscroll_bar_movement
	.align	8
Qscroll_bar_movement:
	.quad	40032                   # 0x9c60
	.size	Qscroll_bar_movement, 8

	.type	Qscroll_bar_width,@object # @Qscroll_bar_width
	.globl	Qscroll_bar_width
	.align	8
Qscroll_bar_width:
	.quad	40080                   # 0x9c90
	.size	Qscroll_bar_width, 8

	.type	Qscroll_command,@object # @Qscroll_command
	.globl	Qscroll_command
	.align	8
Qscroll_command:
	.quad	40128                   # 0x9cc0
	.size	Qscroll_command, 8

	.type	Qscroll_down,@object    # @Qscroll_down
	.globl	Qscroll_down
	.align	8
Qscroll_down:
	.quad	40176                   # 0x9cf0
	.size	Qscroll_down, 8

	.type	Qscroll_up,@object      # @Qscroll_up
	.globl	Qscroll_up
	.align	8
Qscroll_up:
	.quad	40224                   # 0x9d20
	.size	Qscroll_up, 8

	.type	Qsearch_failed,@object  # @Qsearch_failed
	.globl	Qsearch_failed
	.align	8
Qsearch_failed:
	.quad	40272                   # 0x9d50
	.size	Qsearch_failed, 8

	.type	Qselect_window,@object  # @Qselect_window
	.globl	Qselect_window
	.align	8
Qselect_window:
	.quad	40320                   # 0x9d80
	.size	Qselect_window, 8

	.type	Qsemi_bold,@object      # @Qsemi_bold
	.globl	Qsemi_bold
	.align	8
Qsemi_bold:
	.quad	40368                   # 0x9db0
	.size	Qsemi_bold, 8

	.type	Qsemi_light,@object     # @Qsemi_light
	.globl	Qsemi_light
	.align	8
Qsemi_light:
	.quad	40416                   # 0x9de0
	.size	Qsemi_light, 8

	.type	Qseqpacket,@object      # @Qseqpacket
	.globl	Qseqpacket
	.align	8
Qseqpacket:
	.quad	40464                   # 0x9e10
	.size	Qseqpacket, 8

	.type	Qsequencep,@object      # @Qsequencep
	.globl	Qsequencep
	.align	8
Qsequencep:
	.quad	40512                   # 0x9e40
	.size	Qsequencep, 8

	.type	Qserial,@object         # @Qserial
	.globl	Qserial
	.align	8
Qserial:
	.quad	40560                   # 0x9e70
	.size	Qserial, 8

	.type	Qsess,@object           # @Qsess
	.globl	Qsess
	.align	8
Qsess:
	.quad	40608                   # 0x9ea0
	.size	Qsess, 8

	.type	Qset_file_acl,@object   # @Qset_file_acl
	.globl	Qset_file_acl
	.align	8
Qset_file_acl:
	.quad	40656                   # 0x9ed0
	.size	Qset_file_acl, 8

	.type	Qset_file_modes,@object # @Qset_file_modes
	.globl	Qset_file_modes
	.align	8
Qset_file_modes:
	.quad	40704                   # 0x9f00
	.size	Qset_file_modes, 8

	.type	Qset_file_selinux_context,@object # @Qset_file_selinux_context
	.globl	Qset_file_selinux_context
	.align	8
Qset_file_selinux_context:
	.quad	40752                   # 0x9f30
	.size	Qset_file_selinux_context, 8

	.type	Qset_file_times,@object # @Qset_file_times
	.globl	Qset_file_times
	.align	8
Qset_file_times:
	.quad	40800                   # 0x9f60
	.size	Qset_file_times, 8

	.type	Qset_frame_size,@object # @Qset_frame_size
	.globl	Qset_frame_size
	.align	8
Qset_frame_size:
	.quad	40848                   # 0x9f90
	.size	Qset_frame_size, 8

	.type	Qset_visited_file_modtime,@object # @Qset_visited_file_modtime
	.globl	Qset_visited_file_modtime
	.align	8
Qset_visited_file_modtime:
	.quad	40896                   # 0x9fc0
	.size	Qset_visited_file_modtime, 8

	.type	Qset_window_configuration,@object # @Qset_window_configuration
	.globl	Qset_window_configuration
	.align	8
Qset_window_configuration:
	.quad	40944                   # 0x9ff0
	.size	Qset_window_configuration, 8

	.type	Qsetq,@object           # @Qsetq
	.globl	Qsetq
	.align	8
Qsetq:
	.quad	40992                   # 0xa020
	.size	Qsetq, 8

	.type	Qsetting_constant,@object # @Qsetting_constant
	.globl	Qsetting_constant
	.align	8
Qsetting_constant:
	.quad	41040                   # 0xa050
	.size	Qsetting_constant, 8

	.type	Qsha1,@object           # @Qsha1
	.globl	Qsha1
	.align	8
Qsha1:
	.quad	41088                   # 0xa080
	.size	Qsha1, 8

	.type	Qsha224,@object         # @Qsha224
	.globl	Qsha224
	.align	8
Qsha224:
	.quad	41136                   # 0xa0b0
	.size	Qsha224, 8

	.type	Qsha256,@object         # @Qsha256
	.globl	Qsha256
	.align	8
Qsha256:
	.quad	41184                   # 0xa0e0
	.size	Qsha256, 8

	.type	Qsha384,@object         # @Qsha384
	.globl	Qsha384
	.align	8
Qsha384:
	.quad	41232                   # 0xa110
	.size	Qsha384, 8

	.type	Qsha512,@object         # @Qsha512
	.globl	Qsha512
	.align	8
Qsha512:
	.quad	41280                   # 0xa140
	.size	Qsha512, 8

	.type	Qshift_jis,@object      # @Qshift_jis
	.globl	Qshift_jis
	.align	8
Qshift_jis:
	.quad	41328                   # 0xa170
	.size	Qshift_jis, 8

	.type	Qsignal,@object         # @Qsignal
	.globl	Qsignal
	.align	8
Qsignal:
	.quad	41376                   # 0xa1a0
	.size	Qsignal, 8

	.type	Qsingularity_error,@object # @Qsingularity_error
	.globl	Qsingularity_error
	.align	8
Qsingularity_error:
	.quad	41424                   # 0xa1d0
	.size	Qsingularity_error, 8

	.type	Qsize,@object           # @Qsize
	.globl	Qsize
	.align	8
Qsize:
	.quad	41472                   # 0xa200
	.size	Qsize, 8

	.type	Qslice,@object          # @Qslice
	.globl	Qslice
	.align	8
Qslice:
	.quad	41520                   # 0xa230
	.size	Qslice, 8

	.type	Qsound,@object          # @Qsound
	.globl	Qsound
	.align	8
Qsound:
	.quad	41568                   # 0xa260
	.size	Qsound, 8

	.type	Qsource,@object         # @Qsource
	.globl	Qsource
	.align	8
Qsource:
	.quad	41616                   # 0xa290
	.size	Qsource, 8

	.type	Qspace,@object          # @Qspace
	.globl	Qspace
	.align	8
Qspace:
	.quad	41664                   # 0xa2c0
	.size	Qspace, 8

	.type	Qspace_width,@object    # @Qspace_width
	.globl	Qspace_width
	.align	8
Qspace_width:
	.quad	41712                   # 0xa2f0
	.size	Qspace_width, 8

	.type	Qstandard_input,@object # @Qstandard_input
	.globl	Qstandard_input
	.align	8
Qstandard_input:
	.quad	41760                   # 0xa320
	.size	Qstandard_input, 8

	.type	Qstandard_output,@object # @Qstandard_output
	.globl	Qstandard_output
	.align	8
Qstandard_output:
	.quad	41808                   # 0xa350
	.size	Qstandard_output, 8

	.type	Qstart,@object          # @Qstart
	.globl	Qstart
	.align	8
Qstart:
	.quad	41856                   # 0xa380
	.size	Qstart, 8

	.type	Qstart_process,@object  # @Qstart_process
	.globl	Qstart_process
	.align	8
Qstart_process:
	.quad	41904                   # 0xa3b0
	.size	Qstart_process, 8

	.type	Qstate,@object          # @Qstate
	.globl	Qstate
	.align	8
Qstate:
	.quad	41952                   # 0xa3e0
	.size	Qstate, 8

	.type	Qstderr,@object         # @Qstderr
	.globl	Qstderr
	.align	8
Qstderr:
	.quad	42000                   # 0xa410
	.size	Qstderr, 8

	.type	Qstdin,@object          # @Qstdin
	.globl	Qstdin
	.align	8
Qstdin:
	.quad	42048                   # 0xa440
	.size	Qstdin, 8

	.type	Qstdout,@object         # @Qstdout
	.globl	Qstdout
	.align	8
Qstdout:
	.quad	42096                   # 0xa470
	.size	Qstdout, 8

	.type	Qsticky,@object         # @Qsticky
	.globl	Qsticky
	.align	8
Qsticky:
	.quad	42144                   # 0xa4a0
	.size	Qsticky, 8

	.type	Qstime,@object          # @Qstime
	.globl	Qstime
	.align	8
Qstime:
	.quad	42192                   # 0xa4d0
	.size	Qstime, 8

	.type	Qstop,@object           # @Qstop
	.globl	Qstop
	.align	8
Qstop:
	.quad	42240                   # 0xa500
	.size	Qstop, 8

	.type	Qstraight,@object       # @Qstraight
	.globl	Qstraight
	.align	8
Qstraight:
	.quad	42288                   # 0xa530
	.size	Qstraight, 8

	.type	Qstring,@object         # @Qstring
	.globl	Qstring
	.align	8
Qstring:
	.quad	42336                   # 0xa560
	.size	Qstring, 8

	.type	Qstring_bytes,@object   # @Qstring_bytes
	.globl	Qstring_bytes
	.align	8
Qstring_bytes:
	.quad	42384                   # 0xa590
	.size	Qstring_bytes, 8

	.type	Qstring_lessp,@object   # @Qstring_lessp
	.globl	Qstring_lessp
	.align	8
Qstring_lessp:
	.quad	42432                   # 0xa5c0
	.size	Qstring_lessp, 8

	.type	Qstringp,@object        # @Qstringp
	.globl	Qstringp
	.align	8
Qstringp:
	.quad	42480                   # 0xa5f0
	.size	Qstringp, 8

	.type	Qstrings,@object        # @Qstrings
	.globl	Qstrings
	.align	8
Qstrings:
	.quad	42528                   # 0xa620
	.size	Qstrings, 8

	.type	Qsubfeatures,@object    # @Qsubfeatures
	.globl	Qsubfeatures
	.align	8
Qsubfeatures:
	.quad	42576                   # 0xa650
	.size	Qsubfeatures, 8

	.type	Qsubr,@object           # @Qsubr
	.globl	Qsubr
	.align	8
Qsubr:
	.quad	42624                   # 0xa680
	.size	Qsubr, 8

	.type	Qsubrp,@object          # @Qsubrp
	.globl	Qsubrp
	.align	8
Qsubrp:
	.quad	42672                   # 0xa6b0
	.size	Qsubrp, 8

	.type	Qsubstitute_env_in_file_name,@object # @Qsubstitute_env_in_file_name
	.globl	Qsubstitute_env_in_file_name
	.align	8
Qsubstitute_env_in_file_name:
	.quad	42720                   # 0xa6e0
	.size	Qsubstitute_env_in_file_name, 8

	.type	Qsubstitute_in_file_name,@object # @Qsubstitute_in_file_name
	.globl	Qsubstitute_in_file_name
	.align	8
Qsubstitute_in_file_name:
	.quad	42768                   # 0xa710
	.size	Qsubstitute_in_file_name, 8

	.type	Qsuper,@object          # @Qsuper
	.globl	Qsuper
	.align	8
Qsuper:
	.quad	42816                   # 0xa740
	.size	Qsuper, 8

	.type	Qsvg,@object            # @Qsvg
	.globl	Qsvg
	.align	8
Qsvg:
	.quad	42864                   # 0xa770
	.size	Qsvg, 8

	.type	Qsw,@object             # @Qsw
	.globl	Qsw
	.align	8
Qsw:
	.quad	42912                   # 0xa7a0
	.size	Qsw, 8

	.type	Qswitch_frame,@object   # @Qswitch_frame
	.globl	Qswitch_frame
	.align	8
Qswitch_frame:
	.quad	42960                   # 0xa7d0
	.size	Qswitch_frame, 8

	.type	Qsymbol,@object         # @Qsymbol
	.globl	Qsymbol
	.align	8
Qsymbol:
	.quad	43008                   # 0xa800
	.size	Qsymbol, 8

	.type	Qsymbolp,@object        # @Qsymbolp
	.globl	Qsymbolp
	.align	8
Qsymbolp:
	.quad	43056                   # 0xa830
	.size	Qsymbolp, 8

	.type	Qsymbols,@object        # @Qsymbols
	.globl	Qsymbols
	.align	8
Qsymbols:
	.quad	43104                   # 0xa860
	.size	Qsymbols, 8

	.type	Qsyntax_table,@object   # @Qsyntax_table
	.globl	Qsyntax_table
	.align	8
Qsyntax_table:
	.quad	43152                   # 0xa890
	.size	Qsyntax_table, 8

	.type	Qsyntax_table_p,@object # @Qsyntax_table_p
	.globl	Qsyntax_table_p
	.align	8
Qsyntax_table_p:
	.quad	43200                   # 0xa8c0
	.size	Qsyntax_table_p, 8

	.type	Qt,@object              # @Qt
	.globl	Qt
	.align	8
Qt:
	.quad	43248                   # 0xa8f0
	.size	Qt, 8

	.type	Qtarget_idx,@object     # @Qtarget_idx
	.globl	Qtarget_idx
	.align	8
Qtarget_idx:
	.quad	43296                   # 0xa920
	.size	Qtarget_idx, 8

	.type	Qtb_size_cb,@object     # @Qtb_size_cb
	.globl	Qtb_size_cb
	.align	8
Qtb_size_cb:
	.quad	43344                   # 0xa950
	.size	Qtb_size_cb, 8

	.type	Qtemp_buffer_setup_hook,@object # @Qtemp_buffer_setup_hook
	.globl	Qtemp_buffer_setup_hook
	.align	8
Qtemp_buffer_setup_hook:
	.quad	43392                   # 0xa980
	.size	Qtemp_buffer_setup_hook, 8

	.type	Qtemp_buffer_show_hook,@object # @Qtemp_buffer_show_hook
	.globl	Qtemp_buffer_show_hook
	.align	8
Qtemp_buffer_show_hook:
	.quad	43440                   # 0xa9b0
	.size	Qtemp_buffer_show_hook, 8

	.type	Qterminal,@object       # @Qterminal
	.globl	Qterminal
	.align	8
Qterminal:
	.quad	43488                   # 0xa9e0
	.size	Qterminal, 8

	.type	Qterminal_frame,@object # @Qterminal_frame
	.globl	Qterminal_frame
	.align	8
Qterminal_frame:
	.quad	43536                   # 0xaa10
	.size	Qterminal_frame, 8

	.type	Qterminal_live_p,@object # @Qterminal_live_p
	.globl	Qterminal_live_p
	.align	8
Qterminal_live_p:
	.quad	43584                   # 0xaa40
	.size	Qterminal_live_p, 8

	.type	Qtest,@object           # @Qtest
	.globl	Qtest
	.align	8
Qtest:
	.quad	43632                   # 0xaa70
	.size	Qtest, 8

	.type	Qtext,@object           # @Qtext
	.globl	Qtext
	.align	8
Qtext:
	.quad	43680                   # 0xaaa0
	.size	Qtext, 8

	.type	Qtext_image_horiz,@object # @Qtext_image_horiz
	.globl	Qtext_image_horiz
	.align	8
Qtext_image_horiz:
	.quad	43728                   # 0xaad0
	.size	Qtext_image_horiz, 8

	.type	Qtext_pixels,@object    # @Qtext_pixels
	.globl	Qtext_pixels
	.align	8
Qtext_pixels:
	.quad	43776                   # 0xab00
	.size	Qtext_pixels, 8

	.type	Qtext_read_only,@object # @Qtext_read_only
	.globl	Qtext_read_only
	.align	8
Qtext_read_only:
	.quad	43824                   # 0xab30
	.size	Qtext_read_only, 8

	.type	Qthcount,@object        # @Qthcount
	.globl	Qthcount
	.align	8
Qthcount:
	.quad	43872                   # 0xab60
	.size	Qthcount, 8

	.type	Qthin_space,@object     # @Qthin_space
	.globl	Qthin_space
	.align	8
Qthin_space:
	.quad	43920                   # 0xab90
	.size	Qthin_space, 8

	.type	Qtiff,@object           # @Qtiff
	.globl	Qtiff
	.align	8
Qtiff:
	.quad	43968                   # 0xabc0
	.size	Qtiff, 8

	.type	Qtime,@object           # @Qtime
	.globl	Qtime
	.align	8
Qtime:
	.quad	44016                   # 0xabf0
	.size	Qtime, 8

	.type	Qtimer_event_handler,@object # @Qtimer_event_handler
	.globl	Qtimer_event_handler
	.align	8
Qtimer_event_handler:
	.quad	44064                   # 0xac20
	.size	Qtimer_event_handler, 8

	.type	Qtitle,@object          # @Qtitle
	.globl	Qtitle
	.align	8
Qtitle:
	.quad	44112                   # 0xac50
	.size	Qtitle, 8

	.type	Qtitle_bar_size,@object # @Qtitle_bar_size
	.globl	Qtitle_bar_size
	.align	8
Qtitle_bar_size:
	.quad	44160                   # 0xac80
	.size	Qtitle_bar_size, 8

	.type	Qtool_bar,@object       # @Qtool_bar
	.globl	Qtool_bar
	.align	8
Qtool_bar:
	.quad	44208                   # 0xacb0
	.size	Qtool_bar, 8

	.type	Qtool_bar_external,@object # @Qtool_bar_external
	.globl	Qtool_bar_external
	.align	8
Qtool_bar_external:
	.quad	44256                   # 0xace0
	.size	Qtool_bar_external, 8

	.type	Qtool_bar_lines,@object # @Qtool_bar_lines
	.globl	Qtool_bar_lines
	.align	8
Qtool_bar_lines:
	.quad	44304                   # 0xad10
	.size	Qtool_bar_lines, 8

	.type	Qtool_bar_position,@object # @Qtool_bar_position
	.globl	Qtool_bar_position
	.align	8
Qtool_bar_position:
	.quad	44352                   # 0xad40
	.size	Qtool_bar_position, 8

	.type	Qtool_bar_size,@object  # @Qtool_bar_size
	.globl	Qtool_bar_size
	.align	8
Qtool_bar_size:
	.quad	44400                   # 0xad70
	.size	Qtool_bar_size, 8

	.type	Qtool_bar_style,@object # @Qtool_bar_style
	.globl	Qtool_bar_style
	.align	8
Qtool_bar_style:
	.quad	44448                   # 0xada0
	.size	Qtool_bar_style, 8

	.type	Qtooltip,@object        # @Qtooltip
	.globl	Qtooltip
	.align	8
Qtooltip:
	.quad	44496                   # 0xadd0
	.size	Qtooltip, 8

	.type	Qtop,@object            # @Qtop
	.globl	Qtop
	.align	8
Qtop:
	.quad	44544                   # 0xae00
	.size	Qtop, 8

	.type	Qtop_bottom,@object     # @Qtop_bottom
	.globl	Qtop_bottom
	.align	8
Qtop_bottom:
	.quad	44592                   # 0xae30
	.size	Qtop_bottom, 8

	.type	Qtop_level,@object      # @Qtop_level
	.globl	Qtop_level
	.align	8
Qtop_level:
	.quad	44640                   # 0xae60
	.size	Qtop_level, 8

	.type	Qtop_margin,@object     # @Qtop_margin
	.globl	Qtop_margin
	.align	8
Qtop_margin:
	.quad	44688                   # 0xae90
	.size	Qtop_margin, 8

	.type	Qtpgid,@object          # @Qtpgid
	.globl	Qtpgid
	.align	8
Qtpgid:
	.quad	44736                   # 0xaec0
	.size	Qtpgid, 8

	.type	Qtrailing_whitespace,@object # @Qtrailing_whitespace
	.globl	Qtrailing_whitespace
	.align	8
Qtrailing_whitespace:
	.quad	44784                   # 0xaef0
	.size	Qtrailing_whitespace, 8

	.type	Qtranslation_table,@object # @Qtranslation_table
	.globl	Qtranslation_table
	.align	8
Qtranslation_table:
	.quad	44832                   # 0xaf20
	.size	Qtranslation_table, 8

	.type	Qtranslation_table_id,@object # @Qtranslation_table_id
	.globl	Qtranslation_table_id
	.align	8
Qtranslation_table_id:
	.quad	44880                   # 0xaf50
	.size	Qtranslation_table_id, 8

	.type	Qtruncation,@object     # @Qtruncation
	.globl	Qtruncation
	.align	8
Qtruncation:
	.quad	44928                   # 0xaf80
	.size	Qtruncation, 8

	.type	Qttname,@object         # @Qttname
	.globl	Qttname
	.align	8
Qttname:
	.quad	44976                   # 0xafb0
	.size	Qttname, 8

	.type	Qtty,@object            # @Qtty
	.globl	Qtty
	.align	8
Qtty:
	.quad	45024                   # 0xafe0
	.size	Qtty, 8

	.type	Qtty_color_alist,@object # @Qtty_color_alist
	.globl	Qtty_color_alist
	.align	8
Qtty_color_alist:
	.quad	45072                   # 0xb010
	.size	Qtty_color_alist, 8

	.type	Qtty_color_by_index,@object # @Qtty_color_by_index
	.globl	Qtty_color_by_index
	.align	8
Qtty_color_by_index:
	.quad	45120                   # 0xb040
	.size	Qtty_color_by_index, 8

	.type	Qtty_color_desc,@object # @Qtty_color_desc
	.globl	Qtty_color_desc
	.align	8
Qtty_color_desc:
	.quad	45168                   # 0xb070
	.size	Qtty_color_desc, 8

	.type	Qtty_color_mode,@object # @Qtty_color_mode
	.globl	Qtty_color_mode
	.align	8
Qtty_color_mode:
	.quad	45216                   # 0xb0a0
	.size	Qtty_color_mode, 8

	.type	Qtty_color_standard_values,@object # @Qtty_color_standard_values
	.globl	Qtty_color_standard_values
	.align	8
Qtty_color_standard_values:
	.quad	45264                   # 0xb0d0
	.size	Qtty_color_standard_values, 8

	.type	Qtty_menu_exit,@object  # @Qtty_menu_exit
	.globl	Qtty_menu_exit
	.align	8
Qtty_menu_exit:
	.quad	45312                   # 0xb100
	.size	Qtty_menu_exit, 8

	.type	Qtty_menu_ignore,@object # @Qtty_menu_ignore
	.globl	Qtty_menu_ignore
	.align	8
Qtty_menu_ignore:
	.quad	45360                   # 0xb130
	.size	Qtty_menu_ignore, 8

	.type	Qtty_menu_mouse_movement,@object # @Qtty_menu_mouse_movement
	.globl	Qtty_menu_mouse_movement
	.align	8
Qtty_menu_mouse_movement:
	.quad	45408                   # 0xb160
	.size	Qtty_menu_mouse_movement, 8

	.type	Qtty_menu_navigation_map,@object # @Qtty_menu_navigation_map
	.globl	Qtty_menu_navigation_map
	.align	8
Qtty_menu_navigation_map:
	.quad	45456                   # 0xb190
	.size	Qtty_menu_navigation_map, 8

	.type	Qtty_menu_next_item,@object # @Qtty_menu_next_item
	.globl	Qtty_menu_next_item
	.align	8
Qtty_menu_next_item:
	.quad	45504                   # 0xb1c0
	.size	Qtty_menu_next_item, 8

	.type	Qtty_menu_next_menu,@object # @Qtty_menu_next_menu
	.globl	Qtty_menu_next_menu
	.align	8
Qtty_menu_next_menu:
	.quad	45552                   # 0xb1f0
	.size	Qtty_menu_next_menu, 8

	.type	Qtty_menu_prev_item,@object # @Qtty_menu_prev_item
	.globl	Qtty_menu_prev_item
	.align	8
Qtty_menu_prev_item:
	.quad	45600                   # 0xb220
	.size	Qtty_menu_prev_item, 8

	.type	Qtty_menu_prev_menu,@object # @Qtty_menu_prev_menu
	.globl	Qtty_menu_prev_menu
	.align	8
Qtty_menu_prev_menu:
	.quad	45648                   # 0xb250
	.size	Qtty_menu_prev_menu, 8

	.type	Qtty_menu_select,@object # @Qtty_menu_select
	.globl	Qtty_menu_select
	.align	8
Qtty_menu_select:
	.quad	45696                   # 0xb280
	.size	Qtty_menu_select, 8

	.type	Qtty_mode_reset_strings,@object # @Qtty_mode_reset_strings
	.globl	Qtty_mode_reset_strings
	.align	8
Qtty_mode_reset_strings:
	.quad	45744                   # 0xb2b0
	.size	Qtty_mode_reset_strings, 8

	.type	Qtty_mode_set_strings,@object # @Qtty_mode_set_strings
	.globl	Qtty_mode_set_strings
	.align	8
Qtty_mode_set_strings:
	.quad	45792                   # 0xb2e0
	.size	Qtty_mode_set_strings, 8

	.type	Qtty_type,@object       # @Qtty_type
	.globl	Qtty_type
	.align	8
Qtty_type:
	.quad	45840                   # 0xb310
	.size	Qtty_type, 8

	.type	Qultra_bold,@object     # @Qultra_bold
	.globl	Qultra_bold
	.align	8
Qultra_bold:
	.quad	45888                   # 0xb340
	.size	Qultra_bold, 8

	.type	Qunbound,@object        # @Qunbound
	.globl	Qunbound
	.align	8
Qunbound:
	.quad	45936                   # 0xb370
	.size	Qunbound, 8

	.type	Qundecided,@object      # @Qundecided
	.globl	Qundecided
	.align	8
Qundecided:
	.quad	45984                   # 0xb3a0
	.size	Qundecided, 8

	.type	Qundefined,@object      # @Qundefined
	.globl	Qundefined
	.align	8
Qundefined:
	.quad	46032                   # 0xb3d0
	.size	Qundefined, 8

	.type	Qundefined_color,@object # @Qundefined_color
	.globl	Qundefined_color
	.align	8
Qundefined_color:
	.quad	46080                   # 0xb400
	.size	Qundefined_color, 8

	.type	Qunderflow_error,@object # @Qunderflow_error
	.globl	Qunderflow_error
	.align	8
Qunderflow_error:
	.quad	46128                   # 0xb430
	.size	Qunderflow_error, 8

	.type	Qundo_auto__add_boundary,@object # @Qundo_auto__add_boundary
	.globl	Qundo_auto__add_boundary
	.align	8
Qundo_auto__add_boundary:
	.quad	46176                   # 0xb460
	.size	Qundo_auto__add_boundary, 8

	.type	Qundo_auto__last_boundary_cause,@object # @Qundo_auto__last_boundary_cause
	.globl	Qundo_auto__last_boundary_cause
	.align	8
Qundo_auto__last_boundary_cause:
	.quad	46224                   # 0xb490
	.size	Qundo_auto__last_boundary_cause, 8

	.type	Qundo_auto__this_command_amalgamating,@object # @Qundo_auto__this_command_amalgamating
	.globl	Qundo_auto__this_command_amalgamating
	.align	8
Qundo_auto__this_command_amalgamating:
	.quad	46272                   # 0xb4c0
	.size	Qundo_auto__this_command_amalgamating, 8

	.type	Qundo_auto__undoable_change,@object # @Qundo_auto__undoable_change
	.globl	Qundo_auto__undoable_change
	.align	8
Qundo_auto__undoable_change:
	.quad	46320                   # 0xb4f0
	.size	Qundo_auto__undoable_change, 8

	.type	Qundo_auto__undoable_change_no_timer,@object # @Qundo_auto__undoable_change_no_timer
	.globl	Qundo_auto__undoable_change_no_timer
	.align	8
Qundo_auto__undoable_change_no_timer:
	.quad	46368                   # 0xb520
	.size	Qundo_auto__undoable_change_no_timer, 8

	.type	Qundo_auto__undoably_changed_buffers,@object # @Qundo_auto__undoably_changed_buffers
	.globl	Qundo_auto__undoably_changed_buffers
	.align	8
Qundo_auto__undoably_changed_buffers:
	.quad	46416                   # 0xb550
	.size	Qundo_auto__undoably_changed_buffers, 8

	.type	Qundo_auto_amalgamate,@object # @Qundo_auto_amalgamate
	.globl	Qundo_auto_amalgamate
	.align	8
Qundo_auto_amalgamate:
	.quad	46464                   # 0xb580
	.size	Qundo_auto_amalgamate, 8

	.type	Qunevalled,@object      # @Qunevalled
	.globl	Qunevalled
	.align	8
Qunevalled:
	.quad	46512                   # 0xb5b0
	.size	Qunevalled, 8

	.type	Qunhandled_file_name_directory,@object # @Qunhandled_file_name_directory
	.globl	Qunhandled_file_name_directory
	.align	8
Qunhandled_file_name_directory:
	.quad	46560                   # 0xb5e0
	.size	Qunhandled_file_name_directory, 8

	.type	Qunicode,@object        # @Qunicode
	.globl	Qunicode
	.align	8
Qunicode:
	.quad	46608                   # 0xb610
	.size	Qunicode, 8

	.type	Qunicode_bmp,@object    # @Qunicode_bmp
	.globl	Qunicode_bmp
	.align	8
Qunicode_bmp:
	.quad	46656                   # 0xb640
	.size	Qunicode_bmp, 8

	.type	Qunix,@object           # @Qunix
	.globl	Qunix
	.align	8
Qunix:
	.quad	46704                   # 0xb670
	.size	Qunix, 8

	.type	Qunmount,@object        # @Qunmount
	.globl	Qunmount
	.align	8
Qunmount:
	.quad	46752                   # 0xb6a0
	.size	Qunmount, 8

	.type	Qunspecified,@object    # @Qunspecified
	.globl	Qunspecified
	.align	8
Qunspecified:
	.quad	46800                   # 0xb6d0
	.size	Qunspecified, 8

	.type	Qunsplittable,@object   # @Qunsplittable
	.globl	Qunsplittable
	.align	8
Qunsplittable:
	.quad	46848                   # 0xb700
	.size	Qunsplittable, 8

	.type	Qup,@object             # @Qup
	.globl	Qup
	.align	8
Qup:
	.quad	46896                   # 0xb730
	.size	Qup, 8

	.type	Qupdate_frame_menubar,@object # @Qupdate_frame_menubar
	.globl	Qupdate_frame_menubar
	.align	8
Qupdate_frame_menubar:
	.quad	46944                   # 0xb760
	.size	Qupdate_frame_menubar, 8

	.type	Qupdate_frame_tool_bar,@object # @Qupdate_frame_tool_bar
	.globl	Qupdate_frame_tool_bar
	.align	8
Qupdate_frame_tool_bar:
	.quad	46992                   # 0xb790
	.size	Qupdate_frame_tool_bar, 8

	.type	Quser,@object           # @Quser
	.globl	Quser
	.align	8
Quser:
	.quad	47040                   # 0xb7c0
	.size	Quser, 8

	.type	Quser_error,@object     # @Quser_error
	.globl	Quser_error
	.align	8
Quser_error:
	.quad	47088                   # 0xb7f0
	.size	Quser_error, 8

	.type	Quser_position,@object  # @Quser_position
	.globl	Quser_position
	.align	8
Quser_position:
	.quad	47136                   # 0xb820
	.size	Quser_position, 8

	.type	Quser_ptr,@object       # @Quser_ptr
	.globl	Quser_ptr
	.align	8
Quser_ptr:
	.quad	47184                   # 0xb850
	.size	Quser_ptr, 8

	.type	Quser_ptrp,@object      # @Quser_ptrp
	.globl	Quser_ptrp
	.align	8
Quser_ptrp:
	.quad	47232                   # 0xb880
	.size	Quser_ptrp, 8

	.type	Quser_size,@object      # @Quser_size
	.globl	Quser_size
	.align	8
Quser_size:
	.quad	47280                   # 0xb8b0
	.size	Quser_size, 8

	.type	Qutf_16,@object         # @Qutf_16
	.globl	Qutf_16
	.align	8
Qutf_16:
	.quad	47328                   # 0xb8e0
	.size	Qutf_16, 8

	.type	Qutf_16le,@object       # @Qutf_16le
	.globl	Qutf_16le
	.align	8
Qutf_16le:
	.quad	47376                   # 0xb910
	.size	Qutf_16le, 8

	.type	Qutf_8,@object          # @Qutf_8
	.globl	Qutf_8
	.align	8
Qutf_8:
	.quad	47424                   # 0xb940
	.size	Qutf_8, 8

	.type	Qutf_8_emacs,@object    # @Qutf_8_emacs
	.globl	Qutf_8_emacs
	.align	8
Qutf_8_emacs:
	.quad	47472                   # 0xb970
	.size	Qutf_8_emacs, 8

	.type	Qutime,@object          # @Qutime
	.globl	Qutime
	.align	8
Qutime:
	.quad	47520                   # 0xb9a0
	.size	Qutime, 8

	.type	Qvalue,@object          # @Qvalue
	.globl	Qvalue
	.align	8
Qvalue:
	.quad	47568                   # 0xb9d0
	.size	Qvalue, 8

	.type	Qvariable_documentation,@object # @Qvariable_documentation
	.globl	Qvariable_documentation
	.align	8
Qvariable_documentation:
	.quad	47616                   # 0xba00
	.size	Qvariable_documentation, 8

	.type	Qvector,@object         # @Qvector
	.globl	Qvector
	.align	8
Qvector:
	.quad	47664                   # 0xba30
	.size	Qvector, 8

	.type	Qvector_or_char_table_p,@object # @Qvector_or_char_table_p
	.globl	Qvector_or_char_table_p
	.align	8
Qvector_or_char_table_p:
	.quad	47712                   # 0xba60
	.size	Qvector_or_char_table_p, 8

	.type	Qvector_slots,@object   # @Qvector_slots
	.globl	Qvector_slots
	.align	8
Qvector_slots:
	.quad	47760                   # 0xba90
	.size	Qvector_slots, 8

	.type	Qvectorp,@object        # @Qvectorp
	.globl	Qvectorp
	.align	8
Qvectorp:
	.quad	47808                   # 0xbac0
	.size	Qvectorp, 8

	.type	Qvectors,@object        # @Qvectors
	.globl	Qvectors
	.align	8
Qvectors:
	.quad	47856                   # 0xbaf0
	.size	Qvectors, 8

	.type	Qvendor_specific_keysyms,@object # @Qvendor_specific_keysyms
	.globl	Qvendor_specific_keysyms
	.align	8
Qvendor_specific_keysyms:
	.quad	47904                   # 0xbb20
	.size	Qvendor_specific_keysyms, 8

	.type	Qverify_visited_file_modtime,@object # @Qverify_visited_file_modtime
	.globl	Qverify_visited_file_modtime
	.align	8
Qverify_visited_file_modtime:
	.quad	47952                   # 0xbb50
	.size	Qverify_visited_file_modtime, 8

	.type	Qvertical_border,@object # @Qvertical_border
	.globl	Qvertical_border
	.align	8
Qvertical_border:
	.quad	48000                   # 0xbb80
	.size	Qvertical_border, 8

	.type	Qvertical_line,@object  # @Qvertical_line
	.globl	Qvertical_line
	.align	8
Qvertical_line:
	.quad	48048                   # 0xbbb0
	.size	Qvertical_line, 8

	.type	Qvertical_scroll_bar,@object # @Qvertical_scroll_bar
	.globl	Qvertical_scroll_bar
	.align	8
Qvertical_scroll_bar:
	.quad	48096                   # 0xbbe0
	.size	Qvertical_scroll_bar, 8

	.type	Qvertical_scroll_bars,@object # @Qvertical_scroll_bars
	.globl	Qvertical_scroll_bars
	.align	8
Qvertical_scroll_bars:
	.quad	48144                   # 0xbc10
	.size	Qvertical_scroll_bars, 8

	.type	Qvisibility,@object     # @Qvisibility
	.globl	Qvisibility
	.align	8
Qvisibility:
	.quad	48192                   # 0xbc40
	.size	Qvisibility, 8

	.type	Qvisible,@object        # @Qvisible
	.globl	Qvisible
	.align	8
Qvisible:
	.quad	48240                   # 0xbc70
	.size	Qvisible, 8

	.type	Qvoid_function,@object  # @Qvoid_function
	.globl	Qvoid_function
	.align	8
Qvoid_function:
	.quad	48288                   # 0xbca0
	.size	Qvoid_function, 8

	.type	Qvoid_variable,@object  # @Qvoid_variable
	.globl	Qvoid_variable
	.align	8
Qvoid_variable:
	.quad	48336                   # 0xbcd0
	.size	Qvoid_variable, 8

	.type	Qvsize,@object          # @Qvsize
	.globl	Qvsize
	.align	8
Qvsize:
	.quad	48384                   # 0xbd00
	.size	Qvsize, 8

	.type	Qw32,@object            # @Qw32
	.globl	Qw32
	.align	8
Qw32:
	.quad	48432                   # 0xbd30
	.size	Qw32, 8

	.type	Qwait_for_wm,@object    # @Qwait_for_wm
	.globl	Qwait_for_wm
	.align	8
Qwait_for_wm:
	.quad	48480                   # 0xbd60
	.size	Qwait_for_wm, 8

	.type	Qwall,@object           # @Qwall
	.globl	Qwall
	.align	8
Qwall:
	.quad	48528                   # 0xbd90
	.size	Qwall, 8

	.type	Qwave,@object           # @Qwave
	.globl	Qwave
	.align	8
Qwave:
	.quad	48576                   # 0xbdc0
	.size	Qwave, 8

	.type	Qweakness,@object       # @Qweakness
	.globl	Qweakness
	.align	8
Qweakness:
	.quad	48624                   # 0xbdf0
	.size	Qweakness, 8

	.type	Qwhen,@object           # @Qwhen
	.globl	Qwhen
	.align	8
Qwhen:
	.quad	48672                   # 0xbe20
	.size	Qwhen, 8

	.type	Qwholenump,@object      # @Qwholenump
	.globl	Qwholenump
	.align	8
Qwholenump:
	.quad	48720                   # 0xbe50
	.size	Qwholenump, 8

	.type	Qwidget_type,@object    # @Qwidget_type
	.globl	Qwidget_type
	.align	8
Qwidget_type:
	.quad	48768                   # 0xbe80
	.size	Qwidget_type, 8

	.type	Qwidth,@object          # @Qwidth
	.globl	Qwidth
	.align	8
Qwidth:
	.quad	48816                   # 0xbeb0
	.size	Qwidth, 8

	.type	Qwindow,@object         # @Qwindow
	.globl	Qwindow
	.align	8
Qwindow:
	.quad	48864                   # 0xbee0
	.size	Qwindow, 8

	.type	Qwindow_configuration,@object # @Qwindow_configuration
	.globl	Qwindow_configuration
	.align	8
Qwindow_configuration:
	.quad	48912                   # 0xbf10
	.size	Qwindow_configuration, 8

	.type	Qwindow_configuration_change_hook,@object # @Qwindow_configuration_change_hook
	.globl	Qwindow_configuration_change_hook
	.align	8
Qwindow_configuration_change_hook:
	.quad	48960                   # 0xbf40
	.size	Qwindow_configuration_change_hook, 8

	.type	Qwindow_configuration_p,@object # @Qwindow_configuration_p
	.globl	Qwindow_configuration_p
	.align	8
Qwindow_configuration_p:
	.quad	49008                   # 0xbf70
	.size	Qwindow_configuration_p, 8

	.type	Qwindow_deletable_p,@object # @Qwindow_deletable_p
	.globl	Qwindow_deletable_p
	.align	8
Qwindow_deletable_p:
	.quad	49056                   # 0xbfa0
	.size	Qwindow_deletable_p, 8

	.type	Qwindow_divider,@object # @Qwindow_divider
	.globl	Qwindow_divider
	.align	8
Qwindow_divider:
	.quad	49104                   # 0xbfd0
	.size	Qwindow_divider, 8

	.type	Qwindow_divider_first_pixel,@object # @Qwindow_divider_first_pixel
	.globl	Qwindow_divider_first_pixel
	.align	8
Qwindow_divider_first_pixel:
	.quad	49152                   # 0xc000
	.size	Qwindow_divider_first_pixel, 8

	.type	Qwindow_divider_last_pixel,@object # @Qwindow_divider_last_pixel
	.globl	Qwindow_divider_last_pixel
	.align	8
Qwindow_divider_last_pixel:
	.quad	49200                   # 0xc030
	.size	Qwindow_divider_last_pixel, 8

	.type	Qwindow_id,@object      # @Qwindow_id
	.globl	Qwindow_id
	.align	8
Qwindow_id:
	.quad	49248                   # 0xc060
	.size	Qwindow_id, 8

	.type	Qwindow_live_p,@object  # @Qwindow_live_p
	.globl	Qwindow_live_p
	.align	8
Qwindow_live_p:
	.quad	49296                   # 0xc090
	.size	Qwindow_live_p, 8

	.type	Qwindow_pixel_to_total,@object # @Qwindow_pixel_to_total
	.globl	Qwindow_pixel_to_total
	.align	8
Qwindow_pixel_to_total:
	.quad	49344                   # 0xc0c0
	.size	Qwindow_pixel_to_total, 8

	.type	Qwindow_point_insertion_type,@object # @Qwindow_point_insertion_type
	.globl	Qwindow_point_insertion_type
	.align	8
Qwindow_point_insertion_type:
	.quad	49392                   # 0xc0f0
	.size	Qwindow_point_insertion_type, 8

	.type	Qwindow_resize_root_window,@object # @Qwindow_resize_root_window
	.globl	Qwindow_resize_root_window
	.align	8
Qwindow_resize_root_window:
	.quad	49440                   # 0xc120
	.size	Qwindow_resize_root_window, 8

	.type	Qwindow_resize_root_window_vertically,@object # @Qwindow_resize_root_window_vertically
	.globl	Qwindow_resize_root_window_vertically
	.align	8
Qwindow_resize_root_window_vertically:
	.quad	49488                   # 0xc150
	.size	Qwindow_resize_root_window_vertically, 8

	.type	Qwindow_sanitize_window_sizes,@object # @Qwindow_sanitize_window_sizes
	.globl	Qwindow_sanitize_window_sizes
	.align	8
Qwindow_sanitize_window_sizes:
	.quad	49536                   # 0xc180
	.size	Qwindow_sanitize_window_sizes, 8

	.type	Qwindow_scroll_functions,@object # @Qwindow_scroll_functions
	.globl	Qwindow_scroll_functions
	.align	8
Qwindow_scroll_functions:
	.quad	49584                   # 0xc1b0
	.size	Qwindow_scroll_functions, 8

	.type	Qwindow_size,@object    # @Qwindow_size
	.globl	Qwindow_size
	.align	8
Qwindow_size:
	.quad	49632                   # 0xc1e0
	.size	Qwindow_size, 8

	.type	Qwindow_text_change_functions,@object # @Qwindow_text_change_functions
	.globl	Qwindow_text_change_functions
	.align	8
Qwindow_text_change_functions:
	.quad	49680                   # 0xc210
	.size	Qwindow_text_change_functions, 8

	.type	Qwindow_valid_p,@object # @Qwindow_valid_p
	.globl	Qwindow_valid_p
	.align	8
Qwindow_valid_p:
	.quad	49728                   # 0xc240
	.size	Qwindow_valid_p, 8

	.type	Qwindowp,@object        # @Qwindowp
	.globl	Qwindowp
	.align	8
Qwindowp:
	.quad	49776                   # 0xc270
	.size	Qwindowp, 8

	.type	Qworkarea,@object       # @Qworkarea
	.globl	Qworkarea
	.align	8
Qworkarea:
	.quad	49824                   # 0xc2a0
	.size	Qworkarea, 8

	.type	Qwrap_prefix,@object    # @Qwrap_prefix
	.globl	Qwrap_prefix
	.align	8
Qwrap_prefix:
	.quad	49872                   # 0xc2d0
	.size	Qwrap_prefix, 8

	.type	Qwrite_region,@object   # @Qwrite_region
	.globl	Qwrite_region
	.align	8
Qwrite_region:
	.quad	49920                   # 0xc300
	.size	Qwrite_region, 8

	.type	Qwrite_region_annotate_functions,@object # @Qwrite_region_annotate_functions
	.globl	Qwrite_region_annotate_functions
	.align	8
Qwrite_region_annotate_functions:
	.quad	49968                   # 0xc330
	.size	Qwrite_region_annotate_functions, 8

	.type	Qwrong_length_argument,@object # @Qwrong_length_argument
	.globl	Qwrong_length_argument
	.align	8
Qwrong_length_argument:
	.quad	50016                   # 0xc360
	.size	Qwrong_length_argument, 8

	.type	Qwrong_number_of_arguments,@object # @Qwrong_number_of_arguments
	.globl	Qwrong_number_of_arguments
	.align	8
Qwrong_number_of_arguments:
	.quad	50064                   # 0xc390
	.size	Qwrong_number_of_arguments, 8

	.type	Qwrong_type_argument,@object # @Qwrong_type_argument
	.globl	Qwrong_type_argument
	.align	8
Qwrong_type_argument:
	.quad	50112                   # 0xc3c0
	.size	Qwrong_type_argument, 8

	.type	Qx,@object              # @Qx
	.globl	Qx
	.align	8
Qx:
	.quad	50160                   # 0xc3f0
	.size	Qx, 8

	.type	Qx_check_fullscreen,@object # @Qx_check_fullscreen
	.globl	Qx_check_fullscreen
	.align	8
Qx_check_fullscreen:
	.quad	50208                   # 0xc420
	.size	Qx_check_fullscreen, 8

	.type	Qx_create_frame_1,@object # @Qx_create_frame_1
	.globl	Qx_create_frame_1
	.align	8
Qx_create_frame_1:
	.quad	50256                   # 0xc450
	.size	Qx_create_frame_1, 8

	.type	Qx_create_frame_2,@object # @Qx_create_frame_2
	.globl	Qx_create_frame_2
	.align	8
Qx_create_frame_2:
	.quad	50304                   # 0xc480
	.size	Qx_create_frame_2, 8

	.type	Qx_frame_parameter,@object # @Qx_frame_parameter
	.globl	Qx_frame_parameter
	.align	8
Qx_frame_parameter:
	.quad	50352                   # 0xc4b0
	.size	Qx_frame_parameter, 8

	.type	Qx_gtk_map_stock,@object # @Qx_gtk_map_stock
	.globl	Qx_gtk_map_stock
	.align	8
Qx_gtk_map_stock:
	.quad	50400                   # 0xc4e0
	.size	Qx_gtk_map_stock, 8

	.type	Qx_handle_net_wm_state,@object # @Qx_handle_net_wm_state
	.globl	Qx_handle_net_wm_state
	.align	8
Qx_handle_net_wm_state:
	.quad	50448                   # 0xc510
	.size	Qx_handle_net_wm_state, 8

	.type	Qx_lost_selection_functions,@object # @Qx_lost_selection_functions
	.globl	Qx_lost_selection_functions
	.align	8
Qx_lost_selection_functions:
	.quad	50496                   # 0xc540
	.size	Qx_lost_selection_functions, 8

	.type	Qx_net_wm_state,@object # @Qx_net_wm_state
	.globl	Qx_net_wm_state
	.align	8
Qx_net_wm_state:
	.quad	50544                   # 0xc570
	.size	Qx_net_wm_state, 8

	.type	Qx_resource_name,@object # @Qx_resource_name
	.globl	Qx_resource_name
	.align	8
Qx_resource_name:
	.quad	50592                   # 0xc5a0
	.size	Qx_resource_name, 8

	.type	Qx_sent_selection_functions,@object # @Qx_sent_selection_functions
	.globl	Qx_sent_selection_functions
	.align	8
Qx_sent_selection_functions:
	.quad	50640                   # 0xc5d0
	.size	Qx_sent_selection_functions, 8

	.type	Qx_set_frame_parameters,@object # @Qx_set_frame_parameters
	.globl	Qx_set_frame_parameters
	.align	8
Qx_set_frame_parameters:
	.quad	50688                   # 0xc600
	.size	Qx_set_frame_parameters, 8

	.type	Qx_set_fullscreen,@object # @Qx_set_fullscreen
	.globl	Qx_set_fullscreen
	.align	8
Qx_set_fullscreen:
	.quad	50736                   # 0xc630
	.size	Qx_set_fullscreen, 8

	.type	Qx_set_menu_bar_lines,@object # @Qx_set_menu_bar_lines
	.globl	Qx_set_menu_bar_lines
	.align	8
Qx_set_menu_bar_lines:
	.quad	50784                   # 0xc660
	.size	Qx_set_menu_bar_lines, 8

	.type	Qx_set_window_size_1,@object # @Qx_set_window_size_1
	.globl	Qx_set_window_size_1
	.align	8
Qx_set_window_size_1:
	.quad	50832                   # 0xc690
	.size	Qx_set_window_size_1, 8

	.type	Qx_set_window_size_2,@object # @Qx_set_window_size_2
	.globl	Qx_set_window_size_2
	.align	8
Qx_set_window_size_2:
	.quad	50880                   # 0xc6c0
	.size	Qx_set_window_size_2, 8

	.type	Qx_set_window_size_3,@object # @Qx_set_window_size_3
	.globl	Qx_set_window_size_3
	.align	8
Qx_set_window_size_3:
	.quad	50928                   # 0xc6f0
	.size	Qx_set_window_size_3, 8

	.type	Qxbm,@object            # @Qxbm
	.globl	Qxbm
	.align	8
Qxbm:
	.quad	50976                   # 0xc720
	.size	Qxbm, 8

	.type	Qxft,@object            # @Qxft
	.globl	Qxft
	.align	8
Qxft:
	.quad	51024                   # 0xc750
	.size	Qxft, 8

	.type	Qxg_change_toolbar_position,@object # @Qxg_change_toolbar_position
	.globl	Qxg_change_toolbar_position
	.align	8
Qxg_change_toolbar_position:
	.quad	51072                   # 0xc780
	.size	Qxg_change_toolbar_position, 8

	.type	Qxg_frame_resized,@object # @Qxg_frame_resized
	.globl	Qxg_frame_resized
	.align	8
Qxg_frame_resized:
	.quad	51120                   # 0xc7b0
	.size	Qxg_frame_resized, 8

	.type	Qxg_frame_set_char_size,@object # @Qxg_frame_set_char_size
	.globl	Qxg_frame_set_char_size
	.align	8
Qxg_frame_set_char_size:
	.quad	51168                   # 0xc7e0
	.size	Qxg_frame_set_char_size, 8

	.type	Qxg_frame_set_char_size_1,@object # @Qxg_frame_set_char_size_1
	.globl	Qxg_frame_set_char_size_1
	.align	8
Qxg_frame_set_char_size_1:
	.quad	51216                   # 0xc810
	.size	Qxg_frame_set_char_size_1, 8

	.type	Qxg_frame_set_char_size_2,@object # @Qxg_frame_set_char_size_2
	.globl	Qxg_frame_set_char_size_2
	.align	8
Qxg_frame_set_char_size_2:
	.quad	51264                   # 0xc840
	.size	Qxg_frame_set_char_size_2, 8

	.type	Qxg_frame_set_char_size_3,@object # @Qxg_frame_set_char_size_3
	.globl	Qxg_frame_set_char_size_3
	.align	8
Qxg_frame_set_char_size_3:
	.quad	51312                   # 0xc870
	.size	Qxg_frame_set_char_size_3, 8

	.type	Qxpm,@object            # @Qxpm
	.globl	Qxpm
	.align	8
Qxpm:
	.quad	51360                   # 0xc8a0
	.size	Qxpm, 8

	.type	Qxwidget_event,@object  # @Qxwidget_event
	.globl	Qxwidget_event
	.align	8
Qxwidget_event:
	.quad	51408                   # 0xc8d0
	.size	Qxwidget_event, 8

	.type	Qyes_or_no_p_history,@object # @Qyes_or_no_p_history
	.globl	Qyes_or_no_p_history
	.align	8
Qyes_or_no_p_history:
	.quad	51456                   # 0xc900
	.size	Qyes_or_no_p_history, 8

	.type	Qzero_width,@object     # @Qzero_width
	.globl	Qzero_width
	.align	8
Qzero_width:
	.quad	51504                   # 0xc930
	.size	Qzero_width, 8

	.type	ARRAY_MARK_FLAG,@object # @ARRAY_MARK_FLAG
	.globl	ARRAY_MARK_FLAG
	.align	8
ARRAY_MARK_FLAG:
	.quad	-9223372036854775808    # 0x8000000000000000
	.size	ARRAY_MARK_FLAG, 8

	.type	PSEUDOVECTOR_FLAG,@object # @PSEUDOVECTOR_FLAG
	.globl	PSEUDOVECTOR_FLAG
	.align	8
PSEUDOVECTOR_FLAG:
	.quad	4611686018427387904     # 0x4000000000000000
	.size	PSEUDOVECTOR_FLAG, 8

	.type	VALMASK,@object         # @VALMASK
	.globl	VALMASK
	.align	8
VALMASK:
	.quad	-8                      # 0xfffffffffffffff8
	.size	VALMASK, 8

	.type	initialized,@object     # @initialized
	.comm	initialized,1,1
	.type	fatal_error_in_progress,@object # @fatal_error_in_progress
	.comm	fatal_error_in_progress,1,1
	.type	might_dump,@object      # @might_dump
	.comm	might_dump,1,1
	.type	heap_bss_diff,@object   # @heap_bss_diff
	.local	heap_bss_diff
	.comm	heap_bss_diff,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-version"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"--version"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"emacs-version"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"emacs-copyright"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid value of 'emacs-version'\n"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid value of 'emacs-copyright'\n"
	.size	.L.str.5, 36

	.type	emacs_version,@object   # @emacs_version
	.section	.rodata,"a",@progbits
emacs_version:
	.asciz	"25.1"
	.size	emacs_version, 5

	.type	emacs_copyright,@object # @emacs_copyright
	.align	16
emacs_copyright:
	.asciz	"Copyright (C) 2016 Free Software Foundation, Inc."
	.size	emacs_copyright, 50

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%s %s\n"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GNU Emacs"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s comes with ABSOLUTELY NO WARRANTY.\n"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"You may redistribute copies of %s\n"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"under the terms of the GNU General Public License.\n"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"For more information about these matters, "
	.size	.L.str.12, 43

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"see the file named COPYING.\n"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-chdir"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"--chdir"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s: Can't chdir to %s: %s\n"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dump"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"bootstrap"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"EMACS_HEAP_EXEC"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"EMACS_HEAP_EXEC=true"
	.size	.L.str.20, 21

	.type	noninteractive,@object  # @noninteractive
	.comm	noninteractive,1,1
	.type	stack_bottom,@object    # @stack_bottom
	.comm	stack_bottom,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"LC_ALL"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"C"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1

	.type	inhibit_window_system,@object # @inhibit_window_system
	.comm	inhibit_window_system,1,1
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-t"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"--terminal"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s: %s: %s\n"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s: %s: not a tty\n"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Using %s\n"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"-nw"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"--no-window-system"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"--no-windows"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"-batch"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"--batch"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"-script"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"--script"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"-scriptload"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"-help"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"--help"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Usage: %s [OPTION-OR-FILENAME]...\n"
	.size	.L.str.39, 35

	.type	usage_message,@object   # @usage_message
	.section	.rodata,"a",@progbits
	.align	16
usage_message:
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.size	usage_message, 96

	.type	daemon_pipe,@object     # @daemon_pipe
	.comm	daemon_pipe,8,4
	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"-daemon"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"--daemon"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Cannot pipe!\n"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\nWarning: due to a long standing Gtk+ bug\nhttp://bugzilla.gnome.org/show_bug.cgi?id=85715\nEmacs might crash when run in daemon mode and the X11 connection is unexpectedly lost.\nUsing an Emacs configured with --with-x-toolkit=lucid does not have this problem.\n"
	.size	.L.str.43, 260

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Error reading status from child\n"
	.size	.L.str.44, 33

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Error: server did not start correctly\n"
	.size	.L.str.45, 39

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"fork"
	.size	.L.str.46, 5

	.type	daemon_name,@object     # @daemon_name
	.local	daemon_name
	.comm	daemon_name,8,8
	.type	running_asynch_code,@object # @running_asynch_code
	.comm	running_asynch_code,1,1
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"-nl"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"--no-loadup"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"-nsl"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"--no-site-lisp"
	.size	.L.str.50, 15

	.type	no_site_lisp,@object    # @no_site_lisp
	.comm	no_site_lisp,1,1
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"-d"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"--display"
	.size	.L.str.52, 10

	.type	display_arg,@object     # @display_arg
	.comm	display_arg,1,1
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"-display"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"-Q"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"--quick"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"-quick"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"-l"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"--load"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"loadup.el"
	.size	.L.str.59, 10

	.type	shut_down_emacs.format,@object # @shut_down_emacs.format
	.section	.rodata,"a",@progbits
	.align	16
shut_down_emacs.format:
	.asciz	"Fatal error %d: "
	.size	shut_down_emacs.format, 17

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"Dumping Emacs works only in batch mode"
	.size	.L.str.60, 39

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Emacs can be dumped only once"
	.size	.L.str.61, 30

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"**************************************************\n"
	.size	.L.str.62, 52

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Warning: Your system has a gap between BSS and the\n"
	.size	.L.str.63, 52

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"heap (%lu bytes).  This usually means that exec-shield\n"
	.size	.L.str.64, 56

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"or something similar is in effect.  The dump may\n"
	.size	.L.str.65, 50

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"fail because of this.  See the section about\n"
	.size	.L.str.66, 46

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"exec-shield in etc/PROBLEMS for more information.\n"
	.size	.L.str.67, 51

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"command-line-processed"
	.size	.L.str.68, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"."
	.size	.L.str.69, 2

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"safe-magic"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/:"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"This function can only be called if emacs is run as a daemon"
	.size	.L.str.72, 61

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"The daemon has already been initialized"
	.size	.L.str.73, 40

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"This function can only be called after loading the init files"
	.size	.L.str.74, 62

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/dev/null"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\n"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"I/O error during daemon initialization"
	.size	.L.str.77, 39

	.type	empty_unibyte_string,@object # @empty_unibyte_string
	.comm	empty_unibyte_string,8,8
	.type	empty_multibyte_string,@object # @empty_multibyte_string
	.comm	empty_multibyte_string,8,8
	.type	initial_argv,@object    # @initial_argv
	.comm	initial_argv,8,8
	.type	initial_argc,@object    # @initial_argc
	.comm	initial_argc,4,4
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Write error to standard output"
	.size	.L.str.78, 31

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\304\200"
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"\nRun Emacs, the extensible, customizable, self-documenting real-time\ndisplay editor.  The recommended way to start Emacs for normal editing\nis with no options at all.\n\nRun M-x info RET m emacs RET m emacs invocation RET inside Emacs to\nread the main documentation for these command-line arguments.\n\nInitialization options:\n\n"
	.size	.L.str.80, 325

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"--batch                     do not do interactive display; implies -q\n--chdir DIR                 change to directory DIR\n--daemon                    start a server in the background\n--debug-init                enable Emacs Lisp debugger for init file\n--display, -d DISPLAY       use X server DISPLAY\n"
	.size	.L.str.81, 302

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"--no-desktop                do not load a saved desktop\n--no-init-file, -q          load neither ~/.emacs nor default.el\n--no-loadup, -nl            do not load loadup.el into bare Emacs\n--no-site-file              do not load site-start.el\n--no-x-resources            do not load X resources\n--no-site-lisp, -nsl        do not add site-lisp directories to load-path\n--no-splash                 do not display a splash screen on startup\n--no-window-system, -nw     do not communicate with X, ignoring $DISPLAY\n"
	.size	.L.str.82, 511

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"--quick, -Q                 equivalent to:\n                              -q --no-site-file --no-site-lisp --no-splash\n                              --no-x-resources\n--script FILE               run FILE as an Emacs Lisp script\n--terminal, -t DEVICE       use DEVICE for terminal I/O\n--user, -u USER             load ~USER/.emacs instead of your own\n\n"
	.size	.L.str.83, 350

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Action options:\n\nFILE                    visit FILE using find-file\n+LINE                   go to line LINE in next FILE\n+LINE:COLUMN            go to line LINE, column COLUMN, in next FILE\n--directory, -L DIR     prepend DIR to load-path (with :DIR, append DIR)\n--eval EXPR             evaluate Emacs Lisp expression EXPR\n--execute EXPR          evaluate Emacs Lisp expression EXPR\n"
	.size	.L.str.84, 384

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"--file FILE             visit FILE using find-file\n--find-file FILE        visit FILE using find-file\n--funcall, -f FUNC      call Emacs Lisp function FUNC with no arguments\n--insert FILE           insert contents of FILE into current buffer\n--kill                  exit without asking for confirmation\n--load, -l FILE         load Emacs Lisp FILE using the load function\n--visit FILE            visit FILE using find-file\n\n"
	.size	.L.str.85, 425

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Display options:\n\n--background-color, -bg COLOR   window background color\n--basic-display, -D             disable many display features;\n                                  used for debugging Emacs\n--border-color, -bd COLOR       main border color\n--border-width, -bw WIDTH       width of main border\n"
	.size	.L.str.86, 300

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"--color, --color=MODE           override color mode for character terminals;\n                                  MODE defaults to `auto', and\n                                  can also be `never', `always',\n                                  or a mode name like `ansi8'\n--cursor-color, -cr COLOR       color of the Emacs cursor indicating point\n--font, -fn FONT                default font; must be fixed-width\n--foreground-color, -fg COLOR   window foreground color\n"
	.size	.L.str.87, 465

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"--fullheight, -fh               make the first frame high as the screen\n--fullscreen, -fs               make the first frame fullscreen\n--fullwidth, -fw                make the first frame wide as the screen\n--maximized, -mm                make the first frame maximized\n--geometry, -g GEOMETRY         window geometry\n"
	.size	.L.str.88, 320

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"--no-bitmap-icon, -nbi          do not use picture of gnu for Emacs icon\n--iconic                        start Emacs in iconified state\n--internal-border, -ib WIDTH    width between text and main border\n--line-spacing, -lsp PIXELS     additional space to put between lines\n--mouse-color, -ms COLOR        mouse cursor color in Emacs window\n--name NAME                     title for initial Emacs frame\n"
	.size	.L.str.89, 403

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"--no-blinking-cursor, -nbc      disable blinking cursor\n--reverse-video, -r, -rv        switch foreground and background\n--title, -T TITLE               title for initial Emacs frame\n--vertical-scroll-bars, -vb     enable vertical scroll bars\n--xrm XRESOURCES                set additional X resources\n--parent-id XID                 set parent window\n--help                          display this help and exit\n--version                       output version information and exit\n\n"
	.size	.L.str.90, 481

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"You can generally also specify long option names with a single -; for\nexample, -batch as well as --batch.  You can use any unambiguous\nabbreviation for a --option.\n\nVarious environment variables and window system resources also affect\nthe operation of Emacs.  See the main documentation.\n\nReport bugs to bug-gnu-emacs@gnu.org.  First, please see the Bugs\nsection of the Emacs manual or the file BUGS.\n"
	.size	.L.str.91, 402

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"lib-src"
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"etc"
	.size	.L.str.93, 4

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"../lib-src"
	.size	.L.str.94, 11

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"../etc"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	".."
	.size	.L.str.96, 3

	.type	standard_args,@object   # @standard_args
	.section	.rodata,"a",@progbits
	.align	16
standard_args:
	.quad	.L.str
	.quad	.L.str.1
	.long	150                     # 0x96
	.long	0                       # 0x0
	.quad	.L.str.14
	.quad	.L.str.15
	.long	130                     # 0x82
	.long	1                       # 0x1
	.quad	.L.str.24
	.quad	.L.str.25
	.long	120                     # 0x78
	.long	1                       # 0x1
	.quad	.L.str.29
	.quad	.L.str.30
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.quad	.L.str.29
	.quad	.L.str.31
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.quad	.L.str.32
	.quad	.L.str.33
	.long	100                     # 0x64
	.long	0                       # 0x0
	.quad	.L.str.34
	.quad	.L.str.35
	.long	100                     # 0x64
	.long	1                       # 0x1
	.quad	.L.str.40
	.quad	.L.str.41
	.long	99                      # 0x63
	.long	0                       # 0x0
	.quad	.L.str.37
	.quad	.L.str.38
	.long	90                      # 0x5a
	.long	0                       # 0x0
	.quad	.L.str.47
	.quad	.L.str.48
	.long	70                      # 0x46
	.long	0                       # 0x0
	.quad	.L.str.49
	.quad	.L.str.50
	.long	65                      # 0x41
	.long	0                       # 0x0
	.quad	.L.str.51
	.quad	.L.str.52
	.long	60                      # 0x3c
	.long	1                       # 0x1
	.quad	.L.str.53
	.quad	0
	.long	60                      # 0x3c
	.long	1                       # 0x1
	.quad	.L.str.54
	.quad	.L.str.55
	.long	55                      # 0x37
	.long	0                       # 0x0
	.quad	.L.str.56
	.quad	0
	.long	55                      # 0x37
	.long	0                       # 0x0
	.quad	.L.str.98
	.quad	.L.str.99
	.long	50                      # 0x32
	.long	0                       # 0x0
	.quad	.L.str.100
	.quad	0
	.long	50                      # 0x32
	.long	0                       # 0x0
	.quad	.L.str.101
	.quad	.L.str.102
	.long	40                      # 0x28
	.long	0                       # 0x0
	.quad	.L.str.103
	.quad	.L.str.104
	.long	40                      # 0x28
	.long	0                       # 0x0
	.quad	.L.str.105
	.quad	.L.str.106
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.quad	.L.str.107
	.quad	0
	.long	30                      # 0x1e
	.long	1                       # 0x1
	.quad	.L.str.108
	.quad	.L.str.109
	.long	20                      # 0x14
	.long	0                       # 0x0
	.quad	.L.str.110
	.quad	.L.str.111
	.long	15                      # 0xf
	.long	0                       # 0x0
	.quad	.L.str.112
	.quad	.L.str.113
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.114
	.quad	0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.115
	.quad	.L.str.116
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.117
	.quad	.L.str.118
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.119
	.quad	.L.str.120
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.121
	.quad	0
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.122
	.quad	.L.str.123
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.124
	.quad	0
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.125
	.quad	.L.str.126
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.127
	.quad	.L.str.128
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.129
	.quad	.L.str.130
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.131
	.quad	.L.str.132
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.133
	.quad	.L.str.134
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.135
	.quad	.L.str.136
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.137
	.quad	0
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.138
	.quad	.L.str.139
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.140
	.quad	.L.str.141
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.142
	.quad	.L.str.143
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.144
	.quad	.L.str.145
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.146
	.quad	.L.str.147
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.148
	.quad	0
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.149
	.quad	.L.str.150
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.151
	.quad	0
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.152
	.quad	.L.str.153
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.154
	.quad	.L.str.155
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.156
	.quad	.L.str.157
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.158
	.quad	.L.str.159
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.160
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.161
	.quad	0
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.162
	.quad	.L.str.163
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.164
	.quad	.L.str.165
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.166
	.quad	.L.str.167
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.168
	.quad	.L.str.169
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.170
	.quad	.L.str.171
	.long	3                       # 0x3
	.long	0                       # 0x0
	.quad	.L.str.172
	.quad	.L.str.173
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.174
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.57
	.quad	.L.str.58
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.175
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.36
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.176
	.quad	.L.str.177
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.178
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.179
	.quad	.L.str.180
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.181
	.quad	.L.str.182
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.183
	.quad	.L.str.184
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.185
	.quad	.L.str.186
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.187
	.quad	.L.str.188
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.189
	.quad	.L.str.190
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.191
	.quad	.L.str.192
	.long	4294967286              # 0xfffffff6
	.long	0                       # 0x0
	.size	standard_args, 1704

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"Option '%s' requires an argument\n"
	.size	.L.str.97, 34

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"-q"
	.size	.L.str.98, 3

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"--no-init-file"
	.size	.L.str.99, 15

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"-no-init-file"
	.size	.L.str.100, 14

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"-no-x-resources"
	.size	.L.str.101, 16

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"--no-x-resources"
	.size	.L.str.102, 17

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"-no-site-file"
	.size	.L.str.103, 14

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"--no-site-file"
	.size	.L.str.104, 15

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"-u"
	.size	.L.str.105, 3

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"--user"
	.size	.L.str.106, 7

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"-user"
	.size	.L.str.107, 6

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"-debug-init"
	.size	.L.str.108, 12

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"--debug-init"
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"-iconic"
	.size	.L.str.110, 8

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"--iconic"
	.size	.L.str.111, 9

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"-D"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"--basic-display"
	.size	.L.str.113, 16

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"-basic-display"
	.size	.L.str.114, 15

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"-nbc"
	.size	.L.str.115, 5

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"--no-blinking-cursor"
	.size	.L.str.116, 21

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"-nbi"
	.size	.L.str.117, 5

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"--no-bitmap-icon"
	.size	.L.str.118, 17

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"-bg"
	.size	.L.str.119, 4

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"--background-color"
	.size	.L.str.120, 19

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"-background"
	.size	.L.str.121, 12

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"-fg"
	.size	.L.str.122, 4

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"--foreground-color"
	.size	.L.str.123, 19

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"-foreground"
	.size	.L.str.124, 12

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"-bd"
	.size	.L.str.125, 4

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"--border-color"
	.size	.L.str.126, 15

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"-bw"
	.size	.L.str.127, 4

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"--border-width"
	.size	.L.str.128, 15

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"-ib"
	.size	.L.str.129, 4

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"--internal-border"
	.size	.L.str.130, 18

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"-ms"
	.size	.L.str.131, 4

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"--mouse-color"
	.size	.L.str.132, 14

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"-cr"
	.size	.L.str.133, 4

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"--cursor-color"
	.size	.L.str.134, 15

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"-fn"
	.size	.L.str.135, 4

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"--font"
	.size	.L.str.136, 7

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"-font"
	.size	.L.str.137, 6

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"-fs"
	.size	.L.str.138, 4

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"--fullscreen"
	.size	.L.str.139, 13

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"-fw"
	.size	.L.str.140, 4

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"--fullwidth"
	.size	.L.str.141, 12

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"-fh"
	.size	.L.str.142, 4

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"--fullheight"
	.size	.L.str.143, 13

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"-mm"
	.size	.L.str.144, 4

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"--maximized"
	.size	.L.str.145, 12

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"-g"
	.size	.L.str.146, 3

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"--geometry"
	.size	.L.str.147, 11

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"-geometry"
	.size	.L.str.148, 10

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"-T"
	.size	.L.str.149, 3

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"--title"
	.size	.L.str.150, 8

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"-title"
	.size	.L.str.151, 7

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"-name"
	.size	.L.str.152, 6

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"--name"
	.size	.L.str.153, 7

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"-xrm"
	.size	.L.str.154, 5

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"--xrm"
	.size	.L.str.155, 6

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"-parent-id"
	.size	.L.str.156, 11

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"--parent-id"
	.size	.L.str.157, 12

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"-r"
	.size	.L.str.158, 3

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"--reverse-video"
	.size	.L.str.159, 16

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"-rv"
	.size	.L.str.160, 4

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"-reverse"
	.size	.L.str.161, 9

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"-hb"
	.size	.L.str.162, 4

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"--horizontal-scroll-bars"
	.size	.L.str.163, 25

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"-vb"
	.size	.L.str.164, 4

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"--vertical-scroll-bars"
	.size	.L.str.165, 23

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"-color"
	.size	.L.str.166, 7

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"--color"
	.size	.L.str.167, 8

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"-no-splash"
	.size	.L.str.168, 11

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"--no-splash"
	.size	.L.str.169, 12

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"-no-desktop"
	.size	.L.str.170, 12

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"--no-desktop"
	.size	.L.str.171, 13

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"-L"
	.size	.L.str.172, 3

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"--directory"
	.size	.L.str.173, 12

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"-directory"
	.size	.L.str.174, 11

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"-load"
	.size	.L.str.175, 6

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"-f"
	.size	.L.str.176, 3

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"--funcall"
	.size	.L.str.177, 10

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"-funcall"
	.size	.L.str.178, 9

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"-eval"
	.size	.L.str.179, 6

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"--eval"
	.size	.L.str.180, 7

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"-execute"
	.size	.L.str.181, 9

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"--execute"
	.size	.L.str.182, 10

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"-find-file"
	.size	.L.str.183, 11

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"--find-file"
	.size	.L.str.184, 12

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"-visit"
	.size	.L.str.185, 7

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"--visit"
	.size	.L.str.186, 8

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"-file"
	.size	.L.str.187, 6

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"--file"
	.size	.L.str.188, 7

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"-insert"
	.size	.L.str.189, 8

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"--insert"
	.size	.L.str.190, 9

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"-kill"
	.size	.L.str.191, 6

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"--kill"
	.size	.L.str.192, 7

	.type	Sinvocation_name,@object # @Sinvocation_name
	.data
	.align	8
Sinvocation_name:
	.quad	167772160               # 0xa000000
	.quad	Finvocation_name
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.212
	.quad	0
	.quad	0
	.size	Sinvocation_name, 48

	.type	Sinvocation_directory,@object # @Sinvocation_directory
	.align	8
Sinvocation_directory:
	.quad	167772160               # 0xa000000
	.quad	Finvocation_directory
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.214
	.quad	0
	.quad	0
	.size	Sinvocation_directory, 48

	.type	Sdaemonp,@object        # @Sdaemonp
	.align	8
Sdaemonp:
	.quad	167772160               # 0xa000000
	.quad	Fdaemonp
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.240
	.quad	0
	.quad	0
	.size	Sdaemonp, 48

	.type	Sdaemon_initialized,@object # @Sdaemon_initialized
	.align	8
Sdaemon_initialized:
	.quad	167772160               # 0xa000000
	.quad	Fdaemon_initialized
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.241
	.quad	0
	.quad	0
	.size	Sdaemon_initialized, 48

	.type	syms_of_emacs.o_fwd,@object # @syms_of_emacs.o_fwd
	.local	syms_of_emacs.o_fwd
	.comm	syms_of_emacs.o_fwd,16,8
	.type	.L.str.193,@object      # @.str.193
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.193:
	.asciz	"command-line-args"
	.size	.L.str.193, 18

	.type	syms_of_emacs.o_fwd.194,@object # @syms_of_emacs.o_fwd.194
	.local	syms_of_emacs.o_fwd.194
	.comm	syms_of_emacs.o_fwd.194,16,8
	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"system-type"
	.size	.L.str.195, 12

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"gnu/linux"
	.size	.L.str.196, 10

	.type	syms_of_emacs.o_fwd.197,@object # @syms_of_emacs.o_fwd.197
	.local	syms_of_emacs.o_fwd.197
	.comm	syms_of_emacs.o_fwd.197,16,8
	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"system-configuration"
	.size	.L.str.198, 21

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"x86_64-unknown-linux-gnu"
	.size	.L.str.199, 25

	.type	syms_of_emacs.o_fwd.200,@object # @syms_of_emacs.o_fwd.200
	.local	syms_of_emacs.o_fwd.200
	.comm	syms_of_emacs.o_fwd.200,16,8
	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"system-configuration-options"
	.size	.L.str.201, 29

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"--without-makeinfo --with-xpm=no --with-jpeg=no --with-gif=no --with-tiff=no CC=/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang CFLAGS=-save-temps"
	.size	.L.str.202, 164

	.type	syms_of_emacs.o_fwd.203,@object # @syms_of_emacs.o_fwd.203
	.local	syms_of_emacs.o_fwd.203
	.comm	syms_of_emacs.o_fwd.203,16,8
	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"system-configuration-features"
	.size	.L.str.204, 30

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"PNG SOUND GSETTINGS NOTIFY GNUTLS FREETYPE XFT ZLIB TOOLKIT_SCROLL_BARS GTK2 X11"
	.size	.L.str.205, 81

	.type	syms_of_emacs.b_fwd,@object # @syms_of_emacs.b_fwd
	.local	syms_of_emacs.b_fwd
	.comm	syms_of_emacs.b_fwd,16,8
	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"noninteractive"
	.size	.L.str.206, 15

	.type	syms_of_emacs.o_fwd.207,@object # @syms_of_emacs.o_fwd.207
	.local	syms_of_emacs.o_fwd.207
	.comm	syms_of_emacs.o_fwd.207,16,8
	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"kill-emacs-hook"
	.size	.L.str.208, 16

	.type	syms_of_emacs.o_fwd.209,@object # @syms_of_emacs.o_fwd.209
	.local	syms_of_emacs.o_fwd.209
	.comm	syms_of_emacs.o_fwd.209,16,8
	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"path-separator"
	.size	.L.str.210, 15

	.type	syms_of_emacs.o_fwd.211,@object # @syms_of_emacs.o_fwd.211
	.local	syms_of_emacs.o_fwd.211
	.comm	syms_of_emacs.o_fwd.211,16,8
	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"invocation-name"
	.size	.L.str.212, 16

	.type	syms_of_emacs.o_fwd.213,@object # @syms_of_emacs.o_fwd.213
	.local	syms_of_emacs.o_fwd.213
	.comm	syms_of_emacs.o_fwd.213,16,8
	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"invocation-directory"
	.size	.L.str.214, 21

	.type	syms_of_emacs.o_fwd.215,@object # @syms_of_emacs.o_fwd.215
	.local	syms_of_emacs.o_fwd.215
	.comm	syms_of_emacs.o_fwd.215,16,8
	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"installation-directory"
	.size	.L.str.216, 23

	.type	syms_of_emacs.o_fwd.217,@object # @syms_of_emacs.o_fwd.217
	.local	syms_of_emacs.o_fwd.217
	.comm	syms_of_emacs.o_fwd.217,16,8
	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"system-messages-locale"
	.size	.L.str.218, 23

	.type	syms_of_emacs.o_fwd.219,@object # @syms_of_emacs.o_fwd.219
	.local	syms_of_emacs.o_fwd.219
	.comm	syms_of_emacs.o_fwd.219,16,8
	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"previous-system-messages-locale"
	.size	.L.str.220, 32

	.type	syms_of_emacs.o_fwd.221,@object # @syms_of_emacs.o_fwd.221
	.local	syms_of_emacs.o_fwd.221
	.comm	syms_of_emacs.o_fwd.221,16,8
	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"system-time-locale"
	.size	.L.str.222, 19

	.type	syms_of_emacs.o_fwd.223,@object # @syms_of_emacs.o_fwd.223
	.local	syms_of_emacs.o_fwd.223
	.comm	syms_of_emacs.o_fwd.223,16,8
	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"previous-system-time-locale"
	.size	.L.str.224, 28

	.type	syms_of_emacs.o_fwd.225,@object # @syms_of_emacs.o_fwd.225
	.local	syms_of_emacs.o_fwd.225
	.comm	syms_of_emacs.o_fwd.225,16,8
	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"before-init-time"
	.size	.L.str.226, 17

	.type	syms_of_emacs.o_fwd.227,@object # @syms_of_emacs.o_fwd.227
	.local	syms_of_emacs.o_fwd.227
	.comm	syms_of_emacs.o_fwd.227,16,8
	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"after-init-time"
	.size	.L.str.228, 16

	.type	syms_of_emacs.b_fwd.229,@object # @syms_of_emacs.b_fwd.229
	.local	syms_of_emacs.b_fwd.229
	.comm	syms_of_emacs.b_fwd.229,16,8
	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"inhibit-x-resources"
	.size	.L.str.230, 20

	.type	syms_of_emacs.o_fwd.231,@object # @syms_of_emacs.o_fwd.231
	.local	syms_of_emacs.o_fwd.231
	.comm	syms_of_emacs.o_fwd.231,16,8
	.type	syms_of_emacs.o_fwd.232,@object # @syms_of_emacs.o_fwd.232
	.local	syms_of_emacs.o_fwd.232
	.comm	syms_of_emacs.o_fwd.232,16,8
	.type	syms_of_emacs.o_fwd.233,@object # @syms_of_emacs.o_fwd.233
	.local	syms_of_emacs.o_fwd.233
	.comm	syms_of_emacs.o_fwd.233,16,8
	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"report-emacs-bug-address"
	.size	.L.str.234, 25

	.type	emacs_bugreport,@object # @emacs_bugreport
	.section	.rodata,"a",@progbits
	.align	16
emacs_bugreport:
	.asciz	"bug-gnu-emacs@gnu.org"
	.size	emacs_bugreport, 22

	.type	syms_of_emacs.o_fwd.235,@object # @syms_of_emacs.o_fwd.235
	.local	syms_of_emacs.o_fwd.235
	.comm	syms_of_emacs.o_fwd.235,16,8
	.type	.L.str.236,@object      # @.str.236
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.236:
	.asciz	"dynamic-library-alist"
	.size	.L.str.236, 22

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"dump-emacs"
	.size	.L.str.237, 11

	.type	Sdump_emacs,@object     # @Sdump_emacs
	.data
	.align	8
Sdump_emacs:
	.quad	167772160               # 0xa000000
	.quad	Fdump_emacs
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.237
	.quad	0
	.quad	0
	.size	Sdump_emacs, 48

	.type	.L.str.238,@object      # @.str.238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.238:
	.asciz	"kill-emacs"
	.size	.L.str.238, 11

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"P"
	.size	.L.str.239, 2

	.type	Skill_emacs,@object     # @Skill_emacs
	.data
	.align	8
Skill_emacs:
	.quad	167772160               # 0xa000000
	.quad	Fkill_emacs
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	0
	.size	Skill_emacs, 48

	.type	.L.str.240,@object      # @.str.240
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.240:
	.asciz	"daemonp"
	.size	.L.str.240, 8

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"daemon-initialized"
	.size	.L.str.241, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
