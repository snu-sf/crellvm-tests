	.text
	.file	"gimpcairo-wilber.bc"
	.globl	gimp_cairo_wilber
	.align	16, 0x90
	.type	gimp_cairo_wilber,@function
gimp_cairo_wilber:                      # @gimp_cairo_wilber
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	wilber_get_extents
	movq	-8(%rbp), %rdi
	callq	cairo_save
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	wilber_x1, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	wilber_y1, %xmm1
	callq	cairo_translate
	movq	-8(%rbp), %rdi
	movq	wilber_cairo_path, %rsi
	callq	cairo_append_path
	movq	-8(%rbp), %rdi
	callq	cairo_restore
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cairo_wilber, .Lfunc_end0-gimp_cairo_wilber
	.cfi_endproc

	.align	16, 0x90
	.type	wilber_get_extents,@function
wilber_get_extents:                     # @wilber_get_extents
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
	cmpq	$0, wilber_cairo_path
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$2, %edi
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	cairo_image_surface_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	cairo_create
	movabsq	$wilber_path, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	wilber_parse_path_data
	movabsq	$wilber_x1, %rsi
	movabsq	$wilber_y1, %rdx
	movabsq	$wilber_x2, %rcx
	movabsq	$wilber_y2, %r8
	movq	-24(%rbp), %rdi
	callq	cairo_fill_extents
	movq	-24(%rbp), %rdi
	callq	cairo_copy_path
	movq	%rax, wilber_cairo_path
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	movq	-16(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB1_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wilber_get_extents, .Lfunc_end1-wilber_get_extents
	.cfi_endproc

	.globl	gimp_cairo_wilber_get_size
	.align	16, 0x90
	.type	gimp_cairo_wilber_get_size,@function
gimp_cairo_wilber_get_size:             # @gimp_cairo_wilber_get_size
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	wilber_get_extents
	movsd	wilber_x2, %xmm0        # xmm0 = mem[0],zero
	subsd	wilber_x1, %xmm0
	movq	-16(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	wilber_y2, %xmm0        # xmm0 = mem[0],zero
	subsd	wilber_y1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cairo_wilber_get_size, .Lfunc_end2-gimp_cairo_wilber_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4631952216750555136     # double 48
.LCPI3_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	wilber_parse_path_data,@function
wilber_parse_path_data:                 # @wilber_parse_path_data
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movl	$112, %ecx
	movl	%ecx, %edx
	leaq	-128(%rbp), %r8
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	movsd	%xmm0, -152(%rbp)
	movb	$0, -153(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movsd	%xmm0, -176(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movq	-8(%rbp), %rdx
	movq	%rdx, -128(%rbp)
	movl	$0, -180(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-180(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -153(%rbp)
	movsbl	-153(%rbp), %esi
	cmpl	$48, %esi
	jl	.LBB3_13
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB3_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB3_11
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB3_1 Depth=1
	imull	$10, -164(%rbp), %eax
	movsbl	-153(%rbp), %ecx
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -164(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB3_10
.LBB3_6:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -136(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsbl	-153(%rbp), %eax
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.18
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	-152(%rbp), %xmm1
	movsbl	-153(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -152(%rbp)
.LBB3_9:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.24
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.25
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -144(%rbp)
	movsbl	-153(%rbp), %eax
	subl	$48, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -152(%rbp)
	movl	$1, -160(%rbp)
.LBB3_12:                               # %if.end.29
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_48
.LBB3_13:                               # %if.else.30
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$46, %eax
	jne	.LBB3_17
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -132(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movl	$1, -132(%rbp)
	movsd	%xmm0, -152(%rbp)
.LBB3_16:                               # %if.end.37
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movl	$1, -136(%rbp)
	movsd	%xmm0, -176(%rbp)
	jmp	.LBB3_47
.LBB3_17:                               # %if.else.38
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$69, %eax
	je	.LBB3_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$101, %eax
	jne	.LBB3_21
.LBB3_19:                               # %land.lhs.true.45
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB3_21
# BB#20:                                # %if.then.47
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, -140(%rbp)
	movl	$1, -144(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	jmp	.LBB3_46
.LBB3_21:                               # %if.else.48
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB3_23
# BB#22:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB3_25
.LBB3_23:                               # %land.lhs.true.56
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.58
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movsbl	-153(%rbp), %edx
	cmpl	$43, %edx
	cmovel	%ecx, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB3_45
.LBB3_25:                               # %if.else.62
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB3_44
# BB#26:                                # %if.then.64
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	movl	-168(%rbp), %eax
	imull	-164(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	-152(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_43
# BB#27:                                # %if.then.71
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-88(%rbp), %eax
	addl	$-97, %eax
	movl	%eax, %ecx
	subl	$21, %eax
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%eax, -204(%rbp)        # 4-byte Spill
	ja	.LBB3_42
# BB#78:                                # %if.then.71
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_28:                               # %sw.bb
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-84(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB3_30
# BB#29:                                # %if.then.75
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB3_33
.LBB3_30:                               # %if.else.77
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-84(%rbp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.82
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB3_32:                               # %if.end.84
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.85
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_42
.LBB3_34:                               # %sw.bb.86
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$5, -84(%rbp)
	jne	.LBB3_36
# BB#35:                                # %if.then.90
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB3_39
.LBB3_36:                               # %if.else.93
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$6, -84(%rbp)
	jne	.LBB3_38
# BB#37:                                # %if.then.97
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB3_38:                               # %if.end.100
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.101
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_42
.LBB3_40:                               # %sw.bb.102
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	jmp	.LBB3_42
.LBB3_41:                               # %sw.bb.105
                                        #   in Loop: Header=BB3_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB3_42:                               # %sw.epilog
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_43
.LBB3_43:                               # %if.end.108
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movslq	%eax, %rdx
	movsd	%xmm0, -72(%rbp,%rdx,8)
	callq	parse_path_do_cmd
	movl	$0, -132(%rbp)
.LBB3_44:                               # %if.end.112
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.113
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.114
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_47
.LBB3_47:                               # %if.end.115
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_48
.LBB3_48:                               # %if.end.116
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB3_50
# BB#49:                                # %if.then.120
	jmp	.LBB3_77
.LBB3_50:                               # %if.else.121
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$43, %eax
	je	.LBB3_52
# BB#51:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB3_54
.LBB3_52:                               # %land.lhs.true.129
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -144(%rbp)
	jne	.LBB3_54
# BB#53:                                # %if.then.131
                                        #   in Loop: Header=BB3_1 Depth=1
	xorps	%xmm0, %xmm0
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movsbl	-153(%rbp), %edx
	cmpl	$43, %edx
	cmovel	%ecx, %eax
	movl	%eax, -160(%rbp)
	movsd	%xmm0, -152(%rbp)
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	movl	$0, -144(%rbp)
	jmp	.LBB3_74
.LBB3_54:                               # %if.else.136
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$122, %eax
	je	.LBB3_56
# BB#55:                                # %lor.lhs.false.140
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$90, %eax
	jne	.LBB3_59
.LBB3_56:                               # %if.then.144
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB3_58
# BB#57:                                # %if.then.147
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB3_58:                               # %if.end.148
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-128(%rbp), %rdi
	callq	cairo_close_path
	jmp	.LBB3_73
.LBB3_59:                               # %if.else.150
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB3_65
# BB#60:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB3_65
# BB#61:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$69, %eax
	je	.LBB3_65
# BB#62:                                # %if.then.162
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB3_64
# BB#63:                                # %if.then.165
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB3_64:                               # %if.end.166
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	addl	$97, %eax
	subl	$65, %eax
	movb	%al, %cl
	movb	%cl, -88(%rbp)
	movl	$0, -80(%rbp)
	jmp	.LBB3_72
.LBB3_65:                               # %if.else.173
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB3_71
# BB#66:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB3_71
# BB#67:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB3_1 Depth=1
	movsbl	-153(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB3_71
# BB#68:                                # %if.then.185
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB3_70
# BB#69:                                # %if.then.188
                                        #   in Loop: Header=BB3_1 Depth=1
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	parse_path_do_cmd
.LBB3_70:                               # %if.end.189
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	-153(%rbp), %al
	movb	%al, -88(%rbp)
	movl	$1, -80(%rbp)
.LBB3_71:                               # %if.end.192
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_72
.LBB3_72:                               # %if.end.193
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_73
.LBB3_73:                               # %if.end.194
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_74
.LBB3_74:                               # %if.end.195
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_75
.LBB3_75:                               # %if.end.196
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_76
.LBB3_76:                               # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB3_1
.LBB3_77:                               # %for.end
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wilber_parse_path_data, .Lfunc_end3-wilber_parse_path_data
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_34
	.quad	.LBB3_42
	.quad	.LBB3_28
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_40
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_28
	.quad	.LBB3_28
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_42
	.quad	.LBB3_28
	.quad	.LBB3_42
	.quad	.LBB3_28
	.quad	.LBB3_28
	.quad	.LBB3_42
	.quad	.LBB3_41

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	parse_path_do_cmd,@function
parse_path_do_cmd:                      # @parse_path_do_cmd
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	40(%rdi), %esi
	addl	$-97, %esi
	movl	%esi, %edi
	subl	$21, %esi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	ja	.LBB4_41
# BB#43:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movq	-8(%rbp), %rax
	cmpl	$2, 44(%rax)
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	je	.LBB4_4
.LBB4_3:                                # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_4:                                # %if.end
	jmp	.LBB4_42
.LBB4_5:                                # %sw.bb.7
	movq	-8(%rbp), %rax
	cmpl	$2, 44(%rax)
	je	.LBB4_7
# BB#6:                                 # %lor.lhs.false.11
	cmpl	$0, -12(%rbp)
	je	.LBB4_8
.LBB4_7:                                # %if.then.13
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_8:                                # %if.end.26
	jmp	.LBB4_42
.LBB4_9:                                # %sw.bb.27
	movq	-8(%rbp), %rax
	cmpl	$6, 44(%rax)
	je	.LBB4_11
# BB#10:                                # %lor.lhs.false.31
	cmpl	$0, -12(%rbp)
	je	.LBB4_12
.LBB4_11:                               # %if.then.33
	movl	$6, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	88(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm4          # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm5         # xmm5 = mem[0],zero
	callq	cairo_curve_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_12:                               # %if.end.56
	jmp	.LBB4_42
.LBB4_13:                               # %sw.bb.57
	movq	-8(%rbp), %rax
	cmpl	$4, 44(%rax)
	je	.LBB4_15
# BB#14:                                # %lor.lhs.false.61
	cmpl	$0, -12(%rbp)
	je	.LBB4_16
.LBB4_15:                               # %if.then.63
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	8(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	subsd	24(%rdi), %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	subsd	32(%rdi), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm4          # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm5         # xmm5 = mem[0],zero
	callq	cairo_curve_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_16:                               # %if.end.90
	jmp	.LBB4_42
.LBB4_17:                               # %sw.bb.91
	movq	-8(%rbp), %rax
	cmpl	$1, 44(%rax)
	jne	.LBB4_19
# BB#18:                                # %if.then.95
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_19:                               # %if.end.104
	jmp	.LBB4_42
.LBB4_20:                               # %sw.bb.105
	movq	-8(%rbp), %rax
	cmpl	$1, 44(%rax)
	jne	.LBB4_22
# BB#21:                                # %if.then.109
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_line_to
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_22:                               # %if.end.118
	jmp	.LBB4_42
.LBB4_23:                               # %sw.bb.119
	movq	-8(%rbp), %rax
	cmpl	$4, 44(%rax)
	je	.LBB4_25
# BB#24:                                # %lor.lhs.false.123
	cmpl	$0, -12(%rbp)
	je	.LBB4_26
.LBB4_25:                               # %if.then.125
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movabsq	$.L.str, %rdi
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movb	$0, %al
	callq	g_warning
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
.LBB4_26:                               # %if.end.139
	jmp	.LBB4_42
.LBB4_27:                               # %sw.bb.140
	movq	-8(%rbp), %rax
	cmpl	$2, 44(%rax)
	je	.LBB4_29
# BB#28:                                # %lor.lhs.false.144
	cmpl	$0, -12(%rbp)
	je	.LBB4_30
.LBB4_29:                               # %if.then.146
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movabsq	$.L.str.1, %rdi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	8(%rax), %xmm1
	movq	-8(%rbp), %rax
	subsd	24(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-8(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	subsd	32(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movb	$0, %al
	callq	g_warning
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
	jmp	.LBB4_36
.LBB4_30:                               # %if.else
	cmpl	$0, -12(%rbp)
	je	.LBB4_35
# BB#31:                                # %if.then.165
	movq	-8(%rbp), %rax
	cmpl	$2, 44(%rax)
	jle	.LBB4_33
# BB#32:                                # %if.then.169
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movb	$0, %al
	callq	g_warning
	jmp	.LBB4_34
.LBB4_33:                               # %if.else.182
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	parse_path_default_xy
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	cairo_line_to
.LBB4_34:                               # %if.end.194
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_35:                               # %if.end.196
	jmp	.LBB4_36
.LBB4_36:                               # %if.end.197
	jmp	.LBB4_42
.LBB4_37:                               # %sw.bb.198
	movq	-8(%rbp), %rax
	cmpl	$7, 44(%rax)
	je	.LBB4_39
# BB#38:                                # %lor.lhs.false.202
	cmpl	$0, -12(%rbp)
	je	.LBB4_40
.LBB4_39:                               # %if.then.204
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movb	$0, %al
	callq	g_warning
	movq	-8(%rbp), %rdi
	movl	$0, 44(%rdi)
.LBB4_40:                               # %if.end.214
	jmp	.LBB4_42
.LBB4_41:                               # %sw.default
	movq	-8(%rbp), %rax
	movl	$0, 44(%rax)
.LBB4_42:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	parse_path_do_cmd, .Lfunc_end4-parse_path_do_cmd
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_37
	.quad	.LBB4_41
	.quad	.LBB4_9
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_17
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_5
	.quad	.LBB4_1
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_41
	.quad	.LBB4_23
	.quad	.LBB4_41
	.quad	.LBB4_13
	.quad	.LBB4_27
	.quad	.LBB4_41
	.quad	.LBB4_20

	.text
	.align	16, 0x90
	.type	parse_path_default_xy,@function
parse_path_default_xy:                  # @parse_path_default_xy
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 48(%rdi)
	je	.LBB5_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$2, -16(%rbp)
	jle	.LBB5_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-16(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movsd	56(%rdx,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 56(%rdx,%rcx,8)
	jmp	.LBB5_11
.LBB5_5:                                # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$1, -16(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx,%rax,8)
	jmp	.LBB5_10
.LBB5_7:                                # %if.else.11
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx,%rax,8)
.LBB5_9:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.17
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %if.end.18
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_2
.LBB5_13:                               # %for.end
	jmp	.LBB5_19
.LBB5_14:                               # %if.else.19
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB5_15:                               # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_18
# BB#16:                                # %for.body.23
                                        #   in Loop: Header=BB5_15 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx,%rax,8)
# BB#17:                                # %for.inc.27
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_15
.LBB5_18:                               # %for.end.29
	jmp	.LBB5_19
.LBB5_19:                               # %if.end.30
	popq	%rbp
	retq
.Lfunc_end5:
	.size	parse_path_default_xy, .Lfunc_end5-parse_path_default_xy
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB6_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.4, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_warning, .Lfunc_end6-g_warning
	.cfi_endproc

	.type	wilber_x1,@object       # @wilber_x1
	.local	wilber_x1
	.comm	wilber_x1,8,8
	.type	wilber_y1,@object       # @wilber_y1
	.local	wilber_y1
	.comm	wilber_y1,8,8
	.type	wilber_cairo_path,@object # @wilber_cairo_path
	.local	wilber_cairo_path
	.comm	wilber_cairo_path,8,8
	.type	wilber_x2,@object       # @wilber_x2
	.local	wilber_x2
	.comm	wilber_x2,8,8
	.type	wilber_y2,@object       # @wilber_y2
	.local	wilber_y2
	.comm	wilber_y2,8,8
	.type	wilber_path,@object     # @wilber_path
	.section	.rodata,"a",@progbits
	.align	16
wilber_path:
	.asciz	"M 509.72445,438.68864 C 501.47706,469.77945 464.95038,491.54566 431.85915,497.74874 C 438.5216,503.01688 442.87782,511.227 442.87782,520.37375 C 442.87783,536.24746 429.95607,549.0223 414.08235,549.0223 C 398.20863,549.0223 385.28688,536.24746 385.28688,520.37375 C 385.28688,511.52403 389.27666,503.61286 395.57098,498.3364 C 359.36952,495.90384 343.70976,463.95812 343.70975,463.95814 L 342.68134,509.64891 C 342.68134,514.35021 342.08391,519.96098 340.18378,528.3072 C 339.84664,527.80364 339.51399,527.33515 339.15537,526.83804 C 330.25511,514.5011 317.25269,507.81431 306.39317,508.76741 C 302.77334,509.08511 299.47017,510.33348 296.54982,512.4403 C 284.86847,520.86757 284.97665,540.94721 296.84366,557.3965 C 306.96274,571.42287 322.32232,578.25612 333.8664,574.73254 C 391.94635,615.17624 532.16931,642.41915 509.72445,438.68864 z M 363.24953,501.1278 C 373.83202,501.12778 382.49549,509.79127 382.49549,520.37375 C 382.49549,530.95624 373.83201,539.47279 363.24953,539.47279 C 352.66706,539.47279 344.1505,530.95624 344.1505,520.37375 C 344.15049,509.79129 352.66706,501.1278 363.24953,501.1278 z M 305.80551,516.1132 C 311.68466,516.11318 316.38344,521.83985 316.38344,528.89486 C 316.38345,535.94982 311.68467,541.67652 305.80551,541.67652 C 299.92636,541.67652 295.08067,535.94987 295.08067,528.89486 C 295.08065,521.83985 299.92636,516.1132 305.80551,516.1132 z M 440.821,552.54828 C 440.821,552.54828 448.7504,554.02388 453.8965,559.45332 C 457.41881,563.16951 457.75208,569.15506 456.98172,577.37703 C 456.21143,573.8833 454.89571,571.76659 453.8965,569.29666 C 443.01388,582.47662 413.42981,583.08929 376.0312,569.88433 C 416.63248,578.00493 437.38806,570.56014 449.48903,561.2163 C 446.29383,557.08917 440.821,552.54828 440.821,552.54828 z M 434.64723,524.59684 C 434.64723,532.23974 428.44429,538.44268 420.80139,538.44268 C 413.15849,538.44268 406.95555,532.23974 406.95555,524.59684 C 406.95555,516.95394 413.15849,510.751 420.80139,510.751 C 428.44429,510.751 434.64723,516.95394 434.64723,524.59684 z M 378.00043,522.99931 C 378.00043,527.70264 374.18324,531.51984 369.47991,531.51984 C 364.77658,531.51984 360.95939,527.70264 360.95939,522.99931 C 360.95939,518.29599 364.77658,514.47879 369.47991,514.47879 C 374.18324,514.47879 378.00043,518.29599 378.00043,522.99931 z "
	.size	wilber_path, 2297

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"quadratic bezier curveto not implemented"
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"truetype quadratic bezier curveto not implemented"
	.size	.L.str.1, 50

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"conicto not implemented"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"arcto not implemented"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Gimp-Widgets"
	.size	.L.str.4, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
