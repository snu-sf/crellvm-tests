	.text
	.file	"gsroptab.bc"
	.align	16, 0x90
	.type	rop0,@function
rop0:                                   # @rop0
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	rop0, .Lfunc_end0-rop0
	.cfi_endproc

	.align	16, 0x90
	.type	rop1,@function
rop1:                                   # @rop1
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end1:
	.size	rop1, .Lfunc_end1-rop1
	.cfi_endproc

	.align	16, 0x90
	.type	rop2,@function
rop2:                                   # @rop2
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	notq	%rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end2:
	.size	rop2, .Lfunc_end2-rop2
	.cfi_endproc

	.align	16, 0x90
	.type	rop3,@function
rop3:                                   # @rop3
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end3:
	.size	rop3, .Lfunc_end3-rop3
	.cfi_endproc

	.align	16, 0x90
	.type	rop4,@function
rop4:                                   # @rop4
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end4:
	.size	rop4, .Lfunc_end4-rop4
	.cfi_endproc

	.align	16, 0x90
	.type	rop5,@function
rop5:                                   # @rop5
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end5:
	.size	rop5, .Lfunc_end5-rop5
	.cfi_endproc

	.align	16, 0x90
	.type	rop6,@function
rop6:                                   # @rop6
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdx
	andq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end6:
	.size	rop6, .Lfunc_end6-rop6
	.cfi_endproc

	.align	16, 0x90
	.type	rop7,@function
rop7:                                   # @rop7
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end7:
	.size	rop7, .Lfunc_end7-rop7
	.cfi_endproc

	.align	16, 0x90
	.type	rop8,@function
rop8:                                   # @rop8
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end8:
	.size	rop8, .Lfunc_end8-rop8
	.cfi_endproc

	.align	16, 0x90
	.type	rop9,@function
rop9:                                   # @rop9
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end9:
	.size	rop9, .Lfunc_end9-rop9
	.cfi_endproc

	.align	16, 0x90
	.type	rop10,@function
rop10:                                  # @rop10
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end10:
	.size	rop10, .Lfunc_end10-rop10
	.cfi_endproc

	.align	16, 0x90
	.type	rop11,@function
rop11:                                  # @rop11
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end11:
	.size	rop11, .Lfunc_end11-rop11
	.cfi_endproc

	.align	16, 0x90
	.type	rop12,@function
rop12:                                  # @rop12
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end12:
	.size	rop12, .Lfunc_end12-rop12
	.cfi_endproc

	.align	16, 0x90
	.type	rop13,@function
rop13:                                  # @rop13
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdi, %rsi
	orq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end13:
	.size	rop13, .Lfunc_end13-rop13
	.cfi_endproc

	.align	16, 0x90
	.type	rop14,@function
rop14:                                  # @rop14
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdx
	andq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end14:
	.size	rop14, .Lfunc_end14-rop14
	.cfi_endproc

	.align	16, 0x90
	.type	rop15,@function
rop15:                                  # @rop15
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end15:
	.size	rop15, .Lfunc_end15-rop15
	.cfi_endproc

	.align	16, 0x90
	.type	rop16,@function
rop16:                                  # @rop16
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end16:
	.size	rop16, .Lfunc_end16-rop16
	.cfi_endproc

	.align	16, 0x90
	.type	rop17,@function
rop17:                                  # @rop17
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end17:
	.size	rop17, .Lfunc_end17-rop17
	.cfi_endproc

	.align	16, 0x90
	.type	rop18,@function
rop18:                                  # @rop18
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	notq	%rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end18:
	.size	rop18, .Lfunc_end18-rop18
	.cfi_endproc

	.align	16, 0x90
	.type	rop19,@function
rop19:                                  # @rop19
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end19:
	.size	rop19, .Lfunc_end19-rop19
	.cfi_endproc

	.align	16, 0x90
	.type	rop20,@function
rop20:                                  # @rop20
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end20:
	.size	rop20, .Lfunc_end20-rop20
	.cfi_endproc

	.align	16, 0x90
	.type	rop21,@function
rop21:                                  # @rop21
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end21:
	.size	rop21, .Lfunc_end21-rop21
	.cfi_endproc

	.align	16, 0x90
	.type	rop22,@function
rop22:                                  # @rop22
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	andq	%rsi, %rax
	notq	%rax
	andq	%rdi, %rax
	xorq	%rsi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end22:
	.size	rop22, .Lfunc_end22-rop22
	.cfi_endproc

	.align	16, 0x90
	.type	rop23,@function
rop23:                                  # @rop23
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end23:
	.size	rop23, .Lfunc_end23-rop23
	.cfi_endproc

	.align	16, 0x90
	.type	rop24,@function
rop24:                                  # @rop24
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	xorq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end24:
	.size	rop24, .Lfunc_end24-rop24
	.cfi_endproc

	.align	16, 0x90
	.type	rop25,@function
rop25:                                  # @rop25
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdx
	notq	%rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end25:
	.size	rop25, .Lfunc_end25-rop25
	.cfi_endproc

	.align	16, 0x90
	.type	rop26,@function
rop26:                                  # @rop26
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end26:
	.size	rop26, .Lfunc_end26-rop26
	.cfi_endproc

	.align	16, 0x90
	.type	rop27,@function
rop27:                                  # @rop27
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end27:
	.size	rop27, .Lfunc_end27-rop27
	.cfi_endproc

	.align	16, 0x90
	.type	rop28,@function
rop28:                                  # @rop28
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end28:
	.size	rop28, .Lfunc_end28-rop28
	.cfi_endproc

	.align	16, 0x90
	.type	rop29,@function
rop29:                                  # @rop29
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rdx
	andq	%rsi, %rdx
	xorq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end29:
	.size	rop29, .Lfunc_end29-rop29
	.cfi_endproc

	.align	16, 0x90
	.type	rop30,@function
rop30:                                  # @rop30
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end30:
	.size	rop30, .Lfunc_end30-rop30
	.cfi_endproc

	.align	16, 0x90
	.type	rop31,@function
rop31:                                  # @rop31
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end31:
	.size	rop31, .Lfunc_end31-rop31
	.cfi_endproc

	.align	16, 0x90
	.type	rop32,@function
rop32:                                  # @rop32
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdi, %rsi
	andq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end32:
	.size	rop32, .Lfunc_end32-rop32
	.cfi_endproc

	.align	16, 0x90
	.type	rop33,@function
rop33:                                  # @rop33
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	orq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end33:
	.size	rop33, .Lfunc_end33-rop33
	.cfi_endproc

	.align	16, 0x90
	.type	rop34,@function
rop34:                                  # @rop34
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end34:
	.size	rop34, .Lfunc_end34-rop34
	.cfi_endproc

	.align	16, 0x90
	.type	rop35,@function
rop35:                                  # @rop35
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end35:
	.size	rop35, .Lfunc_end35-rop35
	.cfi_endproc

	.align	16, 0x90
	.type	rop36,@function
rop36:                                  # @rop36
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end36:
	.size	rop36, .Lfunc_end36-rop36
	.cfi_endproc

	.align	16, 0x90
	.type	rop37,@function
rop37:                                  # @rop37
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	notq	%rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end37:
	.size	rop37, .Lfunc_end37-rop37
	.cfi_endproc

	.align	16, 0x90
	.type	rop38,@function
rop38:                                  # @rop38
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end38:
	.size	rop38, .Lfunc_end38-rop38
	.cfi_endproc

	.align	16, 0x90
	.type	rop39,@function
rop39:                                  # @rop39
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	notq	%rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end39:
	.size	rop39, .Lfunc_end39-rop39
	.cfi_endproc

	.align	16, 0x90
	.type	rop40,@function
rop40:                                  # @rop40
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end40:
	.size	rop40, .Lfunc_end40-rop40
	.cfi_endproc

	.align	16, 0x90
	.type	rop41,@function
rop41:                                  # @rop41
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	xorq	%rdx, %rsi
	xorq	%rax, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end41:
	.size	rop41, .Lfunc_end41-rop41
	.cfi_endproc

	.align	16, 0x90
	.type	rop42,@function
rop42:                                  # @rop42
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	notq	%rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end42:
	.size	rop42, .Lfunc_end42-rop42
	.cfi_endproc

	.align	16, 0x90
	.type	rop43,@function
rop43:                                  # @rop43
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end43:
	.size	rop43, .Lfunc_end43-rop43
	.cfi_endproc

	.align	16, 0x90
	.type	rop44,@function
rop44:                                  # @rop44
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end44:
	.size	rop44, .Lfunc_end44-rop44
	.cfi_endproc

	.align	16, 0x90
	.type	rop45,@function
rop45:                                  # @rop45
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end45:
	.size	rop45, .Lfunc_end45-rop45
	.cfi_endproc

	.align	16, 0x90
	.type	rop46,@function
rop46:                                  # @rop46
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end46:
	.size	rop46, .Lfunc_end46-rop46
	.cfi_endproc

	.align	16, 0x90
	.type	rop47,@function
rop47:                                  # @rop47
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end47:
	.size	rop47, .Lfunc_end47-rop47
	.cfi_endproc

	.align	16, 0x90
	.type	rop48,@function
rop48:                                  # @rop48
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end48:
	.size	rop48, .Lfunc_end48-rop48
	.cfi_endproc

	.align	16, 0x90
	.type	rop49,@function
rop49:                                  # @rop49
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rdi, %rdx
	orq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end49:
	.size	rop49, .Lfunc_end49-rop49
	.cfi_endproc

	.align	16, 0x90
	.type	rop50,@function
rop50:                                  # @rop50
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end50:
	.size	rop50, .Lfunc_end50-rop50
	.cfi_endproc

	.align	16, 0x90
	.type	rop51,@function
rop51:                                  # @rop51
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end51:
	.size	rop51, .Lfunc_end51-rop51
	.cfi_endproc

	.align	16, 0x90
	.type	rop52,@function
rop52:                                  # @rop52
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end52:
	.size	rop52, .Lfunc_end52-rop52
	.cfi_endproc

	.align	16, 0x90
	.type	rop53,@function
rop53:                                  # @rop53
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end53:
	.size	rop53, .Lfunc_end53-rop53
	.cfi_endproc

	.align	16, 0x90
	.type	rop54,@function
rop54:                                  # @rop54
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end54:
	.size	rop54, .Lfunc_end54-rop54
	.cfi_endproc

	.align	16, 0x90
	.type	rop55,@function
rop55:                                  # @rop55
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end55:
	.size	rop55, .Lfunc_end55-rop55
	.cfi_endproc

	.align	16, 0x90
	.type	rop56,@function
rop56:                                  # @rop56
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end56:
	.size	rop56, .Lfunc_end56-rop56
	.cfi_endproc

	.align	16, 0x90
	.type	rop57,@function
rop57:                                  # @rop57
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end57:
	.size	rop57, .Lfunc_end57-rop57
	.cfi_endproc

	.align	16, 0x90
	.type	rop58,@function
rop58:                                  # @rop58
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end58:
	.size	rop58, .Lfunc_end58-rop58
	.cfi_endproc

	.align	16, 0x90
	.type	rop59,@function
rop59:                                  # @rop59
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end59:
	.size	rop59, .Lfunc_end59-rop59
	.cfi_endproc

	.align	16, 0x90
	.type	rop60,@function
rop60:                                  # @rop60
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end60:
	.size	rop60, .Lfunc_end60-rop60
	.cfi_endproc

	.align	16, 0x90
	.type	rop61,@function
rop61:                                  # @rop61
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end61:
	.size	rop61, .Lfunc_end61-rop61
	.cfi_endproc

	.align	16, 0x90
	.type	rop62,@function
rop62:                                  # @rop62
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	notq	%rax
	andq	%rdi, %rax
	orq	%rdx, %rax
	xorq	%rsi, %rax
	retq
.Lfunc_end62:
	.size	rop62, .Lfunc_end62-rop62
	.cfi_endproc

	.align	16, 0x90
	.type	rop63,@function
rop63:                                  # @rop63
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end63:
	.size	rop63, .Lfunc_end63-rop63
	.cfi_endproc

	.align	16, 0x90
	.type	rop64,@function
rop64:                                  # @rop64
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end64:
	.size	rop64, .Lfunc_end64-rop64
	.cfi_endproc

	.align	16, 0x90
	.type	rop65,@function
rop65:                                  # @rop65
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	orq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end65:
	.size	rop65, .Lfunc_end65-rop65
	.cfi_endproc

	.align	16, 0x90
	.type	rop66,@function
rop66:                                  # @rop66
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rsi
	xorq	%rdi, %rdx
	andq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end66:
	.size	rop66, .Lfunc_end66-rop66
	.cfi_endproc

	.align	16, 0x90
	.type	rop67,@function
rop67:                                  # @rop67
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end67:
	.size	rop67, .Lfunc_end67-rop67
	.cfi_endproc

	.align	16, 0x90
	.type	rop68,@function
rop68:                                  # @rop68
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end68:
	.size	rop68, .Lfunc_end68-rop68
	.cfi_endproc

	.align	16, 0x90
	.type	rop69,@function
rop69:                                  # @rop69
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end69:
	.size	rop69, .Lfunc_end69-rop69
	.cfi_endproc

	.align	16, 0x90
	.type	rop70,@function
rop70:                                  # @rop70
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdi, %rdx
	orq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end70:
	.size	rop70, .Lfunc_end70-rop70
	.cfi_endproc

	.align	16, 0x90
	.type	rop71,@function
rop71:                                  # @rop71
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end71:
	.size	rop71, .Lfunc_end71-rop71
	.cfi_endproc

	.align	16, 0x90
	.type	rop72,@function
rop72:                                  # @rop72
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end72:
	.size	rop72, .Lfunc_end72-rop72
	.cfi_endproc

	.align	16, 0x90
	.type	rop73,@function
rop73:                                  # @rop73
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	andq	%rdi, %rax
	orq	%rsi, %rax
	xorq	%rdx, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end73:
	.size	rop73, .Lfunc_end73-rop73
	.cfi_endproc

	.align	16, 0x90
	.type	rop74,@function
rop74:                                  # @rop74
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdi, %rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end74:
	.size	rop74, .Lfunc_end74-rop74
	.cfi_endproc

	.align	16, 0x90
	.type	rop75,@function
rop75:                                  # @rop75
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end75:
	.size	rop75, .Lfunc_end75-rop75
	.cfi_endproc

	.align	16, 0x90
	.type	rop76,@function
rop76:                                  # @rop76
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end76:
	.size	rop76, .Lfunc_end76-rop76
	.cfi_endproc

	.align	16, 0x90
	.type	rop77,@function
rop77:                                  # @rop77
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end77:
	.size	rop77, .Lfunc_end77-rop77
	.cfi_endproc

	.align	16, 0x90
	.type	rop78,@function
rop78:                                  # @rop78
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end78:
	.size	rop78, .Lfunc_end78-rop78
	.cfi_endproc

	.align	16, 0x90
	.type	rop79,@function
rop79:                                  # @rop79
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdi, %rsi
	andq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end79:
	.size	rop79, .Lfunc_end79-rop79
	.cfi_endproc

	.align	16, 0x90
	.type	rop80,@function
rop80:                                  # @rop80
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end80:
	.size	rop80, .Lfunc_end80-rop80
	.cfi_endproc

	.align	16, 0x90
	.type	rop81,@function
rop81:                                  # @rop81
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rsi, %rdx
	orq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end81:
	.size	rop81, .Lfunc_end81-rop81
	.cfi_endproc

	.align	16, 0x90
	.type	rop82,@function
rop82:                                  # @rop82
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdi, %rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end82:
	.size	rop82, .Lfunc_end82-rop82
	.cfi_endproc

	.align	16, 0x90
	.type	rop83,@function
rop83:                                  # @rop83
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end83:
	.size	rop83, .Lfunc_end83-rop83
	.cfi_endproc

	.align	16, 0x90
	.type	rop84,@function
rop84:                                  # @rop84
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end84:
	.size	rop84, .Lfunc_end84-rop84
	.cfi_endproc

	.align	16, 0x90
	.type	rop85,@function
rop85:                                  # @rop85
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end85:
	.size	rop85, .Lfunc_end85-rop85
	.cfi_endproc

	.align	16, 0x90
	.type	rop86,@function
rop86:                                  # @rop86
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end86:
	.size	rop86, .Lfunc_end86-rop86
	.cfi_endproc

	.align	16, 0x90
	.type	rop87,@function
rop87:                                  # @rop87
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end87:
	.size	rop87, .Lfunc_end87-rop87
	.cfi_endproc

	.align	16, 0x90
	.type	rop88,@function
rop88:                                  # @rop88
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end88:
	.size	rop88, .Lfunc_end88-rop88
	.cfi_endproc

	.align	16, 0x90
	.type	rop89,@function
rop89:                                  # @rop89
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end89:
	.size	rop89, .Lfunc_end89-rop89
	.cfi_endproc

	.align	16, 0x90
	.type	rop90,@function
rop90:                                  # @rop90
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end90:
	.size	rop90, .Lfunc_end90-rop90
	.cfi_endproc

	.align	16, 0x90
	.type	rop91,@function
rop91:                                  # @rop91
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdi, %rsi
	notq	%rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end91:
	.size	rop91, .Lfunc_end91-rop91
	.cfi_endproc

	.align	16, 0x90
	.type	rop92,@function
rop92:                                  # @rop92
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end92:
	.size	rop92, .Lfunc_end92-rop92
	.cfi_endproc

	.align	16, 0x90
	.type	rop93,@function
rop93:                                  # @rop93
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end93:
	.size	rop93, .Lfunc_end93-rop93
	.cfi_endproc

	.align	16, 0x90
	.type	rop94,@function
rop94:                                  # @rop94
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	notq	%rax
	andq	%rsi, %rax
	orq	%rdx, %rax
	xorq	%rdi, %rax
	retq
.Lfunc_end94:
	.size	rop94, .Lfunc_end94-rop94
	.cfi_endproc

	.align	16, 0x90
	.type	rop95,@function
rop95:                                  # @rop95
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end95:
	.size	rop95, .Lfunc_end95-rop95
	.cfi_endproc

	.align	16, 0x90
	.type	rop96,@function
rop96:                                  # @rop96
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end96:
	.size	rop96, .Lfunc_end96-rop96
	.cfi_endproc

	.align	16, 0x90
	.type	rop97,@function
rop97:                                  # @rop97
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	andq	%rdi, %rax
	orq	%rdx, %rax
	xorq	%rsi, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end97:
	.size	rop97, .Lfunc_end97-rop97
	.cfi_endproc

	.align	16, 0x90
	.type	rop98,@function
rop98:                                  # @rop98
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdi, %rdx
	andq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end98:
	.size	rop98, .Lfunc_end98-rop98
	.cfi_endproc

	.align	16, 0x90
	.type	rop99,@function
rop99:                                  # @rop99
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end99:
	.size	rop99, .Lfunc_end99-rop99
	.cfi_endproc

	.align	16, 0x90
	.type	rop100,@function
rop100:                                 # @rop100
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end100:
	.size	rop100, .Lfunc_end100-rop100
	.cfi_endproc

	.align	16, 0x90
	.type	rop101,@function
rop101:                                 # @rop101
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end101:
	.size	rop101, .Lfunc_end101-rop101
	.cfi_endproc

	.align	16, 0x90
	.type	rop102,@function
rop102:                                 # @rop102
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end102:
	.size	rop102, .Lfunc_end102-rop102
	.cfi_endproc

	.align	16, 0x90
	.type	rop103,@function
rop103:                                 # @rop103
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdx
	notq	%rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end103:
	.size	rop103, .Lfunc_end103-rop103
	.cfi_endproc

	.align	16, 0x90
	.type	rop104,@function
rop104:                                 # @rop104
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	orq	%rdi, %rax
	notq	%rax
	orq	%rdx, %rax
	xorq	%rsi, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end104:
	.size	rop104, .Lfunc_end104-rop104
	.cfi_endproc

	.align	16, 0x90
	.type	rop105,@function
rop105:                                 # @rop105
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end105:
	.size	rop105, .Lfunc_end105-rop105
	.cfi_endproc

	.align	16, 0x90
	.type	rop106,@function
rop106:                                 # @rop106
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end106:
	.size	rop106, .Lfunc_end106-rop106
	.cfi_endproc

	.align	16, 0x90
	.type	rop107,@function
rop107:                                 # @rop107
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	orq	%rsi, %rax
	andq	%rdi, %rax
	xorq	%rdx, %rsi
	xorq	%rax, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end107:
	.size	rop107, .Lfunc_end107-rop107
	.cfi_endproc

	.align	16, 0x90
	.type	rop108,@function
rop108:                                 # @rop108
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end108:
	.size	rop108, .Lfunc_end108-rop108
	.cfi_endproc

	.align	16, 0x90
	.type	rop109,@function
rop109:                                 # @rop109
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	orq	%rdi, %rax
	andq	%rsi, %rax
	xorq	%rdx, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end109:
	.size	rop109, .Lfunc_end109-rop109
	.cfi_endproc

	.align	16, 0x90
	.type	rop110,@function
rop110:                                 # @rop110
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	notq	%rax
	orq	%rdx, %rax
	andq	%rdi, %rax
	xorq	%rsi, %rax
	retq
.Lfunc_end110:
	.size	rop110, .Lfunc_end110-rop110
	.cfi_endproc

	.align	16, 0x90
	.type	rop111,@function
rop111:                                 # @rop111
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdx
	orq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end111:
	.size	rop111, .Lfunc_end111-rop111
	.cfi_endproc

	.align	16, 0x90
	.type	rop112,@function
rop112:                                 # @rop112
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end112:
	.size	rop112, .Lfunc_end112-rop112
	.cfi_endproc

	.align	16, 0x90
	.type	rop113,@function
rop113:                                 # @rop113
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorq	%rdi, %rax
	xorq	%rdi, %rdx
	andq	%rax, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end113:
	.size	rop113, .Lfunc_end113-rop113
	.cfi_endproc

	.align	16, 0x90
	.type	rop114,@function
rop114:                                 # @rop114
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end114:
	.size	rop114, .Lfunc_end114-rop114
	.cfi_endproc

	.align	16, 0x90
	.type	rop115,@function
rop115:                                 # @rop115
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rdi, %rdx
	andq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end115:
	.size	rop115, .Lfunc_end115-rop115
	.cfi_endproc

	.align	16, 0x90
	.type	rop116,@function
rop116:                                 # @rop116
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rdx
	orq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end116:
	.size	rop116, .Lfunc_end116-rop116
	.cfi_endproc

	.align	16, 0x90
	.type	rop117,@function
rop117:                                 # @rop117
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end117:
	.size	rop117, .Lfunc_end117-rop117
	.cfi_endproc

	.align	16, 0x90
	.type	rop118,@function
rop118:                                 # @rop118
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	notq	%rax
	andq	%rdx, %rax
	orq	%rdi, %rax
	xorq	%rsi, %rax
	retq
.Lfunc_end118:
	.size	rop118, .Lfunc_end118-rop118
	.cfi_endproc

	.align	16, 0x90
	.type	rop119,@function
rop119:                                 # @rop119
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end119:
	.size	rop119, .Lfunc_end119-rop119
	.cfi_endproc

	.align	16, 0x90
	.type	rop120,@function
rop120:                                 # @rop120
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end120:
	.size	rop120, .Lfunc_end120-rop120
	.cfi_endproc

	.align	16, 0x90
	.type	rop121,@function
rop121:                                 # @rop121
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	orq	%rdi, %rax
	andq	%rdx, %rax
	xorq	%rsi, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end121:
	.size	rop121, .Lfunc_end121-rop121
	.cfi_endproc

	.align	16, 0x90
	.type	rop122,@function
rop122:                                 # @rop122
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	notq	%rax
	orq	%rsi, %rax
	andq	%rdx, %rax
	xorq	%rdi, %rax
	retq
.Lfunc_end122:
	.size	rop122, .Lfunc_end122-rop122
	.cfi_endproc

	.align	16, 0x90
	.type	rop123,@function
rop123:                                 # @rop123
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end123:
	.size	rop123, .Lfunc_end123-rop123
	.cfi_endproc

	.align	16, 0x90
	.type	rop124,@function
rop124:                                 # @rop124
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	notq	%rax
	orq	%rdi, %rax
	andq	%rdx, %rax
	xorq	%rsi, %rax
	retq
.Lfunc_end124:
	.size	rop124, .Lfunc_end124-rop124
	.cfi_endproc

	.align	16, 0x90
	.type	rop125,@function
rop125:                                 # @rop125
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end125:
	.size	rop125, .Lfunc_end125-rop125
	.cfi_endproc

	.align	16, 0x90
	.type	rop126,@function
rop126:                                 # @rop126
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end126:
	.size	rop126, .Lfunc_end126-rop126
	.cfi_endproc

	.align	16, 0x90
	.type	rop127,@function
rop127:                                 # @rop127
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	andq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end127:
	.size	rop127, .Lfunc_end127-rop127
	.cfi_endproc

	.align	16, 0x90
	.type	rop128,@function
rop128:                                 # @rop128
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end128:
	.size	rop128, .Lfunc_end128-rop128
	.cfi_endproc

	.align	16, 0x90
	.type	rop129,@function
rop129:                                 # @rop129
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end129:
	.size	rop129, .Lfunc_end129-rop129
	.cfi_endproc

	.align	16, 0x90
	.type	rop130,@function
rop130:                                 # @rop130
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	notq	%rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end130:
	.size	rop130, .Lfunc_end130-rop130
	.cfi_endproc

	.align	16, 0x90
	.type	rop131,@function
rop131:                                 # @rop131
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end131:
	.size	rop131, .Lfunc_end131-rop131
	.cfi_endproc

	.align	16, 0x90
	.type	rop132,@function
rop132:                                 # @rop132
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	notq	%rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end132:
	.size	rop132, .Lfunc_end132-rop132
	.cfi_endproc

	.align	16, 0x90
	.type	rop133,@function
rop133:                                 # @rop133
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end133:
	.size	rop133, .Lfunc_end133-rop133
	.cfi_endproc

	.align	16, 0x90
	.type	rop134,@function
rop134:                                 # @rop134
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	orq	%rdi, %rax
	andq	%rdx, %rax
	xorq	%rdi, %rsi
	xorq	%rax, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end134:
	.size	rop134, .Lfunc_end134-rop134
	.cfi_endproc

	.align	16, 0x90
	.type	rop135,@function
rop135:                                 # @rop135
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end135:
	.size	rop135, .Lfunc_end135-rop135
	.cfi_endproc

	.align	16, 0x90
	.type	rop136,@function
rop136:                                 # @rop136
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end136:
	.size	rop136, .Lfunc_end136-rop136
	.cfi_endproc

	.align	16, 0x90
	.type	rop137,@function
rop137:                                 # @rop137
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end137:
	.size	rop137, .Lfunc_end137-rop137
	.cfi_endproc

	.align	16, 0x90
	.type	rop138,@function
rop138:                                 # @rop138
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end138:
	.size	rop138, .Lfunc_end138-rop138
	.cfi_endproc

	.align	16, 0x90
	.type	rop139,@function
rop139:                                 # @rop139
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rdx
	orq	%rsi, %rdx
	xorq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end139:
	.size	rop139, .Lfunc_end139-rop139
	.cfi_endproc

	.align	16, 0x90
	.type	rop140,@function
rop140:                                 # @rop140
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rdi, %rdx
	andq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end140:
	.size	rop140, .Lfunc_end140-rop140
	.cfi_endproc

	.align	16, 0x90
	.type	rop141,@function
rop141:                                 # @rop141
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end141:
	.size	rop141, .Lfunc_end141-rop141
	.cfi_endproc

	.align	16, 0x90
	.type	rop142,@function
rop142:                                 # @rop142
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorq	%rdi, %rax
	xorq	%rdi, %rdx
	andq	%rax, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end142:
	.size	rop142, .Lfunc_end142-rop142
	.cfi_endproc

	.align	16, 0x90
	.type	rop143,@function
rop143:                                 # @rop143
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdx
	orq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end143:
	.size	rop143, .Lfunc_end143-rop143
	.cfi_endproc

	.align	16, 0x90
	.type	rop144,@function
rop144:                                 # @rop144
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end144:
	.size	rop144, .Lfunc_end144-rop144
	.cfi_endproc

	.align	16, 0x90
	.type	rop145,@function
rop145:                                 # @rop145
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end145:
	.size	rop145, .Lfunc_end145-rop145
	.cfi_endproc

	.align	16, 0x90
	.type	rop146,@function
rop146:                                 # @rop146
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	orq	%rdi, %rax
	andq	%rsi, %rax
	xorq	%rdi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end146:
	.size	rop146, .Lfunc_end146-rop146
	.cfi_endproc

	.align	16, 0x90
	.type	rop147,@function
rop147:                                 # @rop147
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end147:
	.size	rop147, .Lfunc_end147-rop147
	.cfi_endproc

	.align	16, 0x90
	.type	rop148,@function
rop148:                                 # @rop148
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	orq	%rsi, %rax
	andq	%rdi, %rax
	xorq	%rsi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end148:
	.size	rop148, .Lfunc_end148-rop148
	.cfi_endproc

	.align	16, 0x90
	.type	rop149,@function
rop149:                                 # @rop149
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end149:
	.size	rop149, .Lfunc_end149-rop149
	.cfi_endproc

	.align	16, 0x90
	.type	rop150,@function
rop150:                                 # @rop150
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end150:
	.size	rop150, .Lfunc_end150-rop150
	.cfi_endproc

	.align	16, 0x90
	.type	rop151,@function
rop151:                                 # @rop151
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	orq	%rsi, %rax
	notq	%rax
	orq	%rdi, %rax
	xorq	%rsi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end151:
	.size	rop151, .Lfunc_end151-rop151
	.cfi_endproc

	.align	16, 0x90
	.type	rop152,@function
rop152:                                 # @rop152
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdx
	notq	%rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end152:
	.size	rop152, .Lfunc_end152-rop152
	.cfi_endproc

	.align	16, 0x90
	.type	rop153,@function
rop153:                                 # @rop153
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end153:
	.size	rop153, .Lfunc_end153-rop153
	.cfi_endproc

	.align	16, 0x90
	.type	rop154,@function
rop154:                                 # @rop154
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end154:
	.size	rop154, .Lfunc_end154-rop154
	.cfi_endproc

	.align	16, 0x90
	.type	rop155,@function
rop155:                                 # @rop155
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end155:
	.size	rop155, .Lfunc_end155-rop155
	.cfi_endproc

	.align	16, 0x90
	.type	rop156,@function
rop156:                                 # @rop156
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end156:
	.size	rop156, .Lfunc_end156-rop156
	.cfi_endproc

	.align	16, 0x90
	.type	rop157,@function
rop157:                                 # @rop157
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdi, %rdx
	andq	%rsi, %rdx
	xorq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end157:
	.size	rop157, .Lfunc_end157-rop157
	.cfi_endproc

	.align	16, 0x90
	.type	rop158,@function
rop158:                                 # @rop158
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	andq	%rdi, %rax
	orq	%rdx, %rax
	xorq	%rdi, %rsi
	xorq	%rax, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end158:
	.size	rop158, .Lfunc_end158-rop158
	.cfi_endproc

	.align	16, 0x90
	.type	rop159,@function
rop159:                                 # @rop159
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end159:
	.size	rop159, .Lfunc_end159-rop159
	.cfi_endproc

	.align	16, 0x90
	.type	rop160,@function
rop160:                                 # @rop160
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end160:
	.size	rop160, .Lfunc_end160-rop160
	.cfi_endproc

	.align	16, 0x90
	.type	rop161,@function
rop161:                                 # @rop161
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end161:
	.size	rop161, .Lfunc_end161-rop161
	.cfi_endproc

	.align	16, 0x90
	.type	rop162,@function
rop162:                                 # @rop162
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end162:
	.size	rop162, .Lfunc_end162-rop162
	.cfi_endproc

	.align	16, 0x90
	.type	rop163,@function
rop163:                                 # @rop163
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end163:
	.size	rop163, .Lfunc_end163-rop163
	.cfi_endproc

	.align	16, 0x90
	.type	rop164,@function
rop164:                                 # @rop164
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	notq	%rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end164:
	.size	rop164, .Lfunc_end164-rop164
	.cfi_endproc

	.align	16, 0x90
	.type	rop165,@function
rop165:                                 # @rop165
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end165:
	.size	rop165, .Lfunc_end165-rop165
	.cfi_endproc

	.align	16, 0x90
	.type	rop166,@function
rop166:                                 # @rop166
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end166:
	.size	rop166, .Lfunc_end166-rop166
	.cfi_endproc

	.align	16, 0x90
	.type	rop167,@function
rop167:                                 # @rop167
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end167:
	.size	rop167, .Lfunc_end167-rop167
	.cfi_endproc

	.align	16, 0x90
	.type	rop168,@function
rop168:                                 # @rop168
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	andq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end168:
	.size	rop168, .Lfunc_end168-rop168
	.cfi_endproc

	.align	16, 0x90
	.type	rop169,@function
rop169:                                 # @rop169
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end169:
	.size	rop169, .Lfunc_end169-rop169
	.cfi_endproc

	.align	16, 0x90
	.type	rop170,@function
rop170:                                 # @rop170
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end170:
	.size	rop170, .Lfunc_end170-rop170
	.cfi_endproc

	.align	16, 0x90
	.type	rop171,@function
rop171:                                 # @rop171
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end171:
	.size	rop171, .Lfunc_end171-rop171
	.cfi_endproc

	.align	16, 0x90
	.type	rop172,@function
rop172:                                 # @rop172
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end172:
	.size	rop172, .Lfunc_end172-rop172
	.cfi_endproc

	.align	16, 0x90
	.type	rop173,@function
rop173:                                 # @rop173
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdi, %rsi
	orq	%rdx, %rsi
	xorq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end173:
	.size	rop173, .Lfunc_end173-rop173
	.cfi_endproc

	.align	16, 0x90
	.type	rop174,@function
rop174:                                 # @rop174
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rsi, %rdx
	orq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end174:
	.size	rop174, .Lfunc_end174-rop174
	.cfi_endproc

	.align	16, 0x90
	.type	rop175,@function
rop175:                                 # @rop175
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end175:
	.size	rop175, .Lfunc_end175-rop175
	.cfi_endproc

	.align	16, 0x90
	.type	rop176,@function
rop176:                                 # @rop176
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdi, %rsi
	andq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end176:
	.size	rop176, .Lfunc_end176-rop176
	.cfi_endproc

	.align	16, 0x90
	.type	rop177,@function
rop177:                                 # @rop177
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end177:
	.size	rop177, .Lfunc_end177-rop177
	.cfi_endproc

	.align	16, 0x90
	.type	rop178,@function
rop178:                                 # @rop178
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	xorq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end178:
	.size	rop178, .Lfunc_end178-rop178
	.cfi_endproc

	.align	16, 0x90
	.type	rop179,@function
rop179:                                 # @rop179
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end179:
	.size	rop179, .Lfunc_end179-rop179
	.cfi_endproc

	.align	16, 0x90
	.type	rop180,@function
rop180:                                 # @rop180
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end180:
	.size	rop180, .Lfunc_end180-rop180
	.cfi_endproc

	.align	16, 0x90
	.type	rop181,@function
rop181:                                 # @rop181
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdi, %rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end181:
	.size	rop181, .Lfunc_end181-rop181
	.cfi_endproc

	.align	16, 0x90
	.type	rop182,@function
rop182:                                 # @rop182
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	andq	%rdi, %rax
	orq	%rsi, %rax
	xorq	%rdi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end182:
	.size	rop182, .Lfunc_end182-rop182
	.cfi_endproc

	.align	16, 0x90
	.type	rop183,@function
rop183:                                 # @rop183
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	andq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end183:
	.size	rop183, .Lfunc_end183-rop183
	.cfi_endproc

	.align	16, 0x90
	.type	rop184,@function
rop184:                                 # @rop184
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end184:
	.size	rop184, .Lfunc_end184-rop184
	.cfi_endproc

	.align	16, 0x90
	.type	rop185,@function
rop185:                                 # @rop185
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdi, %rdx
	orq	%rsi, %rdx
	xorq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end185:
	.size	rop185, .Lfunc_end185-rop185
	.cfi_endproc

	.align	16, 0x90
	.type	rop186,@function
rop186:                                 # @rop186
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end186:
	.size	rop186, .Lfunc_end186-rop186
	.cfi_endproc

	.align	16, 0x90
	.type	rop187,@function
rop187:                                 # @rop187
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end187:
	.size	rop187, .Lfunc_end187-rop187
	.cfi_endproc

	.align	16, 0x90
	.type	rop188,@function
rop188:                                 # @rop188
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end188:
	.size	rop188, .Lfunc_end188-rop188
	.cfi_endproc

	.align	16, 0x90
	.type	rop189,@function
rop189:                                 # @rop189
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rdx
	xorq	%rdi, %rsi
	andq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end189:
	.size	rop189, .Lfunc_end189-rop189
	.cfi_endproc

	.align	16, 0x90
	.type	rop190,@function
rop190:                                 # @rop190
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end190:
	.size	rop190, .Lfunc_end190-rop190
	.cfi_endproc

	.align	16, 0x90
	.type	rop191,@function
rop191:                                 # @rop191
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end191:
	.size	rop191, .Lfunc_end191-rop191
	.cfi_endproc

	.align	16, 0x90
	.type	rop192,@function
rop192:                                 # @rop192
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end192:
	.size	rop192, .Lfunc_end192-rop192
	.cfi_endproc

	.align	16, 0x90
	.type	rop193,@function
rop193:                                 # @rop193
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end193:
	.size	rop193, .Lfunc_end193-rop193
	.cfi_endproc

	.align	16, 0x90
	.type	rop194,@function
rop194:                                 # @rop194
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end194:
	.size	rop194, .Lfunc_end194-rop194
	.cfi_endproc

	.align	16, 0x90
	.type	rop195,@function
rop195:                                 # @rop195
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end195:
	.size	rop195, .Lfunc_end195-rop195
	.cfi_endproc

	.align	16, 0x90
	.type	rop196,@function
rop196:                                 # @rop196
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end196:
	.size	rop196, .Lfunc_end196-rop196
	.cfi_endproc

	.align	16, 0x90
	.type	rop197,@function
rop197:                                 # @rop197
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end197:
	.size	rop197, .Lfunc_end197-rop197
	.cfi_endproc

	.align	16, 0x90
	.type	rop198,@function
rop198:                                 # @rop198
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end198:
	.size	rop198, .Lfunc_end198-rop198
	.cfi_endproc

	.align	16, 0x90
	.type	rop199,@function
rop199:                                 # @rop199
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end199:
	.size	rop199, .Lfunc_end199-rop199
	.cfi_endproc

	.align	16, 0x90
	.type	rop200,@function
rop200:                                 # @rop200
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	andq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end200:
	.size	rop200, .Lfunc_end200-rop200
	.cfi_endproc

	.align	16, 0x90
	.type	rop201,@function
rop201:                                 # @rop201
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end201:
	.size	rop201, .Lfunc_end201-rop201
	.cfi_endproc

	.align	16, 0x90
	.type	rop202,@function
rop202:                                 # @rop202
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end202:
	.size	rop202, .Lfunc_end202-rop202
	.cfi_endproc

	.align	16, 0x90
	.type	rop203,@function
rop203:                                 # @rop203
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end203:
	.size	rop203, .Lfunc_end203-rop203
	.cfi_endproc

	.align	16, 0x90
	.type	rop204,@function
rop204:                                 # @rop204
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	retq
.Lfunc_end204:
	.size	rop204, .Lfunc_end204-rop204
	.cfi_endproc

	.align	16, 0x90
	.type	rop205,@function
rop205:                                 # @rop205
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end205:
	.size	rop205, .Lfunc_end205-rop205
	.cfi_endproc

	.align	16, 0x90
	.type	rop206,@function
rop206:                                 # @rop206
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	andq	%rdi, %rdx
	orq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end206:
	.size	rop206, .Lfunc_end206-rop206
	.cfi_endproc

	.align	16, 0x90
	.type	rop207,@function
rop207:                                 # @rop207
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end207:
	.size	rop207, .Lfunc_end207-rop207
	.cfi_endproc

	.align	16, 0x90
	.type	rop208,@function
rop208:                                 # @rop208
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end208:
	.size	rop208, .Lfunc_end208-rop208
	.cfi_endproc

	.align	16, 0x90
	.type	rop209,@function
rop209:                                 # @rop209
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end209:
	.size	rop209, .Lfunc_end209-rop209
	.cfi_endproc

	.align	16, 0x90
	.type	rop210,@function
rop210:                                 # @rop210
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end210:
	.size	rop210, .Lfunc_end210-rop210
	.cfi_endproc

	.align	16, 0x90
	.type	rop211,@function
rop211:                                 # @rop211
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	xorq	%rsi, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end211:
	.size	rop211, .Lfunc_end211-rop211
	.cfi_endproc

	.align	16, 0x90
	.type	rop212,@function
rop212:                                 # @rop212
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end212:
	.size	rop212, .Lfunc_end212-rop212
	.cfi_endproc

	.align	16, 0x90
	.type	rop213,@function
rop213:                                 # @rop213
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end213:
	.size	rop213, .Lfunc_end213-rop213
	.cfi_endproc

	.align	16, 0x90
	.type	rop214,@function
rop214:                                 # @rop214
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	andq	%rsi, %rax
	orq	%rdi, %rax
	xorq	%rsi, %rdx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end214:
	.size	rop214, .Lfunc_end214-rop214
	.cfi_endproc

	.align	16, 0x90
	.type	rop215,@function
rop215:                                 # @rop215
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	andq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end215:
	.size	rop215, .Lfunc_end215-rop215
	.cfi_endproc

	.align	16, 0x90
	.type	rop216,@function
rop216:                                 # @rop216
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	andq	%rdi, %rsi
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end216:
	.size	rop216, .Lfunc_end216-rop216
	.cfi_endproc

	.align	16, 0x90
	.type	rop217,@function
rop217:                                 # @rop217
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdx
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end217:
	.size	rop217, .Lfunc_end217-rop217
	.cfi_endproc

	.align	16, 0x90
	.type	rop218,@function
rop218:                                 # @rop218
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdi, %rsi
	notq	%rsi
	andq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end218:
	.size	rop218, .Lfunc_end218-rop218
	.cfi_endproc

	.align	16, 0x90
	.type	rop219,@function
rop219:                                 # @rop219
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	notq	%rdx
	movq	%rdx, %rax
	retq
.Lfunc_end219:
	.size	rop219, .Lfunc_end219-rop219
	.cfi_endproc

	.align	16, 0x90
	.type	rop220,@function
rop220:                                 # @rop220
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end220:
	.size	rop220, .Lfunc_end220-rop220
	.cfi_endproc

	.align	16, 0x90
	.type	rop221,@function
rop221:                                 # @rop221
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end221:
	.size	rop221, .Lfunc_end221-rop221
	.cfi_endproc

	.align	16, 0x90
	.type	rop222,@function
rop222:                                 # @rop222
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end222:
	.size	rop222, .Lfunc_end222-rop222
	.cfi_endproc

	.align	16, 0x90
	.type	rop223,@function
rop223:                                 # @rop223
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end223:
	.size	rop223, .Lfunc_end223-rop223
	.cfi_endproc

	.align	16, 0x90
	.type	rop224,@function
rop224:                                 # @rop224
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	andq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end224:
	.size	rop224, .Lfunc_end224-rop224
	.cfi_endproc

	.align	16, 0x90
	.type	rop225,@function
rop225:                                 # @rop225
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end225:
	.size	rop225, .Lfunc_end225-rop225
	.cfi_endproc

	.align	16, 0x90
	.type	rop226,@function
rop226:                                 # @rop226
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdi, %rdx
	andq	%rsi, %rdx
	xorq	%rdi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end226:
	.size	rop226, .Lfunc_end226-rop226
	.cfi_endproc

	.align	16, 0x90
	.type	rop227,@function
rop227:                                 # @rop227
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	xorq	%rdx, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end227:
	.size	rop227, .Lfunc_end227-rop227
	.cfi_endproc

	.align	16, 0x90
	.type	rop228,@function
rop228:                                 # @rop228
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end228:
	.size	rop228, .Lfunc_end228-rop228
	.cfi_endproc

	.align	16, 0x90
	.type	rop229,@function
rop229:                                 # @rop229
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	xorq	%rdx, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end229:
	.size	rop229, .Lfunc_end229-rop229
	.cfi_endproc

	.align	16, 0x90
	.type	rop230,@function
rop230:                                 # @rop230
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdx
	notq	%rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end230:
	.size	rop230, .Lfunc_end230-rop230
	.cfi_endproc

	.align	16, 0x90
	.type	rop231,@function
rop231:                                 # @rop231
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	xorq	%rdx, %rsi
	andq	%rdi, %rsi
	notq	%rsi
	movq	%rsi, %rax
	retq
.Lfunc_end231:
	.size	rop231, .Lfunc_end231-rop231
	.cfi_endproc

	.align	16, 0x90
	.type	rop232,@function
rop232:                                 # @rop232
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	xorq	%rsi, %rdx
	andq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end232:
	.size	rop232, .Lfunc_end232-rop232
	.cfi_endproc

	.align	16, 0x90
	.type	rop233,@function
rop233:                                 # @rop233
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	andq	%rdi, %rax
	notq	%rax
	andq	%rdx, %rax
	xorq	%rsi, %rdi
	xorq	%rax, %rdi
	notq	%rdi
	movq	%rdi, %rax
	retq
.Lfunc_end233:
	.size	rop233, .Lfunc_end233-rop233
	.cfi_endproc

	.align	16, 0x90
	.type	rop234,@function
rop234:                                 # @rop234
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end234:
	.size	rop234, .Lfunc_end234-rop234
	.cfi_endproc

	.align	16, 0x90
	.type	rop235,@function
rop235:                                 # @rop235
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rsi
	notq	%rsi
	orq	%rdi, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end235:
	.size	rop235, .Lfunc_end235-rop235
	.cfi_endproc

	.align	16, 0x90
	.type	rop236,@function
rop236:                                 # @rop236
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rdx, %rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end236:
	.size	rop236, .Lfunc_end236-rop236
	.cfi_endproc

	.align	16, 0x90
	.type	rop237,@function
rop237:                                 # @rop237
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rdx, %rdi
	notq	%rdi
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end237:
	.size	rop237, .Lfunc_end237-rop237
	.cfi_endproc

	.align	16, 0x90
	.type	rop238,@function
rop238:                                 # @rop238
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end238:
	.size	rop238, .Lfunc_end238-rop238
	.cfi_endproc

	.align	16, 0x90
	.type	rop239,@function
rop239:                                 # @rop239
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdx
	orq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end239:
	.size	rop239, .Lfunc_end239-rop239
	.cfi_endproc

	.align	16, 0x90
	.type	rop240,@function
rop240:                                 # @rop240
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	retq
.Lfunc_end240:
	.size	rop240, .Lfunc_end240-rop240
	.cfi_endproc

	.align	16, 0x90
	.type	rop241,@function
rop241:                                 # @rop241
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end241:
	.size	rop241, .Lfunc_end241-rop241
	.cfi_endproc

	.align	16, 0x90
	.type	rop242,@function
rop242:                                 # @rop242
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	andq	%rdi, %rsi
	orq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end242:
	.size	rop242, .Lfunc_end242-rop242
	.cfi_endproc

	.align	16, 0x90
	.type	rop243,@function
rop243:                                 # @rop243
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end243:
	.size	rop243, .Lfunc_end243-rop243
	.cfi_endproc

	.align	16, 0x90
	.type	rop244,@function
rop244:                                 # @rop244
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end244:
	.size	rop244, .Lfunc_end244-rop244
	.cfi_endproc

	.align	16, 0x90
	.type	rop245,@function
rop245:                                 # @rop245
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end245:
	.size	rop245, .Lfunc_end245-rop245
	.cfi_endproc

	.align	16, 0x90
	.type	rop246,@function
rop246:                                 # @rop246
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end246:
	.size	rop246, .Lfunc_end246-rop246
	.cfi_endproc

	.align	16, 0x90
	.type	rop247,@function
rop247:                                 # @rop247
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end247:
	.size	rop247, .Lfunc_end247-rop247
	.cfi_endproc

	.align	16, 0x90
	.type	rop248,@function
rop248:                                 # @rop248
	.cfi_startproc
# BB#0:                                 # %entry
	andq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end248:
	.size	rop248, .Lfunc_end248-rop248
	.cfi_endproc

	.align	16, 0x90
	.type	rop249,@function
rop249:                                 # @rop249
	.cfi_startproc
# BB#0:                                 # %entry
	xorq	%rsi, %rdi
	notq	%rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end249:
	.size	rop249, .Lfunc_end249-rop249
	.cfi_endproc

	.align	16, 0x90
	.type	rop250,@function
rop250:                                 # @rop250
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end250:
	.size	rop250, .Lfunc_end250-rop250
	.cfi_endproc

	.align	16, 0x90
	.type	rop251,@function
rop251:                                 # @rop251
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rsi
	orq	%rdi, %rsi
	orq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end251:
	.size	rop251, .Lfunc_end251-rop251
	.cfi_endproc

	.align	16, 0x90
	.type	rop252,@function
rop252:                                 # @rop252
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rdx, %rsi
	movq	%rsi, %rax
	retq
.Lfunc_end252:
	.size	rop252, .Lfunc_end252-rop252
	.cfi_endproc

	.align	16, 0x90
	.type	rop253,@function
rop253:                                 # @rop253
	.cfi_startproc
# BB#0:                                 # %entry
	notq	%rdi
	orq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end253:
	.size	rop253, .Lfunc_end253-rop253
	.cfi_endproc

	.align	16, 0x90
	.type	rop254,@function
rop254:                                 # @rop254
	.cfi_startproc
# BB#0:                                 # %entry
	orq	%rsi, %rdi
	orq	%rdx, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end254:
	.size	rop254, .Lfunc_end254-rop254
	.cfi_endproc

	.align	16, 0x90
	.type	rop255,@function
rop255:                                 # @rop255
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end255:
	.size	rop255, .Lfunc_end255-rop255
	.cfi_endproc

	.type	rop_proc_table,@object  # @rop_proc_table
	.section	.rodata,"a",@progbits
	.globl	rop_proc_table
	.align	16
rop_proc_table:
	.quad	rop0
	.quad	rop1
	.quad	rop2
	.quad	rop3
	.quad	rop4
	.quad	rop5
	.quad	rop6
	.quad	rop7
	.quad	rop8
	.quad	rop9
	.quad	rop10
	.quad	rop11
	.quad	rop12
	.quad	rop13
	.quad	rop14
	.quad	rop15
	.quad	rop16
	.quad	rop17
	.quad	rop18
	.quad	rop19
	.quad	rop20
	.quad	rop21
	.quad	rop22
	.quad	rop23
	.quad	rop24
	.quad	rop25
	.quad	rop26
	.quad	rop27
	.quad	rop28
	.quad	rop29
	.quad	rop30
	.quad	rop31
	.quad	rop32
	.quad	rop33
	.quad	rop34
	.quad	rop35
	.quad	rop36
	.quad	rop37
	.quad	rop38
	.quad	rop39
	.quad	rop40
	.quad	rop41
	.quad	rop42
	.quad	rop43
	.quad	rop44
	.quad	rop45
	.quad	rop46
	.quad	rop47
	.quad	rop48
	.quad	rop49
	.quad	rop50
	.quad	rop51
	.quad	rop52
	.quad	rop53
	.quad	rop54
	.quad	rop55
	.quad	rop56
	.quad	rop57
	.quad	rop58
	.quad	rop59
	.quad	rop60
	.quad	rop61
	.quad	rop62
	.quad	rop63
	.quad	rop64
	.quad	rop65
	.quad	rop66
	.quad	rop67
	.quad	rop68
	.quad	rop69
	.quad	rop70
	.quad	rop71
	.quad	rop72
	.quad	rop73
	.quad	rop74
	.quad	rop75
	.quad	rop76
	.quad	rop77
	.quad	rop78
	.quad	rop79
	.quad	rop80
	.quad	rop81
	.quad	rop82
	.quad	rop83
	.quad	rop84
	.quad	rop85
	.quad	rop86
	.quad	rop87
	.quad	rop88
	.quad	rop89
	.quad	rop90
	.quad	rop91
	.quad	rop92
	.quad	rop93
	.quad	rop94
	.quad	rop95
	.quad	rop96
	.quad	rop97
	.quad	rop98
	.quad	rop99
	.quad	rop100
	.quad	rop101
	.quad	rop102
	.quad	rop103
	.quad	rop104
	.quad	rop105
	.quad	rop106
	.quad	rop107
	.quad	rop108
	.quad	rop109
	.quad	rop110
	.quad	rop111
	.quad	rop112
	.quad	rop113
	.quad	rop114
	.quad	rop115
	.quad	rop116
	.quad	rop117
	.quad	rop118
	.quad	rop119
	.quad	rop120
	.quad	rop121
	.quad	rop122
	.quad	rop123
	.quad	rop124
	.quad	rop125
	.quad	rop126
	.quad	rop127
	.quad	rop128
	.quad	rop129
	.quad	rop130
	.quad	rop131
	.quad	rop132
	.quad	rop133
	.quad	rop134
	.quad	rop135
	.quad	rop136
	.quad	rop137
	.quad	rop138
	.quad	rop139
	.quad	rop140
	.quad	rop141
	.quad	rop142
	.quad	rop143
	.quad	rop144
	.quad	rop145
	.quad	rop146
	.quad	rop147
	.quad	rop148
	.quad	rop149
	.quad	rop150
	.quad	rop151
	.quad	rop152
	.quad	rop153
	.quad	rop154
	.quad	rop155
	.quad	rop156
	.quad	rop157
	.quad	rop158
	.quad	rop159
	.quad	rop160
	.quad	rop161
	.quad	rop162
	.quad	rop163
	.quad	rop164
	.quad	rop165
	.quad	rop166
	.quad	rop167
	.quad	rop168
	.quad	rop169
	.quad	rop170
	.quad	rop171
	.quad	rop172
	.quad	rop173
	.quad	rop174
	.quad	rop175
	.quad	rop176
	.quad	rop177
	.quad	rop178
	.quad	rop179
	.quad	rop180
	.quad	rop181
	.quad	rop182
	.quad	rop183
	.quad	rop184
	.quad	rop185
	.quad	rop186
	.quad	rop187
	.quad	rop188
	.quad	rop189
	.quad	rop190
	.quad	rop191
	.quad	rop192
	.quad	rop193
	.quad	rop194
	.quad	rop195
	.quad	rop196
	.quad	rop197
	.quad	rop198
	.quad	rop199
	.quad	rop200
	.quad	rop201
	.quad	rop202
	.quad	rop203
	.quad	rop204
	.quad	rop205
	.quad	rop206
	.quad	rop207
	.quad	rop208
	.quad	rop209
	.quad	rop210
	.quad	rop211
	.quad	rop212
	.quad	rop213
	.quad	rop214
	.quad	rop215
	.quad	rop216
	.quad	rop217
	.quad	rop218
	.quad	rop219
	.quad	rop220
	.quad	rop221
	.quad	rop222
	.quad	rop223
	.quad	rop224
	.quad	rop225
	.quad	rop226
	.quad	rop227
	.quad	rop228
	.quad	rop229
	.quad	rop230
	.quad	rop231
	.quad	rop232
	.quad	rop233
	.quad	rop234
	.quad	rop235
	.quad	rop236
	.quad	rop237
	.quad	rop238
	.quad	rop239
	.quad	rop240
	.quad	rop241
	.quad	rop242
	.quad	rop243
	.quad	rop244
	.quad	rop245
	.quad	rop246
	.quad	rop247
	.quad	rop248
	.quad	rop249
	.quad	rop250
	.quad	rop251
	.quad	rop252
	.quad	rop253
	.quad	rop254
	.quad	rop255
	.size	rop_proc_table, 2048

	.type	rop_usage_table,@object # @rop_usage_table
	.globl	rop_usage_table
	.align	16
rop_usage_table:
	.asciz	"\000\007\007\006\007\005\007\007\007\007\005\007\006\007\007\004\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\006\007\007\002\007\007\007\007\007\007\007\007\006\007\007\006\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\005\007\007\007\007\001\007\007\007\007\005\007\007\007\007\005\007\007\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\007\007\005\007\007\007\007\005\007\007\007\007\001\007\007\007\007\005\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\006\007\007\006\007\007\007\007\007\007\007\007\002\007\007\006\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\007\004\007\007\006\007\005\007\007\007\007\005\007\006\007\007"
	.size	rop_usage_table, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
