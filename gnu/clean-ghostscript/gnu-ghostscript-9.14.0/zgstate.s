	.text
	.file	"zgstate.bc"
	.globl	int_gstate_alloc
	.align	16, 0x90
	.type	int_gstate_alloc,@function
int_gstate_alloc:                       # @int_gstate_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	32(%rdi), %r15
	movq	40(%rdi), %r12
	movq	%r12, %rdi
	callq	gs_state_alloc
	movq	%rax, %r14
	movl	$st_int_gstate, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#1:                                 # %if.end
	movw	$3584, (%rbx)           # imm = 0xE00
	movw	$3584, 16(%rbx)         # imm = 0xE00
	movw	$3584, 32(%rbx)         # imm = 0xE00
	movw	$3584, 48(%rbx)         # imm = 0xE00
	movw	$3584, 64(%rbx)         # imm = 0xE00
	movw	$3584, 80(%rbx)         # imm = 0xE00
	movw	$3584, 96(%rbx)         # imm = 0xE00
	movw	$3584, 112(%rbx)        # imm = 0xE00
	movw	$3584, 128(%rbx)        # imm = 0xE00
	movw	$3584, 144(%rbx)        # imm = 0xE00
	movw	$3584, 160(%rbx)        # imm = 0xE00
	movw	$3584, 176(%rbx)        # imm = 0xE00
	movw	$3584, 192(%rbx)        # imm = 0xE00
	movw	$3584, 208(%rbx)        # imm = 0xE00
	movw	$3584, 224(%rbx)        # imm = 0xE00
	movw	$3584, 240(%rbx)        # imm = 0xE00
	movw	$3584, 256(%rbx)        # imm = 0xE00
	movw	$3584, 272(%rbx)        # imm = 0xE00
	movw	$3584, 288(%rbx)        # imm = 0xE00
	movw	$3584, 304(%rbx)        # imm = 0xE00
	movw	$3584, 320(%rbx)        # imm = 0xE00
	movw	$3584, 336(%rbx)        # imm = 0xE00
	movw	$3584, 352(%rbx)        # imm = 0xE00
	movw	$3584, 368(%rbx)        # imm = 0xE00
	movw	$3584, 384(%rbx)        # imm = 0xE00
	movw	$3584, 400(%rbx)        # imm = 0xE00
	movw	$3584, 416(%rbx)        # imm = 0xE00
	movw	$3584, 432(%rbx)        # imm = 0xE00
	movw	$3584, 448(%rbx)        # imm = 0xE00
	movw	$3584, 464(%rbx)        # imm = 0xE00
	movw	$3584, 480(%rbx)        # imm = 0xE00
	movw	$3584, 496(%rbx)        # imm = 0xE00
	movw	$3584, 512(%rbx)        # imm = 0xE00
	movw	$3584, 528(%rbx)        # imm = 0xE00
	movw	$3584, 544(%rbx)        # imm = 0xE00
	movw	$3584, 560(%rbx)        # imm = 0xE00
	movq	$0, 8(%rbx)
	movw	$1136, (%rbx)           # imm = 0x470
	movl	$0, 4(%rbx)
	leaq	8(%rsp), %rsi
	movl	$224, %edx
	movl	$2, %ecx
	movl	$.L.str.1, %r8d
	movq	%r12, %rdi
	callq	gs_alloc_ref_array
	movq	16(%rsp), %rax
	movq	$zpop, 8(%rax)
	movq	16(%rsp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movups	8(%rsp), %xmm0
	movups	%xmm0, 144(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 160(%rbx)
	movw	$0, 488(%rbx)
	movw	$256, 480(%rbx)         # imm = 0x100
	movl	$st_int_remap_color_info, %esi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_3
# BB#2:                                 # %if.end.39
	movq	%rcx, 536(%rbx)
	movq	%r15, %rdi
	callq	imemory_space
	addl	$2048, %eax             # imm = 0x800
	movw	%ax, 528(%rbx)
	movw	$3584, 512(%rbx)        # imm = 0xE00
	movl	$istate_procs, %edx
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_state_set_client
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gs_setlimitclamp
	movq	%r14, %rax
.LBB0_3:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	int_gstate_alloc, .Lfunc_end0-int_gstate_alloc
	.cfi_endproc

	.globl	zgsave
	.align	16, 0x90
	.type	zgsave,@function
zgsave:                                 # @zgsave
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_gsave                # TAILCALL
.Lfunc_end1:
	.size	zgsave, .Lfunc_end1-zgsave
	.cfi_endproc

	.globl	zgrestore
	.align	16, 0x90
	.type	zgrestore,@function
zgrestore:                              # @zgrestore
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_grestore             # TAILCALL
.Lfunc_end2:
	.size	zgrestore, .Lfunc_end2-zgrestore
	.cfi_endproc

	.globl	zgrestoreall
	.align	16, 0x90
	.type	zgrestoreall,@function
zgrestoreall:                           # @zgrestoreall
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_grestoreall          # TAILCALL
.Lfunc_end3:
	.size	zgrestoreall, .Lfunc_end3-zgrestoreall
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentaccuratecurves,@function
zcurrentaccuratecurves:                 # @zcurrentaccuratecurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB4_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB4_2:                                # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentaccuratecurves
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	zcurrentaccuratecurves, .Lfunc_end4-zcurrentaccuratecurves
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentcurvejoin,@function
zcurrentcurvejoin:                      # @zcurrentcurvejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB5_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentcurvejoin
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zcurrentcurvejoin, .Lfunc_end5-zcurrentcurvejoin
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentdash,@function
zcurrentdash:                           # @zcurrentdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	%rax, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%r14)
	movq	(%rbx), %rdi
	callq	gs_currentdash_offset
	movss	%xmm0, 40(%r14)
	movw	$4096, 32(%r14)         # imm = 0x1000
	xorl	%eax, %eax
.LBB6_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zcurrentdash, .Lfunc_end6-zcurrentdash
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentdashadapt,@function
zcurrentdashadapt:                      # @zcurrentdashadapt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB7_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB7_2:                                # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentdashadapt
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	zcurrentdashadapt, .Lfunc_end7-zcurrentdashadapt
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentdotlength,@function
zcurrentdotlength:                      # @zcurrentdotlength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -24
.Ltmp24:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	leaq	32(%r14), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	%rax, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_currentdotlength
	movss	%xmm0, 24(%r14)
	movw	$4096, 16(%r14)         # imm = 0x1000
	movq	(%rbx), %rdi
	callq	gs_currentdotlength_absolute
	movw	%ax, 40(%r14)
	movw	$256, 32(%r14)          # imm = 0x100
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	zcurrentdotlength, .Lfunc_end8-zcurrentdotlength
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentfilladjust2,@function
zcurrentfilladjust2:                    # @zcurrentfilladjust2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	32(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movl	$2, 688(%rdi)
	movl	$-16, %eax
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_currentfilladjust
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rbx)
	movw	$4096, 32(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
.LBB9_3:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	zcurrentfilladjust2, .Lfunc_end9-zcurrentfilladjust2
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentflat,@function
zcurrentflat:                           # @zcurrentflat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB10_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentflat
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end10:
	.size	zcurrentflat, .Lfunc_end10-zcurrentflat
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentlimitclamp,@function
zcurrentlimitclamp:                     # @zcurrentlimitclamp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB11_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB11_2:                               # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentlimitclamp
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end11:
	.size	zcurrentlimitclamp, .Lfunc_end11-zcurrentlimitclamp
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentlinecap,@function
zcurrentlinecap:                        # @zcurrentlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB12_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentlinecap
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end12:
	.size	zcurrentlinecap, .Lfunc_end12-zcurrentlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentlinejoin,@function
zcurrentlinejoin:                       # @zcurrentlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB13_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentlinejoin
	cltq
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	zcurrentlinejoin, .Lfunc_end13-zcurrentlinejoin
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentlinewidth,@function
zcurrentlinewidth:                      # @zcurrentlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB14_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentlinewidth
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end14:
	.size	zcurrentlinewidth, .Lfunc_end14-zcurrentlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentmiterlimit,@function
zcurrentmiterlimit:                     # @zcurrentmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB15_2:                               # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentmiterlimit
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end15:
	.size	zcurrentmiterlimit, .Lfunc_end15-zcurrentmiterlimit
	.cfi_endproc

	.align	16, 0x90
	.type	zdotorientation,@function
zdotorientation:                        # @zdotorientation
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_dotorientation       # TAILCALL
.Lfunc_end16:
	.size	zdotorientation, .Lfunc_end16-zdotorientation
	.cfi_endproc

	.align	16, 0x90
	.type	zinitgraphics,@function
zinitgraphics:                          # @zinitgraphics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	$0, 8(%rax)
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movw	$1136, (%rax)           # imm = 0x470
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movl	$0, 4(%rax)
	movq	(%rbx), %rdi
	popq	%rbx
	jmp	gs_initgraphics         # TAILCALL
.Lfunc_end17:
	.size	zinitgraphics, .Lfunc_end17-zinitgraphics
	.cfi_endproc

	.align	16, 0x90
	.type	zsetaccuratecurves,@function
zsetaccuratecurves:                     # @zsetaccuratecurves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB18_2
# BB#1:                                 # %zset_bool.exit
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_setaccuratecurves
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB18_2:                               # %if.then.i
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end18:
	.size	zsetaccuratecurves, .Lfunc_end18-zsetaccuratecurves
	.cfi_endproc

	.align	16, 0x90
	.type	zsetcurvejoin,@function
zsetcurvejoin:                          # @zsetcurvejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB19_5
# BB#1:                                 # %if.end
	movq	8(%rdi), %rsi
	leaq	1(%rsi), %rcx
	movl	$-15, %eax
	movl	$2147483648, %edx       # imm = 0x80000000
	cmpq	%rdx, %rcx
	ja	.LBB19_4
# BB#2:                                 # %if.end.9
	movq	(%rbx), %rdi
	callq	gs_setcurvejoin
	testl	%eax, %eax
	js	.LBB19_4
# BB#3:                                 # %if.end.17
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB19_4:                               # %cleanup
	popq	%rbx
	retq
.LBB19_5:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end19:
	.size	zsetcurvejoin, .Lfunc_end19-zsetcurvejoin
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdash,@function
zsetdash:                               # @zsetdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 112
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB20_1
# BB#3:                                 # %if.end
	leaq	-16(%rbx), %r13
	movzwl	(%r13), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB20_4
# BB#5:                                 # %if.end.6
	movq	8(%r14), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	-12(%rbx), %ebx
	movl	$4, %edx
	movl	$.L.str.41, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB20_14
# BB#6:                                 # %for.cond.preheader
	testl	%ebx, %ebx
	je	.LBB20_11
# BB#7:                                 # %for.body.lr.ph
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%r12, %r15
	movq	%r15, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB20_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	array_get
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	float_param
	movl	%eax, %ebp
	incq	%r12
	cmpq	%rbx, %r12
	jae	.LBB20_10
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB20_8 Depth=1
	addq	$4, %r15
	testl	%ebp, %ebp
	jns	.LBB20_8
.LBB20_10:                              # %for.end
	testl	%ebp, %ebp
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	8(%rsp), %r12           # 8-byte Reload
	js	.LBB20_12
.LBB20_11:                              # %if.then.22
	movq	(%r14), %rdi
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	%r12, %rsi
	movl	%ebx, %edx
	callq	gs_setdash
	movl	%eax, %ebp
.LBB20_12:                              # %if.end.24
	movl	$.L.str.41, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB20_14
# BB#13:                                # %if.end.29
	movq	(%r14), %rdi
	callq	gs_state_client_data
	movupd	(%r13), %xmm0
	movupd	%xmm0, (%rax)
	addq	$-32, 624(%r14)
	jmp	.LBB20_14
.LBB20_1:                               # %if.then
	movq	%rbx, %rdi
	jmp	.LBB20_2
.LBB20_4:                               # %if.then.4
	movq	%r13, %rdi
.LBB20_2:                               # %cleanup
	callq	check_type_failed
	movl	%eax, %ebp
.LBB20_14:                              # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	zsetdash, .Lfunc_end20-zsetdash
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdashadapt,@function
zsetdashadapt:                          # @zsetdashadapt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB21_2
# BB#1:                                 # %zset_bool.exit
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_setdashadapt
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB21_2:                               # %if.then.i
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end21:
	.size	zsetdashadapt, .Lfunc_end21-zsetdashadapt
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdotlength,@function
zsetdotlength:                          # @zsetdotlength
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB22_5
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB22_2
# BB#3:                                 # %if.end.5
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movzwl	8(%rbx), %esi
	callq	gs_setdotlength
	testl	%eax, %eax
	js	.LBB22_5
# BB#4:                                 # %if.end.11
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB22_5
.LBB22_2:                               # %if.then.3
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB22_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end22:
	.size	zsetdotlength, .Lfunc_end22-zsetdotlength
	.cfi_endproc

	.align	16, 0x90
	.type	zsetdotorientation,@function
zsetdotorientation:                     # @zsetdotorientation
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setdotorientation    # TAILCALL
.Lfunc_end23:
	.size	zsetdotorientation, .Lfunc_end23-zsetdotorientation
	.cfi_endproc

	.align	16, 0x90
	.type	zsetfilladjust2,@function
zsetfilladjust2:                        # @zsetfilladjust2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 32
.Ltmp68:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$2, %esi
	callq	num_params
	testl	%eax, %eax
	js	.LBB24_3
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	gs_setfilladjust
	testl	%eax, %eax
	js	.LBB24_3
# BB#2:                                 # %if.end.5
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB24_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end24:
	.size	zsetfilladjust2, .Lfunc_end24-zsetfilladjust2
	.cfi_endproc

	.align	16, 0x90
	.type	zsetlimitclamp,@function
zsetlimitclamp:                         # @zsetlimitclamp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB25_2
# BB#1:                                 # %zset_bool.exit
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_setlimitclamp
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB25_2:                               # %if.then.i
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end25:
	.size	zsetlimitclamp, .Lfunc_end25-zsetlimitclamp
	.cfi_endproc

	.align	16, 0x90
	.type	zsetflat,@function
zsetflat:                               # @zsetflat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 32
.Ltmp74:
	.cfi_offset %rbx, -24
.Ltmp75:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB26_1
# BB#2:                                 # %if.end.i
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setflat
	testl	%eax, %eax
	jne	.LBB26_4
# BB#3:                                 # %if.then.3.i
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB26_4
.LBB26_1:                               # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB26_4:                               # %zset_real.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end26:
	.size	zsetflat, .Lfunc_end26-zsetflat
	.cfi_endproc

	.align	16, 0x90
	.type	zsetlinecap,@function
zsetlinecap:                            # @zsetlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 32
.Ltmp78:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	callq	int_param
	testl	%eax, %eax
	js	.LBB27_3
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_setlinecap
	testl	%eax, %eax
	js	.LBB27_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB27_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end27:
	.size	zsetlinecap, .Lfunc_end27-zsetlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	zsetlinejoin,@function
zsetlinejoin:                           # @zsetlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 32
.Ltmp81:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	callq	int_param
	testl	%eax, %eax
	js	.LBB28_3
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_setlinejoin
	testl	%eax, %eax
	js	.LBB28_3
# BB#2:                                 # %if.end
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB28_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end28:
	.size	zsetlinejoin, .Lfunc_end28-zsetlinejoin
	.cfi_endproc

	.align	16, 0x90
	.type	zsetlinewidth,@function
zsetlinewidth:                          # @zsetlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 32
.Ltmp85:
	.cfi_offset %rbx, -24
.Ltmp86:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB29_1
# BB#2:                                 # %if.end
	movq	(%r14), %rbx
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	fabs
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	testl	%eax, %eax
	js	.LBB29_4
# BB#3:                                 # %if.then.5
	addq	$-16, 624(%r14)
	jmp	.LBB29_4
.LBB29_1:                               # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB29_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end29:
	.size	zsetlinewidth, .Lfunc_end29-zsetlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	zsetmiterlimit,@function
zsetmiterlimit:                         # @zsetmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -24
.Ltmp91:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB30_1
# BB#2:                                 # %if.end.i
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setmiterlimit
	testl	%eax, %eax
	jne	.LBB30_4
# BB#3:                                 # %if.then.3.i
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB30_4
.LBB30_1:                               # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB30_4:                               # %zset_real.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end30:
	.size	zsetmiterlimit, .Lfunc_end30-zsetmiterlimit
	.cfi_endproc

	.align	16, 0x90
	.type	zsettextrenderingmode,@function
zsettextrenderingmode:                  # @zsettextrenderingmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB31_2
# BB#1:                                 # %zset_uint.exit
	movq	(%rbx), %rax
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_settextrenderingmode
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB31_2:                               # %if.then.i
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end31:
	.size	zsettextrenderingmode, .Lfunc_end31-zsettextrenderingmode
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenttextrenderingmode,@function
zcurrenttextrenderingmode:              # @zcurrenttextrenderingmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB32_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB32_2:                               # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currenttextrenderingmode
	movl	%eax, %eax
	movq	%rax, 24(%rbx)
	movw	$2816, 16(%rbx)         # imm = 0xB00
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end32:
	.size	zcurrenttextrenderingmode, .Lfunc_end32-zcurrenttextrenderingmode
	.cfi_endproc

	.align	16, 0x90
	.type	zsethpglpathmode,@function
zsethpglpathmode:                       # @zsethpglpathmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB33_2
# BB#1:                                 # %zset_bool.exit
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_sethpglpathmode
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB33_2:                               # %if.then.i
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end33:
	.size	zsethpglpathmode, .Lfunc_end33-zsethpglpathmode
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenthpglpathmode,@function
zcurrenthpglpathmode:                   # @zcurrenthpglpathmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB34_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB34_2:                               # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currenthpglpathmode
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end34:
	.size	zcurrenthpglpathmode, .Lfunc_end34-zcurrenthpglpathmode
	.cfi_endproc

	.align	16, 0x90
	.type	gs_istate_alloc,@function
gs_istate_alloc:                        # @gs_istate_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	movl	$st_int_gstate, %esi
	movl	$.L.str.39, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end35:
	.size	gs_istate_alloc, .Lfunc_end35-gs_istate_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	gs_istate_copy,@function
gs_istate_copy:                         # @gs_istate_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp100:
	.cfi_def_cfa_offset 16
	movl	$576, %edx              # imm = 0x240
	callq	memcpy
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end36:
	.size	gs_istate_copy, .Lfunc_end36-gs_istate_copy
	.cfi_endproc

	.align	16, 0x90
	.type	gs_istate_free,@function
gs_istate_free:                         # @gs_istate_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	24(%rsi), %rcx
	movl	$.L.str.40, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end37:
	.size	gs_istate_free, .Lfunc_end37-gs_istate_free
	.cfi_endproc

	.type	st_int_gstate,@object   # @st_int_gstate
	.section	.rodata,"a",@progbits
	.align	8
st_int_gstate:
	.long	576                     # 0x240
	.zero	4
	.quad	.L.str.37
	.quad	0
	.quad	ref_struct_clear_marks
	.quad	ref_struct_enum_ptrs
	.quad	ref_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_int_gstate, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"int_gstate_alloc(int_gstate)"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"int_gstate_alloc(proc0)"
	.size	.L.str.1, 24

	.type	st_int_remap_color_info,@object # @st_int_remap_color_info
	.section	.rodata,"a",@progbits
	.align	8
st_int_remap_color_info:
	.long	264                     # 0x108
	.zero	4
	.quad	.L.str.38
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_int_remap_color_info, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"int_gstate_alloc(remap color info)"
	.size	.L.str.2, 35

	.type	istate_procs,@object    # @istate_procs
	.section	.rodata,"a",@progbits
	.align	8
istate_procs:
	.quad	gs_istate_alloc
	.quad	gs_istate_copy
	.quad	gs_istate_free
	.quad	0
	.size	istate_procs, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"0.currentaccuratecurves"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0.currentcurvejoin"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0currentdash"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0.currentdashadapt"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0.currentdotlength"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0.currentfilladjust2"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0currentflat"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"0.currentlimitclamp"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0currentlinecap"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0currentlinejoin"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0currentlinewidth"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"0currentmiterlimit"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0.dotorientation"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"0grestore"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0grestoreall"
	.size	.L.str.17, 13

	.type	zgstate1_op_defs,@object # @zgstate1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zgstate1_op_defs
	.align	16
zgstate1_op_defs:
	.quad	.L.str.3
	.quad	zcurrentaccuratecurves
	.quad	.L.str.4
	.quad	zcurrentcurvejoin
	.quad	.L.str.5
	.quad	zcurrentdash
	.quad	.L.str.6
	.quad	zcurrentdashadapt
	.quad	.L.str.7
	.quad	zcurrentdotlength
	.quad	.L.str.8
	.quad	zcurrentfilladjust2
	.quad	.L.str.9
	.quad	zcurrentflat
	.quad	.L.str.10
	.quad	zcurrentlimitclamp
	.quad	.L.str.11
	.quad	zcurrentlinecap
	.quad	.L.str.12
	.quad	zcurrentlinejoin
	.quad	.L.str.13
	.quad	zcurrentlinewidth
	.quad	.L.str.14
	.quad	zcurrentmiterlimit
	.quad	.L.str.15
	.quad	zdotorientation
	.quad	.L.str.16
	.quad	zgrestore
	.quad	.L.str.17
	.quad	zgrestoreall
	.zero	16
	.size	zgstate1_op_defs, 256

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"0gsave"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"0initgraphics"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1.setaccuratecurves"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"1.setcurvejoin"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"2setdash"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"1.setdashadapt"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"2.setdotlength"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"0.setdotorientation"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"2.setfilladjust2"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"1.setlimitclamp"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"1setflat"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"1.setlinecap"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"1.setlinejoin"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"1setlinewidth"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"1setmiterlimit"
	.size	.L.str.32, 15

	.type	zgstate2_op_defs,@object # @zgstate2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zgstate2_op_defs
	.align	16
zgstate2_op_defs:
	.quad	.L.str.18
	.quad	zgsave
	.quad	.L.str.19
	.quad	zinitgraphics
	.quad	.L.str.20
	.quad	zsetaccuratecurves
	.quad	.L.str.21
	.quad	zsetcurvejoin
	.quad	.L.str.22
	.quad	zsetdash
	.quad	.L.str.23
	.quad	zsetdashadapt
	.quad	.L.str.24
	.quad	zsetdotlength
	.quad	.L.str.25
	.quad	zsetdotorientation
	.quad	.L.str.26
	.quad	zsetfilladjust2
	.quad	.L.str.27
	.quad	zsetlimitclamp
	.quad	.L.str.28
	.quad	zsetflat
	.quad	.L.str.29
	.quad	zsetlinecap
	.quad	.L.str.30
	.quad	zsetlinejoin
	.quad	.L.str.31
	.quad	zsetlinewidth
	.quad	.L.str.32
	.quad	zsetmiterlimit
	.zero	16
	.size	zgstate2_op_defs, 256

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"0.settextrenderingmode"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"0.currenttextrenderingmode"
	.size	.L.str.34, 27

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"0.sethpglpathmode"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"0.currenthpglpathmode"
	.size	.L.str.36, 22

	.type	zgstate3_op_defs,@object # @zgstate3_op_defs
	.section	.rodata,"a",@progbits
	.globl	zgstate3_op_defs
	.align	16
zgstate3_op_defs:
	.quad	.L.str.33
	.quad	zsettextrenderingmode
	.quad	.L.str.34
	.quad	zcurrenttextrenderingmode
	.quad	.L.str.35
	.quad	zsethpglpathmode
	.quad	.L.str.36
	.quad	zcurrenthpglpathmode
	.zero	16
	.size	zgstate3_op_defs, 80

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"int_gstate"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"int_remap_color_info_t"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"int_gsave"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"int_grestore"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"setdash"
	.size	.L.str.41, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
