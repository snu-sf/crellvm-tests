	.text
	.file	"document.bc"
	.globl	authors_print_plain
	.align	16, 0x90
	.type	authors_print_plain,@function
authors_print_plain:                    # @authors_print_plain
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
	subq	$32, %rsp
	movabsq	$.L.str, %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.2, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	authors_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	authors_print_plain, .Lfunc_end0-authors_print_plain
	.cfi_endproc

	.align	16, 0x90
	.type	authors_print,@function
authors_print:                          # @authors_print
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movb	$1, -73(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_14
.LBB1_2:                                # %if.end
	jmp	.LBB1_3
.LBB1_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strcpy
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#4:                                 # %do.end
	movabsq	$.L.str.50, %rsi
	movq	-56(%rbp), %rdi
	callq	strtok
	movq	%rax, -56(%rbp)
.LBB1_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_12
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movabsq	$.L.str.52, %rsi
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	strcspn
	movabsq	$.L.str.53, %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movb	$0, -1(%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	strcspn
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movb	$0, (%rsi,%rax)
	movq	-72(%rbp), %rax
	movb	$0, -1(%rax)
	movq	-64(%rbp), %rdi
	movl	$.L.str.54, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_11
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB1_5 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movb	$0, -73(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_10:                               # %if.end.15
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_11:                               # %if.end.17
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.50, %rsi
	callq	strtok
	movq	%rax, -56(%rbp)
	jmp	.LBB1_5
.LBB1_12:                               # %while.end
	testb	$1, -73(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.20
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.22
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	authors_print, .Lfunc_end1-authors_print
	.cfi_endproc

	.globl	authors_print_html
	.align	16, 0x90
	.type	authors_print_html,@function
authors_print_html:                     # @authors_print_html
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
	subq	$32, %rsp
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.2, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	authors_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	authors_print_html, .Lfunc_end2-authors_print_html
	.cfi_endproc

	.globl	authors_print_texinfo
	.align	16, 0x90
	.type	authors_print_texinfo,@function
authors_print_texinfo:                  # @authors_print_texinfo
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
	subq	$32, %rsp
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.5, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r9, %rcx
	movb	$0, %al
	callq	xvstrrpl
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.2, %r9
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	authors_print
	movq	-32(%rbp), %rdi
	callq	free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	authors_print_texinfo, .Lfunc_end3-authors_print_texinfo
	.cfi_endproc

	.globl	documentation_print_plain
	.align	16, 0x90
	.type	documentation_print_plain,@function
documentation_print_plain:              # @documentation_print_plain
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %r10
	movabsq	$.L.str.15, %r11
	movabsq	$.L.str.16, %rbx
	movabsq	$.L.str.17, %r14
	movabsq	$.L.str.18, %r15
	movabsq	$.L.str.19, %r12
	movabsq	$.L.str.20, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$.L.str.21, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$.L.str.22, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$.L.str.23, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$.L.str.24, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$.L.str.25, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$.L.str.26, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$.L.str.27, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$.L.str.28, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$.L.str.5, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$.L.str.4, %rax
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r15, 64(%rsp)
	movq	%r13, 72(%rsp)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, 80(%rsp)
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, 88(%rsp)
	movq	%r10, 96(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 104(%rsp)
	movq	%r10, 112(%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 120(%rsp)
	movq	%r10, 128(%rsp)
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, 136(%rsp)
	movq	%r10, 144(%rsp)
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, 152(%rsp)
	movq	%r10, 160(%rsp)
	movq	-128(%rbp), %r13        # 8-byte Reload
	movq	%r13, 168(%rsp)
	movq	%r10, 176(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 184(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 200(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 208(%rsp)
	movq	$0, 216(%rsp)
	movb	$0, %al
	callq	xvstrrpl
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-72(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	free
.LBB4_3:                                # %return
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	documentation_print_plain, .Lfunc_end4-documentation_print_plain
	.cfi_endproc

	.globl	documentation_print_html
	.align	16, 0x90
	.type	documentation_print_html,@function
documentation_print_html:               # @documentation_print_html
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.31, %rax
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.32, %r10
	movabsq	$.L.str.19, %r11
	movabsq	$.L.str.33, %rbx
	movabsq	$.L.str.13, %r14
	movabsq	$.L.str.34, %r15
	movabsq	$.L.str.15, %r12
	movabsq	$.L.str.35, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$.L.str.20, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$.L.str.36, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$.L.str.21, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$.L.str.37, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$.L.str.38, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$.L.str.39, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$.L.str.24, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$.L.str.40, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$.L.str.41, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$.L.str.42, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movabsq	$.L.str.26, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movabsq	$.L.str.43, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movabsq	$.L.str.27, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movabsq	$.L.str.44, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movabsq	$.L.str.5, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movabsq	$.L.str.4, %rax
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r13, 64(%rsp)
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, 72(%rsp)
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, 80(%rsp)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 88(%rsp)
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, 96(%rsp)
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, 104(%rsp)
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, 112(%rsp)
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%r13, 120(%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 128(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 136(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 152(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 160(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 168(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 176(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 184(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	$0, 200(%rsp)
	movb	$0, %al
	callq	xvstrrpl
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-72(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	free
.LBB5_3:                                # %return
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	documentation_print_html, .Lfunc_end5-documentation_print_html
	.cfi_endproc

	.globl	documentation_print_texinfo
	.align	16, 0x90
	.type	documentation_print_texinfo,@function
documentation_print_texinfo:            # @documentation_print_texinfo
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.46, %rax
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.20, %r10
	movabsq	$.L.str.48, %r11
	movabsq	$.L.str.21, %rbx
	movabsq	$.L.str.7, %r14
	movabsq	$.L.str.49, %r15
	movabsq	$.L.str.9, %r12
	movabsq	$.L.str.50, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movabsq	$.L.str.11, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$.L.str.41, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$.L.str.51, %rax
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	%r15, 64(%rsp)
	movq	%r12, 72(%rsp)
	movq	%r13, 80(%rsp)
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, 88(%rsp)
	movq	%rax, 96(%rsp)
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, 104(%rsp)
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 112(%rsp)
	movq	$0, 120(%rsp)
	movb	$0, %al
	callq	xvstrrpl
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-72(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	free
.LBB6_3:                                # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	documentation_print_texinfo, .Lfunc_end6-documentation_print_texinfo
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s <%s>"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	", "
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	".\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<a href=\"mailto:%2$s\">%1$s</a>"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@@"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"url("
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	")url("
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" ("
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	")url"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	")"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"samp("
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"`"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	")samp"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"'"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"emph("
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"*"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	")emph"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"code("
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	")code"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"@example\n"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@end example\n"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"@end example"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"@itemize\n"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"@end itemize"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"@item\n"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" - "
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<a href=\""
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\">"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"</a>"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"<emph>"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"</emph>'"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"`<code>"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"</code>'"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"<code>"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"</code>"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"@example"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"<pre>"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"</pre>"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"@itemize"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"<ul>"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"</ul>"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<li>"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"@emph{"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"}"
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"@samp{"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"@code{"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"@href{"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	","
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"@itemize @minus"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"<"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	">"
	.size	.L.str.53, 2

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Akim Demaille"
	.size	.L.str.54, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
