	.text
	.file	"gdevopvp.bc"
	.align	16, 0x90
	.type	device_opvp_enum_ptrs,@function
device_opvp_enum_ptrs:                  # @device_opvp_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %r9d
	jmpq	*st_device_vector+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_opvp_enum_ptrs, .Lfunc_end0-device_opvp_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_opvp_reloc_ptrs,@function
device_opvp_reloc_ptrs:                 # @device_opvp_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %edx
	jmpq	*st_device_vector+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_opvp_reloc_ptrs, .Lfunc_end1-device_opvp_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
.LCPI2_1:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1116733440              # float 72
.LCPI2_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	opvp_open,@function
opvp_open:                              # @opvp_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 128
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$6, 76(%rsp)
	movl	$.L.str.184, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	$-1, %ebx
	cmovnsl	%ebp, %ebx
	setns	%al
	je	.LBB2_2
# BB#1:                                 # %entry
	testb	%al, %al
	je	.LBB2_8
.LBB2_2:                                # %if.then.1.i
	callq	opvp_load_vector_driver
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB2_8
# BB#3:                                 # %if.then.8.i
	movq	apiEntry(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_4
# BB#6:                                 # %if.else.15.i
	xorl	%esi, %esi
	movl	$568, %edx              # imm = 0x238
	callq	memset
	jmp	.LBB2_7
.LBB2_4:                                # %if.then.10.i
	movl	$568, %edi              # imm = 0x238
	movl	$1, %esi
	callq	calloc
	movq	%rax, %rdi
	movq	%rdi, apiEntry(%rip)
	testq	%rdi, %rdi
	je	.LBB2_5
.LBB2_7:                                # %if.then.20.i
	movq	$1, 68(%rsp)
	movq	printerModel(%rip), %rsi
	leaq	68(%rsp), %rdx
	leaq	80(%rsp), %rcx
	movl	%ebx, %edi
	callq	OpenPrinterWrapper
	movl	%eax, %r14d
	movl	$-1, %ebp
	cmpl	$-1, %r14d
	je	.LBB2_8
# BB#12:                                # %if.end.35.i
	movq	apiEntry(%rip), %rdi
	movq	80(%rsp), %rsi
	movl	$568, %edx              # imm = 0x238
	callq	memcpy
	movq	apiEntry(%rip), %rax
	movb	inkjet(%rip), %cl
	andb	$1, %cl
	jne	.LBB2_20
# BB#13:                                # %if.then.39.i
	cmpq	$0, 344(%rax)
	je	.LBB2_19
# BB#14:                                # %lor.lhs.false.i
	cmpq	$0, 352(%rax)
	je	.LBB2_19
# BB#15:                                # %lor.lhs.false.42.i
	cmpq	$0, 360(%rax)
	je	.LBB2_19
# BB#16:                                # %lor.lhs.false.44.i
	cmpq	$0, 400(%rax)
	je	.LBB2_19
# BB#17:                                # %lor.lhs.false.46.i
	cmpq	$0, 408(%rax)
	je	.LBB2_19
# BB#18:                                # %lor.lhs.false.48.i
	cmpq	$0, 440(%rax)
	jne	.LBB2_20
.LBB2_19:                               # %if.then.50.i
	movb	$1, vector(%rip)
.LBB2_20:                               # %if.end.52.i
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_25
# BB#21:                                # %if.end.57.i
	leaq	76(%rsp), %rsi
	movl	%r14d, %edi
	callq	*%rax
	movl	76(%rsp), %eax
	cmpl	$1, %eax
	jne	.LBB2_22
# BB#24:                                # %if.then.69.i
	movl	$1, colorSpace(%rip)
	movl	$1, 100(%r15)
	movw	$8, 108(%r15)
	jmp	.LBB2_26
.LBB2_8:                                # %if.else.31thread-pre-split.i
	movq	apiEntry(%rip), %rdi
.LBB2_9:                                # %if.else.31.i
	testq	%rdi, %rdi
	je	.LBB2_11
# BB#10:                                # %if.then.33.i
	callq	free
.LBB2_11:                               # %if.end.98.thread.i
	movq	$0, apiEntry(%rip)
.LBB2_29:                               # %if.end.107.i
	cmpl	$-1, %ebx
	je	.LBB2_31
# BB#30:                                # %if.then.110.i
	movl	%ebx, %edi
	callq	close
.LBB2_31:                               # %if.end.112.i
	movq	handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_33
# BB#32:                                # %if.then.i.i
	callq	dlclose
	movq	$0, handle(%rip)
	movq	$0, OpenPrinter(%rip)
	movq	$0, ErrorNo(%rip)
.LBB2_33:                               # %prepare_open.exit
	testl	%ebp, %ebp
	jne	.LBB2_130
# BB#34:                                # %if.end
	movb	zoomAuto(%rip), %al
	andb	$1, %al
	movss	margins.0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	je	.LBB2_35
# BB#36:                                # %if.then.2
	movss	margins.2(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm3
	mulss	884(%r15), %xmm3
	movss	margins.1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	margins.3(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm4
	mulss	888(%r15), %xmm4
	cvtsi2ssl	832(%r15), %xmm5
	movaps	%xmm5, %xmm2
	subss	%xmm3, %xmm2
	divss	%xmm5, %xmm2
	movss	%xmm2, zoom.0(%rip)
	xorps	%xmm5, %xmm5
	cvtsi2ssl	836(%r15), %xmm5
	movaps	%xmm5, %xmm3
	subss	%xmm4, %xmm3
	divss	%xmm5, %xmm3
	movss	%xmm3, zoom.1(%rip)
	ucomiss	%xmm2, %xmm3
	jbe	.LBB2_38
# BB#37:                                # %if.then.15
	movss	%xmm2, zoom.1(%rip)
	jmp	.LBB2_39
.LBB2_35:                               # %if.end.if.end.17_crit_edge
	movss	margins.1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB2_39
.LBB2_38:                               # %if.else
	movss	%xmm3, zoom.0(%rip)
.LBB2_39:                               # %if.end.17
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	setp	%al
	setne	%cl
	orb	%al, %cl
	ucomiss	%xmm2, %xmm1
	setp	%dl
	setne	%al
	orb	%dl, %al
	orb	%cl, %al
	movzbl	inkjet(%rip), %ecx
	andl	$1, %ecx
	cmpl	$1, %ecx
	jne	.LBB2_43
# BB#40:                                # %if.then.19
	movss	margins.3(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	setp	%cl
	setne	%dl
	orb	%cl, %dl
	orb	%dl, %al
	je	.LBB2_42
# BB#41:                                # %if.then.27
	mulss	884(%r15), %xmm0
	movss	%xmm0, shift.0(%rip)
	addss	%xmm1, %xmm3
	mulss	888(%r15), %xmm3
	movss	%xmm3, shift.1(%rip)
	movb	$1, zooming(%rip)
.LBB2_42:                               # %if.end.35
	movss	margins.2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	884(%r15), %xmm0
	cvtsi2ssl	832(%r15), %xmm2
	subss	%xmm0, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, 832(%r15)
	mulss	888(%r15), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	836(%r15), %xmm0
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 836(%r15)
	jmp	.LBB2_49
.LBB2_43:                               # %if.else.50
	testb	%al, %al
	je	.LBB2_44
# BB#45:                                # %if.then.56
	movss	884(%r15), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	movss	%xmm2, shift.0(%rip)
	movss	margins.3(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	888(%r15), %xmm3        # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	movss	%xmm3, shift.1(%rip)
	movb	$1, zooming(%rip)
	jmp	.LBB2_46
.LBB2_44:                               # %if.else.50.if.end.63_crit_edge
	movss	margins.3(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
.LBB2_46:                               # %if.end.63
	movl	$0, 16(%rsp)
	movl	$0, 28(%rsp)
	xorps	%xmm3, %xmm3
	cvtsi2ssl	836(%r15), %xmm3
	mulss	zoom.1(%rip), %xmm3
	divss	888(%r15), %xmm3
	movss	860(%r15), %xmm4        # xmm4 = mem[0],zero,zero,zero
	divss	.LCPI2_2(%rip), %xmm4
	addss	%xmm2, %xmm1
	subss	%xmm1, %xmm4
	subss	%xmm4, %xmm3
	movss	%xmm3, 20(%rsp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm3, %xmm1
	jbe	.LBB2_48
# BB#47:                                # %if.then.81
	movl	$0, 16(%rsp)
.LBB2_48:                               # %if.end.83
	xorps	%xmm2, %xmm2
	cvtsi2ssl	832(%r15), %xmm2
	mulss	zoom.0(%rip), %xmm2
	divss	884(%r15), %xmm2
	movss	856(%r15), %xmm3        # xmm3 = mem[0],zero,zero,zero
	divss	.LCPI2_2(%rip), %xmm3
	addss	margins.2(%rip), %xmm0
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm2
	maxss	%xmm2, %xmm1
	movss	%xmm1, 24(%rsp)
	leaq	16(%rsp), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	gx_device_set_margins
.LBB2_49:                               # %if.end.103
	movss	zoom.0(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_3(%rip), %xmm0
	jne	.LBB2_51
	jp	.LBB2_51
# BB#50:                                # %if.end.103
	movss	zoom.1(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_3(%rip), %xmm0
	jne	.LBB2_51
	jnp	.LBB2_52
.LBB2_51:                               # %if.then.109
	movb	$1, zooming(%rip)
.LBB2_52:                               # %if.end.110
	movb	inkjet(%rip), %al
	andb	$1, %al
	je	.LBB2_53
# BB#58:                                # %if.else.138
	movq	%r15, %rdi
	callq	gdev_prn_open
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB2_130
# BB#59:                                # %if.end.143
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	gdev_prn_open_printer_seekable
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_130
# BB#60:                                # %if.end.148
	movq	17176(%r15), %rdi
	jmp	.LBB2_61
.LBB2_53:                               # %if.then.112
	movq	24(%r15), %rdi
	callq	*32(%rdi)
	movq	%rax, 1728(%r15)
	movl	$512, %esi              # imm = 0x200
	movl	$10, %edx
	movq	%r15, %rdi
	callq	gdev_vector_open_file_options
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_130
# BB#54:                                # %if.end.119
	movq	8824(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_57
# BB#55:                                # %if.then.122
	cmpq	$0, 24(%rax)
	jne	.LBB2_57
# BB#56:                                # %if.then.127
	movq	24(%r15), %rdi
	callq	*32(%rdi)
	movq	8824(%r15), %rcx
	movq	%rax, 24(%rcx)
.LBB2_57:                               # %if.end.136
	movq	5840(%r15), %rdi
.LBB2_61:                               # %if.end.151
	callq	fileno
	movl	%eax, outputFD(%rip)
	callq	opvp_load_vector_driver
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB2_130
# BB#62:                                # %if.end.155
	movq	$1, 8(%rsp)
	movl	outputFD(%rip), %edi
	movq	printerModel(%rip), %rsi
	leaq	8(%rsp), %rdx
	leaq	56(%rsp), %rcx
	callq	OpenPrinterWrapper
	movl	%eax, %ebx
	movq	apiEntry(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_63
# BB#64:                                # %if.else.166
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$568, %edx              # imm = 0x238
	callq	memset
	jmp	.LBB2_65
.LBB2_22:                               # %if.end.57.i
	testl	%eax, %eax
	jne	.LBB2_25
# BB#23:                                # %if.then.60.i
	movl	$0, colorSpace(%rip)
	movl	$1, 100(%r15)
	movw	$1, 108(%r15)
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [0,0,1,1]
	jmp	.LBB2_27
.LBB2_25:                               # %if.else.82.i
	movl	$6, colorSpace(%rip)
	movl	$3, 100(%r15)
	movw	$24, 108(%r15)
.LBB2_26:                               # %if.end.98.if.then.101_crit_edge.i
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [255,255,256,256]
.LBB2_27:                               # %if.end.98.if.then.101_crit_edge.i
	movups	%xmm0, 112(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1536(%r15)
	movq	%r15, %rdi
	callq	gx_device_fill_in_procs
	movq	apiEntry(%rip), %rax
	movq	8(%rax), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB2_29
# BB#28:                                # %if.then.103.i
	movl	%r14d, %edi
	callq	*%rcx
	jmp	.LBB2_29
.LBB2_63:                               # %if.then.161
	movl	$568, %edi              # imm = 0x238
	movl	$1, %esi
	callq	calloc
	movq	%rax, apiEntry(%rip)
	cmpq	$1, %rax
	sbbl	%ebp, %ebp
.LBB2_65:                               # %if.end.168
	cmpl	$-1, %ebx
	je	.LBB2_66
# BB#73:                                # %if.end.182
	movl	%ebx, printerContext(%rip)
	movq	apiEntry(%rip), %rdi
	movq	56(%rsp), %rsi
	movl	$568, %edx              # imm = 0x238
	callq	memcpy
	testl	%ebp, %ebp
	jne	.LBB2_77
# BB#74:                                # %if.end.182
	testb	$1, inkjet(%rip)
	jne	.LBB2_77
# BB#75:                                # %if.then.188
	movq	$opvp_vector_procs, 1736(%r15)
	movb	vector(%rip), %al
	andb	$1, %al
	jne	.LBB2_77
# BB#76:                                # %if.then.190
	movq	%r15, %rdi
	callq	gdev_vector_init
.LBB2_77:                               # %if.end.192
	movq	apiEntry(%rip), %rax
	movl	$-1, %r14d
	cmpq	$0, 136(%rax)
	je	.LBB2_82
# BB#78:                                # %if.then.194
	movl	$8, 80(%rsp)
	movl	$32, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	apiEntry(%rip), %rax
	movl	printerContext(%rip), %edi
	leaq	80(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*136(%rax)
	movl	%eax, %r14d
	cmpl	$-6, %r14d
	jne	.LBB2_93
# BB#79:                                # %land.lhs.true.202
	movslq	80(%rsp), %rsi
	cmpq	$9, %rsi
	jl	.LBB2_80
# BB#92:                                # %if.then.205
	shlq	$2, %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, %rbx
	movq	apiEntry(%rip), %rax
	movl	printerContext(%rip), %edi
	leaq	80(%rsp), %rsi
	movq	%rbx, %rdx
	callq	*136(%rax)
	movl	%eax, %r14d
.LBB2_93:                               # %if.end.211
	testl	%r14d, %r14d
	jne	.LBB2_81
# BB#94:                                # %for.cond.preheader
	movslq	80(%rsp), %rax
	xorl	%r14d, %r14d
	testq	%rax, %rax
	jle	.LBB2_81
# BB#95:                                # %for.body.preheader
	xorl	%r14d, %r14d
	testb	$1, %al
	movl	$0, %ecx
	je	.LBB2_98
# BB#96:                                # %for.body.prol
	movl	(%rbx), %edx
	cmpq	$7, %rdx
	movl	$1, %ecx
	ja	.LBB2_98
# BB#97:                                # %if.then.221.prol
	movb	$1, cspace_available(%rdx)
	movl	$1, %ecx
.LBB2_98:                               # %for.body.preheader.split
	cmpl	$1, %eax
	je	.LBB2_81
.LBB2_99:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %edx
	cmpq	$7, %rdx
	ja	.LBB2_101
# BB#100:                               # %if.then.221
                                        #   in Loop: Header=BB2_99 Depth=1
	movb	$1, cspace_available(%rdx)
.LBB2_101:                              # %for.inc
                                        #   in Loop: Header=BB2_99 Depth=1
	movl	4(%rbx,%rcx,4), %edx
	cmpq	$8, %rdx
	jae	.LBB2_103
# BB#102:                               # %if.then.221.1
                                        #   in Loop: Header=BB2_99 Depth=1
	movb	$1, cspace_available(%rdx)
.LBB2_103:                              # %for.inc.1
                                        #   in Loop: Header=BB2_99 Depth=1
	addq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_99
	jmp	.LBB2_81
.LBB2_66:                               # %if.then.171
	movq	apiEntry(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_68
# BB#67:                                # %if.then.173
	callq	free
.LBB2_68:                               # %if.end.174
	movq	$0, apiEntry(%rip)
	movq	handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_70
# BB#69:                                # %if.then.i
	callq	dlclose
	movq	$0, handle(%rip)
	movq	$0, OpenPrinter(%rip)
	movq	$0, ErrorNo(%rip)
.LBB2_70:                               # %opvp_unload_vector_driver.exit
	movzbl	inkjet(%rip), %eax
	andl	$1, %eax
	movq	%r15, %rdi
	cmpl	$1, %eax
	jne	.LBB2_72
# BB#71:                                # %if.then.177
	callq	gdev_prn_close
	movl	$-1, %ebp
	jmp	.LBB2_130
.LBB2_5:
	movl	$-1, %ebp
	jmp	.LBB2_9
.LBB2_72:                               # %if.else.179
	callq	gdev_vector_close_file
	movl	$-1, %ebp
	jmp	.LBB2_130
.LBB2_80:
	movl	$-6, %r14d
.LBB2_81:                               # %if.end.227
	movq	%rbx, %rdi
	callq	free
.LBB2_82:                               # %if.end.228
	testl	%ebp, %ebp
	jne	.LBB2_124
# BB#83:                                # %if.then.230
	movq	jobInfo(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB2_86
# BB#84:                                # %if.then.232
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_86
# BB#85:                                # %if.then.236
	leaq	48(%rsp), %rdi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	movq	%rax, 48(%rsp)
.LBB2_86:                               # %if.end.239
	movq	%r15, %rdi
	callq	opvp_gen_page_info
	leaq	32(%rsp), %rdi
	movq	%rax, %rsi
	callq	opvp_alloc_string
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB2_106
# BB#87:                                # %if.then.243
	movq	%rax, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_106
# BB#88:                                # %if.then.247
	movq	48(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB2_91
# BB#89:                                # %if.then.249
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_104
# BB#90:                                # %if.end.256
	movl	$.L.str.182, %edi
	callq	strlen
	leaq	1(%rbp,%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, 48(%rsp)
	movl	$.L.str.182, %esi
	movq	%rax, %rdi
	callq	strcat
	movq	48(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB2_91
.LBB2_104:                              # %if.end.3.i.100
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$.L.str.183, %edi
	callq	strlen
	leaq	1(%rbp,%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, 48(%rsp)
	movl	$.L.str.183, %esi
	movq	%rax, %rdi
	callq	strcat
	movq	48(%rsp), %rax
	jmp	.LBB2_105
.LBB2_91:                               # %if.then.2.i.99
	leaq	48(%rsp), %rdi
	movl	$.L.str.183, %esi
	callq	opvp_alloc_string
.LBB2_105:                              # %opvp_cat_string.exit109
	movq	%rax, 48(%rsp)
	movq	32(%rsp), %rsi
	leaq	48(%rsp), %rdi
	callq	opvp_cat_string
	movq	%rax, 48(%rsp)
.LBB2_106:                              # %if.end.260
	movq	apiEntry(%rip), %rax
	movq	16(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB2_108
# BB#107:                               # %if.then.262
	movl	printerContext(%rip), %ebx
	movq	48(%rsp), %rdi
	callq	opvp_to_utf8
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	*%rbp
	movl	%eax, %r14d
.LBB2_108:                              # %if.end.266
	movl	$-1, %ebp
	testl	%r14d, %r14d
	jne	.LBB2_124
# BB#109:                               # %if.then.273
	movq	docInfo(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB2_112
# BB#110:                               # %if.then.275
	movq	%rbx, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_112
# BB#111:                               # %if.then.279
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	movq	%rax, 40(%rsp)
.LBB2_112:                              # %if.end.282
	movq	%r15, %rdi
	callq	opvp_gen_page_info
	leaq	32(%rsp), %rdi
	movq	%rax, %rsi
	callq	opvp_alloc_string
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB2_120
# BB#113:                               # %if.then.286
	movq	%rax, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_120
# BB#114:                               # %if.then.290
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB2_117
# BB#115:                               # %if.then.292
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_118
# BB#116:                               # %if.end.299
	movl	$.L.str.182, %edi
	callq	strlen
	leaq	1(%rbp,%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, 40(%rsp)
	movl	$.L.str.182, %esi
	movq	%rax, %rdi
	callq	strcat
	movq	40(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB2_117
.LBB2_118:                              # %if.end.3.i.127
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$.L.str.183, %edi
	callq	strlen
	leaq	1(%rbp,%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, 40(%rsp)
	movl	$.L.str.183, %esi
	movq	%rax, %rdi
	callq	strcat
	movq	40(%rsp), %rax
	jmp	.LBB2_119
.LBB2_117:                              # %if.then.2.i.126
	leaq	40(%rsp), %rdi
	movl	$.L.str.183, %esi
	callq	opvp_alloc_string
.LBB2_119:                              # %opvp_cat_string.exit136
	movq	%rax, 40(%rsp)
	movq	32(%rsp), %rsi
	leaq	40(%rsp), %rdi
	callq	opvp_cat_string
	movq	%rax, 40(%rsp)
.LBB2_120:                              # %if.end.303
	movq	apiEntry(%rip), %rax
	movq	40(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB2_121
# BB#122:                               # %if.then.305
	movl	printerContext(%rip), %ebx
	movq	40(%rsp), %rdi
	callq	opvp_to_utf8
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	*%rbp
	testl	%eax, %eax
	setne	%al
	jmp	.LBB2_123
.LBB2_121:
	xorl	%eax, %eax
.LBB2_123:                              # %if.end.309
	movzbl	%al, %ebp
	shll	$31, %ebp
	sarl	$31, %ebp
.LBB2_124:                              # %if.end.314
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_126
# BB#125:                               # %opvp_alloc_string.exit
	callq	free
	movq	$0, 32(%rsp)
.LBB2_126:                              # %if.end.318
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_128
# BB#127:                               # %opvp_alloc_string.exit144
	callq	free
	movq	$0, 40(%rsp)
.LBB2_128:                              # %if.end.322
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_130
# BB#129:                               # %opvp_alloc_string.exit149
	callq	free
	movq	$0, 48(%rsp)
.LBB2_130:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opvp_open, .Lfunc_end2-opvp_open
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	opvp_get_initial_matrix,@function
opvp_get_initial_matrix:                # @opvp_get_initial_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -24
.Ltmp13:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gx_default_get_initial_matrix
	movzbl	zooming(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movss	zoom.0(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	mulss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
	movss	zoom.1(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	mulss	4(%rbx), %xmm0
	movss	%xmm0, 4(%rbx)
	movss	zoom.0(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	mulss	8(%rbx), %xmm0
	movss	%xmm0, 8(%rbx)
	movss	zoom.1(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	mulss	12(%rbx), %xmm0
	movss	%xmm0, 12(%rbx)
	movss	16(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	zoom.0(%rip), %xmm0
	addss	shift.0(%rip), %xmm0
	movss	%xmm0, 16(%rbx)
	movss	20(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	zoom.1(%rip), %xmm0
	addss	shift.1(%rip), %xmm0
	movss	%xmm0, 20(%rbx)
.LBB3_2:                                # %if.end
	cmpl	$0, 84(%r14)
	je	.LBB3_7
# BB#3:                                 # %if.then.10
	movq	apiEntry(%rip), %rax
	movq	88(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB3_5
# BB#4:                                 # %if.then.12
	movl	printerContext(%rip), %edi
	callq	*%rcx
	jmp	.LBB3_7
.LBB3_5:                                # %if.else
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [1.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movaps	%xmm0, (%rsp)
	movq	$0, 16(%rsp)
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_7
# BB#6:                                 # %if.then.15
	movl	printerContext(%rip), %edi
	leaq	(%rsp), %rsi
	callq	*%rax
.LBB3_7:                                # %if.end.20
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	opvp_get_initial_matrix, .Lfunc_end3-opvp_get_initial_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_output_page,@function
opvp_output_page:                       # @opvp_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 48
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movzbl	inkjet(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB4_1
# BB#11:                                # %if.then
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_prn_output_page    # TAILCALL
.LBB4_1:                                # %if.end
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB4_3
# BB#2:                                 # %cond.false
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$-1, %ebp
	testl	%eax, %eax
	jne	.LBB4_10
.LBB4_3:                                # %if.end.6
	movl	printerContext(%rip), %edi
	xorl	%ebp, %ebp
	cmpl	$-1, %edi
	je	.LBB4_7
# BB#4:                                 # %if.then.i
	movq	apiEntry(%rip), %rax
	movq	64(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB4_6
# BB#5:                                 # %if.then.1.i
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB4_6:                                # %if.end.i
	movzbl	%cl, %ebp
	shll	$31, %ebp
	sarl	$31, %ebp
.LBB4_7:                                # %opvp_endpage.exit
	movl	$0, 8816(%rbx)
	movb	$0, beginPage(%rip)
	movb	vector(%rip), %al
	andb	$1, %al
	jne	.LBB4_9
# BB#8:                                 # %if.then.12
	movq	%rbx, %rdi
	callq	gdev_vector_reset
.LBB4_9:                                # %if.end.13
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_finish_output_page
	testl	%eax, %eax
	cmovnel	%eax, %ebp
.LBB4_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opvp_output_page, .Lfunc_end4-opvp_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_close,@function
opvp_close:                             # @opvp_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	printerContext(%rip), %edi
	cmpl	$-1, %edi
	je	.LBB5_8
# BB#1:                                 # %if.then
	movq	apiEntry(%rip), %rax
	movq	48(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB5_3
# BB#2:                                 # %if.then.1
	callq	*%rcx
	movq	apiEntry(%rip), %rax
.LBB5_3:                                # %if.end
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB5_5
# BB#4:                                 # %if.then.4
	movl	printerContext(%rip), %edi
	callq	*%rcx
	movq	apiEntry(%rip), %rax
.LBB5_5:                                # %if.end.7
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB5_7
# BB#6:                                 # %if.then.9
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB5_7:                                # %if.end.12
	movl	$-1, printerContext(%rip)
.LBB5_8:                                # %if.end.13
	movq	apiEntry(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB5_10
# BB#9:                                 # %if.then.15
	callq	free
.LBB5_10:                               # %if.end.16
	movq	$0, apiEntry(%rip)
	movq	handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB5_12
# BB#11:                                # %if.then.i
	callq	dlclose
	movq	$0, handle(%rip)
	movq	$0, OpenPrinter(%rip)
	movq	$0, ErrorNo(%rip)
.LBB5_12:                               # %opvp_unload_vector_driver.exit
	movzbl	inkjet(%rip), %eax
	andl	$1, %eax
	movq	%rbx, %rdi
	cmpl	$1, %eax
	jne	.LBB5_14
# BB#13:                                # %if.then.19
	callq	gdev_prn_close
	jmp	.LBB5_15
.LBB5_14:                               # %if.else
	callq	gdev_vector_close_file
.LBB5_15:                               # %if.end.22
	movl	$-1, outputFD(%rip)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	opvp_close, .Lfunc_end5-opvp_close
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_map_rgb_color,@function
opvp_map_rgb_color:                     # @opvp_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 16
	movzwl	2(%rsi), %eax
	movzwl	4(%rsi), %edx
	movl	colorSpace(%rip), %ecx
	cmpq	$7, %rcx
	ja	.LBB6_7
# BB#1:                                 # %entry
	movw	(%rsi), %r8w
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_2:                                # %sw.bb.7
	movzwl	%r8w, %esi
	notl	%esi
	imull	$65281, %esi, %edi      # imm = 0xFF01
	addl	$8388608, %edi          # imm = 0x800000
	shrl	$24, %edi
	notl	%eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	notl	%edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	xorl	%esi, %esi
	cmpl	$3, %ecx
	jne	.LBB6_4
# BB#3:                                 # %if.then
	cmpl	%edx, %edi
	movl	%edx, %ecx
	cmovbl	%edi, %ecx
	cmpl	%edx, %eax
	movl	%edx, %esi
	cmovbl	%eax, %esi
	cmpl	%eax, %edi
	cmovbl	%ecx, %esi
	subl	%esi, %edi
	subl	%esi, %eax
	subl	%esi, %edx
.LBB6_4:                                # %if.end
	shll	$8, %edx
	shll	$16, %eax
	shll	$24, %edi
	addl	%edx, %eax
	addl	%esi, %eax
	addl	%edi, %eax
	popq	%rdx
	retq
.LBB6_7:                                # %sw.default
	popq	%rax
	jmp	gx_default_rgb_map_rgb_color # TAILCALL
.LBB6_6:                                # %sw.bb.54
	popq	%rax
	jmp	gx_default_b_w_map_rgb_color # TAILCALL
.LBB6_5:                                # %sw.bb.50
	movw	%r8w, 6(%rsp)
	movw	%r8w, 4(%rsp)
	movw	%r8w, 2(%rsp)
	leaq	2(%rsp), %rsi
	callq	gx_default_gray_map_rgb_color
	popq	%rdx
	retq
.LBB6_8:                                # %sw.bb
	shlq	$16, %rax
	leaq	(%rax,%rdx), %rax
	shlq	$32, %rdx
	orq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rdx
	retq
.Lfunc_end6:
	.size	opvp_map_rgb_color, .Lfunc_end6-opvp_map_rgb_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_6
	.quad	.LBB6_5
	.quad	.LBB6_2
	.quad	.LBB6_2
	.quad	.LBB6_7
	.quad	.LBB6_7
	.quad	.LBB6_7
	.quad	.LBB6_8

	.text
	.align	16, 0x90
	.type	opvp_map_color_rgb,@function
opvp_map_color_rgb:                     # @opvp_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	colorSpace(%rip), %eax
	cmpq	$7, %rax
	ja	.LBB7_7
# BB#1:                                 # %entry
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_2:                                # %sw.bb.8
	movl	%ebx, %ecx
	shrl	$24, %ecx
	imull	$257, %ecx, %esi        # imm = 0x101
	movl	%ebx, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	imull	$257, %ecx, %ecx        # imm = 0x101
	movzbl	%bh, %edi  # NOREX
	imull	$257, %edi, %edi        # imm = 0x101
	cmpl	$3, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then
	movzbl	%bl, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	addl	%eax, %esi
	cmpl	$255, %esi
	movl	$255, %ebx
	cmoval	%ebx, %esi
	addl	%eax, %ecx
	cmpl	$255, %ecx
	cmoval	%ebx, %ecx
	addl	%eax, %edi
	cmpl	$255, %edi
	cmoval	%ebx, %edi
.LBB7_4:                                # %if.end.52
	notl	%esi
	movzbl	%sil, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	notl	%ecx
	movzbl	%cl, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 2(%rdx)
	notl	%edi
	movzbl	%dil, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	jmp	.LBB7_9
.LBB7_7:                                # %sw.default
	movq	%rbx, %rsi
	popq	%rbx
	jmp	gx_default_rgb_map_color_rgb # TAILCALL
.LBB7_6:                                # %sw.bb.80
	movq	%rbx, %rsi
	popq	%rbx
	jmp	gx_default_b_w_map_color_rgb # TAILCALL
.LBB7_5:                                # %sw.bb.79
	movq	%rbx, %rsi
	popq	%rbx
	jmp	gx_default_gray_map_color_rgb # TAILCALL
.LBB7_8:                                # %sw.bb
	movq	%rbx, %rax
	shrq	$32, %rax
	movw	%ax, (%rdx)
	movq	%rbx, %rax
	shrq	$16, %rax
	movw	%ax, 2(%rdx)
	movw	%bx, 4(%rdx)
.LBB7_9:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	opvp_map_color_rgb, .Lfunc_end7-opvp_map_color_rgb
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_6
	.quad	.LBB7_5
	.quad	.LBB7_2
	.quad	.LBB7_2
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_8

	.text
	.align	16, 0x90
	.type	opvp_fill_rectangle,@function
opvp_fill_rectangle:                    # @opvp_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 144
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movabsq	$824633721024, %rax     # imm = 0xC0000000C0
	movq	%rax, 72(%rsp)
	movb	vector(%rip), %al
	andb	$1, %al
	je	.LBB8_1
# BB#2:                                 # %if.end
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB8_5
# BB#3:                                 # %if.end
	testb	$1, inkjet(%rip)
	jne	.LBB8_5
# BB#4:                                 # %cond.false
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$-1, %r14d
	testl	%eax, %eax
	jne	.LBB8_14
.LBB8_5:                                # %if.end.6
	leaq	82(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	opvp_map_color_rgb
	testl	%eax, %eax
	jne	.LBB8_7
# BB#6:                                 # %if.else.i
	movl	colorSpace(%rip), %eax
	movl	%eax, 32(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 52(%rsp)
	xorl	%eax, %eax
	cmpq	$-1, %rbp
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 48(%rsp)
	movzwl	82(%rsp), %eax
	movl	%eax, 44(%rsp)
	movzwl	84(%rsp), %eax
	movl	%eax, 40(%rsp)
	movzwl	86(%rsp), %eax
	movl	%eax, 36(%rsp)
.LBB8_7:                                # %opvp_set_brush_color.exit
	movq	apiEntry(%rip), %rcx
	movq	328(%rcx), %rax
	testq	%rax, %rax
	je	.LBB8_9
# BB#8:                                 # %if.then.9
	movl	printerContext(%rip), %edi
	leaq	32(%rsp), %rsi
	callq	*%rax
	movq	apiEntry(%rip), %rcx
.LBB8_9:                                # %if.end.12
	movq	400(%rcx), %rax
	testq	%rax, %rax
	je	.LBB8_11
# BB#10:                                # %if.then.17
	shll	$8, %r12d
	shll	$8, %r13d
	movl	printerContext(%rip), %edi
	movl	%r13d, %esi
	movl	%r12d, %edx
	callq	*%rax
.LBB8_11:                               # %if.end.22
	leaq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$2, %esi
	movl	$2, %edx
	movl	$4, %r9d
	movq	%rbx, %rdi
	movl	28(%rsp), %r8d          # 4-byte Reload
	movl	%r15d, %ecx
	callq	opvp_draw_image
	movl	%eax, %r14d
	movq	vectorFillColor(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB8_14
# BB#12:                                # %if.then.28
	movq	apiEntry(%rip), %rax
	movq	328(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB8_14
# BB#13:                                # %if.then.31
	movl	printerContext(%rip), %edi
	callq	*%rcx
	jmp	.LBB8_14
.LBB8_1:                                # %if.then
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	%rbp, %r9
	callq	gdev_vector_fill_rectangle
	movl	%eax, %r14d
.LBB8_14:                               # %cleanup
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	opvp_fill_rectangle, .Lfunc_end8-opvp_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_copy_mono,@function
opvp_copy_mono:                         # @opvp_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 176
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB9_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB9_3
# BB#2:                                 # %cond.false
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	$-1, %ebp
	testl	%eax, %eax
	jne	.LBB9_76
.LBB9_3:                                # %if.end
	movl	192(%rsp), %edx
	movl	184(%rsp), %esi
	testl	%ebx, %ebx
	je	.LBB9_4
# BB#5:                                 # %if.then.4
	movl	%ebx, %eax
	andl	$7, %eax
	movl	$8, %r12d
	subl	%eax, %r12d
	movl	$255, %eax
	movl	$255, %r15d
	movb	%r12b, %cl
	shll	%cl, %r15d
	movl	%ebx, %r13d
	andl	$7, %r13d
	cmovel	%eax, %r15d
	leal	7(%rsi), %eax
	sarl	$3, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	3(%rax), %eax
	andl	$-4, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movslq	%eax, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	%edx, %rsi
	movl	%edx, %r14d
	callq	calloc
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$-1, %ebp
	testq	%rax, %rax
	je	.LBB9_76
# BB#6:                                 # %if.end.18
	sarl	$3, %ebx
	movslq	%ebx, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	testl	%r13d, %r13d
	je	.LBB9_7
# BB#9:                                 # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB9_8
# BB#10:                                # %for.cond.22.preheader.lr.ph
	movslq	40(%rsp), %r9           # 4-byte Folded Reload
	movl	%r15d, %r14d
	orl	$-256, %r14d
	xorl	$255, %r14d
	movq	16(%rsp), %r8           # 8-byte Reload
	movl	%r8d, %edx
	andl	$1, %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%r8d, %r11d
	xorl	%r10d, %r10d
	movq	24(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB9_11:                               # %for.cond.22.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	testl	%r8d, %r8d
	jle	.LBB9_17
# BB#12:                                # %for.body.25.lr.ph
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	movb	(%rax), %bpl
	jne	.LBB9_14
# BB#13:                                #   in Loop: Header=BB9_11 Depth=1
	xorl	%edi, %edi
	jmp	.LBB9_15
	.align	16, 0x90
.LBB9_14:                               # %for.body.25.prol
                                        #   in Loop: Header=BB9_11 Depth=1
	movzbl	%bpl, %esi
	andl	%r14d, %esi
	movb	%r13b, %cl
	shll	%cl, %esi
	movzbl	1(%rax), %ebp
	movl	%ebp, %edi
	andl	%r15d, %edi
	movb	%r12b, %cl
	shrl	%cl, %edi
	orl	%esi, %edi
	movb	%dil, (%rdx)
	movl	$1, %edi
.LBB9_15:                               # %for.body.25.lr.ph.split
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	$1, %r8d
	je	.LBB9_17
	.align	16, 0x90
.LBB9_16:                               # %for.body.25
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bpl, %ebp
	andl	%r14d, %ebp
	movb	%r13b, %cl
	shll	%cl, %ebp
	movzbl	1(%rax,%rdi), %ebx
	movl	%r15d, %esi
	andl	%ebx, %esi
	movb	%r12b, %cl
	shrl	%cl, %esi
	orl	%ebp, %esi
	movb	%sil, (%rdx,%rdi)
	andl	%r14d, %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	movzbl	2(%rax,%rdi), %ebp
	movl	%ebp, %esi
	andl	%r15d, %esi
	movb	%r12b, %cl
	shrl	%cl, %esi
	orl	%ebx, %esi
	movb	%sil, 1(%rdx,%rdi)
	leaq	2(%rdi), %rdi
	cmpl	%edi, %r11d
	jne	.LBB9_16
.LBB9_17:                               # %for.inc.43
                                        #   in Loop: Header=BB9_11 Depth=1
	incl	%r10d
	addq	64(%rsp), %rdx          # 8-byte Folded Reload
	addq	%r9, %rax
	cmpl	192(%rsp), %r10d
	jne	.LBB9_11
	jmp	.LBB9_8
.LBB9_4:
	xorl	%r12d, %r12d
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %r13
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 36(%rsp)          # 4-byte Spill
	jmp	.LBB9_30
.LBB9_7:                                # %for.cond.48.preheader
	testl	%r14d, %r14d
	jle	.LBB9_8
# BB#18:                                # %for.cond.52.preheader.lr.ph
	movslq	40(%rsp), %r11          # 4-byte Folded Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	leal	-1(%rsi), %r10d
	incq	%r10
	movq	%r10, %rcx
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	andq	%rdx, %rcx
	leaq	-32(%rcx), %r9
	shrq	$5, %r9
	movl	%r9d, %r8d
	andl	$1, %r8d
	movl	%esi, %ebx
	movq	%rsi, %r15
	xorl	%ebp, %ebp
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	.align	16, 0x90
.LBB9_19:                               # %for.cond.52.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_24 Depth 2
                                        #     Child Loop BB9_27 Depth 2
	testl	%r15d, %r15d
	jle	.LBB9_28
# BB#20:                                # %overflow.checked
                                        #   in Loop: Header=BB9_19 Depth=1
	testq	%rcx, %rcx
	movl	$0, %esi
	je	.LBB9_26
# BB#21:                                # %vector.body.preheader
                                        #   in Loop: Header=BB9_19 Depth=1
	testq	%r8, %r8
	movl	$0, %edx
	jne	.LBB9_23
# BB#22:                                # %vector.body.prol
                                        #   in Loop: Header=BB9_19 Depth=1
	movdqu	(%rax), %xmm0
	movdqu	16(%rax), %xmm1
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm1, 16(%rdi)
	movl	$32, %edx
.LBB9_23:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB9_19 Depth=1
	testq	%r9, %r9
	movq	%rcx, %rsi
	je	.LBB9_26
	.align	16, 0x90
.LBB9_24:                               # %vector.body
                                        #   Parent Loop BB9_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rax,%rdx), %xmm0
	movups	16(%rax,%rdx), %xmm1
	movups	%xmm0, (%rdi,%rdx)
	movups	%xmm1, 16(%rdi,%rdx)
	movdqu	32(%rax,%rdx), %xmm0
	movdqu	48(%rax,%rdx), %xmm1
	movdqu	%xmm0, 32(%rdi,%rdx)
	movdqu	%xmm1, 48(%rdi,%rdx)
	addq	$64, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB9_24
# BB#25:                                #   in Loop: Header=BB9_19 Depth=1
	movq	%rcx, %rsi
.LBB9_26:                               # %middle.block
                                        #   in Loop: Header=BB9_19 Depth=1
	cmpq	%rsi, %r10
	je	.LBB9_28
	.align	16, 0x90
.LBB9_27:                               # %for.body.55
                                        #   Parent Loop BB9_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rax,%rsi), %dl
	movb	%dl, (%rdi,%rsi)
	incq	%rsi
	cmpl	%esi, %ebx
	jne	.LBB9_27
.LBB9_28:                               # %for.inc.63
                                        #   in Loop: Header=BB9_19 Depth=1
	incl	%ebp
	addq	64(%rsp), %rdi          # 8-byte Folded Reload
	addq	%r11, %rax
	cmpl	%r14d, %ebp
	jne	.LBB9_19
	jmp	.LBB9_29
.LBB9_8:
	movq	24(%rsp), %r13          # 8-byte Reload
.LBB9_29:
	movq	%r13, %r12
.LBB9_30:                               # %if.end.71
	movq	208(%rsp), %r15
	movq	200(%rsp), %r14
	cmpq	$-1, %r15
	movq	%r15, %rbx
	cmoveq	%r14, %rbx
	cmoveq	%r15, %r14
	cmpq	$-1, %r14
	je	.LBB9_31
# BB#32:                                # %if.then.79
	movq	apiEntry(%rip), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_34
# BB#33:                                # %if.then.81
	movl	printerContext(%rip), %edi
	xorl	%esi, %esi
	callq	*%rax
.LBB9_34:                               # %if.end.84
	leaq	114(%rsp), %rdx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	opvp_map_color_rgb
	testl	%eax, %eax
	jne	.LBB9_36
# BB#35:                                # %if.else.i
	movl	colorSpace(%rip), %eax
	movl	%eax, 72(%rsp)
	movq	$0, 104(%rsp)
	movl	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	movzwl	114(%rsp), %eax
	movl	%eax, 84(%rsp)
	movzwl	116(%rsp), %eax
	movl	%eax, 80(%rsp)
	movzwl	118(%rsp), %eax
	movl	%eax, 76(%rsp)
.LBB9_36:                               # %opvp_set_brush_color.exit
	movq	apiEntry(%rip), %rax
	movq	336(%rax), %rcx
	leaq	114(%rsp), %rbp
	testq	%rcx, %rcx
	je	.LBB9_38
# BB#37:                                # %if.then.87
	movl	printerContext(%rip), %edi
	leaq	72(%rsp), %rsi
	callq	*%rcx
	jmp	.LBB9_38
.LBB9_31:                               # %if.end.71.if.end.91_crit_edge
	leaq	114(%rsp), %rbp
.LBB9_38:                               # %if.end.91
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	opvp_map_color_rgb
	testl	%eax, %eax
	jne	.LBB9_40
# BB#39:                                # %if.else.i.111
	movl	colorSpace(%rip), %eax
	movl	%eax, 72(%rsp)
	movq	$0, 104(%rsp)
	movl	$0, 96(%rsp)
	movl	$0, 92(%rsp)
	xorl	%eax, %eax
	cmpq	$-1, %rbx
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 88(%rsp)
	movzwl	114(%rsp), %eax
	movl	%eax, 84(%rsp)
	movzwl	116(%rsp), %eax
	movl	%eax, 80(%rsp)
	movzwl	118(%rsp), %eax
	movl	%eax, 76(%rsp)
.LBB9_40:                               # %opvp_set_brush_color.exit112
	movq	apiEntry(%rip), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_42
# BB#41:                                # %if.then.94
	movl	printerContext(%rip), %edi
	leaq	72(%rsp), %rsi
	callq	*%rax
.LBB9_42:                               # %if.end.97
	cmpq	$-1, %r15
	je	.LBB9_44
# BB#43:
	movq	%r12, %r15
	movl	36(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB9_65
.LBB9_44:                               # %if.then.99
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	imull	192(%rsp), %ebx
	cmpq	48(%rsp), %r13          # 8-byte Folded Reload
	movq	%r12, %r15
	jne	.LBB9_46
# BB#45:                                # %if.then.102
	movslq	%ebx, %rdi
	callq	malloc
	movq	%rax, %r15
	movl	$-1, %ebp
	testq	%r15, %r15
	je	.LBB9_76
.LBB9_46:                               # %if.end.109
	testl	%ebx, %ebx
	jle	.LBB9_47
# BB#48:                                # %for.body.113.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rdx
	movq	%r13, %rbp
	je	.LBB9_57
# BB#49:                                # %vector.memcheck
	leaq	(%rbp,%rcx), %rdi
	xorl	%esi, %esi
	cmpq	%rdi, %r15
	ja	.LBB9_51
# BB#50:                                # %vector.memcheck
	leaq	(%r15,%rcx), %rdi
	cmpq	%rdi, %rbp
	jbe	.LBB9_57
.LBB9_51:                               # %vector.body147.preheader
	leaq	1(%rcx), %rsi
	movabsq	$8589934560, %rdi       # imm = 0x1FFFFFFE0
	andq	%rdi, %rsi
	addq	$-32, %rsi
	movq	%rsi, %rdi
	shrq	$5, %rdi
	xorl	%r8d, %r8d
	btq	$5, %rsi
	jb	.LBB9_53
# BB#52:                                # %vector.body147.prol
	movdqu	(%rbp), %xmm0
	movdqu	16(%rbp), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%r15)
	movdqu	%xmm1, 16(%r15)
	movl	$32, %r8d
.LBB9_53:                               # %vector.body147.preheader.split
	testq	%rdi, %rdi
	je	.LBB9_56
# BB#54:                                # %vector.body147.preheader.split.split
	incq	%rcx
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rcx
	subq	%r8, %rcx
	leaq	48(%rbp,%r8), %rsi
	leaq	48(%r15,%r8), %rdi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_55:                               # %vector.body147
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rdi)
	movdqu	%xmm2, -32(%rdi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rdi)
	movdqu	%xmm2, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-64, %rcx
	jne	.LBB9_55
.LBB9_56:
	movq	%rdx, %rsi
.LBB9_57:                               # %middle.block148
	cmpq	%rsi, %rax
	movl	36(%rsp), %r12d         # 4-byte Reload
	je	.LBB9_64
# BB#58:                                # %for.body.113.preheader174
	leal	1(%rbx), %eax
	movl	%esi, %edx
	orl	$1, %edx
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%ebx, %ecx
	subl	%edx, %ecx
	testb	$3, %dil
	je	.LBB9_61
# BB#59:                                # %for.body.113.prol.preheader
	leal	1(%rsi), %edx
	subl	%edx, %eax
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB9_60:                               # %for.body.113.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbp,%rsi), %dl
	notb	%dl
	movb	%dl, (%r15,%rsi)
	incq	%rsi
	incl	%eax
	jne	.LBB9_60
.LBB9_61:                               # %for.body.113.preheader174.split
	cmpl	$3, %ecx
	jb	.LBB9_64
# BB#62:                                # %for.body.113.preheader174.split.split
	subl	%esi, %ebx
	leaq	3(%r15,%rsi), %rax
	leaq	3(%rbp,%rsi), %rcx
	.align	16, 0x90
.LBB9_63:                               # %for.body.113
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rcx), %dl
	notb	%dl
	movb	%dl, -3(%rax)
	movb	-2(%rcx), %dl
	notb	%dl
	movb	%dl, -2(%rax)
	movb	-1(%rcx), %dl
	notb	%dl
	movb	%dl, -1(%rax)
	movb	(%rcx), %dl
	notb	%dl
	movb	%dl, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addl	$-4, %ebx
	jne	.LBB9_63
.LBB9_64:
	movq	%r15, %r13
	jmp	.LBB9_65
.LBB9_47:
	movq	%r15, %r13
	movl	36(%rsp), %r12d         # 4-byte Reload
.LBB9_65:                               # %if.end.124
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_67
# BB#66:                                # %if.then.130
	movl	176(%rsp), %edx
	shll	$8, %edx
	movl	32(%rsp), %esi          # 4-byte Reload
	shll	$8, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB9_67:                               # %if.end.135
	movq	%r13, 8(%rsp)
	movl	$1, (%rsp)
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	184(%rsp), %esi
	movl	192(%rsp), %edx
	movl	%esi, %ecx
	movl	%edx, %r8d
	movl	%r12d, %r9d
	callq	opvp_draw_image
	movl	%eax, %ebp
	cmpq	$-1, %r14
	je	.LBB9_70
# BB#68:                                # %if.then.144
	movq	apiEntry(%rip), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_70
# BB#69:                                # %if.then.147
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	callq	*%rax
.LBB9_70:                               # %if.end.151
	movq	vectorFillColor(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB9_73
# BB#71:                                # %if.then.153
	movq	apiEntry(%rip), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_73
# BB#72:                                # %if.then.156
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB9_73:                               # %if.end.160
	cmpq	48(%rsp), %r13          # 8-byte Folded Reload
	je	.LBB9_76
# BB#74:                                # %if.end.160
	testq	%r15, %r15
	je	.LBB9_76
# BB#75:                                # %if.then.165
	movq	%r15, %rdi
	callq	free
.LBB9_76:                               # %cleanup.168
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	opvp_copy_mono, .Lfunc_end9-opvp_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_copy_color,@function
opvp_copy_color:                        # @opvp_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 112
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r13
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB10_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB10_3
# BB#2:                                 # %cond.false
	movq	1736(%r13), %rax
	movq	%r13, %rdi
	callq	*(%rax)
	movl	$-1, %r15d
	testl	%eax, %eax
	jne	.LBB10_17
.LBB10_3:                               # %if.end
	movl	128(%rsp), %r15d
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	je	.LBB10_4
# BB#5:                                 # %if.then.4
	movzwl	108(%r13), %ebx
	addl	$7, %ebx
	shrl	$3, %ebx
	movl	%ebx, %ebp
	imull	120(%rsp), %ebp
	leal	3(%rbp), %eax
	andl	$-4, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	imull	%r15d, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%r15d, %ecx
	movl	$-1, %r15d
	testq	%rax, %rax
	je	.LBB10_17
# BB#6:                                 # %if.end.13
	testl	%ecx, %ecx
	movl	%ecx, %r15d
	jle	.LBB10_7
# BB#8:                                 # %for.body.lr.ph
	movq	%r13, 16(%rsp)          # 8-byte Spill
	imull	%r14d, %ebx
	movslq	%ebx, %rax
	leaq	(%rax,%r12), %rbx
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movslq	%ebp, %r14
	movl	%r15d, %r13d
	movslq	44(%rsp), %r15          # 4-byte Folded Reload
	movslq	52(%rsp), %r12          # 4-byte Folded Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB10_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r15, %rbp
	addq	%r12, %rbx
	decl	%r13d
	jne	.LBB10_9
# BB#10:
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rbx
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	16(%rsp), %r13          # 8-byte Reload
	movl	128(%rsp), %r15d
	jmp	.LBB10_11
.LBB10_4:
	movq	%r12, %rbp
	movl	52(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB10_12
.LBB10_7:
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rbx
.LBB10_11:                              # %if.end.20
	movl	44(%rsp), %r14d         # 4-byte Reload
.LBB10_12:                              # %if.end.20
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_14
# BB#13:                                # %if.then.26
	movl	112(%rsp), %edx
	shll	$8, %edx
	movl	48(%rsp), %esi          # 4-byte Reload
	shll	$8, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB10_14:                              # %if.end.31
	movq	%rbp, 8(%rsp)
	movl	$0, (%rsp)
	movq	%r13, %rdi
	movl	120(%rsp), %esi
	movl	%r15d, %edx
	movl	%esi, %ecx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	opvp_draw_image
	movl	%eax, %r15d
	cmpq	%r12, %rbp
	je	.LBB10_17
# BB#15:                                # %if.end.31
	testq	%rbx, %rbx
	je	.LBB10_17
# BB#16:                                # %if.then.45
	movq	%rbx, %rdi
	callq	free
.LBB10_17:                              # %cleanup
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	opvp_copy_color, .Lfunc_end10-opvp_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_get_params,@function
opvp_get_params:                        # @opvp_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	gdev_vector_get_params
	testl	%eax, %eax
	je	.LBB11_2
# BB#1:                                 # %cleanup
	popq	%rbx
	retq
.LBB11_2:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_get_params             # TAILCALL
.Lfunc_end11:
	.size	opvp_get_params, .Lfunc_end11-opvp_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_put_params,@function
opvp_put_params:                        # @opvp_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	_put_params
	testl	%eax, %eax
	je	.LBB12_2
# BB#1:                                 # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB12_2:                               # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gdev_vector_put_params  # TAILCALL
.Lfunc_end12:
	.size	opvp_put_params, .Lfunc_end12-opvp_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_fill_path,@function
opvp_fill_path:                         # @opvp_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 208
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_init
	xorl	%ebx, %ebx
	leaq	128(%rsp), %rbp
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_3:                               # %while.cond.i
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$3, %eax
	jne	.LBB13_1
# BB#4:                                 # %sw.bb.2.i
                                        #   in Loop: Header=BB13_1 Depth=1
	addl	$3, %ebx
	jmp	.LBB13_5
	.align	16, 0x90
.LBB13_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gx_path_enum_next
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB13_2
# BB#28:                                # %sw.bb.i
                                        #   in Loop: Header=BB13_1 Depth=1
	incl	%ebx
.LBB13_5:                               # %sw.epilog.i
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$1001, %ebx             # imm = 0x3E9
	jb	.LBB13_1
	jmp	.LBB13_25
	.align	16, 0x90
.LBB13_2:                               # %while.cond.i
                                        #   in Loop: Header=BB13_1 Depth=1
	testl	%eax, %eax
	jne	.LBB13_3
# BB#6:                                 # %lor.lhs.false
	testq	%r13, %r13
	je	.LBB13_19
# BB#7:                                 # %if.end.i
	cmpl	$0, 280(%r13)
	je	.LBB13_15
# BB#8:                                 # %if.then.1.i
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gx_path_enum_init
	xorl	%ebp, %ebp
	leaq	128(%rsp), %rbx
	.align	16, 0x90
.LBB13_9:                               # %while.cond.i.23
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB13_10
# BB#12:                                # %sw.bb.i.25
                                        #   in Loop: Header=BB13_9 Depth=1
	incl	%ebp
	jmp	.LBB13_14
	.align	16, 0x90
.LBB13_10:                              # %while.cond.i.23
                                        #   in Loop: Header=BB13_9 Depth=1
	cmpl	$3, %eax
	jne	.LBB13_11
# BB#13:                                # %sw.bb.2.i.27
                                        #   in Loop: Header=BB13_9 Depth=1
	addl	$3, %ebp
.LBB13_14:                              # %sw.epilog.i.30
                                        #   in Loop: Header=BB13_9 Depth=1
	cmpl	$1001, %ebp             # imm = 0x3E9
	jb	.LBB13_9
	jmp	.LBB13_25
	.align	16, 0x90
.LBB13_11:                              # %while.cond.i.23
                                        #   in Loop: Header=BB13_9 Depth=1
	testl	%eax, %eax
	jne	.LBB13_9
	jmp	.LBB13_19
.LBB13_15:                              # %if.end.2.i
	movq	%r13, %rdi
	callq	gx_cpath_list
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	cmoveq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB13_19
# BB#16:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	addl	$4, %eax
	cmpl	$1000, %eax             # imm = 0x3E8
	jg	.LBB13_25
# BB#18:                                # %for.inc.i
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB13_17
.LBB13_19:                              # %if.end
	movq	apiEntry(%rip), %rax
	cmpq	$0, 384(%rax)
	jne	.LBB13_24
# BB#20:                                # %if.then.5
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_cpath_inner_box
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_cpath_outer_box
	movl	48(%rsp), %eax
	cmpl	32(%rsp), %eax
	jne	.LBB13_25
# BB#21:                                # %lor.lhs.false.10
	movl	52(%rsp), %eax
	cmpl	36(%rsp), %eax
	jne	.LBB13_25
# BB#22:                                # %lor.lhs.false.15
	movl	56(%rsp), %eax
	cmpl	40(%rsp), %eax
	jne	.LBB13_25
# BB#23:                                # %lor.lhs.false.20
	movl	60(%rsp), %eax
	cmpl	44(%rsp), %eax
	jne	.LBB13_25
.LBB13_24:                              # %if.end.28
	movzbl	vector(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB13_26
.LBB13_25:                              # %if.then
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r12, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	gx_default_fill_path
	jmp	.LBB13_27
.LBB13_26:                              # %if.end.34
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r12, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	gdev_vector_fill_path
.LBB13_27:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	opvp_fill_path, .Lfunc_end13-opvp_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_stroke_path,@function
opvp_stroke_path:                       # @opvp_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 208
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_init
	xorl	%ebx, %ebx
	leaq	128(%rsp), %rbp
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_3:                               # %while.cond.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$3, %eax
	jne	.LBB14_1
# BB#4:                                 # %sw.bb.2.i
                                        #   in Loop: Header=BB14_1 Depth=1
	addl	$3, %ebx
	jmp	.LBB14_5
	.align	16, 0x90
.LBB14_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gx_path_enum_next
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB14_2
# BB#28:                                # %sw.bb.i
                                        #   in Loop: Header=BB14_1 Depth=1
	incl	%ebx
.LBB14_5:                               # %sw.epilog.i
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$1001, %ebx             # imm = 0x3E9
	jb	.LBB14_1
	jmp	.LBB14_25
	.align	16, 0x90
.LBB14_2:                               # %while.cond.i
                                        #   in Loop: Header=BB14_1 Depth=1
	testl	%eax, %eax
	jne	.LBB14_3
# BB#6:                                 # %lor.lhs.false
	testq	%r13, %r13
	je	.LBB14_19
# BB#7:                                 # %if.end.i
	cmpl	$0, 280(%r13)
	je	.LBB14_15
# BB#8:                                 # %if.then.1.i
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gx_path_enum_init
	xorl	%ebp, %ebp
	leaq	128(%rsp), %rbx
	.align	16, 0x90
.LBB14_9:                               # %while.cond.i.23
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB14_10
# BB#12:                                # %sw.bb.i.25
                                        #   in Loop: Header=BB14_9 Depth=1
	incl	%ebp
	jmp	.LBB14_14
	.align	16, 0x90
.LBB14_10:                              # %while.cond.i.23
                                        #   in Loop: Header=BB14_9 Depth=1
	cmpl	$3, %eax
	jne	.LBB14_11
# BB#13:                                # %sw.bb.2.i.27
                                        #   in Loop: Header=BB14_9 Depth=1
	addl	$3, %ebp
.LBB14_14:                              # %sw.epilog.i.30
                                        #   in Loop: Header=BB14_9 Depth=1
	cmpl	$1001, %ebp             # imm = 0x3E9
	jb	.LBB14_9
	jmp	.LBB14_25
	.align	16, 0x90
.LBB14_11:                              # %while.cond.i.23
                                        #   in Loop: Header=BB14_9 Depth=1
	testl	%eax, %eax
	jne	.LBB14_9
	jmp	.LBB14_19
.LBB14_15:                              # %if.end.2.i
	movq	%r13, %rdi
	callq	gx_cpath_list
	movq	40(%rax), %rcx
	testq	%rcx, %rcx
	cmoveq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB14_19
# BB#16:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB14_17:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	addl	$4, %eax
	cmpl	$1000, %eax             # imm = 0x3E8
	jg	.LBB14_25
# BB#18:                                # %for.inc.i
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB14_17
.LBB14_19:                              # %if.end
	movq	apiEntry(%rip), %rax
	cmpq	$0, 384(%rax)
	jne	.LBB14_24
# BB#20:                                # %if.then.5
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_cpath_inner_box
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_cpath_outer_box
	movl	48(%rsp), %eax
	cmpl	32(%rsp), %eax
	jne	.LBB14_25
# BB#21:                                # %lor.lhs.false.10
	movl	52(%rsp), %eax
	cmpl	36(%rsp), %eax
	jne	.LBB14_25
# BB#22:                                # %lor.lhs.false.15
	movl	56(%rsp), %eax
	cmpl	40(%rsp), %eax
	jne	.LBB14_25
# BB#23:                                # %lor.lhs.false.20
	movl	60(%rsp), %eax
	cmpl	44(%rsp), %eax
	jne	.LBB14_25
.LBB14_24:                              # %if.end.28
	movzbl	vector(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB14_26
.LBB14_25:                              # %if.then
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r12, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	gx_default_stroke_path
	jmp	.LBB14_27
.LBB14_26:                              # %if.end.34
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r12, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	gdev_vector_stroke_path
.LBB14_27:                              # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	opvp_stroke_path, .Lfunc_end14-opvp_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_fill_mask,@function
opvp_fill_mask:                         # @opvp_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 80
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movb	vector(%rip), %al
	andb	$1, %al
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	128(%rsp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	120(%rsp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	104(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gdev_vector_update_fill_color
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gdev_vector_update_clip_path
	movq	%rbx, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	gdev_vector_update_log_op
.LBB15_2:                               # %if.end
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movl	%r14d, %r9d
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_fill_mask    # TAILCALL
.Lfunc_end15:
	.size	opvp_fill_mask, .Lfunc_end15-opvp_fill_mask
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_2:
	.quad	4643211215818981376     # double 256
.LCPI16_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	opvp_begin_image,@function
opvp_begin_image:                       # @opvp_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp119:
	.cfi_def_cfa_offset 336
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%r8, 88(%rsp)           # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	344(%rsp), %r15
	movq	336(%rsp), %r12
	movq	576(%rbx), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB16_16
# BB#1:                                 # %if.end.i
	cmpl	$0, 280(%r12)
	je	.LBB16_12
# BB#2:                                 # %if.then.1.i
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movq	%r9, 96(%rsp)           # 8-byte Spill
	leaq	192(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_init
	xorl	%ebp, %ebp
	leaq	256(%rsp), %rbx
	.align	16, 0x90
.LBB16_3:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB16_4
# BB#7:                                 # %sw.bb.i
                                        #   in Loop: Header=BB16_3 Depth=1
	incl	%ebp
	jmp	.LBB16_9
	.align	16, 0x90
.LBB16_4:                               # %while.cond.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$3, %eax
	jne	.LBB16_5
# BB#8:                                 # %sw.bb.2.i
                                        #   in Loop: Header=BB16_3 Depth=1
	addl	$3, %ebp
.LBB16_9:                               # %sw.epilog.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	$1001, %ebp             # imm = 0x3E9
	jb	.LBB16_3
	jmp	.LBB16_10
	.align	16, 0x90
.LBB16_5:                               # %while.cond.i
                                        #   in Loop: Header=BB16_3 Depth=1
	testl	%eax, %eax
	jne	.LBB16_3
# BB#6:                                 # %checkCPath.exit.thread207
	movq	96(%rsp), %r9           # 8-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	344(%rsp), %r15
	jmp	.LBB16_16
.LBB16_10:                              # %checkCPath.exit.thread205
	movq	96(%rsp), %r9           # 8-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	344(%rsp), %r15
	movq	352(%rsp), %r13
	jmp	.LBB16_11
.LBB16_12:                              # %if.end.2.i
	movq	%r12, %rdi
	movq	%r9, %r13
	movl	%ecx, %r15d
	callq	gx_cpath_list
	movl	%r15d, %ecx
	movq	%r13, %r9
	movq	40(%rax), %rdx
	testq	%rdx, %rdx
	cmoveq	%rax, %rdx
	testq	%rdx, %rdx
	movq	344(%rsp), %r15
	movq	352(%rsp), %r13
	je	.LBB16_16
# BB#13:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB16_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	addl	$4, %eax
	cmpl	$1000, %eax             # imm = 0x3E8
	jg	.LBB16_11
# BB#15:                                # %for.inc.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB16_14
.LBB16_16:                              # %if.end
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%ecx, %r12d
	movq	%r9, 96(%rsp)           # 8-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movl	$0, color_index(%rip)
	movl	$st_vector_image_enum, %esi
	movl	$.L.str.204, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r14
	testq	%r14, %r14
	movq	88(%rsp), %rbp          # 8-byte Reload
	je	.LBB16_73
# BB#17:                                # %if.then.4
	movq	120(%rsp), %rbx         # 8-byte Reload
	leaq	44(%rbx), %rsi
	movl	$imageDecode, %edi
	movl	$520, %edx              # imm = 0x208
	callq	memcpy
	movq	%r15, 24(%r14)
	movq	%r14, 24(%rsp)
	movq	%r15, 8(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$opvp_image_enum_procs, 16(%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	%rbp, %r8
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	gdev_vector_begin_image
	testl	%eax, %eax
	jne	.LBB16_73
# BB#18:                                # %for.cond.preheader
	movslq	44(%r14), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	jle	.LBB16_31
# BB#19:                                # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	$0, %r13d
	je	.LBB16_30
# BB#20:                                # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB16_29
# BB#21:                                # %vector.body.preheader
	leaq	-8(%rax), %rdx
	movl	%edx, %edi
	shrl	$3, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB16_22
# BB#23:                                # %vector.body.prol.preheader
	leal	-8(%rax), %edi
	shrl	$3, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB16_24:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	48(%r14,%rsi,4), %xmm2
	movdqu	64(%r14,%rsi,4), %xmm3
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$8, %rsi
	incq	%rdi
	jne	.LBB16_24
	jmp	.LBB16_25
.LBB16_11:                              # %if.then
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r12, (%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	88(%rsp), %r8           # 8-byte Reload
	callq	gx_default_begin_image
	jmp	.LBB16_142
.LBB16_22:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB16_25:                              # %vector.body.preheader.split
	cmpq	$24, %rdx
	jb	.LBB16_28
# BB#26:                                # %vector.body.preheader.split.split
	movq	%rax, %rdx
	andq	$-8, %rdx
	subq	%rsi, %rdx
	leaq	160(%r14,%rsi,4), %rsi
	.align	16, 0x90
.LBB16_27:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rsi), %xmm2
	movdqu	-96(%rsi), %xmm3
	movdqu	-80(%rsi), %xmm4
	movdqu	-64(%rsi), %xmm5
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movdqu	-48(%rsi), %xmm4
	movdqu	-32(%rsi), %xmm5
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm5
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	subq	$-128, %rsi
	addq	$-32, %rdx
	jne	.LBB16_27
.LBB16_28:
	movq	%rcx, %rdx
.LBB16_29:                              # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r13d
	cmpq	%rdx, %rax
	je	.LBB16_31
	.align	16, 0x90
.LBB16_30:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	48(%r14,%rdx,4), %r13d
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB16_30
.LBB16_31:                              # %for.end
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 584(%rax)
	je	.LBB16_33
# BB#32:
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	jmp	.LBB16_48
.LBB16_33:                              # %if.then.13
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	movl	%eax, color_index(%rip)
	cmpl	$10, %eax
	jne	.LBB16_34
# BB#35:                                # %if.then.16
	movq	%rbx, %rdi
	callq	gs_cspace_base_space
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, base_color_index(%rip)
	movl	72(%rbx), %ecx
	cmpl	$255, %ecx
	jg	.LBB16_73
# BB#36:                                # %lor.lhs.false
	cmpl	$1, %r13d
	je	.LBB16_38
# BB#37:                                # %lor.lhs.false
	cmpl	$8, %r13d
	jne	.LBB16_73
.LBB16_38:                              # %if.else
	cmpl	$1, %eax
	je	.LBB16_47
# BB#39:                                # %if.else
	cmpl	$7, %eax
	jne	.LBB16_40
.LBB16_47:                              # %if.then.162
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	movq	80(%rbx), %rsi
	movl	88(%rbx), %edx
	movl	$palette, %edi
	callq	memcpy
	movl	$24, %r13d
	jmp	.LBB16_48
.LBB16_34:
	movl	%r12d, 76(%rsp)         # 4-byte Spill
.LBB16_48:                              # %if.end.200
	movb	$0, reverse_image(%rip)
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	8(%rax), %rdi
	leaq	160(%rsp), %rbx
	movq	%rbx, %rsi
	callq	gs_matrix_invert
	movq	112(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movl	FastImageMode(%rip), %ecx
	decl	%ecx
	cmpl	$4, %ecx
	movl	76(%rsp), %r12d         # 4-byte Reload
	ja	.LBB16_73
# BB#49:                                # %if.end.200
	movl	%r13d, %eax
	andl	$7, %eax
	movss	.LCPI16_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm1
	jmpq	*.LJTI16_0(,%rcx,8)
.LBB16_50:                              # %sw.bb
	movss	164(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
# BB#51:                                # %land.lhs.true.210
	movss	168(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
# BB#52:                                # %land.lhs.true.213
	movss	172(%rsp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm3
	jb	.LBB16_73
# BB#53:                                # %if.then.216
	movss	160(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB16_54
# BB#55:                                # %if.else.226
	testl	%eax, %eax
	jne	.LBB16_73
# BB#56:                                # %if.then.228
	movl	$1065353216, 160(%rsp)  # imm = 0x3F800000
	movl	$1065353216, 172(%rsp)  # imm = 0x3F800000
	xorps	%xmm0, %xmm0
	cvtsi2ssl	584(%r14), %xmm0
	mulss	%xmm1, %xmm0
	xorps	.LCPI16_1(%rip), %xmm1
	addss	176(%rsp), %xmm0
	movss	%xmm0, 176(%rsp)
	movb	$1, reverse_image(%rip)
	jmp	.LBB16_91
.LBB16_57:                              # %sw.bb.244
	movss	164(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
# BB#58:                                # %land.lhs.true.248
	movss	168(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
# BB#59:                                # %land.lhs.true.252
	movss	172(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB16_73
# BB#60:                                # %if.then.256
	movss	160(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB16_62
# BB#61:
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_65:                              # %sw.bb.275
	movss	164(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB16_76
	jp	.LBB16_76
# BB#66:                                # %land.lhs.true.279
	movss	168(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB16_76
	jp	.LBB16_76
# BB#67:                                # %if.then.283
	movss	160(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB16_70
# BB#68:                                # %land.lhs.true.287
	movss	172(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jae	.LBB16_69
.LBB16_70:                              # %lor.lhs.false.291
	ucomiss	%xmm0, %xmm1
	jb	.LBB16_62
# BB#71:                                # %land.lhs.true.295
	xorps	%xmm1, %xmm1
	ucomiss	172(%rsp), %xmm1
	jae	.LBB16_72
.LBB16_62:                              # %if.else.261
	testl	%eax, %eax
	jne	.LBB16_73
# BB#63:                                # %if.then.263
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	movss	%xmm1, 160(%rsp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	584(%r14), %xmm1
	mulss	%xmm0, %xmm1
	addss	176(%rsp), %xmm1
	movss	%xmm1, 176(%rsp)
	jmp	.LBB16_64
.LBB16_86:                              # %sw.bb.351
	movss	164(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_89
	jp	.LBB16_89
# BB#87:                                # %land.lhs.true.355
	movss	168(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_89
	jp	.LBB16_89
# BB#88:
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_76:                              # %if.else.313
	movss	160(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB16_73
	jp	.LBB16_73
# BB#77:                                # %land.lhs.true.317
	movss	172(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB16_73
	jp	.LBB16_73
# BB#78:                                # %if.then.321
	ucomiss	%xmm1, %xmm0
	jb	.LBB16_81
# BB#79:                                # %land.lhs.true.325
	xorps	%xmm1, %xmm1
	ucomiss	168(%rsp), %xmm1
	jae	.LBB16_80
.LBB16_81:                              # %lor.lhs.false.329
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB16_84
# BB#82:                                # %land.lhs.true.333
	movss	168(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jae	.LBB16_83
.LBB16_84:                              # %if.else.338
	testl	%eax, %eax
	jne	.LBB16_73
# BB#85:                                # %if.then.340
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	movss	%xmm1, 164(%rsp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	588(%r14), %xmm1
	mulss	%xmm0, %xmm1
	addss	180(%rsp), %xmm1
	movss	%xmm1, 180(%rsp)
.LBB16_64:                              # %if.end.371
	movb	$1, reverse_image(%rip)
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_89:                              # %lor.lhs.false.359
	movss	160(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
# BB#90:                                # %land.lhs.true.363
	movss	172(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	jne	.LBB16_73
	jp	.LBB16_73
	jmp	.LBB16_91
.LBB16_40:                              # %if.else
	cmpl	$2, %eax
	jne	.LBB16_45
# BB#41:                                # %if.then.25
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	movq	112(%rsp), %rbp         # 8-byte Reload
	js	.LBB16_44
# BB#42:                                # %for.body.35.lr.ph
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	80(%rax), %r12
	movq	$-1, %rdx
	xorl	%r13d, %r13d
	leaq	192(%rsp), %r15
.LBB16_43:                              # %for.body.35
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$6, %edx
	movq	%r15, %rdi
	callq	memset
	movslq	%r13d, %r13
	movzbl	(%r12,%r13), %ecx
	movl	%ecx, %edx
	shll	$7, %edx
	movl	%ecx, %eax
	shrl	%eax
	orl	%edx, %eax
	shrl	$5, %ecx
	subl	%ecx, %eax
	movzbl	1(%r12,%r13), %edx
	movl	%edx, %esi
	shll	$7, %esi
	movl	%edx, %ecx
	shrl	%ecx
	orl	%esi, %ecx
	shrl	$5, %edx
	subl	%edx, %ecx
	movzbl	2(%r12,%r13), %edx
	movl	%edx, %esi
	shll	$7, %esi
	movl	%edx, %ebx
	shrl	%ebx
	orl	%esi, %ebx
	shrl	$5, %edx
	subl	%edx, %ebx
	movzbl	3(%r12,%r13), %edx
	movl	%edx, %esi
	shll	$7, %esi
	movq	%rbp, %r8
	movl	%edx, %ebp
	shrl	%ebp
	orl	%esi, %ebp
	shrl	$5, %edx
	subl	%edx, %ebp
	movq	344(%rsp), %rdx
	movq	%rdx, (%rsp)
	movswl	%ax, %edi
	movswl	%cx, %esi
	movswl	%bx, %edx
	movswl	%bp, %ecx
	movq	%r8, %rbp
	movq	%r15, %r9
	callq	color_cmyk_to_rgb
	movq	48(%rsp), %rdx          # 8-byte Reload
	movswl	192(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, palette+3(%rdx,%rdx,2)
	movswl	194(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, palette+4(%rdx,%rdx,2)
	movswl	196(%rsp), %eax
	movl	%eax, %ecx
	shrl	$12, %ecx
	addl	%eax, %ecx
	shrl	$7, %ecx
	movb	%cl, palette+5(%rdx,%rdx,2)
	movq	80(%rsp), %rax          # 8-byte Reload
	movslq	72(%rax), %rax
	incq	%rdx
	addl	$4, %r13d
	cmpq	%rax, %rdx
	jl	.LBB16_43
.LBB16_44:                              # %for.end.155
	movl	$24, %r13d
	movq	344(%rsp), %r15
	movq	88(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB16_48
.LBB16_45:                              # %if.else.174
	testl	$-9, %eax
	jne	.LBB16_73
# BB#46:                                # %if.then.180
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	movq	80(%rbx), %rsi
	movl	88(%rbx), %edx
	movl	$palette, %edi
	callq	memcpy
	movl	$8, %r13d
	jmp	.LBB16_48
.LBB16_54:                              # %if.then.219
	movl	$1065353216, 160(%rsp)  # imm = 0x3F800000
	movl	$1065353216, 172(%rsp)  # imm = 0x3F800000
	jmp	.LBB16_91
.LBB16_69:
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_72:
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_80:
	movaps	%xmm3, %xmm1
	jmp	.LBB16_91
.LBB16_83:
	movaps	%xmm3, %xmm1
.LBB16_91:                              # %if.end.371
	testq	%rbp, %rbp
	jne	.LBB16_73
# BB#92:                                # %land.lhs.true.377
	movl	44(%r14), %eax
	cmpl	$1, %eax
	je	.LBB16_97
# BB#93:                                # %land.lhs.true.377
	cmpl	$3, %eax
	jne	.LBB16_73
# BB#94:                                # %land.lhs.true.385
	cmpl	$8, 48(%r14)
	jne	.LBB16_73
# BB#95:                                # %land.lhs.true.390
	cmpl	$8, 52(%r14)
	jne	.LBB16_73
# BB#96:                                # %land.lhs.true.395
	cmpl	$8, 56(%r14)
	jne	.LBB16_73
.LBB16_97:                              # %if.end.406
	movq	apiEntry(%rip), %rax
	cmpq	$0, 464(%rax)
	je	.LBB16_73
# BB#98:                                # %if.then.410
	movaps	%xmm1, 48(%rsp)         # 16-byte Spill
	movss	%xmm3, 80(%rsp)         # 4-byte Spill
	movq	352(%rsp), %rax
	movq	%r14, (%rax)
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 584(%rax)
	jne	.LBB16_113
# BB#99:                                # %if.then.413
	movq	apiEntry(%rip), %rcx
	movq	304(%rcx), %rax
	testq	%rax, %rax
	je	.LBB16_101
# BB#100:                               # %if.then.415
	movl	printerContext(%rip), %edi
	xorl	%esi, %esi
	callq	*%rax
	movb	$1, change_paint_mode(%rip)
	movq	apiEntry(%rip), %rcx
.LBB16_101:                             # %if.end.418
	movq	144(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB16_113
# BB#102:                               # %if.then.421
	movl	colorSpace(%rip), %eax
	movl	%eax, savedColorSpace(%rip)
	cmpl	$24, %r13d
	je	.LBB16_106
# BB#103:                               # %if.then.421
	cmpl	$8, %r13d
	je	.LBB16_105
# BB#104:                               # %if.then.421
	cmpl	$1, %r13d
	jne	.LBB16_130
.LBB16_105:                             # %sw.bb.428
	cmpb	$0, cspace_available+1(%rip)
	sete	%dl
	movl	$24, %esi
	movl	$8, %r13d
	cmovel	%esi, %r13d
	movzbl	%dl, %edx
	leal	1(%rdx,%rdx,4), %ebx
	jmp	.LBB16_109
.LBB16_73:                              # %if.end.580
	movq	352(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, (%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%r12d, %ecx
	movq	%rbp, %r8
.LBB16_74:                              # %cleanup.582
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	gx_default_begin_image
.LBB16_142:                             # %cleanup.582
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_106:                             # %sw.bb.434
	movl	$4, %ebx
	cmpb	$0, cspace_available+4(%rip)
	jne	.LBB16_108
# BB#107:                               # %select.mid
	movl	$6, %ebx
.LBB16_108:                             # %select.end
	movl	$24, %r13d
.LBB16_109:                             # %sw.epilog.441
	cmpl	%eax, %ebx
	je	.LBB16_112
# BB#110:                               # %if.then.444
	movl	printerContext(%rip), %edi
	movl	%ebx, %esi
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB16_130
# BB#111:                               # %if.end.450
	movl	%ebx, colorSpace(%rip)
	movb	$1, change_cspace(%rip)
.LBB16_112:                             # %if.then.458
	movl	76(%rsp), %r12d         # 4-byte Reload
.LBB16_113:                             # %if.then.458
	movss	176(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	180(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB16_116
# BB#114:                               # %if.then.458
	testb	$1, inkjet(%rip)
	jne	.LBB16_116
# BB#115:                               # %cond.false.i
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	1736(%rdi), %rax
	movss	%xmm0, 88(%rsp)         # 4-byte Spill
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	callq	*(%rax)
	movss	40(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testl	%eax, %eax
	jne	.LBB16_118
.LBB16_116:                             # %if.end.i.195
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	callq	floor
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_118
# BB#117:                               # %if.then.16.i
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI16_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm2, %ecx
	shll	$8, %ecx
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movzbl	%sil, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB16_118:                             # %if.end.464
	movl	$-1, %r15d
	cmpl	$1, FastImageMode(%rip)
	je	.LBB16_121
# BB#119:                               # %if.then.469
	movaps	160(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movl	176(%rsp), %eax
	movl	%eax, 144(%rsp)
	movl	180(%rsp), %eax
	movl	%eax, 148(%rsp)
	movq	apiEntry(%rip), %rax
	movq	96(%rax), %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB16_142
# BB#120:                               # %if.end.487
	movl	printerContext(%rip), %edi
	leaq	128(%rsp), %rsi
	callq	*%rcx
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jne	.LBB16_142
.LBB16_121:                             # %if.then.489
	movl	584(%r14), %ebp
	movaps	48(%rsp), %xmm1         # 16-byte Reload
	ucomiss	.LCPI16_0(%rip), %xmm1
	movl	%ebp, %r9d
	jne	.LBB16_122
	jnp	.LBB16_123
.LBB16_122:                             # %if.then.493
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI16_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r9d
.LBB16_123:                             # %if.end.504
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	movl	588(%r14), %r14d
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI16_0(%rip), %xmm1
	movl	%r14d, %eax
	jne	.LBB16_124
	jnp	.LBB16_125
.LBB16_124:                             # %if.then.508
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI16_3(%rip), %xmm0
	movl	%r9d, %ebx
	callq	floor
	movl	%ebx, %r9d
	cvttsd2si	%xmm0, %eax
.LBB16_125:                             # %if.end.519
	movq	apiEntry(%rip), %rcx
	movq	464(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB16_129
# BB#126:                               # %if.then.522
	imull	%ebp, %r13d
	addl	$31, %r13d
	sarl	$5, %r13d
	shll	$2, %r13d
	movl	printerContext(%rip), %edi
	movq	120(%rsp), %rcx         # 8-byte Reload
	cmpl	$0, 584(%rcx)
	setne	%cl
	movzbl	%cl, %r8d
	movl	%eax, (%rsp)
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	callq	*%rbx
	testl	%eax, %eax
	movq	344(%rsp), %r15
	je	.LBB16_141
# BB#127:                               # %if.then.536
	movq	apiEntry(%rip), %rax
	movq	480(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_130
# BB#128:                               # %if.then.538
	movl	printerContext(%rip), %edi
	callq	*%rax
	jmp	.LBB16_130
.LBB16_129:                             # %fallthrough
	testl	%r15d, %r15d
	movq	344(%rsp), %r15
	je	.LBB16_141
.LBB16_130:                             # %if.then.546
	movzbl	change_paint_mode(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movl	76(%rsp), %r14d         # 4-byte Reload
	movq	352(%rsp), %rbp
	jne	.LBB16_134
# BB#131:                               # %if.then.548
	movq	apiEntry(%rip), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_133
# BB#132:                               # %if.then.551
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	callq	*%rax
.LBB16_133:                             # %if.end.554
	movb	$0, change_paint_mode(%rip)
.LBB16_134:                             # %if.end.555
	movzbl	change_cspace(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	movq	120(%rsp), %rbx         # 8-byte Reload
	jne	.LBB16_138
# BB#135:                               # %if.then.557
	movl	savedColorSpace(%rip), %esi
	movl	%esi, colorSpace(%rip)
	movq	apiEntry(%rip), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_137
# BB#136:                               # %if.then.560
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB16_137:                             # %if.end.563
	movb	$0, change_cspace(%rip)
.LBB16_138:                             # %if.end.564
	movq	apiEntry(%rip), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.LBB16_140
# BB#139:                               # %if.then.566
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB16_140:                             # %cleanup.572
	movq	%rbp, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	jmp	.LBB16_74
.LBB16_141:                             # %if.then.578
	movb	$1, begin_image(%rip)
	xorl	%eax, %eax
	jmp	.LBB16_142
.Lfunc_end16:
	.size	opvp_begin_image, .Lfunc_end16-opvp_begin_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_50
	.quad	.LBB16_57
	.quad	.LBB16_65
	.quad	.LBB16_86
	.quad	.LBB16_91

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	oprp_print_page,@function
oprp_print_page:                        # @oprp_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 96
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	3(%rax), %ebx
	andl	$-4, %ebx
	movq	%rbp, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	832(%rbp), %r14d
	movslq	%ebx, %rsi
	movl	$1, %edi
	callq	calloc
	movq	%rax, %r15
	movl	$-1, %r12d
	testq	%r15, %r15
	je	.LBB17_46
# BB#1:                                 # %if.then.4
	movq	%rbp, %rdi
	callq	opvp_startpage
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	%ebx, %r12d
	jne	.LBB17_45
# BB#2:                                 # %if.then.11
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB17_5
# BB#3:                                 # %if.then.11
	testb	$1, inkjet(%rip)
	jne	.LBB17_5
# BB#4:                                 # %cond.false.i
	movq	1736(%rbp), %rax
	movq	%rbp, %rdi
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB17_7
.LBB17_5:                               # %if.end.i
	xorpd	%xmm0, %xmm0
	callq	floor
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.LBB17_7
# BB#6:                                 # %if.then.16.i
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	xorpd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	.LCPI17_0(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	movl	%esi, %edx
	callq	*%rax
.LBB17_7:                               # %opvp_moveto.exit
	movq	apiEntry(%rip), %rax
	movq	512(%rax), %rax
	movl	$-1, %r12d
	testq	%rax, %rax
	je	.LBB17_39
# BB#8:                                 # %if.end.25
	movl	printerContext(%rip), %edi
	movl	%r14d, %esi
	callq	*%rax
	movl	%eax, %ecx
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jle	.LBB17_9
# BB#10:                                # %if.end.25
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	testl	%ecx, %ecx
	jne	.LBB17_11
# BB#12:                                # %if.then.30.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r15
	xorl	%r13d, %r13d
	movl	%ecx, %r14d
	movl	%ecx, %ebx
	.align	16, 0x90
.LBB17_13:                              # %if.then.30
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_27 Depth 2
                                        #     Child Loop BB17_22 Depth 2
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	32(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB17_34
# BB#14:                                # %if.end.35
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	apiEntry(%rip), %rax
	movq	528(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB17_15
# BB#16:                                # %if.then.37
                                        #   in Loop: Header=BB17_13 Depth=1
	movzwl	108(%rbp), %eax
	cmpl	$8, %eax
	jbe	.LBB17_17
# BB#19:                                # %for.cond.42.preheader
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_28
# BB#20:                                # %for.body.45.lr.ph
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB17_22:                              # %for.body.45
                                        #   Parent Loop BB17_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdx), %esi
	cmpl	$255, %esi
	jne	.LBB17_23
# BB#21:                                # %for.cond.42
                                        #   in Loop: Header=BB17_22 Depth=2
	incq	%rdx
	cmpq	%r15, %rdx
	jl	.LBB17_22
	jmp	.LBB17_28
	.align	16, 0x90
.LBB17_15:                              #   in Loop: Header=BB17_13 Depth=1
	movl	%r14d, %eax
	jmp	.LBB17_29
	.align	16, 0x90
.LBB17_17:                              # %for.cond.66.preheader
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_18
# BB#26:                                # %for.body.69.lr.ph
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	32(%rsp), %rax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB17_27:                              # %for.body.69
                                        #   Parent Loop BB17_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rax,%rdx)
	jne	.LBB17_28
# BB#24:                                # %for.cond.66
                                        #   in Loop: Header=BB17_27 Depth=2
	incq	%rdx
	cmpq	%r15, %rdx
	jl	.LBB17_27
# BB#25:                                #   in Loop: Header=BB17_13 Depth=1
	movl	%r14d, %eax
	jmp	.LBB17_29
	.align	16, 0x90
.LBB17_28:                              # %if.then.82
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	callq	*%rcx
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB17_29
	jmp	.LBB17_31
.LBB17_18:                              #   in Loop: Header=BB17_13 Depth=1
	movl	%r14d, %eax
	jmp	.LBB17_29
.LBB17_23:                              #   in Loop: Header=BB17_13 Depth=1
	movl	%r14d, %eax
	.align	16, 0x90
.LBB17_29:                              # %if.then.93
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	apiEntry(%rip), %rcx
	movq	520(%rcx), %rcx
	testq	%rcx, %rcx
	movl	%eax, %r14d
	je	.LBB17_31
# BB#30:                                # %if.then.95
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	printerContext(%rip), %edi
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	*%rcx
	movl	%eax, %r14d
.LBB17_31:                              # %for.inc.104
                                        #   in Loop: Header=BB17_13 Depth=1
	incl	%r13d
	cmpl	20(%rsp), %r13d         # 4-byte Folded Reload
	jge	.LBB17_32
# BB#33:                                # %for.inc.104
                                        #   in Loop: Header=BB17_13 Depth=1
	testl	%r14d, %r14d
	movl	%r14d, %r12d
	je	.LBB17_13
	jmp	.LBB17_34
.LBB17_9:
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	%ebx, 4(%rsp)           # 4-byte Spill
.LBB17_11:
	movl	%ecx, %r14d
	movl	%ecx, %r12d
	movl	%ecx, %ebx
	jmp	.LBB17_34
.LBB17_32:
	movl	%r14d, %r12d
.LBB17_34:                              # %for.end.106
	testl	%ebx, %ebx
	jne	.LBB17_38
# BB#35:                                # %if.then.108
	movq	apiEntry(%rip), %rax
	movq	536(%rax), %rax
	testq	%rax, %rax
	je	.LBB17_37
# BB#36:                                # %if.then.110
	movl	printerContext(%rip), %edi
	callq	*%rax
	movl	%eax, %r14d
.LBB17_37:                              # %if.end.113
	testl	%r14d, %r14d
	cmovnel	%r14d, %r12d
.LBB17_38:                              # %if.end.118
	movl	4(%rsp), %ebx           # 4-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB17_39:                              # %if.end.118
	testl	%ebx, %ebx
	jne	.LBB17_45
# BB#40:                                # %if.then.120
	movl	printerContext(%rip), %edi
	xorl	%eax, %eax
	cmpl	$-1, %edi
	je	.LBB17_44
# BB#41:                                # %if.then.i
	movq	apiEntry(%rip), %rax
	movq	64(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB17_43
# BB#42:                                # %if.then.1.i
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB17_43:                              # %if.end.i.67
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB17_44:                              # %opvp_endpage.exit
	testl	%eax, %eax
	cmovnel	%eax, %r12d
.LBB17_45:                              # %if.then.127
	movq	%r15, %rdi
	callq	free
.LBB17_46:                              # %cleanup
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	oprp_print_page, .Lfunc_end17-oprp_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	oprp_open,@function
oprp_open:                              # @oprp_open
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$1, vector(%rip)
	movb	$1, inkjet(%rip)
	movq	$opvp_get_initial_matrix, 1152(%rdi)
	jmp	opvp_open               # TAILCALL
.Lfunc_end18:
	.size	oprp_open, .Lfunc_end18-oprp_open
	.cfi_endproc

	.align	16, 0x90
	.type	oprp_get_params,@function
oprp_get_params:                        # @oprp_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	je	.LBB19_2
# BB#1:                                 # %cleanup
	popq	%rbx
	retq
.LBB19_2:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_get_params             # TAILCALL
.Lfunc_end19:
	.size	oprp_get_params, .Lfunc_end19-oprp_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	oprp_put_params,@function
oprp_put_params:                        # @oprp_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp143:
	.cfi_def_cfa_offset 32
.Ltmp144:
	.cfi_offset %rbx, -24
.Ltmp145:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	_put_params
	testl	%eax, %eax
	je	.LBB20_2
# BB#1:                                 # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB20_2:                               # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gdev_prn_put_params     # TAILCALL
.Lfunc_end20:
	.size	oprp_put_params, .Lfunc_end20-oprp_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	_get_params,@function
_get_params:                            # @_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 32
	subq	$1184, %rsp             # imm = 0x4A0
.Ltmp149:
	.cfi_def_cfa_offset 1216
.Ltmp150:
	.cfi_offset %rbx, -32
.Ltmp151:
	.cfi_offset %r14, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	vectorDriver(%rip), %rdi
	movq	%rdi, 1168(%rsp)
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	movl	$0, %eax
	je	.LBB21_2
# BB#1:                                 # %cond.true
	callq	strlen
	incl	%eax
.LBB21_2:                               # %cond.end
	movl	%eax, 1176(%rsp)
	movl	$0, 1180(%rsp)
	leaq	1168(%rsp), %rdx
	movl	$.L.str.162, %esi
	movq	%r14, %rdi
	callq	param_write_string
	movl	%eax, %ebp
	movq	printerModel(%rip), %rdi
	movq	%rdi, 1152(%rsp)
	testq	%rdi, %rdi
	je	.LBB21_4
# BB#3:                                 # %cond.true.5
	callq	strlen
	movq	%rax, %rbx
	incl	%ebx
.LBB21_4:                               # %cond.end.9
	movl	%ebx, 1160(%rsp)
	movl	$0, 1164(%rsp)
	leaq	1152(%rsp), %rdx
	movl	$.L.str.163, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movq	jobInfo(%rip), %rdi
	movq	%rdi, 1136(%rsp)
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	movl	$0, %eax
	je	.LBB21_6
# BB#5:                                 # %cond.true.20
	callq	strlen
	incl	%eax
.LBB21_6:                               # %cond.end.24
	movl	%eax, 1144(%rsp)
	movl	$0, 1148(%rsp)
	leaq	1136(%rsp), %rdx
	movl	$.L.str.164, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movq	docInfo(%rip), %rdi
	movq	%rdi, 1120(%rsp)
	testq	%rdi, %rdi
	je	.LBB21_8
# BB#7:                                 # %cond.true.35
	callq	strlen
	movq	%rax, %rbx
	incl	%ebx
.LBB21_8:                               # %cond.end.39
	movl	%ebx, 1128(%rsp)
	movl	$0, 1132(%rsp)
	leaq	1120(%rsp), %rdx
	movl	$.L.str.165, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movl	FastImageMode(%rip), %eax
	decl	%eax
	cmpl	$4, %eax
	jbe	.LBB21_9
# BB#14:                                # %sw.default
	movq	fastImage(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB21_18
# BB#15:                                # %sw.epilog.thread
	callq	free
	movq	$0, fastImage(%rip)
	movq	$0, 1104(%rsp)
	xorl	%eax, %eax
	jmp	.LBB21_20
.LBB21_9:                               # %cond.end.39
	jmpq	*.LJTI21_0(,%rax,8)
.LBB21_16:                              # %sw.bb
	movl	$fastImage, %edi
	movl	$.L.str.166, %esi
	jmp	.LBB21_17
.LBB21_10:                              # %sw.bb.49
	movl	$fastImage, %edi
	movl	$.L.str.167, %esi
	jmp	.LBB21_17
.LBB21_11:                              # %sw.bb.51
	movl	$fastImage, %edi
	movl	$.L.str.168, %esi
	jmp	.LBB21_17
.LBB21_12:                              # %sw.bb.53
	movl	$fastImage, %edi
	movl	$.L.str.169, %esi
	jmp	.LBB21_17
.LBB21_13:                              # %sw.bb.55
	movl	$fastImage, %edi
	movl	$.L.str.170, %esi
.LBB21_17:                              # %sw.epilogthread-pre-split
	callq	opvp_alloc_string
	movq	fastImage(%rip), %rdi
.LBB21_18:                              # %sw.epilog
	movq	%rdi, 1104(%rsp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB21_20
# BB#19:                                # %cond.true.61
	callq	strlen
	incl	%eax
.LBB21_20:                              # %cond.end.65
	movl	%eax, 1112(%rsp)
	movl	$0, 1116(%rsp)
	leaq	1104(%rsp), %rdx
	movl	$.L.str.171, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movss	margins.0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.173, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, 1088(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	incl	%eax
	movl	%eax, 1096(%rsp)
	movl	$0, 1100(%rsp)
	leaq	1088(%rsp), %rdx
	movl	$.L.str.172, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movss	margins.3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.173, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, 1072(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	incl	%eax
	movl	%eax, 1080(%rsp)
	movl	$0, 1084(%rsp)
	leaq	1072(%rsp), %rdx
	movl	$.L.str.174, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movss	margins.2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.173, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, 1056(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	incl	%eax
	movl	%eax, 1064(%rsp)
	movl	$0, 1068(%rsp)
	leaq	1056(%rsp), %rdx
	movl	$.L.str.175, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movss	margins.1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.173, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, 1040(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	incl	%eax
	movl	%eax, 1048(%rsp)
	movl	$0, 1052(%rsp)
	leaq	1040(%rsp), %rdx
	movl	$.L.str.176, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovnel	%eax, %ebp
	movss	zoom.0(%rip), %xmm0     # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.173, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, 1024(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	incl	%eax
	movl	%eax, 1032(%rsp)
	movl	$0, 1036(%rsp)
	leaq	1024(%rsp), %rdx
	movl	$.L.str.177, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovel	%ebp, %eax
	addq	$1184, %rsp             # imm = 0x4A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_get_params, .Lfunc_end21-_get_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_16
	.quad	.LBB21_10
	.quad	.LBB21_11
	.quad	.LBB21_12
	.quad	.LBB21_13

	.text
	.align	16, 0x90
	.type	opvp_alloc_string,@function
opvp_alloc_string:                      # @opvp_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 32
.Ltmp156:
	.cfi_offset %rbx, -32
.Ltmp157:
	.cfi_offset %r14, -24
.Ltmp158:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB22_10
# BB#1:                                 # %if.end
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB22_5
# BB#2:                                 # %if.then.2
	testq	%r14, %r14
	je	.LBB22_4
# BB#3:                                 # %if.then.4
	movq	%r14, %rdi
	callq	strlen
	leaq	1(%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	jmp	.LBB22_7
.LBB22_5:                               # %if.else.7
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB22_10
# BB#6:                                 # %if.then.9
	movq	%r14, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
.LBB22_7:                               # %if.end.14
	testq	%r14, %r14
	sete	%cl
	movq	%rax, (%r15)
	testq	%rax, %rax
	sete	%dl
	cmpq	%r14, %rax
	je	.LBB22_10
# BB#8:                                 # %if.end.14
	orb	%dl, %cl
	jne	.LBB22_10
# BB#9:                                 # %if.then.18
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	(%r15), %rax
	jmp	.LBB22_10
.LBB22_4:                               # %if.else
	movq	%rbx, %rdi
	callq	free
	movq	$0, (%r15)
	xorl	%eax, %eax
.LBB22_10:                              # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	opvp_alloc_string, .Lfunc_end22-opvp_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	_put_params,@function
_put_params:                            # @_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 48
	subq	$160, %rsp
.Ltmp164:
	.cfi_def_cfa_offset 208
.Ltmp165:
	.cfi_offset %rbx, -48
.Ltmp166:
	.cfi_offset %r12, -40
.Ltmp167:
	.cfi_offset %r14, -32
.Ltmp168:
	.cfi_offset %r15, -24
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	144(%rsp), %rdx
	movl	$.L.str.162, %esi
	callq	param_read_string
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	movl	$0, %r14d
	je	.LBB23_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB23_3
# BB#2:                                 # %sw.bb
	movl	152(%rsp), %esi
	incl	%esi
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	realloc
	movq	%rax, %r14
	movq	144(%rsp), %rsi
	movl	152(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	152(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$vectorDriver, %edi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	jmp	.LBB23_4
.LBB23_3:                               # %sw.default
	movq	(%rbx), %rax
	movl	$.L.str.162, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	xorl	%r14d, %r14d
	movl	%ebp, %r15d
.LBB23_4:                               # %sw.epilog
	leaq	128(%rsp), %rdx
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_8
# BB#5:                                 # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB23_7
# BB#6:                                 # %sw.bb.9
	movl	136(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	128(%rsp), %rsi
	movl	136(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	136(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$printerModel, %edi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	jmp	.LBB23_8
.LBB23_7:                               # %sw.default.22
	movq	(%rbx), %rax
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_8:                               # %sw.epilog.26
	leaq	112(%rsp), %rdx
	movl	$.L.str.164, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_12
# BB#9:                                 # %sw.epilog.26
	testl	%ebp, %ebp
	jne	.LBB23_11
# BB#10:                                # %sw.bb.28
	movl	120(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	112(%rsp), %rsi
	movl	120(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	120(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$jobInfo, %edi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	jmp	.LBB23_12
.LBB23_11:                              # %sw.default.41
	movq	(%rbx), %rax
	movl	$.L.str.164, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_12:                              # %sw.epilog.45
	leaq	96(%rsp), %rdx
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_16
# BB#13:                                # %sw.epilog.45
	testl	%ebp, %ebp
	jne	.LBB23_15
# BB#14:                                # %sw.bb.47
	movl	104(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	104(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$docInfo, %edi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	jmp	.LBB23_16
.LBB23_15:                              # %sw.default.60
	movq	(%rbx), %rax
	movl	$.L.str.165, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_16:                              # %sw.epilog.64
	leaq	80(%rsp), %rdx
	movl	$.L.str.171, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_30
# BB#17:                                # %sw.epilog.64
	testl	%ebp, %ebp
	jne	.LBB23_29
# BB#18:                                # %sw.bb.66
	movl	88(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	80(%rsp), %rsi
	movl	88(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	88(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$fastImage, %edi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	movq	fastImage(%rip), %r12
	movl	$.L.str.166, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB23_19
# BB#20:                                # %if.else
	movl	$.L.str.178, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB23_21
# BB#22:                                # %if.else.85
	movl	$.L.str.179, %esi
	movl	$5, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB23_23
# BB#24:                                # %if.else.90
	movl	$.L.str.180, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB23_25
# BB#26:                                # %if.else.95
	movl	$.L.str.170, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB23_27
# BB#28:                                # %if.else.100
	movl	$0, FastImageMode(%rip)
	jmp	.LBB23_30
.LBB23_29:                              # %sw.default.105
	movq	(%rbx), %rax
	movl	$.L.str.171, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB23_30
.LBB23_19:                              # %if.then
	movl	$1, FastImageMode(%rip)
	jmp	.LBB23_30
.LBB23_21:                              # %if.then.84
	movl	$2, FastImageMode(%rip)
	jmp	.LBB23_30
.LBB23_23:                              # %if.then.89
	movl	$3, FastImageMode(%rip)
	jmp	.LBB23_30
.LBB23_25:                              # %if.then.94
	movl	$4, FastImageMode(%rip)
	jmp	.LBB23_30
.LBB23_27:                              # %if.then.99
	movl	$5, FastImageMode(%rip)
.LBB23_30:                              # %sw.epilog.109
	leaq	64(%rsp), %rdx
	movl	$.L.str.172, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_34
# BB#31:                                # %sw.epilog.109
	testl	%ebp, %ebp
	jne	.LBB23_33
# BB#32:                                # %sw.bb.111
	movl	72(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	64(%rsp), %rsi
	movl	72(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	72(%rsp), %eax
	movb	$0, (%r14,%rax)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, margins.0(%rip)
	jmp	.LBB23_34
.LBB23_33:                              # %sw.default.125
	movq	(%rbx), %rax
	movl	$.L.str.172, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_34:                              # %sw.epilog.129
	leaq	48(%rsp), %rdx
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_38
# BB#35:                                # %sw.epilog.129
	testl	%ebp, %ebp
	jne	.LBB23_37
# BB#36:                                # %sw.bb.131
	movl	56(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	56(%rsp), %eax
	movb	$0, (%r14,%rax)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, margins.3(%rip)
	jmp	.LBB23_38
.LBB23_37:                              # %sw.default.145
	movq	(%rbx), %rax
	movl	$.L.str.174, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_38:                              # %sw.epilog.149
	leaq	32(%rsp), %rdx
	movl	$.L.str.175, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_42
# BB#39:                                # %sw.epilog.149
	testl	%ebp, %ebp
	jne	.LBB23_41
# BB#40:                                # %sw.bb.151
	movl	40(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	32(%rsp), %rsi
	movl	40(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	40(%rsp), %eax
	movb	$0, (%r14,%rax)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, margins.2(%rip)
	jmp	.LBB23_42
.LBB23_41:                              # %sw.default.165
	movq	(%rbx), %rax
	movl	$.L.str.175, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_42:                              # %sw.epilog.169
	leaq	16(%rsp), %rdx
	movl	$.L.str.176, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_46
# BB#43:                                # %sw.epilog.169
	testl	%ebp, %ebp
	jne	.LBB23_45
# BB#44:                                # %sw.bb.171
	movl	24(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	16(%rsp), %rsi
	movl	24(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	24(%rsp), %eax
	movb	$0, (%r14,%rax)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, margins.1(%rip)
	jmp	.LBB23_46
.LBB23_45:                              # %sw.default.185
	movq	(%rbx), %rax
	movl	$.L.str.176, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB23_46:                              # %sw.epilog.189
	leaq	(%rsp), %rdx
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB23_54
# BB#47:                                # %sw.epilog.189
	testl	%ebp, %ebp
	jne	.LBB23_53
# BB#48:                                # %sw.bb.191
	movl	8(%rsp), %esi
	incl	%esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	8(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$.L.str.181, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB23_52
# BB#49:                                # %if.then.204
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	strtod
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, zoom.0(%rip)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB23_51
# BB#50:                                # %if.then.209
	movss	%xmm0, zoom.1(%rip)
	jmp	.LBB23_54
.LBB23_53:                              # %sw.default.214
	movq	(%rbx), %rax
	movl	$.L.str.177, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
	jmp	.LBB23_54
.LBB23_52:                              # %if.else.212
	movl	$1065353216, zoom.1(%rip) # imm = 0x3F800000
	movl	$1065353216, zoom.0(%rip) # imm = 0x3F800000
	movb	$1, zoomAuto(%rip)
	jmp	.LBB23_54
.LBB23_51:                              # %if.else.210
	movl	$1065353216, zoom.1(%rip) # imm = 0x3F800000
	movl	$1065353216, zoom.0(%rip) # imm = 0x3F800000
.LBB23_54:                              # %sw.epilog.218
	testq	%r14, %r14
	je	.LBB23_56
# BB#55:                                # %if.then.220
	movq	%r14, %rdi
	callq	free
.LBB23_56:                              # %if.end.221
	movl	%r15d, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_put_params, .Lfunc_end23-_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_load_vector_driver,@function
opvp_load_vector_driver:                # @opvp_load_vector_driver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 24
	subq	$1032, %rsp             # imm = 0x408
.Ltmp172:
	.cfi_def_cfa_offset 1056
.Ltmp173:
	.cfi_offset %rbx, -24
.Ltmp174:
	.cfi_offset %r14, -16
	movq	handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB24_2
# BB#1:                                 # %opvp_unload_vector_driver.exit
	callq	dlclose
	movq	$0, handle(%rip)
	movq	$0, OpenPrinter(%rip)
	movq	$0, ErrorNo(%rip)
.LBB24_2:                               # %if.end
	xorl	%ebx, %ebx
	cmpq	$0, vectorDriver(%rip)
	je	.LBB24_15
# BB#3:                                 # %if.end.4
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movq	vectorDriver(%rip), %rsi
	movl	$1023, %edx             # imm = 0x3FF
	movq	%rbx, %rdi
	callq	strncpy
	movl	$opvp_gen_dynamic_lib_name.buff, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movq	vectorDriver(%rip), %rsi
	movl	$1020, %edx             # imm = 0x3FC
	movq	%rbx, %rdi
	callq	strncpy
	movl	$.L.str.189, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$opvp_gen_dynamic_lib_name.buff+8, %r14d
	movl	$opvp_gen_dynamic_lib_name.buff+8, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movq	vectorDriver(%rip), %rsi
	movl	$1019, %edx             # imm = 0x3FB
	movq	%rbx, %rdi
	callq	strncpy
	movl	$.L.str.190, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$opvp_gen_dynamic_lib_name.buff+16, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbx, %rdi
	callq	memset
	movl	$.L.str.191, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	vectorDriver(%rip), %rsi
	movl	$1017, %edx             # imm = 0x3F9
	movq	%rbx, %rdi
	callq	strncat
	movl	$.L.str.189, %esi
	movq	%rbx, %rdi
	callq	strcat
	movl	$opvp_gen_dynamic_lib_name.buff+24, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	movq	$0, opvp_gen_dynamic_lib_name.buff+32(%rip)
	movq	opvp_gen_dynamic_lib_name.buff(%rip), %rdi
	jmp	.LBB24_4
	.align	16, 0x90
.LBB24_13:                              # %if.end.26
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	(%r14), %rdi
	addq	$8, %r14
.LBB24_4:                               # %if.end.4
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB24_14
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	$2, %esi
	callq	dlopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB24_13
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	$.L.str.185, %esi
	movq	%rbx, %rdi
	callq	dlsym
	movq	%rax, OpenPrinter(%rip)
	movl	$.L.str.186, %esi
	movq	%rbx, %rdi
	callq	dlsym
	movq	%rax, ErrorNo(%rip)
	testq	%rax, %rax
	je	.LBB24_9
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	OpenPrinter(%rip), %rax
	testq	%rax, %rax
	jne	.LBB24_8
.LBB24_9:                               # %if.end.18
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	$0, OpenPrinter(%rip)
	movq	$0, ErrorNo(%rip)
	movl	$.L.str.187, %esi
	movq	%rbx, %rdi
	callq	dlsym
	movq	%rax, OpenPrinter_0_2(%rip)
	movl	$.L.str.188, %esi
	movq	%rbx, %rdi
	callq	dlsym
	movq	%rax, ErrorNo(%rip)
	testq	%rax, %rax
	je	.LBB24_12
# BB#10:                                # %if.end.18
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	OpenPrinter_0_2(%rip), %rax
	testq	%rax, %rax
	jne	.LBB24_11
.LBB24_12:                              # %if.end.25
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	$0, OpenPrinter_0_2(%rip)
	movq	$0, ErrorNo(%rip)
	jmp	.LBB24_13
.LBB24_14:                              # %if.end.27.loopexit
	movq	handle(%rip), %rbx
	jmp	.LBB24_15
.LBB24_8:                               # %if.then.17
	movq	%rbx, handle(%rip)
	jmp	.LBB24_15
.LBB24_11:                              # %if.then.24
	movq	%rbx, handle(%rip)
.LBB24_15:                              # %if.end.27
	cmpq	$1, %rbx
	sbbl	%eax, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	opvp_load_vector_driver, .Lfunc_end24-opvp_load_vector_driver
	.cfi_endproc

	.align	16, 0x90
	.type	OpenPrinterWrapper,@function
OpenPrinterWrapper:                     # @OpenPrinterWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp175:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp177:
	.cfi_def_cfa_offset 32
.Ltmp178:
	.cfi_offset %rbx, -24
.Ltmp179:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	OpenPrinter(%rip), %rax
	testq	%rax, %rax
	je	.LBB25_1
# BB#26:                                # %if.then
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB25_1:                               # %if.else
	movq	OpenPrinter_0_2(%rip), %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	je	.LBB25_25
# BB#2:                                 # %if.then.2
	leaq	4(%rsp), %rdx
	movl	$apiEntry_0_2, %ecx
	callq	*%rbx
	movq	apiEntry_0_2(%rip), %rcx
	movups	8(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+8(%rip)
	movq	24(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+24(%rip)
	movq	$0, OpenPrinterWrapper.tEntry+32(%rip)
	movups	32(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+40(%rip)
	xorl	%edx, %edx
	cmpq	$0, 48(%rcx)
	je	.LBB25_4
# BB#3:                                 # %select.mid
	movl	$StartPageWrapper, %edx
.LBB25_4:                               # %select.end
	movq	%rdx, OpenPrinterWrapper.tEntry+56(%rip)
	movq	56(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+64(%rip)
	movdqu	64(%rcx), %xmm0
	pxor	%xmm1, %xmm1
	pcmpeqd	%xmm0, %xmm1
	pshufd	$177, %xmm1, %xmm0      # xmm0 = xmm1[1,0,3,2]
	pand	%xmm1, %xmm0
	movl	$QueryDeviceInfoWrapper, %edx
	movd	%rdx, %xmm1
	movl	$QueryDeviceCapabilityWrapper, %edx
	movd	%rdx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	pandn	%xmm2, %xmm0
	movdqu	%xmm0, OpenPrinterWrapper.tEntry+72(%rip)
	movups	80(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+88(%rip)
	movq	96(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+104(%rip)
	xorl	%edx, %edx
	cmpq	$0, 104(%rcx)
	je	.LBB25_6
# BB#5:                                 # %select.mid20
	movl	$InitGSWrapper, %edx
.LBB25_6:                               # %select.end19
	movq	%rdx, OpenPrinterWrapper.tEntry+112(%rip)
	movups	112(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+120(%rip)
	xorl	%edx, %edx
	cmpq	$0, 128(%rcx)
	je	.LBB25_8
# BB#7:                                 # %select.mid22
	movl	$QueryColorSpaceWrapper, %edx
.LBB25_8:                               # %select.end21
	movq	%rdx, OpenPrinterWrapper.tEntry+136(%rip)
	xorl	%edx, %edx
	cmpq	$0, 136(%rcx)
	je	.LBB25_10
# BB#9:                                 # %select.mid24
	movl	$SetColorSpaceWrapper, %edx
.LBB25_10:                              # %select.end23
	movq	%rdx, OpenPrinterWrapper.tEntry+144(%rip)
	xorl	%edx, %edx
	cmpq	$0, 144(%rcx)
	je	.LBB25_12
# BB#11:                                # %select.mid26
	movl	$GetColorSpaceWrapper, %edx
.LBB25_12:                              # %select.end25
	movq	%rdx, OpenPrinterWrapper.tEntry+152(%rip)
	movups	176(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+160(%rip)
	movups	192(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+176(%rip)
	movups	208(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+192(%rip)
	movq	apiEntry_0_2(%rip), %rcx
	xorl	%edx, %edx
	cmpq	$0, 224(%rcx)
	je	.LBB25_14
# BB#13:                                # %select.mid28
	movl	$SetLineDashWrapper, %edx
.LBB25_14:                              # %select.end27
	movq	%rdx, OpenPrinterWrapper.tEntry+208(%rip)
	xorl	%edx, %edx
	cmpq	$0, 232(%rcx)
	je	.LBB25_16
# BB#15:                                # %select.mid30
	movl	$GetLineDashWrapper, %edx
.LBB25_16:                              # %select.end29
	movq	%rdx, OpenPrinterWrapper.tEntry+216(%rip)
	movups	240(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+224(%rip)
	movups	256(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+240(%rip)
	movq	272(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+256(%rip)
	movups	280(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+264(%rip)
	movups	296(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+280(%rip)
	movups	312(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+296(%rip)
	movq	328(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+312(%rip)
	movdqu	336(%rcx), %xmm0
	pxor	%xmm1, %xmm1
	pcmpeqd	%xmm0, %xmm1
	pshufd	$177, %xmm1, %xmm0      # xmm0 = xmm1[1,0,3,2]
	pand	%xmm1, %xmm0
	movl	$SetFillColorWrapper, %edx
	movd	%rdx, %xmm1
	movl	$SetStrokeColorWrapper, %edx
	movd	%rdx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	pandn	%xmm2, %xmm0
	movdqu	%xmm0, OpenPrinterWrapper.tEntry+320(%rip)
	xorl	%edx, %edx
	cmpq	$0, 352(%rcx)
	je	.LBB25_18
# BB#17:                                # %select.mid32
	movl	$SetBgColorWrapper, %edx
.LBB25_18:                              # %select.end31
	movq	%rdx, OpenPrinterWrapper.tEntry+336(%rip)
	movups	360(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+344(%rip)
	movups	376(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+360(%rip)
	movups	392(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+376(%rip)
	movups	408(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+392(%rip)
	movq	apiEntry_0_2(%rip), %rcx
	movups	424(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+408(%rip)
	movups	440(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+424(%rip)
	movups	456(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+440(%rip)
	xorl	%edx, %edx
	cmpq	$0, 480(%rcx)
	je	.LBB25_20
# BB#19:                                # %select.mid34
	movl	$DrawImageWrapper, %edx
.LBB25_20:                              # %select.end33
	movq	%rdx, OpenPrinterWrapper.tEntry+456(%rip)
	xorl	%edx, %edx
	cmpq	$0, 488(%rcx)
	je	.LBB25_22
# BB#21:                                # %select.mid36
	movl	$StartDrawImageWrapper, %edx
.LBB25_22:                              # %select.end35
	movq	%rdx, OpenPrinterWrapper.tEntry+464(%rip)
	movq	496(%rcx), %rdx
	movq	%rdx, OpenPrinterWrapper.tEntry+472(%rip)
	xorl	%edx, %edx
	cmpq	$0, 504(%rcx)
	je	.LBB25_24
# BB#23:                                # %select.mid38
	movl	$EndDrawImageWrapper, %edx
.LBB25_24:                              # %select.end37
	movq	%rdx, OpenPrinterWrapper.tEntry+480(%rip)
	movups	512(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+488(%rip)
	movups	528(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+504(%rip)
	movups	544(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+520(%rip)
	movups	560(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+536(%rip)
	movups	576(%rcx), %xmm0
	movups	%xmm0, OpenPrinterWrapper.tEntry+552(%rip)
	movq	$OpenPrinterWrapper.tEntry, (%r14)
.LBB25_25:                              # %if.end.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	OpenPrinterWrapper, .Lfunc_end25-OpenPrinterWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_cat_string,@function
opvp_cat_string:                        # @opvp_cat_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp184:
	.cfi_def_cfa_offset 48
.Ltmp185:
	.cfi_offset %rbx, -40
.Ltmp186:
	.cfi_offset %r12, -32
.Ltmp187:
	.cfi_offset %r14, -24
.Ltmp188:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	testq	%r15, %r15
	je	.LBB26_4
# BB#1:                                 # %if.end
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB26_5
# BB#2:                                 # %if.end.3
	testq	%r14, %r14
	je	.LBB26_4
# BB#3:                                 # %if.then.5
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	strlen
	leaq	1(%r12,%rax), %rsi
	movq	%rbx, %rdi
	callq	realloc
	movq	%rax, (%r15)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	strcat
	movq	(%r15), %rbx
.LBB26_4:                               # %return
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB26_5:                               # %if.then.2
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	opvp_alloc_string       # TAILCALL
.Lfunc_end26:
	.size	opvp_cat_string, .Lfunc_end26-opvp_cat_string
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_to_utf8,@function
opvp_to_utf8:                           # @opvp_to_utf8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp191:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp192:
	.cfi_def_cfa_offset 80
.Ltmp193:
	.cfi_offset %rbx, -32
.Ltmp194:
	.cfi_offset %r14, -24
.Ltmp195:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	testq	%rbx, %rbx
	je	.LBB27_17
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.LBB27_17
# BB#2:                                 # %if.then.1
	leaq	(,%rax,4), %rcx
	movq	%rcx, 32(%rsp)
	leaq	1(,%rax,4), %rdi
	callq	malloc
	movq	%rax, %r14
	xorl	%edi, %edi
	movl	$.L.str.183, %esi
	callq	setlocale
	movl	$14, %edi
	callq	nl_langinfo
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB27_19
# BB#3:                                 # %land.lhs.true
	movl	$.L.str.202, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB27_11
# BB#4:                                 # %cond.true
	movzbl	(%r15), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB27_12
# BB#5:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB27_12
# BB#6:                                 # %if.then.17
	movb	1(%r15), %dl
	movzbl	%dl, %eax
	cmpq	$2, %rcx
	jb	.LBB27_12
# BB#7:                                 # %if.then.17
	testb	%dl, %dl
	jne	.LBB27_12
# BB#8:                                 # %if.then.27
	movb	2(%r15), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB27_12
# BB#9:                                 # %if.then.27
	testb	%dl, %dl
	jne	.LBB27_12
# BB#10:                                # %if.then.37
	movzbl	3(%r15), %eax
	jmp	.LBB27_12
.LBB27_17:                              # %if.end.68.thread
	movq	%rbx, 8(%rsp)
	jmp	.LBB27_21
.LBB27_11:                              # %cond.false
	movl	$.L.str.202, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB27_12:                              # %cond.end
	testq	%r14, %r14
	je	.LBB27_19
# BB#13:                                # %cond.end
	testl	%eax, %eax
	je	.LBB27_19
# BB#14:                                # %if.then.49
	movl	$.L.str.203, %edi
	movq	%r15, %rsi
	callq	iconv_open
	movq	%rax, %r15
	cmpq	$-1, %r15
	je	.LBB27_19
# BB#15:                                # %if.then.53
	movq	%rbx, 24(%rsp)
	movq	%r14, 16(%rsp)
	leaq	24(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	32(%rsp), %r8
	movq	%r15, %rdi
	callq	iconv
	cmpq	$-1, %rax
	je	.LBB27_16
# BB#18:                                # %if.then.66
	movq	16(%rsp), %rax
	movb	$0, (%rax)
	movq	%r15, %rdi
	callq	iconv_close
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	opvp_alloc_string
	movq	%rax, %rbx
	jmp	.LBB27_19
.LBB27_16:                              # %if.end.64.thread34
	movq	%r15, %rdi
	callq	iconv_close
.LBB27_19:                              # %if.end.68
	movq	%rbx, 8(%rsp)
	testq	%r14, %r14
	je	.LBB27_21
# BB#20:                                # %if.then.70
	movq	%r14, %rdi
	callq	free
	movq	8(%rsp), %rbx
.LBB27_21:                              # %if.end.71
	movq	%rbx, %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end27:
	.size	opvp_to_utf8, .Lfunc_end27-opvp_to_utf8
	.cfi_endproc

	.align	16, 0x90
	.type	StartPageWrapper,@function
StartPageWrapper:                       # @StartPageWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp198:
	.cfi_def_cfa_offset 32
.Ltmp199:
	.cfi_offset %rbx, -24
.Ltmp200:
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movq	apiEntry_0_2(%rip), %rax
	callq	*48(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB28_3
# BB#1:                                 # %if.end
	movq	apiEntry_0_2(%rip), %rax
	movq	160(%rax), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB28_3
# BB#2:                                 # %if.then.2
	movl	$240, %esi
	movl	%ebx, %edi
	callq	*%rcx
.LBB28_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	StartPageWrapper, .Lfunc_end28-StartPageWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	QueryDeviceCapabilityWrapper,@function
QueryDeviceCapabilityWrapper:           # @QueryDeviceCapabilityWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	movq	apiEntry_0_2(%rip), %rax
	movq	64(%rax), %rax
	movl	(%rdx), %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end29:
	.size	QueryDeviceCapabilityWrapper, .Lfunc_end29-QueryDeviceCapabilityWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	QueryDeviceInfoWrapper,@function
QueryDeviceInfoWrapper:                 # @QueryDeviceInfoWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	testb	$1, %ah
	jne	.LBB30_1
# BB#2:                                 # %if.end
	movl	%eax, %esi
	andl	$-196609, %esi          # imm = 0xFFFFFFFFFFFCFFFF
	orl	$131072, %esi           # imm = 0x20000
	testl	$65536, %eax            # imm = 0x10000
	cmovel	%eax, %esi
	movq	apiEntry_0_2(%rip), %rax
	movq	72(%rax), %rax
	movl	(%rdx), %edx
	jmpq	*%rax                   # TAILCALL
.LBB30_1:                               # %return
	movq	ErrorNo(%rip), %rax
	movl	$-4, (%rax)
	movl	$-1, %eax
	retq
.Lfunc_end30:
	.size	QueryDeviceInfoWrapper, .Lfunc_end30-QueryDeviceInfoWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	InitGSWrapper,@function
InitGSWrapper:                          # @InitGSWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp203:
	.cfi_def_cfa_offset 32
.Ltmp204:
	.cfi_offset %rbx, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movq	apiEntry_0_2(%rip), %rax
	callq	*104(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB31_3
# BB#1:                                 # %if.end
	movq	apiEntry_0_2(%rip), %rax
	movq	160(%rax), %rcx
	xorl	%ebp, %ebp
	testq	%rcx, %rcx
	je	.LBB31_3
# BB#2:                                 # %if.then.2
	movl	$240, %esi
	movl	%ebx, %edi
	callq	*%rcx
.LBB31_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	InitGSWrapper, .Lfunc_end31-InitGSWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	QueryColorSpaceWrapper,@function
QueryColorSpaceWrapper:                 # @QueryColorSpaceWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp206:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp208:
	.cfi_def_cfa_offset 32
.Ltmp209:
	.cfi_offset %rbx, -24
.Ltmp210:
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	apiEntry_0_2(%rip), %rax
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*128(%rax)
	testl	%eax, %eax
	jne	.LBB32_6
# BB#1:                                 # %for.cond.preheader
	xorl	%eax, %eax
	cmpl	$0, (%r14)
	jle	.LBB32_6
# BB#2:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB32_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rcx,4), %edx
	cmpq	$6, %rdx
	movl	$4, %esi
	ja	.LBB32_5
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	cspace_0_2_to_1_0(,%rdx,4), %esi
.LBB32_5:                               # %for.inc
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	%esi, (%rbx,%rcx,4)
	incq	%rcx
	movslq	(%r14), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB32_3
.LBB32_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end32:
	.size	QueryColorSpaceWrapper, .Lfunc_end32-QueryColorSpaceWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	SetColorSpaceWrapper,@function
SetColorSpaceWrapper:                   # @SetColorSpaceWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$5, %esi
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	ErrorNo(%rip), %rax
	movl	$-104, (%rax)
	movl	$-1, %eax
	retq
.LBB33_2:                               # %if.end
	cmpl	$8, %esi
	jb	.LBB33_5
# BB#3:                                 # %if.then.3
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %eax
	retq
.LBB33_5:                               # %if.end.4
	movl	%esi, %eax
	movq	apiEntry_0_2(%rip), %rcx
	movq	136(%rcx), %rcx
	movl	cspace_1_0_to_0_2(,%rax,4), %esi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end33:
	.size	SetColorSpaceWrapper, .Lfunc_end33-SetColorSpaceWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	GetColorSpaceWrapper,@function
GetColorSpaceWrapper:                   # @GetColorSpaceWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	apiEntry_0_2(%rip), %rax
	callq	*144(%rax)
	testl	%eax, %eax
	jne	.LBB34_4
# BB#1:                                 # %if.end
	movl	(%rbx), %ecx
	cmpq	$6, %rcx
	movl	$4, %edx
	ja	.LBB34_3
# BB#2:                                 # %if.else
	movl	cspace_0_2_to_1_0(,%rcx,4), %edx
.LBB34_3:                               # %if.end.4
	movl	%edx, (%rbx)
.LBB34_4:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end34:
	.size	GetColorSpaceWrapper, .Lfunc_end34-GetColorSpaceWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	SetLineDashWrapper,@function
SetLineDashWrapper:                     # @SetLineDashWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movq	apiEntry_0_2(%rip), %rcx
	movq	224(%rcx), %rcx
	movq	%rdx, %rsi
	movl	%eax, %edx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end35:
	.size	SetLineDashWrapper, .Lfunc_end35-SetLineDashWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	GetLineDashWrapper,@function
GetLineDashWrapper:                     # @GetLineDashWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	apiEntry_0_2(%rip), %rcx
	movq	232(%rcx), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end36:
	.size	GetLineDashWrapper, .Lfunc_end36-GetLineDashWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	SetStrokeColorWrapper,@function
SetStrokeColorWrapper:                  # @SetStrokeColorWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp213:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp214:
	.cfi_def_cfa_offset 64
.Ltmp215:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	testq	%rsi, %rsi
	je	.LBB37_1
# BB#2:                                 # %if.end
	movl	(%rsi), %ecx
	cmpq	$5, %rcx
	movl	$-4, %eax
	je	.LBB37_5
# BB#3:                                 # %if.end.3
	cmpl	$8, %ecx
	jb	.LBB37_4
.LBB37_1:                               # %if.then
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %eax
	jmp	.LBB37_5
.LBB37_4:                               # %if.end.8
	movl	cspace_1_0_to_0_2(,%rcx,4), %eax
	movl	%eax, 8(%rsp)
	movl	20(%rsi), %eax
	movl	%eax, 28(%rsp)
	movl	24(%rsi), %eax
	movl	%eax, 32(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 40(%rsp)
	leaq	12(%rsp), %rdi
	addq	$4, %rsi
	movl	$16, %edx
	callq	memcpy
	movq	apiEntry_0_2(%rip), %rax
	leaq	8(%rsp), %rsi
	movl	%ebx, %edi
	callq	*336(%rax)
.LBB37_5:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end37:
	.size	SetStrokeColorWrapper, .Lfunc_end37-SetStrokeColorWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	SetFillColorWrapper,@function
SetFillColorWrapper:                    # @SetFillColorWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp216:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp217:
	.cfi_def_cfa_offset 64
.Ltmp218:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	testq	%rsi, %rsi
	je	.LBB38_1
# BB#2:                                 # %if.end
	movl	(%rsi), %ecx
	cmpq	$5, %rcx
	movl	$-4, %eax
	je	.LBB38_5
# BB#3:                                 # %if.end.3
	cmpl	$8, %ecx
	jb	.LBB38_4
.LBB38_1:                               # %if.then
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %eax
	jmp	.LBB38_5
.LBB38_4:                               # %if.end.8
	movl	cspace_1_0_to_0_2(,%rcx,4), %eax
	movl	%eax, 8(%rsp)
	movl	20(%rsi), %eax
	movl	%eax, 28(%rsp)
	movl	24(%rsi), %eax
	movl	%eax, 32(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 40(%rsp)
	leaq	12(%rsp), %rdi
	addq	$4, %rsi
	movl	$16, %edx
	callq	memcpy
	movq	apiEntry_0_2(%rip), %rax
	leaq	8(%rsp), %rsi
	movl	%ebx, %edi
	callq	*344(%rax)
.LBB38_5:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end38:
	.size	SetFillColorWrapper, .Lfunc_end38-SetFillColorWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	SetBgColorWrapper,@function
SetBgColorWrapper:                      # @SetBgColorWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp219:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp220:
	.cfi_def_cfa_offset 64
.Ltmp221:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	testq	%rsi, %rsi
	je	.LBB39_1
# BB#2:                                 # %if.end
	movl	(%rsi), %eax
	cmpq	$5, %rax
	jne	.LBB39_4
# BB#3:                                 # %if.then.2
	movq	ErrorNo(%rip), %rax
	movl	$-104, (%rax)
	movl	$-1, %eax
	jmp	.LBB39_6
.LBB39_4:                               # %if.end.3
	cmpl	$8, %eax
	jb	.LBB39_5
.LBB39_1:                               # %if.then
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %eax
	jmp	.LBB39_6
.LBB39_5:                               # %if.end.8
	movl	cspace_1_0_to_0_2(,%rax,4), %eax
	movl	%eax, 8(%rsp)
	movl	20(%rsi), %eax
	movl	%eax, 28(%rsp)
	movl	24(%rsi), %eax
	movl	%eax, 32(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 40(%rsp)
	leaq	12(%rsp), %rdi
	addq	$4, %rsi
	movl	$16, %edx
	callq	memcpy
	movq	apiEntry_0_2(%rip), %rax
	leaq	8(%rsp), %rsi
	movl	%ebx, %edi
	callq	*352(%rax)
.LBB39_6:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end39:
	.size	SetBgColorWrapper, .Lfunc_end39-SetBgColorWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	DrawImageWrapper,@function
DrawImageWrapper:                       # @DrawImageWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp223:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp224:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp225:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp226:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp227:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp228:
	.cfi_def_cfa_offset 112
.Ltmp229:
	.cfi_offset %rbx, -56
.Ltmp230:
	.cfi_offset %r12, -48
.Ltmp231:
	.cfi_offset %r13, -40
.Ltmp232:
	.cfi_offset %r14, -32
.Ltmp233:
	.cfi_offset %r15, -24
.Ltmp234:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%ecx, %r12d
	movl	%edi, %r13d
	movl	112(%rsp), %r14d
	movl	$1, 36(%rsp)
	movq	apiEntry_0_2(%rip), %rax
	cmpl	$1, %ebp
	jne	.LBB40_8
# BB#1:                                 # %if.then
	movq	328(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB40_2
# BB#5:                                 # %if.end
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	%edx, 32(%rsp)          # 4-byte Spill
	leaq	36(%rsp), %rsi
	movl	%r13d, %edi
	callq	*%rcx
	movq	apiEntry_0_2(%rip), %rax
	cmpl	$1, 36(%rsp)
	movq	160(%rax), %rcx
	je	.LBB40_3
# BB#6:                                 # %if.then.5
	movl	$1, %r15d
	testq	%rcx, %rcx
	je	.LBB40_11
# BB#7:                                 # %if.then.7
	movl	$204, %esi
	movl	%r13d, %edi
	callq	*%rcx
	jmp	.LBB40_11
.LBB40_8:                               # %if.else.18
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.LBB40_10
# BB#9:                                 # %if.then.21
	movl	$204, %esi
	movl	%r13d, %edi
	callq	*%rax
.LBB40_10:                              # %if.end.24
	movl	colorSpace(%rip), %eax
	movl	colorDepth_0_2(,%rax,4), %r15d
	jmp	.LBB40_11
.LBB40_2:                               # %if.end.thread
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movq	160(%rax), %rcx
.LBB40_3:                               # %if.else
	movl	$1, %r15d
	testq	%rcx, %rcx
	je	.LBB40_11
# BB#4:                                 # %if.then.13
	movl	$184, %esi
	movl	%r13d, %edi
	callq	*%rcx
	movl	$1, %r15d
.LBB40_11:                              # %if.end.25
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	shll	$8, %ebx
	movl	%ebx, 48(%rsp)
	shll	$8, %r14d
	movl	%r14d, 52(%rsp)
	cmpl	$5, %ebp
	jb	.LBB40_13
# BB#12:                                # %if.then.33
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %ebx
	jmp	.LBB40_15
.LBB40_13:                              # %if.end.34
	movq	120(%rsp), %rax
	movl	%ebp, %ecx
	movl	iformat_1_0_to_0_2(,%rcx,4), %r8d
	movq	apiEntry_0_2(%rip), %rbp
	movl	32(%rsp), %edx          # 4-byte Reload
	imull	%edx, %r12d
	movq	%rax, 16(%rsp)
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%rsp)
	movl	%r13d, %edi
	movl	28(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %ecx
	movl	%r12d, %r9d
	callq	*480(%rbp)
	movl	%eax, %ebx
	movq	apiEntry_0_2(%rip), %rax
	movq	160(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB40_15
# BB#14:                                # %if.then.41
	movl	$240, %esi
	movl	%r13d, %edi
	callq	*%rcx
.LBB40_15:                              # %cleanup
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	DrawImageWrapper, .Lfunc_end40-DrawImageWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	StartDrawImageWrapper,@function
StartDrawImageWrapper:                  # @StartDrawImageWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp236:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp237:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp238:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp239:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp240:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp241:
	.cfi_def_cfa_offset 96
.Ltmp242:
	.cfi_offset %rbx, -56
.Ltmp243:
	.cfi_offset %r12, -48
.Ltmp244:
	.cfi_offset %r13, -40
.Ltmp245:
	.cfi_offset %r14, -32
.Ltmp246:
	.cfi_offset %r15, -24
.Ltmp247:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%edi, %r12d
	movl	96(%rsp), %r14d
	movl	$1, 20(%rsp)
	movq	apiEntry_0_2(%rip), %rax
	cmpl	$1, %ebp
	jne	.LBB41_8
# BB#1:                                 # %if.then
	movq	328(%rax), %rcx
	movl	%esi, %r15d
	testq	%rcx, %rcx
	je	.LBB41_2
# BB#5:                                 # %if.end
	movl	%edx, 16(%rsp)          # 4-byte Spill
	leaq	20(%rsp), %rsi
	movl	%r12d, %edi
	callq	*%rcx
	movq	apiEntry_0_2(%rip), %rax
	cmpl	$1, 20(%rsp)
	movq	160(%rax), %rcx
	je	.LBB41_3
# BB#6:                                 # %if.then.5
	movl	$1, %r13d
	testq	%rcx, %rcx
	je	.LBB41_11
# BB#7:                                 # %if.then.7
	movl	$204, %esi
	movl	%r12d, %edi
	callq	*%rcx
	jmp	.LBB41_11
.LBB41_8:                               # %if.else.18
	movl	%esi, %r15d
	movl	%edx, 16(%rsp)          # 4-byte Spill
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.LBB41_10
# BB#9:                                 # %if.then.21
	movl	$204, %esi
	movl	%r12d, %edi
	callq	*%rax
.LBB41_10:                              # %if.end.24
	movl	colorSpace(%rip), %eax
	movl	colorDepth_0_2(,%rax,4), %r13d
	jmp	.LBB41_11
.LBB41_2:                               # %if.end.thread
	movl	%edx, 16(%rsp)          # 4-byte Spill
	movq	160(%rax), %rcx
.LBB41_3:                               # %if.else
	movl	$1, %r13d
	testq	%rcx, %rcx
	je	.LBB41_11
# BB#4:                                 # %if.then.13
	movl	$184, %esi
	movl	%r12d, %edi
	callq	*%rcx
	movl	$1, %r13d
.LBB41_11:                              # %if.end.25
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	shll	$8, %ebx
	movl	%ebx, 32(%rsp)
	shll	$8, %r14d
	movl	%r14d, 36(%rsp)
	cmpl	$5, %ebp
	jb	.LBB41_13
# BB#12:                                # %if.then.33
	movq	ErrorNo(%rip), %rax
	movl	$-106, (%rax)
	movl	$-1, %eax
	jmp	.LBB41_14
.LBB41_13:                              # %if.end.34
	movl	%ebp, %eax
	movl	iformat_1_0_to_0_2(,%rax,4), %r8d
	movq	apiEntry_0_2(%rip), %rax
	movups	24(%rsp), %xmm0
	movups	%xmm0, (%rsp)
	movl	%r12d, %edi
	movl	%r15d, %esi
	movl	16(%rsp), %edx          # 4-byte Reload
	movl	%r13d, %ecx
	callq	*488(%rax)
.LBB41_14:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	StartDrawImageWrapper, .Lfunc_end41-StartDrawImageWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	EndDrawImageWrapper,@function
EndDrawImageWrapper:                    # @EndDrawImageWrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp250:
	.cfi_def_cfa_offset 32
.Ltmp251:
	.cfi_offset %rbx, -24
.Ltmp252:
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movq	apiEntry_0_2(%rip), %rax
	callq	*504(%rax)
	movl	%eax, %ebp
	movq	apiEntry_0_2(%rip), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$240, %esi
	movl	%ebx, %edi
	callq	*%rax
.LBB42_2:                               # %if.end
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	EndDrawImageWrapper, .Lfunc_end42-EndDrawImageWrapper
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_beginpage,@function
opvp_beginpage:                         # @opvp_beginpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	opvp_startpage
	testl	%eax, %eax
	jne	.LBB43_2
# BB#1:                                 # %if.else
	movl	$1, 8816(%rbx)
	movb	$1, beginPage(%rip)
	xorl	%eax, %eax
.LBB43_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end43:
	.size	opvp_beginpage, .Lfunc_end43-opvp_beginpage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_setlinewidth,@function
opvp_setlinewidth:                      # @opvp_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp255:
	.cfi_def_cfa_offset 16
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB44_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB44_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*(%rax)
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB44_6
.LBB44_3:                               # %if.end
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	floor
	movq	apiEntry(%rip), %rax
	movq	192(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB44_5
# BB#4:                                 # %if.then.7
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI44_0(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB44_5:                               # %if.end.10
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB44_6:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end44:
	.size	opvp_setlinewidth, .Lfunc_end44-opvp_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setlinecap,@function
opvp_setlinecap:                        # @opvp_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB45_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB45_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB45_6
.LBB45_3:                               # %if.end
	movq	apiEntry(%rip), %rax
	movq	256(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB45_5
# BB#4:                                 # %if.then.7
	xorl	%esi, %esi
	cmpl	$3, %ebx
	cmovbl	%ebx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB45_5:                               # %if.end.10
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB45_6:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end45:
	.size	opvp_setlinecap, .Lfunc_end45-opvp_setlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setlinejoin,@function
opvp_setlinejoin:                       # @opvp_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB46_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB46_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB46_6
.LBB46_3:                               # %if.end
	movq	apiEntry(%rip), %rax
	movq	272(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB46_5
# BB#4:                                 # %if.then.7
	xorl	%esi, %esi
	cmpl	$3, %ebx
	cmovbl	%ebx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB46_5:                               # %if.end.10
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB46_6:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end46:
	.size	opvp_setlinejoin, .Lfunc_end46-opvp_setlinejoin
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI47_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_setmiterlimit,@function
opvp_setmiterlimit:                     # @opvp_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp260:
	.cfi_def_cfa_offset 16
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB47_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB47_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	*(%rax)
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB47_6
.LBB47_3:                               # %if.end
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	floor
	movq	apiEntry(%rip), %rax
	movq	288(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB47_5
# BB#4:                                 # %if.then.7
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI47_0(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB47_5:                               # %if.end.10
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB47_6:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end47:
	.size	opvp_setmiterlimit, .Lfunc_end47-opvp_setmiterlimit
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI48_0:
	.quad	4643211215818981376     # double 2.560000e+02
	.quad	4643211215818981376     # double 2.560000e+02
.LCPI48_1:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_setdash,@function
opvp_setdash:                           # @opvp_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp262:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp263:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp264:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp265:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp266:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp267:
	.cfi_def_cfa_offset 128
.Ltmp268:
	.cfi_offset %rbx, -56
.Ltmp269:
	.cfi_offset %r12, -48
.Ltmp270:
	.cfi_offset %r13, -40
.Ltmp271:
	.cfi_offset %r14, -32
.Ltmp272:
	.cfi_offset %r15, -24
.Ltmp273:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %r15
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB48_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB48_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	$-1, %ebp
	testl	%eax, %eax
	jne	.LBB48_24
.LBB48_3:                               # %if.end
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	je	.LBB48_13
# BB#4:                                 # %if.then.4
	movl	%r14d, %esi
	movl	$4, %edi
	callq	calloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB48_5
# BB#6:                                 # %for.body.preheader
	leal	-1(%r14), %ebp
	leaq	1(%rbp), %rdx
	xorl	%eax, %eax
	movabsq	$8589934590, %rcx       # imm = 0x1FFFFFFFE
	movq	%rdx, %r13
	andq	%rcx, %r13
	je	.LBB48_10
# BB#7:                                 # %vector.body.preheader
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	incq	%rbp
	andq	%rcx, %rbp
	movq	%r12, %rbx
	movq	%r15, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB48_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	(%r15), %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	callq	floor
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	movapd	48(%rsp), %xmm0         # 16-byte Reload
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	callq	floor
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	cvttsd2si	%xmm1, %rax
	unpcklpd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movapd	%xmm1, %xmm3
	movd	%rax, %xmm1
	cvttsd2si	%xmm0, %rax
	movd	%rax, %xmm0
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	psllq	$8, %xmm1
	movapd	48(%rsp), %xmm2         # 16-byte Reload
	subpd	%xmm3, %xmm2
	mulpd	.LCPI48_0(%rip), %xmm2
	cvttsd2si	%xmm2, %rax
	movd	%rax, %xmm0
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	cvttsd2si	%xmm2, %rax
	movd	%rax, %xmm2
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	pand	.LCPI48_1(%rip), %xmm0
	por	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rbx)
	addq	$8, %r15
	addq	$8, %rbx
	addq	$-2, %rbp
	jne	.LBB48_8
# BB#9:
	movq	%r13, %rax
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
.LBB48_10:                              # %middle.block
	cmpq	%rax, %rdx
	je	.LBB48_13
# BB#11:                                # %for.body.preheader49
	leaq	(%r15,%rax,4), %rbx
	leaq	(%r12,%rax,4), %rbp
	movl	%r14d, %r15d
	subl	%eax, %r15d
	.align	16, 0x90
.LBB48_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI48_2(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbp)
	addq	$4, %rbx
	addq	$4, %rbp
	decl	%r15d
	jne	.LBB48_12
.LBB48_13:                              # %if.then.25
	movq	apiEntry(%rip), %rax
	movq	208(%rax), %rcx
	movl	$-1, %ebp
	testq	%rcx, %rcx
	je	.LBB48_22
# BB#14:                                # %if.end.30
	movl	printerContext(%rip), %edi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB48_22
# BB#15:                                # %if.then.37
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movq	apiEntry(%rip), %rcx
	movq	224(%rcx), %rax
	testq	%rax, %rax
	je	.LBB48_18
# BB#16:                                # %if.end.51
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI48_2(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB48_22
# BB#17:                                # %if.end.51.if.then.58_crit_edge
	movq	apiEntry(%rip), %rcx
.LBB48_18:                              # %if.then.58
	movq	240(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB48_19
# BB#20:                                # %if.then.60
	testl	%r14d, %r14d
	setne	%al
	movl	printerContext(%rip), %edi
	movzbl	%al, %esi
	callq	*%rcx
	testl	%eax, %eax
	setne	%al
	jmp	.LBB48_21
.LBB48_5:
	movl	$-1, %ebp
	jmp	.LBB48_22
.LBB48_19:
	xorl	%eax, %eax
.LBB48_21:                              # %if.end.64
	movzbl	%al, %ebp
	shll	$31, %ebp
	sarl	$31, %ebp
.LBB48_22:                              # %if.end.69
	testq	%r12, %r12
	je	.LBB48_24
# BB#23:                                # %if.then.71
	movq	%r12, %rdi
	callq	free
.LBB48_24:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	opvp_setdash, .Lfunc_end48-opvp_setdash
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setflat,@function
opvp_setflat:                           # @opvp_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp274:
	.cfi_def_cfa_offset 16
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB49_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB49_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB49_4
.LBB49_3:                               # %if.end
	xorl	%eax, %eax
.LBB49_4:                               # %cleanup
	popq	%rdx
	retq
.Lfunc_end49:
	.size	opvp_setflat, .Lfunc_end49-opvp_setflat
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setlogop,@function
opvp_setlogop:                          # @opvp_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end50:
	.size	opvp_setlogop, .Lfunc_end50-opvp_setlogop
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_can_handle_hl_color,@function
opvp_can_handle_hl_color:               # @opvp_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	opvp_can_handle_hl_color, .Lfunc_end51-opvp_can_handle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setfillcolor,@function
opvp_setfillcolor:                      # @opvp_setfillcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp275:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp276:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp278:
	.cfi_def_cfa_offset 48
.Ltmp279:
	.cfi_offset %rbx, -32
.Ltmp280:
	.cfi_offset %r14, -24
.Ltmp281:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB52_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB52_3
# BB#2:                                 # %cond.false
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB52_11
.LBB52_3:                               # %if.end
	movl	$gx_dc_type_data_pure, %ecx
	movl	$-15, %eax
	cmpq	%rcx, (%r14)
	jne	.LBB52_11
# BB#4:                                 # %if.end.4
	movq	vectorFillColor(%rip), %r15
	testq	%r15, %r15
	jne	.LBB52_6
# BB#5:                                 # %if.then.6
	movq	$opvp_setfillcolor.brush, vectorFillColor(%rip)
	movl	$opvp_setfillcolor.brush, %r15d
.LBB52_6:                               # %if.end.7
	movq	8(%r14), %r14
	leaq	10(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	opvp_map_color_rgb
	testl	%eax, %eax
	jne	.LBB52_8
# BB#7:                                 # %if.else.i
	movl	colorSpace(%rip), %eax
	movl	%eax, (%r15)
	movq	$0, 32(%r15)
	movl	$0, 24(%r15)
	movl	$0, 20(%r15)
	xorl	%eax, %eax
	cmpq	$-1, %r14
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 16(%r15)
	movzwl	10(%rsp), %eax
	movl	%eax, 12(%r15)
	movzwl	12(%rsp), %eax
	movl	%eax, 8(%r15)
	movzwl	14(%rsp), %eax
	movl	%eax, 4(%r15)
.LBB52_8:                               # %opvp_set_brush_color.exit
	movq	apiEntry(%rip), %rax
	movq	328(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB52_10
# BB#9:                                 # %if.then.10
	movl	printerContext(%rip), %edi
	movq	vectorFillColor(%rip), %rsi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB52_10:                              # %if.end.13
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB52_11:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end52:
	.size	opvp_setfillcolor, .Lfunc_end52-opvp_setfillcolor
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_setstrokecolor,@function
opvp_setstrokecolor:                    # @opvp_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp282:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp283:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp284:
	.cfi_def_cfa_offset 80
.Ltmp285:
	.cfi_offset %rbx, -24
.Ltmp286:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB53_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB53_3
# BB#2:                                 # %cond.false
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB53_9
.LBB53_3:                               # %if.end
	movl	$gx_dc_type_data_pure, %ecx
	movl	$-15, %eax
	cmpq	%rcx, (%r14)
	jne	.LBB53_9
# BB#4:                                 # %if.end.4
	movq	8(%r14), %r14
	leaq	50(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	opvp_map_color_rgb
	testl	%eax, %eax
	jne	.LBB53_6
# BB#5:                                 # %if.else.i
	movl	colorSpace(%rip), %eax
	movl	%eax, 8(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 28(%rsp)
	xorl	%eax, %eax
	cmpq	$-1, %r14
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 24(%rsp)
	movzwl	50(%rsp), %eax
	movl	%eax, 20(%rsp)
	movzwl	52(%rsp), %eax
	movl	%eax, 16(%rsp)
	movzwl	54(%rsp), %eax
	movl	%eax, 12(%rsp)
.LBB53_6:                               # %opvp_set_brush_color.exit
	movq	apiEntry(%rip), %rax
	movq	320(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB53_8
# BB#7:                                 # %if.then.7
	movl	printerContext(%rip), %edi
	leaq	8(%rsp), %rsi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB53_8:                               # %if.end.10
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB53_9:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end53:
	.size	opvp_setstrokecolor, .Lfunc_end53-opvp_setstrokecolor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI54_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_vector_dopath,@function
opvp_vector_dopath:                     # @opvp_vector_dopath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp288:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp289:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp290:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp291:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp292:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp293:
	.cfi_def_cfa_offset 256
.Ltmp294:
	.cfi_offset %rbx, -56
.Ltmp295:
	.cfi_offset %r12, -48
.Ltmp296:
	.cfi_offset %r13, -40
.Ltmp297:
	.cfi_offset %r14, -32
.Ltmp298:
	.cfi_offset %r15, -24
.Ltmp299:
	.cfi_offset %rbp, -16
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB54_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB54_3
# BB#2:                                 # %cond.false
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	$-1, %r13d
	testl	%eax, %eax
	jne	.LBB54_39
.LBB54_3:                               # %if.end
	leaq	184(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	movq	1736(%rbx), %rax
	je	.LBB54_5
# BB#4:                                 # %if.then.6
	movl	184(%rsp), %esi
	movl	188(%rsp), %edx
	movl	192(%rsp), %ecx
	movl	196(%rsp), %r8d
	movq	%rbx, %rdi
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	*96(%rax)
	movl	%eax, %r13d
	jmp	.LBB54_39
.LBB54_5:                               # %if.end.15
	movq	%rbx, %rdi
	movl	84(%rsp), %esi          # 4-byte Reload
	callq	*104(%rax)
	movl	%eax, %r13d
	movsd	8800(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	8808(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	leaq	120(%rsp), %rdi
	movq	%rbp, %rsi
	callq	gx_path_enum_init
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	je	.LBB54_7
# BB#6:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB54_35:                              # %while.end
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	1736(%rdi), %rax
	movl	84(%rsp), %esi          # 4-byte Reload
	callq	*144(%rax)
	testl	%eax, %eax
	cmovnel	%eax, %r13d
	testq	%r14, %r14
	je	.LBB54_37
# BB#36:                                # %if.then.277
	movq	%r14, %rdi
	callq	free
.LBB54_37:                              # %if.end.278
	movq	32(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB54_39
# BB#38:                                # %if.then.280
	callq	free
	jmp	.LBB54_39
.LBB54_7:                               # %while.body.lr.ph
	movl	$-1, 8(%rsp)            # 4-byte Folded Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	xorpd	%xmm4, %xmm4
	xorpd	%xmm1, %xmm1
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB54_8:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_14 Depth 2
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	%xmm4, 24(%rsp)         # 8-byte Spill
	leaq	120(%rsp), %rdi
	leaq	96(%rsp), %rsi
	callq	gx_path_enum_next
	movl	%eax, %ecx
	testb	$1, %bpl
	je	.LBB54_9
# BB#10:                                # %if.else
                                        #   in Loop: Header=BB54_8 Depth=1
	cmpl	%r15d, %ecx
	je	.LBB54_11
# BB#12:                                # %if.then.39
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movslq	%r12d, %rbx
	leaq	(,%rbx,8), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	realloc
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB54_15
# BB#13:                                # %for.body.preheader
                                        #   in Loop: Header=BB54_8 Depth=1
	leaq	8(%r14), %rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rbp
	movl	%r12d, %r13d
	.align	16, 0x90
.LBB54_14:                              # %for.body
                                        #   Parent Loop BB54_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	-8(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI54_1(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI54_1(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbp)
	addq	$16, %rbx
	addq	$8, %rbp
	decl	%r13d
	jne	.LBB54_14
.LBB54_15:                              # %for.end
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	$-1, %r13d
	decl	%r15d
	cmpl	$3, %r15d
	movq	72(%rsp), %rbx          # 8-byte Reload
	ja	.LBB54_39
# BB#16:                                # %for.end
                                        #   in Loop: Header=BB54_8 Depth=1
	xorl	%ebp, %ebp
	jmpq	*.LJTI54_0(,%r15,8)
.LBB54_17:                              # %sw.bb
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.LBB54_20
# BB#18:                                # %if.then.83
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	printerContext(%rip), %edi
	decl	%r12d
	movslq	%r12d, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,8), %esi
	movl	4(%rdx,%rcx,8), %edx
	callq	*%rax
	jmp	.LBB54_19
	.align	16, 0x90
.LBB54_9:                               # %if.then.26
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	96(%rsp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	divsd	48(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	shrq	$32, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	40(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movl	$16, %esi
	movq	%r14, %rdi
	movl	%ecx, %ebx
	callq	realloc
	movl	%ebx, %ecx
	movq	%rax, %r14
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r14)
	movl	$1, %r12d
.LBB54_11:                              #   in Loop: Header=BB54_8 Depth=1
	xorl	%ebp, %ebp
	movq	72(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB54_28
.LBB54_21:                              # %sw.bb.99
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	apiEntry(%rip), %rax
	movq	408(%rax), %rax
	testq	%rax, %rax
	je	.LBB54_20
# BB#22:                                # %if.then.101
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	printerContext(%rip), %edi
	decl	%r12d
	movq	32(%rsp), %rcx          # 8-byte Reload
	addq	$8, %rcx
	movl	$1, %esi
	movl	%r12d, %edx
	callq	*%rax
.LBB54_19:                              # %if.end.94
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	%eax, 8(%rsp)           # 4-byte Spill
.LBB54_20:                              # %if.end.94
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	negl	%eax
	sbbl	%ebp, %ebp
	jmp	.LBB54_27
.LBB54_23:                              # %if.then.113
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	$4, %edi
	movl	$2, %esi
	callq	calloc
	movq	%rax, %r13
	movl	%r12d, (%r13)
	movl	$0, 4(%r13)
	movq	apiEntry(%rip), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.LBB54_25
# BB#24:                                # %if.then.119
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	printerContext(%rip), %edi
	decl	%r12d
	movq	32(%rsp), %rdx          # 8-byte Reload
	addq	$8, %rdx
	movl	%r12d, %esi
	callq	*%rax
	movl	%eax, 8(%rsp)           # 4-byte Spill
.LBB54_25:                              # %sw.epilog
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	negl	%eax
	sbbl	%ebp, %ebp
	testq	%r13, %r13
	je	.LBB54_27
# BB#26:                                # %if.then.130
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	%r13, %rdi
	callq	free
.LBB54_27:                              # %if.end.131
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	$16, %esi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r14)
	movl	$1, %r12d
	movl	12(%rsp), %ecx          # 4-byte Reload
.LBB54_28:                              # %if.end.135
                                        #   in Loop: Header=BB54_8 Depth=1
	movl	$-1, %r13d
	movl	%ecx, %eax
	cmpl	$4, %ecx
	ja	.LBB54_39
# BB#29:                                # %if.end.135
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	%ebp, %r13d
	jmpq	*.LJTI54_1(,%rax,8)
.LBB54_30:                              # %sw.bb.139
                                        #   in Loop: Header=BB54_8 Depth=1
	leal	1(%r12), %ebp
	movslq	%ebp, %rsi
	shlq	$4, %rsi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	96(%rsp), %rax
	cvtsi2sdl	%eax, %xmm4
	movsd	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm4
	divsd	48(%rsp), %xmm4         # 8-byte Folded Reload
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	movsd	%xmm4, (%r14,%rcx)
	shrq	$32, %rax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	40(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 8(%r14,%rcx)
	movl	$1, %r15d
	movl	%ebp, %r12d
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	%xmm4, 64(%rsp)         # 8-byte Spill
	jmp	.LBB54_34
.LBB54_31:                              # %sw.bb.161
                                        #   in Loop: Header=BB54_8 Depth=1
	leal	1(%r12), %ebp
	movslq	%ebp, %rsi
	shlq	$4, %rsi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	96(%rsp), %rax
	cvtsi2sdl	%eax, %xmm4
	movsd	.LCPI54_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm4
	divsd	48(%rsp), %xmm4         # 8-byte Folded Reload
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	movsd	%xmm4, (%r14,%rcx)
	shrq	$32, %rax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	40(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 8(%r14,%rcx)
	movl	$2, %r15d
	movl	%ebp, %r12d
	jmp	.LBB54_34
.LBB54_32:                              # %sw.bb.184
                                        #   in Loop: Header=BB54_8 Depth=1
	leal	3(%r12), %ebp
	movslq	%ebp, %rsi
	shlq	$4, %rsi
	movq	%r14, %rdi
	callq	realloc
	movq	%rax, %r14
	movq	96(%rsp), %rcx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI54_0(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movslq	%r12d, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	movsd	%xmm0, (%r14,%rdx)
	shrq	$32, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%r14,%rdx)
	movq	104(%rsp), %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	leal	1(%rax), %edx
	movslq	%edx, %rdx
	shlq	$4, %rdx
	movsd	%xmm0, (%r14,%rdx)
	shrq	$32, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%r14,%rdx)
	movq	112(%rsp), %rcx
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm3, %xmm4
	divsd	%xmm1, %xmm4
	addl	$2, %eax
	cltq
	shlq	$4, %rax
	movsd	%xmm4, (%r14,%rax)
	shrq	$32, %rcx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%r14,%rax)
	movl	$3, %r15d
	movl	%ebp, %r12d
	jmp	.LBB54_34
.LBB54_33:                              # %sw.bb.256
                                        #   in Loop: Header=BB54_8 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	1736(%rdi), %rax
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	56(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	84(%rsp), %esi          # 4-byte Reload
	callq	*136(%rax)
	testl	%eax, %eax
	cmovnel	%eax, %r13d
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%r14)
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%r14)
	movl	$4, %r15d
	movapd	%xmm0, %xmm4
.LBB54_34:                              # %while.cond.backedge
                                        #   in Loop: Header=BB54_8 Depth=1
	movb	$1, %bpl
	testl	%r13d, %r13d
	je	.LBB54_8
	jmp	.LBB54_35
.LBB54_39:                              # %cleanup
	movl	%r13d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	opvp_vector_dopath, .Lfunc_end54-opvp_vector_dopath
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI54_0:
	.quad	.LBB54_17
	.quad	.LBB54_21
	.quad	.LBB54_23
	.quad	.LBB54_27
.LJTI54_1:
	.quad	.LBB54_35
	.quad	.LBB54_30
	.quad	.LBB54_31
	.quad	.LBB54_32
	.quad	.LBB54_33

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI55_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI55_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_vector_dorect,@function
opvp_vector_dorect:                     # @opvp_vector_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp301:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp302:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp303:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp304:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp305:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp306:
	.cfi_def_cfa_offset 112
.Ltmp307:
	.cfi_offset %rbx, -56
.Ltmp308:
	.cfi_offset %r12, -48
.Ltmp309:
	.cfi_offset %r13, -40
.Ltmp310:
	.cfi_offset %r14, -32
.Ltmp311:
	.cfi_offset %r15, -24
.Ltmp312:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %rbp
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB55_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB55_3
# BB#2:                                 # %cond.false
	movq	1736(%rbp), %rax
	movq	%rbp, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB55_8
.LBB55_3:                               # %if.end
	movq	1736(%rbp), %rax
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	jne	.LBB55_7
# BB#4:                                 # %if.then.10
	movsd	8800(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	8808(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	cvtsi2sdl	%r13d, %xmm0
	movsd	.LCPI55_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r12d, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI55_1(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI55_1(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 36(%rsp)
	cvtsi2sdl	%r15d, %xmm2
	movsd	.LCPI55_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	8(%rsp), %xmm2          # 8-byte Folded Reload
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm0, %xmm1
	divsd	16(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI55_1(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 40(%rsp)
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI55_1(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 44(%rsp)
	movq	apiEntry(%rip), %rax
	movq	424(%rax), %rax
	testq	%rax, %rax
	je	.LBB55_7
# BB#5:                                 # %if.end.83
	movl	printerContext(%rip), %edi
	leaq	32(%rsp), %rdx
	movl	$1, %esi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB55_7
# BB#6:                                 # %if.then.89
	movq	1736(%rbp), %rax
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	*144(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB55_8
.LBB55_7:                               # %if.then.97
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movl	%ebx, %r9d
	callq	gdev_vector_dorect
.LBB55_8:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	opvp_vector_dorect, .Lfunc_end55-opvp_vector_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_beginpath,@function
opvp_beginpath:                         # @opvp_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB56_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB56_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB56_9
.LBB56_3:                               # %if.end
	testb	$4, %bl
	je	.LBB56_6
# BB#4:                                 # %if.then.4
	movq	apiEntry(%rip), %rax
	movq	392(%rax), %rax
	testq	%rax, %rax
	je	.LBB56_6
# BB#5:                                 # %if.then.6
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB56_6:                               # %if.end.10
	movq	apiEntry(%rip), %rax
	movq	344(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB56_8
# BB#7:                                 # %if.then.12
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB56_8:                               # %if.end.15
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB56_9:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end56:
	.size	opvp_beginpath, .Lfunc_end56-opvp_beginpath
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI57_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_moveto,@function
opvp_moveto:                            # @opvp_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp315:
	.cfi_def_cfa_offset 32
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB57_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB57_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	callq	*(%rax)
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB57_6
.LBB57_3:                               # %if.end
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	floor
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	movq	apiEntry(%rip), %rax
	movq	400(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB57_5
# BB#4:                                 # %if.then.16
	cvttsd2si	%xmm0, %ecx
	shll	$8, %ecx
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	.LCPI57_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm2, %ecx
	shll	$8, %ecx
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movzbl	%sil, %esi
	orl	%ecx, %esi
	movl	printerContext(%rip), %edi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB57_5:                               # %if.end.21
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB57_6:                               # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end57:
	.size	opvp_moveto, .Lfunc_end57-opvp_moveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI58_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_lineto,@function
opvp_lineto:                            # @opvp_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp316:
	.cfi_def_cfa_offset 32
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB58_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB58_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB58_6
.LBB58_3:                               # %if.end
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI58_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI58_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 20(%rsp)
	movq	apiEntry(%rip), %rax
	movq	408(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB58_5
# BB#4:                                 # %if.then.17
	movl	printerContext(%rip), %edi
	leaq	16(%rsp), %rcx
	movl	$1, %esi
	movl	$1, %edx
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB58_5:                               # %if.end.20
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB58_6:                               # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end58:
	.size	opvp_lineto, .Lfunc_end58-opvp_lineto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI59_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_curveto,@function
opvp_curveto:                           # @opvp_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$104, %rsp
.Ltmp317:
	.cfi_def_cfa_offset 112
	movsd	%xmm7, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 40(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB59_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB59_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB59_6
.LBB59_3:                               # %if.end
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 64(%rsp)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 68(%rsp)
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 72(%rsp)
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 76(%rsp)
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 80(%rsp)
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 84(%rsp)
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 88(%rsp)
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI59_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 92(%rsp)
	movq	apiEntry(%rip), %rax
	movq	440(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB59_5
# BB#4:                                 # %if.then.85
	leaq	72(%rsp), %rdx
	movl	printerContext(%rip), %edi
	movl	$3, %esi
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB59_5:                               # %if.end.89
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB59_6:                               # %cleanup
	addq	$104, %rsp
	retq
.Lfunc_end59:
	.size	opvp_curveto, .Lfunc_end59-opvp_curveto
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI60_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	opvp_closepath,@function
opvp_closepath:                         # @opvp_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp318:
	.cfi_def_cfa_offset 32
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB60_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB60_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB60_6
.LBB60_3:                               # %if.end
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI60_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	shll	$8, %eax
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	mulsd	.LCPI60_0(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, 20(%rsp)
	movq	apiEntry(%rip), %rax
	movq	408(%rax), %rax
	movb	$1, %cl
	testq	%rax, %rax
	je	.LBB60_5
# BB#4:                                 # %if.then.19
	movl	printerContext(%rip), %edi
	leaq	16(%rsp), %rcx
	xorl	%esi, %esi
	movl	$1, %edx
	callq	*%rax
	testl	%eax, %eax
	setne	%cl
.LBB60_5:                               # %if.end.22
	movzbl	%cl, %eax
	shll	$31, %eax
	sarl	$31, %eax
.LBB60_6:                               # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end60:
	.size	opvp_closepath, .Lfunc_end60-opvp_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_endpath,@function
opvp_endpath:                           # @opvp_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp320:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp321:
	.cfi_def_cfa_offset 32
.Ltmp322:
	.cfi_offset %rbx, -32
.Ltmp323:
	.cfi_offset %r14, -24
.Ltmp324:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB61_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB61_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB61_17
.LBB61_3:                               # %if.end
	movq	apiEntry(%rip), %rax
	movq	352(%rax), %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB61_5
# BB#4:                                 # %if.then.4
	movl	printerContext(%rip), %edi
	callq	*%rcx
.LBB61_5:                               # %if.end.7
	movl	%eax, %ecx
	negl	%ecx
	sbbl	%ebx, %ebx
	testb	$1, %r14b
	jne	.LBB61_6
# BB#19:                                # %if.else.54
	testb	$4, %r14b
	jne	.LBB61_20
# BB#23:                                # %if.else.68
	testb	$2, %r14b
	je	.LBB61_17
# BB#24:                                # %if.then.71
	movq	apiEntry(%rip), %rcx
	movq	360(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB61_26
# BB#25:                                # %if.then.73
	movl	printerContext(%rip), %edi
	callq	*%rcx
.LBB61_26:                              # %if.end.76
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%ebx, %eax
	jmp	.LBB61_27
.LBB61_6:                               # %if.then.11
	testb	$8, %r14b
	movq	apiEntry(%rip), %rcx
	movq	160(%rcx), %rcx
	jne	.LBB61_7
# BB#9:                                 # %if.else
	testq	%rcx, %rcx
	je	.LBB61_12
# BB#10:                                # %if.then.25
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	jmp	.LBB61_11
.LBB61_20:                              # %if.then.57
	movq	apiEntry(%rip), %rcx
	movq	384(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB61_22
# BB#21:                                # %if.then.59
	movl	printerContext(%rip), %edi
	shrl	$3, %r14d
	notl	%r14d
	andl	$1, %r14d
	movl	%r14d, %esi
	callq	*%rcx
.LBB61_22:                              # %if.end.64
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%eax, %ebx
	movl	%ebx, %eax
	jmp	.LBB61_27
.LBB61_7:                               # %if.then.14
	testq	%rcx, %rcx
	je	.LBB61_12
# BB#8:                                 # %if.then.16
	movl	printerContext(%rip), %edi
	xorl	%esi, %esi
.LBB61_11:                              # %if.end.32
	callq	*%rcx
.LBB61_12:                              # %if.end.32
	cmpl	$1, %eax
	sbbl	%ebp, %ebp
	notl	%ebp
	orl	%ebx, %ebp
	testb	$2, %r14b
	movq	apiEntry(%rip), %rcx
	jne	.LBB61_13
# BB#18:                                # %if.else.44
	movq	368(%rcx), %rcx
	jmp	.LBB61_14
.LBB61_13:                              # %if.then.35
	movq	376(%rcx), %rcx
.LBB61_14:                              # %if.then.35
	testq	%rcx, %rcx
	je	.LBB61_16
# BB#15:                                # %if.then.37
	movl	printerContext(%rip), %edi
	callq	*%rcx
.LBB61_16:                              # %if.end.40
	cmpl	$1, %eax
	sbbl	%ebx, %ebx
	notl	%ebx
	orl	%ebp, %ebx
.LBB61_17:                              # %cleanup
	movl	%ebx, %eax
.LBB61_27:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end61:
	.size	opvp_endpath, .Lfunc_end61-opvp_endpath
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI62_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	opvp_startpage,@function
opvp_startpage:                         # @opvp_startpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp326:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp327:
	.cfi_def_cfa_offset 32
.Ltmp328:
	.cfi_offset %rbx, -32
.Ltmp329:
	.cfi_offset %r14, -24
.Ltmp330:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$opvp_startpage.page_info, %edi
	movl	$.L.str.183, %esi
	callq	opvp_alloc_string
	movq	%rax, opvp_startpage.page_info(%rip)
	movq	%rbx, %rdi
	callq	opvp_gen_page_info
	movl	$opvp_startpage.page_info, %edi
	movq	%rax, %rsi
	callq	opvp_cat_string
	movq	%rax, opvp_startpage.page_info(%rip)
	movl	printerContext(%rip), %ebp
	xorl	%r14d, %r14d
	cmpl	$-1, %ebp
	je	.LBB62_15
# BB#1:                                 # %if.then
	movq	apiEntry(%rip), %rcx
	movq	56(%rcx), %rbx
	movl	$-1, %r14d
	testq	%rbx, %rbx
	je	.LBB62_15
# BB#2:                                 # %if.then.3
	movq	%rax, %rdi
	callq	opvp_to_utf8
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB62_15
# BB#3:                                 # %if.else
	movq	apiEntry(%rip), %rax
	movq	112(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB62_6
# BB#4:                                 # %if.then.i
	movl	printerContext(%rip), %edi
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB62_15
# BB#5:                                 # %if.then.if.end.4_crit_edge.i
	movq	apiEntry(%rip), %rax
.LBB62_6:                               # %if.end.4.i
	movq	144(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB62_9
# BB#7:                                 # %if.then.6.i
	movl	printerContext(%rip), %edi
	movl	colorSpace(%rip), %esi
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB62_15
# BB#8:                                 # %if.then.6.if.end.12_crit_edge.i
	movq	apiEntry(%rip), %rax
.LBB62_9:                               # %if.end.12.i
	movq	304(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB62_12
# BB#10:                                # %if.then.14.i
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	callq	*%rcx
	testl	%eax, %eax
	jne	.LBB62_15
# BB#11:                                # %if.then.14.if.end.20_crit_edge.i
	movq	apiEntry(%rip), %rax
.LBB62_12:                              # %if.end.20.i
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.LBB62_14
# BB#13:                                # %if.then.22.i
	movl	printerContext(%rip), %edi
	movss	.LCPI62_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB62_15
.LBB62_14:                              # %if.end.28.i
	xorl	%r14d, %r14d
.LBB62_15:                              # %if.end.11
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end62:
	.size	opvp_startpage, .Lfunc_end62-opvp_startpage
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI63_0:
	.long	3212836864              # float -1
.LCPI63_1:
	.long	1077936128              # float 3
.LCPI63_2:
	.long	1116733440              # float 72
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI63_3:
	.quad	4627842682090579558     # double 2.540000e+01
	.quad	4627842682090579558     # double 2.540000e+01
	.text
	.align	16, 0x90
	.type	opvp_gen_page_info,@function
opvp_gen_page_info:                     # @opvp_gen_page_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp332:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp333:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp334:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp335:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp336:
	.cfi_def_cfa_offset 56
	subq	$2168, %rsp             # imm = 0x878
.Ltmp337:
	.cfi_def_cfa_offset 2224
.Ltmp338:
	.cfi_offset %rbx, -56
.Ltmp339:
	.cfi_offset %r12, -48
.Ltmp340:
	.cfi_offset %r13, -40
.Ltmp341:
	.cfi_offset %r14, -32
.Ltmp342:
	.cfi_offset %r15, -24
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movb	inkjet(%rip), %al
	andb	$1, %al
	movl	$1, %r12d
	jne	.LBB63_4
# BB#1:                                 # %if.then
	cmpl	$0, 952(%rbx)
	jne	.LBB63_4
# BB#2:                                 # %if.else
	cmpl	$0, 948(%rbx)
	jle	.LBB63_4
# BB#3:                                 # %if.then.3
	movl	944(%rbx), %r12d
.LBB63_4:                               # %if.end.5
	movss	860(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 96(%rsp)         # 4-byte Spill
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	leaq	112(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	memset
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	callq	opvp_get_sizestring
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movss	96(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	80(%rsp), %xmm0         # 4-byte Folded Reload
	movl	$.L.str.193, %eax
	jbe	.LBB63_6
# BB#5:                                 # %select.mid
	movl	$.L.str.194, %eax
.LBB63_6:                               # %select.end
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	856(%rbx), %xmm0        # xmm0 = mem[0],zero
	movdqa	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	ucomiss	%xmm0, %xmm1
	setbe	%al
	movzbl	%al, %eax
	movd	%eax, %xmm1
	pshufd	$80, %xmm1, %xmm2       # xmm2 = xmm1[0,0,1,1]
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	movdqa	%xmm0, %xmm1
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movdqa	%xmm2, 48(%rsp)         # 16-byte Spill
	cmpq	$0, paperTable+8(%rip)
	je	.LBB63_7
# BB#9:                                 # %for.body.i.i.preheader
	movdqa	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movaps	%xmm0, 64(%rsp)         # 16-byte Spill
	movss	.LCPI63_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rsp)         # 4-byte Spill
	movl	$-1, %r13d
	movss	.LCPI63_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	xorl	%ebp, %ebp
	movl	$paperTable+32, %ebx
	movaps	%xmm3, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm3, 44(%rsp)         # 4-byte Spill
	movl	$-1, %r15d
	movl	$-1, %r14d
	.align	16, 0x90
.LBB63_10:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	-16(%rbx), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movaps	64(%rsp), %xmm3         # 16-byte Reload
	ucomiss	%xmm4, %xmm3
	jne	.LBB63_15
	jp	.LBB63_15
# BB#11:                                # %if.then.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movss	-12(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jne	.LBB63_12
	jnp	.LBB63_45
.LBB63_12:                              # %if.else.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movdqa	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	movss	.LCPI63_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	movss	44(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	andb	%cl, %al
	jne	.LBB63_14
# BB#13:                                # %if.else.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movaps	%xmm1, %xmm0
.LBB63_14:                              # %if.else.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	testb	%al, %al
	cmovnel	%ebp, %r14d
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movdqa	48(%rsp), %xmm2         # 16-byte Reload
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB63_24
	.align	16, 0x90
.LBB63_15:                              # %if.else.36.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	cmpl	$-1, %r14d
	jne	.LBB63_46
# BB#16:                                # %if.else.40.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movl	$-1, %r14d
	movss	40(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jne	.LBB63_17
	jnp	.LBB63_24
.LBB63_17:                              # %if.then.43.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movaps	64(%rsp), %xmm0         # 16-byte Reload
	subss	%xmm4, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	%xmm4, 40(%rsp)         # 4-byte Spill
	callq	fabs
	movss	40(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	cvtsd2ss	%xmm0, %xmm0
	movaps	64(%rsp), %xmm1         # 16-byte Reload
	ucomiss	%xmm3, %xmm1
	jbe	.LBB63_21
# BB#18:                                # %if.then.46.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movss	.LCPI63_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	andb	%cl, %al
	movdqa	48(%rsp), %xmm2         # 16-byte Reload
	jne	.LBB63_20
# BB#19:                                # %if.then.46.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movaps	%xmm1, %xmm0
.LBB63_20:                              # %if.then.46.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	testb	%al, %al
	cmovnel	%ebp, %r15d
	movss	%xmm3, 40(%rsp)         # 4-byte Spill
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB63_24
.LBB63_21:                              # %if.else.58.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movss	.LCPI63_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%cl
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	seta	%al
	andb	%cl, %al
	movdqa	48(%rsp), %xmm2         # 16-byte Reload
	jne	.LBB63_23
# BB#22:                                # %if.else.58.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	movaps	%xmm1, %xmm0
.LBB63_23:                              # %if.else.58.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	testb	%al, %al
	cmovnel	%ebp, %r13d
	movss	%xmm3, 40(%rsp)         # 4-byte Spill
	movaps	%xmm0, %xmm1
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB63_24:                              # %for.inc.i.i
                                        #   in Loop: Header=BB63_10 Depth=1
	incq	%rbp
	cmpq	$0, (%rbx)
	leaq	24(%rbx), %rbx
	jne	.LBB63_10
# BB#25:                                # %if.then.75.i.i
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movl	%r12d, 40(%rsp)         # 4-byte Spill
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$-1, %r13d
	cmpl	$-1, %r15d
	movl	$-1, %r14d
	movaps	%xmm0, %xmm3
	je	.LBB63_33
# BB#26:                                # %if.then.78.i.i
	movslq	%r15d, %r12
	leaq	(%r12,%r12,2), %rax
	movss	paperTable+16(,%rax,8), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	ucomiss	%xmm0, %xmm0
	movl	$-1, %r14d
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	jp	.LBB63_33
# BB#27:                                # %for.body.88.i.i.preheader
	incl	%r15d
	movslq	%r15d, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	paperTable+16(,%rax,8), %rbx
	movl	$-1, %r14d
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rax
	.align	16, 0x90
.LBB63_28:                              # %for.body.88.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	%xmm0, 64(%rsp)         # 4-byte Spill
	leaq	(%rax,%rax,2), %rax
	movss	paperTable+20(,%rax,8), %xmm0 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jne	.LBB63_29
	jnp	.LBB63_32
.LBB63_29:                              # %if.else.95.i.i
                                        #   in Loop: Header=BB63_28 Depth=1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movdqa	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm3
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm0
	seta	%cl
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm0
	seta	%al
	andb	%cl, %al
	jne	.LBB63_31
# BB#30:                                # %if.else.95.i.i
                                        #   in Loop: Header=BB63_28 Depth=1
	movaps	%xmm0, %xmm3
.LBB63_31:                              # %if.else.95.i.i
                                        #   in Loop: Header=BB63_28 Depth=1
	testb	%al, %al
	cmovnel	%r12d, %r14d
	incq	%r12
	movslq	%r12d, %rax
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addq	$24, %rbx
	ucomiss	44(%rsp), %xmm0         # 4-byte Folded Reload
	movaps	%xmm3, %xmm0
	movdqa	48(%rsp), %xmm2         # 16-byte Reload
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jne	.LBB63_33
	jp	.LBB63_33
	jmp	.LBB63_28
.LBB63_7:
	movl	$-1, %r13d
	xorl	%eax, %eax
	jmp	.LBB63_8
.LBB63_45:                              # %if.then.i.i.opvp_get_papertable_index.exit.i.loopexit_crit_edge
	movl	%ebp, %r14d
	jmp	.LBB63_46
.LBB63_32:                              # %for.body.88.if.end.111.loopexit_crit_edge.i.i
	xorps	%xmm3, %xmm3
	movl	%r12d, %r14d
.LBB63_33:                              # %if.end.111.i.i
	movl	20(%rsp), %ecx          # 4-byte Reload
	cmpl	$-1, %ecx
	je	.LBB63_34
# BB#35:                                # %if.then.114.i.i
	movss	%xmm3, 16(%rsp)         # 4-byte Spill
	movslq	%ecx, %r15
	leaq	(%r15,%r15,2), %rax
	movss	paperTable+16(,%rax,8), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	ucomiss	%xmm0, %xmm0
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jp	.LBB63_42
# BB#36:                                # %for.body.124.i.i.preheader
	incl	%ecx
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	paperTable+16(,%rax,8), %rbx
	movl	$-1, %r13d
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %rax
	movaps	%xmm0, %xmm3
	.align	16, 0x90
.LBB63_37:                              # %for.body.124.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	%xmm3, 64(%rsp)         # 4-byte Spill
	leaq	(%rax,%rax,2), %rax
	movss	paperTable+20(,%rax,8), %xmm0 # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jne	.LBB63_38
	jnp	.LBB63_41
.LBB63_38:                              # %if.else.131.i.i
                                        #   in Loop: Header=BB63_37 Depth=1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movdqa	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	callq	fabs
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	seta	%cl
	movss	64(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	seta	%al
	andb	%cl, %al
	jne	.LBB63_40
# BB#39:                                # %if.else.131.i.i
                                        #   in Loop: Header=BB63_37 Depth=1
	movaps	%xmm0, %xmm1
.LBB63_40:                              # %if.else.131.i.i
                                        #   in Loop: Header=BB63_37 Depth=1
	testb	%al, %al
	cmovnel	%r15d, %r13d
	incq	%r15
	movslq	%r15d, %rax
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	addq	$24, %rbx
	ucomiss	44(%rsp), %xmm0         # 4-byte Folded Reload
	movaps	%xmm1, %xmm3
	movdqa	48(%rsp), %xmm2         # 16-byte Reload
	movaps	%xmm1, %xmm0
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jne	.LBB63_42
	jp	.LBB63_42
	jmp	.LBB63_37
.LBB63_34:
	movss	%xmm3, 16(%rsp)         # 4-byte Spill
	movss	.LCPI63_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB63_42
.LBB63_41:                              # %for.body.124.if.end.147.loopexit_crit_edge.i.i
	xorps	%xmm0, %xmm0
	movl	%r15d, %r13d
.LBB63_42:                              # %if.end.147.i.i
	movaps	%xmm0, %xmm3
	cmpl	$-1, %r13d
	setne	%al
	cmpl	$-1, %r14d
	movl	40(%rsp), %r12d         # 4-byte Reload
	je	.LBB63_8
# BB#43:                                # %if.then.150.i.i
	cmpl	$-1, %r13d
	je	.LBB63_46
# BB#44:                                # %if.then.153.i.i
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	16(%rsp), %xmm0         # 4-byte Folded Reload
	addss	%xmm3, %xmm1
	ucomiss	%xmm0, %xmm1
	cmovbel	%r13d, %r14d
	jmp	.LBB63_46
.LBB63_8:                               # %if.else.162.i.i
	testb	%al, %al
	cmovel	%ebp, %r13d
	movl	%r13d, %r14d
.LBB63_46:                              # %opvp_get_papertable_index.exit.i
	movslq	%r14d, %rax
	leaq	(%rax,%rax,2), %rax
	movq	paperTable+8(,%rax,8), %r13
	testq	%r13, %r13
	je	.LBB63_89
# BB#47:                                # %if.then.i
	movq	paperTable(,%rax,8), %r14
	movss	paperTable+16(,%rax,8), %xmm2 # xmm2 = mem[0],zero,zero,zero
	movss	paperTable+20(,%rax,8), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI63_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	movaps	%xmm2, 80(%rsp)         # 16-byte Spill
	divss	%xmm0, %xmm1
	movaps	%xmm1, 96(%rsp)         # 16-byte Spill
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB63_55
# BB#48:                                # %cond.true.i
	movzbl	(%r14), %eax
	addl	$-110, %eax
	testq	%rcx, %rcx
	je	.LBB63_56
# BB#49:                                # %cond.true.i
	testl	%eax, %eax
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	jne	.LBB63_57
# BB#50:                                # %if.then.25.i
	movzbl	1(%r14), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB63_57
# BB#51:                                # %if.then.25.i
	testl	%eax, %eax
	jne	.LBB63_57
# BB#52:                                # %if.then.35.i
	movb	2(%r14), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB63_57
# BB#53:                                # %if.then.35.i
	testb	%dl, %dl
	jne	.LBB63_57
# BB#54:                                # %if.then.45.i
	movzbl	3(%r14), %eax
	jmp	.LBB63_57
.LBB63_89:                              # %if.else.239.i
	movss	.LCPI63_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movdqa	%xmm2, %xmm1
	divss	%xmm0, %xmm1
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	divss	%xmm0, %xmm2
	unpcklps	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movaps	%xmm1, 96(%rsp)         # 16-byte Spill
	movl	$.L.str.200, %r14d
	movl	$.L.str.159, %r13d
	movl	$.L.str.198, %ebx
	jmp	.LBB63_90
.LBB63_55:                              # %cond.false.i
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB63_56:                              # %cond.end.i
	movaps	96(%rsp), %xmm0         # 16-byte Reload
.LBB63_57:                              # %cond.end.i
	unpcklps	80(%rsp), %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	movaps	%xmm0, 96(%rsp)         # 16-byte Spill
	movl	$.L.str.198, %ebx
	testl	%eax, %eax
	je	.LBB63_90
# BB#58:                                # %land.lhs.true.61.i
	movl	$.L.str.143, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB63_66
# BB#59:                                # %cond.true.65.i
	movzbl	(%r14), %eax
	addl	$-97, %eax
	testq	%rcx, %rcx
	je	.LBB63_67
# BB#60:                                # %cond.true.65.i
	testl	%eax, %eax
	jne	.LBB63_67
# BB#61:                                # %if.then.79.i
	movzbl	1(%r14), %eax
	addl	$-115, %eax
	cmpq	$2, %rcx
	jb	.LBB63_67
# BB#62:                                # %if.then.79.i
	testl	%eax, %eax
	jne	.LBB63_67
# BB#63:                                # %if.then.89.i
	movzbl	2(%r14), %eax
	addl	$-109, %eax
	cmpq	$3, %rcx
	jb	.LBB63_67
# BB#64:                                # %if.then.89.i
	testl	%eax, %eax
	jne	.LBB63_67
# BB#65:                                # %if.then.99.i
	movzbl	3(%r14), %eax
	addl	$-101, %eax
	jmp	.LBB63_67
.LBB63_66:                              # %cond.false.108.i
	movl	$.L.str.143, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB63_67:                              # %cond.end.110.i
	movl	$.L.str.198, %ebx
	testl	%eax, %eax
	je	.LBB63_90
# BB#68:                                # %land.lhs.true.120.i
	movl	$.L.str.65, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB63_76
# BB#69:                                # %cond.true.124.i
	movzbl	(%r14), %eax
	addl	$-114, %eax
	testq	%rcx, %rcx
	je	.LBB63_77
# BB#70:                                # %cond.true.124.i
	testl	%eax, %eax
	jne	.LBB63_77
# BB#71:                                # %if.then.138.i
	movzbl	1(%r14), %eax
	addl	$-111, %eax
	cmpq	$2, %rcx
	jb	.LBB63_77
# BB#72:                                # %if.then.138.i
	testl	%eax, %eax
	jne	.LBB63_77
# BB#73:                                # %if.then.148.i
	movzbl	2(%r14), %eax
	addl	$-99, %eax
	cmpq	$3, %rcx
	jb	.LBB63_77
# BB#74:                                # %if.then.148.i
	testl	%eax, %eax
	jne	.LBB63_77
# BB#75:                                # %if.then.158.i
	movzbl	3(%r14), %eax
	jmp	.LBB63_77
.LBB63_76:                              # %cond.false.167.i
	movl	$.L.str.65, %esi
	movq	%r14, %rdi
	callq	strcmp
.LBB63_77:                              # %cond.end.169.i
	movl	$.L.str.198, %ebx
	testl	%eax, %eax
	je	.LBB63_90
# BB#78:                                # %land.lhs.true.179.i
	movl	$.L.str.197, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB63_86
# BB#79:                                # %cond.true.183.i
	movzbl	(%r14), %eax
	addl	$-111, %eax
	testq	%rcx, %rcx
	movapd	96(%rsp), %xmm0         # 16-byte Reload
	je	.LBB63_87
# BB#80:                                # %cond.true.183.i
	testl	%eax, %eax
	jne	.LBB63_87
# BB#81:                                # %if.then.197.i
	movzbl	1(%r14), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB63_87
# BB#82:                                # %if.then.197.i
	testl	%eax, %eax
	jne	.LBB63_87
# BB#83:                                # %if.then.207.i
	movb	2(%r14), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB63_87
# BB#84:                                # %if.then.207.i
	testb	%dl, %dl
	jne	.LBB63_87
# BB#85:                                # %if.then.217.i
	movzbl	3(%r14), %eax
	jmp	.LBB63_87
.LBB63_86:                              # %cond.false.226.i
	movl	$.L.str.197, %esi
	movq	%r14, %rdi
	callq	strcmp
	movapd	96(%rsp), %xmm0         # 16-byte Reload
.LBB63_87:                              # %cond.end.228.i
	movl	$.L.str.198, %ebx
	testl	%eax, %eax
	je	.LBB63_90
# BB#88:                                # %if.else.i
	cvtps2pd	%xmm0, %xmm0
	mulpd	.LCPI63_3(%rip), %xmm0
	movl	$.L.str.199, %ebx
	cvtpd2ps	%xmm0, %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
.LBB63_90:                              # %opvp_get_mediasize.exit
	leaq	1136(%rsp), %rbp
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	movq	%rbp, %rdi
	callq	memset
	movaps	96(%rsp), %xmm1         # 16-byte Reload
	movaps	%xmm1, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	callq	opvp_get_sizestring
	movq	%rax, %rcx
	movq	%rbx, (%rsp)
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.201, %edx
	xorl	%eax, %eax
	movq	%r13, %r8
	movq	%rbp, %rdi
	movq	%rcx, %r9
	movq	%r14, %rcx
	callq	snprintf
	movl	$opvp_get_mediasize.buff, %edi
	movq	%rbp, %rsi
	callq	opvp_alloc_string
	movq	%rax, opvp_get_mediasize.buff(%rip)
	movq	%rax, (%rsp)
	leaq	112(%rsp), %rbx
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.192, %edx
	xorl	%eax, %eax
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%rbx, %rdi
	movq	24(%rsp), %r9           # 8-byte Reload
	movl	%r12d, %ecx
	callq	snprintf
	movl	$opvp_gen_page_info.buff, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	movq	opvp_gen_page_info.buff(%rip), %rax
	addq	$2168, %rsp             # imm = 0x878
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	opvp_gen_page_info, .Lfunc_end63-opvp_gen_page_info
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_get_sizestring,@function
opvp_get_sizestring:                    # @opvp_get_sizestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp344:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp345:
	.cfi_def_cfa_offset 24
	subq	$2072, %rsp             # imm = 0x818
.Ltmp346:
	.cfi_def_cfa_offset 2096
.Ltmp347:
	.cfi_offset %rbx, -24
.Ltmp348:
	.cfi_offset %r14, -16
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	leaq	1040(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	memset
	leaq	528(%rsp), %r14
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movq	%r14, %rdi
	callq	memset
	leaq	16(%rsp), %rbx
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movq	%rbx, %rdi
	callq	memset
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$511, %esi              # imm = 0x1FF
	movl	$.L.str.195, %edx
	movb	$1, %al
	movq	%r14, %rdi
	callq	snprintf
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$511, %esi              # imm = 0x1FF
	movl	$.L.str.195, %edx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	snprintf
	movl	$46, %esi
	movq	%r14, %rdi
	callq	strrchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB64_7
# BB#1:                                 # %if.then.2.i
	movq	%r14, %rdi
	callq	strlen
	leaq	-1(%rax,%r14), %rax
	jmp	.LBB64_2
	.align	16, 0x90
.LBB64_4:                               # %if.then.6.i
                                        #   in Loop: Header=BB64_2 Depth=1
	movb	$0, (%rax)
	decq	%rax
.LBB64_2:                               # %if.then.2.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rax
	jbe	.LBB64_5
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB64_2 Depth=1
	movzbl	(%rax), %ecx
	cmpl	$48, %ecx
	je	.LBB64_4
.LBB64_5:                               # %for.end.i
	cmpq	%rbx, %rax
	jne	.LBB64_7
# BB#6:                                 # %if.then.10.i
	movb	$0, (%rbx)
.LBB64_7:                               # %opvp_adjust_num_string.exit
	leaq	16(%rsp), %r14
	movl	$46, %esi
	movq	%r14, %rdi
	callq	strrchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB64_14
# BB#8:                                 # %if.then.2.i.7
	movq	%r14, %rdi
	callq	strlen
	leaq	-1(%rax,%r14), %rax
	jmp	.LBB64_9
	.align	16, 0x90
.LBB64_11:                              # %if.then.6.i.13
                                        #   in Loop: Header=BB64_9 Depth=1
	movb	$0, (%rax)
	decq	%rax
.LBB64_9:                               # %if.then.2.i.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rax
	jbe	.LBB64_12
# BB#10:                                # %for.body.i.10
                                        #   in Loop: Header=BB64_9 Depth=1
	movzbl	(%rax), %ecx
	cmpl	$48, %ecx
	je	.LBB64_11
.LBB64_12:                              # %for.end.i.16
	cmpq	%rbx, %rax
	jne	.LBB64_14
# BB#13:                                # %if.then.10.i.17
	movb	$0, (%rbx)
.LBB64_14:                              # %opvp_adjust_num_string.exit18
	leaq	1040(%rsp), %rbx
	leaq	528(%rsp), %rcx
	leaq	16(%rsp), %r8
	movl	$1023, %esi             # imm = 0x3FF
	movl	$.L.str.196, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	movl	$opvp_get_sizestring.buff, %edi
	movq	%rbx, %rsi
	callq	opvp_alloc_string
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end64:
	.size	opvp_get_sizestring, .Lfunc_end64-opvp_get_sizestring
	.cfi_endproc

	.align	16, 0x90
	.type	opvp_draw_image,@function
opvp_draw_image:                        # @opvp_draw_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp349:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp350:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp351:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp352:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp353:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp354:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp355:
	.cfi_def_cfa_offset 80
.Ltmp356:
	.cfi_offset %rbx, -56
.Ltmp357:
	.cfi_offset %r12, -48
.Ltmp358:
	.cfi_offset %r13, -40
.Ltmp359:
	.cfi_offset %r14, -32
.Ltmp360:
	.cfi_offset %r15, -24
.Ltmp361:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r14d
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movb	beginPage(%rip), %al
	andb	$1, %al
	jne	.LBB65_3
# BB#1:                                 # %entry
	testb	$1, inkjet(%rip)
	jne	.LBB65_3
# BB#2:                                 # %cond.false
	movq	1736(%rdi), %rax
	callq	*(%rax)
	movl	$-1, %r13d
	testl	%eax, %eax
	jne	.LBB65_13
.LBB65_3:                               # %if.end
	movq	88(%rsp), %rdx
	movl	80(%rsp), %esi
	movq	apiEntry(%rip), %rcx
	movq	456(%rcx), %rax
	testq	%rax, %rax
	je	.LBB65_6
# BB#4:                                 # %if.end.8
	movl	printerContext(%rip), %edi
	testl	%esi, %esi
	setne	%cl
	movzbl	%cl, %r8d
	movq	%rdx, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	%ebp, %esi
	movl	%ebx, %edx
	movl	%r15d, %ecx
	movl	%r12d, %r9d
	callq	*%rax
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB65_13
# BB#5:                                 # %if.end.8.if.then.9_crit_edge
	movq	apiEntry(%rip), %rcx
	movl	80(%rsp), %esi
.LBB65_6:                               # %if.then.9
	movl	%ebx, %edx
	movq	464(%rcx), %rbx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	je	.LBB65_13
# BB#7:                                 # %if.end.16
	movl	printerContext(%rip), %edi
	testl	%esi, %esi
	setne	%al
	movzbl	%al, %r8d
	movl	%r14d, (%rsp)
	movl	%ebp, %esi
	movl	%edx, %ebp
	movl	%r15d, %ecx
	movl	%r12d, %r9d
	callq	*%rbx
	testl	%eax, %eax
	jne	.LBB65_13
# BB#8:                                 # %if.then.18
	movq	apiEntry(%rip), %rax
	movq	472(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB65_9
# BB#10:                                # %if.then.20
	imull	%ebp, %r15d
	movl	printerContext(%rip), %edi
	movl	%r15d, %esi
	movq	88(%rsp), %rdx
	callq	*%rcx
	testl	%eax, %eax
	setne	%cl
	movq	apiEntry(%rip), %rax
	jmp	.LBB65_11
.LBB65_9:
	xorl	%ecx, %ecx
.LBB65_11:                              # %if.end.23
	movzbl	%cl, %r13d
	shll	$31, %r13d
	sarl	$31, %r13d
	movq	480(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB65_13
# BB#12:                                # %if.then.28
	movl	printerContext(%rip), %edi
	callq	*%rcx
.LBB65_13:                              # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	opvp_draw_image, .Lfunc_end65-opvp_draw_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI66_0:
	.long	1132396544              # float 255
.LCPI66_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI66_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	opvp_image_plane_data,@function
opvp_image_plane_data:                  # @opvp_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp363:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp364:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp365:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp366:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp367:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp368:
	.cfi_def_cfa_offset 176
.Ltmp369:
	.cfi_offset %rbx, -56
.Ltmp370:
	.cfi_offset %r12, -48
.Ltmp371:
	.cfi_offset %r13, -40
.Ltmp372:
	.cfi_offset %r14, -32
.Ltmp373:
	.cfi_offset %r15, -24
.Ltmp374:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %rbp
	xorl	%eax, %eax
	movzbl	begin_image(%rip), %ecx
	andl	$1, %ecx
	cmpl	$1, %ecx
	jne	.LBB66_227
# BB#1:                                 # %for.cond.preheader
	movslq	44(%rbp), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	jle	.LBB66_14
# BB#2:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	$0, %ebx
	je	.LBB66_13
# BB#3:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB66_12
# BB#4:                                 # %vector.body.preheader
	leaq	-8(%rax), %rdx
	movl	%edx, %edi
	shrl	$3, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB66_5
# BB#6:                                 # %vector.body.prol.preheader
	leal	-8(%rax), %edi
	shrl	$3, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB66_7:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	48(%rbp,%rsi,4), %xmm2
	movdqu	64(%rbp,%rsi,4), %xmm3
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm1
	addq	$8, %rsi
	incq	%rdi
	jne	.LBB66_7
	jmp	.LBB66_8
.LBB66_5:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB66_8:                               # %vector.body.preheader.split
	cmpq	$24, %rdx
	jb	.LBB66_11
# BB#9:                                 # %vector.body.preheader.split.split
	movq	%rax, %rdx
	andq	$-8, %rdx
	subq	%rsi, %rdx
	leaq	160(%rbp,%rsi,4), %rsi
	.align	16, 0x90
.LBB66_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rsi), %xmm2
	movdqu	-96(%rsi), %xmm3
	movdqu	-80(%rsi), %xmm4
	movdqu	-64(%rsi), %xmm5
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm3
	movdqu	-48(%rsi), %xmm4
	movdqu	-32(%rsi), %xmm5
	paddd	%xmm2, %xmm4
	paddd	%xmm3, %xmm5
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	paddd	%xmm4, %xmm0
	paddd	%xmm5, %xmm1
	subq	$-128, %rsi
	addq	$-32, %rdx
	jne	.LBB66_10
.LBB66_11:
	movq	%rcx, %rdx
.LBB66_12:                              # %middle.block
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%rdx, %rax
	je	.LBB66_14
	.align	16, 0x90
.LBB66_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	48(%rbp,%rdx,4), %ebx
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB66_13
.LBB66_14:                              # %for.end
	movl	584(%rbp), %eax
	imull	%ebx, %eax
	addl	$7, %eax
	sarl	$3, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	3(%rax), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	andl	$-4, %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movslq	%eax, %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movslq	%r14d, %r12
	movq	%r12, %rsi
	callq	calloc
	movq	%rax, %r15
	movq	568(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB66_16
# BB#15:                                # %if.then.6
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	gx_image_plane_data
.LBB66_16:                              # %if.end.9
	movq	576(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB66_18
# BB#17:                                # %if.then.11
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	gx_image_plane_data
.LBB66_18:                              # %if.end.14
	testq	%r15, %r15
	je	.LBB66_226
# BB#19:                                # %if.then.16
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	576(%rbp), %rax
	movq	600(%rax), %rax
	movq	1216(%rax), %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movslq	44(%rbp), %r11
	cmpq	$1, %r11
	jne	.LBB66_20
# BB#25:                                # %for.cond.23.preheader
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r15, %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	testl	%r14d, %r14d
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	jle	.LBB66_57
# BB#26:                                # %for.body.26.lr.ph
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %eax
	sarl	$3, %eax
	movslq	%eax, %r15
	movq	72(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	24(%rsp), %r14d         # 4-byte Reload
	andl	$-4, %r14d
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movl	%r15d, %ebp
	negl	%ebp
	xorl	%r12d, %r12d
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB66_27:                              # %for.body.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_30 Depth 2
	movzbl	reverse_image(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB66_32
# BB#28:                                # %if.then.29
                                        #   in Loop: Header=BB66_27 Depth=1
	leaq	1(%r12), %rcx
	movq	%rcx, %rax
	imulq	%rbx, %rax
	subq	%r15, %rax
	imulq	%rbx, %r12
	cmpq	%r12, %rax
	jl	.LBB66_33
# BB#29:                                # %for.body.36.lr.ph
                                        #   in Loop: Header=BB66_27 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movslq	88(%rsp), %rcx          # 4-byte Folded Reload
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %r14
	movq	96(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB66_30:                              # %for.body.36
                                        #   Parent Loop BB66_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rbx
	movq	(%r13), %rsi
	addq	%rbx, %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movl	%ebx, %eax
	subl	%r15d, %eax
	leal	(%rbx,%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%r15, %r14
	cmpq	%r12, %rcx
	jge	.LBB66_30
# BB#31:                                #   in Loop: Header=BB66_27 Depth=1
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB66_33
	.align	16, 0x90
.LBB66_32:                              # %if.else
                                        #   in Loop: Header=BB66_27 Depth=1
	movq	%r12, %rax
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%r12, %rsi
	imulq	%rbx, %rsi
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	(%rax), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	incq	%r12
	movq	%r12, %rcx
.LBB66_33:                              # %for.inc.56
                                        #   in Loop: Header=BB66_27 Depth=1
	addl	%r14d, 88(%rsp)         # 4-byte Folded Spill
	cmpl	84(%rsp), %ecx          # 4-byte Folded Reload
	movq	%rcx, %r12
	jne	.LBB66_27
	jmp	.LBB66_57
.LBB66_20:                              # %for.cond.60.preheader
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r15, %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	testl	%r14d, %r14d
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	jle	.LBB66_57
# BB#21:                                # %for.body.63.lr.ph
	movb	reverse_image(%rip), %bl
	movb	%bl, 40(%rsp)           # 1-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %ecx
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%r11d, %r14d
	andl	$1, %r14d
	movl	%r11d, %r12d
	andl	$1, %r12d
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %r15
	xorl	%r9d, %r9d
	movl	$1, %r8d
	.align	16, 0x90
.LBB66_22:                              # %for.body.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_46 Depth 2
                                        #       Child Loop BB66_52 Depth 3
                                        #     Child Loop BB66_37 Depth 2
                                        #       Child Loop BB66_43 Depth 3
	movl	%r9d, %edx
	imull	64(%rsp), %edx          # 4-byte Folded Reload
	testb	$1, %bl
	je	.LBB66_44
# BB#23:                                # %if.then.66
                                        #   in Loop: Header=BB66_22 Depth=1
	leal	1(%r9), %r10d
	movl	%ecx, %eax
	imull	%r10d, %ecx
	imull	%eax, %r9d
	cmpl	%r9d, %ecx
	jle	.LBB66_24
# BB#36:                                # %for.cond.77.preheader.lr.ph
                                        #   in Loop: Header=BB66_22 Depth=1
	movl	%eax, %ecx
	imull	%r8d, %ecx
	movslq	%ecx, %rbx
	movslq	%r9d, %r9
	.align	16, 0x90
.LBB66_37:                              # %for.cond.77.preheader
                                        #   Parent Loop BB66_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB66_43 Depth 3
	decq	%rbx
	testl	%r11d, %r11d
	jle	.LBB66_34
# BB#38:                                # %for.body.81.lr.ph
                                        #   in Loop: Header=BB66_37 Depth=2
	testl	%r14d, %r14d
	movslq	%edx, %rcx
	jne	.LBB66_40
# BB#39:                                #   in Loop: Header=BB66_37 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB66_41
	.align	16, 0x90
.LBB66_40:                              # %for.body.81.prol
                                        #   in Loop: Header=BB66_37 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdx
	movb	(%rdx,%rbx), %dl
	movq	104(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax,%rcx)
	leal	1(%rcx), %edx
	incq	%rcx
	movl	$1, %ebp
.LBB66_41:                              # %for.body.81.lr.ph.split
                                        #   in Loop: Header=BB66_37 Depth=2
	cmpl	$1, %r11d
	je	.LBB66_34
# BB#42:                                # %for.body.81.lr.ph.split.split
                                        #   in Loop: Header=BB66_37 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rcx,%rax), %rdi
	movq	%rbp, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r15), %rcx
	.align	16, 0x90
.LBB66_43:                              # %for.body.81
                                        #   Parent Loop BB66_22 Depth=1
                                        #     Parent Loop BB66_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%rcx), %rsi
	movb	(%rsi,%rbx), %al
	movb	%al, -1(%rdi)
	movq	(%rcx), %rax
	movb	(%rax,%rbx), %al
	movb	%al, (%rdi)
	addq	$2, %rbp
	addl	$2, %edx
	addq	$2, %rdi
	addq	$32, %rcx
	cmpq	%r11, %rbp
	jl	.LBB66_43
.LBB66_34:                              # %for.cond.71.loopexit
                                        #   in Loop: Header=BB66_37 Depth=2
	cmpq	%r9, %rbx
	jg	.LBB66_37
# BB#35:                                #   in Loop: Header=BB66_22 Depth=1
	movl	%r10d, %r9d
	jmp	.LBB66_54
	.align	16, 0x90
.LBB66_44:                              # %if.else.95
                                        #   in Loop: Header=BB66_22 Depth=1
	movl	%ecx, %eax
	imull	%r9d, %ecx
	incl	%r9d
	movl	%eax, %esi
	imull	%r9d, %esi
	cmpl	%esi, %ecx
	jge	.LBB66_55
# BB#45:                                # %for.cond.105.preheader.lr.ph
                                        #   in Loop: Header=BB66_22 Depth=1
	movslq	%ecx, %rbx
	movslq	%esi, %rbp
	.align	16, 0x90
.LBB66_46:                              # %for.cond.105.preheader
                                        #   Parent Loop BB66_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB66_52 Depth 3
	testl	%r11d, %r11d
	jle	.LBB66_53
# BB#47:                                # %for.body.109.lr.ph
                                        #   in Loop: Header=BB66_46 Depth=2
	testl	%r12d, %r12d
	movslq	%edx, %rcx
	jne	.LBB66_49
# BB#48:                                #   in Loop: Header=BB66_46 Depth=2
	xorl	%edi, %edi
	jmp	.LBB66_50
	.align	16, 0x90
.LBB66_49:                              # %for.body.109.prol
                                        #   in Loop: Header=BB66_46 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movb	(%rax,%rbx), %al
	movq	104(%rsp), %rdx         # 8-byte Reload
	movb	%al, (%rdx,%rcx)
	leal	1(%rcx), %edx
	incq	%rcx
	movl	$1, %edi
.LBB66_50:                              # %for.body.109.lr.ph.split
                                        #   in Loop: Header=BB66_46 Depth=2
	cmpl	$1, %r11d
	je	.LBB66_53
# BB#51:                                # %for.body.109.lr.ph.split.split
                                        #   in Loop: Header=BB66_46 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	movq	%rdi, %rax
	shlq	$4, %rax
	leaq	(%rax,%r15), %rsi
	.align	16, 0x90
.LBB66_52:                              # %for.body.109
                                        #   Parent Loop BB66_22 Depth=1
                                        #     Parent Loop BB66_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%rsi), %rax
	movb	(%rax,%rbx), %al
	movb	%al, -1(%rcx)
	movq	(%rsi), %rax
	movb	(%rax,%rbx), %al
	movb	%al, (%rcx)
	addq	$2, %rdi
	addl	$2, %edx
	addq	$2, %rcx
	addq	$32, %rsi
	cmpq	%r11, %rdi
	jl	.LBB66_52
.LBB66_53:                              # %for.inc.121
                                        #   in Loop: Header=BB66_46 Depth=2
	incq	%rbx
	cmpq	%rbp, %rbx
	jl	.LBB66_46
.LBB66_54:                              #   in Loop: Header=BB66_22 Depth=1
	movb	40(%rsp), %bl           # 1-byte Reload
.LBB66_55:                              # %for.inc.125
                                        #   in Loop: Header=BB66_22 Depth=1
	movl	48(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB66_56
	.align	16, 0x90
.LBB66_24:                              #   in Loop: Header=BB66_22 Depth=1
	movl	%r10d, %r9d
	movl	%eax, %ecx
.LBB66_56:                              # %for.inc.125
                                        #   in Loop: Header=BB66_22 Depth=1
	incl	%r8d
	cmpl	84(%rsp), %r9d          # 4-byte Folded Reload
	jne	.LBB66_22
.LBB66_57:                              # %if.end.128
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpb	$0, 1118(%rax)
	je	.LBB66_73
# BB#58:                                # %if.then.130
	movss	imageDecode(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	84(%rsp), %r12d         # 4-byte Reload
	movq	112(%rsp), %r14         # 8-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jne	.LBB66_170
	jp	.LBB66_170
# BB#59:                                # %if.then.130
	testl	%r12d, %r12d
	jle	.LBB66_170
# BB#60:                                # %for.body.140.lr.ph
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %r10d
	incq	%r10
	movabsq	$8589934560, %r11       # imm = 0x1FFFFFFE0
	andq	%r10, %r11
	leaq	-32(%r11), %r9
	shrq	$5, %r9
	movl	%r9d, %r8d
	andl	$1, %r8d
	movq	%r15, %rdi
	addq	$48, %rdi
	movl	24(%rsp), %eax          # 4-byte Reload
	andl	$-4, %eax
	movslq	%eax, %rbp
	xorl	%ebx, %ebx
	pcmpeqd	%xmm0, %xmm0
	movq	%r15, %rsi
	.align	16, 0x90
.LBB66_61:                              # %for.body.140
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_67 Depth 2
                                        #     Child Loop BB66_71 Depth 2
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB66_72
# BB#62:                                # %overflow.checked908
                                        #   in Loop: Header=BB66_61 Depth=1
	testq	%r11, %r11
	movl	$0, %edx
	je	.LBB66_69
# BB#63:                                # %vector.body904.preheader
                                        #   in Loop: Header=BB66_61 Depth=1
	testq	%r8, %r8
	movl	$0, %eax
	jne	.LBB66_65
# BB#64:                                # %vector.body904.prol
                                        #   in Loop: Header=BB66_61 Depth=1
	movq	%rbx, %rax
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movdqu	(%r15,%rax), %xmm1
	movdqu	16(%r15,%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, (%r15,%rax)
	movdqu	%xmm2, 16(%r15,%rax)
	movl	$32, %eax
.LBB66_65:                              # %vector.body904.preheader.split
                                        #   in Loop: Header=BB66_61 Depth=1
	testq	%r9, %r9
	movq	%r11, %rdx
	je	.LBB66_69
# BB#66:                                # %vector.body904.preheader.split.split
                                        #   in Loop: Header=BB66_61 Depth=1
	movq	%r11, %rcx
	subq	%rax, %rcx
	leaq	(%rax,%rdi), %rax
	.align	16, 0x90
.LBB66_67:                              # %vector.body904
                                        #   Parent Loop BB66_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rax), %xmm1
	movdqu	-32(%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rax)
	movdqu	%xmm2, -32(%rax)
	movdqu	-16(%rax), %xmm1
	movdqu	(%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$64, %rax
	addq	$-64, %rcx
	jne	.LBB66_67
# BB#68:                                #   in Loop: Header=BB66_61 Depth=1
	movq	%r11, %rdx
.LBB66_69:                              # %middle.block905
                                        #   in Loop: Header=BB66_61 Depth=1
	cmpq	%rdx, %r10
	je	.LBB66_72
# BB#70:                                # %for.body.147.preheader
                                        #   in Loop: Header=BB66_61 Depth=1
	leaq	(%rsi,%rdx), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB66_71:                              # %for.body.147
                                        #   Parent Loop BB66_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	notb	(%rax)
	incq	%rax
	decl	%ecx
	jne	.LBB66_71
.LBB66_72:                              # %for.inc.155
                                        #   in Loop: Header=BB66_61 Depth=1
	incq	%rbx
	addq	%rbp, %rdi
	addq	%rbp, %rsi
	cmpl	%r12d, %ebx
	jne	.LBB66_61
	jmp	.LBB66_170
.LBB66_73:                              # %if.else.159
	cmpl	$10, color_index(%rip)
	movq	104(%rsp), %r15         # 8-byte Reload
	jne	.LBB66_74
# BB#75:                                # %if.then.162
	testl	$-9, base_color_index(%rip)
	je	.LBB66_76
# BB#113:                               # %if.else.379
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	$8, %eax
	movl	84(%rsp), %r12d         # 4-byte Reload
	jne	.LBB66_121
# BB#114:                               # %if.then.382
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %r14d
	andl	$-4, %r14d
	movslq	%r14d, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB66_115
# BB#116:                               # %for.cond.392.preheader
	testl	%r12d, %r12d
	jle	.LBB66_105
# BB#117:                               # %for.body.395.lr.ph
	movl	24(%rsp), %eax          # 4-byte Reload
	andl	$-4, %eax
	movslq	%eax, %r8
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	2(%rax), %r10
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %eax
	andl	$-4, %eax
	movslq	%eax, %r9
	xorl	%esi, %esi
	movq	%r15, %rax
	.align	16, 0x90
.LBB66_118:                             # %for.body.395
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_119 Depth 2
	movq	72(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %ebp
	movq	%r10, %rcx
	movq	%rax, %rdi
	jle	.LBB66_120
	.align	16, 0x90
.LBB66_119:                             # %for.body.405
                                        #   Parent Loop BB66_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %edx
	movb	palette(%rdx,%rdx,2), %bl
	movb	%bl, -2(%rcx)
	movb	palette+1(%rdx,%rdx,2), %bl
	movb	%bl, -1(%rcx)
	movb	palette+2(%rdx,%rdx,2), %dl
	movb	%dl, (%rcx)
	incq	%rdi
	addq	$3, %rcx
	decl	%ebp
	jne	.LBB66_119
.LBB66_120:                             # %for.inc.429
                                        #   in Loop: Header=BB66_118 Depth=1
	incq	%rsi
	addq	%r8, %rax
	addq	%r9, %r10
	cmpl	%r12d, %esi
	jne	.LBB66_118
	jmp	.LBB66_105
.LBB66_74:
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	84(%rsp), %r12d         # 4-byte Reload
	movq	112(%rsp), %r14         # 8-byte Reload
	jmp	.LBB66_130
.LBB66_76:                              # %if.then.167
	cmpl	$1, colorSpace(%rip)
	movl	84(%rsp), %r12d         # 4-byte Reload
	jne	.LBB66_98
# BB#77:                                # %if.then.170
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	$8, %eax
	jne	.LBB66_90
# BB#78:                                # %if.then.173
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	movq	112(%rsp), %r14         # 8-byte Reload
	je	.LBB66_79
# BB#80:                                # %for.cond.182.preheader
	testl	%r12d, %r12d
	jle	.LBB66_89
# BB#81:                                # %for.body.185.lr.ph
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r8d
	andl	$1, %r8d
	movq	%r15, %rcx
	incq	%rcx
	movl	24(%rsp), %eax          # 4-byte Reload
	andl	$-4, %eax
	movslq	%eax, %r9
	movq	48(%rsp), %rsi          # 8-byte Reload
	incq	%rsi
	xorl	%edi, %edi
.LBB66_82:                              # %for.body.185
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_87 Depth 2
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB66_88
# BB#83:                                # %for.body.195.preheader
                                        #   in Loop: Header=BB66_82 Depth=1
	testl	%r8d, %r8d
	movl	$0, %eax
	je	.LBB66_85
# BB#84:                                # %for.body.195.prol
                                        #   in Loop: Header=BB66_82 Depth=1
	movq	%rdi, %rax
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movzbl	(%r15,%rax), %ebp
	movb	palette(%rbp), %bl
	movq	48(%rsp), %rdx          # 8-byte Reload
	movb	%bl, (%rdx,%rax)
	movl	$1, %eax
.LBB66_85:                              # %for.body.195.preheader.split
                                        #   in Loop: Header=BB66_82 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmpl	$1, %edx
	je	.LBB66_88
# BB#86:                                # %for.body.195.preheader.split.split
                                        #   in Loop: Header=BB66_82 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ebp
	subl	%eax, %ebp
	leaq	(%rcx,%rax), %rbx
	leaq	(%rax,%rsi), %rax
	.align	16, 0x90
.LBB66_87:                              # %for.body.195
                                        #   Parent Loop BB66_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rbx), %edx
	movb	palette(%rdx), %dl
	movb	%dl, -1(%rax)
	movzbl	(%rbx), %edx
	movb	palette(%rdx), %dl
	movb	%dl, (%rax)
	addq	$2, %rbx
	addq	$2, %rax
	addl	$-2, %ebp
	jne	.LBB66_87
.LBB66_88:                              # %for.inc.207
                                        #   in Loop: Header=BB66_82 Depth=1
	incq	%rdi
	addq	%r9, %rcx
	addq	%r9, %rsi
	cmpl	%r12d, %edi
	jne	.LBB66_82
.LBB66_89:                              # %for.end.209
	movq	%r15, %rdi
	callq	free
	movl	$8, 592(%r14)
	jmp	.LBB66_130
.LBB66_121:                             # %if.else.434
	movq	%r15, %r14
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %ebx
	leal	3(%rbx,%rbx,2), %r15d
	andl	$-4, %r15d
	movslq	%r15d, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB66_122
# BB#123:                               # %for.cond.445.preheader
	testl	%r12d, %r12d
	movq	%rbx, %r10
	jle	.LBB66_129
# BB#124:                               # %for.body.448.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	2(%rcx), %r9
	leal	3(%r10,%r10,2), %ecx
	andl	$-4, %ecx
	movslq	%ecx, %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB66_125:                             # %for.body.448
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_127 Depth 2
	testl	%eax, %eax
	jle	.LBB66_128
# BB#126:                               #   in Loop: Header=BB66_125 Depth=1
	movq	%rsi, %rcx
	imulq	56(%rsp), %rcx          # 8-byte Folded Reload
	leaq	(%rcx,%r14), %rdi
	movq	%r9, %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB66_127:                             # %for.body.459
                                        #   Parent Loop BB66_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %edx
	notl	%edx
	movl	%ebp, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	leal	(%rbx,%rbp), %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	movzbl	(%rdi,%rbx), %ebx
	andb	$7, %dl
	movzbl	%dl, %edx
	btl	%edx, %ebx
	sbbq	%rdx, %rdx
	andl	$1, %edx
	movb	palette(%rdx,%rdx,2), %bl
	movb	%bl, -2(%rcx)
	movb	palette+1(%rdx,%rdx,2), %bl
	movb	%bl, -1(%rcx)
	movb	palette+2(%rdx,%rdx,2), %dl
	movb	%dl, (%rcx)
	incq	%rbp
	addq	$3, %rcx
	cmpq	%rax, %rbp
	jl	.LBB66_127
.LBB66_128:                             # %for.inc.491
                                        #   in Loop: Header=BB66_125 Depth=1
	incq	%rsi
	addq	%r8, %r9
	cmpl	%r12d, %esi
	jne	.LBB66_125
	jmp	.LBB66_129
.LBB66_98:                              # %if.else.260
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	$8, %eax
	jne	.LBB66_106
# BB#99:                                # %if.then.263
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %r14d
	andl	$-4, %r14d
	movslq	%r14d, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB66_115
# BB#100:                               # %for.cond.273.preheader
	testl	%r12d, %r12d
	jle	.LBB66_105
# BB#101:                               # %for.body.276.lr.ph
	movl	24(%rsp), %eax          # 4-byte Reload
	andl	$-4, %eax
	movslq	%eax, %r8
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	2(%rax), %rbx
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %eax
	andl	$-4, %eax
	movslq	%eax, %r9
	xorl	%esi, %esi
	movq	%r15, %rax
.LBB66_102:                             # %for.body.276
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_103 Depth 2
	movq	72(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	%ecx, %ebp
	movq	%rbx, %rcx
	movq	%rax, %rdi
	jle	.LBB66_104
	.align	16, 0x90
.LBB66_103:                             # %for.body.286
                                        #   Parent Loop BB66_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %edx
	movb	palette(%rdx,%rdx,2), %dl
	movb	%dl, -2(%rcx)
	movb	%dl, -1(%rcx)
	movb	%dl, (%rcx)
	incq	%rdi
	addq	$3, %rcx
	decl	%ebp
	jne	.LBB66_103
.LBB66_104:                             # %for.inc.310
                                        #   in Loop: Header=BB66_102 Depth=1
	incq	%rsi
	addq	%r8, %rax
	addq	%r9, %rbx
	cmpl	%r12d, %esi
	jne	.LBB66_102
.LBB66_105:                             # %for.end.312
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	free
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	$24, 592(%rax)
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	movq	%rax, %r14
	jmp	.LBB66_130
.LBB66_115:
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	112(%rsp), %r14         # 8-byte Reload
	jmp	.LBB66_130
.LBB66_90:                              # %if.else.212
	movq	%r15, %r14
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %ebp
	leal	3(%rbp), %ebx
	movl	%ebx, %r15d
	andl	$-4, %r15d
	movslq	%r15d, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB66_122
# BB#91:                                # %for.cond.222.preheader
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB66_97
# BB#92:                                # %for.body.225.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rax
	andl	$-4, %ebx
	movslq	%ebx, %r8
	xorl	%edx, %edx
	movq	48(%rsp), %r9           # 8-byte Reload
.LBB66_93:                              # %for.body.225
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_95 Depth 2
	testl	%eax, %eax
	jle	.LBB66_96
# BB#94:                                #   in Loop: Header=BB66_93 Depth=1
	movq	%rdx, %rsi
	imulq	56(%rsp), %rsi          # 8-byte Folded Reload
	leaq	(%rsi,%r14), %rdi
	movq	%r9, %rsi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB66_95:                              # %for.body.236
                                        #   Parent Loop BB66_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	notl	%ecx
	movl	%ebx, %ebp
	sarl	$31, %ebp
	shrl	$29, %ebp
	leal	(%rbp,%rbx), %ebp
	sarl	$3, %ebp
	movslq	%ebp, %rbp
	movzbl	(%rdi,%rbp), %ebp
	andb	$7, %cl
	movzbl	%cl, %ecx
	btl	%ecx, %ebp
	movl	$palette, %ecx
	adcq	$0, %rcx
	movb	(%rcx), %cl
	movb	%cl, (%rsi)
	incq	%rbx
	incq	%rsi
	cmpq	%rax, %rbx
	jl	.LBB66_95
.LBB66_96:                              # %for.inc.254
                                        #   in Loop: Header=BB66_93 Depth=1
	incq	%rdx
	addq	%r8, %r9
	cmpl	%r12d, %edx
	jne	.LBB66_93
.LBB66_97:                              # %for.end.256
	movq	%r14, %rdi
	callq	free
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	$8, 592(%rax)
	movl	%r15d, 64(%rsp)         # 4-byte Spill
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rax, %r14
	jmp	.LBB66_130
.LBB66_106:                             # %if.else.315
	movq	%r15, %r14
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %ebx
	leal	3(%rbx,%rbx,2), %r15d
	andl	$-4, %r15d
	movslq	%r15d, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB66_122
# BB#107:                               # %for.cond.326.preheader
	testl	%r12d, %r12d
	movq	%rbx, %r10
	jle	.LBB66_129
# BB#108:                               # %for.body.329.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	2(%rcx), %r9
	leal	3(%r10,%r10,2), %ecx
	andl	$-4, %ecx
	movslq	%ecx, %r8
	xorl	%esi, %esi
.LBB66_109:                             # %for.body.329
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_111 Depth 2
	testl	%eax, %eax
	jle	.LBB66_112
# BB#110:                               #   in Loop: Header=BB66_109 Depth=1
	movq	%rsi, %rcx
	imulq	56(%rsp), %rcx          # 8-byte Folded Reload
	leaq	(%rcx,%r14), %rdi
	movq	%r9, %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB66_111:                             # %for.body.340
                                        #   Parent Loop BB66_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %edx
	notl	%edx
	movl	%ebp, %ebx
	sarl	$31, %ebx
	shrl	$29, %ebx
	leal	(%rbx,%rbp), %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	movzbl	(%rdi,%rbx), %ebx
	andb	$7, %dl
	movzbl	%dl, %edx
	btl	%edx, %ebx
	sbbq	%rdx, %rdx
	andl	$1, %edx
	movb	palette(%rdx,%rdx,2), %dl
	movb	%dl, -2(%rcx)
	movb	%dl, -1(%rcx)
	movb	%dl, (%rcx)
	incq	%rbp
	addq	$3, %rcx
	cmpq	%rax, %rbp
	jl	.LBB66_111
.LBB66_112:                             # %for.inc.372
                                        #   in Loop: Header=BB66_109 Depth=1
	incq	%rsi
	addq	%r8, %r9
	cmpl	%r12d, %esi
	jne	.LBB66_109
.LBB66_129:                             # %for.end.493
	leal	(%r10,%r10,2), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	free
	movq	112(%rsp), %r14         # 8-byte Reload
	movl	$24, 592(%r14)
	movl	%r15d, 64(%rsp)         # 4-byte Spill
	jmp	.LBB66_130
.LBB66_122:
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	112(%rsp), %r14         # 8-byte Reload
	jmp	.LBB66_130
.LBB66_79:
	movq	%r15, 48(%rsp)          # 8-byte Spill
.LBB66_130:                             # %if.end.498
	testl	$-9, color_index(%rip)
	je	.LBB66_132
# BB#131:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB66_170
.LBB66_132:                             # %if.then.504
	movl	colorSpace(%rip), %eax
	movl	%eax, %ecx
	andl	$-3, %ecx
	cmpl	$4, %ecx
	jne	.LBB66_153
# BB#133:                               # %if.then.510
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	$8, %eax
	jne	.LBB66_142
# BB#134:                               # %if.then.513
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %ebx
	andl	$-4, %ebx
	movslq	%ebx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	testq	%rax, %rax
	je	.LBB66_135
# BB#136:                               # %for.cond.523.preheader
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB66_141
# BB#137:                               # %for.body.526.lr.ph
	movss	imageDecode(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movss	imageDecode+4(%rip), %xmm2 # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	movss	%xmm2, 88(%rsp)         # 4-byte Spill
	mulss	.LCPI66_0(%rip), %xmm1
	movss	%xmm1, 96(%rsp)         # 4-byte Spill
	movslq	64(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	2(%rax), %rbx
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	3(%rax,%rax,2), %eax
	andl	$-4, %eax
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movsd	.LCPI66_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	48(%rsp), %r12          # 8-byte Reload
.LBB66_138:                             # %for.body.526
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_139 Depth 2
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	%eax, %r15d
	movq	%r12, %r14
	jle	.LBB66_140
	.align	16, 0x90
.LBB66_139:                             # %for.body.536
                                        #   Parent Loop BB66_138 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm3, %xmm0
	callq	floor
	movsd	.LCPI66_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movss	88(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	96(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvttsd2si	%xmm0, %eax
	movb	%al, -2(%rbx)
	movb	%al, -1(%rbx)
	movb	%al, (%rbx)
	incq	%r14
	addq	$3, %rbx
	decl	%r15d
	jne	.LBB66_139
.LBB66_140:                             # %for.inc.564
                                        #   in Loop: Header=BB66_138 Depth=1
	incq	%rbp
	addq	56(%rsp), %r12          # 8-byte Folded Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	addq	40(%rsp), %rbx          # 8-byte Folded Reload
	cmpl	84(%rsp), %ebp          # 4-byte Folded Reload
	jne	.LBB66_138
.LBB66_141:                             # %for.end.566
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	112(%rsp), %r14         # 8-byte Reload
	movl	$24, 592(%r14)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	84(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB66_169
.LBB66_153:                             # %if.else.637
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB66_154
# BB#155:                               # %if.else.637
	cmpl	$1, %eax
	jne	.LBB66_156
# BB#157:                               # %if.then.643
	movl	584(%r14), %ebp
	addl	$3, %ebp
	movl	%ebp, %ebx
	andl	$-4, %ebx
	movslq	%ebx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	testq	%rax, %rax
	je	.LBB66_158
# BB#159:                               # %for.cond.653.preheader
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB66_167
# BB#160:                               # %for.body.656.lr.ph
	movss	imageDecode(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	imageDecode+4(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 88(%rsp)         # 4-byte Spill
	mulss	.LCPI66_0(%rip), %xmm0
	movss	%xmm0, 96(%rsp)         # 4-byte Spill
	movslq	64(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rbx
	andl	$-4, %ebp
	movslq	%ebp, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB66_161:                             # %for.body.656
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_163 Depth 2
	testl	%ebx, %ebx
	jle	.LBB66_166
# BB#162:                               #   in Loop: Header=BB66_161 Depth=1
	movq	%rbp, %rax
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	movq	72(%rsp), %r14          # 8-byte Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB66_163:                             # %for.body.667
                                        #   Parent Loop BB66_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %eax
	notl	%eax
	movl	%r12d, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%r12), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	andb	$7, %al
	movzbl	%al, %eax
	btl	%eax, %ecx
	movss	.LCPI66_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jb	.LBB66_165
# BB#164:                               # %for.body.667
                                        #   in Loop: Header=BB66_163 Depth=2
	xorps	%xmm0, %xmm0
.LBB66_165:                             # %for.body.667
                                        #   in Loop: Header=BB66_163 Depth=2
	mulss	88(%rsp), %xmm0         # 4-byte Folded Reload
	mulss	.LCPI66_0(%rip), %xmm0
	addss	96(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI66_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, (%r14)
	incq	%r12
	incq	%r14
	cmpq	%rbx, %r12
	jl	.LBB66_163
.LBB66_166:                             # %for.inc.695
                                        #   in Loop: Header=BB66_161 Depth=1
	incq	%rbp
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	64(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	84(%rsp), %r12d         # 4-byte Reload
	cmpl	%r12d, %ebp
	jne	.LBB66_161
.LBB66_167:                             # %for.end.697
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	112(%rsp), %r14         # 8-byte Reload
	movl	$8, 592(%r14)
	jmp	.LBB66_168
.LBB66_142:                             # %if.else.569
	movl	584(%r14), %ebp
	leal	3(%rbp,%rbp,2), %ebx
	andl	$-4, %ebx
	movslq	%ebx, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	calloc
	testq	%rax, %rax
	je	.LBB66_143
# BB#144:                               # %for.cond.580.preheader
	movl	%ebx, 40(%rsp)          # 4-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB66_152
# BB#145:                               # %for.body.583.lr.ph
	movss	imageDecode(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	movss	imageDecode+4(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 88(%rsp)         # 4-byte Spill
	mulss	.LCPI66_0(%rip), %xmm0
	movss	%xmm0, 96(%rsp)         # 4-byte Spill
	movslq	64(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rbx
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	2(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	3(%rbp,%rbp,2), %eax
	andl	$-4, %eax
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
.LBB66_146:                             # %for.body.583
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_148 Depth 2
	testl	%ebx, %ebx
	jle	.LBB66_151
# BB#147:                               #   in Loop: Header=BB66_146 Depth=1
	movq	%r14, %rax
	imulq	56(%rsp), %rax          # 8-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	movq	72(%rsp), %rbp          # 8-byte Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB66_148:                             # %for.body.594
                                        #   Parent Loop BB66_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %eax
	notl	%eax
	movl	%r12d, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%r12), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx), %ecx
	andb	$7, %al
	movzbl	%al, %eax
	btl	%eax, %ecx
	movss	.LCPI66_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jb	.LBB66_150
# BB#149:                               # %for.body.594
                                        #   in Loop: Header=BB66_148 Depth=2
	xorps	%xmm0, %xmm0
.LBB66_150:                             # %for.body.594
                                        #   in Loop: Header=BB66_148 Depth=2
	mulss	88(%rsp), %xmm0         # 4-byte Folded Reload
	mulss	.LCPI66_0(%rip), %xmm0
	addss	96(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI66_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, -2(%rbp)
	movb	%al, -1(%rbp)
	movb	%al, (%rbp)
	incq	%r12
	addq	$3, %rbp
	cmpq	%rbx, %r12
	jl	.LBB66_148
.LBB66_151:                             # %for.inc.631
                                        #   in Loop: Header=BB66_146 Depth=1
	incq	%r14
	movq	64(%rsp), %rax          # 8-byte Reload
	addq	%rax, 72(%rsp)          # 8-byte Folded Spill
	movl	84(%rsp), %r12d         # 4-byte Reload
	cmpl	%r12d, %r14d
	jne	.LBB66_146
.LBB66_152:                             # %for.end.633
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	112(%rsp), %r14         # 8-byte Reload
	movl	$24, 592(%r14)
.LBB66_168:                             # %if.end.704
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
.LBB66_169:                             # %if.end.704
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB66_170
.LBB66_154:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB66_170
.LBB66_156:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB66_170
.LBB66_135:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB66_170
.LBB66_158:
	movq	48(%rsp), %r15          # 8-byte Reload
	jmp	.LBB66_170
.LBB66_143:
	movq	48(%rsp), %r15          # 8-byte Reload
.LBB66_170:                             # %if.end.704
	movl	592(%r14), %eax
	cmpl	$24, %eax
	jne	.LBB66_171
# BB#177:                               # %for.cond.709.preheader
	movq	%r15, 104(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	movl	%r12d, 84(%rsp)         # 4-byte Spill
	jle	.LBB66_222
# BB#178:                               # %for.body.712.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	2(%rcx), %rcx
	movslq	64(%rsp), %rdx          # 4-byte Folded Reload
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	movl	$gs_identity_transfer, %r14d
	.align	16, 0x90
.LBB66_179:                             # %for.body.712
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_180 Depth 2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movq	%rcx, %rbp
	movl	$0, %r15d
	jle	.LBB66_211
	.align	16, 0x90
.LBB66_180:                             # %for.body.720
                                        #   Parent Loop BB66_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	496(%r13), %rsi
	movzbl	-2(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_181
# BB#182:                               # %cond.end
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	496(%r13), %rsi
	movswl	%ax, %r12d
	addl	%r12d, %r12d
	movzbl	-2(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_184
# BB#183:                               # %cond.false.774
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_184
	.align	16, 0x90
.LBB66_181:                             # %cond.end.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %r12d
	addl	%r12d, %r12d
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_184:                             # %cond.end.793
                                        #   in Loop: Header=BB66_180 Depth=2
	movswl	%ax, %ecx
	shrl	$11, %ecx
	addl	%r12d, %ecx
	movl	$255, %eax
	testb	$-1, %ch
	jne	.LBB66_190
# BB#185:                               # %cond.false.802
                                        #   in Loop: Header=BB66_180 Depth=2
	movq	496(%r13), %rsi
	movzbl	-2(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_186
# BB#187:                               # %cond.end.841
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	496(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	-2(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_189
# BB#188:                               # %cond.false.863
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_189
.LBB66_186:                             # %cond.end.841.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_189:                             # %cond.end.882
                                        #   in Loop: Header=BB66_180 Depth=2
	cwtl
	shrl	$11, %eax
	addl	%ebx, %eax
	movzwl	%ax, %eax
.LBB66_190:                             # %cond.end.888
                                        #   in Loop: Header=BB66_180 Depth=2
	movb	%al, -2(%rbp)
	movq	504(%r13), %rsi
	movzbl	-1(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_191
# BB#192:                               # %cond.end.936
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	504(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	-1(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_194
# BB#193:                               # %cond.false.960
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_194
	.align	16, 0x90
.LBB66_191:                             # %cond.end.936.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_194:                             # %cond.end.981
                                        #   in Loop: Header=BB66_180 Depth=2
	movswl	%ax, %ecx
	shrl	$11, %ecx
	addl	%ebx, %ecx
	movl	$255, %eax
	testb	$-1, %ch
	jne	.LBB66_200
# BB#195:                               # %cond.false.990
                                        #   in Loop: Header=BB66_180 Depth=2
	movq	504(%r13), %rsi
	movzbl	-1(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_196
# BB#197:                               # %cond.end.1033
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	504(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	-1(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_199
# BB#198:                               # %cond.false.1057
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_199
.LBB66_196:                             # %cond.end.1033.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_199:                             # %cond.end.1078
                                        #   in Loop: Header=BB66_180 Depth=2
	cwtl
	shrl	$11, %eax
	addl	%ebx, %eax
	movzwl	%ax, %eax
.LBB66_200:                             # %cond.end.1084
                                        #   in Loop: Header=BB66_180 Depth=2
	movb	%al, -1(%rbp)
	movq	512(%r13), %rsi
	movzbl	(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_201
# BB#202:                               # %cond.end.1133
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	512(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_204
# BB#203:                               # %cond.false.1157
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_204
	.align	16, 0x90
.LBB66_201:                             # %cond.end.1133.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_204:                             # %cond.end.1178
                                        #   in Loop: Header=BB66_180 Depth=2
	movswl	%ax, %ecx
	shrl	$11, %ecx
	addl	%ebx, %ecx
	movl	$255, %eax
	testb	$-1, %ch
	jne	.LBB66_210
# BB#205:                               # %cond.false.1187
                                        #   in Loop: Header=BB66_180 Depth=2
	movq	512(%r13), %rsi
	movzbl	(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r14, 24(%rsi)
	je	.LBB66_206
# BB#207:                               # %cond.end.1230
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	512(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	(%rbp), %eax
	shrl	%eax
	cmpq	%r14, 24(%rsi)
	je	.LBB66_209
# BB#208:                               # %cond.false.1254
                                        #   in Loop: Header=BB66_180 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_209
.LBB66_206:                             # %cond.end.1230.thread
                                        #   in Loop: Header=BB66_180 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_209:                             # %cond.end.1275
                                        #   in Loop: Header=BB66_180 Depth=2
	cwtl
	shrl	$11, %eax
	addl	%ebx, %eax
	movzwl	%ax, %eax
.LBB66_210:                             # %cond.end.1281
                                        #   in Loop: Header=BB66_180 Depth=2
	movb	%al, (%rbp)
	incq	%r15
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rax
	addq	$3, %rbp
	cmpq	%rax, %r15
	jl	.LBB66_180
.LBB66_211:                             # %for.inc.1291
                                        #   in Loop: Header=BB66_179 Depth=1
	movq	88(%rsp), %rdx          # 8-byte Reload
	incq	%rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	addq	72(%rsp), %rcx          # 8-byte Folded Reload
	cmpl	84(%rsp), %edx          # 4-byte Folded Reload
	jne	.LBB66_179
	jmp	.LBB66_222
.LBB66_171:                             # %if.end.704
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	%r12d, 84(%rsp)         # 4-byte Spill
	cmpl	$8, %eax
	jne	.LBB66_222
# BB#172:                               # %for.cond.1299.preheader
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	jle	.LBB66_222
# BB#173:                               # %for.body.1302.lr.ph
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %eax
	movslq	64(%rsp), %rcx          # 4-byte Folded Reload
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$gs_identity_transfer, %r12d
	movq	104(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB66_174:                             # %for.body.1302
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_175 Depth 2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movq	%rdx, %rbp
	movl	$0, %r14d
	jle	.LBB66_221
	.align	16, 0x90
.LBB66_175:                             # %for.body.1310
                                        #   Parent Loop BB66_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	520(%r13), %rsi
	movzbl	(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r12, 24(%rsi)
	je	.LBB66_176
# BB#212:                               # %cond.end.1345
                                        #   in Loop: Header=BB66_175 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	520(%r13), %rsi
	movswl	%ax, %r15d
	addl	%r15d, %r15d
	movzbl	(%rbp), %eax
	shrl	%eax
	cmpq	%r12, 24(%rsi)
	je	.LBB66_214
# BB#213:                               # %cond.false.1365
                                        #   in Loop: Header=BB66_175 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_214
	.align	16, 0x90
.LBB66_176:                             # %cond.end.1345.thread
                                        #   in Loop: Header=BB66_175 Depth=2
	movzwl	%cx, %r15d
	addl	%r15d, %r15d
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_214:                             # %cond.end.1382
                                        #   in Loop: Header=BB66_175 Depth=2
	movswl	%ax, %ecx
	shrl	$11, %ecx
	addl	%r15d, %ecx
	movl	$255, %eax
	testb	$-1, %ch
	jne	.LBB66_220
# BB#215:                               # %cond.false.1391
                                        #   in Loop: Header=BB66_175 Depth=2
	movq	520(%r13), %rsi
	movzbl	(%rbp), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r12, 24(%rsi)
	je	.LBB66_216
# BB#217:                               # %cond.end.1426
                                        #   in Loop: Header=BB66_175 Depth=2
	addq	$56, %rsi
	movswl	%cx, %edi
	callq	gx_color_frac_map
	movq	520(%r13), %rsi
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movzbl	(%rbp), %eax
	shrl	%eax
	cmpq	%r12, 24(%rsi)
	je	.LBB66_219
# BB#218:                               # %cond.false.1446
                                        #   in Loop: Header=BB66_175 Depth=2
	addq	$56, %rsi
	movswl	%ax, %edi
	callq	gx_color_frac_map
	jmp	.LBB66_219
.LBB66_216:                             # %cond.end.1426.thread
                                        #   in Loop: Header=BB66_175 Depth=2
	movzwl	%cx, %ebx
	addl	%ebx, %ebx
	andl	$65534, %eax            # imm = 0xFFFE
	shrl	%eax
.LBB66_219:                             # %cond.end.1463
                                        #   in Loop: Header=BB66_175 Depth=2
	cwtl
	shrl	$11, %eax
	addl	%ebx, %eax
	movzwl	%ax, %eax
.LBB66_220:                             # %cond.end.1469
                                        #   in Loop: Header=BB66_175 Depth=2
	movb	%al, (%rbp)
	incq	%r14
	movq	112(%rsp), %rax         # 8-byte Reload
	movslq	584(%rax), %rax
	incq	%rbp
	cmpq	%rax, %r14
	jl	.LBB66_175
.LBB66_221:                             # %for.inc.1477
                                        #   in Loop: Header=BB66_174 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	88(%rsp), %rdx          # 8-byte Reload
	addq	72(%rsp), %rdx          # 8-byte Folded Reload
	cmpl	84(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB66_174
.LBB66_222:                             # %if.end.1481
	movq	apiEntry(%rip), %rax
	movq	472(%rax), %rax
	testq	%rax, %rax
	movl	84(%rsp), %r14d         # 4-byte Reload
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB66_224
# BB#223:                               # %if.then.1483
	movl	printerContext(%rip), %edi
	movl	64(%rsp), %esi          # 4-byte Reload
	imull	%r14d, %esi
	movq	%rbx, %rdx
	callq	*%rax
.LBB66_224:                             # %if.end.1487
	testq	%rbx, %rbx
	movq	112(%rsp), %rbp         # 8-byte Reload
	je	.LBB66_226
# BB#225:                               # %if.then.1489
	movq	%rbx, %rdi
	callq	free
.LBB66_226:                             # %if.end.1491
	addl	600(%rbp), %r14d
	movl	%r14d, 600(%rbp)
	cmpl	588(%rbp), %r14d
	setge	%al
	movzbl	%al, %eax
.LBB66_227:                             # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	opvp_image_plane_data, .Lfunc_end66-opvp_image_plane_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI67_0:
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.text
	.align	16, 0x90
	.type	opvp_image_end_image,@function
opvp_image_end_image:                   # @opvp_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp376:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp377:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp378:
	.cfi_def_cfa_offset 64
.Ltmp379:
	.cfi_offset %rbx, -32
.Ltmp380:
	.cfi_offset %r14, -24
.Ltmp381:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	16(%rbx), %rbp
	movzbl	begin_image(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB67_16
# BB#1:                                 # %if.then
	movq	apiEntry(%rip), %rax
	movq	480(%rax), %rax
	testq	%rax, %rax
	je	.LBB67_3
# BB#2:                                 # %if.then.3
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB67_3:                               # %if.end
	movb	$0, begin_image(%rip)
	cmpl	$1, FastImageMode(%rip)
	je	.LBB67_8
# BB#4:                                 # %if.then.5
	movq	apiEntry(%rip), %rax
	movq	88(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB67_6
# BB#5:                                 # %if.then.7
	movl	printerContext(%rip), %edi
	callq	*%rcx
	jmp	.LBB67_8
.LBB67_6:                               # %if.else
	movaps	.LCPI67_0(%rip), %xmm0  # xmm0 = [1.000000e+00,0.000000e+00,0.000000e+00,1.000000e+00]
	movaps	%xmm0, (%rsp)
	movq	$0, 16(%rsp)
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.LBB67_8
# BB#7:                                 # %if.then.11
	movl	printerContext(%rip), %edi
	leaq	(%rsp), %rsi
	callq	*%rax
.LBB67_8:                               # %if.end.16
	movzbl	change_paint_mode(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB67_12
# BB#9:                                 # %if.then.18
	movq	apiEntry(%rip), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.LBB67_11
# BB#10:                                # %if.then.20
	movl	printerContext(%rip), %edi
	movl	$1, %esi
	callq	*%rax
.LBB67_11:                              # %if.end.23
	movb	$0, change_paint_mode(%rip)
.LBB67_12:                              # %if.end.24
	movzbl	change_cspace(%rip), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB67_16
# BB#13:                                # %if.then.26
	movl	savedColorSpace(%rip), %esi
	movl	%esi, colorSpace(%rip)
	movq	apiEntry(%rip), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.LBB67_15
# BB#14:                                # %if.then.28
	movl	printerContext(%rip), %edi
	callq	*%rax
.LBB67_15:                              # %if.end.31
	movb	$0, change_cspace(%rip)
.LBB67_16:                              # %if.end.33
	movq	8840(%rbp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	gdev_vector_end_image
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end67:
	.size	opvp_image_end_image, .Lfunc_end67-opvp_image_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iso"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a10"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"c10"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"b10"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"jis"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"a9"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"c9"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"b9"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"a8"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"c8"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"b8"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"a7"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"na"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"index-3x5"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"c7"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"c7c6"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"b7"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"jpn"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"chou4"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"personal"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"prc"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"32k"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"monarch"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"number-9"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"hagaki"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"om"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"small-photo"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"italian"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"index-4x6"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"1"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"2"
	.size	.L.str.30, 2

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"number-10"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"a6"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"you4"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"4"
	.size	.L.str.34, 2

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"dl"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"5"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"chou2"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"a2"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"c6"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"c6c5"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"postfix"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"number-11"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"chou3"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"8"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"6"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"number-12"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"b6"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"3"
	.size	.L.str.48, 2

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"b6c4"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"5x7"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"index-5x8"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"number-14"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"invoice"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"16k"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"oufuku"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"a5"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"index-4x6-ext"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"6x9"
	.size	.L.str.58, 4

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"7"
	.size	.L.str.59, 2

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"c5"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"a5-extra"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"b5"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"7x9"
	.size	.L.str.63, 4

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"executive"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"roc"
	.size	.L.str.65, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"juuro-ku-kai"
	.size	.L.str.66, 13

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"large-photo"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"b5-extra"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"govt-letter"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"govt-legal"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"a4"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"folio"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"folio-sp"
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"quarto"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"letter"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"fanfold-eur"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"letter-plus"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"foolscap"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"legal"
	.size	.L.str.79, 6

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"exec"
	.size	.L.str.80, 5

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"invite"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"a4-tab"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"super-a"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"9x11"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"arch-a"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"c4"
	.size	.L.str.86, 3

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"a4-extra"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"kahu"
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"kaku2"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"letter-extra"
	.size	.L.str.90, 13

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"legal-extra"
	.size	.L.str.91, 12

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"b4"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"10x11"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"10x13"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"10x14"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"10x15"
	.size	.L.str.96, 6

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"pa-kai"
	.size	.L.str.97, 7

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"8k"
	.size	.L.str.98, 3

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"dai-pa-kai"
	.size	.L.str.99, 11

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"11x12"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"edp"
	.size	.L.str.101, 4

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"fanfold-us"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"11x15"
	.size	.L.str.103, 6

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"ledger"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"a3"
	.size	.L.str.105, 3

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"a4x3"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"a4x4"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"a4x5"
	.size	.L.str.108, 5

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"a4x6"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"a4x7"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"a4x8"
	.size	.L.str.111, 5

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"a4x9"
	.size	.L.str.112, 5

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"eur-edp"
	.size	.L.str.113, 8

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"arch-b"
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"12x19"
	.size	.L.str.115, 6

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"b-plus"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"a3-extra"
	.size	.L.str.117, 9

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"c3"
	.size	.L.str.118, 3

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"10"
	.size	.L.str.119, 3

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"super-b"
	.size	.L.str.120, 8

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"b3"
	.size	.L.str.121, 3

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"a3x3"
	.size	.L.str.122, 5

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"a3x4"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"a3x5"
	.size	.L.str.124, 5

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"a3x6"
	.size	.L.str.125, 5

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"a3x7"
	.size	.L.str.126, 5

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"ra2"
	.size	.L.str.127, 4

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"c"
	.size	.L.str.128, 2

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"sra2"
	.size	.L.str.129, 5

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"arch-c"
	.size	.L.str.130, 7

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"c2"
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"b2"
	.size	.L.str.132, 3

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"d"
	.size	.L.str.133, 2

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"a1"
	.size	.L.str.134, 3

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"a2x3"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"a2x4"
	.size	.L.str.136, 5

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"a2x5"
	.size	.L.str.137, 5

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"arch-d"
	.size	.L.str.138, 7

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"ra1"
	.size	.L.str.139, 4

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"sra1"
	.size	.L.str.140, 5

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"c1"
	.size	.L.str.141, 3

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"b1"
	.size	.L.str.142, 3

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"asme"
	.size	.L.str.143, 5

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"f"
	.size	.L.str.144, 2

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"wide-format"
	.size	.L.str.145, 12

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"a0"
	.size	.L.str.146, 3

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"a1x3"
	.size	.L.str.147, 5

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"a1x4"
	.size	.L.str.148, 5

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"ra0"
	.size	.L.str.149, 4

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"e"
	.size	.L.str.150, 2

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"sra0"
	.size	.L.str.151, 5

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"arch-e"
	.size	.L.str.152, 7

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"c0"
	.size	.L.str.153, 3

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"b0"
	.size	.L.str.154, 3

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"2a0"
	.size	.L.str.155, 4

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"a0x3"
	.size	.L.str.156, 5

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"4a0"
	.size	.L.str.157, 4

	.type	paperTable,@object      # @paperTable
	.data
	.globl	paperTable
	.align	16
paperTable:
	.quad	.L.str
	.quad	.L.str.1
	.long	1116956366              # float 73.7007904
	.long	1121043335              # float 104.881889
	.quad	.L.str
	.quad	.L.str.2
	.long	1117699451              # float 79.370079
	.long	1122157963              # float 113.385826
	.quad	.L.str
	.quad	.L.str.3
	.long	1118814079              # float 87.8740158
	.long	1123644134              # float 124.724411
	.quad	.L.str.4
	.quad	.L.str.3
	.long	1119185622              # float 90.7086639
	.long	1124015676              # float 127.559052
	.quad	.L.str
	.quad	.L.str.5
	.long	1121043335              # float 104.881889
	.long	1125344974              # float 147.401581
	.quad	.L.str
	.quad	.L.str.6
	.long	1122157963              # float 113.385826
	.long	1126273830              # float 161.574799
	.quad	.L.str
	.quad	.L.str.7
	.long	1123644134              # float 124.724411
	.long	1127202687              # float 175.748032
	.quad	.L.str.4
	.quad	.L.str.7
	.long	1124015676              # float 127.559052
	.long	1127574230              # float 181.417328
	.quad	.L.str
	.quad	.L.str.8
	.long	1125344974              # float 147.401581
	.long	1129431943              # float 209.763779
	.quad	.L.str
	.quad	.L.str.9
	.long	1126273830              # float 161.574799
	.long	1130732342              # float 229.606293
	.quad	.L.str
	.quad	.L.str.10
	.long	1127202687              # float 175.748032
	.long	1132032742              # float 249.448822
	.quad	.L.str.4
	.quad	.L.str.10
	.long	1127574230              # float 181.417328
	.long	1132526068              # float 257.952759
	.quad	.L.str
	.quad	.L.str.11
	.long	1129431943              # float 209.763779
	.long	1133826467              # float 297.637787
	.quad	.L.str.12
	.quad	.L.str.13
	.long	1129840640              # float 216
	.long	1135869952              # float 360
	.quad	.L.str
	.quad	.L.str.14
	.long	1130732342              # float 229.606293
	.long	1134662438              # float 323.149597
	.quad	.L.str
	.quad	.L.str.15
	.long	1130732342              # float 229.606293
	.long	1139120950              # float 459.212585
	.quad	.L.str
	.quad	.L.str.16
	.long	1132032742              # float 249.448822
	.long	1135684181              # float 354.330719
	.quad	.L.str.17
	.quad	.L.str.18
	.long	1132404284              # float 255.118103
	.long	1141982861              # float 581.102356
	.quad	.L.str.4
	.quad	.L.str.16
	.long	1132526068              # float 257.952759
	.long	1135962838              # float 362.834656
	.quad	.L.str.12
	.quad	.L.str.19
	.long	1132625920              # float 261
	.long	1139408896              # float 468
	.quad	.L.str.20
	.quad	.L.str.21
	.long	1133083382              # float 274.960632
	.long	1138099208              # float 428.031494
	.quad	.L.str.12
	.quad	.L.str.22
	.long	1133215744              # float 279
	.long	1141309440              # float 540
	.quad	.L.str.12
	.quad	.L.str.23
	.long	1133215744              # float 279
	.long	1142931456              # float 639
	.quad	.L.str.17
	.quad	.L.str.24
	.long	1133362039              # float 283.464569
	.long	1137820551              # float 419.527557
	.quad	.L.str.25
	.quad	.L.str.26
	.long	1133362039              # float 283.464569
	.long	1138006322              # float 425.196838
	.quad	.L.str.25
	.quad	.L.str.27
	.long	1133362039              # float 283.464569
	.long	1143143932              # float 651.968505
	.quad	.L.str.12
	.quad	.L.str.28
	.long	1133510656              # float 288
	.long	1138229248              # float 432
	.quad	.L.str.20
	.quad	.L.str.29
	.long	1133547810              # float 289.13385
	.long	1139399607              # float 467.716522
	.quad	.L.str.20
	.quad	.L.str.30
	.long	1133547810              # float 289.13385
	.long	1140421350              # float 498.897644
	.quad	.L.str.12
	.quad	.L.str.31
	.long	1133805568              # float 297
	.long	1143668736              # float 684
	.quad	.L.str
	.quad	.L.str.32
	.long	1133826467              # float 297.637787
	.long	1137820551              # float 419.527557
	.quad	.L.str.17
	.quad	.L.str.33
	.long	1133826467              # float 297.637787
	.long	1143376146              # float 666.141724
	.quad	.L.str.20
	.quad	.L.str.34
	.long	1134290896              # float 311.811035
	.long	1142122190              # float 589.606323
	.quad	.L.str
	.quad	.L.str.35
	.long	1134290896              # float 311.811035
	.long	1142679504              # float 623.62207
	.quad	.L.str.20
	.quad	.L.str.36
	.long	1134290896              # float 311.811035
	.long	1142679504              # float 623.62207
	.quad	.L.str.17
	.quad	.L.str.37
	.long	1134393070              # float 314.929138
	.long	1137634780              # float 413.858276
	.quad	.L.str.12
	.quad	.L.str.38
	.long	1134395392              # float 315
	.long	1137639424              # float 414
	.quad	.L.str
	.quad	.L.str.39
	.long	1134662438              # float 323.149597
	.long	1139120950              # float 459.212585
	.quad	.L.str
	.quad	.L.str.40
	.long	1134662438              # float 323.149597
	.long	1143097489              # float 649.13385
	.quad	.L.str.25
	.quad	.L.str.41
	.long	1134662438              # float 323.149597
	.long	1143097489              # float 649.13385
	.quad	.L.str.12
	.quad	.L.str.42
	.long	1134690304              # float 324
	.long	1144700928              # float 747
	.quad	.L.str.17
	.quad	.L.str.43
	.long	1135219752              # float 340.157471
	.long	1143376146              # float 666.141724
	.quad	.L.str.20
	.quad	.L.str.44
	.long	1135219752              # float 340.157471
	.long	1146812916              # float 875.905517
	.quad	.L.str.20
	.quad	.L.str.45
	.long	1135219752              # float 340.157471
	.long	1147323787              # float 907.086608
	.quad	.L.str.12
	.quad	.L.str.46
	.long	1135280128              # float 342
	.long	1145438208              # float 792
	.quad	.L.str
	.quad	.L.str.47
	.long	1135684181              # float 354.330719
	.long	1140421350              # float 498.897644
	.quad	.L.str.20
	.quad	.L.str.48
	.long	1135684181              # float 354.330719
	.long	1140421350              # float 498.897644
	.quad	.L.str
	.quad	.L.str.49
	.long	1135684181              # float 354.330719
	.long	1147509558              # float 918.42517
	.quad	.L.str.12
	.quad	.L.str.50
	.long	1135869952              # float 360
	.long	1140588544              # float 504
	.quad	.L.str.12
	.quad	.L.str.51
	.long	1135869952              # float 360
	.long	1141899264              # float 576
	.quad	.L.str.12
	.quad	.L.str.52
	.long	1135869952              # float 360
	.long	1146028032              # float 828
	.quad	.L.str.4
	.quad	.L.str.47
	.long	1135962838              # float 362.834656
	.long	1140914676              # float 515.905518
	.quad	.L.str.12
	.quad	.L.str.53
	.long	1137049600              # float 396
	.long	1142489088              # float 612
	.quad	.L.str.20
	.quad	.L.str.54
	.long	1137634780              # float 413.858276
	.long	1142447289              # float 609.448792
	.quad	.L.str.17
	.quad	.L.str.55
	.long	1137820551              # float 419.527557
	.long	1141750647              # float 566.929138
	.quad	.L.str
	.quad	.L.str.56
	.long	1137820551              # float 419.527557
	.long	1142215075              # float 595.275574
	.quad	.L.str.12
	.quad	.L.str.57
	.long	1138229248              # float 432
	.long	1141899264              # float 576
	.quad	.L.str.12
	.quad	.L.str.58
	.long	1138229248              # float 432
	.long	1143078912              # float 648
	.quad	.L.str.20
	.quad	.L.str.59
	.long	1138935179              # float 453.543304
	.long	1143143932              # float 651.968505
	.quad	.L.str
	.quad	.L.str.60
	.long	1139120950              # float 459.212585
	.long	1143097489              # float 649.13385
	.quad	.L.str.12
	.quad	.L.str.60
	.long	1139408896              # float 468
	.long	1143668736              # float 684
	.quad	.L.str
	.quad	.L.str.61
	.long	1140235578              # float 493.228333
	.long	1143376146              # float 666.141724
	.quad	.L.str
	.quad	.L.str.62
	.long	1140421350              # float 498.897644
	.long	1144072789              # float 708.661438
	.quad	.L.str.12
	.quad	.L.str.63
	.long	1140588544              # float 504
	.long	1143078912              # float 648
	.quad	.L.str.4
	.quad	.L.str.62
	.long	1140914676              # float 515.905518
	.long	1144397889              # float 728.503967
	.quad	.L.str.12
	.quad	.L.str.64
	.long	1141014528              # float 522
	.long	1144848384              # float 756
	.quad	.L.str.65
	.quad	.L.str.54
	.long	1141604352              # float 558
	.long	1145143296              # float 774
	.quad	.L.str.25
	.quad	.L.str.66
	.long	1141657761              # float 561.259827
	.long	1145233860              # float 779.527587
	.quad	.L.str.25
	.quad	.L.str.67
	.long	1141750647              # float 566.929138
	.long	1146394930              # float 850.393677
	.quad	.L.str
	.quad	.L.str.68
	.long	1141797090              # float 569.763794
	.long	1145280302              # float 782.362183
	.quad	.L.str.12
	.quad	.L.str.69
	.long	1141899264              # float 576
	.long	1144258560              # float 720
	.quad	.L.str.12
	.quad	.L.str.70
	.long	1141899264              # float 576
	.long	1147797504              # float 936
	.quad	.L.str
	.quad	.L.str.71
	.long	1142215075              # float 595.275574
	.long	1146255602              # float 841.889771
	.quad	.L.str.25
	.quad	.L.str.72
	.long	1142215075              # float 595.275574
	.long	1147788215              # float 935.433044
	.quad	.L.str.25
	.quad	.L.str.73
	.long	1142447289              # float 609.448792
	.long	1147091573              # float 892.913391
	.quad	.L.str.12
	.quad	.L.str.74
	.long	1142489088              # float 612
	.long	1145237668              # float 779.760009
	.quad	.L.str.12
	.quad	.L.str.75
	.long	1142489088              # float 612
	.long	1145438208              # float 792
	.quad	.L.str.12
	.quad	.L.str.76
	.long	1142489088              # float 612
	.long	1146617856              # float 864
	.quad	.L.str.12
	.quad	.L.str.77
	.long	1142489088              # float 612
	.long	1147431813              # float 913.679992
	.quad	.L.str.12
	.quad	.L.str.78
	.long	1142489088              # float 612
	.long	1147797504              # float 936
	.quad	.L.str.12
	.quad	.L.str.79
	.long	1142489088              # float 612
	.long	1148977152              # float 1008
	.quad	.L.str.4
	.quad	.L.str.80
	.long	1142493732              # float 612.283447
	.long	1147788215              # float 935.433044
	.quad	.L.str.25
	.quad	.L.str.81
	.long	1142679504              # float 623.62207
	.long	1142679504              # float 623.62207
	.quad	.L.str
	.quad	.L.str.82
	.long	1142911718              # float 637.795288
	.long	1146255602              # float 841.889771
	.quad	.L.str.12
	.quad	.L.str.83
	.long	1143008133              # float 643.679993
	.long	1148977152              # float 1008
	.quad	.L.str.12
	.quad	.L.str.84
	.long	1143078912              # float 648
	.long	1145438208              # float 792
	.quad	.L.str.12
	.quad	.L.str.85
	.long	1143078912              # float 648
	.long	1146617856              # float 864
	.quad	.L.str
	.quad	.L.str.86
	.long	1143097489              # float 649.13385
	.long	1147509558              # float 918.42517
	.quad	.L.str
	.quad	.L.str.87
	.long	1143399368              # float 667.559082
	.long	1147430606              # float 913.606323
	.quad	.L.str.17
	.quad	.L.str.88
	.long	1143608360              # float 680.314941
	.long	1147421317              # float 913.039367
	.quad	.L.str.17
	.quad	.L.str.89
	.long	1143608360              # float 680.314941
	.long	1147881101              # float 941.102355
	.quad	.L.str.12
	.quad	.L.str.90
	.long	1143668736              # float 684
	.long	1146617856              # float 864
	.quad	.L.str.12
	.quad	.L.str.91
	.long	1143668736              # float 684
	.long	1149698048              # float 1080
	.quad	.L.str
	.quad	.L.str.92
	.long	1144072789              # float 708.661438
	.long	1148856401              # float 1000.62994
	.quad	.L.str.12
	.quad	.L.str.93
	.long	1144258560              # float 720
	.long	1145438208              # float 792
	.quad	.L.str.12
	.quad	.L.str.94
	.long	1144258560              # float 720
	.long	1147797504              # float 936
	.quad	.L.str.12
	.quad	.L.str.95
	.long	1144258560              # float 720
	.long	1148977152              # float 1008
	.quad	.L.str.12
	.quad	.L.str.96
	.long	1144258560              # float 720
	.long	1149698048              # float 1080
	.quad	.L.str.4
	.quad	.L.str.92
	.long	1144397889              # float 728.503967
	.long	1149303284              # float 1031.81104
	.quad	.L.str.25
	.quad	.L.str.97
	.long	1144862317              # float 756.850402
	.long	1149883819              # float 1102.67712
	.quad	.L.str.65
	.quad	.L.str.98
	.long	1145143296              # float 774
	.long	1149992960              # float 1116
	.quad	.L.str.25
	.quad	.L.str.99
	.long	1145233860              # float 779.527587
	.long	1150023148              # float 1119.68506
	.quad	.L.str.12
	.quad	.L.str.100
	.long	1145438208              # float 792
	.long	1146617856              # float 864
	.quad	.L.str.12
	.quad	.L.str.101
	.long	1145438208              # float 792
	.long	1148977152              # float 1008
	.quad	.L.str.12
	.quad	.L.str.102
	.long	1145438208              # float 792
	.long	1149624320              # float 1071
	.quad	.L.str.12
	.quad	.L.str.103
	.long	1145438208              # float 792
	.long	1149698048              # float 1080
	.quad	.L.str.12
	.quad	.L.str.104
	.long	1145438208              # float 792
	.long	1150877696              # float 1224
	.quad	.L.str
	.quad	.L.str.105
	.long	1146255602              # float 841.889771
	.long	1150603683              # float 1190.55115
	.quad	.L.str
	.quad	.L.str.106
	.long	1146255602              # float 841.889771
	.long	1155480181              # float 1785.82678
	.quad	.L.str
	.quad	.L.str.107
	.long	1146255602              # float 841.889771
	.long	1159003902              # float 2383.93701
	.quad	.L.str
	.quad	.L.str.108
	.long	1146255602              # float 841.889771
	.long	1161442151              # float 2979.21265
	.quad	.L.str
	.quad	.L.str.109
	.long	1146255602              # float 841.889771
	.long	1163880400              # float 3574.48828
	.quad	.L.str
	.quad	.L.str.110
	.long	1146255602              # float 841.889771
	.long	1166167580              # float 4169.76367
	.quad	.L.str
	.quad	.L.str.111
	.long	1146255602              # float 841.889771
	.long	1167392510              # float 4767.87402
	.quad	.L.str
	.quad	.L.str.112
	.long	1146255602              # float 841.889771
	.long	1168611634              # float 5363.14941
	.quad	.L.str.12
	.quad	.L.str.113
	.long	1146617856              # float 864
	.long	1148977152              # float 1008
	.quad	.L.str.12
	.quad	.L.str.114
	.long	1146617856              # float 864
	.long	1151467520              # float 1296
	.quad	.L.str.12
	.quad	.L.str.115
	.long	1146617856              # float 864
	.long	1152057344              # float 1368
	.quad	.L.str.12
	.quad	.L.str.116
	.long	1146617856              # float 864
	.long	1152157614              # float 1380.23999
	.quad	.L.str
	.quad	.L.str.117
	.long	1147416673              # float 912.75592
	.long	1151184219              # float 1261.41736
	.quad	.L.str
	.quad	.L.str.118
	.long	1147509558              # float 918.42517
	.long	1151486097              # float 1298.2677
	.quad	.L.str.20
	.quad	.L.str.119
	.long	1147509558              # float 918.42517
	.long	1151486097              # float 1298.2677
	.quad	.L.str.12
	.quad	.L.str.120
	.long	1147797504              # float 936
	.long	1152057344              # float 1368
	.quad	.L.str
	.quad	.L.str.121
	.long	1148856401              # float 1000.62994
	.long	1152461397              # float 1417.32288
	.quad	.L.str.4
	.quad	.L.str.121
	.long	1149303284              # float 1031.81104
	.long	1152809718              # float 1459.84253
	.quad	.L.str
	.quad	.L.str.38
	.long	1150603683              # float 1190.55115
	.long	1154644210              # float 1683.77954
	.quad	.L.str
	.quad	.L.str.122
	.long	1150603683              # float 1190.55115
	.long	1159584437              # float 2525.66919
	.quad	.L.str
	.quad	.L.str.123
	.long	1150603683              # float 1190.55115
	.long	1163044429              # float 3370.3938
	.quad	.L.str
	.quad	.L.str.124
	.long	1150603683              # float 1190.55115
	.long	1166254661              # float 4212.28369
	.quad	.L.str
	.quad	.L.str.125
	.long	1150603683              # float 1190.55115
	.long	1167978851              # float 5054.17334
	.quad	.L.str
	.quad	.L.str.126
	.long	1150603683              # float 1190.55115
	.long	1169703041              # float 5896.06298
	.quad	.L.str
	.quad	.L.str.127
	.long	1150835897              # float 1218.89758
	.long	1155015753              # float 1729.13391
	.quad	.L.str.12
	.quad	.L.str.128
	.long	1150877696              # float 1224
	.long	1153826816              # float 1584
	.quad	.L.str
	.quad	.L.str.129
	.long	1151300326              # float 1275.59058
	.long	1155712395              # float 1814.17322
	.quad	.L.str.12
	.quad	.L.str.130
	.long	1151467520              # float 1296
	.long	1155006464              # float 1728
	.quad	.L.str
	.quad	.L.str.131
	.long	1151486097              # float 1298.2677
	.long	1155898166              # float 1836.85034
	.quad	.L.str
	.quad	.L.str.132
	.long	1152461397              # float 1417.32288
	.long	1157268230              # float 2004.09448
	.quad	.L.str.4
	.quad	.L.str.132
	.long	1152809718              # float 1459.84253
	.long	1157691892              # float 2063.62207
	.quad	.L.str.12
	.quad	.L.str.133
	.long	1153826816              # float 1584
	.long	1159266304              # float 2448
	.quad	.L.str
	.quad	.L.str.134
	.long	1154644210              # float 1683.77954
	.long	1159003902              # float 2383.93701
	.quad	.L.str
	.quad	.L.str.135
	.long	1154644210              # float 1683.77954
	.long	1163880400              # float 3574.48828
	.quad	.L.str
	.quad	.L.str.136
	.long	1154644210              # float 1683.77954
	.long	1167392510              # float 4767.87402
	.quad	.L.str
	.quad	.L.str.137
	.long	1154644210              # float 1683.77954
	.long	1169830759              # float 5958.42529
	.quad	.L.str.12
	.quad	.L.str.138
	.long	1155006464              # float 1728
	.long	1159856128              # float 2592
	.quad	.L.str
	.quad	.L.str.139
	.long	1155015753              # float 1729.13391
	.long	1159224505              # float 2437.79517
	.quad	.L.str
	.quad	.L.str.140
	.long	1155712395              # float 1814.17322
	.long	1159688934              # float 2551.18115
	.quad	.L.str
	.quad	.L.str.141
	.long	1155898166              # float 1836.85034
	.long	1159886316              # float 2599.37012
	.quad	.L.str
	.quad	.L.str.142
	.long	1157268230              # float 2004.09448
	.long	1160850005              # float 2834.64575
	.quad	.L.str.143
	.quad	.L.str.144
	.long	1157365760              # float 2016
	.long	1161035776              # float 2880
	.quad	.L.str.4
	.quad	.L.str.142
	.long	1157691892              # float 2063.62207
	.long	1161198326              # float 2919.68506
	.quad	.L.str.12
	.quad	.L.str.145
	.long	1158086656              # float 2160
	.long	1161625600              # float 3024
	.quad	.L.str
	.quad	.L.str.146
	.long	1159003902              # float 2383.93701
	.long	1163044429              # float 3370.3938
	.quad	.L.str
	.quad	.L.str.147
	.long	1159003902              # float 2383.93701
	.long	1167978851              # float 5054.17334
	.quad	.L.str
	.quad	.L.str.148
	.long	1159003902              # float 2383.93701
	.long	1171433037              # float 6740.78759
	.quad	.L.str
	.quad	.L.str.149
	.long	1159224505              # float 2437.79517
	.long	1163404361              # float 3458.26782
	.quad	.L.str.12
	.quad	.L.str.150
	.long	1159266304              # float 2448
	.long	1162215424              # float 3168
	.quad	.L.str
	.quad	.L.str.151
	.long	1159688934              # float 2551.18115
	.long	1164101003              # float 3628.34644
	.quad	.L.str.12
	.quad	.L.str.152
	.long	1159856128              # float 2592
	.long	1163395072              # float 3456
	.quad	.L.str
	.quad	.L.str.153
	.long	1159886316              # float 2599.37012
	.long	1164298385              # float 3676.5354
	.quad	.L.str
	.quad	.L.str.154
	.long	1160850005              # float 2834.64575
	.long	1165656838              # float 4008.18896
	.quad	.L.str.4
	.quad	.L.str.154
	.long	1161198326              # float 2919.68506
	.long	1166080500              # float 4127.24414
	.quad	.L.str.12
	.quad	.L.str.144
	.long	1162215424              # float 3168
	.long	1167654912              # float 4896
	.quad	.L.str
	.quad	.L.str.155
	.long	1163044429              # float 3370.3938
	.long	1167392510              # float 4767.87402
	.quad	.L.str
	.quad	.L.str.156
	.long	1163044429              # float 3370.3938
	.long	1172274813              # float 7151.81103
	.quad	.L.str
	.quad	.L.str.157
	.long	1167392510              # float 4767.87402
	.long	1171433037              # float 6740.78759
	.zero	24
	.size	paperTable, 3984

	.type	.L.str.158,@object      # @.str.158
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.158:
	.asciz	"gx_device_opvp"
	.size	.L.str.158, 15

	.type	st_device_opvp,@object  # @st_device_opvp
	.section	.rodata,"a",@progbits
	.globl	st_device_opvp
	.align	8
st_device_opvp:
	.long	8848                    # 0x2290
	.zero	4
	.quad	.L.str.158
	.quad	0
	.quad	0
	.quad	device_opvp_enum_ptrs
	.quad	device_opvp_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_opvp, 64

	.type	.L.str.159,@object      # @.str.159
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.159:
	.asciz	"opvp"
	.size	.L.str.159, 5

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"DeviceRGB"
	.size	.L.str.160, 10

	.type	gs_opvp_device,@object  # @gs_opvp_device
	.section	.rodata,"a",@progbits
	.globl	gs_opvp_device
	.align	8
gs_opvp_device:
	.long	8848                    # 0x2290
	.zero	4
	.quad	0
	.quad	.L.str.159
	.quad	0
	.quad	st_device_opvp
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.160
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2479                    # 0x9af
	.long	3508                    # 0xdb4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142210561              # float 5.950001e+02
	.long	1146257403              # float 8.419997e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	opvp_open
	.quad	opvp_get_initial_matrix
	.quad	0
	.quad	opvp_output_page
	.quad	opvp_close
	.quad	opvp_map_rgb_color
	.quad	opvp_map_color_rgb
	.quad	opvp_fill_rectangle
	.quad	0
	.quad	opvp_copy_mono
	.quad	opvp_copy_color
	.quad	0
	.quad	0
	.quad	opvp_get_params
	.quad	opvp_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	opvp_fill_path
	.quad	opvp_stroke_path
	.quad	opvp_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	opvp_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	gs_opvp_device, 8848

	.type	prn_oprp_procs,@object  # @prn_oprp_procs
	.data
	.align	8
prn_oprp_procs:
	.quad	oprp_open
	.quad	0
	.quad	0
	.quad	opvp_output_page
	.quad	opvp_close
	.quad	opvp_map_rgb_color
	.quad	opvp_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	oprp_get_params
	.quad	oprp_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	prn_oprp_procs, 584

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"oprp"
	.size	.L.str.161, 5

	.type	gs_oprp_device,@object  # @gs_oprp_device
	.section	.rodata,"a",@progbits
	.globl	gs_oprp_device
	.align	8
gs_oprp_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_oprp_procs
	.quad	.L.str.161
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.160
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2479                    # 0x9af
	.long	3508                    # 0xdb4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142209905              # float 5.949600e+02
	.long	1146256097              # float 8.419200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	oprp_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_oprp_device, 18472

	.type	vector,@object          # @vector
	.local	vector
	.comm	vector,1,1
	.type	inkjet,@object          # @inkjet
	.local	inkjet
	.comm	inkjet,1,1
	.type	.L.str.162,@object      # @.str.162
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.162:
	.asciz	"Driver"
	.size	.L.str.162, 7

	.type	vectorDriver,@object    # @vectorDriver
	.local	vectorDriver
	.comm	vectorDriver,8,8
	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Model"
	.size	.L.str.163, 6

	.type	printerModel,@object    # @printerModel
	.local	printerModel
	.comm	printerModel,8,8
	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"JobInfo"
	.size	.L.str.164, 8

	.type	jobInfo,@object         # @jobInfo
	.local	jobInfo
	.comm	jobInfo,8,8
	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"DocInfo"
	.size	.L.str.165, 8

	.type	docInfo,@object         # @docInfo
	.local	docInfo
	.comm	docInfo,8,8
	.type	FastImageMode,@object   # @FastImageMode
	.local	FastImageMode
	.comm	FastImageMode,4,4
	.type	fastImage,@object       # @fastImage
	.local	fastImage
	.comm	fastImage,8,8
	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"NoCTM"
	.size	.L.str.166, 6

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"NoRotateCTM"
	.size	.L.str.167, 12

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"RightAngleCTM"
	.size	.L.str.168, 14

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"ReverseAngleCTM"
	.size	.L.str.169, 16

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"All"
	.size	.L.str.170, 4

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"FastImage"
	.size	.L.str.171, 10

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"MarginLeft"
	.size	.L.str.172, 11

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"%f"
	.size	.L.str.173, 3

	.type	margins.0,@object       # @margins.0
	.local	margins.0
	.comm	margins.0,4,16
	.type	margins.1,@object       # @margins.1
	.local	margins.1
	.comm	margins.1,4,4
	.type	margins.2,@object       # @margins.2
	.local	margins.2
	.comm	margins.2,4,8
	.type	margins.3,@object       # @margins.3
	.local	margins.3
	.comm	margins.3,4,4
	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"MarginTop"
	.size	.L.str.174, 10

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"MarginRight"
	.size	.L.str.175, 12

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"MarginBottom"
	.size	.L.str.176, 13

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Zoom"
	.size	.L.str.177, 5

	.type	zoom.0,@object          # @zoom.0
	.data
	.align	4
zoom.0:
	.long	1065353216              # float 1
	.size	zoom.0, 4

	.type	zoom.1,@object          # @zoom.1
	.align	4
zoom.1:
	.long	1065353216              # float 1
	.size	zoom.1, 4

	.type	.L.str.178,@object      # @.str.178
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.178:
	.asciz	"NoRotate"
	.size	.L.str.178, 9

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Right"
	.size	.L.str.179, 6

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Reverse"
	.size	.L.str.180, 8

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"Auto"
	.size	.L.str.181, 5

	.type	zoomAuto,@object        # @zoomAuto
	.local	zoomAuto
	.comm	zoomAuto,1,1
	.type	shift.0,@object         # @shift.0
	.local	shift.0
	.comm	shift.0,4,4
	.type	shift.1,@object         # @shift.1
	.local	shift.1
	.comm	shift.1,4,4
	.type	zooming,@object         # @zooming
	.local	zooming
	.comm	zooming,1,1
	.type	outputFD,@object        # @outputFD
	.data
	.align	4
outputFD:
	.long	4294967295              # 0xffffffff
	.size	outputFD, 4

	.type	apiEntry,@object        # @apiEntry
	.local	apiEntry
	.comm	apiEntry,8,8
	.type	printerContext,@object  # @printerContext
	.align	4
printerContext:
	.long	4294967295              # 0xffffffff
	.size	printerContext, 4

	.type	opvp_vector_procs,@object # @opvp_vector_procs
	.align	8
opvp_vector_procs:
	.quad	opvp_beginpage
	.quad	opvp_setlinewidth
	.quad	opvp_setlinecap
	.quad	opvp_setlinejoin
	.quad	opvp_setmiterlimit
	.quad	opvp_setdash
	.quad	opvp_setflat
	.quad	opvp_setlogop
	.quad	opvp_can_handle_hl_color
	.quad	opvp_setfillcolor
	.quad	opvp_setstrokecolor
	.quad	opvp_vector_dopath
	.quad	opvp_vector_dorect
	.quad	opvp_beginpath
	.quad	opvp_moveto
	.quad	opvp_lineto
	.quad	opvp_curveto
	.quad	opvp_closepath
	.quad	opvp_endpath
	.size	opvp_vector_procs, 152

	.type	cspace_available,@object # @cspace_available
cspace_available:
	.asciz	"\000\000\000\000\000\000\001"
	.size	cspace_available, 8

	.type	.L.str.182,@object      # @.str.182
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.182:
	.asciz	";"
	.size	.L.str.182, 2

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.zero	1
	.size	.L.str.183, 1

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"/dev/null"
	.size	.L.str.184, 10

	.type	colorSpace,@object      # @colorSpace
	.data
	.align	4
colorSpace:
	.long	6                       # 0x6
	.size	colorSpace, 4

	.type	handle,@object          # @handle
	.local	handle
	.comm	handle,8,8
	.type	.L.str.185,@object      # @.str.185
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.185:
	.asciz	"opvpOpenPrinter"
	.size	.L.str.185, 16

	.type	OpenPrinter,@object     # @OpenPrinter
	.local	OpenPrinter
	.comm	OpenPrinter,8,8
	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"opvpErrorNo"
	.size	.L.str.186, 12

	.type	ErrorNo,@object         # @ErrorNo
	.local	ErrorNo
	.comm	ErrorNo,8,8
	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"OpenPrinter"
	.size	.L.str.187, 12

	.type	OpenPrinter_0_2,@object # @OpenPrinter_0_2
	.local	OpenPrinter_0_2
	.comm	OpenPrinter_0_2,8,8
	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"errorno"
	.size	.L.str.188, 8

	.type	opvp_gen_dynamic_lib_name.buff,@object # @opvp_gen_dynamic_lib_name.buff
	.local	opvp_gen_dynamic_lib_name.buff
	.comm	opvp_gen_dynamic_lib_name.buff,40,16
	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	".so"
	.size	.L.str.189, 4

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	".dll"
	.size	.L.str.190, 5

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"lib"
	.size	.L.str.191, 4

	.type	OpenPrinterWrapper.tEntry,@object # @OpenPrinterWrapper.tEntry
	.local	OpenPrinterWrapper.tEntry
	.comm	OpenPrinterWrapper.tEntry,568,8
	.type	apiEntry_0_2,@object    # @apiEntry_0_2
	.local	apiEntry_0_2
	.comm	apiEntry_0_2,8,8
	.type	cspace_0_2_to_1_0,@object # @cspace_0_2_to_1_0
	.section	.rodata,"a",@progbits
	.align	16
cspace_0_2_to_1_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	7                       # 0x7
	.size	cspace_0_2_to_1_0, 28

	.type	cspace_1_0_to_0_2,@object # @cspace_1_0_to_0_2
	.align	16
cspace_1_0_to_0_2:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	6                       # 0x6
	.size	cspace_1_0_to_0_2, 32

	.type	colorDepth_0_2,@object  # @colorDepth_0_2
	.align	16
colorDepth_0_2:
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	64                      # 0x40
	.size	colorDepth_0_2, 32

	.type	iformat_1_0_to_0_2,@object # @iformat_1_0_to_0_2
	.align	16
iformat_1_0_to_0_2:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.size	iformat_1_0_to_0_2, 20

	.type	beginPage,@object       # @beginPage
	.local	beginPage
	.comm	beginPage,1,1
	.type	opvp_startpage.page_info,@object # @opvp_startpage.page_info
	.local	opvp_startpage.page_info
	.comm	opvp_startpage.page_info,8,8
	.type	opvp_gen_page_info.buff,@object # @opvp_gen_page_info.buff
	.local	opvp_gen_page_info.buff
	.comm	opvp_gen_page_info.buff,8,8
	.type	.L.str.192,@object      # @.str.192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.192:
	.asciz	"MediaCopy=%d;DeviceResolution=deviceResolution_%s;MediaPageRotation=%s;MediaSize=%s"
	.size	.L.str.192, 84

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"landscape"
	.size	.L.str.193, 10

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"portrait"
	.size	.L.str.194, 9

	.type	opvp_get_sizestring.buff,@object # @opvp_get_sizestring.buff
	.local	opvp_get_sizestring.buff
	.comm	opvp_get_sizestring.buff,8,8
	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"%.3f"
	.size	.L.str.195, 5

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"%sx%s"
	.size	.L.str.196, 6

	.type	opvp_get_mediasize.buff,@object # @opvp_get_mediasize.buff
	.local	opvp_get_mediasize.buff
	.comm	opvp_get_mediasize.buff,8,8
	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"oe"
	.size	.L.str.197, 3

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"in"
	.size	.L.str.198, 3

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"mm"
	.size	.L.str.199, 3

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"custom"
	.size	.L.str.200, 7

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"%s_%s_%s%s"
	.size	.L.str.201, 11

	.type	opvp_setfillcolor.brush,@object # @opvp_setfillcolor.brush
	.local	opvp_setfillcolor.brush
	.comm	opvp_setfillcolor.brush,40,8
	.type	vectorFillColor,@object # @vectorFillColor
	.local	vectorFillColor
	.comm	vectorFillColor,8,8
	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"C"
	.size	.L.str.202, 2

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"UTF-8"
	.size	.L.str.203, 6

	.type	color_index,@object     # @color_index
	.local	color_index
	.comm	color_index,4,4
	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"opvp_begin_image"
	.size	.L.str.204, 17

	.type	imageDecode,@object     # @imageDecode
	.local	imageDecode
	.comm	imageDecode,520,16
	.type	opvp_image_enum_procs,@object # @opvp_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
opvp_image_enum_procs:
	.quad	opvp_image_plane_data
	.quad	opvp_image_end_image
	.quad	0
	.quad	0
	.size	opvp_image_enum_procs, 32

	.type	base_color_index,@object # @base_color_index
	.local	base_color_index
	.comm	base_color_index,4,4
	.type	palette,@object         # @palette
	.local	palette
	.comm	palette,768,16
	.type	reverse_image,@object   # @reverse_image
	.local	reverse_image
	.comm	reverse_image,1,1
	.type	change_paint_mode,@object # @change_paint_mode
	.local	change_paint_mode
	.comm	change_paint_mode,1,1
	.type	savedColorSpace,@object # @savedColorSpace
	.local	savedColorSpace
	.comm	savedColorSpace,4,4
	.type	change_cspace,@object   # @change_cspace
	.local	change_cspace
	.comm	change_cspace,1,1
	.type	begin_image,@object     # @begin_image
	.local	begin_image
	.comm	begin_image,1,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
