	.text
	.file	"gimptext-xlfd.bc"
	.globl	gimp_text_font_name_from_xlfd
	.align	16, 0x90
	.type	gimp_text_font_name_from_xlfd,@function
gimp_text_font_name_from_xlfd:          # @gimp_text_font_name_from_xlfd
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
	subq	$384, %rsp              # imm = 0x180
	movl	$1, %esi
	leaq	-304(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	$0, -308(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	gimp_text_get_xlfd_field
	movslq	-308(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
.LBB0_2:                                # %if.end
	movl	$2, %esi
	leaq	-304(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	gimp_text_get_xlfd_field
	movslq	-308(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true
	movslq	-308(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	movl	$.L.str, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_5
# BB#4:                                 # %if.then.18
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
.LBB0_5:                                # %if.end.20
	movl	$3, %esi
	leaq	-304(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	gimp_text_get_xlfd_field
	movslq	-308(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB0_11
# BB#6:                                 # %if.then.30
	movslq	-308(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$105, %edx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%edx, -316(%rbp)        # 4-byte Spill
	je	.LBB0_7
	jmp	.LBB0_17
.LBB0_17:                               # %if.then.30
	movl	-312(%rbp), %eax        # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	je	.LBB0_8
	jmp	.LBB0_18
.LBB0_18:                               # %if.then.30
	movl	-312(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_7:                                # %sw.bb
	leaq	-304(%rbp), %rax
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	$.L.str.1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	-308(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -308(%rbp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB0_10
.LBB0_8:                                # %sw.bb.38
	leaq	-304(%rbp), %rax
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	-308(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -308(%rbp)
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %sw.bb.44
	jmp	.LBB0_10
.LBB0_10:                               # %sw.epilog
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.45
	movl	$4, %esi
	leaq	-304(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-308(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	gimp_text_get_xlfd_field
	movslq	-308(%rbp), %rcx
	movq	%rax, -48(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	cmpq	$0, -48(%rbp,%rax,8)
	je	.LBB0_14
# BB#12:                                # %land.lhs.true.55
	movslq	-308(%rbp), %rax
	movq	-48(%rbp,%rax,8), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.60
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
.LBB0_14:                               # %if.end.62
	cmpl	$4, -308(%rbp)
	jge	.LBB0_16
# BB#15:                                # %if.then.64
	movslq	-308(%rbp), %rax
	movq	$0, -48(%rbp,%rax,8)
.LBB0_16:                               # %if.end.67
	movabsq	$.L.str.4, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, %rdi
	callq	launder_font_name
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_font_name_from_xlfd, .Lfunc_end0-gimp_text_font_name_from_xlfd
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_get_xlfd_field,@function
gimp_text_get_xlfd_field:               # @gimp_text_get_xlfd_field
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB1_29
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -60(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB1_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$0, -60(%rbp)
	setge	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB1_5:                                # %land.end
                                        #   in Loop: Header=BB1_3 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_10
.LBB1_6:                                # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB1_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB1_8:                                # %if.end.7
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_3
.LBB1_10:                               # %for.end
	movl	$1, %eax
	movl	$2, %ecx
	cmpl	$12, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB1_11:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_17
# BB#12:                                # %for.body.12
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %if.then.19
	jmp	.LBB1_17
.LBB1_15:                               # %if.end.20
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_16
.LBB1_16:                               # %for.inc.21
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_11
.LBB1_17:                               # %for.end.23
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB1_27
# BB#18:                                # %if.then.26
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$63, -72(%rbp)
	jbe	.LBB1_20
# BB#19:                                # %if.then.29
	movq	$0, -8(%rbp)
	jmp	.LBB1_29
.LBB1_20:                               # %if.end.30
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB1_22
# BB#21:                                # %if.then.34
	movq	$0, -8(%rbp)
	jmp	.LBB1_29
.LBB1_22:                               # %if.end.35
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	strncpy
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB1_23:                               # %for.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_26
# BB#24:                                # %for.body.38
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %edi
	callq	g_ascii_tolower
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
# BB#25:                                # %for.inc.40
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_23
.LBB1_26:                               # %for.end.42
	jmp	.LBB1_28
.LBB1_27:                               # %if.else
	movq	$0, -8(%rbp)
	jmp	.LBB1_29
.LBB1_28:                               # %if.end.43
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_get_xlfd_field, .Lfunc_end1-gimp_text_get_xlfd_field
	.cfi_endproc

	.align	16, 0x90
	.type	launder_font_name,@function
launder_font_name:                      # @launder_font_name
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-16(%rbp), %rdi
	movb	(%rdi,%rax), %cl
	movb	%cl, -25(%rbp)
	movzbl	-25(%rbp), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rdi
	movzwl	(%rdi,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	jne	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movsbl	-25(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB2_3
.LBB2_2:                                # %if.then
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	launder_font_name, .Lfunc_end2-launder_font_name
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_text_font_size_from_xlfd
	.align	16, 0x90
	.type	gimp_text_font_size_from_xlfd,@function
gimp_text_font_size_from_xlfd:          # @gimp_text_font_size_from_xlfd
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	movl	$6, %esi
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_text_get_xlfd_field
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movq	-104(%rbp), %rdi
	callq	atoi
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movq	-32(%rbp), %rdi
	movl	$0, (%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.4
	movl	$7, %esi
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_text_get_xlfd_field
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.8
	movq	-104(%rbp), %rdi
	callq	atoi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdi
	movsd	%xmm1, (%rdi)
	movq	-32(%rbp), %rdi
	movl	$3, (%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.end.11
	movl	$0, -4(%rbp)
.LBB3_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_font_size_from_xlfd, .Lfunc_end3-gimp_text_font_size_from_xlfd
	.cfi_endproc

	.globl	gimp_text_set_font_from_xlfd
	.align	16, 0x90
	.type	gimp_text_set_font_from_xlfd,@function
gimp_text_set_font_from_xlfd:           # @gimp_text_set_font_from_xlfd
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.5, %rdi
	movabsq	$.L__func__.gimp_text_set_font_from_xlfd, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_20
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.12
	jmp	.LBB4_20
.LBB4_14:                               # %if.end.13
	movq	-16(%rbp), %rdi
	callq	gimp_text_font_name_from_xlfd
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_text_font_size_from_xlfd
	cmpl	$0, %eax
	je	.LBB4_16
# BB#15:                                # %if.then.17
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %r8
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	cmpq	$0, -24(%rbp)
	cmovneq	%rdi, %rcx
	movq	-24(%rbp), %r9
	movq	%r8, %rdi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	$0, (%rsp)
	movb	$1, %al
	callq	g_object_set
	jmp	.LBB4_19
.LBB4_16:                               # %if.else.19
	cmpq	$0, -24(%rbp)
	je	.LBB4_18
# BB#17:                                # %if.then.21
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB4_18:                               # %if.end.22
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.23
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB4_20:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_set_font_from_xlfd, .Lfunc_end4-gimp_text_set_font_from_xlfd
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"medium"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"italic"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"oblique"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"normal"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" "
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-Text"
	.size	.L.str.5, 10

	.type	.L__func__.gimp_text_set_font_from_xlfd,@object # @__func__.gimp_text_set_font_from_xlfd
.L__func__.gimp_text_set_font_from_xlfd:
	.asciz	"gimp_text_set_font_from_xlfd"
	.size	.L__func__.gimp_text_set_font_from_xlfd, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"font-size"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"font-size-unit"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	","
	.size	.L.str.10, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
