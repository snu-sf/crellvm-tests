	.text
	.file	"display.bc"
	.globl	DefProcess
	.align	16, 0x90
	.type	DefProcess,@function
DefProcess:                             # @DefProcess
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, (%rsi)
	movq	-16(%rbp), %rcx
	movl	$0, (%rcx)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	DefProcess, .Lfunc_end0-DefProcess
	.cfi_endproc

	.globl	DefRedisplayLine
	.align	16, 0x90
	.type	DefRedisplayLine,@function
DefRedisplayLine:                       # @DefRedisplayLine
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jl	.LBB1_3
# BB#2:                                 # %if.then
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	DefClearLine
.LBB1_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	DefRedisplayLine, .Lfunc_end1-DefRedisplayLine
	.cfi_endproc

	.globl	DefClearLine
	.align	16, 0x90
	.type	DefClearLine,@function
DefClearLine:                           # @DefClearLine
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	flayer, %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	LClearLine
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	DefClearLine, .Lfunc_end2-DefClearLine
	.cfi_endproc

	.globl	DefRewrite
	.align	16, 0x90
	.type	DefRewrite,@function
DefRewrite:                             # @DefRewrite
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
	movl	$1000, %eax             # imm = 0x3E8
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	DefRewrite, .Lfunc_end3-DefRewrite
	.cfi_endproc

	.globl	DefResize
	.align	16, 0x90
	.type	DefResize,@function
DefResize:                              # @DefResize
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
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	DefResize, .Lfunc_end4-DefResize
	.cfi_endproc

	.globl	DefRestore
	.align	16, 0x90
	.type	DefRestore,@function
DefRestore:                             # @DefRestore
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
# BB#1:                                 # %do.body
	movq	display, %rax
	movq	%rax, -8(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB5_2:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	cmpq	$0, display
	je	.LBB5_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB5_4:                                # %for.cond.1
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB5_9
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB5_4 Depth=2
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	flayer, %rax
	jne	.LBB5_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_9
.LBB5_7:                                # %if.end
                                        #   in Loop: Header=BB5_4 Depth=2
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_4
.LBB5_9:                                # %for.end
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB5_11
# BB#10:                                # %if.then.5
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_12
.LBB5_11:                               # %if.end.6
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%edi, %edi
	callq	InsertMode
.LBB5_12:                               # %for.inc.7
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB5_2
.LBB5_13:                               # %for.end.8
	movq	-8(%rbp), %rax
	movq	%rax, display
# BB#14:                                # %do.end
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LKeypadMode
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LCursorkeysMode
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LCursorVisibility
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LMouseMode
	movabsq	$mchar_null, %rsi
	movq	flayer, %rdi
	callq	LSetRendition
	movq	flayer, %rdi
	movl	nwin_default+44, %eax
	andl	$1, %eax
	movl	%eax, %esi
	callq	LSetFlow
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	DefRestore, .Lfunc_end5-DefRestore
	.cfi_endproc

	.globl	InsertMode
	.align	16, 0x90
	.type	InsertMode,@function
InsertMode:                             # @InsertMode
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
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB6_7
# BB#1:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	508(%rcx), %eax
	je	.LBB6_7
# BB#2:                                 # %land.lhs.true.1
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB6_7
# BB#3:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 508(%rcx)
	cmpl	$0, -4(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.5
	movq	display, %rax
	movq	5656(%rax), %rdi
	callq	AddCStr
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movq	display, %rax
	movq	5664(%rax), %rdi
	callq	AddCStr
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	InsertMode, .Lfunc_end6-InsertMode
	.cfi_endproc

	.align	16, 0x90
	.type	BlankResize,@function
BlankResize:                            # @BlankResize
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
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movq	flayer, %rcx
	movl	%esi, 8(%rcx)
	movl	-8(%rbp), %esi
	movq	flayer, %rcx
	movl	%esi, 12(%rcx)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	BlankResize, .Lfunc_end7-BlankResize
	.cfi_endproc

	.globl	MakeDisplay
	.align	16, 0x90
	.type	MakeDisplay,@function
MakeDisplay:                            # @MakeDisplay
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -64(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB8_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	UserAdd
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	$0, -16(%rbp)
	jmp	.LBB8_10
.LBB8_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$7992, %eax             # imm = 0x1F38
	movl	%eax, %esi
	callq	calloc
	movq	%rax, display
	cmpq	$0, %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.4
	movq	$0, -16(%rbp)
	jmp	.LBB8_10
.LBB8_5:                                # %if.end.5
	movabsq	$disp_writeev_fn, %rax
	movabsq	$disp_readev_fn, %rcx
	movq	displays, %rdx
	movq	display, %rsi
	movq	%rdx, (%rsi)
	movq	display, %rdx
	movq	%rdx, displays
	movq	display, %rdx
	movl	$1, 5264(%rdx)
	movl	defnonblock, %edi
	movq	display, %rdx
	movl	%edi, 392(%rdx)
	movl	-44(%rbp), %edi
	movq	display, %rdx
	movl	%edi, 4900(%rdx)
	movl	-44(%rbp), %edi
	movq	display, %rdx
	movl	%edi, 5008(%rdx)
	movq	display, %rdx
	movl	%edi, 4928(%rdx)
	movq	display, %rdx
	movl	$1, 4932(%rdx)
	movq	display, %rdx
	movl	$2, 5012(%rdx)
	movq	display, %rdx
	movq	display, %rsi
	movq	%rdx, 5000(%rsi)
	movq	display, %rsi
	movq	%rdx, 4920(%rsi)
	movq	display, %rdx
	movq	%rcx, 4912(%rdx)
	movq	display, %rcx
	movq	%rax, 4992(%rcx)
	movq	display, %rax
	addq	$4904, %rax             # imm = 0x1328
	movq	%rax, %rdi
	callq	evenq
	movq	display, %rax
	addq	$5280, %rax             # imm = 0x14A0
	movq	display, %rcx
	movq	%rax, 5048(%rcx)
	movq	display, %rax
	addq	$5304, %rax             # imm = 0x14B8
	movq	display, %rcx
	movq	%rax, 5056(%rcx)
	movq	display, %rax
	addq	$4984, %rax             # imm = 0x1378
	movq	%rax, %rdi
	callq	evenq
	movl	$60, %r8d
	movl	%r8d, %edx
	movabsq	$disp_blanker_fn, %rax
	movabsq	$disp_idle_fn, %rcx
	movabsq	$disp_map_fn, %rsi
	movabsq	$disp_hstatus_fn, %rdi
	movabsq	$disp_blocked_fn, %r9
	movabsq	$disp_status_fn, %r10
	movq	display, %r11
	movl	$0, 652(%r11)
	movq	display, %r11
	movq	display, %rbx
	movq	%r11, 640(%rbx)
	movq	display, %r11
	movq	%r10, 632(%r11)
	movq	display, %r10
	movl	$0, 732(%r10)
	movq	display, %r10
	movq	display, %r11
	movq	%r10, 720(%r11)
	movq	display, %r10
	movq	%rdi, 712(%r10)
	movq	display, %r10
	movl	$0, 5092(%r10)
	movq	display, %r10
	movq	display, %r11
	movq	%r10, 5080(%r11)
	movq	display, %r10
	movq	%r9, 5072(%r10)
	movq	display, %r9
	addq	$5304, %r9              # imm = 0x14B8
	movq	display, %r10
	movq	%r9, 5128(%r10)
	movq	display, %r9
	addq	$5288, %r9              # imm = 0x14A8
	movq	display, %r10
	movq	%r9, 5136(%r10)
	movq	display, %r9
	movq	%rdi, 712(%r9)
	movq	display, %rdi
	movl	$0, 5380(%rdi)
	movq	display, %rdi
	movq	display, %r9
	movq	%rdi, 5368(%r9)
	movq	display, %rdi
	movq	%rsi, 5360(%rdi)
	movq	display, %rsi
	movl	$0, 7852(%rsi)
	movq	display, %rsi
	movq	display, %rdi
	movq	%rsi, 7840(%rdi)
	movq	display, %rsi
	movq	%rcx, 7832(%rsi)
	movq	display, %rcx
	movl	$1, 7940(%rcx)
	movq	display, %rcx
	movq	display, %rsi
	movq	%rcx, 7928(%rsi)
	movq	display, %rcx
	movq	%rax, 7920(%rcx)
	movq	display, %rax
	movl	$-1, 7936(%rax)
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	display, %rax
	movl	$-1, 616(%rax)
	callq	Resize_obuf
	movl	defobuflimit, %r8d
	movq	display, %rax
	movl	%r8d, 5284(%rax)
	movq	display, %rax
	movl	5280(%rax), %r8d
	movq	display, %rax
	subl	5284(%rax), %r8d
	movq	display, %rax
	movl	%r8d, 5288(%rax)
	movl	defautonuke, %r8d
	movq	display, %rax
	movl	%r8d, 5308(%rax)
	movq	display, %rax
	movq	5272(%rax), %rax
	movq	display, %rcx
	movq	%rax, 5296(%rcx)
	movq	display, %rax
	movl	$-1, 7408(%rax)
	movl	-48(%rbp), %r8d
	movq	display, %rax
	movl	%r8d, 800(%rax)
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	%rax, %rdi
	callq	cfgetospeed
	movl	%eax, %edi
	callq	lookup_baud
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	je	.LBB8_7
# BB#6:                                 # %if.then.67
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movw	%cx, %dx
	movq	display, %rax
	movw	%dx, 7108(%rax)
.LBB8_7:                                # %if.end.68
	jmp	.LBB8_8
.LBB8_8:                                # %do.body
	jmp	.LBB8_9
.LBB8_9:                                # %do.end
	movl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %edx
	movq	display, %rcx
	addq	$804, %rcx              # imm = 0x324
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movl	$32, %r8d
	movl	%r8d, %edx
	movq	display, %rcx
	movb	$0, 4899(%rcx)
	movq	display, %rcx
	addq	$396, %rcx              # imm = 0x18C
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strncpy
	movabsq	$ProcessInput, %rcx
	movq	display, %rdx
	movb	$0, 428(%rdx)
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	display, %rsi
	movq	%rdx, 8(%rsi)
	movq	display, %rdx
	movq	%rcx, 352(%rdx)
	movl	defmousetrack, %r8d
	movq	display, %rcx
	movl	%r8d, 544(%rcx)
	movq	display, %rcx
	movq	%rcx, -16(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB8_10:                               # %return
	movq	-16(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	MakeDisplay, .Lfunc_end8-MakeDisplay
	.cfi_endproc

	.align	16, 0x90
	.type	disp_readev_fn,@function
disp_readev_fn:                         # @disp_readev_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$12448, %rsp            # imm = 0x30A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
	movq	display, %rsi
	cmpq	$0, 336(%rsi)
	je	.LBB9_8
# BB#1:                                 # %if.then
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -4136(%rbp)
.LBB9_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -4136(%rbp)
	je	.LBB9_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-4136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB9_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB9_2 Depth=1
	callq	RemoveStatus
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-4136(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -4136(%rbp)
	jmp	.LBB9_2
.LBB9_7:                                # %for.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.4
	movq	-16(%rbp), %rax
	movq	%rax, display
	movq	display, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB9_10
# BB#9:                                 # %if.then.6
	movl	$4096, -20(%rbp)        # imm = 0x1000
	jmp	.LBB9_15
.LBB9_10:                               # %if.else
	movq	display, %rax
	movq	376(%rax), %rax
	cmpq	$0, 168(%rax)
	je	.LBB9_13
# BB#11:                                # %land.lhs.true
	movq	display, %rax
	movq	376(%rax), %rax
	movq	168(%rax), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB9_13
# BB#12:                                # %if.then.12
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	movq	display, %rdx
	movq	376(%rdx), %rdx
	movq	168(%rdx), %rdx
	movslq	5808(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.16
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	movq	display, %rdx
	movq	376(%rdx), %rdx
	movslq	4624(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
.LBB9_14:                               # %if.end.21
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.22
	cmpl	$4096, -20(%rbp)        # imm = 0x1000
	jle	.LBB9_17
# BB#16:                                # %if.then.25
	movl	$4096, -20(%rbp)        # imm = 0x1000
.LBB9_17:                               # %if.end.26
	cmpl	$0, -20(%rbp)
	jg	.LBB9_19
# BB#18:                                # %if.then.29
	movl	$1, -20(%rbp)
.LBB9_19:                               # %if.end.30
	leaq	-4128(%rbp), %rsi
	movq	display, %rax
	movl	4900(%rax), %edi
	movslq	-20(%rbp), %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB9_26
# BB#20:                                # %if.then.35
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB9_22
# BB#21:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB9_23
.LBB9_22:                               # %if.then.42
	jmp	.LBB9_117
.LBB9_23:                               # %if.end.43
	jmp	.LBB9_24
.LBB9_24:                               # %do.body
	jmp	.LBB9_25
.LBB9_25:                               # %do.end
	callq	Hangup
	movl	$1, %edi
	callq	sleep
	movl	%eax, -12424(%rbp)      # 4-byte Spill
	jmp	.LBB9_117
.LBB9_26:                               # %if.else.45
	cmpl	$0, -20(%rbp)
	jne	.LBB9_30
# BB#27:                                # %if.then.48
	jmp	.LBB9_28
.LBB9_28:                               # %do.body.49
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.50
	callq	Hangup
	movl	$1, %edi
	callq	sleep
	movl	%eax, -12428(%rbp)      # 4-byte Spill
	jmp	.LBB9_117
.LBB9_30:                               # %if.end.52
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.53
	movq	display, %rax
	cmpl	$4, 7812(%rax)
	jne	.LBB9_36
# BB#32:                                # %if.then.56
	movq	display, %rax
	movl	$0, 7812(%rax)
	callq	KillBlanker
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB9_34
# BB#33:                                # %cond.true
	movq	display, %rax
	movq	376(%rax), %rax
	movsbl	10849(%rax), %ecx
	movl	%ecx, -12432(%rbp)      # 4-byte Spill
	jmp	.LBB9_35
.LBB9_34:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -12432(%rbp)      # 4-byte Spill
	jmp	.LBB9_35
.LBB9_35:                               # %cond.end
	movl	-12432(%rbp), %eax      # 4-byte Reload
	movl	%eax, %edi
	callq	Activate
	callq	ResetIdle
	jmp	.LBB9_117
.LBB9_36:                               # %if.end.62
	movq	display, %rax
	cmpl	$1, 7812(%rax)
	jle	.LBB9_49
# BB#37:                                # %if.then.66
	movq	$0, flayer
	movq	windows, %rax
	movq	%rax, -4152(%rbp)
.LBB9_38:                               # %for.cond.67
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -4152(%rbp)
	je	.LBB9_46
# BB#39:                                # %for.body.69
                                        #   in Loop: Header=BB9_38 Depth=1
	movq	-4152(%rbp), %rax
	movq	12704(%rax), %rax
	cmpq	display, %rax
	jne	.LBB9_44
# BB#40:                                # %if.then.72
	leaq	-4128(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, flayer
	movq	%rax, -4144(%rbp)
.LBB9_41:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB9_43
# BB#42:                                # %while.body
                                        #   in Loop: Header=BB9_41 Depth=1
	leaq	-4144(%rbp), %rdi
	leaq	-20(%rbp), %rsi
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*(%rax)
	jmp	.LBB9_41
.LBB9_43:                               # %while.end
	jmp	.LBB9_117
.LBB9_44:                               # %if.end.76
                                        #   in Loop: Header=BB9_38 Depth=1
	jmp	.LBB9_45
.LBB9_45:                               # %for.inc.77
                                        #   in Loop: Header=BB9_38 Depth=1
	movq	-4152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -4152(%rbp)
	jmp	.LBB9_38
.LBB9_46:                               # %for.end.78
	jmp	.LBB9_47
.LBB9_47:                               # %do.body.79
	jmp	.LBB9_48
.LBB9_48:                               # %do.end.80
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	display, %rsi
	callq	zmodem_abort
.LBB9_49:                               # %if.end.81
	cmpl	$0, idletimo
	jle	.LBB9_51
# BB#50:                                # %if.then.84
	callq	ResetIdle
.LBB9_51:                               # %if.end.85
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB9_53
# BB#52:                                # %if.then.88
	movq	display, %rax
	movq	display, %rcx
	movq	376(%rcx), %rcx
	movq	%rax, 184(%rcx)
.LBB9_53:                               # %if.end.90
	movq	display, %rax
	cmpl	$0, 540(%rax)
	je	.LBB9_95
# BB#54:                                # %land.lhs.true.92
	movq	display, %rax
	cmpq	$0, 336(%rax)
	je	.LBB9_95
# BB#55:                                # %if.then.95
	leaq	-4128(%rbp), %rax
	movq	%rax, -4160(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -4172(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -4172(%rbp)
.LBB9_56:                               # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4172(%rbp)
	jle	.LBB9_94
# BB#57:                                # %for.body.100
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpl	$5, -4172(%rbp)
	jle	.LBB9_62
# BB#58:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$27, %ecx
	jne	.LBB9_62
# BB#59:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB9_62
# BB#60:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$77, %ecx
	jne	.LBB9_62
# BB#61:                                # %if.then.117
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4160(%rbp)
	movl	-4172(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -4172(%rbp)
	jmp	.LBB9_67
.LBB9_62:                               # %if.else.118
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpl	$5, -4172(%rbp)
	jl	.LBB9_65
# BB#63:                                # %lor.lhs.false.121
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$155, %ecx
	jne	.LBB9_65
# BB#64:                                # %lor.lhs.false.126
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$77, %ecx
	je	.LBB9_66
.LBB9_65:                               # %if.then.131
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_93
.LBB9_66:                               # %if.end.132
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_67
.LBB9_67:                               # %if.end.133
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	3(%rax), %ecx
	subl	$33, %ecx
	movl	%ecx, -4164(%rbp)
	movq	-4160(%rbp), %rax
	movzbl	4(%rax), %ecx
	subl	$33, %ecx
	movl	%ecx, -4168(%rbp)
	movl	-4164(%rbp), %ecx
	movq	display, %rax
	movq	336(%rax), %rax
	cmpl	216(%rax), %ecx
	jl	.LBB9_82
# BB#68:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4164(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	220(%rcx), %eax
	jg	.LBB9_82
# BB#69:                                # %land.lhs.true.147
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4168(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB9_82
# BB#70:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4168(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	cmpl	228(%rcx), %eax
	jg	.LBB9_82
# BB#71:                                # %if.then.155
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB9_73
# BB#72:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	movq	376(%rax), %rax
	cmpl	$0, 10852(%rax)
	jne	.LBB9_75
.LBB9_73:                               # %lor.lhs.false.161
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	cmpl	$0, 544(%rax)
	je	.LBB9_81
# BB#74:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	cmpl	$1, 68(%rax)
	jne	.LBB9_81
.LBB9_75:                               # %if.then.168
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	movq	336(%rax), %rax
	movl	208(%rax), %ecx
	movl	-4164(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -4164(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movl	212(%rax), %ecx
	movl	-4168(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -4168(%rbp)
	cmpl	$0, -4164(%rbp)
	jl	.LBB9_80
# BB#76:                                # %land.lhs.true.175
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4164(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB9_80
# BB#77:                                # %land.lhs.true.180
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpl	$0, -4168(%rbp)
	jl	.LBB9_80
# BB#78:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4168(%rbp), %eax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB9_80
# BB#79:                                # %if.then.188
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4164(%rbp), %eax
	addl	$33, %eax
	movb	%al, %cl
	movq	-4160(%rbp), %rdx
	movb	%cl, 3(%rdx)
	movl	-4168(%rbp), %eax
	addl	$33, %eax
	movb	%al, %cl
	movq	-4160(%rbp), %rdx
	movb	%cl, 4(%rdx)
	movl	-4172(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -4172(%rbp)
	movq	-4160(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -4160(%rbp)
	jmp	.LBB9_93
.LBB9_80:                               # %if.end.195
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_81
.LBB9_81:                               # %if.end.196
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_88
.LBB9_82:                               # %if.else.197
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rax
	cmpl	$0, 544(%rax)
	je	.LBB9_87
# BB#83:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB9_87
# BB#84:                                # %if.then.205
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4164(%rbp), %edi
	movl	-4168(%rbp), %esi
	callq	FindCanvas
	movq	%rax, -4184(%rbp)
	cmpq	$0, -4184(%rbp)
	je	.LBB9_86
# BB#85:                                # %if.then.209
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	display, %rdi
	movq	-4184(%rbp), %rsi
	callq	SetForeCanvas
.LBB9_86:                               # %if.end.210
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_87
.LBB9_87:                               # %if.end.211
                                        #   in Loop: Header=BB9_56 Depth=1
	jmp	.LBB9_88
.LBB9_88:                               # %if.end.212
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$91, %ecx
	jne	.LBB9_90
# BB#89:                                # %if.then.217
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	addq	$1, %rax
	movq	-4160(%rbp), %rsi
	movslq	-4172(%rbp), %rdx
	movq	%rax, %rdi
	callq	bcopy
	movq	-4160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4160(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
.LBB9_90:                               # %if.end.222
                                        #   in Loop: Header=BB9_56 Depth=1
	cmpl	$5, -4172(%rbp)
	jle	.LBB9_92
# BB#91:                                # %if.then.225
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	addq	$5, %rax
	movq	-4160(%rbp), %rsi
	movl	-4172(%rbp), %ecx
	subl	$5, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	bcopy
.LBB9_92:                               # %if.end.229
                                        #   in Loop: Header=BB9_56 Depth=1
	movq	-4160(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4160(%rbp)
	movl	-4172(%rbp), %ecx
	subl	$4, %ecx
	movl	%ecx, -4172(%rbp)
	movl	-20(%rbp), %ecx
	subl	$5, %ecx
	movl	%ecx, -20(%rbp)
.LBB9_93:                               # %for.inc.233
                                        #   in Loop: Header=BB9_56 Depth=1
	movl	-4172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4172(%rbp)
	movq	-4160(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -4160(%rbp)
	jmp	.LBB9_56
.LBB9_94:                               # %for.end.236
	jmp	.LBB9_95
.LBB9_95:                               # %if.end.237
	movq	display, %rax
	movl	496(%rax), %ecx
	movq	display, %rax
	cmpq	$0, 336(%rax)
	movl	%ecx, -12436(%rbp)      # 4-byte Spill
	je	.LBB9_97
# BB#96:                                # %cond.true.240
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -12440(%rbp)      # 4-byte Spill
	jmp	.LBB9_98
.LBB9_97:                               # %cond.false.243
	xorl	%eax, %eax
	movl	%eax, -12440(%rbp)      # 4-byte Spill
	jmp	.LBB9_98
.LBB9_98:                               # %cond.end.244
	movl	-12440(%rbp), %eax      # 4-byte Reload
	movl	-12436(%rbp), %ecx      # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB9_116
# BB#99:                                # %if.then.248
	movq	display, %rax
	cmpq	$0, 336(%rax)
	je	.LBB9_101
# BB#100:                               # %cond.true.252
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -12444(%rbp)      # 4-byte Spill
	jmp	.LBB9_102
.LBB9_101:                              # %cond.false.256
	xorl	%eax, %eax
	movl	%eax, -12444(%rbp)      # 4-byte Spill
	jmp	.LBB9_102
.LBB9_102:                              # %cond.end.257
	movl	-12444(%rbp), %eax      # 4-byte Reload
	movl	%eax, -4200(%rbp)
	movl	$0, -4192(%rbp)
	movl	$0, -4188(%rbp)
.LBB9_103:                              # %for.cond.259
                                        # =>This Inner Loop Header: Depth=1
	movl	-4188(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_115
# BB#104:                               # %for.body.262
                                        #   in Loop: Header=BB9_103 Depth=1
	movslq	-4188(%rbp), %rax
	movzbl	-4128(%rbp,%rax), %ecx
	movl	%ecx, -4196(%rbp)
	movl	-4196(%rbp), %edi
	movq	display, %rax
	movl	496(%rax), %esi
	movq	display, %rax
	addq	$500, %rax              # imm = 0x1F4
	movq	%rax, %rdx
	callq	DecodeChar
	movl	%eax, -4196(%rbp)
	cmpl	$-2, -4196(%rbp)
	jne	.LBB9_106
# BB#105:                               # %if.then.270
                                        #   in Loop: Header=BB9_103 Depth=1
	movl	-4188(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4188(%rbp)
.LBB9_106:                              # %if.end.272
                                        #   in Loop: Header=BB9_103 Depth=1
	cmpl	$0, -4196(%rbp)
	jge	.LBB9_108
# BB#107:                               # %if.then.275
                                        #   in Loop: Header=BB9_103 Depth=1
	jmp	.LBB9_114
.LBB9_108:                              # %if.end.276
                                        #   in Loop: Header=BB9_103 Depth=1
	cmpl	$0, pastefont
	je	.LBB9_110
# BB#109:                               # %if.then.278
                                        #   in Loop: Header=BB9_103 Depth=1
	leaq	-12420(%rbp), %rcx
	leaq	-12416(%rbp), %rax
	movl	$0, -12420(%rbp)
	movslq	-4192(%rbp), %rdx
	addq	%rdx, %rax
	movl	-4196(%rbp), %esi
	movl	-4200(%rbp), %edx
	movq	%rax, %rdi
	callq	EncodeChar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-12420(%rbp), %rcx
	leaq	-12416(%rbp), %rdi
	addl	-4192(%rbp), %eax
	movl	%eax, -4192(%rbp)
	movslq	-4192(%rbp), %r8
	addq	%r8, %rdi
	movl	-4200(%rbp), %edx
	callq	EncodeChar
	addl	-4192(%rbp), %eax
	movl	%eax, -4192(%rbp)
	jmp	.LBB9_111
.LBB9_110:                              # %if.else.288
                                        #   in Loop: Header=BB9_103 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-12416(%rbp), %rdx
	movslq	-4192(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-4196(%rbp), %esi
	movl	-4200(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	EncodeChar
	addl	-4192(%rbp), %eax
	movl	%eax, -4192(%rbp)
.LBB9_111:                              # %if.end.294
                                        #   in Loop: Header=BB9_103 Depth=1
	cmpl	$8192, -4192(%rbp)      # imm = 0x2000
	jle	.LBB9_113
# BB#112:                               # %if.then.297
	jmp	.LBB9_115
.LBB9_113:                              # %if.end.298
                                        #   in Loop: Header=BB9_103 Depth=1
	jmp	.LBB9_114
.LBB9_114:                              # %for.inc.299
                                        #   in Loop: Header=BB9_103 Depth=1
	movl	-4188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4188(%rbp)
	jmp	.LBB9_103
.LBB9_115:                              # %for.end.300
	leaq	-12416(%rbp), %rdi
	movq	display, %rax
	movq	352(%rax), %rax
	movl	-4192(%rbp), %esi
	callq	*%rax
	jmp	.LBB9_117
.LBB9_116:                              # %if.end.302
	leaq	-4128(%rbp), %rdi
	movq	display, %rax
	movq	352(%rax), %rax
	movl	-20(%rbp), %esi
	callq	*%rax
.LBB9_117:                              # %return
	addq	$12448, %rsp            # imm = 0x30A0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	disp_readev_fn, .Lfunc_end9-disp_readev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_writeev_fn,@function
disp_writeev_fn:                        # @disp_writeev_fn
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$256, -24(%rbp)         # imm = 0x100
	movq	-16(%rbp), %rsi
	movq	%rsi, display
	movq	display, %rsi
	movq	5296(%rsi), %rsi
	movq	display, %rdi
	movq	5272(%rdi), %rdi
	subq	%rdi, %rsi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB10_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB10_2:                               # %if.end
	movq	display, %rax
	cmpl	$0, 620(%rax)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	620(%rcx), %eax
	jle	.LBB10_5
# BB#4:                                 # %if.then.5
	movq	display, %rax
	movl	620(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB10_5:                               # %if.end.7
	jmp	.LBB10_6
.LBB10_6:                               # %do.body
	jmp	.LBB10_7
.LBB10_7:                               # %do.end
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	movq	5272(%rax), %rsi
	movslq	-24(%rbp), %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB10_42
# BB#8:                                 # %if.then.13
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB10_12
# BB#9:                                 # %if.then.15
	movq	display, %rax
	movq	5272(%rax), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	display, %rcx
	movq	5272(%rcx), %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	bcopy
# BB#10:                                # %do.body.19
	jmp	.LBB10_11
.LBB10_11:                              # %do.end.20
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movslq	%eax, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 5296(%rdx)
	movl	-24(%rbp), %eax
	movq	display, %rcx
	addl	5304(%rcx), %eax
	movl	%eax, 5304(%rcx)
	movq	display, %rcx
	cmpl	$0, 620(%rcx)
	je	.LBB10_20
# BB#13:                                # %if.then.27
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	620(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 620(%rcx)
	movq	display, %rcx
	cmpl	$0, 620(%rcx)
	jne	.LBB10_19
# BB#14:                                # %if.then.32
	jmp	.LBB10_15
.LBB10_15:                              # %do.body.33
	jmp	.LBB10_16
.LBB10_16:                              # %do.end.34
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB10_18
# BB#17:                                # %if.then.37
	movq	display, %rax
	movl	5280(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 612(%rax)
	movq	display, %rax
	movl	5304(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 616(%rax)
	movq	display, %rax
	movl	$0, 5280(%rax)
	movq	display, %rax
	movl	$0, 5304(%rax)
.LBB10_18:                              # %if.end.41
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	display, %rcx
	addq	$560, %rcx              # imm = 0x230
	movq	%rcx, %rdi
	callq	gettimeofday
	movq	display, %rcx
	addq	$624, %rcx              # imm = 0x270
	movl	MsgWait, %esi
	movq	%rcx, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	SetTimeout
	movq	display, %rcx
	addq	$624, %rcx              # imm = 0x270
	movq	%rcx, %rdi
	callq	evenq
.LBB10_19:                              # %if.end.44
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.45
	movq	display, %rax
	cmpl	$0, 7816(%rax)
	je	.LBB10_24
# BB#21:                                # %if.then.47
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	7816(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 7816(%rcx)
	movq	display, %rcx
	cmpl	$0, 7816(%rcx)
	jge	.LBB10_23
# BB#22:                                # %if.then.53
	movq	display, %rax
	movl	$0, 7816(%rax)
.LBB10_23:                              # %if.end.55
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.56
	movq	display, %rax
	cmpl	$0, 5120(%rax)
	je	.LBB10_33
# BB#25:                                # %if.then.58
	movl	$2, %eax
	movq	display, %rcx
	movq	5296(%rcx), %rcx
	movq	display, %rdx
	movq	5272(%rdx), %rdx
	subq	%rdx, %rcx
	movq	display, %rdx
	movl	5284(%rdx), %esi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jle	.LBB10_29
# BB#26:                                # %if.then.67
	jmp	.LBB10_27
.LBB10_27:                              # %do.body.68
	jmp	.LBB10_28
.LBB10_28:                              # %do.end.69
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	display, %rcx
	movl	392(%rcx), %esi
	movq	%rax, %rdi
	callq	SetTimeout
	jmp	.LBB10_32
.LBB10_29:                              # %if.else
	jmp	.LBB10_30
.LBB10_30:                              # %do.body.71
	jmp	.LBB10_31
.LBB10_31:                              # %do.end.72
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evdeq
.LBB10_32:                              # %if.end.74
	jmp	.LBB10_33
.LBB10_33:                              # %if.end.75
	movq	display, %rax
	cmpl	$1, 7812(%rax)
	jne	.LBB10_41
# BB#34:                                # %land.lhs.true.78
	movq	display, %rax
	movq	5272(%rax), %rax
	movq	display, %rcx
	cmpq	5296(%rcx), %rax
	jne	.LBB10_41
# BB#35:                                # %if.then.83
	jmp	.LBB10_36
.LBB10_36:                              # %do.body.84
	jmp	.LBB10_37
.LBB10_37:                              # %do.end.85
	movq	display, %rax
	movl	$0, 7812(%rax)
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB10_39
# BB#38:                                # %cond.true
	movq	display, %rax
	movq	376(%rax), %rax
	movsbl	10849(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB10_40
.LBB10_39:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB10_40
.LBB10_40:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	Activate
	movq	display, %rcx
	movq	5296(%rcx), %rcx
	movq	display, %rdx
	movq	5272(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %eax
	movq	display, %rcx
	movl	%eax, 7816(%rcx)
.LBB10_41:                              # %if.end.97
	jmp	.LBB10_48
.LBB10_42:                              # %if.else.98
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB10_44
# BB#43:                                # %if.then.102
	movq	display, %rax
	addq	$4984, %rax             # imm = 0x1378
	movq	%rax, %rdi
	callq	evdeq
	movl	$100, %esi
	movabsq	$disp_writeev_eagain, %rax
	movq	display, %rdi
	movl	$0, 5012(%rdi)
	movq	display, %rdi
	movq	%rax, 4992(%rdi)
	movq	display, %rax
	addq	$4984, %rax             # imm = 0x1378
	movq	%rax, %rdi
	callq	SetTimeout
	movq	display, %rax
	addq	$4984, %rax             # imm = 0x1378
	movq	%rax, %rdi
	callq	evenq
.LBB10_44:                              # %if.end.107
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB10_47
# BB#45:                                # %land.lhs.true.111
	callq	__errno_location
	cmpl	$11, (%rax)
	je	.LBB10_47
# BB#46:                                # %if.then.115
	callq	__errno_location
	movabsq	$.L.str.18, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
.LBB10_47:                              # %if.end.117
	jmp	.LBB10_48
.LBB10_48:                              # %if.end.118
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	disp_writeev_fn, .Lfunc_end10-disp_writeev_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_status_fn,@function
disp_status_fn:                         # @disp_status_fn
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
# BB#1:                                 # %do.body
	jmp	.LBB11_2
.LBB11_2:                               # %do.end
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB11_4
# BB#3:                                 # %if.then
	callq	RemoveStatus
.LBB11_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	disp_status_fn, .Lfunc_end11-disp_status_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_hstatus_fn,@function
disp_hstatus_fn:                        # @disp_hstatus_fn
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
	movq	display, %rsi
	cmpl	$2, 576(%rsi)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	SetTimeout
	movq	-8(%rbp), %rdi
	callq	evenq
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	callq	RefreshHStatus
.LBB12_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	disp_hstatus_fn, .Lfunc_end12-disp_hstatus_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_blocked_fn,@function
disp_blocked_fn:                        # @disp_blocked_fn
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
# BB#1:                                 # %do.body
	jmp	.LBB13_2
.LBB13_2:                               # %do.end
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	subq	%rcx, %rax
	movq	display, %rcx
	movl	5284(%rcx), %edx
	movq	display, %rcx
	addl	7816(%rcx), %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB13_14
# BB#3:                                 # %if.then
	jmp	.LBB13_4
.LBB13_4:                               # %do.body.2
	jmp	.LBB13_5
.LBB13_5:                               # %do.end.3
	movq	display, %rax
	movl	$1, 7812(%rax)
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB13_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	display, %rcx
	addq	$5288, %rcx             # imm = 0x14A8
	cmpq	%rcx, %rax
	jne	.LBB13_11
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_9
.LBB13_9:                               # %do.body.7
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.8
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 264(%rax)
.LBB13_11:                              # %if.end
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_12
.LBB13_12:                              # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_6
.LBB13_13:                              # %for.end
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.12
	popq	%rbp
	retq
.Lfunc_end13:
	.size	disp_blocked_fn, .Lfunc_end13-disp_blocked_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_map_fn,@function
disp_map_fn:                            # @disp_map_fn
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
# BB#1:                                 # %do.body
	jmp	.LBB14_2
.LBB14_2:                               # %do.end
	movq	display, %rax
	movl	5336(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %ecx
	jne	.LBB14_4
# BB#3:                                 # %if.then
	jmp	.LBB14_16
.LBB14_4:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	display, %rdx
	movq	5328(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -24(%rbp)
	movq	display, %rcx
	movq	5320(%rcx), %rcx
	addq	$3, %rcx
	movq	display, %rdx
	movq	%rcx, 5328(%rdx)
	movq	display, %rcx
	movl	$0, 5336(%rcx)
	movq	display, %rcx
	movq	5344(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rcx
	je	.LBB14_14
# BB#5:                                 # %if.then.4
	movq	display, %rax
	movq	$0, 5344(%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	%edx, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ecx, -32(%rbp)
# BB#6:                                 # %do.body.8
	jmp	.LBB14_7
.LBB14_7:                               # %do.end.9
	jmp	.LBB14_8
.LBB14_8:                               # %do.body.10
	jmp	.LBB14_9
.LBB14_9:                               # %do.end.11
	movl	-32(%rbp), %edi
	callq	StuffKey
	cmpl	$0, %eax
	je	.LBB14_11
# BB#10:                                # %if.then.13
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %esi
	movq	%rax, %rdi
	callq	ProcessInput2
.LBB14_11:                              # %if.end.17
	cmpq	$0, display
	jne	.LBB14_13
# BB#12:                                # %if.then.20
	jmp	.LBB14_16
.LBB14_13:                              # %if.end.21
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	-28(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -28(%rbp)
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.else
	movq	display, %rax
	movl	$1, 5432(%rax)
.LBB14_15:                              # %if.end.28
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	ProcessInput
.LBB14_16:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	disp_map_fn, .Lfunc_end14-disp_map_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_idle_fn,@function
disp_idle_fn:                           # @disp_idle_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
# BB#1:                                 # %do.body
	jmp	.LBB15_2
.LBB15_2:                               # %do.end
	cmpl	$0, idletimo
	jle	.LBB15_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$-1, idleaction
	jne	.LBB15_5
.LBB15_4:                               # %if.then
	jmp	.LBB15_15
.LBB15_5:                               # %if.end
	movabsq	$idleaction, %rdi
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	display, %rax
	movq	%rax, -24(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	376(%rax), %rax
	movq	%rax, fore
	callq	DoAction
	cmpl	$19, idleaction
	jne	.LBB15_7
# BB#6:                                 # %if.then.3
	jmp	.LBB15_15
.LBB15_7:                               # %if.end.4
	movq	displays, %rax
	movq	%rax, display
.LBB15_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB15_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-24(%rbp), %rax
	cmpq	display, %rax
	jne	.LBB15_11
# BB#10:                                # %if.then.6
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.7
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_12
.LBB15_12:                              # %for.inc
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB15_8
.LBB15_13:                              # %for.end
	cmpq	$0, display
	je	.LBB15_15
# BB#14:                                # %if.then.9
	callq	ResetIdle
.LBB15_15:                              # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	disp_idle_fn, .Lfunc_end15-disp_idle_fn
	.cfi_endproc

	.align	16, 0x90
	.type	disp_blanker_fn,@function
disp_blanker_fn:                        # @disp_blanker_fn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$4128, %rsp             # imm = 0x1020
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-4112(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
	movq	display, %rsi
	movl	7936(%rsi), %edi
	movq	%rcx, %rsi
	callq	read
	movl	%eax, %edi
	movl	%edi, -4124(%rbp)
	cmpl	$0, -4124(%rbp)
	jg	.LBB16_2
# BB#1:                                 # %if.then
	movq	display, %rax
	addq	$7912, %rax             # imm = 0x1EE8
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	movl	7936(%rax), %edi
	callq	close
	movq	display, %rcx
	movl	$-1, 7936(%rcx)
	movl	%eax, -4128(%rbp)       # 4-byte Spill
	jmp	.LBB16_10
.LBB16_2:                               # %if.end
	leaq	-4112(%rbp), %rax
	movq	%rax, -4120(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4124(%rbp)
	je	.LBB16_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %do.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB16_7
# BB#6:                                 # %if.then.11
                                        #   in Loop: Header=BB16_3 Depth=1
	callq	Resize_obuf
.LBB16_7:                               # %if.end.12
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-4120(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4120(%rbp)
	movb	(%rax), %dl
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rax)
	movb	%dl, (%rcx)
# BB#8:                                 # %do.end
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_9
.LBB16_9:                               # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-4124(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4124(%rbp)
	jmp	.LBB16_3
.LBB16_10:                              # %for.end
	addq	$4128, %rsp             # imm = 0x1020
	popq	%rbp
	retq
.Lfunc_end16:
	.size	disp_blanker_fn, .Lfunc_end16-disp_blanker_fn
	.cfi_endproc

	.globl	Resize_obuf
	.align	16, 0x90
	.type	Resize_obuf,@function
Resize_obuf:                            # @Resize_obuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
# BB#1:                                 # %do.body
	jmp	.LBB17_2
.LBB17_2:                               # %do.end
	movq	display, %rax
	cmpl	$0, 616(%rax)
	jl	.LBB17_8
# BB#3:                                 # %if.then
	jmp	.LBB17_4
.LBB17_4:                               # %do.body.1
	jmp	.LBB17_5
.LBB17_5:                               # %do.end.2
	callq	RemoveStatusMinWait
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jle	.LBB17_7
# BB#6:                                 # %if.then.4
	jmp	.LBB17_16
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.5
	movq	display, %rax
	cmpl	$0, 5280(%rax)
	je	.LBB17_11
# BB#9:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 5272(%rax)
	je	.LBB17_11
# BB#10:                                # %if.then.7
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -4(%rbp)
	movq	display, %rax
	movl	5280(%rax), %edx
	addl	$4096, %edx             # imm = 0x1000
	movl	%edx, 5280(%rax)
	movq	display, %rax
	movl	5304(%rax), %edx
	addl	$4096, %edx             # imm = 0x1000
	movl	%edx, 5304(%rax)
	movq	display, %rax
	movq	5272(%rax), %rdi
	movq	display, %rax
	movslq	5280(%rax), %rsi
	callq	realloc
	movq	display, %rcx
	movq	%rax, 5272(%rcx)
	jmp	.LBB17_12
.LBB17_11:                              # %if.else
	movl	$0, -4(%rbp)
	movq	display, %rax
	movl	$4096, 5280(%rax)       # imm = 0x1000
	movq	display, %rax
	movl	$4096, 5304(%rax)       # imm = 0x1000
	movq	display, %rax
	movslq	5280(%rax), %rdi
	callq	malloc
	movq	display, %rdi
	movq	%rax, 5272(%rdi)
.LBB17_12:                              # %if.end.22
	movq	display, %rax
	cmpq	$0, 5272(%rax)
	jne	.LBB17_14
# BB#13:                                # %if.then.25
	xorl	%edi, %edi
	movabsq	$.L.str.11, %rsi
	movb	$0, %al
	callq	Panic
.LBB17_14:                              # %if.end.26
	movq	display, %rax
	movq	5272(%rax), %rax
	movslq	-4(%rbp), %rcx
	addq	%rcx, %rax
	movq	display, %rcx
	movq	%rax, 5296(%rcx)
	movq	display, %rax
	movl	5280(%rax), %edx
	movq	display, %rax
	subl	5284(%rax), %edx
	movq	display, %rax
	movl	%edx, 5288(%rax)
# BB#15:                                # %do.body.30
	jmp	.LBB17_16
.LBB17_16:                              # %do.end.31
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Resize_obuf, .Lfunc_end17-Resize_obuf
	.cfi_endproc

	.globl	FreeDisplay
	.align	16, 0x90
	.type	FreeDisplay,@function
FreeDisplay:                            # @FreeDisplay
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
	subq	$32, %rsp
	callq	FreeTransTable
	callq	KillBlanker
	movq	display, %rax
	cmpl	$0, 4900(%rax)
	jl	.LBB18_4
# BB#1:                                 # %if.then
	movl	$3, %edi
	callq	Flush
	cmpq	$0, display
	jne	.LBB18_3
# BB#2:                                 # %if.then.1
	jmp	.LBB18_45
.LBB18_3:                               # %if.end
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	display, %rax
	addq	$5144, %rax             # imm = 0x1418
	movq	%rax, %rsi
	callq	SetTTY
	movl	$4, %esi
	xorl	%edx, %edx
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB18_4:                               # %if.end.4
	callq	freetty
	movq	display, %rax
	cmpq	$0, 432(%rax)
	je	.LBB18_6
# BB#5:                                 # %if.then.6
	movq	display, %rax
	movq	432(%rax), %rdi
	callq	free
.LBB18_6:                               # %if.end.8
	movq	display, %rax
	movq	$0, 432(%rax)
	movq	display, %rax
	cmpq	$0, 360(%rax)
	je	.LBB18_8
# BB#7:                                 # %if.then.11
	movq	display, %rax
	movq	360(%rax), %rdi
	callq	free
.LBB18_8:                               # %if.end.13
	movq	display, %rax
	movq	$0, 360(%rax)
	movq	display, %rax
	movb	$0, 440(%rax)
	movq	display, %rax
	addq	$704, %rax              # imm = 0x2C0
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$624, %rax              # imm = 0x270
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$4904, %rax             # imm = 0x1328
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$4984, %rax             # imm = 0x1378
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$5064, %rax             # imm = 0x13C8
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$5352, %rax             # imm = 0x14E8
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	cmpq	$0, 5320(%rax)
	je	.LBB18_10
# BB#9:                                 # %if.then.16
	movq	display, %rax
	movq	5320(%rax), %rdi
	callq	free
	movq	display, %rax
	movq	$0, 5320(%rax)
	movq	display, %rax
	movl	$0, 5316(%rax)
	movq	display, %rax
	movl	$0, 5312(%rax)
	movq	display, %rax
	movq	$0, 5328(%rax)
	movq	display, %rax
	movl	$0, 5336(%rax)
	movq	display, %rax
	movq	$0, 5344(%rax)
.LBB18_10:                              # %if.end.19
	movq	display, %rax
	addq	$7824, %rax             # imm = 0x1E90
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	addq	$7912, %rax             # imm = 0x1EE8
	movq	%rax, %rdi
	callq	evdeq
	movabsq	$displays, %rax
	movq	%rax, -24(%rbp)
.LBB18_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB18_16
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-16(%rbp), %rax
	cmpq	display, %rax
	jne	.LBB18_14
# BB#13:                                # %if.then.22
	jmp	.LBB18_16
.LBB18_14:                              # %if.end.23
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_15
.LBB18_15:                              # %for.inc
                                        #   in Loop: Header=BB18_11 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_11
.LBB18_16:                              # %for.end
	jmp	.LBB18_17
.LBB18_17:                              # %do.body
	jmp	.LBB18_18
.LBB18_18:                              # %do.end
	movq	display, %rax
	cmpq	$0, 592(%rax)
	je	.LBB18_20
# BB#19:                                # %if.then.25
	movq	display, %rax
	movq	592(%rax), %rdi
	callq	free
.LBB18_20:                              # %if.end.27
	movq	display, %rax
	cmpq	$0, 5272(%rax)
	je	.LBB18_22
# BB#21:                                # %if.then.29
	movq	display, %rax
	movq	5272(%rax), %rdi
	callq	free
.LBB18_22:                              # %if.end.31
	movq	display, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB18_23:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB18_25
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB18_23 Depth=1
	movq	display, %rax
	movq	48(%rax), %rdi
	callq	FreeCanvas
	jmp	.LBB18_23
.LBB18_25:                              # %while.end
	movq	display, %rax
	movq	$0, 328(%rax)
	movq	windows, %rax
	movq	%rax, -8(%rbp)
.LBB18_26:                              # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB18_36
# BB#27:                                # %for.body.38
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	display, %rax
	jne	.LBB18_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
.LBB18_29:                              # %if.end.42
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	cmpq	display, %rax
	jne	.LBB18_31
# BB#30:                                # %if.then.44
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
.LBB18_31:                              # %if.end.46
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	display, %rcx
	addq	$576, %rcx              # imm = 0x240
	cmpq	%rcx, %rax
	je	.LBB18_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	display, %rcx
	addq	$5288, %rcx             # imm = 0x14A8
	cmpq	%rcx, %rax
	jne	.LBB18_34
.LBB18_33:                              # %if.then.51
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 264(%rax)
.LBB18_34:                              # %if.end.55
                                        #   in Loop: Header=BB18_26 Depth=1
	jmp	.LBB18_35
.LBB18_35:                              # %for.inc.56
                                        #   in Loop: Header=BB18_26 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_26
.LBB18_36:                              # %for.end.57
	movq	windows, %rax
	movq	%rax, -8(%rbp)
.LBB18_37:                              # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB18_42
# BB#38:                                # %for.body.60
                                        #   in Loop: Header=BB18_37 Depth=1
	movq	-8(%rbp), %rax
	movq	12704(%rax), %rax
	cmpq	display, %rax
	jne	.LBB18_40
# BB#39:                                # %if.then.62
                                        #   in Loop: Header=BB18_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	zmodem_abort
.LBB18_40:                              # %if.end.63
                                        #   in Loop: Header=BB18_37 Depth=1
	jmp	.LBB18_41
.LBB18_41:                              # %for.inc.64
                                        #   in Loop: Header=BB18_37 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_37
.LBB18_42:                              # %for.end.66
	movq	display, %rax
	cmpl	$0, 544(%rax)
	je	.LBB18_44
# BB#43:                                # %if.then.68
	xorl	%edi, %edi
	movq	display, %rax
	movl	$0, 544(%rax)
	callq	MouseMode
.LBB18_44:                              # %if.end.70
	movq	display, %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, display
.LBB18_45:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	FreeDisplay, .Lfunc_end18-FreeDisplay
	.cfi_endproc

	.globl	KillBlanker
	.align	16, 0x90
	.type	KillBlanker,@function
KillBlanker:                            # @KillBlanker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	display, %rax
	movl	460(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	display, %rax
	movl	464(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	display, %rax
	cmpl	$-1, 7936(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_10
.LBB19_2:                               # %if.end
	movq	display, %rax
	cmpl	$4, 7812(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.2
	movq	display, %rax
	movl	$0, 7812(%rax)
.LBB19_4:                               # %if.end.4
	movq	display, %rax
	addq	$7912, %rax             # imm = 0x1EE8
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	movl	7936(%rax), %edi
	callq	close
	movl	$1, %esi
	movq	display, %rcx
	movl	$-1, 7936(%rcx)
	movq	display, %rcx
	movl	7904(%rcx), %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	Kill
	movq	display, %rcx
	movl	$-1, 464(%rcx)
	movq	display, %rcx
	movl	$-1, 460(%rcx)
	movq	display, %rcx
	movl	476(%rcx), %eax
	movl	%eax, -16(%rbp)
	movw	480(%rcx), %dx
	movw	%dx, -12(%rbp)
	movq	display, %rcx
	cmpq	$0, 5880(%rcx)
	je	.LBB19_6
# BB#5:                                 # %if.then.12
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	AddCStr
	jmp	.LBB19_9
.LBB19_6:                               # %if.else
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB19_8
# BB#7:                                 # %if.then.20
	movabsq	$.L.str.12, %rdi
	callq	AddStr
.LBB19_8:                               # %if.end.21
	movq	display, %rax
	movq	5872(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	5864(%rax), %rdi
	callq	AddCStr
.LBB19_9:                               # %if.end.28
	movq	display, %rax
	movq	6096(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	6232(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	mchar_null, %ecx
	movl	%ecx, 476(%rax)
	movw	mchar_null+4, %dx
	movw	%dx, 480(%rax)
	movq	display, %rax
	movb	$0, 488(%rax)
	movq	display, %rax
	movl	$0, 524(%rax)
	movq	display, %rax
	movl	$-1, 472(%rax)
	movq	display, %rax
	movl	$-1, 468(%rax)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	ChangeScrollRegion
	leaq	-16(%rbp), %rdi
	callq	SetRendition
	callq	ClearAll
.LBB19_10:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	KillBlanker, .Lfunc_end19-KillBlanker
	.cfi_endproc

	.globl	Flush
	.align	16, 0x90
	.type	Flush,@function
Flush:                                  # @Flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB20_2
.LBB20_2:                               # %do.end
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -8(%rbp)
# BB#3:                                 # %do.body.1
	jmp	.LBB20_4
.LBB20_4:                               # %do.end.2
	cmpl	$0, -8(%rbp)
	jne	.LBB20_6
# BB#5:                                 # %if.then
	jmp	.LBB20_52
.LBB20_6:                               # %if.end
	jmp	.LBB20_7
.LBB20_7:                               # %do.body.4
	jmp	.LBB20_8
.LBB20_8:                               # %do.end.5
	movq	display, %rax
	cmpl	$0, 4900(%rax)
	jge	.LBB20_10
# BB#9:                                 # %if.then.8
	movl	-8(%rbp), %eax
	movq	display, %rcx
	addl	5304(%rcx), %eax
	movl	%eax, 5304(%rcx)
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	movq	display, %rdx
	movq	%rcx, 5296(%rdx)
	jmp	.LBB20_52
.LBB20_10:                              # %if.end.11
	movq	display, %rax
	movq	5272(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB20_16
# BB#11:                                # %if.then.13
	movl	$4, %esi
	xorl	%edx, %edx
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	cmpl	$0, %eax
	je	.LBB20_15
# BB#12:                                # %if.then.16
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.17
	jmp	.LBB20_14
.LBB20_14:                              # %do.end.18
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.19
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.20
	jmp	.LBB20_17
.LBB20_17:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -8(%rbp)
	je	.LBB20_39
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB20_17 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB20_32
# BB#19:                                # %if.then.23
                                        #   in Loop: Header=BB20_17 Depth=1
	jmp	.LBB20_20
.LBB20_20:                              # %do.body.24
                                        #   in Loop: Header=BB20_17 Depth=1
	leaq	-152(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -156(%rbp)
	movl	%edi, %eax
	movl	%eax, -160(%rbp)
# BB#21:                                # %do.end.26
                                        #   in Loop: Header=BB20_17 Depth=1
	movl	$1024, %edi             # imm = 0x400
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-152(%rbp), %rdx
	leaq	-176(%rbp), %r8
	movl	$64, %eax
	movl	$1, %esi
	movl	%esi, %r9d
	movq	display, %r10
	movl	4900(%r10), %esi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cltd
	movl	-188(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%edx, %edx
	movl	%edx, %r10d
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %r9
	movq	display, %r10
	movl	4900(%r10), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	movslq	%eax, %r10
	orq	-152(%rbp,%r10,8), %r9
	movq	%r9, -152(%rbp,%r10,8)
	movslq	-4(%rbp), %r9
	movq	%r9, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%r9, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	select
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB20_27
# BB#22:                                # %if.then.35
                                        #   in Loop: Header=BB20_17 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB20_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB20_17 Depth=1
	jmp	.LBB20_17
.LBB20_24:                              # %if.end.40
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.41
	jmp	.LBB20_26
.LBB20_26:                              # %do.end.42
	jmp	.LBB20_39
.LBB20_27:                              # %if.end.43
                                        #   in Loop: Header=BB20_17 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB20_31
# BB#28:                                # %if.then.46
	jmp	.LBB20_29
.LBB20_29:                              # %do.body.47
	jmp	.LBB20_30
.LBB20_30:                              # %do.end.48
	jmp	.LBB20_39
.LBB20_31:                              # %if.end.49
                                        #   in Loop: Header=BB20_17 Depth=1
	jmp	.LBB20_32
.LBB20_32:                              # %if.end.50
                                        #   in Loop: Header=BB20_17 Depth=1
	movq	display, %rax
	movl	4900(%rax), %edi
	movq	-24(%rbp), %rsi
	movslq	-8(%rbp), %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.LBB20_38
# BB#33:                                # %if.then.57
                                        #   in Loop: Header=BB20_17 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB20_35
# BB#34:                                # %if.then.61
                                        #   in Loop: Header=BB20_17 Depth=1
	jmp	.LBB20_17
.LBB20_35:                              # %if.end.62
	jmp	.LBB20_36
.LBB20_36:                              # %do.body.63
	jmp	.LBB20_37
.LBB20_37:                              # %do.end.64
	jmp	.LBB20_39
.LBB20_38:                              # %if.end.65
                                        #   in Loop: Header=BB20_17 Depth=1
	movl	-12(%rbp), %eax
	movq	display, %rcx
	addl	5304(%rcx), %eax
	movl	%eax, 5304(%rcx)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -8(%rbp)
	jmp	.LBB20_17
.LBB20_39:                              # %while.end
	cmpl	$0, -8(%rbp)
	je	.LBB20_43
# BB#40:                                # %if.then.69
	jmp	.LBB20_41
.LBB20_41:                              # %do.body.70
	jmp	.LBB20_42
.LBB20_42:                              # %do.end.71
	jmp	.LBB20_43
.LBB20_43:                              # %if.end.72
	movl	-8(%rbp), %eax
	movq	display, %rcx
	addl	5304(%rcx), %eax
	movl	%eax, 5304(%rcx)
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	movq	display, %rdx
	movq	%rcx, 5296(%rdx)
	cmpl	$0, -4(%rbp)
	jne	.LBB20_49
# BB#44:                                # %if.then.78
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	display, %rax
	movl	4900(%rax), %edi
	movb	$0, %al
	callq	fcntl
	cmpl	$0, %eax
	je	.LBB20_48
# BB#45:                                # %if.then.82
	jmp	.LBB20_46
.LBB20_46:                              # %do.body.83
	jmp	.LBB20_47
.LBB20_47:                              # %do.end.84
	jmp	.LBB20_48
.LBB20_48:                              # %if.end.85
	jmp	.LBB20_49
.LBB20_49:                              # %if.end.86
	movq	display, %rax
	cmpl	$1, 7812(%rax)
	jne	.LBB20_51
# BB#50:                                # %if.then.89
	movq	display, %rax
	movl	$0, 7812(%rax)
.LBB20_51:                              # %if.end.91
	movq	display, %rax
	movl	$0, 7816(%rax)
.LBB20_52:                              # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Flush, .Lfunc_end20-Flush
	.cfi_endproc

	.globl	freetty
	.align	16, 0x90
	.type	freetty,@function
freetty:                                # @freetty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	display, %rax
	cmpl	$0, 4900(%rax)
	jl	.LBB21_2
# BB#1:                                 # %if.then
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	close
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB21_2:                               # %if.end
	jmp	.LBB21_3
.LBB21_3:                               # %do.body
	jmp	.LBB21_4
.LBB21_4:                               # %do.end
	movq	display, %rax
	movl	$-1, 4900(%rax)
	movq	display, %rax
	movq	$0, 5296(%rax)
	movq	display, %rax
	movl	$0, 5304(%rax)
	movq	display, %rax
	cmpq	$0, 5272(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.3
	movq	display, %rax
	movq	5272(%rax), %rdi
	callq	free
.LBB21_6:                               # %if.end.5
	xorl	%eax, %eax
	movq	display, %rcx
	movq	$0, 5272(%rcx)
	movq	display, %rcx
	movl	$0, 5280(%rcx)
	movq	display, %rcx
	subl	5284(%rcx), %eax
	movq	display, %rcx
	movl	%eax, 5288(%rcx)
	movq	display, %rcx
	movl	$0, 7812(%rcx)
	movq	display, %rcx
	movl	$0, 7816(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	freetty, .Lfunc_end21-freetty
	.cfi_endproc

	.globl	MouseMode
	.align	16, 0x90
	.type	MouseMode,@function
MouseMode:                              # @MouseMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_12
.LBB22_2:                               # %if.end
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	544(%rcx), %eax
	jge	.LBB22_4
# BB#3:                                 # %if.then.1
	movq	display, %rax
	movl	544(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB22_4:                               # %if.end.3
	movq	display, %rax
	movl	540(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB22_12
# BB#5:                                 # %if.then.5
	movq	display, %rax
	cmpl	$0, 6208(%rax)
	jne	.LBB22_7
# BB#6:                                 # %if.then.7
	jmp	.LBB22_12
.LBB22_7:                               # %if.end.8
	movq	display, %rax
	cmpl	$0, 540(%rax)
	je	.LBB22_9
# BB#8:                                 # %if.then.11
	movabsq	$.L.str, %rsi
	leaq	-32(%rbp), %rdi
	movq	display, %rax
	movl	540(%rax), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-32(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	AddStr
.LBB22_9:                               # %if.end.14
	cmpl	$0, -4(%rbp)
	je	.LBB22_11
# BB#10:                                # %if.then.16
	movabsq	$.L.str.1, %rsi
	leaq	-32(%rbp), %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-32(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	AddStr
.LBB22_11:                              # %if.end.20
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 540(%rcx)
.LBB22_12:                              # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	MouseMode, .Lfunc_end22-MouseMode
	.cfi_endproc

	.globl	InitTerm
	.align	16, 0x90
	.type	InitTerm,@function
InitTerm:                               # @InitTerm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB23_2
.LBB23_2:                               # %do.end
	jmp	.LBB23_3
.LBB23_3:                               # %do.body.1
	jmp	.LBB23_4
.LBB23_4:                               # %do.end.2
	movq	display, %rax
	movl	$-1, 464(%rax)
	movq	display, %rax
	movl	$-1, 460(%rax)
	movq	display, %rax
	movq	5752(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	5760(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB23_7
# BB#5:                                 # %land.lhs.true
	movq	display, %rax
	movq	5656(%rax), %rdi
	movq	display, %rax
	movq	5664(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB23_7
# BB#6:                                 # %if.then
	movq	display, %rax
	movq	5664(%rax), %rdi
	callq	AddCStr
.LBB23_7:                               # %if.end
	movq	display, %rax
	movl	$0, 508(%rax)
	movq	display, %rax
	movq	5992(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	6008(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$0, 512(%rax)
	movq	display, %rax
	movl	$0, 516(%rax)
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	6272(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	6232(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	mchar_null, %ecx
	movl	%ecx, 476(%rax)
	movw	mchar_null+4, %dx
	movw	%dx, 480(%rax)
	movq	display, %rax
	movb	$0, 488(%rax)
	cmpl	$0, -4(%rbp)
	jne	.LBB23_9
# BB#8:                                 # %if.then.34
	movq	display, %rax
	movl	452(%rax), %edi
	movq	display, %rax
	movl	456(%rax), %esi
	callq	ResizeDisplay
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB23_9:                               # %if.end.36
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	ChangeScrollRegion
	movl	$3, %edi
	movq	display, %rax
	movl	$0, 472(%rax)
	movq	display, %rax
	movl	$0, 468(%rax)
	callq	Flush
	callq	ClearAll
# BB#10:                                # %do.body.37
	jmp	.LBB23_11
.LBB23_11:                              # %do.end.38
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$0, -4(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %edi
	callq	CheckScreenSize
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	InitTerm, .Lfunc_end23-InitTerm
	.cfi_endproc

	.globl	AddCStr
	.align	16, 0x90
	.type	AddCStr,@function
AddCStr:                                # @AddCStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, display
	je	.LBB24_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -8(%rbp)
	je	.LBB24_4
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB24_4
# BB#3:                                 # %if.then
	movl	$1, %esi
	movabsq	$DoAddChar, %rdx
	movq	display, %rax
	movw	7108(%rax), %cx
	movw	%cx, ospeed
	movq	-8(%rbp), %rdi
	callq	tputs
.LBB24_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	AddCStr, .Lfunc_end24-AddCStr
	.cfi_endproc

	.globl	ResizeDisplay
	.align	16, 0x90
	.type	ResizeDisplay,@function
ResizeDisplay:                          # @ResizeDisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB25_2
.LBB25_2:                               # %do.end
	jmp	.LBB25_3
.LBB25_3:                               # %do.body.1
	jmp	.LBB25_4
.LBB25_4:                               # %do.end.2
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB25_9
# BB#5:                                 # %land.lhs.true
	movq	display, %rax
	movl	448(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB25_9
# BB#6:                                 # %if.then
	jmp	.LBB25_7
.LBB25_7:                               # %do.body.4
	jmp	.LBB25_8
.LBB25_8:                               # %do.end.5
	movl	$0, -4(%rbp)
	jmp	.LBB25_26
.LBB25_9:                               # %if.end
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB25_21
# BB#10:                                # %land.lhs.true.8
	movq	display, %rax
	movl	448(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB25_12
# BB#11:                                # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	jne	.LBB25_21
.LBB25_12:                              # %land.lhs.true.11
	movq	display, %rax
	cmpq	$0, 5800(%rax)
	je	.LBB25_21
# BB#13:                                # %land.lhs.true.16
	movl	-8(%rbp), %eax
	cmpl	Z0width, %eax
	je	.LBB25_15
# BB#14:                                # %lor.lhs.false.18
	movl	-8(%rbp), %eax
	cmpl	Z1width, %eax
	jne	.LBB25_21
.LBB25_15:                              # %if.then.20
	jmp	.LBB25_16
.LBB25_16:                              # %do.body.21
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.22
	movl	-8(%rbp), %eax
	cmpl	Z0width, %eax
	jne	.LBB25_19
# BB#18:                                # %cond.true
	movq	display, %rax
	movq	5800(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB25_20
.LBB25_19:                              # %cond.false
	movq	display, %rax
	movq	5808(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB25_20:                              # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	AddCStr
	xorl	%edx, %edx
	movl	-8(%rbp), %edi
	movq	display, %rax
	movl	448(%rax), %esi
	callq	ChangeScreenSize
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	movq	display, %rax
	cmpl	448(%rax), %edi
	cmovel	%esi, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB25_26
.LBB25_21:                              # %if.end.34
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	je	.LBB25_25
# BB#22:                                # %if.then.39
	jmp	.LBB25_23
.LBB25_23:                              # %do.body.40
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.41
	movq	display, %rax
	movq	5792(%rax), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	AddCStr
	xorl	%edx, %edx
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	ChangeScreenSize
	movl	$0, -4(%rbp)
	jmp	.LBB25_26
.LBB25_25:                              # %if.end.45
	movl	$-1, -4(%rbp)
.LBB25_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	ResizeDisplay, .Lfunc_end25-ResizeDisplay
	.cfi_endproc

	.globl	ChangeScrollRegion
	.align	16, 0x90
	.type	ChangeScrollRegion,@function
ChangeScrollRegion:                     # @ChangeScrollRegion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpq	$0, display
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_16
.LBB26_2:                               # %if.end
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB26_4
# BB#3:                                 # %if.then.2
	jmp	.LBB26_16
.LBB26_4:                               # %if.end.3
	cmpl	$-1, -4(%rbp)
	jne	.LBB26_6
# BB#5:                                 # %if.then.5
	movl	$0, -4(%rbp)
.LBB26_6:                               # %if.end.6
	cmpl	$-1, -8(%rbp)
	jne	.LBB26_8
# BB#7:                                 # %if.then.8
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -8(%rbp)
.LBB26_8:                               # %if.end.9
	movq	display, %rax
	cmpq	$0, 5584(%rax)
	jne	.LBB26_10
# BB#9:                                 # %if.then.11
	movq	display, %rax
	movl	$0, 460(%rax)
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	movl	%ecx, 464(%rax)
	jmp	.LBB26_16
.LBB26_10:                              # %if.end.14
	movq	display, %rax
	movl	460(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	jne	.LBB26_13
# BB#11:                                # %land.lhs.true
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB26_13
# BB#12:                                # %if.then.19
	jmp	.LBB26_16
.LBB26_13:                              # %if.end.20
	jmp	.LBB26_14
.LBB26_14:                              # %do.body
	jmp	.LBB26_15
.LBB26_15:                              # %do.end
	movq	display, %rax
	movq	5584(%rax), %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	AddCStr
	movl	-4(%rbp), %edx
	movq	display, %rax
	movl	%edx, 460(%rax)
	movl	-8(%rbp), %edx
	movq	display, %rax
	movl	%edx, 464(%rax)
	movq	display, %rax
	movl	$-1, 468(%rax)
	movq	display, %rax
	movl	$-1, 472(%rax)
.LBB26_16:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	ChangeScrollRegion, .Lfunc_end26-ChangeScrollRegion
	.cfi_endproc

	.globl	ClearAll
	.align	16, 0x90
	.type	ClearAll,@function
ClearAll:                               # @ClearAll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	jmp	.LBB27_1
.LBB27_1:                               # %do.body
	jmp	.LBB27_2
.LBB27_2:                               # %do.end
	xorl	%eax, %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	movq	display, %rcx
	movl	444(%rcx), %esi
	subl	$1, %esi
	movq	display, %rcx
	movl	448(%rcx), %edi
	subl	$1, %edi
	movl	%edi, -4(%rbp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, -8(%rbp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -12(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-12(%rbp), %ecx         # 4-byte Reload
	movl	-8(%rbp), %r8d          # 4-byte Reload
	movl	-4(%rbp), %r9d          # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	ClearArea
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	ClearAll, .Lfunc_end27-ClearAll
	.cfi_endproc

	.globl	FinitTerm
	.align	16, 0x90
	.type	FinitTerm,@function
FinitTerm:                              # @FinitTerm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	jmp	.LBB28_1
.LBB28_1:                               # %do.body
	jmp	.LBB28_2
.LBB28_2:                               # %do.end
	callq	KillBlanker
	movq	display, %rax
	cmpb	$0, 440(%rax)
	je	.LBB28_16
# BB#3:                                 # %if.then
	movq	display, %rax
	movl	452(%rax), %edi
	movq	display, %rax
	movl	456(%rax), %esi
	callq	ResizeDisplay
	xorl	%edi, %edi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	InsertMode
	xorl	%edi, %edi
	movq	display, %rcx
	movl	448(%rcx), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	ChangeScrollRegion
	xorl	%edi, %edi
	callq	KeypadMode
	xorl	%edi, %edi
	callq	CursorkeysMode
	xorl	%edi, %edi
	callq	CursorVisibility
	movq	display, %rcx
	cmpl	$0, 544(%rcx)
	je	.LBB28_5
# BB#4:                                 # %if.then.2
	movq	display, %rax
	movl	$0, 544(%rax)
.LBB28_5:                               # %if.end
	xorl	%edi, %edi
	callq	MouseMode
	movabsq	$mchar_null, %rdi
	callq	SetRendition
	movl	$1, %edi
	callq	SetFlow
	movq	display, %rax
	movq	6000(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	6016(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	cmpl	$0, 532(%rax)
	je	.LBB28_7
# BB#6:                                 # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	ShowHStatus
.LBB28_7:                               # %if.end.9
	xorl	%edi, %edi
	movq	display, %rax
	movl	$-1, 472(%rax)
	movq	display, %rax
	movl	$-1, 468(%rax)
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	GotoPos
# BB#8:                                 # %do.body.12
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB28_10
# BB#9:                                 # %if.then.13
	callq	Resize_obuf
.LBB28_10:                              # %if.end.14
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$13, (%rcx)
# BB#11:                                # %do.end.15
	jmp	.LBB28_12
.LBB28_12:                              # %do.body.16
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB28_14
# BB#13:                                # %if.then.20
	callq	Resize_obuf
.LBB28_14:                              # %if.end.21
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$10, (%rcx)
# BB#15:                                # %do.end.24
	movq	display, %rax
	movq	5768(%rax), %rdi
	callq	AddCStr
.LBB28_16:                              # %if.end.28
	movl	$3, %edi
	callq	Flush
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	FinitTerm, .Lfunc_end28-FinitTerm
	.cfi_endproc

	.globl	KeypadMode
	.align	16, 0x90
	.type	KeypadMode,@function
KeypadMode:                             # @KeypadMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 512(%rcx)
.LBB29_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end29:
	.size	KeypadMode, .Lfunc_end29-KeypadMode
	.cfi_endproc

	.globl	CursorkeysMode
	.align	16, 0x90
	.type	CursorkeysMode,@function
CursorkeysMode:                         # @CursorkeysMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB30_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 516(%rcx)
.LBB30_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end30:
	.size	CursorkeysMode, .Lfunc_end30-CursorkeysMode
	.cfi_endproc

	.globl	CursorVisibility
	.align	16, 0x90
	.type	CursorVisibility,@function
CursorVisibility:                       # @CursorVisibility
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB31_13
# BB#1:                                 # %land.lhs.true
	movq	display, %rax
	movl	524(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB31_13
# BB#2:                                 # %if.then
	movq	display, %rax
	cmpl	$0, 524(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.3
	movq	display, %rax
	movq	6096(%rax), %rdi
	callq	AddCStr
.LBB31_4:                               # %if.end
	movq	display, %rax
	movl	$0, 524(%rax)
	cmpl	$-1, -4(%rbp)
	jne	.LBB31_7
# BB#5:                                 # %land.lhs.true.6
	movq	display, %rax
	cmpq	$0, 6080(%rax)
	je	.LBB31_7
# BB#6:                                 # %if.then.11
	movq	display, %rax
	movq	6080(%rax), %rdi
	callq	AddCStr
	jmp	.LBB31_12
.LBB31_7:                               # %if.else
	cmpl	$1, -4(%rbp)
	jne	.LBB31_10
# BB#8:                                 # %land.lhs.true.16
	movq	display, %rax
	cmpq	$0, 6088(%rax)
	je	.LBB31_10
# BB#9:                                 # %if.then.21
	movq	display, %rax
	movq	6088(%rax), %rdi
	callq	AddCStr
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.25
	jmp	.LBB31_13
.LBB31_11:                              # %if.end.26
	jmp	.LBB31_12
.LBB31_12:                              # %if.end.27
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 524(%rcx)
.LBB31_13:                              # %if.end.29
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	CursorVisibility, .Lfunc_end31-CursorVisibility
	.cfi_endproc

	.globl	SetRendition
	.align	16, 0x90
	.type	SetRendition,@function
SetRendition:                           # @SetRendition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, display
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_49
.LBB32_2:                               # %if.end
	cmpl	$0, nattr2color
	je	.LBB32_27
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB32_27
# BB#4:                                 # %land.lhs.true.3
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	nattr2color, %ecx
	cmpl	$0, %ecx
	je	.LBB32_27
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, SetRendition.mmc
	movw	4(%rax), %dx
	movw	%dx, SetRendition.mmc+4
	movl	$0, -12(%rbp)
.LBB32_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -12(%rbp)
	jge	.LBB32_24
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB32_22
# BB#8:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movl	-12(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB32_22
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB32_12
# BB#10:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 12(%rax)
	je	.LBB32_12
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$SetRendition.mmc, %rsi
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	12(%rax), %edi
	callq	ApplyAttrColor
	jmp	.LBB32_21
.LBB32_12:                              # %if.else
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$15, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_15
# BB#13:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	je	.LBB32_15
# BB#14:                                # %if.then.38
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$SetRendition.mmc, %rsi
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edi
	callq	ApplyAttrColor
	jmp	.LBB32_20
.LBB32_15:                              # %if.else.42
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %ecx
	andl	$240, %ecx
	cmpl	$0, %ecx
	jne	.LBB32_18
# BB#16:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpl	$0, 4(%rax)
	je	.LBB32_18
# BB#17:                                # %if.then.53
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$SetRendition.mmc, %rsi
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edi
	callq	ApplyAttrColor
	jmp	.LBB32_19
.LBB32_18:                              # %if.else.57
                                        #   in Loop: Header=BB32_6 Depth=1
	movabsq	$SetRendition.mmc, %rsi
	movabsq	$attr2color, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edi
	callq	ApplyAttrColor
.LBB32_19:                              # %if.end.61
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_20
.LBB32_20:                              # %if.end.62
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_21
.LBB32_21:                              # %if.end.63
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_22
.LBB32_22:                              # %if.end.64
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_23
.LBB32_23:                              # %for.inc
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB32_6
.LBB32_24:                              # %for.end
	movabsq	$SetRendition.mmc, %rax
	movq	%rax, -8(%rbp)
# BB#25:                                # %do.body
	jmp	.LBB32_26
.LBB32_26:                              # %do.end
	jmp	.LBB32_27
.LBB32_27:                              # %if.end.65
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB32_39
# BB#28:                                # %land.lhs.true.68
	movq	display, %rax
	cmpl	$0, 5984(%rax)
	je	.LBB32_39
# BB#29:                                # %land.lhs.true.71
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$192, %ecx
	cmpl	$0, %ecx
	je	.LBB32_39
# BB#30:                                # %if.then.76
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	je	.LBB32_33
# BB#31:                                # %land.lhs.true.83
	movq	display, %rax
	cmpq	$0, 5832(%rax)
	je	.LBB32_33
# BB#32:                                # %if.then.87
	movl	-16(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -16(%rbp)
.LBB32_33:                              # %if.end.88
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	je	.LBB32_36
# BB#34:                                # %land.lhs.true.93
	movq	display, %rax
	cmpq	$0, 5856(%rax)
	je	.LBB32_36
# BB#35:                                # %if.then.98
	movl	-16(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -16(%rbp)
.LBB32_36:                              # %if.end.100
	movq	display, %rax
	movzbl	477(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB32_38
# BB#37:                                # %if.then.105
	movl	-16(%rbp), %edi
	callq	SetAttr
.LBB32_38:                              # %if.end.106
	jmp	.LBB32_42
.LBB32_39:                              # %if.else.107
	movq	display, %rax
	movzbl	477(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB32_41
# BB#40:                                # %if.then.115
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	SetAttr
.LBB32_41:                              # %if.end.118
	jmp	.LBB32_42
.LBB32_42:                              # %if.end.119
	movq	display, %rax
	movzbl	480(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	4(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB32_44
# BB#43:                                # %lor.lhs.false
	movq	display, %rax
	cmpl	$0, 484(%rax)
	je	.LBB32_45
.LBB32_44:                              # %if.then.128
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	-8(%rbp), %rdx
	movzbl	4(%rdx), %esi
	andl	$15, %esi
	movq	-8(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$64, %edi
	cmpl	$0, %edi
	movl	%eax, %edi
	cmovnel	%ecx, %edi
	orl	%edi, %esi
	movq	-8(%rbp), %rdx
	movzbl	4(%rdx), %edi
	andl	$240, %edi
	sarl	$4, %edi
	movq	-8(%rbp), %rdx
	movzbl	1(%rdx), %r8d
	andl	$128, %r8d
	cmpl	$0, %r8d
	cmovnel	%ecx, %eax
	orl	%eax, %edi
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%esi, %edi
	movl	-20(%rbp), %esi         # 4-byte Reload
	callq	SetColor
.LBB32_45:                              # %if.end.146
	movq	display, %rax
	movzbl	478(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB32_47
# BB#46:                                # %if.then.153
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	SetFont
.LBB32_47:                              # %if.end.156
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB32_49
# BB#48:                                # %if.then.159
	movq	-8(%rbp), %rax
	movb	3(%rax), %cl
	movq	display, %rax
	movb	%cl, 479(%rax)
.LBB32_49:                              # %if.end.162
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	SetRendition, .Lfunc_end32-SetRendition
	.cfi_endproc

	.globl	ShowHStatus
	.align	16, 0x90
	.type	ShowHStatus,@function
ShowHStatus:                            # @ShowHStatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	display, %rdi
	cmpl	$1, 576(%rdi)
	jne	.LBB33_4
# BB#1:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$1, 528(%rax)
	jne	.LBB33_4
# BB#2:                                 # %land.lhs.true.2
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	movl	448(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB33_4
# BB#3:                                 # %if.then
	jmp	.LBB33_83
.LBB33_4:                               # %if.end
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB33_6
# BB#5:                                 # %if.then.6
	jmp	.LBB33_83
.LBB33_6:                               # %if.end.7
	movq	display, %rax
	cmpl	$0, 6040(%rax)
	je	.LBB33_26
# BB#7:                                 # %land.lhs.true.9
	movq	display, %rax
	cmpl	$3, 528(%rax)
	jne	.LBB33_26
# BB#8:                                 # %if.then.12
	movq	display, %rax
	cmpl	$0, 532(%rax)
	jne	.LBB33_12
# BB#9:                                 # %land.lhs.true.14
	cmpq	$0, -8(%rbp)
	je	.LBB33_11
# BB#10:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_12
.LBB33_11:                              # %if.then.18
	jmp	.LBB33_83
.LBB33_12:                              # %if.end.19
	jmp	.LBB33_13
.LBB33_13:                              # %do.body
	jmp	.LBB33_14
.LBB33_14:                              # %do.end
	movabsq	$mchar_null, %rdi
	callq	SetRendition
	xorl	%edi, %edi
	callq	InsertMode
	movq	display, %rax
	cmpl	$0, 532(%rax)
	je	.LBB33_16
# BB#15:                                # %if.then.22
	movq	display, %rax
	movq	6072(%rax), %rdi
	callq	AddCStr
.LBB33_16:                              # %if.end.26
	movq	display, %rax
	movl	$0, 532(%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB33_18
# BB#17:                                # %lor.lhs.false.30
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_19
.LBB33_18:                              # %if.then.34
	jmp	.LBB33_83
.LBB33_19:                              # %if.end.35
	xorl	%esi, %esi
	movq	display, %rax
	movq	6056(%rax), %rdi
	callq	AddCStr2
	movq	display, %rax
	cmpl	$0, 6048(%rax)
	jle	.LBB33_21
# BB#20:                                # %cond.true
	movq	display, %rax
	movl	6048(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB33_22
.LBB33_21:                              # %cond.false
	movq	display, %rax
	movl	444(%rax), %ecx
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
.LBB33_22:                              # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB33_24
# BB#23:                                # %if.then.54
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	AddStrn
	jmp	.LBB33_25
.LBB33_24:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	AddStr
.LBB33_25:                              # %if.end.55
	movq	display, %rax
	movq	6064(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$1, 532(%rax)
	jmp	.LBB33_83
.LBB33_26:                              # %if.else.60
	movq	display, %rax
	cmpl	$1, 528(%rax)
	jne	.LBB33_50
# BB#27:                                # %if.then.64
	jmp	.LBB33_28
.LBB33_28:                              # %do.body.65
	jmp	.LBB33_29
.LBB33_29:                              # %do.end.66
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB33_31
# BB#30:                                # %cond.true.68
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB33_32
.LBB33_31:                              # %cond.false.69
	movabsq	$.L.str.9, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB33_32
.LBB33_32:                              # %cond.end.70
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jle	.LBB33_34
# BB#33:                                # %if.then.77
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB33_34:                              # %if.end.79
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	GotoPos
	movb	$1, %dl
	cmpl	$0, captionalways
	movb	%dl, -41(%rbp)          # 1-byte Spill
	jne	.LBB33_37
# BB#35:                                # %lor.lhs.false.83
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 328(%rcx)
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB33_37
# BB#36:                                # %lor.rhs
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB33_37:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	movabsq	$mchar_so, %rcx
	movabsq	$mchar_null, %rdx
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	SetRendition
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	PrePutWinMsg
	movl	%eax, -12(%rbp)
	cmpl	$0, captionalways
	jne	.LBB33_44
# BB#38:                                # %land.lhs.true.91
	movq	display, %rax
	cmpq	$0, 328(%rax)
	je	.LBB33_44
# BB#39:                                # %land.lhs.true.94
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB33_44
# BB#40:                                # %if.then.98
	jmp	.LBB33_41
.LBB33_41:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movq	display, %rdx
	cmpl	444(%rdx), %eax
	jge	.LBB33_43
# BB#42:                                # %while.body
                                        #   in Loop: Header=BB33_41 Depth=1
	movl	$32, %edi
	callq	PUTCHARLP
	jmp	.LBB33_41
.LBB33_43:                              # %while.end
	jmp	.LBB33_44
.LBB33_44:                              # %if.end.102
	movl	-12(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jge	.LBB33_46
# BB#45:                                # %if.then.106
	xorl	%eax, %eax
	movl	-12(%rbp), %edi
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	movl	-12(%rbp), %esi
	movq	display, %rcx
	movl	444(%rcx), %r8d
	subl	$1, %r8d
	movq	display, %rcx
	movl	444(%rcx), %r9d
	subl	$1, %r9d
	movq	display, %rcx
	movl	448(%rcx), %r10d
	subl	$1, %r10d
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	ClearArea
.LBB33_46:                              # %if.end.115
	cmpl	$-1, -16(%rbp)
	je	.LBB33_49
# BB#47:                                # %land.lhs.true.118
	cmpl	$-1, -20(%rbp)
	je	.LBB33_49
# BB#48:                                # %if.then.121
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
.LBB33_49:                              # %if.end.122
	movabsq	$mchar_null, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movq	display, %rdx
	movl	%eax, 532(%rdx)
	callq	SetRendition
	jmp	.LBB33_82
.LBB33_50:                              # %if.else.127
	movq	display, %rax
	cmpl	$4, 528(%rax)
	jne	.LBB33_74
# BB#51:                                # %if.then.131
	jmp	.LBB33_52
.LBB33_52:                              # %do.body.132
	jmp	.LBB33_53
.LBB33_53:                              # %do.end.133
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB33_55
# BB#54:                                # %cond.true.137
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB33_56
.LBB33_55:                              # %cond.false.138
	movabsq	$.L.str.9, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB33_56
.LBB33_56:                              # %cond.end.139
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jle	.LBB33_58
# BB#57:                                # %if.then.146
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB33_58:                              # %if.end.148
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	GotoPos
	movb	$1, %cl
	cmpl	$0, captionalways
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB33_61
# BB#59:                                # %lor.lhs.false.150
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 328(%rcx)
	movb	%al, -65(%rbp)          # 1-byte Spill
	je	.LBB33_61
# BB#60:                                # %lor.rhs.154
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB33_61:                              # %lor.end.158
	movb	-65(%rbp), %al          # 1-byte Reload
	movabsq	$mchar_so, %rcx
	movabsq	$mchar_null, %rdx
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	SetRendition
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	PrePutWinMsg
	movl	%eax, -12(%rbp)
	cmpl	$0, captionalways
	je	.LBB33_64
# BB#62:                                # %lor.lhs.false.162
	movq	display, %rax
	cmpq	$0, 328(%rax)
	je	.LBB33_68
# BB#63:                                # %land.lhs.true.165
	movq	display, %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB33_68
.LBB33_64:                              # %if.then.169
	jmp	.LBB33_65
.LBB33_65:                              # %while.cond.170
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movq	display, %rdx
	cmpl	444(%rdx), %eax
	jge	.LBB33_67
# BB#66:                                # %while.body.175
                                        #   in Loop: Header=BB33_65 Depth=1
	movl	$32, %edi
	callq	PUTCHARLP
	jmp	.LBB33_65
.LBB33_67:                              # %while.end.176
	jmp	.LBB33_68
.LBB33_68:                              # %if.end.177
	movl	-12(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jge	.LBB33_70
# BB#69:                                # %if.then.181
	xorl	%eax, %eax
	movl	-12(%rbp), %edi
	movl	-12(%rbp), %edx
	movq	display, %rcx
	movl	444(%rcx), %esi
	subl	$1, %esi
	movq	display, %rcx
	movl	444(%rcx), %r8d
	subl	$1, %r8d
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	ClearArea
.LBB33_70:                              # %if.end.186
	cmpl	$-1, -16(%rbp)
	je	.LBB33_73
# BB#71:                                # %land.lhs.true.189
	cmpl	$-1, -20(%rbp)
	je	.LBB33_73
# BB#72:                                # %if.then.192
	movl	-16(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
.LBB33_73:                              # %if.end.193
	movabsq	$mchar_null, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movq	display, %rdx
	movl	%eax, 532(%rdx)
	callq	SetRendition
	jmp	.LBB33_81
.LBB33_74:                              # %if.else.198
	cmpq	$0, -8(%rbp)
	je	.LBB33_80
# BB#75:                                # %land.lhs.true.200
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB33_80
# BB#76:                                # %land.lhs.true.203
	movq	display, %rax
	cmpl	$2, 528(%rax)
	jne	.LBB33_80
# BB#77:                                # %if.then.207
	jmp	.LBB33_78
.LBB33_78:                              # %do.body.208
	jmp	.LBB33_79
.LBB33_79:                              # %do.end.209
	xorl	%edi, %edi
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	Msg
.LBB33_80:                              # %if.end.210
	jmp	.LBB33_81
.LBB33_81:                              # %if.end.211
	jmp	.LBB33_82
.LBB33_82:                              # %if.end.212
	jmp	.LBB33_83
.LBB33_83:                              # %if.end.213
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	ShowHStatus, .Lfunc_end33-ShowHStatus
	.cfi_endproc

	.globl	GotoPos
	.align	16, 0x90
	.type	GotoPos,@function
GotoPos:                                # @GotoPos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	cmpq	$0, display
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_126
.LBB34_2:                               # %if.end
	movq	display, %rax
	movl	468(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jne	.LBB34_8
# BB#3:                                 # %if.then.1
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 6104(%rax)
	je	.LBB34_6
# BB#5:                                 # %if.then.7
	movl	$-1, -20(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB34_7:                               # %if.end.8
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.9
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jne	.LBB34_10
# BB#9:                                 # %if.then.12
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
.LBB34_10:                              # %if.end.14
	movl	-4(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB34_13
# BB#11:                                # %land.lhs.true.17
	cmpl	$0, -16(%rbp)
	jne	.LBB34_13
# BB#12:                                # %if.then.19
	jmp	.LBB34_126
.LBB34_13:                              # %if.end.20
	jmp	.LBB34_14
.LBB34_14:                              # %do.body
	jmp	.LBB34_15
.LBB34_15:                              # %do.end
	jmp	.LBB34_16
.LBB34_16:                              # %do.body.21
	jmp	.LBB34_17
.LBB34_17:                              # %do.end.22
	movq	display, %rax
	cmpl	$0, 5888(%rax)
	jne	.LBB34_19
# BB#18:                                # %if.then.27
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB34_19:                              # %if.end.28
	cmpl	$0, -24(%rbp)
	jl	.LBB34_24
# BB#20:                                # %lor.lhs.false
	movl	-8(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jle	.LBB34_22
# BB#21:                                # %land.lhs.true.31
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jle	.LBB34_24
.LBB34_22:                              # %lor.lhs.false.34
	movl	-8(%rbp), %eax
	movq	display, %rcx
	cmpl	460(%rcx), %eax
	jge	.LBB34_31
# BB#23:                                # %land.lhs.true.36
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	460(%rcx), %eax
	jl	.LBB34_31
.LBB34_24:                              # %if.then.39
	jmp	.LBB34_25
.LBB34_25:                              # %DoCM
	movq	display, %rax
	cmpq	$0, 5488(%rax)
	je	.LBB34_29
# BB#26:                                # %land.lhs.true.43
	cmpl	$0, -4(%rbp)
	jne	.LBB34_29
# BB#27:                                # %land.lhs.true.45
	cmpl	$0, -8(%rbp)
	jne	.LBB34_29
# BB#28:                                # %if.then.47
	movq	display, %rax
	movq	5488(%rax), %rdi
	callq	AddCStr
	jmp	.LBB34_30
.LBB34_29:                              # %if.else.51
	movq	display, %rax
	movq	5480(%rax), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	AddCStr
.LBB34_30:                              # %if.end.55
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 468(%rcx)
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 472(%rcx)
	jmp	.LBB34_126
.LBB34_31:                              # %if.end.58
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jle	.LBB34_33
# BB#32:                                # %land.lhs.true.61
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB34_35
.LBB34_33:                              # %lor.lhs.false.63
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	460(%rcx), %eax
	jge	.LBB34_36
# BB#34:                                # %land.lhs.true.66
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB34_36
.LBB34_35:                              # %if.then.68
	jmp	.LBB34_25
.LBB34_36:                              # %if.end.69
	movq	display, %rax
	cmpq	$0, 5488(%rax)
	je	.LBB34_40
# BB#37:                                # %land.lhs.true.74
	cmpl	$0, -4(%rbp)
	jne	.LBB34_40
# BB#38:                                # %land.lhs.true.76
	cmpl	$0, -8(%rbp)
	jne	.LBB34_40
# BB#39:                                # %if.then.78
	movq	display, %rax
	movq	5488(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB34_41
.LBB34_40:                              # %if.else.82
	movq	display, %rax
	movq	5480(%rax), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	tgoto
	movq	%rax, -48(%rbp)
.LBB34_41:                              # %if.end.87
	movq	-48(%rbp), %rdi
	callq	CalcCost
	movl	%eax, -52(%rbp)
	movl	$1000, -28(%rbp)        # imm = 0x3E8
	cmpl	$0, -20(%rbp)
	jl	.LBB34_64
# BB#42:                                # %if.then.90
	cmpl	$0, -16(%rbp)
	jle	.LBB34_53
# BB#43:                                # %if.then.92
	movq	display, %rax
	cmpq	$0, 5576(%rax)
	je	.LBB34_47
# BB#44:                                # %land.lhs.true.97
	cmpl	$1, -16(%rbp)
	jg	.LBB34_46
# BB#45:                                # %lor.lhs.false.99
	movq	display, %rax
	cmpq	$0, 5568(%rax)
	jne	.LBB34_47
.LBB34_46:                              # %if.then.104
	xorl	%esi, %esi
	movq	display, %rax
	movq	5576(%rax), %rdi
	movl	-16(%rbp), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	CalcCost
	movl	%eax, -28(%rbp)
	movl	$8, -56(%rbp)
.LBB34_47:                              # %if.end.110
	movq	display, %rax
	movl	7388(%rax), %ecx
	imull	-16(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	cmpl	-28(%rbp), %ecx
	jge	.LBB34_49
# BB#48:                                # %if.then.112
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$7, -56(%rbp)
.LBB34_49:                              # %if.end.113
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB34_52
# BB#50:                                # %land.lhs.true.115
	xorl	%ecx, %ecx
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	CallRewrite
	movl	%eax, -36(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB34_52
# BB#51:                                # %if.then.119
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$9, -56(%rbp)
.LBB34_52:                              # %if.end.120
	jmp	.LBB34_63
.LBB34_53:                              # %if.else.121
	cmpl	$0, -16(%rbp)
	jge	.LBB34_61
# BB#54:                                # %if.then.123
	movq	display, %rax
	cmpq	$0, 5560(%rax)
	je	.LBB34_58
# BB#55:                                # %land.lhs.true.128
	cmpl	$-1, -16(%rbp)
	jl	.LBB34_57
# BB#56:                                # %lor.lhs.false.130
	movq	display, %rax
	cmpq	$0, 5544(%rax)
	jne	.LBB34_58
.LBB34_57:                              # %if.then.135
	xorl	%eax, %eax
	movq	display, %rcx
	movq	5560(%rcx), %rdi
	movl	%eax, %edx
	subl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	tgoto
	movq	%rax, %rdi
	callq	CalcCost
	movl	%eax, -28(%rbp)
	movl	$6, -56(%rbp)
.LBB34_58:                              # %if.end.142
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movq	display, %rcx
	imull	7384(%rcx), %eax
	movl	%eax, -36(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB34_60
# BB#59:                                # %if.then.146
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$5, -56(%rbp)
.LBB34_60:                              # %if.end.147
	jmp	.LBB34_62
.LBB34_61:                              # %if.else.148
	movl	$0, -28(%rbp)
.LBB34_62:                              # %if.end.149
	jmp	.LBB34_63
.LBB34_63:                              # %if.end.150
	jmp	.LBB34_64
.LBB34_64:                              # %if.end.151
	movl	-4(%rbp), %eax
	movq	display, %rcx
	addl	7392(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB34_70
# BB#65:                                # %land.lhs.true.153
	cmpl	$0, -4(%rbp)
	je	.LBB34_67
# BB#66:                                # %cond.true
	xorl	%eax, %eax
	movl	-24(%rbp), %edi
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	CallRewrite
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB34_68
.LBB34_67:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB34_68
.LBB34_68:                              # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	display, %rcx
	addl	7392(%rcx), %eax
	movl	%eax, -36(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB34_70
# BB#69:                                # %if.then.160
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$10, -56(%rbp)
.LBB34_70:                              # %if.end.161
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB34_72
# BB#71:                                # %if.then.163
	jmp	.LBB34_25
.LBB34_72:                              # %if.end.164
	movl	$1000, -32(%rbp)        # imm = 0x3E8
	cmpl	$0, -12(%rbp)
	jle	.LBB34_82
# BB#73:                                # %if.then.166
	movq	display, %rax
	cmpq	$0, 5528(%rax)
	je	.LBB34_76
# BB#74:                                # %land.lhs.true.171
	cmpl	$1, -12(%rbp)
	jle	.LBB34_76
# BB#75:                                # %if.then.173
	xorl	%esi, %esi
	movq	display, %rax
	movq	5528(%rax), %rdi
	movl	-12(%rbp), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	CalcCost
	movl	%eax, -32(%rbp)
	movl	$4, -60(%rbp)
.LBB34_76:                              # %if.end.179
	movl	-12(%rbp), %eax
	cmpl	$0, -4(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB34_78
# BB#77:                                # %cond.true.181
	movq	display, %rax
	movl	7404(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB34_79
.LBB34_78:                              # %cond.false.182
	movq	display, %rax
	movl	7380(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB34_79:                              # %cond.end.183
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	-32(%rbp), %ecx
	jge	.LBB34_81
# BB#80:                                # %if.then.187
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$3, -60(%rbp)
.LBB34_81:                              # %if.end.188
	jmp	.LBB34_92
.LBB34_82:                              # %if.else.189
	cmpl	$0, -12(%rbp)
	jge	.LBB34_90
# BB#83:                                # %if.then.191
	movq	display, %rax
	cmpq	$0, 5512(%rax)
	je	.LBB34_87
# BB#84:                                # %land.lhs.true.196
	cmpl	$-1, -12(%rbp)
	jl	.LBB34_86
# BB#85:                                # %lor.lhs.false.198
	movq	display, %rax
	cmpq	$0, 5504(%rax)
	jne	.LBB34_87
.LBB34_86:                              # %if.then.203
	xorl	%eax, %eax
	movq	display, %rcx
	movq	5512(%rcx), %rdi
	movl	%eax, %edx
	subl	-12(%rbp), %edx
	movl	%eax, %esi
	callq	tgoto
	movq	%rax, %rdi
	callq	CalcCost
	movl	%eax, -32(%rbp)
	movl	$2, -60(%rbp)
.LBB34_87:                              # %if.end.210
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movq	display, %rcx
	imull	7376(%rcx), %eax
	movl	%eax, -36(%rbp)
	cmpl	-32(%rbp), %eax
	jge	.LBB34_89
# BB#88:                                # %if.then.214
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$1, -60(%rbp)
.LBB34_89:                              # %if.end.215
	jmp	.LBB34_91
.LBB34_90:                              # %if.else.216
	movl	$0, -32(%rbp)
.LBB34_91:                              # %if.end.217
	jmp	.LBB34_92
.LBB34_92:                              # %if.end.218
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB34_94
# BB#93:                                # %if.then.221
	jmp	.LBB34_25
.LBB34_94:                              # %if.end.222
	movl	-56(%rbp), %eax
	addl	$-5, %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%eax, -84(%rbp)         # 4-byte Spill
	ja	.LBB34_109
# BB#127:                               # %if.end.222
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI34_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB34_95:                              # %sw.bb
	jmp	.LBB34_96
.LBB34_96:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	jge	.LBB34_98
# BB#97:                                # %while.body
                                        #   in Loop: Header=BB34_96 Depth=1
	movq	display, %rax
	movq	5544(%rax), %rdi
	callq	AddCStr
	jmp	.LBB34_96
.LBB34_98:                              # %while.end
	jmp	.LBB34_110
.LBB34_99:                              # %sw.bb.227
	xorl	%eax, %eax
	movq	display, %rcx
	movq	5560(%rcx), %rdi
	subl	-16(%rbp), %eax
	movl	%eax, %esi
	callq	AddCStr2
	jmp	.LBB34_110
.LBB34_100:                             # %sw.bb.232
	jmp	.LBB34_101
.LBB34_101:                             # %while.cond.233
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, %eax
	jle	.LBB34_103
# BB#102:                               # %while.body.236
                                        #   in Loop: Header=BB34_101 Depth=1
	movq	display, %rax
	movq	5568(%rax), %rdi
	callq	AddCStr
	jmp	.LBB34_101
.LBB34_103:                             # %while.end.240
	jmp	.LBB34_110
.LBB34_104:                             # %sw.bb.241
	movq	display, %rax
	movq	5576(%rax), %rdi
	movl	-16(%rbp), %esi
	callq	AddCStr2
	jmp	.LBB34_110
.LBB34_105:                             # %sw.bb.245
	movq	display, %rax
	movq	5496(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$0, 468(%rax)
	movl	$0, -20(%rbp)
.LBB34_106:                             # %sw.bb.250
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB34_108
# BB#107:                               # %if.then.252
	movl	$1, %ecx
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	callq	CallRewrite
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB34_108:                             # %if.end.255
	jmp	.LBB34_110
.LBB34_109:                             # %sw.default
	jmp	.LBB34_110
.LBB34_110:                             # %sw.epilog
	movl	-60(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	ja	.LBB34_124
# BB#128:                               # %sw.epilog
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI34_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB34_111:                             # %sw.bb.256
	jmp	.LBB34_112
.LBB34_112:                             # %while.cond.257
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jge	.LBB34_114
# BB#113:                               # %while.body.260
                                        #   in Loop: Header=BB34_112 Depth=1
	movq	display, %rax
	movq	5504(%rax), %rdi
	callq	AddCStr
	jmp	.LBB34_112
.LBB34_114:                             # %while.end.264
	jmp	.LBB34_125
.LBB34_115:                             # %sw.bb.265
	xorl	%eax, %eax
	movq	display, %rcx
	movq	5512(%rcx), %rdi
	subl	-12(%rbp), %eax
	movl	%eax, %esi
	callq	AddCStr2
	jmp	.LBB34_125
.LBB34_116:                             # %sw.bb.270
	cmpl	$0, -4(%rbp)
	jne	.LBB34_118
# BB#117:                               # %cond.true.272
	movq	display, %rax
	movq	5592(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB34_119
.LBB34_118:                             # %cond.false.276
	movq	display, %rax
	movq	5520(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB34_119:                             # %cond.end.280
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB34_120:                             # %while.cond.282
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB34_122
# BB#121:                               # %while.body.285
                                        #   in Loop: Header=BB34_120 Depth=1
	movq	-48(%rbp), %rdi
	callq	AddCStr
	jmp	.LBB34_120
.LBB34_122:                             # %while.end.286
	jmp	.LBB34_125
.LBB34_123:                             # %sw.bb.287
	movq	display, %rax
	movq	5528(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	AddCStr2
	jmp	.LBB34_125
.LBB34_124:                             # %sw.default.291
	jmp	.LBB34_125
.LBB34_125:                             # %sw.epilog.292
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 468(%rcx)
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 472(%rcx)
.LBB34_126:                             # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	GotoPos, .Lfunc_end34-GotoPos
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI34_0:
	.quad	.LBB34_95
	.quad	.LBB34_99
	.quad	.LBB34_100
	.quad	.LBB34_104
	.quad	.LBB34_106
	.quad	.LBB34_105
.LJTI34_1:
	.quad	.LBB34_111
	.quad	.LBB34_115
	.quad	.LBB34_116
	.quad	.LBB34_123

	.text
	.globl	PUTCHAR
	.align	16, 0x90
	.type	PUTCHAR,@function
PUTCHAR:                                # @PUTCHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB35_2
.LBB35_2:                               # %do.end
	movq	display, %rax
	cmpl	$0, 508(%rax)
	je	.LBB35_5
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB35_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	callq	InsertMode
.LBB35_5:                               # %if.end
	movl	-4(%rbp), %edi
	callq	RAW_PUTCHAR
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	PUTCHAR, .Lfunc_end35-PUTCHAR
	.cfi_endproc

	.align	16, 0x90
	.type	RAW_PUTCHAR,@function
RAW_PUTCHAR:                            # @RAW_PUTCHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB36_2
.LBB36_2:                               # %do.end
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB36_29
# BB#3:                                 # %if.then
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movq	display, %rcx
	movzbl	478(%rcx), %edx
	shll	$8, %edx
	orl	%edx, %eax
	movq	display, %rcx
	movzbl	479(%rcx), %edx
	shll	$16, %edx
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	display, %rcx
	cmpl	$0, 492(%rcx)
	je	.LBB36_7
# BB#4:                                 # %if.then.5
	movq	display, %rax
	movl	492(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jne	.LBB36_6
# BB#5:                                 # %if.then.9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	display, %rdx
	cmpl	$0, 6104(%rdx)
	cmovnel	%ecx, %eax
	movq	display, %rdx
	addl	468(%rdx), %eax
	movl	%eax, 468(%rdx)
.LBB36_6:                               # %if.end
	movq	display, %rax
	movl	$0, 492(%rax)
	jmp	.LBB36_10
.LBB36_7:                               # %if.else
	movl	-4(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB36_9
# BB#8:                                 # %if.then.14
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 492(%rcx)
	movq	display, %rcx
	movl	468(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 468(%rcx)
	jmp	.LBB36_65
.LBB36_9:                               # %if.end.17
	jmp	.LBB36_10
.LBB36_10:                              # %if.end.18
	cmpl	$32, -4(%rbp)
	jge	.LBB36_16
# BB#11:                                # %if.then.21
	movl	$48, %esi
	movq	display, %rax
	movq	6224(%rax), %rdi
	callq	AddCStr2
# BB#12:                                # %do.body.24
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB36_14
# BB#13:                                # %if.then.27
	callq	Resize_obuf
.LBB36_14:                              # %if.end.28
	movl	-4(%rbp), %eax
	addl	$95, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#15:                                # %do.end.31
	movq	display, %rax
	movq	6232(%rax), %rdi
	callq	AddCStr
	jmp	.LBB36_52
.LBB36_16:                              # %if.end.35
	cmpl	$128, -4(%rbp)
	jge	.LBB36_27
# BB#17:                                # %if.then.38
	movq	display, %rax
	cmpq	$0, 7368(%rax)
	je	.LBB36_21
# BB#18:                                # %land.lhs.true
	movq	display, %rax
	movzbl	478(%rax), %ecx
	movslq	%ecx, %rax
	movq	display, %rdx
	movq	7368(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB36_21
# BB#19:                                # %land.lhs.true.46
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movzbl	478(%rsi), %eax
	movslq	%eax, %rsi
	movq	display, %rdi
	movq	7368(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.LBB36_21
# BB#20:                                # %if.then.58
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movzbl	478(%rsi), %eax
	movslq	%eax, %rsi
	movq	display, %rdi
	movq	7368(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	(%rsi,%rdx,8), %rdi
	callq	AddStr
	jmp	.LBB36_26
.LBB36_21:                              # %if.else.69
	jmp	.LBB36_22
.LBB36_22:                              # %do.body.70
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB36_24
# BB#23:                                # %if.then.75
	callq	Resize_obuf
.LBB36_24:                              # %if.end.76
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#25:                                # %do.end.80
	jmp	.LBB36_26
.LBB36_26:                              # %if.end.81
	jmp	.LBB36_28
.LBB36_27:                              # %if.else.82
	movl	-4(%rbp), %edi
	callq	AddUtf8
.LBB36_28:                              # %if.end.83
	jmp	.LBB36_52
.LBB36_29:                              # %if.end.84
	movq	display, %rax
	movzbl	478(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB36_36
# BB#30:                                # %land.lhs.true.89
	movq	display, %rax
	movzbl	478(%rax), %ecx
	andl	$96, %ecx
	cmpl	$0, %ecx
	jne	.LBB36_36
# BB#31:                                # %if.then.96
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	display, %rcx
	cmpl	$0, 492(%rcx)
	jne	.LBB36_33
# BB#32:                                # %if.then.100
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 492(%rcx)
	movq	display, %rcx
	movl	468(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 468(%rcx)
	jmp	.LBB36_65
.LBB36_33:                              # %if.end.104
	movq	display, %rax
	movl	468(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 468(%rax)
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB36_35
# BB#34:                                # %if.then.111
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	display, %rdx
	cmpl	$0, 6104(%rdx)
	cmovnel	%ecx, %eax
	movq	display, %rdx
	addl	468(%rdx), %eax
	movl	%eax, 468(%rdx)
.LBB36_35:                              # %if.end.119
	movq	display, %rax
	movl	492(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movl	-8(%rbp), %ecx
	movq	display, %rax
	movl	%ecx, 492(%rax)
.LBB36_36:                              # %if.end.122
	movq	display, %rax
	cmpl	$0, 496(%rax)
	je	.LBB36_38
# BB#37:                                # %if.then.125
	movl	-4(%rbp), %edi
	callq	PrepareEncodedChar
	movl	%eax, -4(%rbp)
.LBB36_38:                              # %if.end.127
	jmp	.LBB36_39
.LBB36_39:                              # %kanjiloop
	movq	display, %rax
	cmpq	$0, 7368(%rax)
	je	.LBB36_43
# BB#40:                                # %land.lhs.true.130
	movq	display, %rax
	movzbl	478(%rax), %ecx
	movslq	%ecx, %rax
	movq	display, %rdx
	movq	7368(%rdx), %rdx
	cmpq	$0, (%rdx,%rax,8)
	je	.LBB36_43
# BB#41:                                # %land.lhs.true.138
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movzbl	478(%rsi), %eax
	movslq	%eax, %rsi
	movq	display, %rdi
	movq	7368(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.LBB36_43
# BB#42:                                # %if.then.150
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movzbl	478(%rsi), %eax
	movslq	%eax, %rsi
	movq	display, %rdi
	movq	7368(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	(%rsi,%rdx,8), %rdi
	callq	AddStr
	jmp	.LBB36_51
.LBB36_43:                              # %if.else.161
	jmp	.LBB36_44
.LBB36_44:                              # %do.body.162
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB36_46
# BB#45:                                # %if.then.167
	callq	Resize_obuf
.LBB36_46:                              # %if.end.168
	movq	display, %rax
	movzbl	478(%rax), %ecx
	cmpl	$48, %ecx
	je	.LBB36_48
# BB#47:                                # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB36_49
.LBB36_48:                              # %cond.false
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movsbl	7110(%rsi,%rdx), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB36_49:                              # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#50:                                # %do.end.183
	jmp	.LBB36_51
.LBB36_51:                              # %if.end.184
	jmp	.LBB36_52
.LBB36_52:                              # %addedutf8
	movq	display, %rax
	movl	468(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 468(%rax)
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jl	.LBB36_63
# BB#53:                                # %if.then.190
	movq	display, %rax
	cmpl	$0, 6104(%rax)
	jne	.LBB36_55
# BB#54:                                # %if.then.196
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	movl	%ecx, 468(%rax)
	jmp	.LBB36_62
.LBB36_55:                              # %if.else.200
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	je	.LBB36_57
# BB#56:                                # %lor.lhs.false
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jle	.LBB36_61
.LBB36_57:                              # %if.then.209
	movq	display, %rax
	movl	444(%rax), %ecx
	movq	display, %rax
	movl	468(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 468(%rax)
	movq	display, %rax
	movl	472(%rax), %ecx
	movq	display, %rax
	movl	448(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB36_60
# BB#58:                                # %land.lhs.true.216
	movq	display, %rax
	movl	472(%rax), %ecx
	movq	display, %rax
	cmpl	464(%rax), %ecx
	je	.LBB36_60
# BB#59:                                # %if.then.220
	movq	display, %rax
	movl	472(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 472(%rax)
.LBB36_60:                              # %if.end.223
	jmp	.LBB36_61
.LBB36_61:                              # %if.end.224
	jmp	.LBB36_62
.LBB36_62:                              # %if.end.225
	jmp	.LBB36_63
.LBB36_63:                              # %if.end.226
	movq	display, %rax
	cmpl	$0, 492(%rax)
	je	.LBB36_65
# BB#64:                                # %if.then.229
	movq	display, %rax
	movl	492(%rax), %ecx
	movl	%ecx, -4(%rbp)
	movq	display, %rax
	movl	$0, 492(%rax)
	jmp	.LBB36_39
.LBB36_65:                              # %if.end.232
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	RAW_PUTCHAR, .Lfunc_end36-RAW_PUTCHAR
	.cfi_endproc

	.globl	PUTCHARLP
	.align	16, 0x90
	.type	PUTCHARLP,@function
PUTCHARLP:                              # @PUTCHARLP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	display, %rax
	movl	468(%rax), %edi
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %edi
	jge	.LBB37_4
# BB#1:                                 # %if.then
	movq	display, %rax
	cmpl	$0, 508(%rax)
	je	.LBB37_3
# BB#2:                                 # %if.then.1
	xorl	%edi, %edi
	callq	InsertMode
.LBB37_3:                               # %if.end
	movl	-4(%rbp), %edi
	callq	RAW_PUTCHAR
	jmp	.LBB37_14
.LBB37_4:                               # %if.end.2
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB37_6
# BB#5:                                 # %lor.lhs.false
	movq	display, %rax
	movl	472(%rax), %ecx
	movq	display, %rax
	cmpl	464(%rax), %ecx
	je	.LBB37_10
.LBB37_6:                               # %if.then.5
	movq	display, %rax
	movl	472(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	RAW_PUTCHAR
	movq	display, %rax
	cmpl	$0, 6104(%rax)
	je	.LBB37_9
# BB#7:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB37_9
# BB#8:                                 # %if.then.15
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movl	-8(%rbp), %esi
	movl	%ecx, %edi
	callq	GotoPos
.LBB37_9:                               # %if.end.18
	jmp	.LBB37_14
.LBB37_10:                              # %if.end.19
	jmp	.LBB37_11
.LBB37_11:                              # %do.body
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	display, %rax
	movl	$1, 536(%rax)
	movl	-4(%rbp), %ecx
	movb	%cl, %dl
	movq	display, %rax
	movb	%dl, 476(%rax)
	movq	display, %rax
	movq	display, %rsi
	movl	476(%rsi), %ecx
	movl	%ecx, 548(%rax)
	movw	480(%rsi), %di
	movw	%di, 552(%rax)
	movq	display, %rax
	cmpl	$0, 492(%rax)
	je	.LBB37_14
# BB#13:                                # %if.then.22
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 553(%rdx)
	movq	display, %rdx
	movl	492(%rdx), %eax
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 548(%rdx)
	movq	display, %rdx
	movl	$0, 492(%rdx)
	movq	display, %rdx
	movl	468(%rdx), %eax
	addl	$-1, %eax
	movl	%eax, 468(%rdx)
.LBB37_14:                              # %if.end.31
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	PUTCHARLP, .Lfunc_end37-PUTCHARLP
	.cfi_endproc

	.align	16, 0x90
	.type	DoAddChar,@function
DoAddChar:                              # @DoAddChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB38_3
# BB#2:                                 # %if.then
	callq	Resize_obuf
.LBB38_3:                               # %if.end
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#4:                                 # %do.end
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	DoAddChar, .Lfunc_end38-DoAddChar
	.cfi_endproc

	.globl	AddCStr2
	.align	16, 0x90
	.type	AddCStr2,@function
AddCStr2:                               # @AddCStr2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, display
	je	.LBB39_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -8(%rbp)
	je	.LBB39_4
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB39_4
# BB#3:                                 # %if.then
	xorl	%esi, %esi
	movq	display, %rax
	movw	7108(%rax), %cx
	movw	%cx, ospeed
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	callq	tgoto
	movl	$1, %esi
	movabsq	$DoAddChar, %rdx
	movq	%rax, %rdi
	callq	tputs
.LBB39_4:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	AddCStr2, .Lfunc_end39-AddCStr2
	.cfi_endproc

	.globl	ReverseVideo
	.align	16, 0x90
	.type	ReverseVideo,@function
ReverseVideo:                           # @ReverseVideo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB40_7
# BB#1:                                 # %land.lhs.true
	movq	display, %rax
	movl	520(%rax), %ecx
	cmpl	-4(%rbp), %ecx
	je	.LBB40_7
# BB#2:                                 # %land.lhs.true.1
	movq	display, %rax
	cmpq	$0, 6184(%rax)
	je	.LBB40_7
# BB#3:                                 # %if.then
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 520(%rcx)
	movq	display, %rcx
	cmpl	$0, 520(%rcx)
	je	.LBB40_5
# BB#4:                                 # %if.then.6
	movq	display, %rax
	movq	6184(%rax), %rdi
	callq	AddCStr
	jmp	.LBB40_6
.LBB40_5:                               # %if.else
	movq	display, %rax
	movq	6192(%rax), %rdi
	callq	AddCStr
.LBB40_6:                               # %if.end
	jmp	.LBB40_7
.LBB40_7:                               # %if.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	ReverseVideo, .Lfunc_end40-ReverseVideo
	.cfi_endproc

	.globl	AddStr
	.align	16, 0x90
	.type	AddStr,@function
AddStr:                                 # @AddStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB41_2
.LBB41_2:                               # %do.end
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB41_7
# BB#3:                                 # %if.then
	jmp	.LBB41_4
.LBB41_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movb	%dl, -9(%rbp)
	cmpb	$0, %dl
	je	.LBB41_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB41_4 Depth=1
	movzbl	-9(%rbp), %edi
	callq	AddUtf8
	jmp	.LBB41_4
.LBB41_6:                               # %while.end
	jmp	.LBB41_14
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %while.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %dl
	movb	%dl, -9(%rbp)
	cmpb	$0, %dl
	je	.LBB41_14
# BB#9:                                 # %while.body.4
                                        #   in Loop: Header=BB41_8 Depth=1
	jmp	.LBB41_10
.LBB41_10:                              # %do.body.5
                                        #   in Loop: Header=BB41_8 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB41_12
# BB#11:                                # %if.then.8
                                        #   in Loop: Header=BB41_8 Depth=1
	callq	Resize_obuf
.LBB41_12:                              # %if.end.9
                                        #   in Loop: Header=BB41_8 Depth=1
	movb	-9(%rbp), %al
	movq	display, %rcx
	movq	5296(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rcx)
	movb	%al, (%rdx)
# BB#13:                                # %do.end.11
                                        #   in Loop: Header=BB41_8 Depth=1
	jmp	.LBB41_8
.LBB41_14:                              # %while.end.12
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	AddStr, .Lfunc_end41-AddStr
	.cfi_endproc

	.globl	CalcCost
	.align	16, 0x90
	.type	CalcCost,@function
CalcCost:                               # @CalcCost
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB42_2
.LBB42_2:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB42_4
# BB#3:                                 # %if.then
	movl	$1, %esi
	movabsq	$CountChars, %rdx
	movl	$0, StrCost
	movq	display, %rax
	movw	7108(%rax), %cx
	movw	%cx, ospeed
	movq	-16(%rbp), %rdi
	callq	tputs
	movl	StrCost, %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB42_5
.LBB42_4:                               # %if.else
	movl	$1000, -4(%rbp)         # imm = 0x3E8
.LBB42_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	CalcCost, .Lfunc_end42-CalcCost
	.cfi_endproc

	.align	16, 0x90
	.type	CountChars,@function
CountChars:                             # @CountChars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	StrCost, %edi
	addl	$1, %edi
	movl	%edi, StrCost
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end43:
	.size	CountChars, .Lfunc_end43-CountChars
	.cfi_endproc

	.align	16, 0x90
	.type	CallRewrite,@function
CallRewrite:                            # @CallRewrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB44_2
.LBB44_2:                               # %do.end
	jmp	.LBB44_3
.LBB44_3:                               # %do.body.1
	jmp	.LBB44_4
.LBB44_4:                               # %do.end.2
	jmp	.LBB44_5
.LBB44_5:                               # %do.body.3
	jmp	.LBB44_6
.LBB44_6:                               # %do.end.4
	movq	$0, -56(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB44_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_14 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB44_26
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB44_7 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB44_12
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB44_7 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jg	.LBB44_12
# BB#10:                                # %lor.lhs.false.6
                                        #   in Loop: Header=BB44_7 Depth=1
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB44_12
# BB#11:                                # %lor.lhs.false.8
                                        #   in Loop: Header=BB44_7 Depth=1
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB44_13
.LBB44_12:                              # %if.then
                                        #   in Loop: Header=BB44_7 Depth=1
	jmp	.LBB44_25
.LBB44_13:                              # %if.end
                                        #   in Loop: Header=BB44_7 Depth=1
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB44_14:                              # %for.cond.10
                                        #   Parent Loop BB44_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB44_22
# BB#15:                                # %for.body.12
                                        #   in Loop: Header=BB44_14 Depth=2
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB44_20
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB44_14 Depth=2
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB44_20
# BB#17:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB44_14 Depth=2
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB44_20
# BB#18:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB44_14 Depth=2
	movl	-12(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jg	.LBB44_20
# BB#19:                                # %if.then.19
                                        #   in Loop: Header=BB44_7 Depth=1
	jmp	.LBB44_22
.LBB44_20:                              # %if.end.20
                                        #   in Loop: Header=BB44_14 Depth=2
	jmp	.LBB44_21
.LBB44_21:                              # %for.inc
                                        #   in Loop: Header=BB44_14 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB44_14
.LBB44_22:                              # %for.end
                                        #   in Loop: Header=BB44_7 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB44_24
# BB#23:                                # %if.then.22
	jmp	.LBB44_26
.LBB44_24:                              # %if.end.23
                                        #   in Loop: Header=BB44_7 Depth=1
	jmp	.LBB44_25
.LBB44_25:                              # %for.inc.24
                                        #   in Loop: Header=BB44_7 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB44_7
.LBB44_26:                              # %for.end.25
	cmpl	$0, -20(%rbp)
	je	.LBB44_28
# BB#27:                                # %if.then.27
	movl	$1, %r8d
	movq	flayer, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %edx
	movl	-12(%rbp), %esi
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %esi
	movl	-16(%rbp), %edi
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %edi
	movq	display, %rcx
	addq	$476, %rcx              # imm = 0x1DC
	movl	%edi, -72(%rbp)         # 4-byte Spill
	movl	%edx, %edi
	movl	-72(%rbp), %edx         # 4-byte Reload
	callq	*%rax
	movq	-40(%rbp), %rcx
	movq	flayer, %r9
	movq	%rcx, (%r9)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	%rcx, 72(%r9)
	movq	-64(%rbp), %rcx
	movq	%rcx, flayer
	movl	$0, -4(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB44_47
.LBB44_28:                              # %if.end.35
	cmpq	$0, -32(%rbp)
	je	.LBB44_30
# BB#29:                                # %lor.lhs.false.37
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB44_31
.LBB44_30:                              # %if.then.40
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB44_47
.LBB44_31:                              # %if.end.41
	movl	-12(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB44_33
# BB#32:                                # %lor.lhs.false.44
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB44_34
.LBB44_33:                              # %if.then.47
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB44_47
.LBB44_34:                              # %if.end.48
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %eax
	cmpl	$0, %eax
	jl	.LBB44_36
# BB#35:                                # %lor.lhs.false.52
	movl	-8(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB44_37
.LBB44_36:                              # %if.then.57
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB44_47
.LBB44_37:                              # %if.end.58
	movl	-12(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	cmpl	$0, %eax
	jl	.LBB44_39
# BB#38:                                # %lor.lhs.false.62
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB44_40
.LBB44_39:                              # %if.then.67
	movl	$1000, -4(%rbp)         # imm = 0x3E8
	jmp	.LBB44_47
.LBB44_40:                              # %if.end.68
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB44_42
# BB#41:                                # %if.then.70
	movq	display, %rax
	movb	$0, 478(%rax)
.LBB44_42:                              # %if.end.72
	movq	flayer, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
# BB#43:                                # %do.body.74
	jmp	.LBB44_44
.LBB44_44:                              # %do.end.75
	xorl	%r8d, %r8d
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %ecx
	movq	-56(%rbp), %rdx
	subl	20(%rdx), %ecx
	movl	-12(%rbp), %esi
	movq	-56(%rbp), %rdx
	subl	16(%rdx), %esi
	movl	-16(%rbp), %edi
	movq	-56(%rbp), %rdx
	subl	16(%rdx), %edi
	movq	display, %rdx
	addq	$476, %rdx              # imm = 0x1DC
	movl	%edi, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	*%rax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, flayer
	movq	display, %rcx
	cmpl	$0, 508(%rcx)
	je	.LBB44_46
# BB#45:                                # %if.then.87
	movq	display, %rax
	movl	7400(%rax), %ecx
	movq	display, %rax
	addl	7396(%rax), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -68(%rbp)
.LBB44_46:                              # %if.end.89
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB44_47:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	CallRewrite, .Lfunc_end44-CallRewrite
	.cfi_endproc

	.globl	ClearArea
	.align	16, 0x90
	.type	ClearArea,@function
ClearArea:                              # @ClearArea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	%r10d, -28(%rbp)
	movl	%eax, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB45_2
.LBB45_2:                               # %do.end
	jmp	.LBB45_3
.LBB45_3:                               # %do.body.1
	jmp	.LBB45_4
.LBB45_4:                               # %do.end.2
	jmp	.LBB45_5
.LBB45_5:                               # %do.body.3
	jmp	.LBB45_6
.LBB45_6:                               # %do.end.4
	jmp	.LBB45_7
.LBB45_7:                               # %do.body.5
	jmp	.LBB45_8
.LBB45_8:                               # %do.end.6
	jmp	.LBB45_9
.LBB45_9:                               # %do.body.7
	jmp	.LBB45_10
.LBB45_10:                              # %do.end.8
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jne	.LBB45_12
# BB#11:                                # %if.then
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
.LBB45_12:                              # %if.end
	movl	-20(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jne	.LBB45_14
# BB#13:                                # %if.then.11
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB45_14:                              # %if.end.13
	cmpl	$-1, -12(%rbp)
	jne	.LBB45_16
# BB#15:                                # %if.then.15
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB45_16:                              # %if.end.16
	cmpl	$-1, -16(%rbp)
	jne	.LBB45_18
# BB#17:                                # %if.then.18
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB45_18:                              # %if.end.19
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB45_20
# BB#19:                                # %if.then.20
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB45_20:                              # %if.end.21
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB45_22
# BB#21:                                # %if.then.26
	movl	-28(%rbp), %edi
	callq	SetBackColor
.LBB45_22:                              # %if.end.27
	movq	display, %rax
	cmpl	$0, 536(%rax)
	je	.LBB45_30
# BB#23:                                # %land.lhs.true
	movl	-8(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jg	.LBB45_30
# BB#24:                                # %land.lhs.true.30
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	.LBB45_30
# BB#25:                                # %if.then.33
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jg	.LBB45_28
# BB#26:                                # %lor.lhs.false
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB45_29
# BB#27:                                # %land.lhs.true.38
	movl	-20(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	.LBB45_29
.LBB45_28:                              # %if.then.42
	movq	display, %rax
	movl	$0, 536(%rax)
.LBB45_29:                              # %if.end.44
	jmp	.LBB45_30
.LBB45_30:                              # %if.end.45
	movl	-20(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB45_50
# BB#31:                                # %land.lhs.true.49
	cmpl	$0, -12(%rbp)
	je	.LBB45_33
# BB#32:                                # %lor.lhs.false.51
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB45_50
.LBB45_33:                              # %land.lhs.true.53
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB45_50
# BB#34:                                # %land.lhs.true.57
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB45_50
# BB#35:                                # %land.lhs.true.60
	cmpl	$0, -28(%rbp)
	je	.LBB45_37
# BB#36:                                # %lor.lhs.false.62
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB45_50
.LBB45_37:                              # %if.then.67
	cmpl	$0, -4(%rbp)
	jne	.LBB45_41
# BB#38:                                # %land.lhs.true.69
	cmpl	$0, -8(%rbp)
	jne	.LBB45_41
# BB#39:                                # %land.lhs.true.71
	movq	display, %rax
	cmpl	$0, 5308(%rax)
	je	.LBB45_41
# BB#40:                                # %if.then.73
	callq	NukePending
.LBB45_41:                              # %if.end.74
	cmpl	$0, -4(%rbp)
	jne	.LBB45_45
# BB#42:                                # %land.lhs.true.76
	cmpl	$0, -8(%rbp)
	jne	.LBB45_45
# BB#43:                                # %land.lhs.true.78
	movq	display, %rax
	cmpq	$0, 5712(%rax)
	je	.LBB45_45
# BB#44:                                # %if.then.82
	movq	display, %rax
	movq	5712(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$0, 468(%rax)
	movq	display, %rax
	movl	$0, 472(%rax)
	jmp	.LBB45_109
.LBB45_45:                              # %if.end.86
	movq	display, %rax
	cmpq	$0, 5720(%rax)
	je	.LBB45_49
# BB#46:                                # %land.lhs.true.91
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB45_48
# BB#47:                                # %lor.lhs.false.93
	movq	display, %rax
	cmpq	$0, 5736(%rax)
	jne	.LBB45_49
.LBB45_48:                              # %if.then.98
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5720(%rax), %rdi
	callq	AddCStr
	jmp	.LBB45_109
.LBB45_49:                              # %if.end.102
	jmp	.LBB45_50
.LBB45_50:                              # %if.end.103
	cmpl	$0, -4(%rbp)
	jne	.LBB45_59
# BB#51:                                # %land.lhs.true.105
	cmpl	$0, -12(%rbp)
	jne	.LBB45_59
# BB#52:                                # %land.lhs.true.107
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB45_54
# BB#53:                                # %lor.lhs.false.111
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB45_59
.LBB45_54:                              # %land.lhs.true.113
	cmpl	$0, -8(%rbp)
	jne	.LBB45_59
# BB#55:                                # %land.lhs.true.115
	movq	display, %rax
	cmpq	$0, 5728(%rax)
	je	.LBB45_59
# BB#56:                                # %land.lhs.true.120
	cmpl	$0, -28(%rbp)
	je	.LBB45_58
# BB#57:                                # %lor.lhs.false.122
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB45_59
.LBB45_58:                              # %if.then.127
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5728(%rax), %rdi
	callq	AddCStr
	jmp	.LBB45_109
.LBB45_59:                              # %if.end.131
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB45_60:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_78 Depth 2
                                        #       Child Loop BB45_85 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB45_109
# BB#61:                                # %for.body
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB45_63
# BB#62:                                # %if.then.134
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB45_63:                              # %if.end.135
                                        #   in Loop: Header=BB45_60 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB45_71
# BB#64:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	cmpq	$0, 5744(%rax)
	je	.LBB45_71
# BB#65:                                # %land.lhs.true.142
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-40(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB45_68
# BB#66:                                # %lor.lhs.false.146
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	movl	468(%rax), %ecx
	cmpl	-40(%rbp), %ecx
	jne	.LBB45_71
# BB#67:                                # %land.lhs.true.149
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	movl	472(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB45_71
.LBB45_68:                              # %land.lhs.true.152
                                        #   in Loop: Header=BB45_60 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB45_70
# BB#69:                                # %lor.lhs.false.154
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB45_71
.LBB45_70:                              # %if.then.159
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5744(%rax), %rdi
	callq	AddCStr
	jmp	.LBB45_108
.LBB45_71:                              # %if.end.163
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-40(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB45_76
# BB#72:                                # %land.lhs.true.167
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	cmpq	$0, 5736(%rax)
	je	.LBB45_76
# BB#73:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB45_60 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB45_75
# BB#74:                                # %lor.lhs.false.174
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB45_76
.LBB45_75:                              # %if.then.179
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-4(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5736(%rax), %rdi
	callq	AddCStr
	jmp	.LBB45_108
.LBB45_76:                              # %if.end.183
                                        #   in Loop: Header=BB45_60 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB45_107
# BB#77:                                # %if.then.185
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	$0, -56(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB45_78:                              # %for.cond.186
                                        #   Parent Loop BB45_60 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB45_85 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB45_97
# BB#79:                                # %for.body.188
                                        #   in Loop: Header=BB45_78 Depth=2
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB45_83
# BB#80:                                # %lor.lhs.false.190
                                        #   in Loop: Header=BB45_78 Depth=2
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jg	.LBB45_83
# BB#81:                                # %lor.lhs.false.192
                                        #   in Loop: Header=BB45_78 Depth=2
	movl	-40(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB45_83
# BB#82:                                # %lor.lhs.false.194
                                        #   in Loop: Header=BB45_78 Depth=2
	movl	-4(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB45_84
.LBB45_83:                              # %if.then.196
                                        #   in Loop: Header=BB45_78 Depth=2
	jmp	.LBB45_96
.LBB45_84:                              # %if.end.197
                                        #   in Loop: Header=BB45_78 Depth=2
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB45_85:                              # %for.cond.198
                                        #   Parent Loop BB45_60 Depth=1
                                        #     Parent Loop BB45_78 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -56(%rbp)
	je	.LBB45_93
# BB#86:                                # %for.body.200
                                        #   in Loop: Header=BB45_85 Depth=3
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB45_91
# BB#87:                                # %land.lhs.true.202
                                        #   in Loop: Header=BB45_85 Depth=3
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB45_91
# BB#88:                                # %land.lhs.true.204
                                        #   in Loop: Header=BB45_85 Depth=3
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB45_91
# BB#89:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB45_85 Depth=3
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jg	.LBB45_91
# BB#90:                                # %if.then.208
                                        #   in Loop: Header=BB45_78 Depth=2
	jmp	.LBB45_93
.LBB45_91:                              # %if.end.209
                                        #   in Loop: Header=BB45_85 Depth=3
	jmp	.LBB45_92
.LBB45_92:                              # %for.inc
                                        #   in Loop: Header=BB45_85 Depth=3
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB45_85
.LBB45_93:                              # %for.end
                                        #   in Loop: Header=BB45_78 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB45_95
# BB#94:                                # %if.then.211
                                        #   in Loop: Header=BB45_60 Depth=1
	jmp	.LBB45_97
.LBB45_95:                              # %if.end.212
                                        #   in Loop: Header=BB45_78 Depth=2
	jmp	.LBB45_96
.LBB45_96:                              # %for.inc.213
                                        #   in Loop: Header=BB45_78 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB45_78
.LBB45_97:                              # %for.end.214
                                        #   in Loop: Header=BB45_60 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB45_106
# BB#98:                                # %land.lhs.true.216
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB45_106
# BB#99:                                # %land.lhs.true.218
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB45_106
# BB#100:                               # %land.lhs.true.221
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jg	.LBB45_106
# BB#101:                               # %land.lhs.true.224
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %eax
	cmpl	$0, %eax
	jl	.LBB45_106
# BB#102:                               # %land.lhs.true.227
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB45_106
# BB#103:                               # %land.lhs.true.232
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	cmpl	$0, %eax
	jl	.LBB45_106
# BB#104:                               # %land.lhs.true.235
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB45_106
# BB#105:                               # %if.then.240
                                        #   in Loop: Header=BB45_60 Depth=1
	movq	flayer, %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rcx
	subl	20(%rcx), %edx
	movl	-4(%rbp), %esi
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %esi
	movl	-40(%rbp), %edi
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %edi
	movl	-28(%rbp), %ecx
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movl	%edx, %edi
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	*%rax
	movq	-72(%rbp), %rax
	movq	flayer, %r8
	movq	%rax, (%r8)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, 72(%r8)
	movq	-64(%rbp), %rax
	movq	%rax, flayer
	jmp	.LBB45_108
.LBB45_106:                             # %if.end.252
                                        #   in Loop: Header=BB45_60 Depth=1
	jmp	.LBB45_107
.LBB45_107:                             # %if.end.253
                                        #   in Loop: Header=BB45_60 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	ClearLine
.LBB45_108:                             # %for.inc.254
                                        #   in Loop: Header=BB45_60 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB45_60
.LBB45_109:                             # %for.end.255
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	ClearArea, .Lfunc_end45-ClearArea
	.cfi_endproc

	.align	16, 0x90
	.type	SetBackColor,@function
SetBackColor:                           # @SetBackColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	jne	.LBB46_2
# BB#1:                                 # %if.then
	jmp	.LBB46_3
.LBB46_2:                               # %if.end
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	display, %rdx
	movzbl	480(%rdx), %esi
	andl	$15, %esi
	movq	display, %rdx
	movzbl	477(%rdx), %edi
	andl	$64, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	-4(%rbp), %eax
	movl	%esi, %edi
	movl	%eax, %esi
	callq	SetColor
.LBB46_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	SetBackColor, .Lfunc_end46-SetBackColor
	.cfi_endproc

	.globl	NukePending
	.align	16, 0x90
	.type	NukePending,@function
NukePending:                            # @NukePending
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	display, %rax
	movl	460(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	display, %rax
	movl	464(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	display, %rax
	movl	512(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	display, %rax
	movl	516(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	display, %rax
	movl	524(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	display, %rax
	movl	540(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	display, %rax
	movl	476(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movw	480(%rax), %dx
	movw	%dx, -20(%rbp)
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rsi
	movq	5272(%rsi), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB47_2
.LBB47_2:                               # %do.end
	movl	$1, %esi
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	tcflush
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	movq	display, %rdx
	movq	%rcx, 5296(%rdx)
	movl	-4(%rbp), %esi
	movq	display, %rcx
	addl	5304(%rcx), %esi
	movl	%esi, 5304(%rcx)
	movq	display, %rcx
	movl	$-1, 464(%rcx)
	movq	display, %rcx
	movl	$-1, 460(%rcx)
	movq	display, %rcx
	movq	5752(%rcx), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	AddCStr
	movq	display, %rcx
	movq	5760(%rcx), %rdi
	callq	AddCStr
	movq	display, %rcx
	cmpq	$0, 5880(%rcx)
	je	.LBB47_4
# BB#3:                                 # %if.then
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	AddCStr
	jmp	.LBB47_7
.LBB47_4:                               # %if.else
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB47_6
# BB#5:                                 # %if.then.15
	movabsq	$.L.str.3, %rdi
	callq	AddStr
.LBB47_6:                               # %if.end
	movq	display, %rax
	movq	5872(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movq	5864(%rax), %rdi
	callq	AddCStr
.LBB47_7:                               # %if.end.22
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB47_10
# BB#8:                                 # %land.lhs.true
	movq	display, %rax
	movq	5656(%rax), %rdi
	movq	display, %rax
	movq	5664(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB47_10
# BB#9:                                 # %if.then.35
	movq	display, %rax
	movq	5664(%rax), %rdi
	callq	AddCStr
.LBB47_10:                              # %if.end.39
	movq	display, %rax
	movl	$0, 508(%rax)
	movq	display, %rax
	cmpq	$0, 5992(%rax)
	je	.LBB47_13
# BB#11:                                # %land.lhs.true.44
	movq	display, %rax
	movq	5992(%rax), %rdi
	movq	display, %rax
	movq	6000(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB47_13
# BB#12:                                # %if.then.53
	movq	display, %rax
	movq	5992(%rax), %rdi
	callq	AddCStr
.LBB47_13:                              # %if.end.57
	movq	display, %rax
	cmpq	$0, 6008(%rax)
	je	.LBB47_16
# BB#14:                                # %land.lhs.true.62
	movq	display, %rax
	movq	6008(%rax), %rdi
	movq	display, %rax
	movq	6016(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB47_16
# BB#15:                                # %if.then.71
	movq	display, %rax
	movq	6008(%rax), %rdi
	callq	AddCStr
.LBB47_16:                              # %if.end.75
	movq	display, %rax
	movq	6232(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	mchar_null, %ecx
	movl	%ecx, 476(%rax)
	movw	mchar_null+4, %dx
	movw	%dx, 480(%rax)
	movq	display, %rax
	movb	$0, 488(%rax)
	movq	display, %rax
	movq	6072(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$0, 532(%rax)
	movq	display, %rax
	movq	6096(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	movl	$0, 524(%rax)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	ChangeScrollRegion
	leaq	-24(%rbp), %rdi
	callq	SetRendition
	movl	-28(%rbp), %edi
	callq	KeypadMode
	movl	-32(%rbp), %edi
	callq	CursorkeysMode
	movl	-36(%rbp), %edi
	callq	CursorVisibility
	movl	-40(%rbp), %edi
	callq	MouseMode
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	je	.LBB47_20
# BB#17:                                # %if.then.91
	jmp	.LBB47_18
.LBB47_18:                              # %do.body.92
	jmp	.LBB47_19
.LBB47_19:                              # %do.end.93
	movq	display, %rax
	movq	5792(%rax), %rdi
	movq	display, %rax
	movl	444(%rax), %esi
	movq	display, %rax
	movl	448(%rax), %edx
	callq	tgoto
	movq	%rax, %rdi
	callq	AddCStr
	jmp	.LBB47_30
.LBB47_20:                              # %if.else.98
	movq	display, %rax
	cmpq	$0, 5800(%rax)
	je	.LBB47_29
# BB#21:                                # %land.lhs.true.103
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	Z0width, %ecx
	je	.LBB47_23
# BB#22:                                # %lor.lhs.false
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	Z1width, %ecx
	jne	.LBB47_29
.LBB47_23:                              # %if.then.109
	jmp	.LBB47_24
.LBB47_24:                              # %do.body.110
	jmp	.LBB47_25
.LBB47_25:                              # %do.end.111
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	Z0width, %ecx
	jne	.LBB47_27
# BB#26:                                # %cond.true
	movq	display, %rax
	movq	5800(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB47_28
.LBB47_27:                              # %cond.false
	movq	display, %rax
	movq	5808(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB47_28:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	AddCStr
.LBB47_29:                              # %if.end.121
	jmp	.LBB47_30
.LBB47_30:                              # %if.end.122
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	NukePending, .Lfunc_end47-NukePending
	.cfi_endproc

	.globl	ClearLine
	.align	16, 0x90
	.type	ClearLine,@function
ClearLine:                              # @ClearLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB48_2
.LBB48_2:                               # %do.end
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB48_4
# BB#3:                                 # %if.then
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB48_4:                               # %if.end
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB48_6
# BB#5:                                 # %if.then.5
	movl	-24(%rbp), %edi
	callq	SetBackColor
.LBB48_6:                               # %if.end.6
	cmpl	$0, -16(%rbp)
	jne	.LBB48_14
# BB#7:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 5744(%rax)
	je	.LBB48_14
# BB#8:                                 # %land.lhs.true.10
	movl	-20(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB48_11
# BB#9:                                 # %lor.lhs.false
	movq	display, %rax
	movl	468(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB48_14
# BB#10:                                # %land.lhs.true.13
	movq	display, %rax
	movl	472(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB48_14
.LBB48_11:                              # %land.lhs.true.15
	cmpl	$0, -24(%rbp)
	je	.LBB48_13
# BB#12:                                # %lor.lhs.false.17
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB48_14
.LBB48_13:                              # %if.then.22
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5744(%rax), %rdi
	callq	AddCStr
	jmp	.LBB48_30
.LBB48_14:                              # %if.end.26
	movl	-20(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB48_19
# BB#15:                                # %land.lhs.true.30
	movq	display, %rax
	cmpq	$0, 5736(%rax)
	je	.LBB48_19
# BB#16:                                # %land.lhs.true.35
	cmpl	$0, -24(%rbp)
	je	.LBB48_18
# BB#17:                                # %lor.lhs.false.37
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB48_19
.LBB48_18:                              # %if.then.42
	movl	-16(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	movq	5736(%rax), %rdi
	callq	AddCStr
	jmp	.LBB48_30
.LBB48_19:                              # %if.end.46
	cmpq	$0, -8(%rbp)
	jne	.LBB48_21
# BB#20:                                # %if.then.48
	movabsq	$mline_null, %rax
	movq	%rax, -8(%rbp)
.LBB48_21:                              # %if.end.49
	cmpl	$0, -24(%rbp)
	jne	.LBB48_23
# BB#22:                                # %if.then.51
	movabsq	$mline_blank, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	DisplayLine
	jmp	.LBB48_30
.LBB48_23:                              # %if.end.52
	movl	$128, %eax
	xorl	%ecx, %ecx
	movl	mchar_null, %edx
	movl	%edx, -40(%rbp)
	movw	mchar_null+4, %si
	movw	%si, -36(%rbp)
	movzbl	-36(%rbp), %edx
	andl	$15, %edx
	movl	-24(%rbp), %edi
	shll	$4, %edi
	andl	$240, %edi
	orl	%edi, %edx
	movb	%dl, %r8b
	movb	%r8b, -36(%rbp)
	movzbl	-39(%rbp), %edx
	orl	$128, %edx
	movl	-24(%rbp), %edi
	andl	$256, %edi              # imm = 0x100
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	xorl	%eax, %edx
	movb	%dl, %r8b
	movb	%r8b, -39(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB48_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB48_29
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB48_24 Depth=1
	jmp	.LBB48_26
.LBB48_26:                              # %do.body.64
                                        #   in Loop: Header=BB48_24 Depth=1
	movb	-40(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	mline_old, %rdx
	movb	%al, (%rdx,%rcx)
	movb	-39(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	mline_old+8, %rdx
	movb	%al, (%rdx,%rcx)
	movb	-38(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	mline_old+16, %rdx
	movb	%al, (%rdx,%rcx)
	movb	-37(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	mline_old+24, %rdx
	movb	%al, (%rdx,%rcx)
	movb	-36(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	mline_old+32, %rdx
	movb	%al, (%rdx,%rcx)
# BB#27:                                # %do.end.76
                                        #   in Loop: Header=BB48_24 Depth=1
	jmp	.LBB48_28
.LBB48_28:                              # %for.inc
                                        #   in Loop: Header=BB48_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB48_24
.LBB48_29:                              # %for.end
	movabsq	$mline_old, %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	DisplayLine
.LBB48_30:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	ClearLine, .Lfunc_end48-ClearLine
	.cfi_endproc

	.globl	Redisplay
	.align	16, 0x90
	.type	Redisplay,@function
Redisplay:                              # @Redisplay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB49_2
.LBB49_2:                               # %do.end
	xorl	%edi, %edi
	callq	InsertMode
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	ChangeScrollRegion
	xorl	%edi, %edi
	callq	KeypadMode
	xorl	%edi, %edi
	callq	CursorkeysMode
	xorl	%edi, %edi
	callq	CursorVisibility
	xorl	%edi, %edi
	callq	MouseMode
	movabsq	$mchar_null, %rdi
	callq	SetRendition
	movl	$1, %edi
	callq	SetFlow
	callq	ClearAll
	cmpl	$0, -4(%rbp)
	jle	.LBB49_5
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	cmpq	$0, 376(%rax)
	je	.LBB49_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	movl	$1, %r8d
	movq	display, %rax
	movq	376(%rax), %rax
	movl	44(%rax), %esi
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movq	display, %rax
	movq	376(%rax), %rax
	movl	44(%rax), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	RefreshArea
	jmp	.LBB49_6
.LBB49_5:                               # %if.else
	movl	$1, %edi
	callq	RefreshAll
.LBB49_6:                               # %if.end
	callq	RefreshHStatus
	movq	display, %rax
	movq	%rax, -16(%rbp)
	movq	flayer, %rax
	movq	%rax, -24(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, flayer
	movq	display, %rax
	movq	336(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	display, %rax
	movq	336(%rax), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*48(%rax)
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	movq	-24(%rbp), %rax
	movq	%rax, flayer
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	display, %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, display
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Redisplay, .Lfunc_end49-Redisplay
	.cfi_endproc

	.globl	RefreshArea
	.align	16, 0x90
	.type	RefreshArea,@function
RefreshArea:                            # @RefreshArea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB50_2
.LBB50_2:                               # %do.end
	jmp	.LBB50_3
.LBB50_3:                               # %do.body.1
	jmp	.LBB50_4
.LBB50_4:                               # %do.end.2
	jmp	.LBB50_5
.LBB50_5:                               # %do.body.3
	jmp	.LBB50_6
.LBB50_6:                               # %do.end.4
	cmpl	$0, -20(%rbp)
	jne	.LBB50_13
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -4(%rbp)
	jne	.LBB50_13
# BB#8:                                 # %land.lhs.true.5
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB50_13
# BB#9:                                 # %land.lhs.true.7
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB50_13
# BB#10:                                # %land.lhs.true.10
	cmpl	$0, -8(%rbp)
	je	.LBB50_12
# BB#11:                                # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 5720(%rax)
	je	.LBB50_13
.LBB50_12:                              # %if.then
	xorl	%eax, %eax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	ClearArea
	movl	$1, -20(%rbp)
.LBB50_13:                              # %if.end
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB50_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB50_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB50_14 Depth=1
	movl	-24(%rbp), %edi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	RefreshLine
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB50_14 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB50_14
.LBB50_17:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	RefreshArea, .Lfunc_end50-RefreshArea
	.cfi_endproc

	.globl	RefreshAll
	.align	16, 0x90
	.type	RefreshAll,@function
RefreshAll:                             # @RefreshAll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB51_2
.LBB51_2:                               # %do.end
	jmp	.LBB51_3
.LBB51_3:                               # %do.body.1
	jmp	.LBB51_4
.LBB51_4:                               # %do.end.2
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB51_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB51_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB51_5 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	display, %rcx
	movq	%rcx, -24(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, flayer
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-16(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	flayer, %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rcx
	movl	-4(%rbp), %esi
	movl	%eax, %edi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%eax, %edx
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	movq	-32(%rbp), %r8
	movq	%r8, flayer
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	%r8, (%r9)
	movq	-56(%rbp), %r8
	movq	-16(%rbp), %r9
	movq	%r8, 72(%r9)
	movq	-24(%rbp), %r8
	movq	%r8, display
	movq	-16(%rbp), %r8
	movq	8(%r8), %r8
	movq	%r8, display
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB51_5 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB51_5
.LBB51_8:                               # %for.end
	xorl	%eax, %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	movq	display, %rcx
	movl	448(%rcx), %esi
	subl	$1, %esi
	movl	-4(%rbp), %r8d
	movl	%eax, %edi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	RefreshArea
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	RefreshAll, .Lfunc_end51-RefreshAll
	.cfi_endproc

	.globl	RefreshHStatus
	.align	16, 0x90
	.type	RefreshHStatus,@function
RefreshHStatus:                         # @RefreshHStatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	hstatusstring, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	strlen
	movq	hstatusstring, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	strlen_onscreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	subq	%rsi, %rdi
	movl	%edi, %eax
	movl	%eax, -12(%rbp)
	movq	display, %rsi
	addq	$704, %rsi              # imm = 0x2C0
	movq	%rsi, %rdi
	callq	evdeq
	movq	display, %rsi
	cmpl	$2, 576(%rsi)
	jne	.LBB52_2
# BB#1:                                 # %if.then
	jmp	.LBB52_14
.LBB52_2:                               # %if.end
	movq	hstatusstring, %rdi
	movq	display, %rax
	movq	376(%rax), %rsi
	movq	display, %rax
	cmpl	$0, 6040(%rax)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB52_6
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$3, 528(%rax)
	jne	.LBB52_6
# BB#4:                                 # %land.lhs.true.6
	movq	display, %rax
	cmpl	$0, 6048(%rax)
	jle	.LBB52_6
# BB#5:                                 # %cond.true
	movq	display, %rax
	movl	6048(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB52_7
.LBB52_6:                               # %cond.false
	movq	display, %rax
	movl	444(%rax), %ecx
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB52_7:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	$37, %edx
	xorl	%r9d, %r9d
	movq	display, %rcx
	addq	$704, %rcx              # imm = 0x2C0
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	MakeWinMsgEv
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB52_13
# BB#8:                                 # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB52_13
# BB#9:                                 # %if.then.25
	movq	-8(%rbp), %rdi
	callq	ShowHStatus
	movq	display, %rdi
	cmpl	$0, 528(%rdi)
	je	.LBB52_12
# BB#10:                                # %land.lhs.true.29
	movq	display, %rax
	cmpq	$0, 744(%rax)
	je	.LBB52_12
# BB#11:                                # %if.then.32
	movq	display, %rax
	addq	$704, %rax              # imm = 0x2C0
	movq	%rax, %rdi
	callq	evenq
.LBB52_12:                              # %if.end.34
	jmp	.LBB52_14
.LBB52_13:                              # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	ShowHStatus
.LBB52_14:                              # %if.end.35
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	RefreshHStatus, .Lfunc_end52-RefreshHStatus
	.cfi_endproc

	.globl	RedisplayDisplays
	.align	16, 0x90
	.type	RedisplayDisplays,@function
RedisplayDisplays:                      # @RedisplayDisplays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	display, %rax
	movq	%rax, -16(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB53_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB53_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %edi
	callq	Redisplay
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB53_1
.LBB53_4:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, display
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	RedisplayDisplays, .Lfunc_end53-RedisplayDisplays
	.cfi_endproc

	.globl	ScrollH
	.align	16, 0x90
	.type	ScrollH,@function
ScrollH:                                # @ScrollH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB54_2
# BB#1:                                 # %if.then
	jmp	.LBB54_60
.LBB54_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB54_4
# BB#3:                                 # %if.then.2
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	RefreshLine
	jmp	.LBB54_60
.LBB54_4:                               # %if.end.3
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB54_6
# BB#5:                                 # %if.then.4
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB54_6:                               # %if.end.5
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB54_8
# BB#7:                                 # %if.then.10
	movl	-20(%rbp), %edi
	callq	SetBackColor
.LBB54_8:                               # %if.end.11
	cmpl	$0, -16(%rbp)
	jle	.LBB54_23
# BB#9:                                 # %if.then.13
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB54_11
# BB#10:                                # %if.then.16
	movl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB54_11:                              # %if.end.19
	movq	display, %rax
	cmpq	$0, 5696(%rax)
	je	.LBB54_15
# BB#12:                                # %land.lhs.true
	cmpl	$1, -16(%rbp)
	jne	.LBB54_14
# BB#13:                                # %land.lhs.true.24
	movq	display, %rax
	cmpq	$0, 5688(%rax)
	jne	.LBB54_15
.LBB54_14:                              # %if.then.29
	movq	display, %rax
	movq	5696(%rax), %rdi
	movl	-16(%rbp), %esi
	callq	AddCStr2
	jmp	.LBB54_22
.LBB54_15:                              # %if.else
	movq	display, %rax
	cmpq	$0, 5688(%rax)
	je	.LBB54_20
# BB#16:                                # %if.then.37
	movl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB54_17:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB54_19
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB54_17 Depth=1
	movq	display, %rax
	movq	5688(%rax), %rdi
	callq	AddCStr
	jmp	.LBB54_17
.LBB54_19:                              # %for.end
	jmp	.LBB54_21
.LBB54_20:                              # %if.else.42
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	RefreshLine
	jmp	.LBB54_60
.LBB54_21:                              # %if.end.43
	jmp	.LBB54_22
.LBB54_22:                              # %if.end.44
	jmp	.LBB54_49
.LBB54_23:                              # %if.else.45
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB54_25
# BB#24:                                # %if.then.50
	xorl	%eax, %eax
	movl	-12(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB54_25:                              # %if.end.54
	movq	display, %rax
	cmpl	$0, 508(%rax)
	jne	.LBB54_44
# BB#26:                                # %if.then.56
	movq	display, %rax
	cmpq	$0, 5680(%rax)
	je	.LBB54_30
# BB#27:                                # %land.lhs.true.61
	cmpl	$-1, -16(%rbp)
	jne	.LBB54_29
# BB#28:                                # %land.lhs.true.63
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	jne	.LBB54_30
.LBB54_29:                              # %if.then.68
	xorl	%eax, %eax
	movq	display, %rcx
	movq	5680(%rcx), %rdi
	subl	-16(%rbp), %eax
	movl	%eax, %esi
	callq	AddCStr2
	jmp	.LBB54_43
.LBB54_30:                              # %if.else.73
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	je	.LBB54_35
# BB#31:                                # %if.then.78
	xorl	%eax, %eax
	subl	-16(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB54_32:                              # %for.cond.80
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB54_34
# BB#33:                                # %for.body.83
                                        #   in Loop: Header=BB54_32 Depth=1
	movq	display, %rax
	movq	5672(%rax), %rdi
	callq	AddCStr
	jmp	.LBB54_32
.LBB54_34:                              # %for.end.87
	jmp	.LBB54_42
.LBB54_35:                              # %if.else.88
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB54_40
# BB#36:                                # %if.then.93
	movl	$1, %edi
	callq	InsertMode
	movabsq	$mchar_null, %rdi
	callq	SetRendition
	movl	-20(%rbp), %edi
	callq	SetBackColor
	xorl	%edi, %edi
	subl	-16(%rbp), %edi
	movl	%edi, -36(%rbp)
.LBB54_37:                              # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB54_39
# BB#38:                                # %for.body.98
                                        #   in Loop: Header=BB54_37 Depth=1
	movl	$32, %edi
	callq	INSERTCHAR
	jmp	.LBB54_37
.LBB54_39:                              # %for.end.99
	movl	$0, -20(%rbp)
	jmp	.LBB54_41
.LBB54_40:                              # %if.else.100
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	RefreshLine
	jmp	.LBB54_60
.LBB54_41:                              # %if.end.101
	jmp	.LBB54_42
.LBB54_42:                              # %if.end.102
	jmp	.LBB54_43
.LBB54_43:                              # %if.end.103
	jmp	.LBB54_48
.LBB54_44:                              # %if.else.104
	movabsq	$mchar_null, %rdi
	callq	SetRendition
	movl	-20(%rbp), %edi
	callq	SetBackColor
	xorl	%edi, %edi
	subl	-16(%rbp), %edi
	movl	%edi, -36(%rbp)
.LBB54_45:                              # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB54_47
# BB#46:                                # %for.body.109
                                        #   in Loop: Header=BB54_45 Depth=1
	movl	$32, %edi
	callq	INSERTCHAR
	jmp	.LBB54_45
.LBB54_47:                              # %for.end.110
	movl	$0, -20(%rbp)
.LBB54_48:                              # %if.end.111
	jmp	.LBB54_49
.LBB54_49:                              # %if.end.112
	cmpl	$0, -20(%rbp)
	je	.LBB54_55
# BB#50:                                # %land.lhs.true.114
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	jne	.LBB54_55
# BB#51:                                # %if.then.119
	cmpl	$0, -16(%rbp)
	jle	.LBB54_53
# BB#52:                                # %if.then.121
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	addl	$1, %eax
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	%eax, %edx
	callq	ClearLine
	jmp	.LBB54_54
.LBB54_53:                              # %if.else.124
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movl	-8(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	$1, %eax
	movl	-20(%rbp), %r8d
	movl	%eax, %ecx
	callq	ClearLine
.LBB54_54:                              # %if.end.127
	jmp	.LBB54_55
.LBB54_55:                              # %if.end.128
	movq	display, %rax
	cmpl	$0, 536(%rax)
	je	.LBB54_60
# BB#56:                                # %land.lhs.true.130
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB54_60
# BB#57:                                # %if.then.132
	cmpl	$0, -16(%rbp)
	jle	.LBB54_59
# BB#58:                                # %if.then.134
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	subl	-16(%rbp), %ecx
	movl	-4(%rbp), %esi
	movl	%ecx, %edi
	callq	WriteLP
.LBB54_59:                              # %if.end.138
	movq	display, %rax
	movl	$0, 536(%rax)
.LBB54_60:                              # %if.end.140
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	ScrollH, .Lfunc_end54-ScrollH
	.cfi_endproc

	.globl	RefreshLine
	.align	16, 0x90
	.type	RefreshLine,@function
RefreshLine:                            # @RefreshLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB55_2
.LBB55_2:                               # %do.end
	jmp	.LBB55_3
.LBB55_3:                               # %do.body.1
	jmp	.LBB55_4
.LBB55_4:                               # %do.end.2
	jmp	.LBB55_5
.LBB55_5:                               # %do.body.3
	jmp	.LBB55_6
.LBB55_6:                               # %do.end.4
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB55_11
# BB#7:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB55_11
# BB#8:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	display, %rcx
	cmpl	584(%rcx), %eax
	jl	.LBB55_10
# BB#9:                                 # %if.then.7
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movq	display, %rcx
	movl	%eax, 584(%rcx)
.LBB55_10:                              # %if.end
	jmp	.LBB55_112
.LBB55_11:                              # %if.end.9
	cmpl	$0, -16(%rbp)
	jne	.LBB55_20
# BB#12:                                # %land.lhs.true.11
	movq	display, %rax
	cmpq	$0, 5736(%rax)
	je	.LBB55_20
# BB#13:                                # %land.lhs.true.12
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB55_20
# BB#14:                                # %land.lhs.true.15
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB55_20
# BB#15:                                # %land.lhs.true.17
	movq	display, %rax
	cmpl	$2, 576(%rax)
	je	.LBB55_20
# BB#16:                                # %if.then.20
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	jne	.LBB55_18
# BB#17:                                # %lor.lhs.false
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB55_19
.LBB55_18:                              # %if.then.28
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB55_19:                              # %if.end.29
	movq	display, %rax
	movq	5736(%rax), %rdi
	callq	AddCStr
	movl	$1, -16(%rbp)
.LBB55_20:                              # %if.end.33
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB55_22
# BB#21:                                # %land.lhs.true.37
	movq	display, %rax
	cmpl	$1, 528(%rax)
	je	.LBB55_24
.LBB55_22:                              # %lor.lhs.false.39
	cmpl	$0, -4(%rbp)
	jne	.LBB55_25
# BB#23:                                # %land.lhs.true.41
	movq	display, %rax
	cmpl	$4, 528(%rax)
	jne	.LBB55_25
.LBB55_24:                              # %if.then.44
	callq	RefreshHStatus
	jmp	.LBB55_112
.LBB55_25:                              # %if.end.45
	jmp	.LBB55_26
.LBB55_26:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_28 Depth 2
                                        #       Child Loop BB55_60 Depth 3
                                        #     Child Loop BB55_42 Depth 2
                                        #     Child Loop BB55_93 Depth 2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB55_109
# BB#27:                                # %while.body
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB55_28:                              # %for.cond
                                        #   Parent Loop BB55_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_60 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB55_76
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB55_46
# BB#30:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB55_46
# BB#31:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jg	.LBB55_46
# BB#32:                                # %if.then.54
                                        #   in Loop: Header=BB55_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	captionstring, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	strlen
	movq	captionstring, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	strlen_onscreen
	movb	$1, %cl
	movslq	%eax, %rsi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	subq	%rsi, %rdi
	movl	%edi, %eax
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -104(%rbp)
	movq	captionstring, %rdi
	movq	-104(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	220(%rdx), %eax
	movq	-40(%rbp), %rdx
	subl	216(%rdx), %eax
	movq	-40(%rbp), %rdx
	movl	220(%rdx), %r8d
	addl	$1, %r8d
	movq	display, %rdx
	cmpl	444(%rdx), %r8d
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jl	.LBB55_34
# BB#33:                                # %lor.rhs
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	setne	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB55_34:                              # %lor.end
                                        #   in Loop: Header=BB55_26 Depth=1
	movb	-153(%rbp), %al         # 1-byte Reload
	movl	$37, %edx
	xorl	%r9d, %r9d
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-132(%rbp), %esi        # 4-byte Reload
	addl	%ecx, %esi
	addl	-108(%rbp), %esi
	movq	-40(%rbp), %rdi
	addq	$232, %rdi
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-152(%rbp), %r10        # 8-byte Reload
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	MakeWinMsgEv
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB55_36
# BB#35:                                # %if.then.75
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-40(%rbp), %rax
	addq	$232, %rax
	movq	%rax, %rdi
	callq	evenq
.LBB55_36:                              # %if.end.77
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB55_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-40(%rbp), %rax
	movl	220(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB55_39
.LBB55_38:                              # %cond.false
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB55_39:                              # %cond.end
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-96(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movabsq	$mchar_so, %rdi
	callq	SetRendition
	movl	-84(%rbp), %ecx
	movl	-76(%rbp), %esi
	movq	-40(%rbp), %rax
	subl	216(%rax), %esi
	addl	$1, %esi
	cmpl	%esi, %ecx
	jle	.LBB55_41
# BB#40:                                # %if.then.89
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	216(%rcx), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB55_41:                              # %if.end.93
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-96(%rbp), %rdi
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	216(%rcx), %eax
	movl	-84(%rbp), %edx
	addl	-108(%rbp), %edx
	movl	%eax, %esi
	callq	PrePutWinMsg
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movl	216(%rcx), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB55_42:                              # %for.cond.100
                                        #   Parent Loop BB55_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB55_45
# BB#43:                                # %for.body.103
                                        #   in Loop: Header=BB55_42 Depth=2
	movl	$32, %edi
	callq	PUTCHARLP
# BB#44:                                # %for.inc
                                        #   in Loop: Header=BB55_42 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB55_42
.LBB55_45:                              # %for.end
                                        #   in Loop: Header=BB55_26 Depth=1
	jmp	.LBB55_76
.LBB55_46:                              # %if.end.104
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	220(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB55_50
# BB#47:                                # %land.lhs.true.109
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB55_50
# BB#48:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	228(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jg	.LBB55_50
# BB#49:                                # %if.then.117
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movabsq	$mchar_so, %rdi
	callq	SetRendition
	movl	$32, %edi
	callq	PUTCHARLP
	movl	-8(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -8(%rbp)
	jmp	.LBB55_76
.LBB55_50:                              # %if.end.119
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jl	.LBB55_54
# BB#51:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-4(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jg	.LBB55_54
# BB#52:                                # %lor.lhs.false.127
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jl	.LBB55_54
# BB#53:                                # %lor.lhs.false.131
                                        #   in Loop: Header=BB55_28 Depth=2
	movl	-8(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB55_55
.LBB55_54:                              # %if.then.135
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_75
.LBB55_55:                              # %if.end.136
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_56
.LBB55_56:                              # %do.body.137
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_57
.LBB55_57:                              # %do.end.138
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_58
.LBB55_58:                              # %do.body.139
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_59
.LBB55_59:                              # %do.end.140
                                        #   in Loop: Header=BB55_28 Depth=2
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB55_60:                              # %for.cond.141
                                        #   Parent Loop BB55_26 Depth=1
                                        #     Parent Loop BB55_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -24(%rbp)
	je	.LBB55_74
# BB#61:                                # %for.body.143
                                        #   in Loop: Header=BB55_60 Depth=3
	jmp	.LBB55_62
.LBB55_62:                              # %do.body.144
                                        #   in Loop: Header=BB55_60 Depth=3
	jmp	.LBB55_63
.LBB55_63:                              # %do.end.145
                                        #   in Loop: Header=BB55_60 Depth=3
	jmp	.LBB55_64
.LBB55_64:                              # %do.body.146
                                        #   in Loop: Header=BB55_60 Depth=3
	jmp	.LBB55_65
.LBB55_65:                              # %do.end.147
                                        #   in Loop: Header=BB55_60 Depth=3
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB55_72
# BB#66:                                # %land.lhs.true.150
                                        #   in Loop: Header=BB55_60 Depth=3
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB55_72
# BB#67:                                # %land.lhs.true.153
                                        #   in Loop: Header=BB55_60 Depth=3
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jg	.LBB55_72
# BB#68:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB55_60 Depth=3
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB55_72
# BB#69:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB55_60 Depth=3
	cmpq	$0, -32(%rbp)
	je	.LBB55_71
# BB#70:                                # %lor.lhs.false.162
                                        #   in Loop: Header=BB55_60 Depth=3
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	24(%rax), %ecx
	jle	.LBB55_72
.LBB55_71:                              # %if.then.167
                                        #   in Loop: Header=BB55_60 Depth=3
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB55_72:                              # %if.end.168
                                        #   in Loop: Header=BB55_60 Depth=3
	jmp	.LBB55_73
.LBB55_73:                              # %for.inc.169
                                        #   in Loop: Header=BB55_60 Depth=3
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB55_60
.LBB55_74:                              # %for.end.170
                                        #   in Loop: Header=BB55_28 Depth=2
	jmp	.LBB55_75
.LBB55_75:                              # %for.inc.171
                                        #   in Loop: Header=BB55_28 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB55_28
.LBB55_76:                              # %for.end.172
                                        #   in Loop: Header=BB55_26 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB55_78
# BB#77:                                # %if.then.174
                                        #   in Loop: Header=BB55_26 Depth=1
	jmp	.LBB55_26
.LBB55_78:                              # %if.end.175
                                        #   in Loop: Header=BB55_26 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB55_80
# BB#79:                                # %if.then.178
	jmp	.LBB55_109
.LBB55_80:                              # %if.end.179
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB55_84
# BB#81:                                # %if.then.183
                                        #   in Loop: Header=BB55_26 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB55_83
# BB#82:                                # %if.then.185
                                        #   in Loop: Header=BB55_26 Depth=1
	movabsq	$mline_null, %rdi
	movabsq	$mline_blank, %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	24(%rax), %r8d
	subl	$1, %r8d
	callq	DisplayLine
.LBB55_83:                              # %if.end.188
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB55_84:                              # %if.end.190
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-4(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	20(%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB55_86
# BB#85:                                # %cond.true.195
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB55_87
.LBB55_86:                              # %cond.false.196
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB55_87:                              # %cond.end.198
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	je	.LBB55_90
# BB#88:                                # %land.lhs.true.202
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-48(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	addl	8(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB55_90
# BB#89:                                # %if.then.207
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movabsq	$mchar_blank, %rdi
	callq	SetRendition
	movl	$124, %edi
	callq	PUTCHARLP
	movl	-8(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -8(%rbp)
.LBB55_90:                              # %if.end.209
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB55_100
# BB#91:                                # %land.lhs.true.212
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB55_100
# BB#92:                                # %if.then.216
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	callq	GotoPos
	movabsq	$mchar_blank, %rdi
	callq	SetRendition
.LBB55_93:                              # %while.cond.217
                                        #   Parent Loop BB55_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	cmpl	28(%rdx), %eax
	movb	%cl, -181(%rbp)         # 1-byte Spill
	jg	.LBB55_95
# BB#94:                                # %land.rhs
                                        #   in Loop: Header=BB55_93 Depth=2
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	setl	%dl
	movb	%dl, -181(%rbp)         # 1-byte Spill
.LBB55_95:                              # %land.end
                                        #   in Loop: Header=BB55_93 Depth=2
	movb	-181(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB55_96
	jmp	.LBB55_97
.LBB55_96:                              # %while.body.226
                                        #   in Loop: Header=BB55_93 Depth=2
	movl	$45, %edi
	callq	PUTCHARLP
	movl	-8(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -8(%rbp)
	jmp	.LBB55_93
.LBB55_97:                              # %while.end
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	28(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jl	.LBB55_99
# BB#98:                                # %if.then.232
                                        #   in Loop: Header=BB55_26 Depth=1
	jmp	.LBB55_26
.LBB55_99:                              # %if.end.233
                                        #   in Loop: Header=BB55_26 Depth=1
	jmp	.LBB55_100
.LBB55_100:                             # %if.end.234
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB55_103
# BB#101:                               # %lor.lhs.false.238
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB55_103
# BB#102:                               # %lor.lhs.false.243
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB55_106
.LBB55_103:                             # %if.then.250
                                        #   in Loop: Header=BB55_26 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB55_105
# BB#104:                               # %if.then.252
                                        #   in Loop: Header=BB55_26 Depth=1
	movabsq	$mline_null, %rdi
	movabsq	$mline_blank, %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	28(%rax), %r8d
	callq	DisplayLine
.LBB55_105:                             # %if.end.254
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-32(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB55_26
.LBB55_106:                             # %if.end.257
                                        #   in Loop: Header=BB55_26 Depth=1
	movl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %eax
	movq	-48(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB55_108
# BB#107:                               # %if.then.264
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	16(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
.LBB55_108:                             # %if.end.270
                                        #   in Loop: Header=BB55_26 Depth=1
	movq	flayer, %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	$0, 72(%rax)
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	-80(%rbp), %edi
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %edx
	movl	-76(%rbp), %esi
	movq	-32(%rbp), %rcx
	subl	16(%rcx), %esi
	movl	-16(%rbp), %ecx
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-188(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	movq	-56(%rbp), %rax
	movq	flayer, %r8
	movq	%rax, (%r8)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rax, 72(%r8)
	movq	-72(%rbp), %rax
	movq	%rax, flayer
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -8(%rbp)
	jmp	.LBB55_26
.LBB55_109:                             # %while.end.281
	cmpl	$0, -16(%rbp)
	jne	.LBB55_112
# BB#110:                               # %land.lhs.true.283
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB55_112
# BB#111:                               # %if.then.286
	movabsq	$mline_null, %rdi
	movabsq	$mline_blank, %rsi
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %r8d
	callq	DisplayLine
.LBB55_112:                             # %if.end.287
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	RefreshLine, .Lfunc_end55-RefreshLine
	.cfi_endproc

	.align	16, 0x90
	.type	INSERTCHAR,@function
INSERTCHAR:                             # @INSERTCHAR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB56_2
.LBB56_2:                               # %do.end
	movq	display, %rax
	cmpl	$0, 508(%rax)
	jne	.LBB56_13
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB56_13
# BB#4:                                 # %if.then
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	jne	.LBB56_6
# BB#5:                                 # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 5680(%rax)
	je	.LBB56_10
.LBB56_6:                               # %if.then.6
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	je	.LBB56_8
# BB#7:                                 # %if.then.11
	movq	display, %rax
	movq	5672(%rax), %rdi
	callq	AddCStr
	jmp	.LBB56_9
.LBB56_8:                               # %if.else
	movl	$1, %esi
	movq	display, %rax
	movq	5680(%rax), %rdi
	callq	AddCStr2
.LBB56_9:                               # %if.end
	movl	-4(%rbp), %edi
	callq	RAW_PUTCHAR
	jmp	.LBB56_14
.LBB56_10:                              # %if.end.18
	movl	$1, %edi
	callq	InsertMode
	movq	display, %rax
	cmpl	$0, 508(%rax)
	jne	.LBB56_12
# BB#11:                                # %if.then.21
	xorl	%ecx, %ecx
	movq	display, %rax
	movl	472(%rax), %edi
	movq	display, %rax
	movl	468(%rax), %esi
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	callq	RefreshLine
	jmp	.LBB56_14
.LBB56_12:                              # %if.end.25
	jmp	.LBB56_13
.LBB56_13:                              # %if.end.26
	movl	-4(%rbp), %edi
	callq	RAW_PUTCHAR
.LBB56_14:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	INSERTCHAR, .Lfunc_end56-INSERTCHAR
	.cfi_endproc

	.align	16, 0x90
	.type	WriteLP,@function
WriteLP:                                # @WriteLP
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB57_2
.LBB57_2:                               # %do.end
	jmp	.LBB57_3
.LBB57_3:                               # %do.body.1
	jmp	.LBB57_4
.LBB57_4:                               # %do.end.2
	movq	display, %rax
	movl	476(%rax), %ecx
	movl	%ecx, -16(%rbp)
	movw	480(%rax), %dx
	movw	%dx, -12(%rbp)
# BB#5:                                 # %do.body.3
	jmp	.LBB57_6
.LBB57_6:                               # %do.end.4
	movq	display, %rax
	cmpb	$0, 553(%rax)
	je	.LBB57_11
# BB#7:                                 # %if.then
	cmpl	$0, -4(%rbp)
	jle	.LBB57_9
# BB#8:                                 # %if.then.5
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB57_10
.LBB57_9:                               # %if.else
	movq	display, %rax
	movl	mchar_blank, %ecx
	movl	%ecx, 548(%rax)
	movw	mchar_blank+4, %dx
	movw	%dx, 552(%rax)
.LBB57_10:                              # %if.end
	jmp	.LBB57_11
.LBB57_11:                              # %if.end.7
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	addq	$548, %rax              # imm = 0x224
	movq	%rax, %rdi
	callq	SetRendition
	movq	display, %rax
	movzbl	548(%rax), %edi
	callq	PUTCHAR
	movq	display, %rax
	cmpb	$0, 553(%rax)
	je	.LBB57_13
# BB#12:                                # %if.then.13
	movq	display, %rax
	movzbl	553(%rax), %edi
	callq	PUTCHAR
.LBB57_13:                              # %if.end.17
	leaq	-16(%rbp), %rdi
	movq	display, %rax
	movl	$0, 536(%rax)
	callq	SetRendition
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	WriteLP, .Lfunc_end57-WriteLP
	.cfi_endproc

	.globl	ScrollV
	.align	16, 0x90
	.type	ScrollV,@function
ScrollV:                                # @ScrollV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	$0, -56(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB58_2
.LBB58_2:                               # %do.end
	cmpl	$0, -20(%rbp)
	jne	.LBB58_4
# BB#3:                                 # %if.then
	jmp	.LBB58_126
.LBB58_4:                               # %if.end
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB58_6
# BB#5:                                 # %lor.lhs.false
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB58_7
.LBB58_6:                               # %if.then.6
	xorl	%eax, %eax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	ClearArea
	jmp	.LBB58_126
.LBB58_7:                               # %if.end.7
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	368(%rcx), %eax
	jg	.LBB58_9
# BB#8:                                 # %lor.lhs.false.9
	movl	-12(%rbp), %eax
	movq	display, %rcx
	cmpl	372(%rcx), %eax
	jge	.LBB58_10
.LBB58_9:                               # %if.then.11
	xorl	%r8d, %r8d
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	RefreshArea
	jmp	.LBB58_126
.LBB58_10:                              # %if.end.12
	movq	display, %rax
	cmpl	$0, 536(%rax)
	je	.LBB58_19
# BB#11:                                # %if.then.13
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jg	.LBB58_13
# BB#12:                                # %lor.lhs.false.15
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jge	.LBB58_14
.LBB58_13:                              # %if.then.18
	movq	display, %rax
	movl	464(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB58_18
.LBB58_14:                              # %if.else
	movq	display, %rax
	movl	464(%rax), %ecx
	subl	-20(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	-56(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jg	.LBB58_16
# BB#15:                                # %lor.lhs.false.23
	movl	-56(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB58_17
.LBB58_16:                              # %if.then.25
	movq	display, %rax
	movl	$0, 536(%rax)
.LBB58_17:                              # %if.end.27
	jmp	.LBB58_18
.LBB58_18:                              # %if.end.28
	jmp	.LBB58_19
.LBB58_19:                              # %if.end.29
	movl	$1, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB58_21
# BB#20:                                # %if.then.31
	xorl	%eax, %eax
	movl	$0, -32(%rbp)
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB58_21:                              # %if.end.33
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	-8(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB58_23
# BB#22:                                # %if.then.37
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB58_23:                              # %if.end.40
	movq	display, %rax
	movl	460(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	display, %rax
	movl	464(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	-8(%rbp), %ecx
	movq	display, %rax
	cmpl	460(%rax), %ecx
	jl	.LBB58_25
# BB#24:                                # %lor.lhs.false.44
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	je	.LBB58_26
.LBB58_25:                              # %if.then.47
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	ChangeScrollRegion
.LBB58_26:                              # %if.end.48
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5616(%rcx)
	movb	%al, -61(%rbp)          # 1-byte Spill
	jne	.LBB58_32
# BB#27:                                # %lor.lhs.false.50
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5624(%rcx)
	movb	%al, -61(%rbp)          # 1-byte Spill
	jne	.LBB58_32
# BB#28:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-8(%rbp), %eax
	movq	display, %rdx
	cmpl	460(%rdx), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jl	.LBB58_31
# BB#29:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movq	display, %rdx
	cmpl	464(%rdx), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jne	.LBB58_31
# BB#30:                                # %land.rhs
	cmpl	$0, -32(%rbp)
	setne	%al
	movb	%al, -62(%rbp)          # 1-byte Spill
.LBB58_31:                              # %land.end
	movb	-62(%rbp), %al          # 1-byte Reload
	movb	%al, -61(%rbp)          # 1-byte Spill
.LBB58_32:                              # %lor.end
	movb	-61(%rbp), %al          # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -44(%rbp)
	movq	display, %rsi
	cmpq	$0, 5632(%rsi)
	movb	%cl, -63(%rbp)          # 1-byte Spill
	jne	.LBB58_38
# BB#33:                                # %lor.lhs.false.64
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5640(%rcx)
	movb	%al, -63(%rbp)          # 1-byte Spill
	jne	.LBB58_38
# BB#34:                                # %lor.rhs.69
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-8(%rbp), %eax
	movq	display, %rdx
	cmpl	460(%rdx), %eax
	movb	%cl, -64(%rbp)          # 1-byte Spill
	jl	.LBB58_37
# BB#35:                                # %land.lhs.true.72
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movq	display, %rdx
	cmpl	464(%rdx), %eax
	movb	%cl, -64(%rbp)          # 1-byte Spill
	jne	.LBB58_37
# BB#36:                                # %land.rhs.75
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -64(%rbp)          # 1-byte Spill
.LBB58_37:                              # %land.end.77
	movb	-64(%rbp), %al          # 1-byte Reload
	movb	%al, -63(%rbp)          # 1-byte Spill
.LBB58_38:                              # %lor.end.78
	movb	-63(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
	movq	display, %rdx
	movl	460(%rdx), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB58_42
# BB#39:                                # %land.lhs.true.82
	cmpl	$0, -44(%rbp)
	je	.LBB58_41
# BB#40:                                # %land.lhs.true.84
	cmpl	$0, -48(%rbp)
	jne	.LBB58_42
.LBB58_41:                              # %if.then.86
	movl	-8(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	ChangeScrollRegion
.LBB58_42:                              # %if.end.87
	movq	display, %rax
	cmpl	$0, 536(%rax)
	je	.LBB58_56
# BB#43:                                # %land.lhs.true.90
	movl	-40(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB58_48
# BB#44:                                # %lor.lhs.false.93
	movl	-40(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB58_56
# BB#45:                                # %land.lhs.true.96
	cmpl	$0, -32(%rbp)
	je	.LBB58_56
# BB#46:                                # %land.lhs.true.98
	movq	display, %rax
	movl	460(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB58_56
# BB#47:                                # %land.lhs.true.101
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB58_56
.LBB58_48:                              # %if.then.104
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movl	-40(%rbp), %esi
	movl	%ecx, %edi
	callq	WriteLP
	movl	-40(%rbp), %ecx
	movq	display, %rax
	cmpl	464(%rax), %ecx
	jne	.LBB58_55
# BB#49:                                # %if.then.108
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jne	.LBB58_54
# BB#50:                                # %if.then.110
	cmpl	$0, -24(%rbp)
	je	.LBB58_53
# BB#51:                                # %land.lhs.true.112
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	jne	.LBB58_53
# BB#52:                                # %if.then.116
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	-16(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	ClearLine
.LBB58_53:                              # %if.end.117
	jmp	.LBB58_126
.LBB58_54:                              # %if.end.118
	jmp	.LBB58_55
.LBB58_55:                              # %if.end.119
	jmp	.LBB58_56
.LBB58_56:                              # %if.end.120
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB58_58
# BB#57:                                # %if.then.125
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB58_58:                              # %if.end.126
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	je	.LBB58_60
# BB#59:                                # %if.then.131
	movl	-24(%rbp), %edi
	callq	SetBackColor
.LBB58_60:                              # %if.end.132
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -20(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jle	.LBB58_69
# BB#61:                                # %land.lhs.true.134
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-8(%rbp), %eax
	movq	display, %rdx
	cmpl	460(%rdx), %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jl	.LBB58_69
# BB#62:                                # %land.lhs.true.137
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movq	display, %rdx
	cmpl	464(%rdx), %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB58_69
# BB#63:                                # %land.rhs.140
	cmpl	$0, -32(%rbp)
	je	.LBB58_65
# BB#64:                                # %land.lhs.true.142
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5640(%rcx)
	movb	%al, -66(%rbp)          # 1-byte Spill
	jne	.LBB58_68
.LBB58_65:                              # %lor.rhs.147
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -32(%rbp)
	movb	%cl, -67(%rbp)          # 1-byte Spill
	jne	.LBB58_67
# BB#66:                                # %land.rhs.149
	movq	display, %rax
	cmpq	$0, 5624(%rax)
	setne	%cl
	movb	%cl, -67(%rbp)          # 1-byte Spill
.LBB58_67:                              # %land.end.154
	movb	-67(%rbp), %al          # 1-byte Reload
	movb	%al, -66(%rbp)          # 1-byte Spill
.LBB58_68:                              # %lor.end.155
	movb	-66(%rbp), %al          # 1-byte Reload
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB58_69:                              # %land.end.157
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB58_71
# BB#70:                                # %lor.lhs.false.159
	movq	display, %rax
	cmpq	$0, 5608(%rax)
	je	.LBB58_84
.LBB58_71:                              # %land.lhs.true.164
	movq	display, %rax
	movl	460(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB58_84
# BB#72:                                # %land.lhs.true.167
	movq	display, %rax
	movl	464(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB58_84
# BB#73:                                # %land.lhs.true.170
	cmpl	$0, -52(%rbp)
	jne	.LBB58_84
# BB#74:                                # %if.then.172
	cmpl	$0, -32(%rbp)
	je	.LBB58_79
# BB#75:                                # %if.then.174
	xorl	%edi, %edi
	movl	-16(%rbp), %esi
	callq	GotoPos
	movl	-20(%rbp), %esi
	movl	%esi, -28(%rbp)
.LBB58_76:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB58_78
# BB#77:                                # %for.body
                                        #   in Loop: Header=BB58_76 Depth=1
	movq	display, %rax
	movq	5592(%rax), %rdi
	callq	AddCStr
	jmp	.LBB58_76
.LBB58_78:                              # %for.end
	jmp	.LBB58_83
.LBB58_79:                              # %if.else.180
	xorl	%edi, %edi
	movl	-8(%rbp), %esi
	callq	GotoPos
	movl	-20(%rbp), %esi
	movl	%esi, -28(%rbp)
.LBB58_80:                              # %for.cond.181
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB58_82
# BB#81:                                # %for.body.184
                                        #   in Loop: Header=BB58_80 Depth=1
	movq	display, %rax
	movq	5608(%rax), %rdi
	callq	AddCStr
	jmp	.LBB58_80
.LBB58_82:                              # %for.end.188
	jmp	.LBB58_83
.LBB58_83:                              # %if.end.189
	jmp	.LBB58_117
.LBB58_84:                              # %if.else.190
	cmpl	$0, -44(%rbp)
	je	.LBB58_115
# BB#85:                                # %land.lhs.true.192
	cmpl	$0, -48(%rbp)
	je	.LBB58_115
# BB#86:                                # %if.then.194
	cmpl	$0, -32(%rbp)
	jne	.LBB58_88
# BB#87:                                # %lor.lhs.false.196
	movl	-16(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	je	.LBB58_100
.LBB58_88:                              # %if.then.199
	cmpl	$0, -32(%rbp)
	je	.LBB58_90
# BB#89:                                # %cond.true
	movl	-8(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB58_91
.LBB58_90:                              # %cond.false
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB58_91:                              # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	GotoPos
	movq	display, %rcx
	cmpq	$0, 5640(%rcx)
	je	.LBB58_95
# BB#92:                                # %land.lhs.true.207
	cmpl	$1, -20(%rbp)
	jne	.LBB58_94
# BB#93:                                # %land.lhs.true.209
	movq	display, %rax
	cmpq	$0, 5632(%rax)
	jne	.LBB58_95
.LBB58_94:                              # %if.then.214
	movq	display, %rax
	movq	5640(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	AddCStr2
	jmp	.LBB58_99
.LBB58_95:                              # %if.else.218
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB58_96:                              # %for.cond.219
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB58_98
# BB#97:                                # %for.body.222
                                        #   in Loop: Header=BB58_96 Depth=1
	movq	display, %rax
	movq	5632(%rax), %rdi
	callq	AddCStr
	jmp	.LBB58_96
.LBB58_98:                              # %for.end.226
	jmp	.LBB58_99
.LBB58_99:                              # %if.end.227
	jmp	.LBB58_100
.LBB58_100:                             # %if.end.228
	cmpl	$0, -32(%rbp)
	je	.LBB58_102
# BB#101:                               # %lor.lhs.false.230
	movl	-16(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	je	.LBB58_114
.LBB58_102:                             # %if.then.233
	cmpl	$0, -32(%rbp)
	je	.LBB58_104
# BB#103:                               # %cond.true.235
	movl	-16(%rbp), %eax
	addl	$1, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB58_105
.LBB58_104:                             # %cond.false.238
	movl	-8(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB58_105:                             # %cond.end.239
	movl	-76(%rbp), %eax         # 4-byte Reload
	xorl	%edi, %edi
	movl	%eax, %esi
	callq	GotoPos
	movq	display, %rcx
	cmpq	$0, 5624(%rcx)
	je	.LBB58_109
# BB#106:                               # %land.lhs.true.245
	cmpl	$1, -20(%rbp)
	jne	.LBB58_108
# BB#107:                               # %land.lhs.true.247
	movq	display, %rax
	cmpq	$0, 5616(%rax)
	jne	.LBB58_109
.LBB58_108:                             # %if.then.252
	movq	display, %rax
	movq	5624(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	AddCStr2
	jmp	.LBB58_113
.LBB58_109:                             # %if.else.256
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB58_110:                             # %for.cond.257
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB58_112
# BB#111:                               # %for.body.260
                                        #   in Loop: Header=BB58_110 Depth=1
	movq	display, %rax
	movq	5616(%rax), %rdi
	callq	AddCStr
	jmp	.LBB58_110
.LBB58_112:                             # %for.end.264
	jmp	.LBB58_113
.LBB58_113:                             # %if.end.265
	jmp	.LBB58_114
.LBB58_114:                             # %if.end.266
	jmp	.LBB58_116
.LBB58_115:                             # %if.else.267
	xorl	%r8d, %r8d
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	RefreshArea
	jmp	.LBB58_126
.LBB58_116:                             # %if.end.268
	jmp	.LBB58_117
.LBB58_117:                             # %if.end.269
	cmpl	$0, -24(%rbp)
	je	.LBB58_123
# BB#118:                               # %land.lhs.true.271
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	jne	.LBB58_123
# BB#119:                               # %if.then.276
	cmpl	$0, -32(%rbp)
	je	.LBB58_121
# BB#120:                               # %if.then.278
	xorl	%eax, %eax
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %ecx
	subl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	ClearArea
	jmp	.LBB58_122
.LBB58_121:                             # %if.else.281
	xorl	%eax, %eax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-8(%rbp), %r9d
	addl	-20(%rbp), %r9d
	subl	$1, %r9d
	movl	-24(%rbp), %r10d
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	ClearArea
.LBB58_122:                             # %if.end.284
	jmp	.LBB58_123
.LBB58_123:                             # %if.end.285
	movq	display, %rax
	cmpl	$0, 536(%rax)
	je	.LBB58_126
# BB#124:                               # %land.lhs.true.288
	movl	-56(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	je	.LBB58_126
# BB#125:                               # %if.then.291
	movq	display, %rax
	movl	444(%rax), %ecx
	subl	$1, %ecx
	movl	-56(%rbp), %esi
	movl	%ecx, %edi
	callq	WriteLP
.LBB58_126:                             # %if.end.294
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	ScrollV, .Lfunc_end58-ScrollV
	.cfi_endproc

	.globl	SetAttr
	.align	16, 0x90
	.type	SetAttr,@function
SetAttr:                                # @SetAttr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	je	.LBB59_2
# BB#1:                                 # %lor.lhs.false
	movq	display, %rax
	movzbl	477(%rax), %ecx
	movl	%ecx, -16(%rbp)
	cmpl	-4(%rbp), %ecx
	jne	.LBB59_3
.LBB59_2:                               # %if.then
	jmp	.LBB59_28
.LBB59_3:                               # %if.end
	movl	-16(%rbp), %eax
	xorl	-4(%rbp), %eax
	andl	$192, %eax
	movq	display, %rcx
	movl	%eax, 484(%rcx)
	movq	display, %rcx
	movl	484(%rcx), %eax
	xorl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB59_5
# BB#4:                                 # %if.then.6
	jmp	.LBB59_28
.LBB59_5:                               # %if.end.7
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 477(%rdx)
	movq	display, %rdx
	movsbl	488(%rdx), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	andl	-16(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB59_17
# BB#6:                                 # %if.then.15
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB59_8
# BB#7:                                 # %if.then.18
	movq	display, %rax
	movq	5864(%rax), %rdi
	callq	AddCStr
.LBB59_8:                               # %if.end.19
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB59_10
# BB#9:                                 # %if.then.22
	movq	display, %rax
	movq	5872(%rax), %rdi
	callq	AddCStr
.LBB59_10:                              # %if.end.26
	movl	-20(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB59_16
# BB#11:                                # %if.then.29
	movq	display, %rax
	movq	5880(%rax), %rdi
	callq	AddCStr
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB59_13
# BB#12:                                # %if.then.34
	movq	display, %rax
	movb	$0, 480(%rax)
	movq	display, %rax
	movzbl	477(%rax), %ecx
	andl	$-193, %ecx
	movb	%cl, %dl
	movb	%dl, 477(%rax)
.LBB59_13:                              # %if.end.41
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	jne	.LBB59_15
# BB#14:                                # %if.then.45
	movq	display, %rax
	movb	$0, 478(%rax)
	movq	display, %rax
	movl	$0, 504(%rax)
.LBB59_15:                              # %if.end.47
	jmp	.LBB59_16
.LBB59_16:                              # %if.end.48
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB59_17:                              # %if.end.49
	movl	-4(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -12(%rbp)
.LBB59_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB59_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$6, -8(%rbp)
	setl	%al
	movb	%al, -21(%rbp)          # 1-byte Spill
.LBB59_20:                              # %land.end
                                        #   in Loop: Header=BB59_18 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_21
	jmp	.LBB59_27
.LBB59_21:                              # %for.body
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	-16(%rbp), %eax
	andl	-12(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB59_23
# BB#22:                                # %if.then.57
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_26
.LBB59_23:                              # %if.end.58
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movslq	-8(%rbp), %rcx
	movq	display, %rdx
	cmpq	$0, 7048(%rdx,%rcx,8)
	je	.LBB59_25
# BB#24:                                # %if.then.62
                                        #   in Loop: Header=BB59_18 Depth=1
	movslq	-8(%rbp), %rax
	movq	display, %rcx
	movq	7048(%rcx,%rax,8), %rdi
	callq	AddCStr
	movslq	-8(%rbp), %rax
	movq	display, %rcx
	movsbl	7096(%rcx,%rax), %edx
	orl	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
.LBB59_25:                              # %if.end.69
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_26
.LBB59_26:                              # %for.inc
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB59_18
.LBB59_27:                              # %for.end
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 488(%rdx)
.LBB59_28:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	SetAttr, .Lfunc_end59-SetAttr
	.cfi_endproc

	.globl	SetFont
	.align	16, 0x90
	.type	SetFont,@function
SetFont:                                # @SetFont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	display, %rax
	movzbl	478(%rax), %edi
	movl	%edi, -8(%rbp)
	cmpq	$0, display
	je	.LBB60_2
# BB#1:                                 # %lor.lhs.false
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB60_3
.LBB60_2:                               # %if.then
	jmp	.LBB60_33
.LBB60_3:                               # %if.end
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movq	display, %rdx
	movb	%cl, 478(%rdx)
	movq	display, %rdx
	cmpl	$0, 496(%rdx)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	display, %rax
	movl	496(%rax), %edi
	movl	-4(%rbp), %esi
	callq	CanEncodeFont
	cmpl	$0, %eax
	je	.LBB60_6
# BB#5:                                 # %if.then.8
	jmp	.LBB60_33
.LBB60_6:                               # %if.end.9
	movl	-4(%rbp), %eax
	movq	display, %rcx
	cmpl	504(%rcx), %eax
	jne	.LBB60_8
# BB#7:                                 # %if.then.12
	jmp	.LBB60_33
.LBB60_8:                               # %if.end.13
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 504(%rcx)
	movq	display, %rcx
	cmpq	$0, 7368(%rcx)
	je	.LBB60_12
# BB#9:                                 # %land.lhs.true.16
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movq	7368(%rsi), %rsi
	cmpq	$0, (%rsi,%rdx,8)
	je	.LBB60_12
# BB#10:                                # %land.lhs.true.21
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movq	7368(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	cmpq	$0, 2048(%rdx)
	je	.LBB60_12
# BB#11:                                # %if.then.29
	movl	-4(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movslq	%eax, %rdx
	movq	display, %rsi
	movq	7368(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	2048(%rdx), %rdi
	callq	AddCStr
	jmp	.LBB60_33
.LBB60_12:                              # %if.end.36
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	jne	.LBB60_17
# BB#13:                                # %land.lhs.true.39
	cmpl	$48, -4(%rbp)
	je	.LBB60_17
# BB#14:                                # %if.then.42
	movl	$0, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB60_16
# BB#15:                                # %if.then.45
	jmp	.LBB60_33
.LBB60_16:                              # %if.end.46
	jmp	.LBB60_17
.LBB60_17:                              # %if.end.47
	cmpl	$0, -4(%rbp)
	jne	.LBB60_19
# BB#18:                                # %if.then.50
	movq	display, %rax
	movq	6232(%rax), %rdi
	callq	AddCStr
	jmp	.LBB60_33
.LBB60_19:                              # %if.else
	cmpl	$32, -4(%rbp)
	jge	.LBB60_31
# BB#20:                                # %if.then.55
	movabsq	$.L.str.2, %rdi
	callq	AddStr
	cmpl	$2, -4(%rbp)
	jle	.LBB60_26
# BB#21:                                # %if.then.58
	jmp	.LBB60_22
.LBB60_22:                              # %do.body
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB60_24
# BB#23:                                # %if.then.61
	callq	Resize_obuf
.LBB60_24:                              # %if.end.62
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$40, (%rcx)
# BB#25:                                # %do.end
	jmp	.LBB60_26
.LBB60_26:                              # %if.end.63
	jmp	.LBB60_27
.LBB60_27:                              # %do.body.64
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB60_29
# BB#28:                                # %if.then.69
	callq	Resize_obuf
.LBB60_29:                              # %if.end.70
	movl	-4(%rbp), %eax
	addl	$64, %eax
	movb	%al, %cl
	movq	display, %rdx
	movq	5296(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 5296(%rdx)
	movb	%cl, (%rsi)
# BB#30:                                # %do.end.74
	jmp	.LBB60_32
.LBB60_31:                              # %if.else.75
	movq	display, %rax
	movq	6224(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	AddCStr2
.LBB60_32:                              # %if.end.79
	jmp	.LBB60_33
.LBB60_33:                              # %if.end.80
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	SetFont, .Lfunc_end60-SetFont
	.cfi_endproc

	.globl	color256to16
	.align	16, 0x90
	.type	color256to16,@function
color256to16:                           # @color256to16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	cmpl	$232, -4(%rbp)
	jl	.LBB61_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$7, %ecx
	movl	$6, %edx
	movl	-4(%rbp), %esi
	subl	$232, %esi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -32(%rbp)         # 4-byte Spill
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	shll	$3, %eax
	movl	-4(%rbp), %edi
	andl	$2, %edi
	cmpl	$0, %edi
	movl	-28(%rbp), %edi         # 4-byte Reload
	cmovnel	%ecx, %edi
	orl	%edi, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB61_26
.LBB61_2:                               # %if.else
	cmpl	$16, -4(%rbp)
	jl	.LBB61_25
# BB#3:                                 # %if.then.3
	movl	$6, %eax
	movl	$36, %ecx
	movl	-4(%rbp), %edx
	subl	$16, %edx
	movl	%edx, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cltd
	idivl	%ecx
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	movl	-16(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jge	.LBB61_8
# BB#4:                                 # %cond.true
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB61_6
# BB#5:                                 # %cond.true.10
	movl	-16(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB61_7
.LBB61_6:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB61_7:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB61_12
.LBB61_8:                               # %cond.false.12
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB61_10
# BB#9:                                 # %cond.true.14
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB61_11
.LBB61_10:                              # %cond.false.15
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB61_11:                              # %cond.end.16
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB61_12:                              # %cond.end.18
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB61_17
# BB#13:                                # %cond.true.21
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB61_15
# BB#14:                                # %cond.true.23
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB61_16
.LBB61_15:                              # %cond.false.24
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB61_16:                              # %cond.end.25
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB61_21
.LBB61_17:                              # %cond.false.27
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB61_19
# BB#18:                                # %cond.true.29
	movl	-20(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB61_20
.LBB61_19:                              # %cond.false.30
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB61_20:                              # %cond.end.31
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB61_21:                              # %cond.end.33
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB61_23
# BB#22:                                # %if.then.36
	xorl	%eax, %eax
	movl	$7, %ecx
	movl	-12(%rbp), %edx
	addl	$1, %edx
	andl	$2, %edx
	shll	$2, %edx
	movl	-12(%rbp), %esi
	addl	$1, %esi
	andl	$4, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	orl	%eax, %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB61_24
.LBB61_23:                              # %if.else.44
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	-24(%rbp), %edx
	subl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	subl	-8(%rbp), %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%esi
	shll	$2, %eax
	movl	-20(%rbp), %esi
	subl	-8(%rbp), %esi
	movl	-12(%rbp), %edi
	subl	-8(%rbp), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%edi
	shll	$1, %eax
	movl	-68(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	-12(%rbp), %edi
	subl	-8(%rbp), %edi
	cltd
	idivl	%edi
	orl	%eax, %esi
	cmpl	$3, -12(%rbp)
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmovgl	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -4(%rbp)
.LBB61_24:                              # %if.end
	jmp	.LBB61_25
.LBB61_25:                              # %if.end.61
	jmp	.LBB61_26
.LBB61_26:                              # %if.end.62
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end61:
	.size	color256to16, .Lfunc_end61-color256to16
	.cfi_endproc

	.globl	SetColor
	.align	16, 0x90
	.type	SetColor,@function
SetColor:                               # @SetColor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpq	$0, display
	jne	.LBB62_2
# BB#1:                                 # %if.then
	jmp	.LBB62_88
.LBB62_2:                               # %if.end
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	display, %rdx
	movzbl	480(%rdx), %esi
	andl	$15, %esi
	movq	display, %rdx
	movzbl	477(%rdx), %edi
	andl	$64, %edi
	cmpl	$0, %edi
	movl	%eax, %edi
	cmovnel	%ecx, %edi
	orl	%edi, %esi
	movl	%esi, -12(%rbp)
	movq	display, %rdx
	movzbl	480(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	display, %rdx
	movzbl	477(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -16(%rbp)
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jne	.LBB62_4
# BB#3:                                 # %if.then.17
	movl	$0, -4(%rbp)
.LBB62_4:                               # %if.end.18
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jne	.LBB62_6
# BB#5:                                 # %if.then.21
	movl	$0, -8(%rbp)
.LBB62_6:                               # %if.end.22
	jmp	.LBB62_7
.LBB62_7:                               # %do.body
	jmp	.LBB62_8
.LBB62_8:                               # %do.end
	jmp	.LBB62_9
.LBB62_9:                               # %do.body.23
	jmp	.LBB62_10
.LBB62_10:                              # %do.end.24
	jmp	.LBB62_11
.LBB62_11:                              # %do.body.25
	jmp	.LBB62_12
.LBB62_12:                              # %do.end.26
	jmp	.LBB62_13
.LBB62_13:                              # %do.body.27
	jmp	.LBB62_14
.LBB62_14:                              # %do.end.28
	movq	display, %rax
	cmpl	$0, 5976(%rax)
	jne	.LBB62_30
# BB#15:                                # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB62_30
# BB#16:                                # %land.lhs.true.31
	cmpl	$0, -4(%rbp)
	jne	.LBB62_18
# BB#17:                                # %land.lhs.true.34
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB62_20
.LBB62_18:                              # %lor.lhs.false
	cmpl	$0, -8(%rbp)
	jne	.LBB62_30
# BB#19:                                # %land.lhs.true.39
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB62_30
.LBB62_20:                              # %if.then.42
	movq	display, %rax
	cmpq	$0, 5952(%rax)
	je	.LBB62_22
# BB#21:                                # %if.then.46
	movq	display, %rax
	movq	5952(%rax), %rdi
	callq	AddCStr
	jmp	.LBB62_29
.LBB62_22:                              # %if.else
	movq	display, %rax
	movzbl	477(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	je	.LBB62_24
# BB#23:                                # %cond.true
	movq	display, %rax
	movq	5880(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB62_25
.LBB62_24:                              # %cond.false
	movabsq	$.L.str.3, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB62_25
.LBB62_25:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	AddCStr
	movq	display, %rax
	cmpq	$0, 5880(%rax)
	je	.LBB62_28
# BB#26:                                # %land.lhs.true.65
	movq	display, %rax
	cmpl	$0, 6216(%rax)
	jne	.LBB62_28
# BB#27:                                # %if.then.70
	movq	display, %rax
	movb	$0, 478(%rax)
	movq	display, %rax
	movl	$0, 504(%rax)
.LBB62_28:                              # %if.end.72
	movq	display, %rax
	movb	$0, 488(%rax)
	movq	display, %rax
	movb	$0, 477(%rax)
	movl	-20(%rbp), %edi
	callq	SetAttr
.LBB62_29:                              # %if.end.75
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB62_30:                              # %if.end.76
	movl	$128, %eax
	xorl	%ecx, %ecx
	movl	$64, %edx
	movq	display, %rsi
	movzbl	480(%rsi), %edi
	andl	$240, %edi
	movl	-4(%rbp), %r8d
	andl	$15, %r8d
	orl	%r8d, %edi
	movb	%dil, %r9b
	movq	display, %rsi
	movb	%r9b, 480(%rsi)
	movq	display, %rsi
	movzbl	477(%rsi), %edi
	orl	$64, %edi
	movl	-4(%rbp), %r8d
	andl	$256, %r8d              # imm = 0x100
	cmpl	$0, %r8d
	cmovnel	%ecx, %edx
	xorl	%edx, %edi
	movb	%dil, %r9b
	movq	display, %rsi
	movb	%r9b, 477(%rsi)
	movq	display, %rsi
	movzbl	480(%rsi), %edx
	andl	$15, %edx
	movl	-8(%rbp), %edi
	shll	$4, %edi
	andl	$240, %edi
	orl	%edi, %edx
	movb	%dl, %r9b
	movq	display, %rsi
	movb	%r9b, 480(%rsi)
	movq	display, %rsi
	movzbl	477(%rsi), %edx
	orl	$128, %edx
	movl	-8(%rbp), %edi
	andl	$256, %edi              # imm = 0x100
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	xorl	%eax, %edx
	movb	%dl, %r9b
	movq	display, %rsi
	movb	%r9b, 477(%rsi)
	movq	display, %rsi
	movl	$0, 484(%rsi)
	movq	display, %rsi
	cmpl	$0, 7104(%rsi)
	jne	.LBB62_32
# BB#31:                                # %if.then.118
	jmp	.LBB62_88
.LBB62_32:                              # %if.end.119
	cmpl	$0, -4(%rbp)
	je	.LBB62_37
# BB#33:                                # %cond.true.121
	movl	-4(%rbp), %eax
	andl	$504, %eax              # imm = 0x1F8
	cmpl	$264, %eax              # imm = 0x108
	jne	.LBB62_35
# BB#34:                                # %cond.true.125
	movl	-4(%rbp), %eax
	xorl	$264, %eax              # imm = 0x108
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB62_36
.LBB62_35:                              # %cond.false.127
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB62_36:                              # %cond.end.129
	movl	-36(%rbp), %eax         # 4-byte Reload
	xorl	$9, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB62_38
.LBB62_37:                              # %cond.false.132
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB62_38
.LBB62_38:                              # %cond.end.133
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB62_43
# BB#39:                                # %cond.true.136
	movl	-8(%rbp), %eax
	andl	$504, %eax              # imm = 0x1F8
	cmpl	$264, %eax              # imm = 0x108
	jne	.LBB62_41
# BB#40:                                # %cond.true.140
	movl	-8(%rbp), %eax
	xorl	$264, %eax              # imm = 0x108
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB62_42
.LBB62_41:                              # %cond.false.142
	movl	-8(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB62_42:                              # %cond.end.144
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	$9, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB62_44
.LBB62_43:                              # %cond.false.147
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB62_44
.LBB62_44:                              # %cond.end.148
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB62_49
# BB#45:                                # %cond.true.151
	movl	-12(%rbp), %eax
	andl	$504, %eax              # imm = 0x1F8
	cmpl	$264, %eax              # imm = 0x108
	jne	.LBB62_47
# BB#46:                                # %cond.true.155
	movl	-12(%rbp), %eax
	xorl	$264, %eax              # imm = 0x108
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB62_48
.LBB62_47:                              # %cond.false.157
	movl	-12(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB62_48:                              # %cond.end.159
	movl	-52(%rbp), %eax         # 4-byte Reload
	xorl	$9, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB62_50
.LBB62_49:                              # %cond.false.162
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB62_50
.LBB62_50:                              # %cond.end.163
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB62_55
# BB#51:                                # %cond.true.166
	movl	-16(%rbp), %eax
	andl	$504, %eax              # imm = 0x1F8
	cmpl	$264, %eax              # imm = 0x108
	jne	.LBB62_53
# BB#52:                                # %cond.true.170
	movl	-16(%rbp), %eax
	xorl	$264, %eax              # imm = 0x108
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB62_54
.LBB62_53:                              # %cond.false.172
	movl	-16(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB62_54:                              # %cond.end.174
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	$9, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB62_56
.LBB62_55:                              # %cond.false.177
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB62_56
.LBB62_56:                              # %cond.end.178
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB62_67
# BB#57:                                # %land.lhs.true.182
	movl	-4(%rbp), %eax
	movl	-12(%rbp), %ecx
	orl	$8, %ecx
	cmpl	%ecx, %eax
	je	.LBB62_67
# BB#58:                                # %if.then.186
	cmpl	$-1, -4(%rbp)
	jne	.LBB62_60
# BB#59:                                # %if.then.189
	movabsq	$.L.str.4, %rdi
	callq	AddCStr
	jmp	.LBB62_66
.LBB62_60:                              # %if.else.190
	movq	display, %rax
	cmpq	$0, 5920(%rax)
	je	.LBB62_62
# BB#61:                                # %if.then.195
	movq	display, %rax
	movq	5920(%rax), %rdi
	movl	-4(%rbp), %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	callq	AddCStr2
	jmp	.LBB62_65
.LBB62_62:                              # %if.else.200
	movq	display, %rax
	cmpq	$0, 5936(%rax)
	je	.LBB62_64
# BB#63:                                # %if.then.205
	movq	display, %rax
	movq	5936(%rax), %rdi
	movl	-4(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rax
	movzbl	SetColor.sftrans(,%rax), %esi
	callq	AddCStr2
.LBB62_64:                              # %if.end.212
	jmp	.LBB62_65
.LBB62_65:                              # %if.end.213
	jmp	.LBB62_66
.LBB62_66:                              # %if.end.214
	jmp	.LBB62_67
.LBB62_67:                              # %if.end.215
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB62_78
# BB#68:                                # %land.lhs.true.218
	movl	-8(%rbp), %eax
	movl	-16(%rbp), %ecx
	orl	$8, %ecx
	cmpl	%ecx, %eax
	je	.LBB62_78
# BB#69:                                # %if.then.222
	cmpl	$-1, -8(%rbp)
	jne	.LBB62_71
# BB#70:                                # %if.then.225
	movabsq	$.L.str.5, %rdi
	callq	AddCStr
	jmp	.LBB62_77
.LBB62_71:                              # %if.else.226
	movq	display, %rax
	cmpq	$0, 5928(%rax)
	je	.LBB62_73
# BB#72:                                # %if.then.231
	movq	display, %rax
	movq	5928(%rax), %rdi
	movl	-8(%rbp), %ecx
	andl	$7, %ecx
	movl	%ecx, %esi
	callq	AddCStr2
	jmp	.LBB62_76
.LBB62_73:                              # %if.else.236
	movq	display, %rax
	cmpq	$0, 5944(%rax)
	je	.LBB62_75
# BB#74:                                # %if.then.241
	movq	display, %rax
	movq	5944(%rax), %rdi
	movl	-8(%rbp), %ecx
	andl	$7, %ecx
	movslq	%ecx, %rax
	movzbl	SetColor.sftrans(,%rax), %esi
	callq	AddCStr2
.LBB62_75:                              # %if.end.249
	jmp	.LBB62_76
.LBB62_76:                              # %if.end.250
	jmp	.LBB62_77
.LBB62_77:                              # %if.end.251
	jmp	.LBB62_78
.LBB62_78:                              # %if.end.252
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB62_83
# BB#79:                                # %land.lhs.true.255
	movq	display, %rax
	cmpl	$0, 6208(%rax)
	je	.LBB62_83
# BB#80:                                # %land.lhs.true.260
	movl	-4(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB62_83
# BB#81:                                # %land.lhs.true.264
	cmpl	$-1, -4(%rbp)
	je	.LBB62_83
# BB#82:                                # %if.then.267
	movabsq	$.L.str.6, %rdi
	movl	-4(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %esi
	callq	AddCStr2
.LBB62_83:                              # %if.end.269
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB62_88
# BB#84:                                # %land.lhs.true.272
	movq	display, %rax
	cmpl	$0, 6208(%rax)
	je	.LBB62_88
# BB#85:                                # %land.lhs.true.277
	movl	-8(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB62_88
# BB#86:                                # %land.lhs.true.281
	cmpl	$-1, -8(%rbp)
	je	.LBB62_88
# BB#87:                                # %if.then.284
	movabsq	$.L.str.7, %rdi
	movl	-8(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %esi
	callq	AddCStr2
.LBB62_88:                              # %if.end.286
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	SetColor, .Lfunc_end62-SetColor
	.cfi_endproc

	.globl	SetRenditionMline
	.align	16, 0x90
	.type	SetRenditionMline,@function
SetRenditionMline:                      # @SetRenditionMline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, display
	jne	.LBB63_2
# BB#1:                                 # %if.then
	jmp	.LBB63_32
.LBB63_2:                               # %if.end
	cmpl	$0, nattr2color
	je	.LBB63_8
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB63_8
# BB#4:                                 # %land.lhs.true.3
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	nattr2color, %edx
	cmpl	$0, %edx
	je	.LBB63_8
# BB#5:                                 # %if.then.5
	jmp	.LBB63_6
.LBB63_6:                               # %do.body
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -24(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -23(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -22(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -21(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -20(%rbp)
	movb	$0, -19(%rbp)
# BB#7:                                 # %do.end
	leaq	-24(%rbp), %rdi
	callq	SetRendition
	jmp	.LBB63_32
.LBB63_8:                               # %if.end.22
	movq	display, %rax
	cmpl	$0, 7104(%rax)
	je	.LBB63_20
# BB#9:                                 # %land.lhs.true.25
	movq	display, %rax
	cmpl	$0, 5984(%rax)
	je	.LBB63_20
# BB#10:                                # %land.lhs.true.28
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$0, %edx
	je	.LBB63_20
# BB#11:                                # %if.then.35
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$64, %edx
	cmpl	$0, %edx
	je	.LBB63_14
# BB#12:                                # %land.lhs.true.46
	movq	display, %rax
	cmpq	$0, 5832(%rax)
	je	.LBB63_14
# BB#13:                                # %if.then.50
	movl	-28(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -28(%rbp)
.LBB63_14:                              # %if.end.51
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	je	.LBB63_17
# BB#15:                                # %land.lhs.true.58
	movq	display, %rax
	cmpq	$0, 5856(%rax)
	je	.LBB63_17
# BB#16:                                # %if.then.63
	movl	-28(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -28(%rbp)
.LBB63_17:                              # %if.end.65
	movq	display, %rax
	movzbl	477(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB63_19
# BB#18:                                # %if.then.70
	movl	-28(%rbp), %edi
	callq	SetAttr
.LBB63_19:                              # %if.end.71
	jmp	.LBB63_23
.LBB63_20:                              # %if.else
	movq	display, %rax
	movzbl	477(%rax), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB63_22
# BB#21:                                # %if.then.81
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	SetAttr
.LBB63_22:                              # %if.end.86
	jmp	.LBB63_23
.LBB63_23:                              # %if.end.87
	movq	display, %rax
	movzbl	480(%rax), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	jne	.LBB63_25
# BB#24:                                # %lor.lhs.false
	movq	display, %rax
	cmpl	$0, 484(%rax)
	je	.LBB63_28
.LBB63_25:                              # %if.then.98
	jmp	.LBB63_26
.LBB63_26:                              # %do.body.100
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -40(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -39(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -38(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -37(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -36(%rbp)
	movb	$0, -35(%rbp)
# BB#27:                                # %do.end.122
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movzbl	-36(%rbp), %edx
	andl	$15, %edx
	movzbl	-39(%rbp), %esi
	andl	$64, %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	orl	%esi, %edx
	movzbl	-36(%rbp), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movzbl	-39(%rbp), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%edx, %edi
	callq	SetColor
.LBB63_28:                              # %if.end.140
	movq	display, %rax
	movzbl	478(%rax), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB63_30
# BB#29:                                # %if.then.150
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	SetFont
.LBB63_30:                              # %if.end.155
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB63_32
# BB#31:                                # %if.then.158
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 479(%rax)
.LBB63_32:                              # %if.end.164
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	SetRenditionMline, .Lfunc_end63-SetRenditionMline
	.cfi_endproc

	.globl	MakeStatus
	.align	16, 0x90
	.type	MakeStatus,@function
MakeStatus:                             # @MakeStatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, display
	jne	.LBB64_2
# BB#1:                                 # %if.then
	jmp	.LBB64_86
.LBB64_2:                               # %if.end
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB64_4
# BB#3:                                 # %if.then.2
	jmp	.LBB64_86
.LBB64_4:                               # %if.end.3
	movq	display, %rax
	cmpb	$0, 440(%rax)
	jne	.LBB64_10
# BB#5:                                 # %if.then.5
	jmp	.LBB64_6
.LBB64_6:                               # %do.body
	jmp	.LBB64_7
.LBB64_7:                               # %do.end
	movq	display, %rax
	cmpq	$0, 360(%rax)
	je	.LBB64_9
# BB#8:                                 # %if.then.7
	jmp	.LBB64_86
.LBB64_9:                               # %if.end.8
	movq	-8(%rbp), %rdi
	callq	AddStr
	movabsq	$.L.str.8, %rdi
	callq	AddStr
	xorl	%edi, %edi
	callq	Flush
	jmp	.LBB64_86
.LBB64_10:                              # %if.end.9
	cmpl	$0, use_hardstatus
	je	.LBB64_12
# BB#11:                                # %lor.lhs.false
	movq	display, %rax
	cmpl	$0, 6040(%rax)
	jne	.LBB64_15
.LBB64_12:                              # %if.then.12
	movq	display, %rax
	movl	444(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB64_14
# BB#13:                                # %if.then.16
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
.LBB64_14:                              # %if.end.17
	jmp	.LBB64_19
.LBB64_15:                              # %if.else
	movq	display, %rax
	cmpl	$0, 6048(%rax)
	jle	.LBB64_17
# BB#16:                                # %cond.true
	movq	display, %rax
	movl	6048(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB64_18
.LBB64_17:                              # %cond.false
	movq	display, %rax
	movl	444(%rax), %ecx
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB64_18:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB64_19:                              # %if.end.29
	movq	display, %rax
	cmpl	$0, 576(%rax)
	je	.LBB64_27
# BB#20:                                # %if.then.31
	movq	-8(%rbp), %rdi
	movq	display, %rax
	movq	592(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB64_26
# BB#21:                                # %if.then.33
	jmp	.LBB64_22
.LBB64_22:                              # %do.body.34
	jmp	.LBB64_23
.LBB64_23:                              # %do.end.35
	movq	display, %rax
	cmpl	$0, 620(%rax)
	jne	.LBB64_25
# BB#24:                                # %if.then.37
	movq	display, %rax
	addq	$624, %rax              # imm = 0x270
	movl	MsgWait, %esi
	movq	%rax, %rdi
	callq	SetTimeout
.LBB64_25:                              # %if.end.38
	jmp	.LBB64_86
.LBB64_26:                              # %if.end.39
	callq	RemoveStatusMinWait
.LBB64_27:                              # %if.end.40
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	%rax, -16(%rbp)
.LBB64_28:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	je	.LBB64_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.LBB64_30:                              # %land.end
                                        #   in Loop: Header=BB64_28 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB64_31
	jmp	.LBB64_39
.LBB64_31:                              # %for.body
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$7, %ecx
	jne	.LBB64_33
# BB#32:                                # %if.then.48
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	display, %rax
	movq	5776(%rax), %rdi
	callq	AddCStr
	jmp	.LBB64_37
.LBB64_33:                              # %if.else.51
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	jl	.LBB64_36
# BB#34:                                # %land.lhs.true
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$127, %ecx
	je	.LBB64_36
# BB#35:                                # %if.then.58
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
.LBB64_36:                              # %if.end.59
                                        #   in Loop: Header=BB64_28 Depth=1
	jmp	.LBB64_37
.LBB64_37:                              # %if.end.60
                                        #   in Loop: Header=BB64_28 Depth=1
	jmp	.LBB64_38
.LBB64_38:                              # %for.inc
                                        #   in Loop: Header=BB64_28 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB64_28
.LBB64_39:                              # %for.end
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB64_41
# BB#40:                                # %if.then.64
	jmp	.LBB64_86
.LBB64_41:                              # %if.end.65
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	display, %rcx
	movslq	600(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB64_48
# BB#42:                                # %if.then.72
	movq	display, %rax
	cmpq	$0, 592(%rax)
	je	.LBB64_44
# BB#43:                                # %if.then.75
	movq	display, %rax
	movq	592(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	realloc
	movq	%rax, -40(%rbp)
	jmp	.LBB64_45
.LBB64_44:                              # %if.else.81
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
.LBB64_45:                              # %if.end.87
	cmpq	$0, -40(%rbp)
	je	.LBB64_47
# BB#46:                                # %if.then.89
	movq	-40(%rbp), %rax
	movq	display, %rcx
	movq	%rax, 592(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movq	display, %rax
	movl	%edx, 600(%rax)
.LBB64_47:                              # %if.end.97
	jmp	.LBB64_48
.LBB64_48:                              # %if.end.98
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	display, %rcx
	movslq	600(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB64_50
# BB#49:                                # %if.then.106
	movq	display, %rax
	movq	592(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB64_50:                              # %if.end.109
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	display, %rax
	movl	%edx, 584(%rax)
	movq	display, %rax
	movl	468(%rax), %edx
	movq	display, %rax
	movl	%edx, 604(%rax)
	movq	display, %rax
	movl	472(%rax), %edx
	movq	display, %rax
	movl	%edx, 608(%rax)
	cmpl	$0, use_hardstatus
	je	.LBB64_53
# BB#51:                                # %lor.lhs.false.115
	movq	display, %rax
	cmpl	$0, 528(%rax)
	je	.LBB64_53
# BB#52:                                # %lor.lhs.false.118
	movq	display, %rax
	cmpl	$2, 528(%rax)
	jne	.LBB64_76
.LBB64_53:                              # %if.then.122
	movq	display, %rax
	movl	$1, 576(%rax)
# BB#54:                                # %do.body.124
	jmp	.LBB64_55
.LBB64_55:                              # %do.end.125
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	GotoPos
	movabsq	$mchar_so, %rdi
	callq	SetRendition
	xorl	%edi, %edi
	callq	InsertMode
	movq	-8(%rbp), %rdi
	callq	AddStr
	movq	display, %rax
	movl	584(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jge	.LBB64_75
# BB#56:                                # %if.then.130
	movabsq	$mchar_null, %rdi
	movq	display, %rax
	movl	584(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 584(%rax)
	callq	SetRendition
# BB#57:                                # %do.body.132
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB64_59
# BB#58:                                # %if.then.136
	callq	Resize_obuf
.LBB64_59:                              # %if.end.137
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$32, (%rcx)
# BB#60:                                # %do.end.139
	movq	display, %rax
	movl	584(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jge	.LBB64_70
# BB#61:                                # %if.then.143
	movq	display, %rax
	movl	584(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 584(%rax)
# BB#62:                                # %do.body.146
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB64_64
# BB#63:                                # %if.then.151
	callq	Resize_obuf
.LBB64_64:                              # %if.end.152
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$32, (%rcx)
# BB#65:                                # %do.end.155
	jmp	.LBB64_66
.LBB64_66:                              # %do.body.156
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB64_68
# BB#67:                                # %if.then.161
	callq	Resize_obuf
.LBB64_68:                              # %if.end.162
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$8, (%rcx)
# BB#69:                                # %do.end.165
	jmp	.LBB64_70
.LBB64_70:                              # %if.end.166
	jmp	.LBB64_71
.LBB64_71:                              # %do.body.167
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB64_73
# BB#72:                                # %if.then.172
	callq	Resize_obuf
.LBB64_73:                              # %if.end.173
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$8, (%rcx)
# BB#74:                                # %do.end.176
	jmp	.LBB64_75
.LBB64_75:                              # %if.end.177
	movq	display, %rax
	movl	$-1, 468(%rax)
	jmp	.LBB64_77
.LBB64_76:                              # %if.else.179
	movq	display, %rax
	movl	$2, 576(%rax)
	movq	-8(%rbp), %rdi
	callq	ShowHStatus
.LBB64_77:                              # %if.end.181
	movq	display, %rax
	movq	5296(%rax), %rax
	movq	display, %rcx
	movq	5272(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	display, %rax
	movl	%edx, 620(%rax)
# BB#78:                                # %do.body.188
	jmp	.LBB64_79
.LBB64_79:                              # %do.end.189
	movq	display, %rax
	cmpl	$1, 576(%rax)
	jne	.LBB64_86
# BB#80:                                # %if.then.193
	xorl	%edi, %edi
	movq	display, %rax
	movq	%rax, -48(%rbp)
	movq	flayer, %rax
	movq	%rax, -56(%rbp)
	movq	display, %rax
	movl	$0, 576(%rax)
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	GotoPos
	xorl	%ecx, %ecx
	movq	display, %rax
	movl	448(%rax), %esi
	subl	$1, %esi
	movq	display, %rax
	movl	584(%rax), %edi
	subl	$1, %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movl	%esi, %edi
	movl	%ecx, %esi
	movl	-76(%rbp), %edx         # 4-byte Reload
	callq	RefreshLine
	movq	display, %rax
	movl	604(%rax), %edi
	movq	display, %rax
	movl	608(%rax), %esi
	callq	GotoPos
	movq	display, %rax
	cmpq	$0, 336(%rax)
	je	.LBB64_82
# BB#81:                                # %cond.true.204
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB64_83
.LBB64_82:                              # %cond.false.206
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB64_83
.LBB64_83:                              # %cond.end.207
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, flayer
	cmpq	$0, flayer
	je	.LBB64_85
# BB#84:                                # %if.then.210
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB64_85:                              # %if.end.211
	movq	-48(%rbp), %rax
	movq	%rax, display
	movq	-56(%rbp), %rax
	movq	%rax, flayer
	movq	display, %rax
	movl	$1, 576(%rax)
.LBB64_86:                              # %if.end.213
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	MakeStatus, .Lfunc_end64-MakeStatus
	.cfi_endproc

	.align	16, 0x90
	.type	RemoveStatusMinWait,@function
RemoveStatusMinWait:                    # @RemoveStatusMinWait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	display, %rax
	cmpb	$0, 580(%rax)
	jne	.LBB65_5
# BB#1:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 620(%rax)
	jne	.LBB65_5
# BB#2:                                 # %if.then
	leaq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gettimeofday
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	display, %rdx
	subq	560(%rdx), %rdi
	imulq	$1000, %rdi, %rdx       # imm = 0x3E8
	movq	-8(%rbp), %rdi
	movq	display, %r8
	subq	568(%r8), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movq	%rdi, %rax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	MsgMinWait, %ecx
	jge	.LBB65_4
# BB#3:                                 # %if.then.7
	xorl	%esi, %esi
	movl	MsgMinWait, %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edi
	callq	DisplaySleep1000
.LBB65_4:                               # %if.end
	jmp	.LBB65_5
.LBB65_5:                               # %if.end.9
	callq	RemoveStatus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	RemoveStatusMinWait, .Lfunc_end65-RemoveStatusMinWait
	.cfi_endproc

	.globl	RemoveStatus
	.align	16, 0x90
	.type	RemoveStatus,@function
RemoveStatus:                           # @RemoveStatus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	cmpq	$0, display
	jne	.LBB66_2
# BB#1:                                 # %if.then
	jmp	.LBB66_21
.LBB66_2:                               # %if.end
	movq	display, %rax
	movl	576(%rax), %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %ecx
	jne	.LBB66_4
# BB#3:                                 # %if.then.2
	jmp	.LBB66_21
.LBB66_4:                               # %if.end.3
	jmp	.LBB66_5
.LBB66_5:                               # %do.body
	jmp	.LBB66_6
.LBB66_6:                               # %do.end
	movq	display, %rax
	cmpl	$0, 616(%rax)
	jl	.LBB66_8
# BB#7:                                 # %if.then.4
	movq	display, %rax
	movl	612(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 5280(%rax)
	movq	display, %rax
	movl	616(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 5304(%rax)
	movq	display, %rax
	movl	$-1, 616(%rax)
.LBB66_8:                               # %if.end.7
	movq	display, %rax
	movl	$0, 576(%rax)
	movq	display, %rax
	movl	$0, 620(%rax)
	movq	display, %rax
	movb	$0, 580(%rax)
	movq	display, %rax
	addq	$624, %rax              # imm = 0x270
	movq	%rax, %rdi
	callq	evdeq
	movq	display, %rax
	movq	%rax, -8(%rbp)
	movq	flayer, %rax
	movq	%rax, -16(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB66_14
# BB#9:                                 # %if.then.10
	cmpl	$0, captionalways
	jne	.LBB66_12
# BB#10:                                # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 48(%rax)
	je	.LBB66_13
# BB#11:                                # %land.lhs.true
	movq	display, %rax
	movq	48(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB66_13
.LBB66_12:                              # %if.then.16
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	GotoPos
	xorl	%ecx, %ecx
	movq	display, %rax
	movl	448(%rax), %esi
	subl	$1, %esi
	movq	display, %rax
	movl	584(%rax), %edi
	subl	$1, %edi
	movl	%edi, -24(%rbp)         # 4-byte Spill
	movl	%esi, %edi
	movl	%ecx, %esi
	movl	-24(%rbp), %edx         # 4-byte Reload
	callq	RefreshLine
	movq	display, %rax
	movl	604(%rax), %edi
	movq	display, %rax
	movl	608(%rax), %esi
	callq	GotoPos
.LBB66_13:                              # %if.end.20
	jmp	.LBB66_15
.LBB66_14:                              # %if.else
	callq	RefreshHStatus
.LBB66_15:                              # %if.end.21
	movq	display, %rax
	cmpq	$0, 336(%rax)
	je	.LBB66_17
# BB#16:                                # %cond.true
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB66_18
.LBB66_17:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB66_18
.LBB66_18:                              # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, flayer
	cmpq	$0, flayer
	je	.LBB66_20
# BB#19:                                # %if.then.25
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
.LBB66_20:                              # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, display
	movq	-16(%rbp), %rax
	movq	%rax, flayer
.LBB66_21:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	RemoveStatus, .Lfunc_end66-RemoveStatus
	.cfi_endproc

	.globl	AddStrn
	.align	16, 0x90
	.type	AddStrn,@function
AddStrn:                                # @AddStrn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB67_2
.LBB67_2:                               # %do.end
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB67_9
# BB#3:                                 # %if.then
	jmp	.LBB67_4
.LBB67_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	(%rdx), %dil
	movb	%dil, -13(%rbp)
	movsbl	%dil, %eax
	cmpl	$0, %eax
	movb	%cl, -14(%rbp)          # 1-byte Spill
	je	.LBB67_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB67_4 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	setg	%dl
	movb	%dl, -14(%rbp)          # 1-byte Spill
.LBB67_6:                               # %land.end
                                        #   in Loop: Header=BB67_4 Depth=1
	movb	-14(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_7
	jmp	.LBB67_8
.LBB67_7:                               # %while.body
                                        #   in Loop: Header=BB67_4 Depth=1
	movzbl	-13(%rbp), %edi
	callq	AddUtf8
	jmp	.LBB67_4
.LBB67_8:                               # %while.end
	jmp	.LBB67_19
.LBB67_9:                               # %if.else
	jmp	.LBB67_10
.LBB67_10:                              # %while.cond.4
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	(%rdx), %dil
	movb	%dil, -13(%rbp)
	movsbl	%dil, %eax
	cmpl	$0, %eax
	movb	%cl, -15(%rbp)          # 1-byte Spill
	je	.LBB67_12
# BB#11:                                # %land.rhs.8
                                        #   in Loop: Header=BB67_10 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	setg	%dl
	movb	%dl, -15(%rbp)          # 1-byte Spill
.LBB67_12:                              # %land.end.12
                                        #   in Loop: Header=BB67_10 Depth=1
	movb	-15(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_13
	jmp	.LBB67_18
.LBB67_13:                              # %while.body.13
                                        #   in Loop: Header=BB67_10 Depth=1
	jmp	.LBB67_14
.LBB67_14:                              # %do.body.14
                                        #   in Loop: Header=BB67_10 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB67_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB67_10 Depth=1
	callq	Resize_obuf
.LBB67_16:                              # %if.end
                                        #   in Loop: Header=BB67_10 Depth=1
	movb	-13(%rbp), %al
	movq	display, %rcx
	movq	5296(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 5296(%rcx)
	movb	%al, (%rdx)
# BB#17:                                # %do.end.20
                                        #   in Loop: Header=BB67_10 Depth=1
	jmp	.LBB67_10
.LBB67_18:                              # %while.end.21
	jmp	.LBB67_19
.LBB67_19:                              # %if.end.22
	jmp	.LBB67_20
.LBB67_20:                              # %while.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	jle	.LBB67_26
# BB#21:                                # %while.body.27
                                        #   in Loop: Header=BB67_20 Depth=1
	jmp	.LBB67_22
.LBB67_22:                              # %do.body.28
                                        #   in Loop: Header=BB67_20 Depth=1
	movq	display, %rax
	movl	5304(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 5304(%rax)
	cmpl	$0, %ecx
	jg	.LBB67_24
# BB#23:                                # %if.then.33
                                        #   in Loop: Header=BB67_20 Depth=1
	callq	Resize_obuf
.LBB67_24:                              # %if.end.34
                                        #   in Loop: Header=BB67_20 Depth=1
	movq	display, %rax
	movq	5296(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 5296(%rax)
	movb	$32, (%rcx)
# BB#25:                                # %do.end.37
                                        #   in Loop: Header=BB67_20 Depth=1
	jmp	.LBB67_20
.LBB67_26:                              # %while.end.38
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	AddStrn, .Lfunc_end67-AddStrn
	.cfi_endproc

	.align	16, 0x90
	.type	PrePutWinMsg,@function
PrePutWinMsg:                           # @PrePutWinMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	display, %rdi
	cmpl	$8, 496(%rdi)
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strlen_onscreen
	movl	%eax, -28(%rbp)
	movq	display, %rcx
	movl	$0, 496(%rcx)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	-24(%rbp), %r8d
	subl	-20(%rbp), %r8d
	subl	-28(%rbp), %r8d
	addl	%r8d, %eax
	movl	%eax, %edx
	callq	PutWinMsg
	movq	display, %rcx
	movl	$8, 496(%rcx)
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movq	display, %rcx
	movl	468(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 468(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB68_3
.LBB68_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	PutWinMsg
	movl	-24(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB68_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	PrePutWinMsg, .Lfunc_end68-PrePutWinMsg
	.cfi_endproc

	.align	16, 0x90
	.type	strlen_onscreen,@function
strlen_onscreen:                        # @strlen_onscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB69_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_7 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB69_5
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB69_1 Depth=1
	movb	$1, %al
	cmpq	$0, -16(%rbp)
	movb	%al, -30(%rbp)          # 1-byte Spill
	je	.LBB69_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setb	%cl
	movb	%cl, -30(%rbp)          # 1-byte Spill
.LBB69_4:                               # %lor.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movb	-30(%rbp), %al          # 1-byte Reload
	movb	%al, -29(%rbp)          # 1-byte Spill
.LBB69_5:                               # %land.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB69_6
	jmp	.LBB69_20
.LBB69_6:                               # %while.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	$0, -28(%rbp)
.LBB69_7:                               # %do.body
                                        #   Parent Loop BB69_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-28(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rax), %edi
	callq	FromUtf8
	movl	%eax, -24(%rbp)
	cmpl	$-2, -24(%rbp)
	jne	.LBB69_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB69_7 Depth=2
	movq	-8(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8(%rbp)
.LBB69_9:                               # %if.end
                                        #   in Loop: Header=BB69_7 Depth=2
	jmp	.LBB69_10
.LBB69_10:                              # %do.cond
                                        #   in Loop: Header=BB69_7 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%rbp)
	movb	%cl, -31(%rbp)          # 1-byte Spill
	jge	.LBB69_14
# BB#11:                                # %land.rhs.9
                                        #   in Loop: Header=BB69_7 Depth=2
	movb	$1, %al
	cmpq	$0, -16(%rbp)
	movb	%al, -32(%rbp)          # 1-byte Spill
	je	.LBB69_13
# BB#12:                                # %lor.rhs.11
                                        #   in Loop: Header=BB69_7 Depth=2
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setb	%cl
	movb	%cl, -32(%rbp)          # 1-byte Spill
.LBB69_13:                              # %lor.end.14
                                        #   in Loop: Header=BB69_7 Depth=2
	movb	-32(%rbp), %al          # 1-byte Reload
	movb	%al, -31(%rbp)          # 1-byte Spill
.LBB69_14:                              # %land.end.15
                                        #   in Loop: Header=BB69_7 Depth=2
	movb	-31(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB69_7
# BB#15:                                # %do.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	-24(%rbp), %edi
	callq	utf8_iscomb
	cmpl	$0, %eax
	jne	.LBB69_19
# BB#16:                                # %if.then.18
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	-24(%rbp), %edi
	callq	utf8_isdouble
	cmpl	$0, %eax
	je	.LBB69_18
# BB#17:                                # %if.then.21
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB69_18:                              # %if.end.22
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB69_19:                              # %if.end.24
                                        #   in Loop: Header=BB69_1 Depth=1
	jmp	.LBB69_1
.LBB69_20:                              # %while.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	strlen_onscreen, .Lfunc_end69-strlen_onscreen
	.cfi_endproc

	.globl	DisplayLine
	.align	16, 0x90
	.type	DisplayLine,@function
DisplayLine:                            # @DisplayLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB70_2
.LBB70_2:                               # %do.end
	jmp	.LBB70_3
.LBB70_3:                               # %do.body.1
	jmp	.LBB70_4
.LBB70_4:                               # %do.end.2
	jmp	.LBB70_5
.LBB70_5:                               # %do.body.3
	jmp	.LBB70_6
.LBB70_6:                               # %do.end.4
	jmp	.LBB70_7
.LBB70_7:                               # %do.body.5
	jmp	.LBB70_8
.LBB70_8:                               # %do.end.6
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB70_45
# BB#9:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB70_45
# BB#10:                                # %land.lhs.true.7
	movl	-28(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB70_45
# BB#11:                                # %if.then
	movq	display, %rax
	cmpl	$0, 536(%rax)
	jne	.LBB70_17
# BB#12:                                # %lor.lhs.false
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_17
# BB#13:                                # %land.lhs.true.17
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_17
# BB#14:                                # %land.lhs.true.27
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_17
# BB#15:                                # %land.lhs.true.37
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_17
# BB#16:                                # %land.lhs.true.47
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	je	.LBB70_44
.LBB70_17:                              # %if.then.57
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	jne	.LBB70_19
# BB#18:                                # %lor.lhs.false.61
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB70_26
.LBB70_19:                              # %land.lhs.true.66
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB70_26
# BB#20:                                # %land.lhs.true.69
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB70_23
# BB#21:                                # %cond.true
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB70_25
# BB#22:                                # %land.lhs.true.78
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB70_26
	jmp	.LBB70_25
.LBB70_23:                              # %cond.false
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB70_25
# BB#24:                                # %land.lhs.true.92
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	je	.LBB70_26
.LBB70_25:                              # %if.then.100
	movl	$1, -36(%rbp)
	movq	display, %rax
	movl	$0, 536(%rax)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB70_43
.LBB70_26:                              # %if.else
	movzbl	mchar_blank, %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB70_31
# BB#27:                                # %land.lhs.true.109
	movzbl	mchar_blank+1, %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB70_31
# BB#28:                                # %land.lhs.true.117
	movzbl	mchar_blank+2, %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB70_31
# BB#29:                                # %land.lhs.true.125
	movzbl	mchar_blank+3, %eax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB70_31
# BB#30:                                # %land.lhs.true.133
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	mchar_blank+4, %eax
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB70_35
.LBB70_31:                              # %land.rhs
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5736(%rcx)
	movb	%al, -42(%rbp)          # 1-byte Spill
	jne	.LBB70_34
# BB#32:                                # %lor.lhs.false.145
	movb	$1, %al
	movq	display, %rcx
	cmpq	$0, 5688(%rcx)
	movb	%al, -42(%rbp)          # 1-byte Spill
	jne	.LBB70_34
# BB#33:                                # %lor.rhs
	movq	display, %rax
	cmpq	$0, 5696(%rax)
	setne	%cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB70_34:                              # %lor.end
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB70_35:                              # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	movzbl	mchar_blank, %ecx
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movzbl	(%rdi,%rsi), %r8d
	cmpl	%r8d, %ecx
	movb	%dl, -43(%rbp)          # 1-byte Spill
	jne	.LBB70_40
# BB#36:                                # %land.lhs.true.161
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	mchar_blank+1, %eax
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jne	.LBB70_40
# BB#37:                                # %land.lhs.true.169
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	mchar_blank+2, %eax
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jne	.LBB70_40
# BB#38:                                # %land.lhs.true.177
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	mchar_blank+3, %eax
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movzbl	(%rsi,%rdx), %edi
	cmpl	%edi, %eax
	movb	%cl, -43(%rbp)          # 1-byte Spill
	jne	.LBB70_40
# BB#39:                                # %land.rhs.185
	movzbl	mchar_blank+4, %eax
	movslq	-28(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	sete	%dil
	movb	%dil, -43(%rbp)         # 1-byte Spill
.LBB70_40:                              # %land.end.193
	movb	-43(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	display, %rdx
	movl	%ecx, 536(%rdx)
# BB#41:                                # %do.body.196
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 548(%rax)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 549(%rax)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 550(%rax)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 551(%rax)
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movq	display, %rax
	movb	%dl, 552(%rax)
	movq	display, %rax
	movb	$0, 553(%rax)
# BB#42:                                # %do.end.222
	jmp	.LBB70_43
.LBB70_43:                              # %if.end
	jmp	.LBB70_44
.LBB70_44:                              # %if.end.223
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
.LBB70_45:                              # %if.end.225
	movq	display, %rax
	cmpl	$0, 492(%rax)
	je	.LBB70_49
# BB#46:                                # %if.then.227
	jmp	.LBB70_47
.LBB70_47:                              # %do.body.228
	jmp	.LBB70_48
.LBB70_48:                              # %do.end.229
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	SetRenditionMline
	movslq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rdi), %edi
	callq	PUTCHAR
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
.LBB70_49:                              # %if.end.234
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB70_50:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB70_84
# BB#51:                                # %for.body
                                        #   in Loop: Header=BB70_50 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB70_62
# BB#52:                                # %land.lhs.true.239
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB70_55
# BB#53:                                # %lor.lhs.false.242
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB70_55
# BB#54:                                # %lor.lhs.false.247
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB70_62
.LBB70_55:                              # %if.then.254
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_61
# BB#56:                                # %land.lhs.true.265
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_61
# BB#57:                                # %land.lhs.true.276
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_61
# BB#58:                                # %land.lhs.true.287
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_61
# BB#59:                                # %land.lhs.true.298
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB70_61
# BB#60:                                # %if.then.309
                                        #   in Loop: Header=BB70_50 Depth=1
	jmp	.LBB70_83
.LBB70_61:                              # %if.end.310
                                        #   in Loop: Header=BB70_50 Depth=1
	jmp	.LBB70_62
.LBB70_62:                              # %if.end.311
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB70_65
# BB#63:                                # %cond.true.315
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	jne	.LBB70_69
# BB#64:                                # %land.lhs.true.322
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$255, %edx
	je	.LBB70_66
	jmp	.LBB70_69
.LBB70_65:                              # %cond.false.329
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$128, %edx
	jne	.LBB70_69
.LBB70_66:                              # %if.then.337
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
# BB#67:                                # %do.body.339
                                        #   in Loop: Header=BB70_50 Depth=1
	jmp	.LBB70_68
.LBB70_68:                              # %do.end.340
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
.LBB70_69:                              # %if.end.341
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB70_76
# BB#70:                                # %land.lhs.true.344
                                        #   in Loop: Header=BB70_50 Depth=1
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB70_73
# BB#71:                                # %cond.true.348
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB70_76
# BB#72:                                # %land.lhs.true.356
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB70_75
	jmp	.LBB70_76
.LBB70_73:                              # %cond.false.364
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB70_76
# BB#74:                                # %land.lhs.true.372
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB70_76
.LBB70_75:                              # %if.then.380
	jmp	.LBB70_84
.LBB70_76:                              # %if.end.381
                                        #   in Loop: Header=BB70_50 Depth=1
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	SetRenditionMline
	movslq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rdi), %edi
	callq	PUTCHAR
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB70_79
# BB#77:                                # %cond.true.389
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB70_82
# BB#78:                                # %land.lhs.true.397
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB70_81
	jmp	.LBB70_82
.LBB70_79:                              # %cond.false.405
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB70_82
# BB#80:                                # %land.lhs.true.413
                                        #   in Loop: Header=BB70_50 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB70_82
.LBB70_81:                              # %if.then.421
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edi
	callq	PUTCHAR
.LBB70_82:                              # %if.end.427
                                        #   in Loop: Header=BB70_50 Depth=1
	jmp	.LBB70_83
.LBB70_83:                              # %for.inc
                                        #   in Loop: Header=BB70_50 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB70_50
.LBB70_84:                              # %for.end
	cmpl	$0, -36(%rbp)
	je	.LBB70_86
# BB#85:                                # %if.then.430
	movl	-32(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	addl	$1, %esi
	callq	SetRenditionMline
	movl	-32(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rdi), %edi
	callq	PUTCHAR
	movl	-32(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	SetRenditionMline
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movzbl	(%rdi,%rax), %edi
	callq	INSERTCHAR
	jmp	.LBB70_99
.LBB70_86:                              # %if.else.441
	cmpl	$0, -40(%rbp)
	je	.LBB70_98
# BB#87:                                # %if.then.443
	movq	display, %rax
	cmpl	$0, 5704(%rax)
	je	.LBB70_89
# BB#88:                                # %if.then.448
	movabsq	$mchar_null, %rdi
	callq	SetRendition
.LBB70_89:                              # %if.end.449
	movq	display, %rax
	cmpq	$0, 5688(%rax)
	je	.LBB70_91
# BB#90:                                # %if.then.454
	movq	display, %rax
	movq	5688(%rax), %rdi
	callq	AddCStr
	jmp	.LBB70_97
.LBB70_91:                              # %if.else.458
	movq	display, %rax
	cmpq	$0, 5696(%rax)
	je	.LBB70_93
# BB#92:                                # %if.then.463
	movl	$1, %esi
	movq	display, %rax
	movq	5696(%rax), %rdi
	callq	AddCStr2
	jmp	.LBB70_96
.LBB70_93:                              # %if.else.467
	movq	display, %rax
	cmpq	$0, 5736(%rax)
	je	.LBB70_95
# BB#94:                                # %if.then.472
	movq	display, %rax
	movq	5736(%rax), %rdi
	callq	AddCStr
.LBB70_95:                              # %if.end.476
	jmp	.LBB70_96
.LBB70_96:                              # %if.end.477
	jmp	.LBB70_97
.LBB70_97:                              # %if.end.478
	jmp	.LBB70_98
.LBB70_98:                              # %if.end.479
	jmp	.LBB70_99
.LBB70_99:                              # %if.end.480
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	DisplayLine, .Lfunc_end70-DisplayLine
	.cfi_endproc

	.globl	PutChar
	.align	16, 0x90
	.type	PutChar,@function
PutChar:                                # @PutChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	GotoPos
	movq	-8(%rbp), %rdi
	callq	SetRendition
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %edi
	callq	PUTCHARLP
	movq	-8(%rbp), %rax
	cmpb	$0, 5(%rax)
	je	.LBB71_4
# BB#1:                                 # %if.then
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB71_3
# BB#2:                                 # %if.then.2
	movq	display, %rax
	movb	$0, 478(%rax)
.LBB71_3:                               # %if.end
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	PUTCHARLP
.LBB71_4:                               # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	PutChar, .Lfunc_end71-PutChar
	.cfi_endproc

	.globl	InsChar
	.align	16, 0x90
	.type	InsChar,@function
InsChar:                                # @InsChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	GotoPos
	movl	-20(%rbp), %ecx
	movq	display, %r8
	cmpl	464(%r8), %ecx
	jne	.LBB72_7
# BB#1:                                 # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	jne	.LBB72_7
# BB#2:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB72_4
# BB#3:                                 # %if.then.2
	movq	display, %rax
	movl	$1, 536(%rax)
	movq	display, %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, 548(%rax)
	movw	4(%rcx), %si
	movw	%si, 552(%rax)
	jmp	.LBB72_29
.LBB72_4:                               # %if.end
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB72_6
# BB#5:                                 # %if.then.6
	movq	display, %rax
	movl	$0, 536(%rax)
.LBB72_6:                               # %if.end.8
	jmp	.LBB72_7
.LBB72_7:                               # %if.end.9
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB72_9
# BB#8:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	callq	SetRendition
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %edi
	callq	PUTCHARLP
	jmp	.LBB72_29
.LBB72_9:                               # %if.end.12
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	jne	.LBB72_12
# BB#10:                                # %lor.lhs.false
	movq	display, %rax
	cmpq	$0, 5680(%rax)
	jne	.LBB72_12
# BB#11:                                # %lor.lhs.false.20
	movq	display, %rax
	cmpq	$0, 5656(%rax)
	je	.LBB72_13
.LBB72_12:                              # %lor.lhs.false.25
	movl	-16(%rbp), %eax
	movq	display, %rcx
	movl	444(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB72_14
.LBB72_13:                              # %if.then.30
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	RefreshLine
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	-20(%rbp), %esi
	movl	%ecx, %edi
	callq	GotoPos
	jmp	.LBB72_29
.LBB72_14:                              # %if.end.31
	movl	$1, %edi
	callq	InsertMode
	movq	display, %rax
	cmpl	$0, 508(%rax)
	jne	.LBB72_22
# BB#15:                                # %if.then.33
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB72_18
# BB#16:                                # %land.lhs.true.36
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	je	.LBB72_18
# BB#17:                                # %if.then.41
	movq	display, %rax
	movq	5672(%rax), %rdi
	callq	AddCStr
.LBB72_18:                              # %if.end.45
	movq	display, %rax
	cmpq	$0, 5672(%rax)
	je	.LBB72_20
# BB#19:                                # %if.then.50
	movq	display, %rax
	movq	5672(%rax), %rdi
	callq	AddCStr
	jmp	.LBB72_21
.LBB72_20:                              # %if.else
	movl	$1, %eax
	movl	$2, %ecx
	movq	display, %rdx
	movq	5680(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movzbl	5(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	AddCStr2
.LBB72_21:                              # %if.end.60
	jmp	.LBB72_22
.LBB72_22:                              # %if.end.61
	movq	-8(%rbp), %rdi
	callq	SetRendition
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %edi
	callq	RAW_PUTCHAR
	movq	-8(%rbp), %rax
	cmpb	$0, 5(%rax)
	je	.LBB72_29
# BB#23:                                # %if.then.66
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB72_25
# BB#24:                                # %if.then.69
	movq	display, %rax
	movb	$0, 478(%rax)
.LBB72_25:                              # %if.end.70
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB72_27
# BB#26:                                # %if.then.75
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	PUTCHARLP
	jmp	.LBB72_28
.LBB72_27:                              # %if.else.78
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	RAW_PUTCHAR
.LBB72_28:                              # %if.end.81
	jmp	.LBB72_29
.LBB72_29:                              # %if.end.82
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	InsChar, .Lfunc_end72-InsChar
	.cfi_endproc

	.globl	WrapChar
	.align	16, 0x90
	.type	WrapChar,@function
WrapChar:                               # @WrapChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp223:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	xorl	%r11d, %r11d
	movl	$256, %ebx              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	4(%rdi), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movq	-16(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	cmovnel	%ebx, %r11d
	orl	%r11d, %eax
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB73_2
.LBB73_2:                               # %do.end
	jmp	.LBB73_3
.LBB73_3:                               # %do.body.3
	jmp	.LBB73_4
.LBB73_4:                               # %do.end.4
	jmp	.LBB73_5
.LBB73_5:                               # %do.body.5
	jmp	.LBB73_6
.LBB73_6:                               # %do.end.6
	jmp	.LBB73_7
.LBB73_7:                               # %do.body.7
	jmp	.LBB73_8
.LBB73_8:                               # %do.end.8
	jmp	.LBB73_9
.LBB73_9:                               # %do.body.9
	jmp	.LBB73_10
.LBB73_10:                              # %do.end.10
	cmpl	$0, -28(%rbp)
	jne	.LBB73_13
# BB#11:                                # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	display, %rcx
	cmpl	444(%rcx), %eax
	jne	.LBB73_13
# BB#12:                                # %lor.lhs.false.14
	movq	display, %rax
	cmpl	$0, 6104(%rax)
	jne	.LBB73_22
.LBB73_13:                              # %if.then
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB73_15
# BB#14:                                # %if.then.18
	movl	$1, %r8d
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r9d
	callq	ScrollV
	jmp	.LBB73_18
.LBB73_15:                              # %if.else
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB73_17
# BB#16:                                # %if.then.21
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB73_17:                              # %if.end
	jmp	.LBB73_18
.LBB73_18:                              # %if.end.22
	cmpl	$0, -44(%rbp)
	je	.LBB73_20
# BB#19:                                # %if.then.24
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	InsChar
	jmp	.LBB73_21
.LBB73_20:                              # %if.else.25
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	PutChar
.LBB73_21:                              # %if.end.26
	jmp	.LBB73_71
.LBB73_22:                              # %if.end.27
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB73_33
# BB#23:                                # %if.then.30
	jmp	.LBB73_24
.LBB73_24:                              # %do.body.31
	jmp	.LBB73_25
.LBB73_25:                              # %do.end.32
	movl	-32(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	ChangeScrollRegion
	movq	display, %rax
	movl	464(%rax), %esi
	cmpl	-24(%rbp), %esi
	jne	.LBB73_29
# BB#26:                                # %lor.lhs.false.35
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jne	.LBB73_29
# BB#27:                                # %lor.lhs.false.39
	cmpl	$0, -48(%rbp)
	jne	.LBB73_32
# BB#28:                                # %land.lhs.true
	movq	display, %rax
	cmpl	$0, 5968(%rax)
	jne	.LBB73_32
.LBB73_29:                              # %if.then.45
	jmp	.LBB73_30
.LBB73_30:                              # %do.body.46
	jmp	.LBB73_31
.LBB73_31:                              # %do.end.47
	movl	$1, %r8d
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r9d
	callq	ScrollV
	movl	-24(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
.LBB73_32:                              # %if.end.48
	jmp	.LBB73_36
.LBB73_33:                              # %if.else.49
	movl	-24(%rbp), %eax
	movq	display, %rcx
	cmpl	464(%rcx), %eax
	jne	.LBB73_35
# BB#34:                                # %if.then.53
	xorl	%edi, %edi
	movq	display, %rax
	movl	448(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	ChangeScrollRegion
.LBB73_35:                              # %if.end.56
	jmp	.LBB73_36
.LBB73_36:                              # %if.end.57
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jne	.LBB73_38
# BB#37:                                # %lor.lhs.false.62
	movq	display, %rax
	movl	472(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	je	.LBB73_53
.LBB73_38:                              # %if.then.65
	movq	display, %rax
	cmpl	$0, 6136(%rax)
	je	.LBB73_41
# BB#39:                                # %land.lhs.true.70
	cmpl	$0, -24(%rbp)
	jl	.LBB73_41
# BB#40:                                # %if.then.73
	xorl	%ecx, %ecx
	movl	-24(%rbp), %edi
	movq	display, %rax
	movl	444(%rax), %edx
	subl	$1, %edx
	movq	display, %rax
	movl	444(%rax), %esi
	subl	$1, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	RefreshLine
.LBB73_41:                              # %if.end.78
	jmp	.LBB73_42
.LBB73_42:                              # %do.body.79
	jmp	.LBB73_43
.LBB73_43:                              # %do.end.80
	movq	display, %rax
	movl	468(%rax), %ecx
	movq	display, %rax
	cmpl	444(%rax), %ecx
	jne	.LBB73_45
# BB#44:                                # %lor.lhs.false.85
	movq	display, %rax
	movl	472(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	je	.LBB73_52
.LBB73_45:                              # %if.then.89
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB73_47
# BB#46:                                # %if.then.92
	movl	$1, %r8d
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r9d
	callq	ScrollV
.LBB73_47:                              # %if.end.93
	movl	-28(%rbp), %edi
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	movl	%edi, -56(%rbp)         # 4-byte Spill
	je	.LBB73_49
# BB#48:                                # %lor.lhs.false.96
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB73_50
.LBB73_49:                              # %cond.true
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB73_51
.LBB73_50:                              # %cond.false
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB73_51:                              # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-56(%rbp), %edi         # 4-byte Reload
	movl	%eax, %esi
	callq	GotoPos
.LBB73_52:                              # %if.end.102
	jmp	.LBB73_53
.LBB73_53:                              # %if.end.103
	jmp	.LBB73_54
.LBB73_54:                              # %do.body.104
	jmp	.LBB73_55
.LBB73_55:                              # %do.end.105
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB73_58
# BB#56:                                # %land.lhs.true.108
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	448(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB73_58
# BB#57:                                # %if.then.113
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB73_58:                              # %if.end.115
	movl	-44(%rbp), %eax
	movq	display, %rcx
	cmpl	508(%rcx), %eax
	je	.LBB73_60
# BB#59:                                # %if.then.118
	movl	-44(%rbp), %edi
	callq	InsertMode
.LBB73_60:                              # %if.end.119
	cmpl	$0, -44(%rbp)
	je	.LBB73_65
# BB#61:                                # %land.lhs.true.121
	movq	display, %rax
	cmpl	$0, 508(%rax)
	jne	.LBB73_65
# BB#62:                                # %if.then.124
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	InsChar
# BB#63:                                # %do.body.125
	jmp	.LBB73_64
.LBB73_64:                              # %do.end.126
	jmp	.LBB73_71
.LBB73_65:                              # %if.end.127
	movl	-24(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 472(%rcx)
	movq	display, %rcx
	movl	$0, 468(%rcx)
	movq	-16(%rbp), %rdi
	callq	SetRendition
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edi
	callq	RAW_PUTCHAR
	movq	-16(%rbp), %rcx
	cmpb	$0, 5(%rcx)
	je	.LBB73_69
# BB#66:                                # %if.then.132
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB73_68
# BB#67:                                # %if.then.135
	movq	display, %rax
	movb	$0, 478(%rax)
.LBB73_68:                              # %if.end.136
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	RAW_PUTCHAR
.LBB73_69:                              # %if.end.139
	jmp	.LBB73_70
.LBB73_70:                              # %do.body.140
	jmp	.LBB73_71
.LBB73_71:                              # %do.end.141
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end73:
	.size	WrapChar, .Lfunc_end73-WrapChar
	.cfi_endproc

	.globl	DisplaySleep1000
	.align	16, 0x90
	.type	DisplaySleep1000,@function
DisplaySleep1000:                       # @DisplaySleep1000
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB74_2
# BB#1:                                 # %if.then
	jmp	.LBB74_16
.LBB74_2:                               # %if.end
	cmpq	$0, display
	jne	.LBB74_6
# BB#3:                                 # %if.then.1
	jmp	.LBB74_4
.LBB74_4:                               # %do.body
	jmp	.LBB74_5
.LBB74_5:                               # %do.end
	movl	-4(%rbp), %edi
	callq	sleep1000
	jmp	.LBB74_16
.LBB74_6:                               # %if.end.2
	movl	$1000, %eax             # imm = 0x3E8
	movl	-4(%rbp), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-172(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	imull	$1000, %edx, %edx       # imm = 0x3E8
	movslq	%edx, %rsi
	movq	%rsi, -152(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rsi
	movq	%rsi, -160(%rbp)
# BB#7:                                 # %do.body.4
	leaq	-144(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	%edi, %eax
	movl	%eax, -168(%rbp)
# BB#8:                                 # %do.end.6
	movl	$1024, %edi             # imm = 0x400
	leaq	-144(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-160(%rbp), %r8
	movl	$64, %eax
	movl	$1, %edx
	movl	%edx, %r9d
	movq	display, %r10
	movl	4900(%r10), %edx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-188(%rbp), %r11d       # 4-byte Reload
	idivl	%r11d
	movl	%edx, %edx
	movl	%edx, %r10d
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %r9
	movq	display, %r10
	movl	4900(%r10), %edx
	movl	%edx, %eax
	cltd
	idivl	%r11d
	movslq	%eax, %r10
	orq	-144(%rbp,%r10,8), %r9
	movq	%r9, -144(%rbp,%r10,8)
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%r9, %rdx
	movq	%r9, %rcx
	callq	select
	cmpl	$0, %eax
	jle	.LBB74_14
# BB#9:                                 # %if.then.14
	jmp	.LBB74_10
.LBB74_10:                              # %do.body.15
	jmp	.LBB74_11
.LBB74_11:                              # %do.end.16
	cmpl	$0, -8(%rbp)
	je	.LBB74_13
# BB#12:                                # %if.then.18
	leaq	-9(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	display, %rcx
	movl	4900(%rcx), %edi
	callq	read
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB74_13:                              # %if.end.21
	jmp	.LBB74_14
.LBB74_14:                              # %if.end.22
	jmp	.LBB74_15
.LBB74_15:                              # %do.body.23
	jmp	.LBB74_16
.LBB74_16:                              # %do.end.24
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	DisplaySleep1000, .Lfunc_end74-DisplaySleep1000
	.cfi_endproc

	.globl	ResetIdle
	.align	16, 0x90
	.type	ResetIdle,@function
ResetIdle:                              # @ResetIdle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	cmpl	$0, idletimo
	jle	.LBB75_4
# BB#1:                                 # %if.then
	movq	display, %rax
	addq	$7824, %rax             # imm = 0x1E90
	movl	idletimo, %esi
	movq	%rax, %rdi
	callq	SetTimeout
	movq	display, %rax
	cmpl	$0, 7880(%rax)
	jne	.LBB75_3
# BB#2:                                 # %if.then.2
	movq	display, %rax
	addq	$7824, %rax             # imm = 0x1E90
	movq	%rax, %rdi
	callq	evenq
.LBB75_3:                               # %if.end
	jmp	.LBB75_5
.LBB75_4:                               # %if.else
	movq	display, %rax
	addq	$7824, %rax             # imm = 0x1E90
	movq	%rax, %rdi
	callq	evdeq
.LBB75_5:                               # %if.end.5
	popq	%rbp
	retq
.Lfunc_end75:
	.size	ResetIdle, .Lfunc_end75-ResetIdle
	.cfi_endproc

	.globl	RunBlanker
	.align	16, 0x90
	.type	RunBlanker,@function
RunBlanker:                             # @RunBlanker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp233:
	.cfi_offset %rbx, -24
	movl	$26, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	strcpy
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$5, %rcx
	movq	display, %rdx
	addq	$396, %rdx              # imm = 0x18C
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	strncpy
	movb	$0, -43(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	KillBlanker
	leaq	-24(%rbp), %rdi
	movq	display, %rax
	movl	$-1, 7904(%rax)
	callq	OpenPTY
	movq	display, %rcx
	movl	%eax, 7936(%rcx)
	cmpl	$-1, %eax
	jne	.LBB76_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.14, %rsi
	movb	$0, %al
	callq	Msg
	jmp	.LBB76_18
.LBB76_2:                               # %if.end
	cmpl	$0, pty_preopen
	je	.LBB76_6
# BB#3:                                 # %if.then.5
	movl	$258, %esi              # imm = 0x102
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -32(%rbp)
	cmpl	$-1, %eax
	jne	.LBB76_5
# BB#4:                                 # %if.then.8
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	Msg
	movq	display, %rdx
	movl	7936(%rdx), %edi
	callq	close
	movq	display, %rdx
	movl	$-1, 7936(%rdx)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB76_18
.LBB76_5:                               # %if.end.15
	jmp	.LBB76_6
.LBB76_6:                               # %if.end.16
	callq	fork
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB76_7
	jmp	.LBB76_19
.LBB76_19:                              # %if.end.16
	movl	-128(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	je	.LBB76_8
	jmp	.LBB76_16
.LBB76_7:                               # %sw.bb
	callq	__errno_location
	movabsq	$.L.str.15, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Msg
	movq	display, %rsi
	movl	7936(%rsi), %edi
	callq	close
	movq	display, %rsi
	movl	$-1, 7936(%rsi)
	movl	-32(%rbp), %edi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	close
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB76_18
.LBB76_8:                               # %sw.bb.25
	movq	$0, displays
	movl	real_gid, %edi
	callq	setgid
	cmpl	$0, %eax
	jne	.LBB76_10
# BB#9:                                 # %lor.lhs.false
	movl	real_uid, %edi
	callq	setuid
	cmpl	$0, %eax
	je	.LBB76_11
.LBB76_10:                              # %if.then.30
	callq	__errno_location
	movabsq	$.L.str.16, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB76_11:                              # %if.end.32
	movq	display, %rax
	movl	4900(%rax), %edi
	callq	brktty
	callq	freetty
	xorl	%edi, %edi
	callq	close
	movl	$1, %edi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	close
	movl	$2, %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	close
	movl	-32(%rbp), %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	closeallfiles
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	cmpl	$0, %eax
	je	.LBB76_13
# BB#12:                                # %if.then.38
	callq	__errno_location
	movabsq	$.L.str.17, %rsi
	movl	(%rax), %edi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	Panic
.LBB76_13:                              # %if.end.40
	xorl	%edi, %edi
	callq	dup
	xorl	%edi, %edi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	dup
	cmpl	$-1, -32(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB76_15
# BB#14:                                # %if.then.44
	movl	-32(%rbp), %edi
	callq	close
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB76_15:                              # %if.end.46
	xorl	%edi, %edi
	callq	InitPTY
	xorl	%edi, %edi
	callq	fgtty
	xorl	%edi, %edi
	movq	display, %rcx
	addq	$5144, %rcx             # imm = 0x1418
	movq	%rcx, %rsi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	SetTTY
	xorl	%edi, %edi
	movl	$21524, %eax            # imm = 0x5414
	movl	%eax, %esi
	movabsq	$glwz, %rcx
	leaq	-80(%rbp), %rdx
	movq	NewEnv, %r8
	addq	$24, %r8
	movq	%r8, -88(%rbp)
	movq	NewEnv, %r8
	movq	(%r8), %r8
	movq	-88(%rbp), %r9
	movq	%r9, %r10
	addq	$8, %r10
	movq	%r10, -88(%rbp)
	movq	%r8, (%r9)
	movq	-88(%rbp), %r8
	movq	%r8, %r9
	addq	$8, %r9
	movq	%r9, -88(%rbp)
	movq	%rdx, (%r8)
	movq	display, %rdx
	movl	444(%rdx), %eax
	movw	%ax, %r11w
	movw	%r11w, glwz+2
	movq	display, %rdx
	movl	448(%rdx), %eax
	movw	%ax, %r11w
	movw	%r11w, glwz
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	movl	$13, %edi
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	xsignal
	movq	$0, display
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movq	NewEnv, %rcx
	addq	$24, %rcx
	movq	%rcx, %rdx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	execvpe
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	__errno_location
	movabsq	$.L.str.10, %rsi
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	Panic
.LBB76_16:                              # %sw.default
	jmp	.LBB76_17
.LBB76_17:                              # %sw.epilog
	movl	-28(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 7904(%rcx)
	movq	display, %rcx
	addq	$7912, %rcx             # imm = 0x1EE8
	movq	%rcx, %rdi
	callq	evenq
	movq	display, %rcx
	movl	$4, 7812(%rcx)
	callq	ClearAll
	movl	-32(%rbp), %edi
	callq	close
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB76_18:                              # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end76:
	.size	RunBlanker, .Lfunc_end76-RunBlanker
	.cfi_endproc

	.align	16, 0x90
	.type	disp_writeev_eagain,@function
disp_writeev_eagain:                    # @disp_writeev_eagain
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, display
	movq	display, %rsi
	addq	$4984, %rsi             # imm = 0x1378
	movq	%rsi, %rdi
	callq	evdeq
	movabsq	$disp_writeev_fn, %rsi
	movq	display, %rdi
	movl	$2, 5012(%rdi)
	movq	display, %rdi
	movq	%rsi, 4992(%rdi)
	movq	display, %rsi
	addq	$4984, %rsi             # imm = 0x1378
	movq	%rsi, %rdi
	callq	evenq
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	disp_writeev_eagain, .Lfunc_end77-disp_writeev_eagain
	.cfi_endproc

	.type	defobuflimit,@object    # @defobuflimit
	.data
	.globl	defobuflimit
	.align	4
defobuflimit:
	.long	256                     # 0x100
	.size	defobuflimit, 4

	.type	defnonblock,@object     # @defnonblock
	.globl	defnonblock
	.align	4
defnonblock:
	.long	4294967295              # 0xffffffff
	.size	defnonblock, 4

	.type	defmousetrack,@object   # @defmousetrack
	.bss
	.globl	defmousetrack
	.align	4
defmousetrack:
	.long	0                       # 0x0
	.size	defmousetrack, 4

	.type	defautonuke,@object     # @defautonuke
	.globl	defautonuke
	.align	4
defautonuke:
	.long	0                       # 0x0
	.size	defautonuke, 4

	.type	hardstatusemu,@object   # @hardstatusemu
	.globl	hardstatusemu
	.align	4
hardstatusemu:
	.long	0                       # 0x0
	.size	hardstatusemu, 4

	.type	display,@object         # @display
	.comm	display,8,8
	.type	displays,@object        # @displays
	.comm	displays,8,8
	.type	BlankLf,@object         # @BlankLf
	.data
	.globl	BlankLf
	.align	8
BlankLf:
	.quad	DefProcess
	.quad	0
	.quad	DefRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	BlankResize
	.quad	DefRestore
	.quad	0
	.size	BlankLf, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[?%dl"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\033[?%dh"
	.size	.L.str.1, 7

	.type	StrCost,@object         # @StrCost
	.local	StrCost
	.comm	StrCost,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\033$"
	.size	.L.str.2, 3

	.type	SetColor.sftrans,@object # @SetColor.sftrans
	.data
SetColor.sftrans:
	.ascii	"\000\004\002\006\001\005\003\007"
	.size	SetColor.sftrans, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\033[m"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033[39m"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033[49m"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033[9%p1%dm"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033[10%p1%dm"
	.size	.L.str.7, 11

	.type	nattr2color,@object     # @nattr2color
	.comm	nattr2color,4,4
	.type	SetRendition.mmc,@object # @SetRendition.mmc
	.local	SetRendition.mmc
	.comm	SetRendition.mmc,6,1
	.type	attr2color,@object      # @attr2color
	.comm	attr2color,128,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\r\n"
	.size	.L.str.8, 3

	.type	captionalways,@object   # @captionalways
	.comm	captionalways,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Out of memory"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033[m\033[m"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"TERM="
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OpenPty failed"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"fork"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"setuid/setgid"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Cannot open %s"
	.size	.L.str.17, 15

	.type	focusminwidth,@object   # @focusminwidth
	.comm	focusminwidth,4,4
	.type	focusminheight,@object  # @focusminheight
	.comm	focusminheight,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Error writing output to display"
	.size	.L.str.18, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
