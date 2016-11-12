	.text
	.file	"list_display.bc"
	.globl	display_displays
	.align	16, 0x90
	.type	display_displays,@function
display_displays:                       # @display_displays
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
	movq	flayer, %rax
	cmpl	$10, 8(%rax)
	jl	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	flayer, %rax
	cmpl	$5, 12(%rax)
	jge	.LBB0_3
.LBB0_2:                                # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB0_6
.LBB0_3:                                # %if.end
	movabsq	$gl_Display, %rdi
	movabsq	$ListID, %rsi
	callq	glist_display
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_5
# BB#4:                                 # %if.then.2
	jmp	.LBB0_6
.LBB0_5:                                # %if.end.3
	movq	-8(%rbp), %rdi
	callq	gl_Display_rebuild
.LBB0_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	display_displays, .Lfunc_end0-display_displays
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_rebuild,@function
gl_Display_rebuild:                     # @gl_Display_rebuild
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
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	displays, %rdi
	movq	%rdi, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	glist_add_row
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	display, %rax
	jne	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	glist_display_all
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gl_Display_rebuild, .Lfunc_end1-gl_Display_rebuild
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_header,@function
gl_Display_header:                      # @gl_Display_header
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
	movabsq	$.L.str.1, %rax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	leftline
	movabsq	$.L.str.2, %rdi
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	callq	leftline
	movl	$2, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gl_Display_header, .Lfunc_end2-gl_Display_header
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_footer,@function
gl_Display_footer:                      # @gl_Display_footer
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
	movabsq	$.L.str.3, %rax
	movq	%rdi, -8(%rbp)
	movq	flayer, %rdi
	movl	12(%rdi), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	centerline
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gl_Display_footer, .Lfunc_end3-gl_Display_footer
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_row,@function
gl_Display_row:                         # @gl_Display_row
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp15:
	.cfi_offset %rbx, -24
	leaq	-112(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	%rsi, -120(%rbp)
	movl	mchar_blank, %ecx
	movl	%ecx, -128(%rbp)
	movw	mchar_blank+4, %dx
	movw	%dx, -124(%rbp)
	movb	$4, -127(%rbp)
	movq	-32(%rbp), %rsi
	addq	$396, %rsi              # imm = 0x18C
	movq	-32(%rbp), %rdi
	movl	444(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	448(%rdi), %r8d
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$8, %rdi
	movq	-32(%rbp), %r9
	addq	$804, %r9               # imm = 0x324
	movq	-32(%rbp), %r10
	cmpl	$0, 7812(%r10)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r9, -176(%rbp)         # 8-byte Spill
	jne	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, 392(%rax)
	jl	.LBB4_4
.LBB4_2:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$4, 7812(%rax)
	jg	.LBB4_4
# BB#3:                                 # %cond.true
	movq	-32(%rbp), %rax
	movslq	7812(%rax), %rax
	movq	gl_Display_row.blockstates(,%rax,8), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movabsq	$.L.str.10, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB4_5
.LBB4_5:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.9, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-160(%rbp), %r8d        # 4-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	sprintf
	cmpq	$0, -120(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB4_20
# BB#6:                                 # %if.then
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	8736(%rdx), %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	movl	%ecx, %esi
	movl	%esi, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jge	.LBB4_8
# BB#7:                                 # %if.then.11
	movl	$0, -132(%rbp)
.LBB4_8:                                # %if.end
	movl	$2, %esi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-216(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	-120(%rbp), %rax
	movl	192(%rax), %edx
	movq	-120(%rbp), %rax
	movq	8736(%rax), %rcx
	movl	-132(%rbp), %r8d
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %r9
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movl	%r8d, -232(%rbp)        # 4-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB4_10
# BB#9:                                 # %cond.true.19
	movl	$45, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB4_13
.LBB4_10:                               # %cond.false.20
	movb	$1, %al
	movq	-120(%rbp), %rcx
	cmpl	$0, 9800(%rcx)
	movb	%al, -245(%rbp)         # 1-byte Spill
	je	.LBB4_12
# BB#11:                                # %lor.rhs
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rcx
	cmpq	9808(%rcx), %rax
	sete	%dl
	movb	%dl, -245(%rbp)         # 1-byte Spill
.LBB4_12:                               # %lor.end
	movb	-245(%rbp), %al         # 1-byte Reload
	movl	$82, %ecx
	movl	$114, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
.LBB4_13:                               # %cond.end.27
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-120(%rbp), %rdx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	AclCheckPermWin
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %cond.true.32
	movl	$45, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_19
.LBB4_15:                               # %cond.false.33
	movq	-120(%rbp), %rax
	cmpl	$0, 9800(%rax)
	jne	.LBB4_17
# BB#16:                                # %cond.true.37
	movl	$119, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.38
	movl	$118, %eax
	movl	$87, %ecx
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-120(%rbp), %rsi
	cmpq	9808(%rsi), %rdx
	cmovel	%ecx, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_18:                               # %cond.end.44
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB4_19:                               # %cond.end.46
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$2, %esi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-120(%rbp), %rdx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	AclCheckPermWin
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %r9
	movl	$32, %r8d
	movl	$120, %r10d
	movl	$45, %r11d
	cmpl	$0, %eax
	cmovnel	%r11d, %r10d
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-228(%rbp), %edx        # 4-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	$32, (%rsp)
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	-264(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 16(%rsp)
	movl	%r10d, 24(%rsp)
	movb	$0, %al
	callq	sprintf
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB4_20:                               # %if.end.53
	leaq	-112(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	24(%rax), %esi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movl	%esi, -284(%rbp)        # 4-byte Spill
	jne	.LBB4_22
# BB#21:                                # %cond.true.57
	movabsq	$mchar_so, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB4_26
.LBB4_22:                               # %cond.false.58
	movq	-32(%rbp), %rax
	cmpq	display, %rax
	jne	.LBB4_24
# BB#23:                                # %cond.true.61
	leaq	-128(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_25:                               # %cond.end.63
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB4_26:                               # %cond.end.65
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	leftline
	movl	$1, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gl_Display_row, .Lfunc_end4-gl_Display_row
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_input,@function
gl_Display_input:                       # @gl_Display_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	display, %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -41(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	incq	%rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	decl	%esi
	movl	%esi, (%rax)
	movzbl	-41(%rbp), %esi
	movl	%esi, %edi
	subl	$10, %edi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%edi, -52(%rbp)         # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_11
.LBB5_11:                               # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_12
.LBB5_12:                               # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_13
.LBB5_13:                               # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_14
.LBB5_14:                               # %if.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_8
.LBB5_3:                                # %sw.bb
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Display_rebuild
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.1
	callq	glist_abort
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB5_9
.LBB5_5:                                # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_7
# BB#6:                                 # %if.then.5
	jmp	.LBB5_9
.LBB5_7:                                # %if.end.6
	movl	$2, %eax
	movl	$4, %ecx
	movzbl	-41(%rbp), %edx
	cmpl	$68, %edx
	cmovel	%ecx, %eax
	movl	%eax, %edi
	callq	Detach
	movq	-40(%rbp), %rsi
	movq	%rsi, display
	movq	-16(%rbp), %rdi
	callq	glist_remove_rows
	movq	-16(%rbp), %rdi
	callq	gl_Display_rebuild
	jmp	.LBB5_9
.LBB5_8:                                # %sw.default
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB5_10
.LBB5_9:                                # %sw.epilog
	movl	$1, -4(%rbp)
.LBB5_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gl_Display_input, .Lfunc_end5-gl_Display_input
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_freerow,@function
gl_Display_freerow:                     # @gl_Display_freerow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gl_Display_freerow, .Lfunc_end6-gl_Display_freerow
	.cfi_endproc

	.align	16, 0x90
	.type	gl_Display_free,@function
gl_Display_free:                        # @gl_Display_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gl_Display_free, .Lfunc_end7-gl_Display_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Window size too small for displays page"
	.size	.L.str, 40

	.type	gl_Display,@object      # @gl_Display
	.data
	.align	8
gl_Display:
	.quad	gl_Display_header
	.quad	gl_Display_footer
	.quad	gl_Display_row
	.quad	gl_Display_input
	.quad	gl_Display_freerow
	.quad	gl_Display_free
	.quad	0
	.size	gl_Display, 56

	.type	ListID,@object          # @ListID
ListID:
	.asciz	"display"
	.size	ListID, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"term-type   size         user interface           window       Perms"
	.size	.L.str.1, 69

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"---------- ------- ---------- ----------------- ----------     -----"
	.size	.L.str.2, 69

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"[Press Space to refresh; Return to end.]"
	.size	.L.str.3, 41

	.type	gl_Display_row.blockstates,@object # @gl_Display_row.blockstates
	.data
	.align	16
gl_Display_row.blockstates:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.size	gl_Display_row.blockstates, 40

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"nb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"NB"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Z<"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Z>"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"BL"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" %-10.10s%4dx%-4d%10.10s@%-16.16s%s"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"  "
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%3d(%.10s)%*s%c%c%c%c"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
