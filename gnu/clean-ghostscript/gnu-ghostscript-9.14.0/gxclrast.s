	.text
	.file	"gxclrast.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1132462080              # float 256
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI0_2:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI0_3:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI0_5:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	clist_playback_band
	.align	16, 0x90
	.type	clist_playback_band,@function
clist_playback_band:                    # @clist_playback_band
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$13416, %rsp            # imm = 0x3468
.Ltmp6:
	.cfi_def_cfa_offset 13472
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r14d, 308(%rsp)        # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rbx, 400(%rsp)         # 8-byte Spill
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movq	%rsi, 416(%rsp)         # 8-byte Spill
	movl	%edi, 380(%rsp)         # 4-byte Spill
	movq	13472(%rsp), %r15
	movq	%rcx, 13408(%rsp)
	movq	$0, 1816(%rsp)
	movq	$0, 1808(%rsp)
	movl	$4104, %esi             # imm = 0x1008
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*64(%r15)
	movl	$-25, 304(%rsp)         # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB0_991
# BB#1:                                 # %if.end
	movq	%rbx, 400(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	movq	%rcx, 13352(%rsp)
	movl	$4096, 13360(%rsp)      # imm = 0x1000
	movq	320(%rsp), %rax         # 8-byte Reload
	movq	%rax, 13392(%rsp)
	movl	$0, 13400(%rsp)
	leaq	4096(%rcx), %rax
	movq	%rax, 13384(%rsp)
	addq	$4043, %rcx             # imm = 0xFCB
	movq	%rcx, 13376(%rsp)
	movq	%rax, 13344(%rsp)
	movq	$0, 1824(%rsp)
	leaq	4408(%rsp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	leaq	1760(%rsp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	leaq	11432(%rsp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	leaq	8472(%rsp), %rdi
	xorl	%esi, %esi
	movl	$664, %edx              # imm = 0x298
	callq	memset
	leaq	11520(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset
	movl	%ebx, %eax
	negl	%eax
	movl	%eax, 316(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	negl	%eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, 216(%rsp)        # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 212(%rsp)        # 4-byte Spill
	movl	%ebx, %eax
	shll	$8, %eax
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	movl	%r14d, 308(%rsp)        # 4-byte Spill
	shll	$8, %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movq	13408(%rsp), %r12
	movq	%r12, %rbx
	movl	$0, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$0, 244(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	$0, %edx
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	$0, 256(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 304(%rsp)         # 4-byte Spill
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_980:                              # %if.end.3334
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %r13
	movq	%rbp, %r15
	cmpl	$2, 380(%rsp)           # 4-byte Folded Reload
	je	.LBB0_987
# BB#981:                               # %land.lhs.true.3337
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	13344(%rsp), %rax
	cmpq	13384(%rsp), %rax
	jb	.LBB0_985
# BB#982:                               # %lor.lhs.false.3341
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	320(%rsp), %rcx         # 8-byte Reload
	movq	112(%rcx), %rax
	cmpq	120(%rcx), %rax
	jae	.LBB0_983
.LBB0_985:                              # %land.lhs.true.3354
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$11, %edx
	jmp	.LBB0_986
	.align	16, 0x90
.LBB0_983:                              # %land.lhs.true.3349
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$11, %edx
	je	.LBB0_987
# BB#984:                               # %land.lhs.true.3349
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	320(%rsp), %rax         # 8-byte Reload
	movzwl	152(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
.LBB0_986:                              # %land.lhs.true.3354
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	424(%rsp), %r12         # 8-byte Reload
	jne	.LBB0_2
	jmp	.LBB0_987
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$219, %r12d
	jmp	.LBB0_950
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$220, %r12d
	jmp	.LBB0_950
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$212, %r12d
	jmp	.LBB0_950
.LBB0_894:                              # %cleanup.3226
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	cmpl	$21, %ebp
	jmp	.LBB0_895
.LBB0_952:                              # %cleanup.3226
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	cmpl	$23, %ebp
.LBB0_895:                              # %cleanup.3226
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	308(%rsp), %r14d        # 4-byte Reload
	movq	400(%rsp), %r15         # 8-byte Reload
	movq	13472(%rsp), %rbp
	je	.LBB0_957
	jmp	.LBB0_991
.LBB0_179:                              # %cleanup.i.809
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%r14d, 208(%r13)
.LBB0_184:                              # %cmd_create_dev_ht.exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$-25, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$6, %r12d
.LBB0_949:                              # %cleanup.3226.thread1891
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	6856(%rsp), %r13
	jmp	.LBB0_950
.LBB0_545:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%ebp, 308(%rsp)         # 4-byte Spill
	movl	$223, %r12d
	jmp	.LBB0_950
.LBB0_652:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$-25, %eax
.LBB0_644:                              # %cleanup.3226.thread1891
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$223, %r12d
	jmp	.LBB0_950
.LBB0_501:                              # %cleanup.1621.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_949
.LBB0_948:                              # %read_set_bits.exit.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	13368(%rsp), %rax
	movq	%rax, 13344(%rsp)
	movl	$-28, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r12d
	jmp	.LBB0_949
.LBB0_633:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_950
.LBB0_643:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$-28, %eax
	jmp	.LBB0_644
	.align	16, 0x90
.LBB0_2:                                # %in
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_673 Depth 5
                                        #           Child Loop BB0_407 Depth 5
                                        #           Child Loop BB0_412 Depth 5
                                        #           Child Loop BB0_417 Depth 5
                                        #           Child Loop BB0_422 Depth 5
                                        #           Child Loop BB0_325 Depth 5
                                        #           Child Loop BB0_380 Depth 5
                                        #           Child Loop BB0_229 Depth 5
                                        #           Child Loop BB0_242 Depth 5
                                        #           Child Loop BB0_247 Depth 5
                                        #           Child Loop BB0_257 Depth 5
                                        #           Child Loop BB0_262 Depth 5
                                        #           Child Loop BB0_270 Depth 5
                                        #           Child Loop BB0_163 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_43 Depth 5
                                        #           Child Loop BB0_49 Depth 5
                                        #           Child Loop BB0_52 Depth 5
                                        #           Child Loop BB0_56 Depth 5
                                        #           Child Loop BB0_62 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #         Child Loop BB0_543 Depth 4
                                        #           Child Loop BB0_607 Depth 5
                                        #           Child Loop BB0_597 Depth 5
                                        #         Child Loop BB0_155 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_138 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_83 Depth 4
                                        #         Child Loop BB0_88 Depth 4
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_778 Depth 3
                                        #       Child Loop BB0_783 Depth 3
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_793 Depth 3
                                        #       Child Loop BB0_798 Depth 3
                                        #       Child Loop BB0_803 Depth 3
                                        #       Child Loop BB0_808 Depth 3
                                        #       Child Loop BB0_813 Depth 3
                                        #       Child Loop BB0_820 Depth 3
                                        #       Child Loop BB0_825 Depth 3
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_840 Depth 3
                                        #       Child Loop BB0_845 Depth 3
                                        #       Child Loop BB0_850 Depth 3
                                        #       Child Loop BB0_859 Depth 3
                                        #       Child Loop BB0_862 Depth 3
                                        #         Child Loop BB0_867 Depth 4
                                        #           Child Loop BB0_870 Depth 5
                                        #       Child Loop BB0_684 Depth 3
                                        #       Child Loop BB0_433 Depth 3
                                        #       Child Loop BB0_440 Depth 3
                                        #       Child Loop BB0_444 Depth 3
                                        #         Child Loop BB0_451 Depth 4
                                        #         Child Loop BB0_458 Depth 4
                                        #       Child Loop BB0_466 Depth 3
                                        #       Child Loop BB0_473 Depth 3
                                        #       Child Loop BB0_479 Depth 3
                                        #       Child Loop BB0_482 Depth 3
                                        #       Child Loop BB0_487 Depth 3
                                        #       Child Loop BB0_491 Depth 3
                                        #       Child Loop BB0_512 Depth 3
                                        #     Child Loop BB0_899 Depth 2
                                        #     Child Loop BB0_960 Depth 2
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	movq	%rbx, 13336(%rsp)
	movl	$clist_playback_band.cls_initial, %esi
	movl	$1808, %edx             # imm = 0x710
	leaq	11528(%rsp), %rdi
	callq	memcpy
	movq	$0, 11496(%rsp)
	movw	$0, 11508(%rsp)
	movw	$0, 11510(%rsp)
	movq	$0, 11484(%rsp)
	movl	$1, 11512(%rsp)
	xorl	%esi, %esi
	leaq	11304(%rsp), %rdi
	movq	%r15, %rdx
	callq	gx_path_init_local_shared
	xorl	%esi, %esi
	leaq	11000(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	gx_cpath_init_local_shared
	movq	$0, 544(%rsp)
	movq	416(%rsp), %r13         # 8-byte Reload
	movl	832(%r13), %eax
	movl	%eax, 552(%rsp)
	movl	836(%r13), %eax
	movl	%eax, 556(%rsp)
	movq	%rbx, %rdi
	leaq	544(%rsp), %rsi
	callq	gx_cpath_from_rectangle
	testq	%r12, %r12
	je	.LBB0_4
# BB#3:                                 # %if.then.28
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rdi
	leaq	9136(%rsp), %rsi
	callq	*1432(%r12)
.LBB0_4:                                # %if.end.30
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$clist_imager_state_initial, %esi
	movl	$1616, %edx             # imm = 0x650
	leaq	6856(%rsp), %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_imager_state_initialize
	movl	%eax, %r12d
	movq	7200(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_7
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB0_2 Depth=1
	decq	16(%rsi)
	jne	.LBB0_7
# BB#6:                                 # %do.end.46
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	24(%rsi), %rdi
	movl	$.L.str.1, %edx
	callq	*32(%rsi)
	movq	$0, 7200(%rsp)
.LBB0_7:                                # %do.end.61
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	10168(%r13), %rax
	movq	%rax, 7200(%rsp)
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	10168(%r13), %rax
	testq	%rax, %rax
	je	.LBB0_9
# BB#8:                                 # %do.body.69
                                        #   in Loop: Header=BB0_2 Depth=1
	incq	16(%rax)
.LBB0_9:                                # %do.end.80
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	testl	%r12d, %r12d
	movq	%rbx, %r13
	movq	%r15, %rbp
	js	.LBB0_10
# BB#11:                                # %if.end.87
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	6144(%rsp), %rax
	movq	%rax, 6944(%rsp)
	movq	13336(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_14
# BB#12:                                # %if.then.90
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	callq	gx_set_cmap_procs
	movq	13336(%rsp), %rax
	cmpl	$15, 112(%rax)
	ja	.LBB0_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$16, 116(%rax)
	movl	380(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	movl	$0, %edx
	cmovbl	%edx, %eax
	cmpl	$1, %ecx
	cmovel	%eax, %ecx
	movl	%ecx, 380(%rsp)         # 4-byte Spill
.LBB0_14:                               # %if.end.97
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	400(%rsp), %r15         # 8-byte Reload
	movl	$-1, %ecx
	movq	%r13, %rdi
	movl	316(%rsp), %esi         # 4-byte Reload
	movl	312(%rsp), %edx         # 4-byte Reload
	callq	gx_imager_setscreenphase
	movq	%rbp, %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, 392(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_15
# BB#16:                                # %if.end.103
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	$gx_dc_type_data_none, 6200(%rsp)
	movl	$4096, %esi             # imm = 0x1000
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, 432(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_17
# BB#18:                                # %while.cond.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%r12d, %r12d
	js	.LBB0_957
# BB#19:                                # %while.body.lr.ph.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	leaq	11528(%rsp), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movl	%r14d, 284(%rsp)        # 4-byte Spill
	movl	%r15d, %eax
	movl	%eax, 288(%rsp)         # 4-byte Spill
	movl	$0, 260(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	440(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	movq	400(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_957
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$-25, %r12d
	jmp	.LBB0_957
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$-25, %r12d
	xorl	%eax, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	jmp	.LBB0_957
.LBB0_508:                              # %if.then.1641.prol
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	$0, 4464(%rsp)
.LBB0_509:                              # %for.body.1635.lr.ph.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$1, %ecx
.LBB0_510:                              # %for.body.1635.lr.ph.split
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$1, %eax
	je	.LBB0_517
# BB#511:                               # %for.body.1635.lr.ph.split.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	4492(%rsp), %rbp
	leaq	(%rdx,%rbp), %rdx
.LBB0_512:                              # %for.body.1635
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rdx), %ebp
	testl	%ebp, %ebp
	je	.LBB0_513
# BB#514:                               # %if.else.1645
                                        #   in Loop: Header=BB0_512 Depth=3
	movq	%rsi, -28(%rdx)
	imull	%r14d, %ebp
	addq	%rbp, %rsi
	jmp	.LBB0_515
.LBB0_513:                              # %if.then.1641
                                        #   in Loop: Header=BB0_512 Depth=3
	movq	$0, -28(%rdx)
.LBB0_515:                              # %for.inc.1656
                                        #   in Loop: Header=BB0_512 Depth=3
	movl	(%rdx), %ebp
	testl	%ebp, %ebp
	je	.LBB0_992
# BB#516:                               # %if.else.1645.1
                                        #   in Loop: Header=BB0_512 Depth=3
	movq	%rsi, -12(%rdx)
	imull	%r14d, %ebp
	addq	%rbp, %rsi
	jmp	.LBB0_993
.LBB0_992:                              # %if.then.1641.1
                                        #   in Loop: Header=BB0_512 Depth=3
	movq	$0, -12(%rdx)
.LBB0_993:                              # %for.inc.1656.1
                                        #   in Loop: Header=BB0_512 Depth=3
	addq	$2, %rcx
	addq	$32, %rdx
	cmpq	%rax, %rcx
	jl	.LBB0_512
.LBB0_517:                              # %for.end.1658
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	4464(%rsp), %rsi
	movl	%r14d, %edx
	callq	gx_image_plane_data
	testl	%eax, %eax
	movq	%rax, %rbx
	jns	.LBB0_519
# BB#518:                               # %if.then.1663
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4984(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_image_end
.LBB0_519:                              # %if.end.1665
                                        #   in Loop: Header=BB0_20 Depth=2
	testq	%r15, %r15
	je	.LBB0_521
# BB#520:                               # %if.then.1667
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$.L.str.3, %edx
	movq	13472(%rsp), %rdi
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB0_521:                              # %if.end.1669
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, %rax
	movl	%eax, %ebp
	sarl	$31, %ebp
	addl	$22, %ebp
	movl	$0, 292(%rsp)           # 4-byte Folded Spill
	movq	%r12, %rbx
	movq	%rax, %r12
	jmp	.LBB0_892
.LBB0_765:                              #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	%rbp, %rsi
	movl	308(%rsp), %ebx         # 4-byte Reload
.LBB0_768:                              # %if.end.2275
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	344(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	leaq	2552(%rsp), %rax
	cmovneq	%rax, %rbp
	movl	100(%rsi), %eax
	cmpl	100(%rbp), %eax
	je	.LBB0_770
# BB#769:                               # %if.then.2285
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%eax, 100(%rbp)
	movw	108(%rsi), %ax
	movw	%ax, 108(%rbp)
	leaq	204(%rbp), %rdi
	addq	$204, %rsi
	movl	$64, %edx
	callq	memcpy
	leaq	140(%rbp), %rdi
	movq	13336(%rsp), %rsi
	movl	$140, %eax
	addq	%rax, %rsi
	movl	$64, %edx
	callq	memcpy
.LBB0_770:                              # %do.body.2303
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13344(%rsp), %rdi
	movzbl	(%rdi), %r8d
	leaq	1(%rdi), %rax
	testb	%r8b, %r8b
	js	.LBB0_772
# BB#771:                               # %if.then.2307
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
	movzbl	(%rdi), %r8d
	movl	%r8d, 1584(%rsp)
	jmp	.LBB0_775
.LBB0_772:                              # %if.else.2311
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r8d
	movl	$7, %ecx
.LBB0_773:                              # %for.cond.i.1448
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %r8d
	leaq	1(%rdi), %rax
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_773
# BB#774:                               # %cmd_get_w.exit1451
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r8d, 1584(%rsp)
	movq	%rax, 13344(%rsp)
.LBB0_775:                              # %do.body.2320
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rax), %r10d
	addq	$2, %rdi
	testb	%r10b, %r10b
	js	.LBB0_777
# BB#776:                               # %if.then.2324
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdi, 13344(%rsp)
	movzbl	(%rax), %r10d
	movl	%r10d, 1588(%rsp)
	jmp	.LBB0_780
.LBB0_777:                              # %if.else.2329
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r10d
	movl	$7, %ecx
.LBB0_778:                              # %for.cond.i.1465
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %r10d
	incq	%rdi
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_778
# BB#779:                               # %cmd_get_w.exit1468
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r10d, 1588(%rsp)
	movq	%rdi, 13344(%rsp)
.LBB0_780:                              # %do.body.2338
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rdi), %r11d
	leaq	1(%rdi), %rax
	testb	%r11b, %r11b
	js	.LBB0_782
# BB#781:                               # %if.then.2342
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
	movzbl	(%rdi), %r11d
	movl	%r11d, 1592(%rsp)
	jmp	.LBB0_785
.LBB0_782:                              # %if.else.2347
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r11d
	movl	$7, %ecx
.LBB0_783:                              # %for.cond.i.1482
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %r11d
	leaq	1(%rdi), %rax
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_783
# BB#784:                               # %cmd_get_w.exit1485
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r11d, 1592(%rsp)
	movq	%rax, 13344(%rsp)
.LBB0_785:                              # %do.body.2356
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rax), %r12d
	addq	$2, %rdi
	testb	%r12b, %r12b
	js	.LBB0_787
# BB#786:                               # %if.then.2360
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 336(%rsp)         # 8-byte Spill
	movq	%rdi, 13344(%rsp)
	movzbl	(%rax), %r12d
	movl	%r12d, 1596(%rsp)
	jmp	.LBB0_790
.LBB0_787:                              # %if.else.2365
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r12d
	movl	$7, %ecx
.LBB0_788:                              # %for.cond.i.1499
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %r12d
	incq	%rdi
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_788
# BB#789:                               # %cmd_get_w.exit1502
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 336(%rsp)         # 8-byte Spill
	movl	%r12d, 1596(%rsp)
	movq	%rdi, 13344(%rsp)
.LBB0_790:                              # %do.body.2374
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rdi), %r14d
	leaq	1(%rdi), %rsi
	testb	%r14b, %r14b
	js	.LBB0_792
# BB#791:                               # %if.then.2378
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rsi, 13344(%rsp)
	movzbl	(%rdi), %r14d
	movl	%r14d, 1568(%rsp)
	jmp	.LBB0_795
.LBB0_792:                              # %if.else.2383
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r14d
	movl	$7, %ecx
.LBB0_793:                              # %for.cond.i.1516
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r14d
	leaq	1(%rdi), %rsi
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_793
# BB#794:                               # %cmd_get_w.exit1519
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ebx, 308(%rsp)         # 4-byte Spill
	movl	%r14d, 1568(%rsp)
	movq	%rsi, 13344(%rsp)
.LBB0_795:                              # %do.body.2392
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rsi), %r13d
	addq	$2, %rdi
	testb	%r13b, %r13b
	js	.LBB0_797
# BB#796:                               # %if.then.2396
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdi, 13344(%rsp)
	movzbl	(%rsi), %r13d
	movl	%r13d, 1572(%rsp)
	jmp	.LBB0_800
.LBB0_797:                              # %if.else.2401
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r13d
	movl	$7, %ecx
.LBB0_798:                              # %for.cond.i.1533
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi), %ebp
	movl	%ebp, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r13d
	incq	%rdi
	addl	$7, %ecx
	testb	%bpl, %bpl
	js	.LBB0_798
# BB#799:                               # %cmd_get_w.exit1536
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r13d, 1572(%rsp)
	movq	%rdi, 13344(%rsp)
.LBB0_800:                              # %do.body.2410
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rdi), %r9d
	leaq	1(%rdi), %rbp
	testb	%r9b, %r9b
	js	.LBB0_802
# BB#801:                               # %if.then.2414
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
	movzbl	(%rdi), %r9d
	movl	%r9d, 1576(%rsp)
	jmp	.LBB0_805
.LBB0_802:                              # %if.else.2419
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r9d
	movl	$7, %ecx
.LBB0_803:                              # %for.cond.i.1550
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	movzbl	(%rdi), %eax
	movl	%eax, %ebx
	andl	$127, %ebx
	shll	%cl, %ebx
	orl	%ebx, %r9d
	leaq	1(%rdi), %rbp
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_803
# BB#804:                               # %cmd_get_w.exit1553
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r9d, 1576(%rsp)
	movq	%rbp, 13344(%rsp)
.LBB0_805:                              # %do.body.2428
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rbp), %ebx
	addq	$2, %rdi
	testb	%bl, %bl
	js	.LBB0_807
# BB#806:                               # %if.then.2432
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 408(%rsp)         # 8-byte Spill
	movq	%rdi, 13344(%rsp)
	movzbl	(%rbp), %ebx
	movl	%ebx, 1580(%rsp)
	jmp	.LBB0_810
.LBB0_807:                              # %if.else.2437
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %ebx
	movl	$7, %ecx
.LBB0_808:                              # %for.cond.i.1567
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi), %ebp
	movl	%ebp, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %ebx
	incq	%rdi
	addl	$7, %ecx
	testb	%bpl, %bpl
	js	.LBB0_808
# BB#809:                               # %cmd_get_w.exit1570
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 408(%rsp)         # 8-byte Spill
	movl	%ebx, 1580(%rsp)
	movq	%rdi, 13344(%rsp)
.LBB0_810:                              # %do.body.2446
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rdi), %r15d
	leaq	1(%rdi), %rbp
	testb	%r15b, %r15b
	js	.LBB0_812
# BB#811:                               # %if.then.2450
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
	movzbl	(%rdi), %r15d
	jmp	.LBB0_815
.LBB0_812:                              # %if.else.2453
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r15d
	movl	$7, %ecx
.LBB0_813:                              # %for.cond.i.1584
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbp, %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %r15d
	leaq	1(%rdi), %rbp
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_813
# BB#814:                               # %cmd_get_w.exit1587
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
.LBB0_815:                              # %do.end.2459
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r15d, %eax
	andl	$4, %eax
	je	.LBB0_817
# BB#816:                               #   in Loop: Header=BB0_20 Depth=2
	movl	$0, 352(%rsp)           # 4-byte Folded Spill
	movl	%eax, 232(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	jmp	.LBB0_827
.LBB0_817:                              # %do.body.2463
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%eax, 232(%rsp)         # 4-byte Spill
	movzbl	(%rbp), %esi
	addq	$2, %rdi
	testb	%sil, %sil
	js	.LBB0_819
# BB#818:                               # %if.then.2467
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdi, 13344(%rsp)
	movzbl	(%rbp), %esi
	jmp	.LBB0_822
.LBB0_709:                              #   in Loop: Header=BB0_20 Depth=2
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_714:                              #   in Loop: Header=BB0_20 Depth=2
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_819:                              # %if.else.2470
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %esi
	movl	$7, %ecx
.LBB0_820:                              # %for.cond.i.1601
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %esi
	incq	%rdi
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_820
# BB#821:                               # %cmd_get_w.exit1604
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdi, 13344(%rsp)
.LBB0_822:                              # %do.body.2477
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rdi), %eax
	leaq	1(%rdi), %rbp
	testb	%al, %al
	js	.LBB0_824
# BB#823:                               # %if.then.2481
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, 352(%rsp)         # 4-byte Spill
	movq	%rbp, 13344(%rsp)
	movzbl	(%rdi), %esi
	jmp	.LBB0_827
.LBB0_824:                              # %if.else.2484
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, 352(%rsp)         # 4-byte Spill
	andl	$127, %eax
	movl	$7, %ecx
	movl	%eax, %esi
.LBB0_825:                              # %for.cond.i.1618
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %esi
	incq	%rbp
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_825
# BB#826:                               # %cmd_get_w.exit1621
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
.LBB0_827:                              # %if.end.2492
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13336(%rsp), %rcx
	leaq	832(%rcx), %rax
	leaq	836(%rcx), %rdx
	movl	%r15d, %edi
	andl	$1, %edi
	movl	%edi, 384(%rsp)         # 4-byte Spill
	cmovneq	%rax, %rdx
	movl	(%rdx), %eax
	movl	%eax, 328(%rsp)         # 4-byte Spill
	testb	%dil, %dil
	movq	400(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %edi
	movl	308(%rsp), %eax         # 4-byte Reload
	cmovnel	%eax, %edi
	cmovnel	%edx, %eax
	shll	$8, %edi
	subl	%edi, %r8d
	movl	%r8d, 1584(%rsp)
	shll	$8, %eax
	subl	%eax, %r10d
	movl	%r10d, 1588(%rsp)
	subl	%edi, %r11d
	movl	%r11d, 1592(%rsp)
	subl	%eax, %r12d
	movl	%r12d, 1596(%rsp)
	subl	%edi, %r14d
	movl	%r14d, 1568(%rsp)
	subl	%eax, %r13d
	movl	%r13d, 1572(%rsp)
	subl	%edi, %r9d
	movl	%r9d, 1576(%rsp)
	movl	%eax, %r9d
	subl	%r9d, %ebx
	movl	%ebx, 1580(%rsp)
	testb	$2, %r15b
	jne	.LBB0_828
# BB#886:                               # %if.else.2817
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	352(%rsp), %ecx         # 4-byte Reload
	subl	%r9d, %ecx
	cmpl	$127, %ecx
	movl	$128, %eax
	cmovlel	%eax, %ecx
	subl	%r9d, %esi
	movl	328(%rsp), %r8d         # 4-byte Reload
	shll	$8, %r8d
	cmpl	%r8d, %esi
	cmovlel	%esi, %r8d
	movl	7068(%rsp), %eax
	movl	%eax, 8(%rsp)
	leaq	6200(%rsp), %rax
	movq	%rax, (%rsp)
	movq	336(%rsp), %rdi         # 8-byte Reload
	leaq	1584(%rsp), %rsi
	leaq	1568(%rsp), %rdx
	movl	384(%rsp), %r9d         # 4-byte Reload
	callq	gx_default_fill_trapezoid
	movl	%eax, %r12d
	movq	13472(%rsp), %r14
	leaq	11304(%rsp), %rbx
	leaq	6856(%rsp), %r13
	movq	408(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_887
.LBB0_828:                              # %if.then.2539
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, 328(%rsp)         # 4-byte Spill
	movslq	100(%rcx), %r15
	movq	13408(%rsp), %rax
	leaq	832(%rax), %rcx
	addq	$836, %rax              # imm = 0x344
	movl	384(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	cmovneq	%rcx, %rax
	movl	(%rax), %r13d
	movq	13384(%rsp), %rax
	subq	%rbp, %rax
	cmpq	$24, %rax
	movl	%edx, %r12d
	ja	.LBB0_832
# BB#829:                               # %if.then.2559
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%edi, %r14d
	movl	%r9d, %ebx
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_830
# BB#831:                               # %if.then.2559.do.body.2566_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13344(%rsp), %rbp
	movl	%ebx, %r9d
	movl	%r14d, %edi
	movl	384(%rsp), %r12d        # 4-byte Reload
.LBB0_832:                              # %do.body.2566
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rbp), %r8d
	leaq	1(%rbp), %rsi
	testb	%r8b, %r8b
	js	.LBB0_834
# BB#833:                               # %if.then.2570
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rsi, 13344(%rsp)
	movzbl	(%rbp), %r8d
	movl	%r8d, 448(%rsp)
	jmp	.LBB0_837
.LBB0_834:                              # %if.else.2575
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r8d
	movl	$7, %ecx
.LBB0_835:                              # %for.cond.i.1635
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rbp
	movzbl	(%rbp), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r8d
	leaq	1(%rbp), %rsi
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_835
# BB#836:                               # %cmd_get_w.exit1638
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r8d, 448(%rsp)
	movq	%rsi, 13344(%rsp)
.LBB0_837:                              # %do.body.2584
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rsi), %edx
	addq	$2, %rbp
	movl	%edi, %r10d
	testb	%dl, %dl
	js	.LBB0_839
# BB#838:                               # %if.then.2588
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
	movzbl	(%rsi), %edx
	movl	%edx, 452(%rsp)
	jmp	.LBB0_842
.LBB0_839:                              # %if.else.2593
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %edx
	movl	$7, %ecx
.LBB0_840:                              # %for.cond.i.1652
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rbp
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_840
# BB#841:                               # %cmd_get_w.exit1655
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%edx, 452(%rsp)
	movq	%rbp, 13344(%rsp)
.LBB0_842:                              # %do.body.2602
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rbp), %esi
	leaq	1(%rbp), %rbx
	testb	%sil, %sil
	js	.LBB0_844
# BB#843:                               # %if.then.2606
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 13344(%rsp)
	movzbl	(%rbp), %esi
	movl	%esi, 456(%rsp)
	jmp	.LBB0_847
.LBB0_844:                              # %if.else.2611
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %esi
	movl	$7, %ecx
.LBB0_845:                              # %for.cond.i.1669
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rbp
	movzbl	(%rbp), %eax
	movl	%eax, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %esi
	leaq	1(%rbp), %rbx
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_845
# BB#846:                               # %cmd_get_w.exit1672
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, 456(%rsp)
	movq	%rbx, 13344(%rsp)
.LBB0_847:                              # %do.body.2620
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%rbx), %edi
	addq	$2, %rbp
	testb	%dil, %dil
	js	.LBB0_849
# BB#848:                               # %if.then.2624
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbp, 13344(%rsp)
	movzbl	(%rbx), %edi
	movl	%edi, 460(%rsp)
	jmp	.LBB0_852
.LBB0_849:                              # %if.else.2629
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %edi
	movl	$7, %ecx
.LBB0_850:                              # %for.cond.i.1686
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %ebx
	movl	%ebx, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edi
	incq	%rbp
	addl	$7, %ecx
	testb	%bl, %bl
	js	.LBB0_850
# BB#851:                               # %cmd_get_w.exit1689
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%edi, 460(%rsp)
	movq	%rbp, 13344(%rsp)
.LBB0_852:                              # %do.end.2637
                                        #   in Loop: Header=BB0_20 Depth=2
	shll	$8, %r13d
	subl	%r10d, %r8d
	movl	%r8d, 448(%rsp)
	subl	%r9d, %edx
	movl	%edx, 452(%rsp)
	subl	%r10d, %esi
	movl	%esi, 456(%rsp)
	subl	%r9d, %edi
	movl	%edi, 460(%rsp)
	testl	%edx, %edx
	jns	.LBB0_854
# BB#853:                               # %if.then.2654
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$0, 452(%rsp)
.LBB0_854:                              # %if.end.2657
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	%r13d, %edi
	movl	352(%rsp), %ecx         # 4-byte Reload
	movl	328(%rsp), %r14d        # 4-byte Reload
	jle	.LBB0_856
# BB#855:                               # %if.then.2662
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r13d, 460(%rsp)
.LBB0_856:                              # %if.end.2665
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	448(%rsp), %rax
	movq	%rax, 464(%rsp)
	movl	%r12d, 472(%rsp)
	movq	$0, 480(%rsp)
	movl	$252, 488(%rsp)
	subl	%r9d, %ecx
	movl	%ecx, 492(%rsp)
	subl	%r9d, %r14d
	movl	%r14d, 496(%rsp)
	movzbl	(%rbp), %eax
	leaq	1(%rbp), %rdx
	testb	%al, %al
	js	.LBB0_858
# BB#857:                               # %if.then.2675
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdx, 13344(%rsp)
	movb	(%rbp), %al
	jmp	.LBB0_861
.LBB0_858:                              # %if.else.2677
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %eax
	movl	$7, %ecx
.LBB0_859:                              # %for.cond.i.1703
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %eax
	incq	%rdx
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_859
# BB#860:                               # %cmd_get_w.exit1706
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rdx, 13344(%rsp)
.LBB0_861:                              # %do.end.2683
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	%al, %r8d
	leaq	(%r15,%r15,4), %r9
	movl	$1, %r13d
	xorl	%r14d, %r14d
.LBB0_862:                              # %for.body.2688
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_867 Depth 4
                                        #           Child Loop BB0_870 Depth 5
	testl	%r8d, %r13d
	je	.LBB0_873
# BB#863:                               # %if.then.2693
                                        #   in Loop: Header=BB0_862 Depth=3
	movq	13384(%rsp), %rax
	subq	13344(%rsp), %rax
	cmpq	%r9, %rax
	jae	.LBB0_865
# BB#864:                               # %if.then.2702
                                        #   in Loop: Header=BB0_862 Depth=3
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	movl	%r8d, %ebx
	movq	%r9, %rbp
	callq	top_up_cbuf
	movq	%rbp, %r9
	movl	%ebx, %r8d
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_830
.LBB0_865:                              # %if.end.2708
                                        #   in Loop: Header=BB0_862 Depth=3
	movq	%r14, %rax
	shlq	$8, %rax
	leaq	544(%rsp,%rax), %rax
	movq	%rax, 512(%rsp,%r14,8)
	testl	%r15d, %r15d
	jle	.LBB0_874
# BB#866:                               # %do.body.2719.lr.ph
                                        #   in Loop: Header=BB0_862 Depth=3
	movq	13344(%rsp), %rcx
	xorl	%edx, %edx
.LBB0_867:                              # %do.body.2719
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_862 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_870 Depth 5
	movzbl	(%rcx), %edi
	leaq	1(%rcx), %rsi
	testb	$1, %dil
	jne	.LBB0_869
# BB#868:                               # %if.then.2723
                                        #   in Loop: Header=BB0_867 Depth=4
	movq	%rsi, 13344(%rsp)
	movzbl	(%rcx), %ecx
	shll	$24, %ecx
	movzbl	%dl, %edi
	movl	%ecx, (%rax,%rdi,4)
	jmp	.LBB0_872
.LBB0_869:                              # %if.else.2731
                                        #   in Loop: Header=BB0_867 Depth=4
	andl	$-2, %edi
	shll	$24, %edi
	movl	$17, %ecx
	.align	16, 0x90
.LBB0_870:                              # %for.cond.i.1719
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_862 Depth=3
                                        #         Parent Loop BB0_867 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rsi), %ebp
	movl	%ebp, %ebx
	andl	$254, %ebx
	shll	%cl, %ebx
	orl	%ebx, %edi
	incq	%rsi
	addl	$-7, %ecx
	testb	$1, %bpl
	jne	.LBB0_870
# BB#871:                               # %cmd_get_frac31.exit
                                        #   in Loop: Header=BB0_867 Depth=4
	movzbl	%dl, %ecx
	movl	%edi, (%rax,%rcx,4)
	movq	%rsi, 13344(%rsp)
.LBB0_872:                              # %for.inc.2741
                                        #   in Loop: Header=BB0_867 Depth=4
	incb	%dl
	movzbl	%dl, %ecx
	cmpl	%r15d, %ecx
	movq	%rsi, %rcx
	jl	.LBB0_867
	jmp	.LBB0_874
.LBB0_873:                              # %if.else.2744
                                        #   in Loop: Header=BB0_862 Depth=3
	movq	$0, 512(%rsp,%r14,8)
.LBB0_874:                              # %for.inc.2748
                                        #   in Loop: Header=BB0_862 Depth=3
	incq	%r14
	addl	%r13d, %r13d
	andl	$510, %r13d             # imm = 0x1FE
	cmpq	$4, %r14
	jb	.LBB0_862
# BB#875:                               # %for.end.2753
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$0, 232(%rsp)           # 4-byte Folded Reload
	je	.LBB0_882
# BB#876:                               # %if.then.2756
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	512(%rsp), %r14
	movq	520(%rsp), %r15
	movq	528(%rsp), %rbx
	movq	%rbx, 8(%rsp)
	movq	%r15, (%rsp)
	movq	336(%rsp), %rdi         # 8-byte Reload
	leaq	464(%rsp), %rsi
	leaq	1584(%rsp), %rdx
	leaq	1592(%rsp), %rcx
	leaq	1568(%rsp), %r8
	movq	%r14, %r9
	callq	*1608(%rdi)
	movl	%eax, %r12d
	movb	$1, %bpl
	testl	%r12d, %r12d
	leaq	6856(%rsp), %r13
	je	.LBB0_878
# BB#877:                               #   in Loop: Header=BB0_20 Depth=2
	movq	13472(%rsp), %r14
	jmp	.LBB0_884
.LBB0_830:                              #   in Loop: Header=BB0_20 Depth=2
	xorl	%ebp, %ebp
	movl	%r12d, %eax
	movl	%eax, 304(%rsp)         # 4-byte Spill
	jmp	.LBB0_883
.LBB0_882:                              # %if.else.2789
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	512(%rsp), %rax
	movq	520(%rsp), %rcx
	movq	528(%rsp), %rdx
	movq	536(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	336(%rsp), %rdi         # 8-byte Reload
	leaq	464(%rsp), %rsi
	leaq	1584(%rsp), %rdx
	leaq	1592(%rsp), %rcx
	leaq	1568(%rsp), %r8
	leaq	1576(%rsp), %r9
	callq	*1600(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	$-28, %eax
	cmovel	%eax, %r12d
	movb	$1, %bpl
.LBB0_883:                              # %cleanup.2805
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13472(%rsp), %r14
	leaq	6856(%rsp), %r13
.LBB0_884:                              # %cleanup.2805
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	408(%rsp), %r15         # 8-byte Reload
	testb	%bpl, %bpl
	je	.LBB0_896
# BB#885:                               #   in Loop: Header=BB0_20 Depth=2
	leaq	11304(%rsp), %rbx
	jmp	.LBB0_887
.LBB0_896:                              # %cleanup.2842.thread1871
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$1, %ebp
	movl	$252, %ebx
	jmp	.LBB0_892
.LBB0_716:                              #   in Loop: Header=BB0_20 Depth=2
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_760:                              # %if.then.22.i.1430
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	1368(%rdi), %r11
	movl	20(%rbx), %r9d
	movl	24(%rbx), %ebx
	subl	%ebp, %r9d
	subl	%r14d, %ebx
.LBB0_762:                              # %if.end.i.1433
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, %r14
	movl	%r10d, 16(%rsp)
	leaq	6200(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	callq	*(%r11)
	movl	%eax, %r12d
	movq	408(%rsp), %r15         # 8-byte Reload
.LBB0_763:                              # %clist_do_polyfill.exit
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, %rdi
	callq	gx_path_new
	leaq	11304(%rsp), %rbx
.LBB0_887:                              # %sw.epilog.2855
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpq	%rbx, %r15
	je	.LBB0_889
# BB#888:                               # %if.then.2858
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	gx_path_free
.LBB0_889:                              # %cleanup.cont.2863
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_891
# BB#890:                               # %if.then.2865
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	244(%rsp), %eax         # 4-byte Reload
	sarl	$8, %eax
	movl	%eax, 13248(%rsp)
	movq	248(%rsp), %rax         # 8-byte Reload
	sarl	$8, %eax
	movl	%eax, 13252(%rsp)
.LBB0_891:                              # %if.end.2874
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	gx_path_free
	xorl	%eax, %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gx_path_init_local_shared
	movl	%r12d, %ebp
	sarl	$31, %ebp
	addl	$22, %ebp
	movq	440(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB0_892
.LBB0_878:                              # %if.then.2767
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpq	$0, 1824(%rsp)
	jne	.LBB0_881
# BB#879:                               # %if.end.2773
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13336(%rsp), %rdi
	leaq	1824(%rsp), %rsi
	movq	13472(%rsp), %rdx
	callq	gx_init_patch_fill_state_for_clist
	testl	%eax, %eax
	js	.LBB0_880
.LBB0_881:                              # %if.then.2776
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	336(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, 1824(%rsp)
	movups	448(%rsp), %xmm0
	leaq	2136(%rsp), %rax
	movups	%xmm0, (%rax)
	leaq	1824(%rsp), %rax
	movq	%rax, 504(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r15, (%rsp)
	leaq	464(%rsp), %rsi
	leaq	1584(%rsp), %rdx
	leaq	1592(%rsp), %rcx
	leaq	1568(%rsp), %r8
	movq	%r14, %r9
	callq	gx_fill_triangle_small
	movl	%eax, %r12d
	movq	13472(%rsp), %r14
	jmp	.LBB0_884
.LBB0_639:                              #   in Loop: Header=BB0_20 Depth=2
	movl	$223, %ebx
	movq	408(%rsp), %r12         # 8-byte Reload
	jmp	.LBB0_892
.LBB0_880:                              #   in Loop: Header=BB0_20 Depth=2
	movq	13472(%rsp), %r14
	movq	%rax, %r12
	jmp	.LBB0_884
	.align	16, 0x90
.LBB0_20:                               # %while.body.lr.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_673 Depth 5
                                        #           Child Loop BB0_407 Depth 5
                                        #           Child Loop BB0_412 Depth 5
                                        #           Child Loop BB0_417 Depth 5
                                        #           Child Loop BB0_422 Depth 5
                                        #           Child Loop BB0_325 Depth 5
                                        #           Child Loop BB0_380 Depth 5
                                        #           Child Loop BB0_229 Depth 5
                                        #           Child Loop BB0_242 Depth 5
                                        #           Child Loop BB0_247 Depth 5
                                        #           Child Loop BB0_257 Depth 5
                                        #           Child Loop BB0_262 Depth 5
                                        #           Child Loop BB0_270 Depth 5
                                        #           Child Loop BB0_163 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_43 Depth 5
                                        #           Child Loop BB0_49 Depth 5
                                        #           Child Loop BB0_52 Depth 5
                                        #           Child Loop BB0_56 Depth 5
                                        #           Child Loop BB0_62 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #         Child Loop BB0_543 Depth 4
                                        #           Child Loop BB0_607 Depth 5
                                        #           Child Loop BB0_597 Depth 5
                                        #         Child Loop BB0_155 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_138 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_83 Depth 4
                                        #         Child Loop BB0_88 Depth 4
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_778 Depth 3
                                        #       Child Loop BB0_783 Depth 3
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_793 Depth 3
                                        #       Child Loop BB0_798 Depth 3
                                        #       Child Loop BB0_803 Depth 3
                                        #       Child Loop BB0_808 Depth 3
                                        #       Child Loop BB0_813 Depth 3
                                        #       Child Loop BB0_820 Depth 3
                                        #       Child Loop BB0_825 Depth 3
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_840 Depth 3
                                        #       Child Loop BB0_845 Depth 3
                                        #       Child Loop BB0_850 Depth 3
                                        #       Child Loop BB0_859 Depth 3
                                        #       Child Loop BB0_862 Depth 3
                                        #         Child Loop BB0_867 Depth 4
                                        #           Child Loop BB0_870 Depth 5
                                        #       Child Loop BB0_684 Depth 3
                                        #       Child Loop BB0_433 Depth 3
                                        #       Child Loop BB0_440 Depth 3
                                        #       Child Loop BB0_444 Depth 3
                                        #         Child Loop BB0_451 Depth 4
                                        #         Child Loop BB0_458 Depth 4
                                        #       Child Loop BB0_466 Depth 3
                                        #       Child Loop BB0_473 Depth 3
                                        #       Child Loop BB0_479 Depth 3
                                        #       Child Loop BB0_482 Depth 3
                                        #       Child Loop BB0_487 Depth 3
                                        #       Child Loop BB0_491 Depth 3
                                        #       Child Loop BB0_512 Depth 3
	movl	%ecx, 292(%rsp)         # 4-byte Spill
	movl	%eax, 280(%rsp)         # 4-byte Spill
.LBB0_21:                               # %while.body.outer
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_673 Depth 5
                                        #           Child Loop BB0_407 Depth 5
                                        #           Child Loop BB0_412 Depth 5
                                        #           Child Loop BB0_417 Depth 5
                                        #           Child Loop BB0_422 Depth 5
                                        #           Child Loop BB0_325 Depth 5
                                        #           Child Loop BB0_380 Depth 5
                                        #           Child Loop BB0_229 Depth 5
                                        #           Child Loop BB0_242 Depth 5
                                        #           Child Loop BB0_247 Depth 5
                                        #           Child Loop BB0_257 Depth 5
                                        #           Child Loop BB0_262 Depth 5
                                        #           Child Loop BB0_270 Depth 5
                                        #           Child Loop BB0_163 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_43 Depth 5
                                        #           Child Loop BB0_49 Depth 5
                                        #           Child Loop BB0_52 Depth 5
                                        #           Child Loop BB0_56 Depth 5
                                        #           Child Loop BB0_62 Depth 5
                                        #           Child Loop BB0_69 Depth 5
                                        #         Child Loop BB0_543 Depth 4
                                        #           Child Loop BB0_607 Depth 5
                                        #           Child Loop BB0_597 Depth 5
                                        #         Child Loop BB0_155 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_133 Depth 4
                                        #         Child Loop BB0_138 Depth 4
                                        #         Child Loop BB0_97 Depth 4
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_83 Depth 4
                                        #         Child Loop BB0_88 Depth 4
	movq	%r12, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_943:                              # %cleanup.3226.thread.thread
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movq	440(%rsp), %rbx         # 8-byte Reload
.LBB0_22:                               # %while.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_673 Depth 5
                                        #           Child Loop BB0_407 Depth 5
                                        #           Child Loop BB0_412 Depth 5
                                        #           Child Loop BB0_417 Depth 5
                                        #           Child Loop BB0_422 Depth 5
                                        #           Child Loop BB0_325 Depth 5
                                        #           Child Loop BB0_380 Depth 5
                                        #           Child Loop BB0_229 Depth 5
                                        #           Child Loop BB0_242 Depth 5
                                        #           Child Loop BB0_247 Depth 5
                                        #           Child Loop BB0_257 Depth 5
                                        #           Child Loop BB0_262 Depth 5
                                        #           Child Loop BB0_270 Depth 5
                                        #           Child Loop BB0_163 Depth 5
                                        #           Child Loop BB0_173 Depth 5
                                        #           Child Loop BB0_43 Depth 5
                                        #           Child Loop BB0_49 Depth 5
                                        #           Child Loop BB0_52 Depth 5
                                        #           Child Loop BB0_56 Depth 5
                                        #           Child Loop BB0_62 Depth 5
                                        #           Child Loop BB0_69 Depth 5
	movl	$2074996749, 1756(%rsp) # imm = 0x7BADF00D
	movq	13344(%rsp), %r15
	cmpq	13376(%rsp), %r15
	jae	.LBB0_24
# BB#23:                                #   in Loop: Header=BB0_22 Depth=4
	movq	408(%rsp), %rax         # 8-byte Reload
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_24:                               # %if.then.113
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	13400(%rsp), %ecx
	testl	%ecx, %ecx
	js	.LBB0_25
# BB#27:                                # %if.else.123
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_272
# BB#28:                                # %if.else.123.if.end.129_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13344(%rsp), %r15
	jmp	.LBB0_29
.LBB0_25:                               # %if.then.116
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpq	13384(%rsp), %r15
	movq	408(%rsp), %rax         # 8-byte Reload
	jae	.LBB0_26
	.align	16, 0x90
.LBB0_29:                               # %if.end.129
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	1(%r15), %r14
	movq	%r14, 13344(%rsp)
	movzbl	(%r15), %ebx
	movl	%ebx, %ebp
	shrl	$4, %ebp
	cmpl	$15, %ebp
	ja	.LBB0_30
# BB#31:                                # %if.end.129
                                        #   in Loop: Header=BB0_22 Depth=4
	jmpq	*.LJTI0_0(,%rbp,8)
.LBB0_216:                              # %sw.bb.554
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%ebx, %edi
	leaq	13248(%rsp), %rsi
	movq	%r14, %rdx
	callq	cmd_read_rect
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_220
.LBB0_217:                              # %sw.bb.556
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	1(%r15), %eax
	movq	13248(%rsp), %rcx
	leal	-128(%rax,%rcx), %eax
	movl	%eax, 13248(%rsp)
	movzbl	2(%r15), %edx
	movq	13256(%rsp), %rax
	leal	-128(%rdx,%rax), %edx
	movl	%edx, 13256(%rsp)
	shrq	$32, %rax
	movl	%ebx, %edx
	andl	$15, %edx
	je	.LBB0_221
# BB#218:                               # %if.then.570
                                        #   in Loop: Header=BB0_22 Depth=4
	leal	-8(%rdx,%rax), %eax
	movl	%eax, 13260(%rsp)
	addq	$3, %r15
	jmp	.LBB0_219
.LBB0_222:                              # %sw.bb.592
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$8, %bl
	jne	.LBB0_223
# BB#224:                               # %if.else.601
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rax
	movq	%rax, 13344(%rsp)
	movzbl	1(%r15), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	movq	13248(%rsp), %rdx
	leal	-8(%rdx,%rcx), %ecx
	movl	%ecx, 13248(%rsp)
	andl	$15, %eax
	shrq	$32, %rdx
	leal	-8(%rax,%rdx), %eax
	movl	%eax, 13252(%rsp)
	movl	13256(%rsp), %eax
	jmp	.LBB0_225
.LBB0_32:                               # %sw.bb
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$15, %ebx
	ja	.LBB0_33
# BB#34:                                # %sw.bb
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$11, %r12d
	leaq	11920(%rsp), %rax
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmpq	*.LJTI0_9(,%rbx,8)
.LBB0_35:                               # %sw.bb.134
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r14, 13368(%rsp)
	movq	416(%rsp), %rdi         # 8-byte Reload
	callq	gx_device_is_pattern_clist
	movq	13368(%rsp), %rdi
	movzbl	(%rdi), %r9d
	movl	%r9d, %ecx
	andl	$7, %ecx
	testb	$8, %r9b
	jne	.LBB0_37
# BB#36:                                # %cond.true.i
                                        #   in Loop: Header=BB0_22 Depth=4
	incl	%ecx
	movl	%ecx, %r8d
	jmp	.LBB0_39
.LBB0_226:                              # %do.body.621
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	1(%r15), %esi
	addq	$2, %r15
	testb	%sil, %sil
	js	.LBB0_228
# BB#227:                               # %if.then.625
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %esi
	jmp	.LBB0_231
.LBB0_234:                              # %sw.bb.646
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$0, 13272(%rsp)
	je	.LBB0_237
# BB#235:                               # %if.then.649
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$2074996749, %r8d       # imm = 0x7BADF00D
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	testb	$8, %bl
	jne	.LBB0_238
# BB#236:                               # %if.then.652
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rax
	movq	%rax, 13344(%rsp)
	movzbl	1(%r15), %r8d
	movq	%rax, %r15
	jmp	.LBB0_239
.LBB0_319:                              # %sw.bb.1049
                                        #   in Loop: Header=BB0_22 Depth=4
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	leal	-209(%rbx), %edx
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	cmpl	$14, %edx
	ja	.LBB0_898
# BB#320:                               # %sw.bb.1049
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmpq	*.LJTI0_4(,%rdx,8)
.LBB0_359:                              # %sw.bb.1187
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r14, 13368(%rsp)
	leaq	2(%r15), %rsi
	movzbl	1(%r15), %r14d
	movl	%r14d, %ebp
	shrl	$4, %ebp
	movl	$24, %edx
	leaq	544(%rsp), %rdi
	callq	memcpy
	leaq	26(%r15), %rbx
	movl	$-15, %r12d
	cmpl	$1, %ebp
	jg	.LBB0_363
# BB#360:                               # %sw.bb.1187
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%ebp, %ebp
	jne	.LBB0_361
# BB#367:                               # %sw.bb.i.996
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13472(%rsp), %rdi
	callq	gs_cspace_new_DeviceGray
	jmp	.LBB0_368
.LBB0_223:                              # %if.then.595
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	13256(%rsp), %eax
	addl	%eax, 13248(%rsp)
.LBB0_225:                              # %if.end.614
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	400(%rsp), %r15         # 8-byte Reload
	movl	%ebx, %ecx
	andl	$7, %ecx
	leal	-4(%rcx,%rax), %eax
	movl	%eax, 13256(%rsp)
	movl	$2074996749, %r10d      # imm = 0x7BADF00D
	xorl	%esi, %esi
	jmp	.LBB0_252
.LBB0_221:                              # %if.else.577
                                        #   in Loop: Header=BB0_22 Depth=4
	shrq	$32, %rcx
	movzbl	3(%r15), %edx
	leal	-128(%rdx,%rcx), %ecx
	movl	%ecx, 13252(%rsp)
	movzbl	4(%r15), %ecx
	leal	-128(%rcx,%rax), %eax
	movl	%eax, 13260(%rsp)
	addq	$5, %r15
.LBB0_219:                              # %do.end.2935
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
.LBB0_220:                              # %do.end.2935
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$2074996749, %r10d      # imm = 0x7BADF00D
	xorl	%esi, %esi
	jmp	.LBB0_251
.LBB0_141:                              # %sw.bb.246
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	1(%r15), %edi
	movl	%edi, %eax
	shrl	$6, %eax
	cmpl	$3, %eax
	ja	.LBB0_142
# BB#143:                               # %sw.bb.246
                                        #   in Loop: Header=BB0_22 Depth=4
	jmpq	*.LJTI0_11(,%rax,8)
.LBB0_158:                              # %sw.bb.305
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rcx, 13368(%rsp)
	leaq	13352(%rsp), %rsi
	movq	%r13, %rdx
	movq	13472(%rsp), %rcx
	callq	read_set_misc_map
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$6, %r12d
	testl	%eax, %eax
	js	.LBB0_950
# BB#159:                               # %if.end.312
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13368(%rsp), %rax
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_539
.LBB0_228:                              # %if.else.628
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %esi
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_229:                              # %for.cond.i.828
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %esi
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_229
# BB#230:                               # %cmd_get_w.exit831
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
.LBB0_231:                              # %do.end.634
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%esi, %esi
	je	.LBB0_232
# BB#233:                               # %if.else.638
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rsi, 368(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rax
	movzwl	108(%rax), %r8d
	jmp	.LBB0_239
.LBB0_237:                              # %if.else.656
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13336(%rsp), %rax
	movzwl	108(%rax), %r8d
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
.LBB0_238:                              # %do.body.661
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r14, %r15
	jmp	.LBB0_239
.LBB0_232:                              #   in Loop: Header=BB0_22 Depth=4
	movl	$1, %r8d
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
.LBB0_239:                              # %do.body.661
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %edx
	leaq	1(%r15), %rax
	testb	%dl, %dl
	js	.LBB0_241
# BB#240:                               # %if.then.665
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 13344(%rsp)
	movzbl	(%r15), %ecx
	movl	%ecx, 13248(%rsp)
	jmp	.LBB0_244
.LBB0_241:                              # %if.else.670
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %edx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_242:                              # %for.cond.i.845
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rax, %r15
	movzbl	(%r15), %esi
	movl	%esi, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	leaq	1(%r15), %rax
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_242
# BB#243:                               # %cmd_get_w.exit848
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%edx, 13248(%rsp)
	movq	%rax, 13344(%rsp)
.LBB0_244:                              # %do.body.679
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %edx
	addq	$2, %r15
	testb	%dl, %dl
	js	.LBB0_246
# BB#245:                               # %if.then.683
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
	movzbl	(%rax), %eax
	movl	%eax, 13252(%rsp)
	jmp	.LBB0_249
.LBB0_246:                              # %if.else.688
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %edx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_247:                              # %for.cond.i.862
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r15), %eax
	movl	%eax, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %edx
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_247
# BB#248:                               # %cmd_get_w.exit865
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%edx, 13252(%rsp)
	movq	%r15, 13344(%rsp)
.LBB0_249:                              # %do.end.696
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$8, %bl
	jne	.LBB0_250
# BB#254:                               # %if.else.713
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %edi
	leaq	1(%r15), %rax
	testb	%dil, %dil
	js	.LBB0_256
# BB#255:                               # %if.then.721
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 13344(%rsp)
	movzbl	(%r15), %edi
	movl	%edi, 13256(%rsp)
	movq	368(%rsp), %r9          # 8-byte Reload
	jmp	.LBB0_259
.LBB0_250:                              # %if.then.699
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	11520(%rsp), %rsi
	movl	4(%rsi), %r10d
	movzwl	8(%rsi), %eax
	movl	%eax, 13256(%rsp)
	movzwl	10(%rsi), %eax
	movl	%eax, 13260(%rsp)
	movzwl	14(%rsi), %eax
	movl	%eax, 1756(%rsp)
	addq	$40, %rsi
	jmp	.LBB0_251
.LBB0_256:                              # %if.else.726
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %edi
	movl	$7, %ecx
	movq	368(%rsp), %r9          # 8-byte Reload
	.align	16, 0x90
.LBB0_257:                              # %for.cond.i.879
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rax, %r15
	movzbl	(%r15), %edx
	movl	%edx, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edi
	leaq	1(%r15), %rax
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_257
# BB#258:                               # %cmd_get_w.exit882
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%edi, 13256(%rsp)
	movq	%rax, 13344(%rsp)
.LBB0_259:                              # %do.body.735
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %esi
	addq	$2, %r15
	testb	%sil, %sil
	js	.LBB0_261
# BB#260:                               # %if.then.739
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movq	%r15, 13344(%rsp)
	movzbl	(%rax), %esi
	movl	%esi, 13260(%rsp)
	jmp	.LBB0_264
.LBB0_261:                              # %if.else.744
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %esi
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_262:                              # %for.cond.i.896
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %esi
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_262
# BB#263:                               # %cmd_get_w.exit899
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movl	%esi, 13260(%rsp)
	movq	%r15, 13344(%rsp)
.LBB0_264:                              # %do.end.752
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%ebx, %r15d
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	andl	$3, %r15d
	testl	%r9d, %r9d
	je	.LBB0_265
# BB#266:                               # %if.end.757
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r9, %rbp
	movq	13336(%rsp), %rax
	movl	100(%rax), %ebx
	xorl	%edx, %edx
	movl	%r8d, %eax
	movl	%r8d, 228(%rsp)         # 4-byte Spill
	divl	%ebx
	imull	%eax, %edi
	movl	%r15d, %edx
	leaq	512(%rsp), %rcx
	leaq	1756(%rsp), %r8
	callq	clist_bitmap_bytes
	cmpl	$2, %ebx
	jb	.LBB0_268
# BB#267:                               # %if.then.767
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	13260(%rsp), %r10d
	movl	1756(%rsp), %ecx
	imull	%r10d, %ecx
	jmp	.LBB0_269
.LBB0_265:                              # %if.end.757.thread
                                        #   in Loop: Header=BB0_22 Depth=4
	imull	%r8d, %edi
	movl	%r8d, 228(%rsp)         # 4-byte Spill
	movl	%r15d, %edx
	leaq	512(%rsp), %rcx
	leaq	1756(%rsp), %r8
	callq	clist_bitmap_bytes
	movl	%eax, %ecx
	movl	$1, %ebx
	xorl	%r10d, %r10d
	jmp	.LBB0_269
.LBB0_268:                              # %if.end.774
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%ebx, %ebx
	movl	%eax, %ecx
	movl	$1, %ebx
	movl	$0, %esi
	movq	%rbp, %r10
	je	.LBB0_307
.LBB0_269:                              # %for.body.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%ebx, 336(%rsp)         # 4-byte Spill
	movq	%r10, 368(%rsp)         # 8-byte Spill
	movl	%ecx, %ecx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_270:                              # %for.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	1756(%rsp), %ebx
	imull	%r14d, %ebx
	movq	13344(%rsp), %rax
	addq	352(%rsp), %rax         # 8-byte Folded Reload
	cmpq	13376(%rsp), %rax
	jb	.LBB0_274
# BB#271:                               # %if.then.786
                                        #   in Loop: Header=BB0_270 Depth=5
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	movq	%r10, %rbp
	callq	top_up_cbuf
	movq	%rbp, %r10
	testl	%eax, %eax
	js	.LBB0_272
.LBB0_274:                              # %if.end.792
                                        #   in Loop: Header=BB0_270 Depth=5
	testl	%r13d, %r13d
	je	.LBB0_276
# BB#275:                               # %if.then.794
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	13344(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 13344(%rsp)
	movb	(%rax), %r15b
.LBB0_276:                              # %if.end.796
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	432(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %r12
	testb	%r15b, %r15b
	jne	.LBB0_277
# BB#293:                               # %if.else.877
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	13260(%rsp), %r8d
	cmpl	$2, %r8d
	jl	.LBB0_298
# BB#294:                               # %land.lhs.true.882
                                        #   in Loop: Header=BB0_270 Depth=5
	testl	%r10d, %r10d
	movl	512(%rsp), %ecx
	movl	1756(%rsp), %r9d
	jne	.LBB0_300
# BB#295:                               # %land.lhs.true.882
                                        #   in Loop: Header=BB0_270 Depth=5
	cmpl	%r9d, %ecx
	je	.LBB0_296
	jmp	.LBB0_300
	.align	16, 0x90
.LBB0_277:                              # %if.end.796
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	%r15d, 408(%rsp)        # 4-byte Spill
	movzbl	%r15b, %ebp
	cmpl	$3, %ebp
	jne	.LBB0_284
# BB#278:                               # %if.then.800
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	13344(%rsp), %rbx
	movq	13384(%rsp), %rbp
	subq	%rbx, %rbp
	testq	%rbp, %rbp
	jle	.LBB0_280
# BB#279:                               # %if.then.i.906
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memmove
	incq	%rbx
	jmp	.LBB0_281
	.align	16, 0x90
.LBB0_298:                              # %lor.lhs.false.885
                                        #   in Loop: Header=BB0_270 Depth=5
	testl	%r10d, %r10d
	je	.LBB0_296
# BB#299:                               # %lor.lhs.false.885.if.then.888_crit_edge
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	512(%rsp), %ecx
	movl	1756(%rsp), %r9d
.LBB0_300:                              # %if.then.888
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	13344(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	13352(%rsp), %rdi
	movq	%r12, %rsi
	movq	328(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %rbx
	callq	cmd_read_short_bits
	movq	%rbx, %r10
	testl	%r13d, %r13d
	movq	%rax, 13344(%rsp)
	movq	384(%rsp), %rax         # 8-byte Reload
	cmoveq	432(%rsp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_303
	.align	16, 0x90
.LBB0_284:                              # %if.then.821
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	13384(%rsp), %rax
	movq	13344(%rsp), %rsi
	cmpl	$0, 13400(%rsp)
	jne	.LBB0_285
# BB#286:                               # %if.then.821
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	%rax, %rbx
	subq	%rsi, %rbx
	movq	328(%rsp), %r15         # 8-byte Reload
	cmpl	%r15d, %ebx
	jae	.LBB0_288
# BB#287:                               # %if.then.829
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	$4096, %eax             # imm = 0x1000
	subl	%ebx, %eax
	movl	%eax, 544(%rsp)
	movq	13352(%rsp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%rbx, %rdx
	callq	memmove
	movq	13352(%rsp), %rsi
	addq	%rbx, %rsi
	movl	544(%rsp), %edx
	movq	320(%rsp), %rdi         # 8-byte Reload
	leaq	544(%rsp), %rcx
	callq	sgets
	movl	%eax, 13400(%rsp)
	movq	13352(%rsp), %rsi
	leaq	(%rbx,%rsi), %rcx
	movl	544(%rsp), %eax
	addq	%rcx, %rax
	movq	%rax, 13384(%rsp)
	movl	13360(%rsp), %ecx
	leaq	-53(%rcx,%rsi), %rcx
	cmpq	%rax, %rcx
	cmovaq	%rax, %rcx
	movq	%rcx, 13376(%rsp)
	movq	%rsi, 13344(%rsp)
	jmp	.LBB0_288
	.align	16, 0x90
.LBB0_296:                              # %if.else.896
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	%r15d, 408(%rsp)        # 4-byte Spill
	movq	13352(%rsp), %rdi
	movq	13384(%rsp), %rbp
	movq	13344(%rsp), %r12
	subq	%r12, %rbp
	movq	328(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbx, %rbp
	jge	.LBB0_297
# BB#301:                               # %if.else.i.935
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	%ebx, %r15d
	subl	%ebp, %r15d
	movl	%r15d, 544(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%rdi, %rbx
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	addq	%rbx, %rbp
	movq	%rbp, %rsi
	movl	%r15d, %edx
	leaq	544(%rsp), %rcx
	callq	sgets
	movq	13384(%rsp), %r12
	jmp	.LBB0_302
.LBB0_297:                              # %if.then.i.927
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memmove
	addq	%rbx, %r12
.LBB0_302:                              # %cmd_read_data.exit937
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	368(%rsp), %r10         # 8-byte Reload
	movl	408(%rsp), %r15d        # 4-byte Reload
	movq	%r12, 13344(%rsp)
	movq	13352(%rsp), %rax
.LBB0_303:                              # %for.inc
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	%rax, 384(%rsp)         # 8-byte Spill
.LBB0_304:                              # %for.inc
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	336(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_305
.LBB0_280:                              # %if.else.i.909
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	$1, %r15d
	subl	%ebp, %r15d
	movl	%r15d, 544(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	leaq	(%rbp,%r12), %rsi
	movl	%r15d, %edx
	leaq	544(%rsp), %rcx
	callq	sgets
	movq	13384(%rsp), %rbx
.LBB0_281:                              # %cmd_read_data.exit
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	408(%rsp), %r15d        # 4-byte Reload
	movq	%rbx, 13344(%rsp)
	movl	512(%rsp), %eax
	testl	%eax, %eax
	movq	368(%rsp), %r10         # 8-byte Reload
	je	.LBB0_304
# BB#282:                               # %land.lhs.true.804
                                        #   in Loop: Header=BB0_270 Depth=5
	movl	13260(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB0_304
# BB#283:                               # %if.then.809
                                        #   in Loop: Header=BB0_270 Depth=5
	movzbl	(%r12), %esi
	incq	%r12
	imull	%eax, %edx
	decl	%edx
	movq	%r12, %rdi
	movq	%r10, %rbx
	callq	memset
	movq	%rbx, %r10
	jmp	.LBB0_304
.LBB0_285:                              #   in Loop: Header=BB0_270 Depth=5
	movq	328(%rsp), %r15         # 8-byte Reload
.LBB0_288:                              # %if.end.845
                                        #   in Loop: Header=BB0_270 Depth=5
	decq	%rsi
	movq	%rsi, 1600(%rsp)
	decq	%rax
	movq	%rax, 1608(%rsp)
	leaq	-1(%r12), %rax
	movq	%rax, 472(%rsp)
	addq	$4095, %r12             # imm = 0xFFF
	movq	%r12, 480(%rsp)
	cmpl	$2, %ebp
	jne	.LBB0_289
# BB#291:                               # %sw.bb.858
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	%r15, 328(%rsp)         # 8-byte Spill
	movl	512(%rsp), %esi
	shll	$3, %esi
	movl	13260(%rsp), %edx
	leaq	544(%rsp), %rbx
	movq	%rbx, %rdi
	movq	13472(%rsp), %rcx
	callq	clist_cfd_init
	movl	$1, %ecx
	movq	%rbx, %rdi
	leaq	1600(%rsp), %rsi
	leaq	464(%rsp), %rdx
	callq	*s_CFD_template+16(%rip)
	movq	%rbx, %rdi
	callq	*s_CFD_template+32(%rip)
	movl	336(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_292
.LBB0_289:                              # %if.end.845
                                        #   in Loop: Header=BB0_270 Depth=5
	cmpl	$1, %ebp
	movl	336(%rsp), %ebp         # 4-byte Reload
	jne	.LBB0_897
# BB#290:                               # %sw.bb.856
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	%r15, 328(%rsp)         # 8-byte Spill
	leaq	544(%rsp), %rbx
	movq	%rbx, %rdi
	callq	clist_rld_init
	movl	$1, %ecx
	movq	%rbx, %rdi
	leaq	1600(%rsp), %rsi
	leaq	464(%rsp), %rdx
	callq	*s_RLD_template+16(%rip)
.LBB0_292:                              # %cleanup.872.thread
                                        #   in Loop: Header=BB0_270 Depth=5
	movq	1600(%rsp), %rax
	incq	%rax
	testl	%r13d, %r13d
	movq	%rax, 13344(%rsp)
	movq	384(%rsp), %rax         # 8-byte Reload
	cmoveq	432(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movq	368(%rsp), %r10         # 8-byte Reload
	movl	408(%rsp), %r15d        # 4-byte Reload
.LBB0_305:                              # %for.inc
                                        #   in Loop: Header=BB0_270 Depth=5
	incl	%r13d
	addl	%r10d, %r14d
	cmpl	%ebp, %r13d
	jb	.LBB0_270
# BB#306:                               #   in Loop: Header=BB0_22 Depth=4
	movq	384(%rsp), %rsi         # 8-byte Reload
.LBB0_307:                              # %cleanup.907.thread
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r10, 368(%rsp)         # 8-byte Spill
	leaq	6856(%rsp), %r13
	movq	440(%rsp), %rbx         # 8-byte Reload
	movq	232(%rsp), %rbp         # 8-byte Reload
	movl	228(%rsp), %r10d        # 4-byte Reload
	.align	16, 0x90
.LBB0_251:                              # %do.end.2935
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	400(%rsp), %r15         # 8-byte Reload
.LBB0_252:                              # %do.end.2935
                                        #   in Loop: Header=BB0_22 Depth=4
	addl	$-3, %ebp
	cmpl	$7, %ebp
	ja	.LBB0_253
# BB#902:                               # %do.end.2935
                                        #   in Loop: Header=BB0_22 Depth=4
	jmpq	*.LJTI0_7(,%rbp,8)
.LBB0_903:                              # %sw.bb.2937
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13256(%rsp), %rcx
	testl	%ecx, %ecx
	jne	.LBB0_911
# BB#904:                               # %sw.bb.2937
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	1(%rax), %rax
	cmpq	%rax, %rcx
	jae	.LBB0_911
# BB#905:                               # %land.lhs.true.2947
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13248(%rsp), %rcx
	testl	%ecx, %ecx
	jne	.LBB0_911
# BB#906:                               # %land.lhs.true.2947
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpq	%rax, %rcx
	jae	.LBB0_911
# BB#907:                               # %if.then.2957
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movq	1632(%rdi), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_909
.LBB0_908:                              #   in Loop: Header=BB0_22 Depth=4
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
.LBB0_539:                              #   in Loop: Header=BB0_22 Depth=4
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movq	360(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB0_943
.LBB0_37:                               # %cond.false.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$12, %r8d
	testl	%ecx, %ecx
	je	.LBB0_39
# BB#38:                                # %cond.true.6.i
                                        #   in Loop: Header=BB0_22 Depth=4
	leal	8(,%rcx,8), %r8d
.LBB0_39:                               # %cond.end.11.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%r8d, 11436(%rsp)
	testl	%eax, %eax
	je	.LBB0_40
# BB#41:                                # %do.body.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	1(%rdi), %eax
	addq	$2, %rdi
	testb	%al, %al
	jns	.LBB0_45
# BB#42:                                # %if.else.i
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %eax
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_43:                               # %for.cond.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rdi), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%rdi
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_43
# BB#44:                                # %cmd_get_w.exit.i
                                        #   in Loop: Header=BB0_22 Depth=4
	cltq
.LBB0_45:                               # %do.body.22.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 11448(%rsp)
	jmp	.LBB0_46
.LBB0_160:                              # %sw.bb.314
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	2(%r15), %r14d
	addq	$3, %r15
	testb	%r14b, %r14b
	js	.LBB0_162
# BB#161:                               # %if.then.320
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
	movzbl	(%rcx), %r14d
	jmp	.LBB0_165
.LBB0_40:                               #   in Loop: Header=BB0_22 Depth=4
	incq	%rdi
.LBB0_46:                               # %do.body.22.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %ebp
	testb	%bpl, %bpl
	js	.LBB0_48
# BB#47:                                # %if.then.26.i
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	1(%rdi), %rax
	jmp	.LBB0_50
.LBB0_48:                               # %if.else.29.i
                                        #   in Loop: Header=BB0_22 Depth=4
	incq	%rdi
	andl	$127, %ebp
	movl	$7, %ecx
	movq	%rdi, %rax
	.align	16, 0x90
.LBB0_49:                               # %for.cond.i.78.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rax), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %ebp
	addl	$7, %ecx
	testb	%dl, %dl
	movq	%rax, %rdi
	leaq	1(%rax), %rax
	js	.LBB0_49
.LBB0_50:                               # %do.body.36.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %ebx
	addq	$2, %rdi
	testb	%bl, %bl
	jns	.LBB0_53
# BB#51:                                # %if.else.43.i
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %ebx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_52:                               # %for.cond.i.62.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rdi), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %ebx
	addl	$7, %ecx
	testb	%al, %al
	movq	%rdi, %rax
	leaq	1(%rdi), %rdi
	js	.LBB0_52
.LBB0_53:                               # %do.end.49.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$32, %r9b
	jne	.LBB0_54
# BB#58:                                # %if.else.71.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	$1, 11456(%rsp)
	movl	%ebp, %r10d
	jmp	.LBB0_59
.LBB0_54:                               # %do.body.54.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	(%rdi), %dl
	addq	$2, %rax
	testb	%dl, %dl
	jns	.LBB0_57
# BB#55:                                # %if.else.60.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	%dl, %edx
	andl	$127, %edx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_56:                               # %for.cond.i.46.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rax), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rax
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_56
.LBB0_57:                               # %do.end.67.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%dl, 11456(%rsp)
	movzbl	%dl, %r10d
	imull	%ebp, %r10d
	movq	%rax, %rdi
.LBB0_59:                               # %if.end.75.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	%r10w, 11440(%rsp)
	testb	$64, %r9b
	jne	.LBB0_60
# BB#64:                                # %if.else.98.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	$1, 11457(%rsp)
	movl	%ebx, %r11d
	jmp	.LBB0_65
.LBB0_60:                               # %do.body.80.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	(%rdi), %al
	incq	%rdi
	testb	%al, %al
	jns	.LBB0_63
# BB#61:                                # %if.else.86.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	%al, %eax
	andl	$127, %eax
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_62:                               # %for.cond.i.30.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rdi), %esi
	movl	%esi, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %eax
	incq	%rdi
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_62
.LBB0_63:                               # %do.end.93.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%al, 11457(%rsp)
	movzbl	%al, %r11d
	imull	%ebx, %r11d
.LBB0_65:                               # %if.end.102.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	%r11w, 11442(%rsp)
	testb	$-128, %r9b
	jne	.LBB0_66
# BB#71:                                # %if.else.122.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	$0, 11458(%rsp)
	xorl	%edx, %edx
	jmp	.LBB0_72
.LBB0_66:                               # %do.body.107.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdi), %edx
	incq	%rdi
	testb	%dl, %dl
	js	.LBB0_68
# BB#67:                                # %if.then.111.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	%dx, 11458(%rsp)
	jmp	.LBB0_72
.LBB0_323:                              # %sw.bb.1069
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r14, 13368(%rsp)
	movzbl	(%r14), %ebx
	addq	$2, %r15
	testb	%bl, %bl
	jns	.LBB0_326
# BB#324:                               # %if.else.i.952
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %ebx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_325:                              # %for.cond.i.i.963
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %ebx
	addl	$7, %ecx
	testb	%al, %al
	movq	%r15, %r14
	leaq	1(%r15), %r15
	js	.LBB0_325
.LBB0_326:                              # %do.end.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$1, %bl
	je	.LBB0_328
# BB#327:                               # %if.then.4.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movl	%ecx, 6884(%rsp)
	andl	$7, %eax
	movl	%eax, 6896(%rsp)
	movzbl	2(%r14), %eax
	addq	$3, %r14
	movl	%eax, %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	movl	%ecx, 6888(%rsp)
	andl	$7, %eax
	movl	%eax, 6892(%rsp)
	movq	%r14, %r15
.LBB0_328:                              # %if.end.23.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$2, %bl
	je	.LBB0_330
# BB#329:                               # %if.then.26.i.972
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %eax
	incq	%r15
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$7, %ecx
	decl	%ecx
	movl	%ecx, 6900(%rsp)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movl	%ecx, 7168(%rsp)
	andl	$1, %eax
	movl	%eax, 7164(%rsp)
.LBB0_330:                              # %if.end.39.i.974
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$4, %bl
	je	.LBB0_332
# BB#331:                               # %if.then.42.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$4, %edx
	leaq	7152(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r15
.LBB0_332:                              # %if.end.47.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$8, %bl
	je	.LBB0_334
# BB#333:                               # %if.then.50.i.977
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$4, %edx
	leaq	544(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r15
	movss	544(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	mulsd	.LCPI0_4(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 6880(%rsp)
.LBB0_334:                              # %if.end.59.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$16, %bl
	je	.LBB0_336
# BB#335:                               # %if.then.62.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$4, %edx
	leaq	544(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r15
	movss	544(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	6880(%rsp), %rdi
	callq	gx_set_miter_limit
.LBB0_336:                              # %if.end.70.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$32, %bl
	je	.LBB0_338
# BB#337:                               # %if.then.73.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	%ecx, 7076(%rsp)
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	movl	%ecx, 7104(%rsp)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movl	%ecx, 7132(%rsp)
	movl	%ecx, 7136(%rsp)
	andl	$1, %eax
	movl	%eax, 7128(%rsp)
	movzbl	1(%r15), %eax
	addq	$2, %r15
	movl	%eax, 7180(%rsp)
.LBB0_338:                              # %if.end.89.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	280(%rsp), %eax         # 4-byte Reload
	testb	$64, %bl
	je	.LBB0_340
# BB#339:                               # %if.then.92.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%r15), %eax
	incq	%r15
	andl	$63, %eax
.LBB0_340:                              # %if.end.99.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$-128, %bl
	jne	.LBB0_342
# BB#341:                               #   in Loop: Header=BB0_22 Depth=4
	movl	%eax, 280(%rsp)         # 4-byte Spill
	jmp	.LBB0_343
.LBB0_350:                              # %sw.bb.1120
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	11000(%rsp), %rdi
	callq	gx_cpath_reset
	movq	%rax, 408(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	js	.LBB0_351
# BB#942:                               # %if.end.1128
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	9152(%rsp), %rbx
	movq	%rbx, %rdi
	movq	13472(%rsp), %rsi
	callq	gx_cpath_accum_begin
	movq	%rbx, %rdi
	leaq	9136(%rsp), %rsi
	callq	gx_cpath_accum_set_cbox
	movq	%rbx, 13336(%rsp)
	movswl	13268(%rsp), %eax
	movl	%eax, 8472(%rsp)
	movl	$656, %edx              # imm = 0x290
	leaq	8480(%rsp), %rdi
	leaq	6200(%rsp), %rsi
	callq	memcpy
	movq	$1, 6208(%rsp)
	movq	$gx_dc_type_data_pure, 6200(%rsp)
	movw	$0, 13268(%rsp)
	movl	$252, 7068(%rsp)
	movl	$1, 256(%rsp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB0_943
.LBB0_400:                              # %sw.bb.1247
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rax
	movq	%rax, 13368(%rsp)
	movzbl	1(%r15), %ebx
	leaq	13352(%rsp), %rdi
	leaq	13368(%rsp), %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_401
# BB#402:                               # %read_begin_image.exit
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	gx_image_type_table(,%rbx,8), %rbx
	xorl	%esi, %esi
	leaq	544(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	movq	13368(%rsp), %rsi
	movl	13384(%rsp), %edx
	subl	%esi, %edx
	movq	%rbp, %rdi
	callq	sread_string
	leaq	5008(%rsp), %rdi
	movq	%rbp, %rsi
	movq	392(%rsp), %rdx         # 8-byte Reload
	callq	*32(%rbx)
	movq	656(%rsp), %rbp
	leaq	1(%rbp), %rcx
	movq	%rcx, 13368(%rsp)
	movq	%rcx, 13344(%rsp)
	testl	%eax, %eax
	js	.LBB0_403
# BB#404:                               # %if.end.1254
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	1(%rbp), %edx
	addq	$2, %rbp
	testb	%dl, %dl
	js	.LBB0_406
# BB#405:                               # %if.then.1259
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, 13344(%rsp)
	movzbl	(%rcx), %ecx
	movl	%ecx, 4992(%rsp)
	movq	13472(%rsp), %rbx
	jmp	.LBB0_409
.LBB0_424:                              # %sw.bb.1329
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rax
	movq	%rax, 13368(%rsp)
	movzbl	1(%r15), %ebx
	leaq	13352(%rsp), %rdi
	leaq	13368(%rsp), %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_425
# BB#426:                               # %read_begin_image.exit1140
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	gx_image_type_table(,%rbx,8), %rbx
	xorl	%esi, %esi
	leaq	544(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	movq	13368(%rsp), %rsi
	movl	13384(%rsp), %edx
	subl	%esi, %edx
	movq	%rbp, %rdi
	callq	sread_string
	leaq	5008(%rsp), %rdi
	movq	%rbp, %rsi
	movq	392(%rsp), %rdx         # 8-byte Reload
	callq	*32(%rbx)
	movq	656(%rsp), %rcx
	incq	%rcx
	movq	%rcx, 13368(%rsp)
	movq	%rcx, 13344(%rsp)
	testl	%eax, %eax
	js	.LBB0_427
# BB#428:                               # %if.end.1337
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	$0, 4992(%rsp)
	movq	5040(%rsp), %rdx
	movl	%edx, 5000(%rsp)
	shrq	$32, %rdx
	movq	13472(%rsp), %rbx
	jmp	.LBB0_429
.LBB0_522:                              # %sw.bb.1674
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	2(%r15), %rax
	movq	%rax, 13344(%rsp)
	movzbl	1(%r15), %ecx
	cmpq	$9, %rcx
	ja	.LBB0_523
# BB#524:                               # %sw.bb.1674
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	11936(%rsp), %r13
	jmpq	*.LJTI0_5(,%rcx,8)
.LBB0_525:                              # %sw.bb.1677
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 13368(%rsp)
	movl	$4, %edx
	leaq	512(%rsp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	addq	$6, %r15
	movq	%r15, 1600(%rsp)
	cmpl	$0, 512(%rsp)
	movl	$1, %ebx
	je	.LBB0_537
# BB#526:                               # %if.end.i.1250
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	13352(%rsp), %rdi
	leaq	1600(%rsp), %rsi
	callq	top_up_cbuf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_527
# BB#528:                               # %if.end.4.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13384(%rsp), %rax
	movq	1600(%rsp), %r12
	subq	%r12, %rax
	movl	512(%rsp), %esi
	cmpq	%rsi, %rax
	jge	.LBB0_529
# BB#530:                               # %if.else.i.1258
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.28, %edx
	movq	13472(%rsp), %rdi
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_531
# BB#532:                               # %if.end.12.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13384(%rsp), %rbp
	subq	%r12, %rbp
	movl	512(%rsp), %r15d
	subl	%ebp, %r15d
	movl	%r15d, 464(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	addq	%r14, %rbp
	movq	%rbp, %rsi
	movl	%r15d, %edx
	leaq	464(%rsp), %rcx
	callq	sgets
	movl	%eax, 13400(%rsp)
	movq	13384(%rsp), %r15
	movq	%r15, 1600(%rsp)
	movl	$1, %r13d
	movq	%r14, %r12
	movq	13472(%rsp), %r14
	movq	%r14, %rsi
	jmp	.LBB0_533
.LBB0_68:                               # %if.else.114.i
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %edx
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_69:                               # %for.cond.i.14.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rdi), %eax
	movl	%eax, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %edx
	incq	%rdi
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_69
# BB#70:                                # %cmd_get_w.exit16.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	%dx, 11458(%rsp)
.LBB0_72:                               # %if.end.124.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	$1, %cl
	testb	$16, %r9b
	je	.LBB0_74
# BB#73:                                # %if.then.128.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	(%rdi), %cl
	incq	%rdi
.LBB0_74:                               # %do.end.135.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movb	%cl, 11464(%rsp)
	testw	%dx, %dx
	je	.LBB0_75
# BB#76:                                # %cond.false.141.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movzwl	%dx, %esi
	movzwl	%r11w, %eax
	xorl	%edx, %edx
	divl	%ebx
	imull	%esi, %eax
	xorl	%edx, %edx
	divl	%ebp
	jmp	.LBB0_77
.LBB0_75:                               #   in Loop: Header=BB0_22 Depth=4
	xorl	%edx, %edx
.LBB0_77:                               # %cond.end.147.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movw	%dx, 11444(%rsp)
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	je	.LBB0_79
# BB#78:                                # %if.then.156.i
                                        #   in Loop: Header=BB0_22 Depth=4
	xorl	%edx, %edx
	movl	%r8d, %eax
	divl	%ecx
	movl	%eax, %r8d
.LBB0_79:                               # %read_set_tile_size.exit
                                        #   in Loop: Header=BB0_22 Depth=4
	movzwl	%r10w, %eax
	imull	%r8d, %eax
	addl	$63, %eax
	shrl	$3, %eax
	andl	$65528, %eax            # imm = 0xFFF8
	movw	%ax, 11446(%rsp)
	movq	%rdi, 13368(%rsp)
	movq	%rdi, 13344(%rsp)
	jmp	.LBB0_908
.LBB0_162:                              # %if.else.323
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %r14d
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_163:                              # %for.cond.i.800
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %r14d
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_163
# BB#164:                               # %cmd_get_w.exit802
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13344(%rsp)
.LBB0_165:                              # %do.end.332
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	7248(%rsp), %r13
	testq	%r13, %r13
	jne	.LBB0_168
# BB#166:                               # %if.then.i.i.805
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$st_device_halftone, %esi
	movl	$.L.str.30, %edx
	movq	13472(%rsp), %rbp
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_184
# BB#167:                               # %do.body.3.i.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	$1, 160(%r13)
	movq	%rbx, 168(%r13)
	movq	$rc_free_struct_only, 176(%r13)
	movups	160(%r13), %xmm0
	movaps	%xmm0, 544(%rsp)
	movq	$rc_free_struct_only, 560(%rsp)
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%r13, %rdi
	callq	memset
	movq	560(%rsp), %rax
	movq	%rax, 176(%r13)
	movaps	544(%rsp), %xmm0
	movups	%xmm0, 160(%r13)
	movq	%r13, 7248(%rsp)
.LBB0_168:                              # %if.end.i.806
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	208(%r13), %ebp
	cmpl	%r14d, %ebp
	jne	.LBB0_171
# BB#169:                               #   in Loop: Header=BB0_22 Depth=4
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_170
.LBB0_171:                              # %if.then.3.i
                                        #   in Loop: Header=BB0_22 Depth=4
	jbe	.LBB0_180
# BB#172:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	200(%r13), %r12
	leal	-1(%rbp), %eax
	imulq	$168, %rax, %rbx
	.align	16, 0x90
.LBB0_173:                              # %for.body.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	200(%r13), %rdi
	movq	88(%rdi,%rbx), %rax
	cmpq	88(%r13), %rax
	je	.LBB0_175
# BB#174:                               # %if.then.11.i
                                        #   in Loop: Header=BB0_173 Depth=5
	addq	%rbx, %rdi
	movl	$1, %edx
	movq	13472(%rsp), %rsi
	callq	gx_ht_order_release
.LBB0_175:                              # %for.cond.backedge.i
                                        #   in Loop: Header=BB0_173 Depth=5
	decl	%ebp
	addq	$-168, %rbx
	cmpl	%r14d, %ebp
	ja	.LBB0_173
# BB#176:                               # %for.end.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%r14d, %r14d
	je	.LBB0_177
# BB#178:                               # %if.else.i.808
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	(%r12), %rsi
	movl	$.L.str.29, %ecx
	movq	13472(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	*16(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	jne	.LBB0_186
	jmp	.LBB0_179
.LBB0_363:                              # %sw.bb.1187
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$2, %ebp
	jne	.LBB0_364
# BB#369:                               # %sw.bb.4.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13472(%rsp), %rdi
	callq	gs_cspace_new_DeviceCMYK
	jmp	.LBB0_368
.LBB0_342:                              # %if.then.102.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%eax, 280(%rsp)         # 4-byte Spill
	movl	$4, %edx
	leaq	7080(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r15
.LBB0_343:                              # %if.end.107.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$1, %bh
	je	.LBB0_345
# BB#344:                               # %if.then.110.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$4, %edx
	leaq	7084(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$4, %r15
.LBB0_345:                              # %if.end.116.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$2, %bh
	je	.LBB0_347
# BB#346:                               # %if.then.119.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$2, %edx
	leaq	7072(%rsp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$2, %r15
.LBB0_347:                              # %read_set_misc2.exit
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13368(%rsp)
	movq	%r15, 13344(%rsp)
	jmp	.LBB0_908
.LBB0_180:                              # %if.else.28.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%ebp, %ebp
	je	.LBB0_181
# BB#182:                               # %if.else.34.i.811
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	200(%r13), %rsi
	movl	$.L.str.29, %ecx
	movq	13472(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	*16(%rdi)
	jmp	.LBB0_183
.LBB0_406:                              # %if.else.1264
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %edx
	movl	$7, %ecx
	movq	13472(%rsp), %rbx
	.align	16, 0x90
.LBB0_407:                              # %for.cond.i.1067
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rbp), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rbp
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_407
# BB#408:                               # %cmd_get_w.exit1070
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%edx, 4992(%rsp)
	movq	%rbp, 13344(%rsp)
.LBB0_409:                              # %do.body.1273
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rbp), %esi
	leaq	1(%rbp), %rdx
	testb	%sil, %sil
	js	.LBB0_411
# BB#410:                               # %if.then.1277
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rdx, 13344(%rsp)
	movzbl	(%rbp), %ecx
	movl	%ecx, 4996(%rsp)
	jmp	.LBB0_414
.LBB0_411:                              # %if.else.1282
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %esi
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_412:                              # %for.cond.i.1084
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%rdx, %rbp
	movzbl	(%rbp), %edi
	movl	%edi, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %esi
	leaq	1(%rbp), %rdx
	addl	$7, %ecx
	testb	%dil, %dil
	js	.LBB0_412
# BB#413:                               # %cmd_get_w.exit1087
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%esi, 4996(%rsp)
	movq	%rdx, 13344(%rsp)
.LBB0_414:                              # %do.body.1291
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rdx), %esi
	addq	$2, %rbp
	testb	%sil, %sil
	js	.LBB0_416
# BB#415:                               # %if.then.1295
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, 13344(%rsp)
	movzbl	(%rdx), %esi
	jmp	.LBB0_419
.LBB0_416:                              # %if.else.1298
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %esi
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_417:                              # %for.cond.i.1101
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rbp), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %esi
	incq	%rbp
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_417
# BB#418:                               # %cmd_get_w.exit1104
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, 13344(%rsp)
.LBB0_419:                              # %do.end.1304
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	5040(%rsp), %rdx
	movl	%edx, %ecx
	subl	%esi, %ecx
	movl	%ecx, 5000(%rsp)
	movzbl	(%rbp), %esi
	leaq	1(%rbp), %rdi
	shrq	$32, %rdx
	testb	%sil, %sil
	js	.LBB0_421
# BB#420:                               # %if.then.1312
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rdi, 13344(%rsp)
	movzbl	(%rbp), %eax
	subl	%eax, %edx
	jmp	.LBB0_429
.LBB0_421:                              # %if.else.1315
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %esi
	movl	$7, %ecx
	.align	16, 0x90
.LBB0_422:                              # %for.cond.i.1118
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rdi), %ebp
	movl	%ebp, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %esi
	incq	%rdi
	addl	$7, %ecx
	testb	%bpl, %bpl
	js	.LBB0_422
# BB#423:                               # %cmd_get_w.exit1121
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rdi, 13344(%rsp)
	subl	%esi, %edx
.LBB0_429:                              # %do.end.1355
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%edx, 5004(%rsp)
	movq	13336(%rsp), %rdi
	movl	$2, %esi
	callq	*1688(%rdi)
	movq	13336(%rsp), %rdi
	leaq	4984(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	360(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rbx
	movq	%rbx, (%rsp)
	xorl	%edx, %edx
	movq	%r13, %rsi
	leaq	5008(%rsp), %rcx
	leaq	4992(%rsp), %r8
	leaq	6200(%rsp), %r9
	callq	*1440(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movq	%rbx, %rcx
	jns	.LBB0_943
	jmp	.LBB0_900
.LBB0_361:                              # %sw.bb.1187
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$1, %ebp
	jne	.LBB0_392
# BB#362:                               # %sw.bb.2.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13472(%rsp), %rdi
	callq	gs_cspace_new_DeviceRGB
.LBB0_368:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 1600(%rsp)
	xorl	%r12d, %r12d
	movl	308(%rsp), %ebp         # 4-byte Reload
.LBB0_373:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_22 Depth=4
	testb	$8, %r14b
	jne	.LBB0_375
# BB#374:                               #   in Loop: Header=BB0_22 Depth=4
	movl	%ebp, 308(%rsp)         # 4-byte Spill
	jmp	.LBB0_391
.LBB0_375:                              # %if.then.44.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$gs_color_space_type_Indexed, %esi
	movq	13472(%rsp), %rdi
	callq	gs_cspace_alloc
	movq	1600(%rsp), %rdi
	testq	%rax, %rax
	je	.LBB0_376
# BB#377:                               # %if.end.53.i
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$4, %r14d
	movl	%r14d, 408(%rsp)        # 4-byte Spill
	movq	%rdi, 40(%rax)
	movq	%rax, 1600(%rsp)
	movl	$0, 96(%rax)
	movq	$0, 80(%rax)
	movq	1600(%rsp), %rax
	movl	$0, 88(%rax)
	movzbl	(%rbx), %r13d
	addq	$27, %r15
	testb	%r13b, %r13b
	js	.LBB0_379
# BB#378:                               # %if.then.66.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, %rbx
	jmp	.LBB0_381
.LBB0_364:                              # %sw.bb.1187
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$12, %ebp
	jne	.LBB0_392
# BB#365:                               # %sw.bb.6.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%r14d, 408(%rsp)        # 4-byte Spill
	xorl	%esi, %esi
	leaq	1600(%rsp), %rdi
	movq	13472(%rsp), %r14
	movq	%r14, %rdx
	callq	gs_cspace_build_ICC
	movq	416(%rsp), %r12         # 8-byte Reload
	movq	24(%r12), %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	gsicc_profile_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_366
# BB#370:                               # %if.end.i.1000
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	552(%rsp), %rax
	movb	%al, (%rbp)
	movq	544(%rsp), %rcx
	movq	%rcx, 144(%rbp)
	movl	$1, 152(%rbp)
	shrq	$32, %rax
	movl	%eax, 4(%rbp)
	movq	560(%rsp), %rax
	movl	%eax, 12(%rbp)
	shrq	$32, %rax
	movl	%eax, 16(%rbp)
	movq	%r12, 264(%rbp)
	movq	1600(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	gsicc_set_gscs_profile
	movl	%eax, %r12d
	decq	288(%rbp)
	jne	.LBB0_372
# BB#371:                               # %do.end.29.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	296(%rbp), %rdi
	movl	$.L__func__.read_set_color_space, %edx
	movq	%rbp, %rsi
	callq	*304(%rbp)
.LBB0_372:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	308(%rsp), %ebp         # 4-byte Reload
	movl	408(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB0_373
.LBB0_645:                              # %sw.bb.1919
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %ebx
	testb	%bl, %bl
	js	.LBB0_646
# BB#647:                               # %if.else.1931
                                        #   in Loop: Header=BB0_22 Depth=4
	addq	$3, %r15
	movq	%r15, 13344(%rsp)
	jmp	.LBB0_648
.LBB0_654:                              # %do.end.1947
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, 13368(%rsp)
	movq	13336(%rsp), %rcx
	leaq	4408(%rsp), %rdi
	leaq	13352(%rsp), %rsi
	leaq	6856(%rsp), %r13
	movq	%r13, %rdx
	movq	13472(%rsp), %r8
	callq	read_ht_segment
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	13368(%rsp), %rcx
	movq	%rcx, 13344(%rsp)
	movl	$223, %r12d
	testl	%eax, %eax
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movq	360(%rsp), %rcx         # 8-byte Reload
	jns	.LBB0_943
	jmp	.LBB0_950
.LBB0_660:                              # %sw.bb.1993
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	6200(%rsp), %r13
	jmp	.LBB0_661
.LBB0_659:                              # %sw.bb.1991
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	12592(%rsp), %r13
.LBB0_661:                              # %load_dcolor
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	3(%r15), %rax
	movq	%rax, 13344(%rsp)
	movzbl	2(%r15), %ebx
	movl	%ebx, %edi
	andl	$127, %edi
	callq	gx_get_dc_type_from_index
	movq	%rax, %r14
	movl	$-15, %r12d
	testq	%r14, %r14
	je	.LBB0_671
# BB#662:                               # %if.end.2008
                                        #   in Loop: Header=BB0_22 Depth=4
	xorl	%r15d, %r15d
	movq	13344(%rsp), %rax
	testb	%bl, %bl
	jns	.LBB0_666
# BB#663:                               # %do.body.2011
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %r15d
	testb	%r15b, %r15b
	js	.LBB0_664
# BB#665:                               # %if.else.2018
                                        #   in Loop: Header=BB0_22 Depth=4
	incq	%rax
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_666
.LBB0_177:                              # %if.then.18.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	(%r12), %rsi
	movl	$.L.str.29, %edx
	movq	13472(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*24(%rdi)
	xorl	%r15d, %r15d
	jmp	.LBB0_186
.LBB0_181:                              # %if.then.31.i.810
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$st_ht_order_component_element, %edx
	movl	$.L.str.29, %ecx
	movq	13472(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*104(%rdi)
.LBB0_183:                              # %if.end.39.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_184
# BB#185:                               # %if.end.42.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	208(%r13), %eax
	imulq	$168, %rax, %rdi
	addq	%r15, %rdi
	movl	%r14d, %ecx
	subl	%eax, %ecx
	imulq	$168, %rcx, %rdx
	xorl	%esi, %esi
	callq	memset
	leaq	200(%r13), %r12
.LBB0_186:                              # %cleanup.51.i
                                        #   in Loop: Header=BB0_22 Depth=4
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%r14d, 208(%r13)
	movq	%r15, (%r12)
.LBB0_170:                              # %cleanup.3226.thread.thread
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movq	360(%rsp), %rcx         # 8-byte Reload
	leaq	6856(%rsp), %r13
	jmp	.LBB0_943
.LBB0_376:                              # %if.then.52.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%ebp, 308(%rsp)         # 4-byte Spill
	movl	$.L__func__.read_set_color_space, %esi
	callq	rc_decrement_cs
	movl	$-25, %r12d
	jmp	.LBB0_392
.LBB0_379:                              # %if.else.69.i
                                        #   in Loop: Header=BB0_22 Depth=4
	andl	$127, %r13d
	movl	$7, %ecx
	movq	%r15, %rbx
.LBB0_380:                              # %for.cond.i.i.1016
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%rbx), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r13d
	incq	%rbx
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_380
.LBB0_381:                              # %do.end.74.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	40(%rax), %rdi
	callq	gs_color_space_num_components
	leal	1(%r13), %r14d
	imull	%eax, %r14d
	cmpl	$0, 408(%rsp)           # 4-byte Folded Reload
	movq	1600(%rsp), %rcx
	movl	%eax, 76(%rcx)
	jne	.LBB0_382
# BB#385:                               # %if.else.97.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.27, %edx
	movq	13472(%rsp), %rdi
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	movq	1600(%rsp), %rdi
	je	.LBB0_994
# BB#386:                               # %cleanup.114.thread.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 80(%rdi)
	movq	1600(%rsp), %rax
	movl	%r14d, 88(%rax)
	jmp	.LBB0_387
.LBB0_382:                              # %if.then.84.i.1019
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.26, %ecx
	leaq	464(%rsp), %rdi
	movl	%r14d, %esi
	movq	13472(%rsp), %rdx
	callq	alloc_indexed_map
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_384
# BB#383:                               # %cleanup.thread.i.1020
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	464(%rsp), %rax
	movq	$lookup_indexed_map, 24(%rax)
	movq	464(%rsp), %rax
	movq	1600(%rsp), %rcx
	movq	%rax, 80(%rcx)
	movq	464(%rsp), %rax
	movq	48(%rax), %r15
	shll	$2, %r14d
.LBB0_387:                              # %if.end.117.i
                                        #   in Loop: Header=BB0_22 Depth=4
	shrl	$2, 408(%rsp)           # 4-byte Folded Spill
	movq	13384(%rsp), %rbp
	subq	%rbx, %rbp
	movl	%r14d, %r14d
	cmpq	%r14, %rbp
	jge	.LBB0_388
# BB#389:                               # %if.else.i.i.1037
                                        #   in Loop: Header=BB0_22 Depth=4
	subl	%ebp, %r14d
	movl	%r14d, 464(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	addq	%r15, %rbp
	movq	%rbp, %rsi
	movl	%r14d, %edx
	leaq	464(%rsp), %rcx
	callq	sgets
	movq	13384(%rsp), %rbx
	jmp	.LBB0_390
.LBB0_388:                              # %if.then.i.i.1029
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memmove
	addq	%r14, %rbx
.LBB0_390:                              # %cleanup.125.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	1600(%rsp), %rax
	movl	%r13d, 72(%rax)
	movl	408(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 96(%rax)
	leaq	6856(%rsp), %r13
.LBB0_391:                              # %if.end.133.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L__func__.read_set_color_space, %esi
	movq	392(%rsp), %rdi         # 8-byte Reload
	callq	rc_decrement_only_cs
	movq	1600(%rsp), %rax
	movq	%rax, 392(%rsp)         # 8-byte Spill
.LBB0_392:                              # %out.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbx, 13368(%rsp)
.LBB0_393:                              # %read_set_color_space.exit
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbx, 13344(%rsp)
	testl	%r12d, %r12d
	jns	.LBB0_679
	jmp	.LBB0_394
.LBB0_664:                              # %if.then.2015
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	544(%rsp), %rdi
	movq	%rax, %rsi
	callq	enc_u_get_uint
	movq	%rax, 13344(%rsp)
	movl	544(%rsp), %r15d
.LBB0_666:                              # %do.body.2024
                                        #   in Loop: Header=BB0_22 Depth=4
	movzbl	(%rax), %ebx
	testb	%bl, %bl
	js	.LBB0_667
# BB#668:                               # %if.else.2031
                                        #   in Loop: Header=BB0_22 Depth=4
	incq	%rax
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_669
.LBB0_667:                              # %if.then.2028
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	544(%rsp), %rdi
	movq	%rax, %rsi
	callq	enc_u_get_uint
	movq	%rax, 13344(%rsp)
	movl	544(%rsp), %ebx
.LBB0_669:                              # %do.end.2035
                                        #   in Loop: Header=BB0_22 Depth=4
	testl	%ebx, %ebx
	je	.LBB0_670
# BB#672:                               # %while.body.2047.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13344(%rsp), %r9
.LBB0_673:                              # %while.body.2047
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	13376(%rsp), %rax
	subq	%r9, %rax
	movslq	%ebx, %rbp
	cmpq	%rbp, %rax
	jge	.LBB0_676
# BB#674:                               # %if.then.2055
                                        #   in Loop: Header=BB0_673 Depth=5
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_990
# BB#675:                               # %if.then.2055.if.end.2061_crit_edge
                                        #   in Loop: Header=BB0_673 Depth=5
	movq	13344(%rsp), %r9
.LBB0_676:                              # %if.end.2061
                                        #   in Loop: Header=BB0_673 Depth=5
	movq	13384(%rsp), %rax
	subq	%r9, %rax
	cmpq	%rax, %rbp
	cmovgel	%eax, %ebp
	movq	13336(%rsp), %rcx
	movslq	%r15d, %r8
	movq	13472(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	leaq	6856(%rsp), %rsi
	movq	%r13, %rdx
	callq	*72(%r14)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_671
# BB#677:                               # %if.end.2085
                                        #   in Loop: Header=BB0_673 Depth=5
	movslq	%r12d, %r9
	addq	13344(%rsp), %r9
	movq	%r9, 13344(%rsp)
	leal	(%r15,%r12), %r15d
	subl	%r12d, %ebx
	jne	.LBB0_673
	jmp	.LBB0_678
.LBB0_670:                              # %if.then.2037
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13336(%rsp), %rcx
	movslq	%r15d, %r8
	movq	13472(%rsp), %rdx
	movq	%rdx, 8(%rsp)
	movl	$0, (%rsp)
	movq	%r13, %rdi
	leaq	6856(%rsp), %rsi
	movq	%r13, %rdx
	movq	%rax, %r9
	callq	*72(%r14)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_671
.LBB0_678:                              # %while.end
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	(%r13), %rax
	movq	13336(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	leaq	6856(%rsp), %r13
	movq	%r13, %rsi
	callq	*32(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_671
.LBB0_679:                              #   in Loop: Header=BB0_22 Depth=4
	movq	%r12, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_539
.LBB0_646:                              # %if.then.1928
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	544(%rsp), %rdi
	movq	%rax, %rsi
	callq	enc_u_get_uint
	movq	%rax, 13344(%rsp)
	movl	544(%rsp), %ebx
.LBB0_648:                              # %do.end.1935
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13472(%rsp), %rbp
	movq	4424(%rsp), %rax
	testq	%rax, %rax
	leaq	6856(%rsp), %r13
	je	.LBB0_650
# BB#649:                               # %if.then.i.1389
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.23, %edx
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	*24(%rbp)
	movq	$0, 4424(%rsp)
	xorl	%eax, %eax
.LBB0_650:                              # %if.end.i.1391
                                        #   in Loop: Header=BB0_22 Depth=4
	cmpl	$4065, %ebx             # imm = 0xFE1
	jb	.LBB0_653
# BB#651:                               # %if.then.4.i.1395
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.23, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	*64(%rbp)
	movq	%rax, 4424(%rsp)
	testq	%rax, %rax
	je	.LBB0_652
.LBB0_653:                              # %read_alloc_ht_buff.exit1401.thread
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	%ebx, 4408(%rsp)
	movl	$0, 4412(%rsp)
	movq	%rax, 4416(%rsp)
	jmp	.LBB0_908
.LBB0_366:                              # %if.then.i.998
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L__func__.read_set_color_space, %edi
	movl	$.L.str.6, %esi
	movl	$2709, %edx             # imm = 0xA95
	movl	$1, %ecx
	movl	$-1, %r8d
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %r12d
	movq	13368(%rsp), %rbx
	jmp	.LBB0_393
.LBB0_994:                              # %cleanup.114.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L__func__.read_set_color_space, %esi
	callq	rc_decrement_cs
	movl	$-25, %r12d
	leaq	6856(%rsp), %r13
	jmp	.LBB0_392
.LBB0_384:                              # %cleanup.i.1021
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	1600(%rsp), %rdi
	movl	$.L__func__.read_set_color_space, %esi
	callq	rc_decrement_cs
	leaq	6856(%rsp), %r13
	jmp	.LBB0_392
.LBB0_527:                              # %if.end.i.1250.read_put_params.exit_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	13368(%rsp), %r15
	jmp	.LBB0_538
.LBB0_529:                              # %if.then.7.i
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	(%rsi,%r12), %r15
	movq	%r15, 1600(%rsp)
	xorl	%r13d, %r13d
	movq	13472(%rsp), %rsi
.LBB0_533:                              # %if.end.24.i
                                        #   in Loop: Header=BB0_22 Depth=4
	leaq	544(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_c_param_list_write
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_param_list_unserialize
	cmpl	512(%rsp), %eax
	movl	$-1, %ebx
	cmovel	%eax, %ebx
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_535
# BB#534:                               # %if.then.34.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, %rdi
	callq	gs_c_param_list_read
	leaq	6856(%rsp), %rdi
	movq	416(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	callq	gs_imager_putdeviceparams
	movl	%eax, %ebx
.LBB0_535:                              # %if.end.36.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbp, %rdi
	callq	gs_c_param_list_release
	testl	%r13d, %r13d
	je	.LBB0_537
# BB#536:                               # %if.then.37.i
                                        #   in Loop: Header=BB0_22 Depth=4
	movl	$.L.str.28, %edx
	movq	13472(%rsp), %rdi
	movq	%r12, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_537
.LBB0_531:                              #   in Loop: Header=BB0_22 Depth=4
	movl	$-25, %ebx
	movq	%r12, %r15
.LBB0_537:                              # %out.i.1268
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%r15, 13368(%rsp)
.LBB0_538:                              # %read_put_params.exit
                                        #   in Loop: Header=BB0_22 Depth=4
	movq	%rbx, 408(%rsp)         # 8-byte Spill
	movq	%r15, 13344(%rsp)
	testl	%ebx, %ebx
	leaq	6856(%rsp), %r13
	jg	.LBB0_539
# BB#540:                               # %if.end.1684
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpl	$2, 380(%rsp)           # 4-byte Folded Reload
	movl	$223, %r12d
	je	.LBB0_950
# BB#541:                               # %if.end.1684
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	408(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	296(%rsp), %rax         # 8-byte Reload
	jns	.LBB0_946
	jmp	.LBB0_950
.LBB0_911:                              # %sw.bb.2969
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpw	$0, 13268(%rsp)
	je	.LBB0_912
# BB#913:                               # %if.end.2987
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$0, 1756(%rsp)
	movq	11536(%rsp), %rax
	movq	%rax, 1736(%rsp)
	movq	%rax, 1728(%rsp)
	xorl	%esi, %esi
	movl	13264(%rsp), %r8d
	leaq	1728(%rsp), %r9
	xorl	%r12d, %r12d
.LBB0_914:                              # %do_rop
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	368(%rsp), %rbp         # 8-byte Reload
.LBB0_915:                              # %do_rop
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	testl	%ebp, %ebp
	je	.LBB0_916
# BB#917:                               # %if.else.3027
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	11920(%rsp), %rax
	andq	11928(%rsp), %rax
	xorl	%edx, %edx
	cmpq	$-1, %rax
	leaq	11920(%rsp), %rax
	movq	%rax, %r11
	cmoveq	%rdx, %r11
	movq	13248(%rsp), %rdx
	movl	%edx, %r14d
	subl	%r15d, %r14d
	shrq	$32, %rdx
	subl	308(%rsp), %edx         # 4-byte Folded Reload
	movq	%rbp, %r10
	movq	13256(%rsp), %rbp
	movl	%ebp, %ebx
	subl	%r12d, %ebx
	shrq	$32, %rbp
	movl	%r10d, 72(%rsp)
	movl	%r8d, 64(%rsp)
	movl	284(%rsp), %eax         # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	288(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r11, 8(%rsp)
	leaq	11472(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	callq	*1696(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	$0, 292(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_945
.LBB0_909:                              # %cond.false.2962
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r13, %rsi
	leaq	6200(%rsp), %rdx
	callq	*%rcx
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_945
.LBB0_912:                              # %if.then.2972
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movq	13248(%rsp), %rdx
	movl	%edx, %esi
	subl	%r15d, %esi
	shrq	$32, %rdx
	subl	308(%rsp), %edx         # 4-byte Folded Reload
	movq	13256(%rsp), %rcx
	movq	%rcx, %r8
	shrq	$32, %r8
	movq	11536(%rsp), %r9
	callq	*1200(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_945
.LBB0_916:                              # %if.then.2996
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	11920(%rsp), %rdx
	andq	11928(%rsp), %rdx
	xorl	%eax, %eax
	cmpq	$-1, %rdx
	leaq	11920(%rsp), %rdx
	movq	%rdx, %r10
	cmoveq	%rax, %r10
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movq	13248(%rsp), %rbp
	movl	%ebp, %r11d
	subl	%r15d, %r11d
	shrq	$32, %rbp
	subl	308(%rsp), %ebp         # 4-byte Folded Reload
	movq	13256(%rsp), %rbx
	movl	%ebx, %eax
	subl	%r12d, %eax
	shrq	$32, %rbx
	movl	%r8d, 64(%rsp)
	movl	284(%rsp), %edx         # 4-byte Reload
	movl	%edx, 56(%rsp)
	movl	288(%rsp), %edx         # 4-byte Reload
	movl	%edx, 48(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r10, 8(%rsp)
	leaq	11472(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	callq	*1424(%rdi)
.LBB0_936:                              # %cleanup.3226.thread
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$0, 292(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_945
.LBB0_202:                              # %sw.bb.482
                                        #   in Loop: Header=BB0_21 Depth=3
	addq	$8, 296(%rsp)           # 8-byte Folded Spill
.LBB0_203:                              # %set_color
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%ebx, %ecx
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	andl	$15, %ecx
	movq	$-1, %rax
	cmpl	$15, %ecx
	je	.LBB0_215
# BB#204:                               # %if.else.490
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	13336(%rsp), %rax
	movzwl	108(%rax), %eax
	cmpl	$64, %eax
	movw	$64, %dx
	cmovbw	%ax, %dx
	movzwl	%dx, %edx
	addl	$7, %edx
	shrl	$3, %edx
	subl	%ecx, %edx
	xorl	%eax, %eax
	decl	%edx
	cmpl	$7, %edx
	ja	.LBB0_214
# BB#205:                               # %if.else.490
                                        #   in Loop: Header=BB0_21 Depth=3
	jmpq	*.LJTI0_8(,%rdx,8)
.LBB0_206:                              # %sw.bb.507
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	2(%r15), %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	1(%r15), %eax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_207:                              # %sw.bb.510
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_208:                              # %sw.bb.515
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_209:                              # %sw.bb.520
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_210:                              # %sw.bb.525
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_211:                              # %sw.bb.530
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_212:                              # %sw.bb.535
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	movq	%r15, %rdx
	addq	$2, %rdx
	movq	%rdx, 13344(%rsp)
	movzbl	(%r14), %esi
	orq	%rsi, %rax
	movq	%r14, %r15
	movq	%rdx, %r14
.LBB0_213:                              # %sw.bb.540
                                        #   in Loop: Header=BB0_21 Depth=3
	shlq	$8, %rax
	addq	$2, %r15
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %edx
	orq	%rdx, %rax
.LBB0_214:                              # %sw.epilog.546
                                        #   in Loop: Header=BB0_21 Depth=3
	shll	$3, %ecx
	shlq	%cl, %rax
.LBB0_215:                              # %do.end.553
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	296(%rsp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	leaq	11528(%rsp), %rax
	jmp	.LBB0_946
.LBB0_308:                              # %sw.bb.918
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	andl	$15, %eax
	movl	11888(%rsp), %ecx
	leal	-8(%rax,%rcx), %eax
	jmp	.LBB0_310
.LBB0_309:                              # %sw.bb.922
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%ebx, %ecx
	andl	$15, %ecx
	shll	$8, %ecx
	leaq	2(%r15), %rax
	movq	%rax, 13344(%rsp)
	movzbl	1(%r15), %eax
	orl	%ecx, %eax
.LBB0_310:                              # %sti
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	308(%rsp), %ebp         # 4-byte Reload
	movl	%eax, 11888(%rsp)
	movl	%eax, %eax
	movq	416(%rsp), %r12         # 8-byte Reload
	movq	1824(%r12), %rcx
	movq	1872(%r12), %rdx
	movq	(%rdx,%rax,8), %rax
	leaq	(%rcx,%rax), %rsi
	movq	%rsi, 11520(%rsp)
	leaq	40(%rcx,%rax), %rax
	movq	%rax, 11472(%rsp)
	movq	400(%rsp), %r15         # 8-byte Reload
.LBB0_311:                              # %stp
                                        #   in Loop: Header=BB0_21 Depth=3
	movzwl	8(%rsi), %eax
	movl	%eax, 11484(%rsp)
	movzwl	10(%rsi), %ecx
	movl	%ecx, 11488(%rsp)
	movzwl	14(%rsi), %edx
	movl	%edx, 11480(%rsp)
	movzbl	24(%rsi), %edi
	xorl	%edx, %edx
	divw	%di
	movw	%ax, 11504(%rsp)
	movzbl	25(%rsi), %edi
	xorl	%edx, %edx
	movw	%cx, %ax
	divw	%di
	movw	%ax, 11506(%rsp)
	movw	26(%rsi), %ax
	movw	%ax, 11508(%rsp)
	movw	12(%rsi), %ax
	movw	%ax, 11510(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 11496(%rsp)
	movzbl	32(%rsi), %eax
	movl	%eax, 11512(%rsp)
.LBB0_312:                              # %set_phase
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r12, 416(%rsp)         # 8-byte Spill
	movl	11484(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB0_314
# BB#313:                               # %if.then.974
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	11912(%rsp), %eax
	addl	%r15d, %eax
	cltd
	idivl	%ecx
	movl	%edx, 288(%rsp)         # 4-byte Spill
.LBB0_314:                              # %if.end.981
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	11488(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB0_318
# BB#315:                               # %if.then.999
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpw	$0, 11510(%rsp)
	je	.LBB0_317
# BB#316:                               # %if.else.1007
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%ebp, %r14d
	movzwl	11506(%rsp), %ebp
	movq	11504(%rsp), %rax
	movzwl	%ax, %ebx
	shrq	$32, %rax
	movzwl	%ax, %edi
	movl	%ebx, %esi
	callq	igcd
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	idivl	%ecx
	movl	%eax, %ecx
	imull	%ebp, %ecx
	movl	%r14d, %ebp
.LBB0_317:                              # %if.end.1019
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	11916(%rsp), %eax
	addl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, 284(%rsp)         # 4-byte Spill
.LBB0_318:                              # %if.end.1025
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%ebp, 308(%rsp)         # 4-byte Spill
	movq	11912(%rsp), %rdx
	leal	(%rdx,%r15), %esi
	movq	%r15, 400(%rsp)         # 8-byte Spill
	negl	%esi
	shrq	$32, %rdx
	addl	%ebp, %edx
	negl	%edx
	movl	$-1, %ecx
	movq	%r13, %rdi
	callq	gx_imager_setscreenphase
	jmp	.LBB0_945
.LBB0_918:                              # %sw.bb.3059
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	13256(%rsp), %rcx
	testl	%ecx, %ecx
	jne	.LBB0_923
# BB#919:                               # %sw.bb.3059
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	1(%rax), %rax
	cmpq	%rax, %rcx
	jae	.LBB0_923
# BB#920:                               # %land.lhs.true.3069
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	13248(%rsp), %rcx
	testl	%ecx, %ecx
	jne	.LBB0_923
# BB#921:                               # %land.lhs.true.3069
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpq	%rax, %rcx
	jae	.LBB0_923
# BB#922:                               # %if.then.3079
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movq	%r13, %rsi
	leaq	6200(%rsp), %rdx
	callq	*1632(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_945
.LBB0_923:                              # %sw.bb.3084
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movq	13248(%rsp), %rcx
	movl	%ecx, %edx
	subl	%r15d, %edx
	shrq	$32, %rcx
	subl	308(%rsp), %ecx         # 4-byte Folded Reload
	movq	13256(%rsp), %r8
	movq	%r8, %r9
	shrq	$32, %r9
	movq	11920(%rsp), %rax
	movq	11928(%rsp), %rsi
	movl	284(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, 24(%rsp)
	movl	288(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	11472(%rsp), %rsi
	callq	*1416(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_945:                              # %cleanup.3226.thread.loopexit
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	296(%rsp), %rax         # 8-byte Reload
.LBB0_946:                              # %cleanup.3226.thread
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	408(%rsp), %r12         # 8-byte Reload
	testl	%r12d, %r12d
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movq	440(%rsp), %rbx         # 8-byte Reload
	jns	.LBB0_21
	jmp	.LBB0_947
.LBB0_924:                              # %sw.bb.3103
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpw	$0, 13268(%rsp)
	je	.LBB0_926
# BB#925:                               # %if.then.3106
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	13264(%rsp), %r8d
	leaq	11528(%rsp), %r9
	movq	368(%rsp), %rbp         # 8-byte Reload
	movl	292(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB0_915
.LBB0_933:                              # %sw.bb.3167
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	13272(%rsp), %rax
	testl	%eax, %eax
	je	.LBB0_939
# BB#934:                               # %if.then.3170
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leaq	1(%rcx), %rcx
	cmpq	%rcx, %rax
	movq	13336(%rsp), %rdi
	movl	292(%rsp), %edx         # 4-byte Reload
	jae	.LBB0_935
# BB#938:                               # %if.else.3187
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movq	13256(%rsp), %rbx
	movl	%ebx, %ebp
	subl	%edx, %ebp
	shrq	$32, %rbx
	movq	11536(%rsp), %r8
	movl	%r10d, 32(%rsp)
	movq	%r8, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	callq	*1312(%rdi)
	jmp	.LBB0_936
.LBB0_926:                              # %if.end.3110
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpq	$0, 360(%rsp)           # 8-byte Folded Reload
	movq	368(%rsp), %r8          # 8-byte Reload
	movl	292(%rsp), %edx         # 4-byte Reload
	jne	.LBB0_928
# BB#927:                               # %if.end.3110
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%ebx, %eax
	andl	$8, %eax
	jne	.LBB0_928
# BB#929:                               # %if.else.3130
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	testl	%r8d, %r8d
	je	.LBB0_930
# BB#931:                               # %if.else.3151
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movq	13256(%rsp), %rbx
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%ebx, %ebp
	subl	%edx, %ebp
	shrq	$32, %rbx
	movl	%r8d, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	callq	*1672(%rdi)
	jmp	.LBB0_932
.LBB0_939:                              # %if.else.3204
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpw	$0, 13268(%rsp)
	movl	292(%rsp), %r12d        # 4-byte Reload
	je	.LBB0_941
# BB#940:                               # %if.then.3207
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	13264(%rsp), %r8d
	xorl	%r9d, %r9d
	jmp	.LBB0_914
.LBB0_935:                              # %if.then.3173
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movq	13256(%rsp), %r8
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%r8d, %ebx
	subl	%edx, %ebx
	shrq	$32, %r8
	movl	%r10d, 32(%rsp)
	leaq	6200(%rsp), %rbp
	movq	%rbp, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	callq	*1712(%rdi)
	jmp	.LBB0_936
.LBB0_928:                              # %if.then.3116
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movq	13256(%rsp), %r10
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%r10d, %r8d
	subl	%edx, %r8d
	shrq	$32, %r10
	movl	7068(%rsp), %ebp
	movq	360(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, 48(%rsp)
	movl	%ebp, 40(%rsp)
	leaq	6200(%rsp), %rbp
	movq	%rbp, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r8d, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 32(%rsp)
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	callq	gx_image_fill_masked
	jmp	.LBB0_936
.LBB0_941:                              # %if.end.3209
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rdi
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movq	13256(%rsp), %rdx
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%edx, %ebp
	subl	%r12d, %ebp
	shrq	$32, %rdx
	movl	%edx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	movl	%r12d, %edx
	callq	*1224(%rdi)
	jmp	.LBB0_936
.LBB0_321:                              # %sw.bb.1050
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$4, %edx
	leaq	7156(%rsp), %rdi
	movq	%r14, %rsi
	callq	memcpy
	leaq	5(%r15), %rsi
	movq	%rsi, 13344(%rsp)
	movl	$4, %edx
	leaq	7160(%rsp), %rdi
	callq	memcpy
	addq	$9, %r15
	movq	%r15, 13344(%rsp)
	jmp	.LBB0_945
.LBB0_322:                              # %sw.bb.1059
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	544(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmd_read_matrix
	movq	%rax, 13344(%rsp)
	movss	560(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	216(%rsp), %xmm0        # 4-byte Folded Reload
	movss	%xmm0, 560(%rsp)
	movss	564(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	212(%rsp), %xmm0        # 4-byte Folded Reload
	movss	%xmm0, 564(%rsp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gs_imager_setmatrix
	jmp	.LBB0_945
.LBB0_348:                              # %sw.bb.1077
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	2(%r15), %rsi
	movq	%rsi, 13344(%rsp)
	movzbl	1(%r15), %ebx
	movl	%ebx, %r12d
	andl	$63, %r12d
	movl	$4, %edx
	leaq	544(%rsp), %rdi
	callq	memcpy
	leaq	6(%r15), %rsi
	movq	%rsi, 13344(%rsp)
	movl	$4, %edx
	leaq	1600(%rsp), %rdi
	callq	memcpy
	addq	$10, %r15
	movq	%r15, 13344(%rsp)
	leaq	(,%r12,4), %r14
	leaq	6144(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movss	1600(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	leaq	6944(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	gx_set_dash
	movl	%ebx, %eax
	shrl	$7, %eax
	movl	%eax, 6960(%rsp)
	movss	544(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	shrl	$6, %ebx
	andl	$1, %ebx
	leaq	6880(%rsp), %rdi
	movl	%ebx, %esi
	callq	gx_set_dot_length
	addq	%r14, 13344(%rsp)
	leaq	6856(%rsp), %r13
	jmp	.LBB0_945
.LBB0_349:                              # %sw.bb.1107
                                        #   in Loop: Header=BB0_21 Depth=3
	xorl	%eax, %eax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	cmpl	$0, 260(%rsp)           # 4-byte Folded Reload
	movl	$0, %ecx
	leaq	11000(%rsp), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	jmp	.LBB0_945
.LBB0_352:                              # %do.end.1139
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	9152(%rsp), %rdi
	leaq	11000(%rsp), %rbx
	movq	%rbx, %rsi
	callq	gx_cpath_accum_end
	movq	13408(%rsp), %rax
	movq	%rax, 13336(%rsp)
	movq	%rbx, %rdi
	leaq	544(%rsp), %rsi
	callq	gx_cpath_inner_box
	movl	544(%rsp), %eax
	xorl	%ecx, %ecx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	cmpl	9136(%rsp), %eax
	movl	$0, %eax
	jg	.LBB0_358
# BB#353:                               # %land.lhs.true.1149
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	552(%rsp), %eax
	cmpl	9144(%rsp), %eax
	jge	.LBB0_355
# BB#354:                               #   in Loop: Header=BB0_21 Depth=3
	xorl	%eax, %eax
	jmp	.LBB0_358
.LBB0_80:                               # %do.body.143
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	1(%r15), %eax
	addq	$2, %r15
	testb	%al, %al
	js	.LBB0_82
# BB#81:                                # %if.then.147
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %eax
	movl	%eax, 11912(%rsp)
	movq	416(%rsp), %r12         # 8-byte Reload
	movq	440(%rsp), %rbx         # 8-byte Reload
	movl	308(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_85
.LBB0_90:                               # %sw.bb.181
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	11464(%rsp), %rax
	movq	%rax, 1792(%rsp)
	movups	11432(%rsp), %xmm0
	movups	11448(%rsp), %xmm1
	movaps	%xmm1, 1776(%rsp)
	movaps	%xmm0, 1760(%rsp)
	movl	1764(%rsp), %ebp
	movl	1768(%rsp), %eax
	movzwl	1784(%rsp), %edx
	movl	%eax, %esi
	shrl	$16, %esi
	movl	%edx, %edi
	shrl	$8, %edi
	xorl	%r13d, %r13d
	movb	1792(%rsp), %r8b
	jmp	.LBB0_91
.LBB0_130:                              # %sw.bb.189
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	1(%r15), %r13d
	leaq	2(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	1(%r15), %ebp
	shrl	$2, %ebp
	movl	%ebp, 1764(%rsp)
	movzbl	2(%r15), %eax
	addq	$3, %r15
	testb	%al, %al
	js	.LBB0_132
# BB#131:                               # %if.then.199
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, 13344(%rsp)
	movzbl	(%rcx), %eax
	movw	%ax, 1768(%rsp)
	jmp	.LBB0_135
.LBB0_944:                              # %sw.bb.340
                                        #   in Loop: Header=BB0_21 Depth=3
	movw	$1, 13268(%rsp)
	movl	13264(%rsp), %eax
	movl	%eax, 7068(%rsp)
	jmp	.LBB0_945
.LBB0_187:                              # %sw.bb.347
                                        #   in Loop: Header=BB0_21 Depth=3
	movw	$0, 13268(%rsp)
	movl	$252, 7068(%rsp)
	jmp	.LBB0_945
.LBB0_188:                              # %sw.bb.358
                                        #   in Loop: Header=BB0_21 Depth=3
	addq	$8, 296(%rsp)           # 8-byte Folded Spill
.LBB0_189:                              # %delta2_c
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	13336(%rsp), %rax
	movzwl	108(%rax), %eax
	cmpl	$64, %eax
	movl	$64, %ecx
	cmoval	%ecx, %eax
	addl	$7, %eax
	shrl	$3, %eax
	xorl	%edx, %edx
	leal	-2(%rax), %ecx
	cmpl	$6, %ecx
	ja	.LBB0_199
# BB#190:                               # %delta2_c
                                        #   in Loop: Header=BB0_21 Depth=3
	jmpq	*.LJTI0_10(,%rcx,8)
.LBB0_195:                              # %sw.bb.418
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	2(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	1(%r15), %esi
	movl	%esi, %edx
	shll	$4, %edx
	orl	%esi, %edx
	andl	$3855, %edx             # imm = 0xF0F
	shlq	$16, %rdx
	movq	%r14, %r15
	movq	%rcx, %r14
.LBB0_196:                              # %sw.bb.428
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, %rcx
	addq	$2, %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	(%r14), %esi
	movl	%esi, %edi
	shll	$4, %edi
	orl	%esi, %edi
	andl	$3855, %edi             # imm = 0xF0F
	orq	%rdi, %rdx
	movq	%r14, %r15
	movq	%rcx, %r14
.LBB0_197:                              # %sw.bb.438
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	2(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	(%r14), %esi
	leal	-24(,%rax,8), %ecx
	leal	(,%rsi,8), %edi
	andl	$1792, %edi             # imm = 0x700
	andl	$31, %esi
	orl	%edi, %esi
	shlq	%cl, %rsi
	orq	%rdx, %rsi
	leaq	3(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	2(%r15), %edx
	leal	(,%rdx,4), %ecx
	andl	$992, %ecx              # imm = 0x3E0
	andl	$7, %edx
	orl	%ecx, %edx
	leal	-13(,%rax,8), %ecx
	shlq	%cl, %rdx
	jmp	.LBB0_198
.LBB0_200:                              # %sw.bb.470
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$0, 13272(%rsp)
	jmp	.LBB0_945
.LBB0_201:                              # %sw.bb.474
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$1, 13272(%rsp)
	jmp	.LBB0_945
.LBB0_930:                              # %if.then.3133
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	1756(%rsp), %ecx
	movq	13248(%rsp), %rax
	movl	%eax, %r9d
	subl	%r15d, %r9d
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	movq	13256(%rsp), %rbp
	movl	%ebp, %ebx
	subl	%edx, %ebx
	shrq	$32, %rbp
	movq	11528(%rsp), %r8
	movq	11536(%rsp), %r10
	movq	%r10, 32(%rsp)
	movq	%r8, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	callq	*1216(%rdi)
.LBB0_932:                              # %cleanup.3226.thread
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	$0, 292(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	jmp	.LBB0_945
.LBB0_144:                              # %do.body.251
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	2(%r15), %eax
	addq	$3, %r15
	testb	%al, %al
	js	.LBB0_146
# BB#145:                               # %if.then.255
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, 13344(%rsp)
	movzbl	(%rcx), %eax
	movl	%eax, 13264(%rsp)
	jmp	.LBB0_149
.LBB0_151:                              # %sw.bb.279
                                        #   in Loop: Header=BB0_21 Depth=3
	xorl	%eax, %eax
	testb	$32, %dil
	je	.LBB0_157
# BB#152:                               # %do.body.283
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	2(%r15), %eax
	addq	$3, %r15
	testb	%al, %al
	js	.LBB0_154
# BB#153:                               # %if.then.287
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, 13344(%rsp)
	movzbl	(%rcx), %eax
	jmp	.LBB0_157
.LBB0_82:                               # %if.else.152
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %eax
	movl	$7, %ecx
	movq	440(%rsp), %rbx         # 8-byte Reload
	movl	308(%rsp), %ebp         # 4-byte Reload
.LBB0_83:                               # %for.cond.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r15), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%r15
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_83
# BB#84:                                # %cmd_get_w.exit
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%eax, 11912(%rsp)
	movq	%r15, 13344(%rsp)
	movq	416(%rsp), %r12         # 8-byte Reload
.LBB0_85:                               # %do.body.160
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	(%r15), %edx
	leaq	1(%r15), %rax
	testb	%dl, %dl
	js	.LBB0_87
# BB#86:                                # %if.then.164
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 13344(%rsp)
	movzbl	(%r15), %eax
	movl	%eax, 11916(%rsp)
	movq	400(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_312
.LBB0_132:                              # %if.else.203
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %eax
	movl	$7, %ecx
.LBB0_133:                              # %for.cond.i.736
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r15), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%r15
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_133
# BB#134:                               # %cmd_get_w.exit738
                                        #   in Loop: Header=BB0_21 Depth=3
	movw	%ax, 1768(%rsp)
	movq	%r15, 13344(%rsp)
.LBB0_135:                              # %do.body.211
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	(%r15), %esi
	leaq	1(%r15), %r14
	testb	%sil, %sil
	js	.LBB0_137
# BB#136:                               # %if.then.215
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r14, 13344(%rsp)
	movzbl	(%r15), %esi
	movw	%si, 1770(%rsp)
	jmp	.LBB0_140
.LBB0_87:                               # %if.else.169
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %edx
	movl	$7, %ecx
	movq	400(%rsp), %r15         # 8-byte Reload
.LBB0_88:                               # %for.cond.i.681
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rax), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rax
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_88
# BB#89:                                # %cmd_get_w.exit683
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%edx, 11916(%rsp)
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_312
.LBB0_137:                              # %if.else.219
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %esi
	movl	$7, %ecx
.LBB0_138:                              # %for.cond.i.752
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r14), %edx
	movl	%edx, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %esi
	incq	%r14
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_138
# BB#139:                               # %cmd_get_w.exit754
                                        #   in Loop: Header=BB0_21 Depth=3
	movw	%si, 1770(%rsp)
	movq	%r14, 13344(%rsp)
.LBB0_140:                              # %do.end.229
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$3, %r13d
	movzwl	%ax, %ecx
	imull	%ebp, %ecx
	addl	$63, %ecx
	shrl	$3, %ecx
	andl	$65528, %ecx            # imm = 0xFFF8
	movw	%cx, 1774(%rsp)
	movb	$1, 1785(%rsp)
	movb	$1, 1784(%rsp)
	movw	$0, 1786(%rsp)
	movw	$0, 1772(%rsp)
	movb	$1, 1792(%rsp)
	movl	$1, %edi
	movb	$1, %r8b
	movl	$1, %edx
.LBB0_91:                               # %stb
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r14, 13368(%rsp)
	movzwl	%ax, %ecx
	movzbl	%dl, %ebx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%ebx
	movl	%eax, %ebx
	movzwl	%si, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, 408(%rsp)         # 4-byte Spill
	movzbl	%r8b, %esi
	cmpl	$1, %esi
	jne	.LBB0_93
# BB#92:                                #   in Loop: Header=BB0_21 Depth=3
	movl	$1, %esi
	jmp	.LBB0_94
.LBB0_93:                               # %if.then.i
                                        #   in Loop: Header=BB0_21 Depth=3
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%esi
	movl	%eax, %ebp
.LBB0_94:                               # %if.end.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	416(%rsp), %r12         # 8-byte Reload
	movl	%ebp, 352(%rsp)         # 4-byte Spill
	movl	%ebp, %edi
	imull	%ebx, %edi
	movl	%edi, 336(%rsp)         # 4-byte Spill
	imull	408(%rsp), %esi         # 4-byte Folded Reload
	cmpl	%ecx, %ebx
	movl	%ebx, 384(%rsp)         # 4-byte Spill
	sbbl	%edx, %edx
	andl	$512, %edx              # imm = 0x200
	orl	%r13d, %edx
	orl	$256, %edx              # imm = 0x100
	leaq	512(%rsp), %rcx
	leaq	1584(%rsp), %r8
	callq	clist_bitmap_bytes
	movl	%eax, %r15d
	movzbl	(%r14), %eax
	testb	%al, %al
	js	.LBB0_96
# BB#95:                                # %if.then.22.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r14, %rdx
	incq	%rdx
	jmp	.LBB0_98
.LBB0_96:                               # %if.else.i.701
                                        #   in Loop: Header=BB0_21 Depth=3
	incq	%r14
	andl	$127, %eax
	movl	$7, %ecx
	movq	%r14, %rdx
.LBB0_97:                               # %for.cond.i.i.712
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rdx), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %eax
	addl	$7, %ecx
	testb	%sil, %sil
	movq	%rdx, %r14
	leaq	1(%rdx), %rdx
	js	.LBB0_97
.LBB0_98:                               # %do.body.27.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	(%rdx), %edx
	addq	$2, %r14
	testb	%dl, %dl
	jns	.LBB0_102
# BB#99:                                # %if.else.34.i
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %edx
	movl	$7, %ecx
.LBB0_100:                              # %for.cond.i.111.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r14), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%r14
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_100
# BB#101:                               # %cmd_get_w.exit113.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movslq	%edx, %rdx
.LBB0_102:                              # %do.end.42.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%eax, 11888(%rsp)
	movl	%eax, %eax
	movq	1872(%r12), %rcx
	movq	%rdx, (%rcx,%rax,8)
	movq	1824(%r12), %rax
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, 11520(%rsp)
	movq	1792(%rsp), %rcx
	movq	%rcx, 32(%rax,%rdx)
	movaps	1760(%rsp), %xmm0
	movdqa	1776(%rsp), %xmm1
	movdqu	%xmm1, 16(%rax,%rdx)
	movups	%xmm0, (%rax,%rdx)
	leaq	40(%rax,%rdx), %rbp
	movq	%rbp, 11472(%rsp)
	testl	%r13d, %r13d
	jne	.LBB0_103
# BB#118:                               # %if.else.104.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r12, 416(%rsp)         # 8-byte Spill
	movzbl	1792(%rsp), %r8d
	imull	408(%rsp), %r8d         # 4-byte Folded Reload
	cmpl	$2, %r8d
	jb	.LBB0_121
# BB#119:                               # %land.lhs.true.110.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	512(%rsp), %ecx
	movzwl	1774(%rsp), %r9d
	cmpl	%r9d, %ecx
	jne	.LBB0_120
.LBB0_121:                              # %if.else.122.i.719
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbp, %rcx
	movq	13384(%rsp), %rbx
	subq	%r14, %rbx
	movl	%r15d, %ebp
	cmpq	%rbp, %rbx
	leaq	6856(%rsp), %r13
	jge	.LBB0_122
# BB#123:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_21 Depth=3
	subl	%ebx, %r15d
	movl	%r15d, 544(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%rcx, %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	leaq	(%rbx,%rbp), %rsi
	movl	%r15d, %edx
	leaq	544(%rsp), %rcx
	callq	sgets
	movq	13384(%rsp), %r14
	jmp	.LBB0_124
.LBB0_103:                              # %do.end.42.i
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpl	$3, %r13d
	jne	.LBB0_110
# BB#104:                               # %if.then.50.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r12, 416(%rsp)         # 8-byte Spill
	movq	13384(%rsp), %rbx
	subq	%r14, %rbx
	testq	%rbx, %rbx
	leaq	6856(%rsp), %r13
	jle	.LBB0_106
# BB#105:                               # %if.then.i.121.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	memmove
	incq	%r14
	jmp	.LBB0_107
.LBB0_110:                              # %if.then.64.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r12, 416(%rsp)         # 8-byte Spill
	movq	13384(%rsp), %rax
	cmpl	$0, 13400(%rsp)
	jne	.LBB0_113
# BB#111:                               # %if.then.64.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, %rbx
	subq	%r14, %rbx
	cmpl	%r15d, %ebx
	jae	.LBB0_113
# BB#112:                               # %if.then.70.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbp, %r12
	movl	$4096, %ebp             # imm = 0x1000
	subl	%ebx, %ebp
	movl	%ebp, 544(%rsp)
	movq	13352(%rsp), %rdi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	movq	13352(%rsp), %rsi
	addq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r12, %rbp
	leaq	544(%rsp), %rcx
	callq	sgets
	movl	%eax, 13400(%rsp)
	movq	13352(%rsp), %r14
	leaq	(%rbx,%r14), %rcx
	movl	544(%rsp), %eax
	addq	%rcx, %rax
	movq	%rax, 13384(%rsp)
	movl	13360(%rsp), %ecx
	leaq	-53(%rcx,%r14), %rcx
	cmpq	%rax, %rcx
	cmovaq	%rax, %rcx
	movq	%rcx, 13376(%rsp)
.LBB0_113:                              # %if.end.85.i
                                        #   in Loop: Header=BB0_21 Depth=3
	decq	%r14
	movq	%r14, 1600(%rsp)
	decq	%rax
	movq	%rax, 1608(%rsp)
	leaq	-1(%rbp), %rax
	movq	%rax, 472(%rsp)
	movl	%r15d, %eax
	leaq	-1(%rbp,%rax), %rax
	movq	%rax, 480(%rsp)
	cmpl	$2, %r13d
	movq	13472(%rsp), %r14
	movq	%r14, %rcx
	jne	.LBB0_114
# BB#116:                               # %sw.bb.97.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	512(%rsp), %esi
	shll	$3, %esi
	leaq	544(%rsp), %rbx
	movq	%rbx, %rdi
	movl	408(%rsp), %edx         # 4-byte Reload
	callq	clist_cfd_init
	movl	$1, %ecx
	movq	%rbx, %rdi
	leaq	1600(%rsp), %rsi
	leaq	464(%rsp), %rdx
	callq	*s_CFD_template+16(%rip)
	movq	%rbx, %rdi
	callq	*s_CFD_template+32(%rip)
	movq	400(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_117
.LBB0_122:                              # %if.then.i.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rcx, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memmove
	addq	%rbp, %r14
	movq	%rbx, %rbp
.LBB0_124:                              # %if.end.126.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	400(%rsp), %r15         # 8-byte Reload
	jmp	.LBB0_125
.LBB0_355:                              # %land.lhs.true.1156
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	548(%rsp), %eax
	cmpl	9140(%rsp), %eax
	jle	.LBB0_357
# BB#356:                               #   in Loop: Header=BB0_21 Depth=3
	xorl	%eax, %eax
	jmp	.LBB0_358
.LBB0_120:                              # %if.then.115.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r14, (%rsp)
	leaq	13352(%rsp), %rdi
	movq	%rbp, %rsi
	movl	%r15d, %edx
	callq	cmd_read_short_bits
	movq	%rax, %r14
	movq	400(%rsp), %r15         # 8-byte Reload
	leaq	6856(%rsp), %r13
	jmp	.LBB0_125
.LBB0_114:                              # %if.end.85.i
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpl	$1, %r13d
	movq	400(%rsp), %r15         # 8-byte Reload
	jne	.LBB0_948
# BB#115:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	544(%rsp), %rbx
	movq	%rbx, %rdi
	callq	clist_rld_init
	movl	$1, %ecx
	movq	%rbx, %rdi
	leaq	1600(%rsp), %rsi
	leaq	464(%rsp), %rdx
	callq	*s_RLD_template+16(%rip)
.LBB0_117:                              # %cleanup.thread.i
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	6856(%rsp), %r13
	movq	1600(%rsp), %r14
	incq	%r14
	jmp	.LBB0_125
.LBB0_106:                              # %if.else.i.129.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rbp, %r15
	movl	$1, %ebp
	subl	%ebx, %ebp
	movl	%ebp, 544(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	13392(%rsp), %rdi
	leaq	(%rbx,%r15), %rsi
	movl	%ebp, %edx
	movq	%r15, %rbp
	leaq	544(%rsp), %rcx
	callq	sgets
	movq	13384(%rsp), %r14
.LBB0_107:                              # %cmd_read_data.exit131.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	400(%rsp), %r15         # 8-byte Reload
	cmpl	$0, 408(%rsp)           # 4-byte Folded Reload
	je	.LBB0_125
# BB#108:                               # %cmd_read_data.exit131.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	512(%rsp), %edx
	testl	%edx, %edx
	je	.LBB0_125
# BB#109:                               # %if.then.56.i
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	1(%rbp), %rdi
	movzbl	(%rbp), %esi
	imull	408(%rsp), %edx         # 4-byte Folded Reload
	decl	%edx
	callq	memset
.LBB0_125:                              # %if.end.126.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	352(%rsp), %r12d        # 4-byte Reload
	movq	1768(%rsp), %rcx
	movzwl	%cx, %r8d
	cmpl	384(%rsp), %r8d         # 4-byte Folded Reload
	jbe	.LBB0_127
# BB#126:                               # %if.then.131.i
                                        #   in Loop: Header=BB0_21 Depth=3
	shrq	$48, %rcx
	movzbl	1792(%rsp), %edx
	imull	408(%rsp), %edx         # 4-byte Folded Reload
	imull	%r12d, %r8d
	movq	%rbp, %rdi
	movl	336(%rsp), %esi         # 4-byte Reload
	movl	%ecx, %r9d
	callq	bits_replicate_horizontally
.LBB0_127:                              # %if.end.143.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movzwl	1770(%rsp), %eax
	movq	416(%rsp), %r12         # 8-byte Reload
	movzwl	%ax, %ecx
	cmpl	408(%rsp), %ecx         # 4-byte Folded Reload
	jbe	.LBB0_129
# BB#128:                               # %if.then.148.i
                                        #   in Loop: Header=BB0_21 Depth=3
	movzwl	1774(%rsp), %edx
	movq	%rbp, %rdi
	movl	408(%rsp), %esi         # 4-byte Reload
	callq	bits_replicate_vertically
.LBB0_129:                              # %read_set_bits.exit.stp_crit_edge
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r14, 13368(%rsp)
	movq	%r14, 13344(%rsp)
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	11520(%rsp), %rsi
	movq	440(%rsp), %rbx         # 8-byte Reload
	movl	308(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_311
.LBB0_146:                              # %if.else.258
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %eax
	movl	$7, %ecx
.LBB0_147:                              # %for.cond.i.768
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r15), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%r15
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_147
# BB#148:                               # %cmd_get_w.exit770
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%eax, 13264(%rsp)
	movq	%r15, 13344(%rsp)
.LBB0_149:                              # %do.end.265
                                        #   in Loop: Header=BB0_21 Depth=3
	shll	$6, %eax
	andl	$63, %edi
	orl	%eax, %edi
	movl	%edi, 13264(%rsp)
	cmpw	$0, 13268(%rsp)
	je	.LBB0_945
# BB#150:                               # %if.then.275
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%edi, 7068(%rsp)
	jmp	.LBB0_945
.LBB0_191:                              # %sw.bb.375
                                        #   in Loop: Header=BB0_21 Depth=3
	leaq	2(%r15), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	1(%r15), %esi
	movl	%esi, %edx
	shll	$4, %edx
	orl	%esi, %edx
	andl	$3855, %edx             # imm = 0xF0F
	shlq	$48, %rdx
	movq	%r14, %r15
	movq	%rcx, %r14
.LBB0_192:                              # %sw.bb.386
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, %rcx
	addq	$2, %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	(%r14), %esi
	movl	%esi, %edi
	shll	$4, %edi
	orl	%esi, %edi
	andl	$3855, %edi             # imm = 0xF0F
	shlq	$32, %rdi
	orq	%rdi, %rdx
	movq	%r14, %r15
	movq	%rcx, %r14
.LBB0_193:                              # %sw.bb.397
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, %rcx
	addq	$2, %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	(%r14), %esi
	movl	%esi, %edi
	shll	$4, %edi
	orl	%esi, %edi
	andl	$3855, %edi             # imm = 0xF0F
	shlq	$16, %rdi
	orq	%rdi, %rdx
	movq	%r14, %r15
	movq	%rcx, %r14
.LBB0_194:                              # %sw.bb.408
                                        #   in Loop: Header=BB0_21 Depth=3
	addq	$2, %r15
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %ecx
	movl	%ecx, %esi
	shll	$4, %esi
	orl	%ecx, %esi
	andl	$3855, %esi             # imm = 0xF0F
.LBB0_198:                              # %sw.epilog.463
                                        #   in Loop: Header=BB0_21 Depth=3
	orq	%rsi, %rdx
.LBB0_199:                              # %sw.epilog.463
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%eax, %eax
	subq	cmd_delta_offsets(,%rax,8), %rdx
	movq	296(%rsp), %rax         # 8-byte Reload
	addq	%rdx, (%rax)
	leaq	11528(%rsp), %rax
	jmp	.LBB0_946
.LBB0_542:                              # %do.end.1696
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%rax, 13368(%rsp)
	movl	$-1, %ecx
	leaq	6856(%rsp), %r13
	movq	%r13, %rdi
	movl	316(%rsp), %esi         # 4-byte Reload
	movl	312(%rsp), %edx         # 4-byte Reload
	callq	gx_imager_setscreenphase
	movq	13344(%rsp), %rax
	addq	$-2, %rax
	movq	%rax, 13344(%rsp)
	movl	308(%rsp), %ebp         # 4-byte Reload
	movq	416(%rsp), %rbx         # 8-byte Reload
	leaq	544(%rsp), %r15
	jmp	.LBB0_543
.LBB0_641:                              # %for.cond.1702.backedge
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	13344(%rsp), %rax
	movq	416(%rsp), %rbx         # 8-byte Reload
	movl	308(%rsp), %ebp         # 4-byte Reload
.LBB0_543:                              # %for.cond.1702
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_607 Depth 5
                                        #           Child Loop BB0_597 Depth 5
	cmpq	13376(%rsp), %rax
	jb	.LBB0_547
# BB#544:                               # %if.then.1706
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rbx, 416(%rsp)         # 8-byte Spill
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_545
# BB#546:                               # %if.then.1706.if.end.1712_crit_edge
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	13344(%rsp), %rax
	movq	416(%rsp), %rbx         # 8-byte Reload
.LBB0_547:                              # %if.end.1712
                                        #   in Loop: Header=BB0_543 Depth=4
	movzbl	(%rax), %ecx
	cmpl	$11, %ecx
	je	.LBB0_615
# BB#548:                               # %if.end.1712
                                        #   in Loop: Header=BB0_543 Depth=4
	testb	%cl, %cl
	jne	.LBB0_549
# BB#614:                               # %if.then.1819
                                        #   in Loop: Header=BB0_543 Depth=4
	incq	%rax
	movq	%rax, 13344(%rsp)
	movq	%rax, 13368(%rsp)
	jmp	.LBB0_543
.LBB0_615:                              # %if.then.1828
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1816(%rsp), %rax
	movq	13472(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movq	400(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$1, 32(%rsp)
	jmp	.LBB0_635
.LBB0_549:                              # %if.end.1712
                                        #   in Loop: Header=BB0_543 Depth=4
	movzbl	%cl, %esi
	cmpl	$223, %esi
	jne	.LBB0_616
# BB#550:                               # %land.lhs.true.1717
                                        #   in Loop: Header=BB0_543 Depth=4
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_616
# BB#551:                               # %if.then.1722
                                        #   in Loop: Header=BB0_543 Depth=4
	addq	$2, %rax
	movq	%rax, 13344(%rsp)
	movq	%rax, 13368(%rsp)
	movq	%rax, 544(%rsp)
	movq	13384(%rsp), %rcx
	subq	%rax, %rcx
	cmpq	$620, %rcx              # imm = 0x26C
	ja	.LBB0_554
# BB#552:                               # %if.then.i.1278
                                        #   in Loop: Header=BB0_543 Depth=4
	leaq	13352(%rsp), %rdi
	movq	%r15, %rsi
	callq	top_up_cbuf
	testl	%eax, %eax
	js	.LBB0_609
# BB#553:                               # %if.then.if.end.3_crit_edge.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	544(%rsp), %rax
.LBB0_554:                              # %if.end.3.i
                                        #   in Loop: Header=BB0_543 Depth=4
	leaq	1(%rax), %rbx
	movq	%rbx, 544(%rsp)
	movzbl	(%rax), %edi
	callq	gs_find_compositor
	movq	%rax, %rbp
	movl	$-1, %eax
	testq	%rbp, %rbp
	je	.LBB0_609
# BB#555:                               # %if.end.8.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	13384(%rsp), %edx
	subl	%ebx, %edx
	leaq	1600(%rsp), %rdi
	movq	%rbx, %rsi
	movq	13472(%rsp), %rcx
	callq	*32(%rbp)
	movl	%eax, %r15d
	movl	$-15, %eax
	cmpl	$617, %r15d             # imm = 0x269
	jbe	.LBB0_556
.LBB0_609:                              # %read_create_compositor.exit.thread
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	$21, %ebp
.LBB0_610:                              # %cleanup.1812.thread
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	%eax, %r15d
.LBB0_611:                              # %cleanup.1812.thread
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%r15, 408(%rsp)         # 8-byte Spill
	movq	416(%rsp), %rbx         # 8-byte Reload
	leaq	544(%rsp), %r15
	jmp	.LBB0_636
.LBB0_616:                              # %if.else.1834
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1808(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_634
# BB#617:                               # %land.lhs.true.1837
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	(%rdi), %rcx
	movzbl	1(%rax), %edx
	callq	*56(%rcx)
	testl	%eax, %eax
	je	.LBB0_634
# BB#618:                               # %if.then.1844
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	13344(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 13344(%rsp)
	movzbl	(%rax), %ecx
	cmpl	$6, %ecx
	movl	$-28, %edx
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	movl	$223, %r12d
	jne	.LBB0_619
# BB#631:                               # %sw.bb.1881
                                        #   in Loop: Header=BB0_543 Depth=4
	leaq	2(%rax), %rcx
	movq	%rcx, 13344(%rsp)
	movb	1(%rax), %al
	movb	%al, %dl
	andb	$-64, %dl
	movzbl	%dl, %edx
	cmpl	$128, %edx
	jne	.LBB0_950
# BB#632:                               # %sw.bb.1885
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rcx, 13368(%rsp)
	movzbl	%al, %edi
	leaq	13352(%rsp), %rsi
	movq	%r13, %rdx
	movq	13472(%rsp), %rcx
	callq	read_set_misc_map
	testl	%eax, %eax
	js	.LBB0_633
# BB#640:                               # %if.end.1892
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	13368(%rsp), %rax
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_641
.LBB0_634:                              # %if.else.1901
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1816(%rsp), %rax
	movq	13472(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movq	400(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 32(%rsp)
.LBB0_635:                              # %cleanup.1911
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rbx, %rdi
	leaq	13408(%rsp), %rsi
	leaq	13336(%rsp), %rdx
	movq	%r13, %rcx
	leaq	1816(%rsp), %r8
	leaq	1808(%rsp), %r9
	callq	execute_compositor_queue
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	$-142, %ebp
	addl	$163, %ebp
.LBB0_636:                              # %cleanup.1911
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rbx, 416(%rsp)         # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB0_641
# BB#637:                               # %cleanup.1911
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpl	$164, %ebp
	je	.LBB0_641
	jmp	.LBB0_638
.LBB0_619:                              # %if.then.1844
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpl	$223, %ecx
	jne	.LBB0_950
# BB#620:                               # %sw.bb.1848
                                        #   in Loop: Header=BB0_543 Depth=4
	leaq	2(%rax), %rsi
	movq	%rsi, 13344(%rsp)
	movzbl	1(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB0_621
# BB#630:                               # %sw.bb.1871
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rsi, 13368(%rsp)
	movq	13336(%rsp), %rcx
	leaq	4408(%rsp), %rdi
	leaq	13352(%rsp), %rsi
	movq	%r13, %rdx
	movq	13472(%rsp), %r8
	callq	read_ht_segment
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	13368(%rsp), %rcx
	movq	%rcx, 13344(%rsp)
	testl	%eax, %eax
	jns	.LBB0_641
	jmp	.LBB0_950
.LBB0_621:                              # %sw.bb.1848
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpl	$2, %ecx
	jne	.LBB0_950
# BB#622:                               # %sw.bb.1851
                                        #   in Loop: Header=BB0_543 Depth=4
	movzbl	(%rsi), %ebp
	testb	%bpl, %bpl
	js	.LBB0_623
# BB#624:                               # %if.else.1858
                                        #   in Loop: Header=BB0_543 Depth=4
	addq	$3, %rax
	movq	%rax, 13344(%rsp)
	jmp	.LBB0_625
.LBB0_556:                              # %if.end.19.i
                                        #   in Loop: Header=BB0_543 Depth=4
	testl	%r15d, %r15d
	jle	.LBB0_558
# BB#557:                               # %if.then.22.i.1286
                                        #   in Loop: Header=BB0_543 Depth=4
	movslq	%r15d, %rax
	addq	%rax, %rbx
	movq	%rbx, 544(%rsp)
.LBB0_558:                              # %if.end.1729
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rbx, 13368(%rsp)
	movq	%rbx, 13344(%rsp)
	movq	1600(%rsp), %rdi
	movl	$164, %ebp
	testq	%rdi, %rdi
	je	.LBB0_611
# BB#559:                               # %if.end.1734
                                        #   in Loop: Header=BB0_543 Depth=4
	callq	gs_is_pdf14trans_compositor
	cmpl	$1, 380(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_562
# BB#560:                               # %if.end.1734
                                        #   in Loop: Header=BB0_543 Depth=4
	testl	%eax, %eax
	je	.LBB0_562
# BB#561:                               # %if.then.1740
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rsi
	movl	$.L.str.4, %edx
	movq	13472(%rsp), %rdi
	callq	*24(%rdi)
	movq	$0, 1600(%rsp)
	jmp	.LBB0_611
.LBB0_623:                              # %if.then.1856
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%r15, %rdi
	callq	enc_u_get_uint
	movq	%rax, 13344(%rsp)
	movl	544(%rsp), %ebp
.LBB0_625:                              # %do.end.1862
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	4424(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_627
# BB#626:                               # %if.then.i.1379
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	$.L.str.23, %edx
	movq	13472(%rsp), %rdi
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	$0, 4424(%rsp)
	xorl	%eax, %eax
.LBB0_627:                              # %if.end.i.1380
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpl	$4065, %ebp             # imm = 0xFE1
	jb	.LBB0_629
# BB#628:                               # %if.then.4.i.1384
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	$.L.str.23, %edx
	movq	13472(%rsp), %rdi
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, 4424(%rsp)
	testq	%rax, %rax
	movl	$-25, %ecx
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	je	.LBB0_950
.LBB0_629:                              # %read_alloc_ht_buff.exit.thread
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	%ebp, 4408(%rsp)
	movl	$0, 4412(%rsp)
	movq	%rax, 4416(%rsp)
	jmp	.LBB0_641
.LBB0_562:                              # %if.end.1743
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	13472(%rsp), %rbx
	movq	1808(%rsp), %rax
	movq	%rax, 464(%rsp)
	movq	1600(%rsp), %rdi
	movq	(%rdi), %rax
	movq	13336(%rsp), %rdx
	leaq	464(%rsp), %rsi
	callq	*48(%rax)
	movl	$21, %ebp
	testl	%eax, %eax
	js	.LBB0_610
# BB#563:                               # %if.else.1750
                                        #   in Loop: Header=BB0_543 Depth=4
	movl	%eax, %ecx
	cmpl	$6, %eax
	jbe	.LBB0_565
# BB#564:                               #   in Loop: Header=BB0_543 Depth=4
	movl	$-28, %r15d
	jmp	.LBB0_611
.LBB0_565:                              # %if.else.1750
                                        #   in Loop: Header=BB0_543 Depth=4
	jmpq	*.LJTI0_6(,%rcx,8)
.LBB0_569:                              # %if.then.1757
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rax
	movq	1808(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_570
# BB#571:                               # %if.else.i.1301
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 32(%rcx)
	movq	1808(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, 32(%rax)
	jmp	.LBB0_572
.LBB0_573:                              # %if.then.1766
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rax
	movq	1808(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_574
# BB#575:                               # %if.else.i.1311
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 32(%rcx)
	movq	1808(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, 32(%rax)
	movq	1816(%rsp), %rcx
	jmp	.LBB0_576
.LBB0_566:                              # %if.then.1775
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	464(%rsp), %rax
	movq	%rbx, 24(%rsp)
	movl	308(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movq	400(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$1, 32(%rsp)
	movq	416(%rsp), %rdi         # 8-byte Reload
	leaq	13408(%rsp), %rsi
	leaq	13336(%rsp), %rdx
	movq	%r13, %rcx
	leaq	1816(%rsp), %r8
	leaq	1808(%rsp), %r9
	callq	execute_compositor_queue
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_611
.LBB0_567:                              # %if.then.1753
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rax
	movq	1808(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_568
# BB#578:                               # %if.else.i.1292
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 32(%rcx)
	movq	1808(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, 32(%rax)
	movq	%rax, 1808(%rsp)
	leaq	544(%rsp), %r15
	jmp	.LBB0_641
.LBB0_579:                              # %if.then.1784
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	464(%rsp), %rax
	movq	1808(%rsp), %rdi
	movq	1816(%rsp), %rsi
	cmpq	%rsi, %rdi
	je	.LBB0_580
# BB#582:                               # %if.else.3.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	24(%rax), %rcx
	movq	32(%rax), %rdx
	cmpq	%rax, %rdi
	je	.LBB0_583
# BB#584:                               # %if.else.7.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rcx, 24(%rdx)
	movq	1816(%rsp), %rsi
	jmp	.LBB0_585
.LBB0_592:                              # %if.then.1793
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %r15
	movq	1808(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_593
# BB#594:                               # %if.else.i.1350
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%r15, 32(%rax)
	movq	1808(%rsp), %rax
	movq	%rax, 24(%r15)
	movq	$0, 32(%r15)
	jmp	.LBB0_595
.LBB0_602:                              # %if.then.1802
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rax
	movq	1808(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_603
# BB#604:                               # %if.else.i.1367
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 32(%rcx)
	movq	1808(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, 32(%rax)
	jmp	.LBB0_605
.LBB0_568:                              # %if.then.i.1291
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 1816(%rsp)
	movq	%rax, 1808(%rsp)
	leaq	544(%rsp), %r15
	jmp	.LBB0_641
.LBB0_570:                              # %if.then.i.1297
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 1816(%rsp)
.LBB0_572:                              # %enqueue_compositor.exit1303
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 1808(%rsp)
	movq	464(%rsp), %rax
	movq	%rbx, 24(%rsp)
	movl	308(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movq	400(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$1, 32(%rsp)
	jmp	.LBB0_577
.LBB0_574:                              # %if.then.i.1307
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 1816(%rsp)
	movq	%rax, %rcx
.LBB0_576:                              # %enqueue_compositor.exit1313
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 1808(%rsp)
	movq	%rbx, 24(%rsp)
	movl	308(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	400(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	%rcx, (%rsp)
	movl	$0, 32(%rsp)
.LBB0_577:                              # %enqueue_compositor.exit1313
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	416(%rsp), %rdi         # 8-byte Reload
	leaq	13408(%rsp), %rsi
	leaq	13336(%rsp), %rdx
	movq	%r13, %rcx
	leaq	1816(%rsp), %r8
	leaq	1808(%rsp), %r9
	callq	execute_compositor_queue
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_613
	jmp	.LBB0_611
.LBB0_580:                              # %if.then.i.1326
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpq	%rax, %rdi
	movl	$-28, %r15d
	jne	.LBB0_611
# BB#581:                               # %if.end.1789.thread
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	$0, 1816(%rsp)
	movq	$0, 1808(%rsp)
	movq	1600(%rsp), %rax
	jmp	.LBB0_589
.LBB0_593:                              # %if.then.i.1346
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r15)
	movq	%r15, 1816(%rsp)
.LBB0_595:                              # %if.end.i.1356.lr.ph
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%r15, 1808(%rsp)
	movq	464(%rsp), %r14
.LBB0_597:                              # %if.end.i.1356
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_543 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	308(%rsp), %edx         # 4-byte Reload
	cmpq	1816(%rsp), %r15
	je	.LBB0_598
# BB#599:                               # %if.end.14.i.i
                                        #   in Loop: Header=BB0_597 Depth=5
	movq	24(%r15), %rax
	movq	32(%r15), %rcx
	movq	%rax, 1808(%rsp)
	movq	%rcx, 32(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r15)
	jmp	.LBB0_600
.LBB0_598:                              # %if.then.2.i.i
                                        #   in Loop: Header=BB0_597 Depth=5
	movq	$0, 1816(%rsp)
	movq	$0, 1808(%rsp)
.LBB0_600:                              # %dequeue_compositor.exit.i
                                        #   in Loop: Header=BB0_597 Depth=5
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	400(%rsp), %rsi         # 8-byte Reload
	movq	%r13, %rcx
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB0_601
# BB#612:                               # %do.cond.i
                                        #   in Loop: Header=BB0_597 Depth=5
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	cmpq	%r14, %r15
	je	.LBB0_613
# BB#596:                               # %do.body.i.1354thread-pre-split
                                        #   in Loop: Header=BB0_597 Depth=5
	movq	1808(%rsp), %r15
	testq	%r15, %r15
	jne	.LBB0_597
	jmp	.LBB0_613
.LBB0_603:                              # %if.then.i.1363
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 1816(%rsp)
.LBB0_605:                              # %enqueue_compositor.exit1369
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 1808(%rsp)
	movq	464(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_613
# BB#606:                               #   in Loop: Header=BB0_543 Depth=4
	movq	1600(%rsp), %rcx
.LBB0_607:                              # %while.body.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_543 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	$1, 16(%rax)
	cmpq	%rcx, %rax
	je	.LBB0_613
# BB#608:                               # %if.end.i.1373
                                        #   in Loop: Header=BB0_607 Depth=5
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_607
.LBB0_613:                              # %cleanup.1812
                                        #   in Loop: Header=BB0_543 Depth=4
	leaq	544(%rsp), %r15
	jmp	.LBB0_641
.LBB0_601:                              #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, %r15
	jmp	.LBB0_611
.LBB0_583:                              # %if.then.5.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rcx, 1808(%rsp)
.LBB0_585:                              # %if.end.i.1330
                                        #   in Loop: Header=BB0_543 Depth=4
	cmpq	%rax, %rsi
	je	.LBB0_586
# BB#587:                               # %if.else.12.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rdx, 32(%rcx)
	jmp	.LBB0_588
.LBB0_586:                              # %if.then.10.i
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	32(%rax), %rcx
	movq	%rcx, 1816(%rsp)
.LBB0_588:                              # %if.end.1789
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	1808(%rsp), %rcx
	movq	1600(%rsp), %rax
	testq	%rcx, %rcx
	je	.LBB0_589
# BB#590:                               # %if.else.i.1339
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 32(%rcx)
	movq	1808(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, 32(%rax)
	jmp	.LBB0_591
.LBB0_589:                              # %if.then.i.1335
                                        #   in Loop: Header=BB0_543 Depth=4
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 1816(%rsp)
.LBB0_591:                              # %enqueue_compositor.exit1341
                                        #   in Loop: Header=BB0_543 Depth=4
	movq	%rax, 1808(%rsp)
	movq	464(%rsp), %rsi
	movl	$.L.str.22, %edx
	movq	%rbx, %rdi
	callq	*24(%rdi)
	leaq	544(%rsp), %r15
	jmp	.LBB0_641
.LBB0_658:                              # %sw.bb.1964
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$208, %edi
	leaq	13248(%rsp), %rsi
	movq	%rax, %rdx
	callq	cmd_read_rect
	movq	%rax, 13344(%rsp)
	movq	13336(%rsp), %rdi
	movq	13248(%rsp), %rcx
	movq	13256(%rsp), %r8
	movl	%ecx, %edx
	movq	400(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edx
	shrq	$32, %rcx
	subl	308(%rsp), %ecx         # 4-byte Folded Reload
	movq	%r8, %r9
	shrq	$32, %r9
	movl	284(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	288(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	leaq	12592(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	11936(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	11472(%rsp), %rsi
	callq	*1704(%rdi)
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_656
.LBB0_655:                              # %sw.bb.1955
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$1, 13276(%rsp)
	jmp	.LBB0_656
.LBB0_657:                              # %sw.bb.1959
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	$0, 13276(%rsp)
.LBB0_656:                              # %cleanup.3226.thread
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	296(%rsp), %rax         # 8-byte Reload
	leaq	6856(%rsp), %r13
	jmp	.LBB0_946
.LBB0_357:                              # %land.rhs
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	556(%rsp), %eax
	cmpl	9148(%rsp), %eax
	setge	%al
.LBB0_358:                              # %land.end
                                        #   in Loop: Header=BB0_21 Depth=3
	movzbl	%al, %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movl	%ecx, 260(%rsp)         # 4-byte Spill
	testb	%al, %al
	leaq	11000(%rsp), %rax
	movq	%rax, %rcx
	movl	$0, %eax
	cmovneq	%rax, %rcx
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	movw	8472(%rsp), %ax
	movw	%ax, 13268(%rsp)
	testw	%ax, %ax
	movl	13264(%rsp), %eax
	movl	$252, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 7068(%rsp)
	movl	$656, %edx              # imm = 0x290
	leaq	6200(%rsp), %rdi
	leaq	8480(%rsp), %rsi
	callq	memcpy
	movl	$0, 256(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_945
.LBB0_154:                              # %if.else.290
                                        #   in Loop: Header=BB0_21 Depth=3
	andl	$127, %eax
	movl	$7, %ecx
.LBB0_155:                              # %for.cond.i.784
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r15), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%r15
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_155
# BB#156:                               # %cmd_get_w.exit786
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	%r15, 13344(%rsp)
.LBB0_157:                              # %if.end.298
                                        #   in Loop: Header=BB0_21 Depth=3
	shll	$5, %eax
	andl	$31, %edi
	orl	%eax, %edi
	movl	%edi, 292(%rsp)         # 4-byte Spill
	jmp	.LBB0_945
.LBB0_638:                              # %cleanup.1911
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpl	$163, %ebp
	jne	.LBB0_639
# BB#642:                               # %for.end.1914
                                        #   in Loop: Header=BB0_21 Depth=3
	cmpq	$0, 1808(%rsp)
	je	.LBB0_945
	jmp	.LBB0_643
.LBB0_739:                              # %sw.bb.2231
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$241, %ebx
	jne	.LBB0_740
.LBB0_680:                              # %rgapto
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	264(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_682
# BB#681:                               # %if.then.2111
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13248(%rsp), %rax
	movl	%eax, %ecx
	shll	$8, %ecx
	movl	%ecx, 244(%rsp)         # 4-byte Spill
	shrq	$24, %rax
	andl	$-256, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
.LBB0_682:                              # %if.end.2123
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ebx, %eax
	andl	$15, %eax
	movl	%eax, %ecx
	andl	$14, %ecx
	cmpq	$14, %rcx
	je	.LBB0_694
# BB#683:                               # %for.body.2131.lr.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	clist_playback_band.op_num_operands(%rax), %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_684
.LBB0_689:                              # %sw.bb.2166
                                        #   in Loop: Header=BB0_684 Depth=3
	shll	$8, %edx
	xorl	$53248, %edx            # imm = 0xD000
	addl	$67104768, %edx         # imm = 0x3FFF000
	movzbl	1(%r14), %esi
	orl	%edx, %esi
	shll	$6, %esi
	movslq	%ecx, %rdx
	movl	%esi, 4432(%rsp,%rdx,4)
	addq	$2, %r14
	movq	%r14, 13344(%rsp)
	movq	%r14, %rsi
	jmp	.LBB0_693
	.align	16, 0x90
.LBB0_684:                              # %for.body.2131
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %edx
	movl	%edx, %esi
	shrl	$5, %esi
	cmpl	$6, %esi
	jbe	.LBB0_685
# BB#690:                               # %sw.default.2180
                                        #   in Loop: Header=BB0_684 Depth=3
	leaq	1(%r14), %rdx
	movq	%rdx, 13344(%rsp)
	movsbl	1(%r14), %esi
	shll	$8, %esi
	leaq	2(%r14), %rdi
	movq	%rdi, 13344(%rsp)
	movzbl	2(%r14), %edx
	orl	%esi, %edx
	jmp	.LBB0_691
	.align	16, 0x90
.LBB0_685:                              # %for.body.2131
                                        #   in Loop: Header=BB0_684 Depth=3
	jmpq	*.LJTI0_2(,%rsi,8)
.LBB0_686:                              # %sw.bb.2134
                                        #   in Loop: Header=BB0_684 Depth=3
	xorl	$32, %edx
	shll	$13, %edx
	addl	$-262144, %edx          # imm = 0xFFFFFFFFFFFC0000
	movzbl	1(%r14), %esi
	shll	$5, %esi
	orl	%edx, %esi
	leaq	2(%r14), %rdi
	movzbl	2(%r14), %edx
	shrl	$3, %edx
	orl	%esi, %edx
	movslq	%ecx, %rsi
	incl	%ecx
	movl	%edx, 4432(%rsp,%rsi,4)
	movq	%rdi, 13344(%rsp)
	movzbl	2(%r14), %edx
	shll	$29, %edx
	sarl	$29, %edx
.LBB0_691:                              # %sw.epilog.2197
                                        #   in Loop: Header=BB0_684 Depth=3
	movq	%rdi, %r14
	jmp	.LBB0_692
.LBB0_687:                              # %sw.bb.2156
                                        #   in Loop: Header=BB0_684 Depth=3
	xorl	$96, %edx
	addl	$-32, %edx
	jmp	.LBB0_692
.LBB0_688:                              # %sw.bb.2159
                                        #   in Loop: Header=BB0_684 Depth=3
	shll	$8, %edx
	xorl	$40960, %edx            # imm = 0xA000
	addl	$-8192, %edx            # imm = 0xFFFFFFFFFFFFE000
	leaq	1(%r14), %rsi
	movq	%rsi, 13344(%rsp)
	movzbl	1(%r14), %edi
	orl	%edi, %edx
	movq	%rsi, %r14
	.align	16, 0x90
.LBB0_692:                              # %sw.epilog.2197
                                        #   in Loop: Header=BB0_684 Depth=3
	leaq	3(%r14), %rsi
	movq	%rsi, 13344(%rsp)
	shll	$16, %edx
	movzbl	1(%r14), %edi
	shll	$8, %edi
	orl	%edx, %edi
	movzbl	2(%r14), %edx
	orl	%edi, %edx
	movslq	%ecx, %rdi
	movl	%edx, 4432(%rsp,%rdi,4)
.LBB0_693:                              # %cleanup.2212
                                        #   in Loop: Header=BB0_684 Depth=3
	incl	%ecx
	cmpl	%eax, %ecx
	movq	%rsi, %r14
	jl	.LBB0_684
.LBB0_694:                              # %do.end.2221
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$-15, %r15d
	leal	-224(%rbx), %eax
	cmpl	$17, %eax
	ja	.LBB0_738
# BB#695:                               # %do.end.2221
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	244(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %r12d
	subl	224(%rsp), %r12d        # 4-byte Folded Reload
	movq	248(%rsp), %rbp         # 8-byte Reload
	subl	220(%rsp), %ebp         # 4-byte Folded Reload
	jmpq	*.LJTI0_3(,%rax,8)
.LBB0_696:                              # %sw.bb.i.1407
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	4432(%rsp), %r14
	leal	(%r12,%r14), %r12d
	shrq	$32, %r14
	addl	%ebp, %r14d
	leaq	11304(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	gx_path_add_point
	jmp	.LBB0_697
.LBB0_740:                              # %if.end.2235
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	leaq	11304(%rsp), %rax
	movq	%rax, %r15
	movq	13472(%rsp), %r14
	je	.LBB0_745
# BB#741:                               # %if.then.2240
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, %rbp
	xorl	%esi, %esi
	leaq	1600(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gx_path_init_local_shared
	movss	7152(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_0(%rip), %xmm0
	cvttss2si	%xmm0, %edx
	movl	$2, %r8d
	cmpl	$0, 7168(%rsp)
	jne	.LBB0_743
# BB#742:                               # %select.mid
                                        #   in Loop: Header=BB0_20 Depth=2
	xorl	%r8d, %r8d
.LBB0_743:                              # %select.end
                                        #   in Loop: Header=BB0_20 Depth=2
	xorl	%ecx, %ecx
	leaq	11304(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_path_copy_reducing
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movq	%rbx, %r15
	movq	%rbp, %rbx
	js	.LBB0_744
.LBB0_745:                              # %if.end.2251
                                        #   in Loop: Header=BB0_20 Depth=2
	leal	-243(%rbx), %eax
	cmpl	$9, %eax
	jbe	.LBB0_748
# BB#746:                               # %if.end.2251
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$-1, %eax
	cmpl	$240, %ebx
	jne	.LBB0_747
	jmp	.LBB0_750
.LBB0_748:                              # %if.end.2251
                                        #   in Loop: Header=BB0_20 Depth=2
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_749:                              # %sw.bb.2253
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$1, %eax
.LBB0_750:                              # %fill
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	%eax, 6128(%rsp)
	movq	7156(%rsp), %rax
	movq	%rax, 6132(%rsp)
	movl	7152(%rsp), %eax
	movl	%eax, 6140(%rsp)
	movq	13336(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	leaq	6128(%rsp), %rcx
	leaq	6200(%rsp), %r8
	movq	360(%rsp), %r9          # 8-byte Reload
	callq	*1336(%rdi)
	jmp	.LBB0_752
.LBB0_396:                              # %sw.bb.1199
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$208, %edi
	leaq	13248(%rsp), %rsi
	movq	%r14, %rdx
	callq	cmd_read_rect
	movq	%rax, 13344(%rsp)
	movl	$gx_dc_type_data_devn, %eax
	cmpq	%rax, 6200(%rsp)
	je	.LBB0_398
# BB#397:                               #   in Loop: Header=BB0_20 Depth=2
	movl	$-20, %r12d
	movl	$21, %ebp
	jmp	.LBB0_399
.LBB0_463:                              # %do.body.1484
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	1(%r15), %eax
	addq	$2, %r15
	testb	%al, %al
	movdqa	.LCPI0_1(%rip), %xmm6   # xmm6 = [2,3]
	movdqa	.LCPI0_2(%rip), %xmm7   # xmm7 = [6,7]
	movdqa	.LCPI0_3(%rip), %xmm8   # xmm8 = [4,5]
	js	.LBB0_465
# BB#464:                               # %if.then.1488
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %r14d
	movl	292(%rsp), %r8d         # 4-byte Reload
	movl	308(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_468
.LBB0_430:                              # %do.body.1364
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	1(%r15), %eax
	addq	$2, %r15
	testb	%al, %al
	movdqa	.LCPI0_1(%rip), %xmm6   # xmm6 = [2,3]
	movdqa	.LCPI0_2(%rip), %xmm7   # xmm7 = [6,7]
	movdqa	.LCPI0_3(%rip), %xmm8   # xmm8 = [4,5]
	js	.LBB0_432
# BB#431:                               # %if.then.1368
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 13344(%rsp)
	movzbl	(%r14), %r14d
	jmp	.LBB0_435
.LBB0_744:                              #   in Loop: Header=BB0_20 Depth=2
	movl	$21, %ebp
	jmp	.LBB0_892
.LBB0_751:                              # %sw.bb.2260
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	7152(%rsp), %eax
	movl	%eax, 6120(%rsp)
	movl	$0, 6124(%rsp)
	movq	13336(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	leaq	6120(%rsp), %rcx
	leaq	6200(%rsp), %r8
	movq	360(%rsp), %r9          # 8-byte Reload
	callq	*1344(%rdi)
.LBB0_752:                              # %sw.epilog.2855
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%eax, %r12d
	leaq	11304(%rsp), %rbx
	jmp	.LBB0_887
.LBB0_753:                              # %sw.bb.2265
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	56(%r15), %rax
	movq	24(%rax), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB0_754
# BB#755:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB0_763
# BB#756:                               # %land.lhs.true.1.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	8(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB0_763
# BB#757:                               # %if.then.i.1428
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 408(%rsp)         # 8-byte Spill
	movq	%r14, %r15
	movq	13336(%rsp), %rdi
	movl	7068(%rsp), %r10d
	movl	20(%rax), %esi
	movl	24(%rax), %edx
	movl	20(%rcx), %ebp
	movl	24(%rcx), %r14d
	movl	%ebp, %ecx
	subl	%esi, %ecx
	movl	%r14d, %r8d
	subl	%edx, %r8d
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_761
# BB#758:                               # %land.lhs.true.12.i
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	20(%rax), %esi
	jne	.LBB0_760
# BB#759:                               # %land.lhs.true.17.i
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	24(%rax), %edx
	jne	.LBB0_760
.LBB0_761:                              # %if.else.i.1431
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	1376(%rdi), %r11
	movl	20(%rbx), %r9d
	movl	24(%rbx), %ebx
	subl	%esi, %r9d
	subl	%edx, %ebx
	jmp	.LBB0_762
.LBB0_764:                              # %sw.bb.2268
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13336(%rsp), %rbp
	movq	344(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_765
# BB#766:                               # %sw.bb.2268
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	cmpq	$0, 360(%rsp)           # 8-byte Folded Reload
	movq	%rbp, %rsi
	movl	308(%rsp), %ebx         # 4-byte Reload
	je	.LBB0_768
# BB#767:                               # %if.then.2274
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	2552(%rsp), %rdi
	movq	360(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	callq	gx_make_clip_device_on_stack
	movl	$1, %eax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movq	13336(%rsp), %rsi
	jmp	.LBB0_768
.LBB0_398:                              # %do.end.1213
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13248(%rsp), %rax
	movl	%eax, %ecx
	movq	400(%rsp), %rdx         # 8-byte Reload
	subl	%edx, %ecx
	shll	$8, %ecx
	movl	%ecx, 544(%rsp)
	shrq	$32, %rax
	subl	308(%rsp), %eax         # 4-byte Folded Reload
	shll	$8, %eax
	movl	%eax, 548(%rsp)
	movq	13256(%rsp), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	addl	%ecx, %esi
	movl	%esi, 552(%rsp)
	shrq	$24, %rdx
	andl	$-256, %edx
	addl	%eax, %edx
	movl	%edx, 556(%rsp)
	movq	13336(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rsi
	leaq	6200(%rsp), %rcx
	callq	*1576(%rdi)
	movl	%eax, %r12d
.LBB0_399:                              # %cleanup.1244
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%ebp, %ebp
	movl	$22, %eax
	cmovel	%eax, %ebp
	movl	$209, %ebx
	jmp	.LBB0_892
.LBB0_465:                              # %if.else.1491
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %eax
	movl	$7, %ecx
	movl	308(%rsp), %ebp         # 4-byte Reload
	movl	%eax, %r14d
.LBB0_466:                              # %for.cond.i.1222
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %r14d
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_466
# BB#467:                               # %cmd_get_w.exit1225
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 13344(%rsp)
	movl	292(%rsp), %r8d         # 4-byte Reload
.LBB0_468:                              # %do.end.1497
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_469
# BB#470:                               # %if.end.1509
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%r15), %edx
	leaq	1(%r15), %rax
	testb	%dl, %dl
	js	.LBB0_472
# BB#471:                               # %if.then.1515
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
	movzbl	(%r15), %edx
	jmp	.LBB0_475
.LBB0_432:                              # %if.else.1371
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %eax
	movl	$7, %ecx
	movl	%eax, %r14d
.LBB0_433:                              # %for.cond.i.1154
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %eax
	movl	%eax, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %r14d
	incq	%r15
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_433
# BB#434:                               # %cmd_get_w.exit1157
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, 13344(%rsp)
.LBB0_435:                              # %do.end.1377
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_436
# BB#437:                               # %if.end.1389
                                        #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%r15), %r12d
	leaq	1(%r15), %rax
	testb	%r12b, %r12b
	js	.LBB0_439
# BB#438:                               # %if.then.1394
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
	movzbl	(%r15), %r12d
	jmp	.LBB0_442
.LBB0_469:                              # %do.end.1503
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r8d, 292(%rsp)         # 4-byte Spill
	movq	4984(%rsp), %rdi
	movl	$1, %esi
	callq	gx_image_end
	movl	%eax, %r12d
	movl	%r12d, %ebp
	sarl	$31, %ebp
	addl	$22, %ebp
	movl	$221, %ebx
	jmp	.LBB0_892
.LBB0_436:                              # %do.end.1383
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4984(%rsp), %rdi
	movl	$1, %esi
	callq	gx_image_end
	movl	%eax, %r12d
	movl	%r12d, %ebp
	sarl	$31, %ebp
	addl	$22, %ebp
	movl	$222, %ebx
	jmp	.LBB0_892
.LBB0_698:                              # %sw.bb.5.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	4432(%rsp), %r14
	leal	(%r12,%r14), %r12d
	shrq	$32, %r14
	addl	%ebp, %r14d
	leaq	11304(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	callq	gx_path_add_line_notes
	jmp	.LBB0_697
.LBB0_700:                              # %sw.bb.17.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	addl	4432(%rsp), %r12d
	jmp	.LBB0_701
.LBB0_702:                              # %sw.bb.21.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	addl	4432(%rsp), %ebp
.LBB0_701:                              # %sw.epilog.i.1418
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	11304(%rsp), %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	jmp	.LBB0_737
.LBB0_703:                              # %sw.bb.25.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	%r13, %rbx
	movq	4432(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	leaq	11304(%rsp), %r13
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	gx_path_add_point
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_704
# BB#705:                               # %if.end.i.1412
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %r14
	leal	(%r12,%r14), %r12d
	shrq	$32, %r14
	addl	%ebp, %r14d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	movl	%r14d, %ebp
	movq	%rbx, %r13
	jmp	.LBB0_737
.LBB0_706:                              # %sw.bb.36.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	4432(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	leaq	11304(%rsp), %r13
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	gx_path_add_point
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_707
# BB#708:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	280(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_709
# BB#710:                               # %if.end.50.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4448(%rsp), %r14
	leal	(%r12,%r14), %r12d
	shrq	$32, %r14
	addl	%ebp, %r14d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	movl	%r14d, %ebp
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_711:                              # %sw.bb.56.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	4432(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	leaq	11304(%rsp), %r13
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	callq	gx_path_add_point
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_712
# BB#713:                               # %lor.lhs.false.63.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	280(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_714
# BB#715:                               # %lor.lhs.false.70.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4448(%rsp), %rax
	leal	(%r12,%rax), %r12d
	shrq	$32, %rax
	addl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_716
# BB#717:                               # %if.end.78.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %rax
	subl	%eax, %r12d
	shrq	$32, %rax
	subl	%eax, %ebp
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %r15d
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_718:                              # %entry.rrc_crit_edge.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4432(%rsp), %rsi
	movq	4440(%rsp), %rcx
	movq	4448(%rsp), %rdi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rcx, %rax
	shrq	$32, %rax
	movq	%rdi, %r10
	shrq	$32, %r10
	jmp	.LBB0_719
.LBB0_721:                              # %entry.hvc_crit_edge.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4432(%rsp), %rsi
	movq	4440(%rsp), %r8
	movq	%r8, %rax
	shrq	$32, %rax
	movq	%rsi, %rcx
	shrq	$32, %rcx
	jmp	.LBB0_722
.LBB0_723:                              # %entry.vhc_crit_edge.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	4432(%rsp), %edx
	movl	4436(%rsp), %ecx
	movl	4444(%rsp), %esi
	movl	4440(%rsp), %eax
	jmp	.LBB0_724
.LBB0_725:                              # %sw.bb.140.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	4436(%rsp), %r8d
	movl	4444(%rsp), %eax
	addl	%r8d, %eax
	movl	%eax, 4452(%rsp)
	movl	4432(%rsp), %ecx
	movl	4440(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 4448(%rsp)
	movl	%r8d, 4444(%rsp)
	movl	%ecx, 4440(%rsp)
	movq	$0, 4432(%rsp)
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB0_720
.LBB0_726:                              # %sw.bb.155.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movl	4436(%rsp), %edx
	movl	4444(%rsp), %eax
	addl	%edx, %eax
	movl	%eax, 4444(%rsp)
	movl	%eax, 4452(%rsp)
	movl	4432(%rsp), %esi
	movl	4440(%rsp), %r9d
	addl	%esi, %r9d
	movl	%r9d, 4440(%rsp)
	movl	%r9d, 4448(%rsp)
	movl	%eax, %r8d
	movl	%r9d, %ecx
	jmp	.LBB0_720
.LBB0_727:                              # %sw.bb.164.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4432(%rsp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	%ecx, %eax
	xorl	%edx, %eax
	js	.LBB0_728
# BB#729:                               # %if.else.i.1416
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ecx, 4440(%rsp)
	movl	%edx, 4444(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	jmp	.LBB0_724
.LBB0_730:                              # %sw.bb.180.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4432(%rsp), %rsi
	movq	%rsi, %r8
	shrq	$32, %r8
	movl	%r8d, %eax
	xorl	%esi, %eax
	js	.LBB0_731
# BB#732:                               # %if.else.194.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, 4444(%rsp)
	movl	%r8d, 4440(%rsp)
	movl	%r8d, %ecx
	movl	%esi, %eax
	jmp	.LBB0_722
.LBB0_733:                              # %sw.bb.200.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4432(%rsp), %rdi
	movq	%rdi, %r10
	shrq	$32, %r10
	testl	%edi, %edi
	je	.LBB0_734
# BB#735:                               # %if.else.223.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %rax
	movq	4448(%rsp), %rdx
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%eax, %esi
	subl	%edx, %esi
	movl	%esi, 4432(%rsp)
	shrq	$32, %rdx
	shrq	$32, %rax
	subl	%eax, %edx
	movl	%edx, 4436(%rsp)
	movl	%ecx, 4440(%rsp)
	subl	%r10d, %eax
	movl	%eax, 4444(%rsp)
	negl	%edi
	movl	%edi, 4448(%rsp)
	movl	%r10d, 4452(%rsp)
	jmp	.LBB0_719
.LBB0_736:                              # %sw.bb.242.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	leaq	11304(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_close_subpath_notes
	movl	%eax, %r15d
	movq	%rbx, %rdi
	leaq	4432(%rsp), %rsi
	callq	gx_path_current_point
	movq	4432(%rsp), %r12
	movq	%r12, %rbp
	shrq	$32, %rbp
	jmp	.LBB0_737
.LBB0_699:                              # %sw.bb.11.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	movq	4432(%rsp), %r14
	leal	(%r12,%r14), %r12d
	shrq	$32, %r14
	addl	%ebp, %r14d
	leaq	11304(%rsp), %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	callq	gx_path_add_gap_notes
.LBB0_697:                              # %sw.epilog.i.1418
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%eax, %r15d
	movl	%r14d, %ebp
	jmp	.LBB0_737
.LBB0_472:                              # %if.else.1518
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %edx
	movl	$7, %ecx
.LBB0_473:                              # %for.cond.i.1239
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax), %esi
	movl	%esi, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rax
	addl	$7, %ecx
	testb	%sil, %sil
	js	.LBB0_473
# BB#474:                               # %cmd_get_w.exit1242
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
.LBB0_475:                              # %do.end.1527
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4984(%rsp), %rcx
	movslq	44(%rcx), %rdi
	testq	%rdi, %rdi
	jle	.LBB0_476
# BB#477:                               # %for.body.1532.lr.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	-1(%rdi), %rsi
	testb	$3, %dil
	movl	$0, %ecx
	je	.LBB0_480
# BB#478:                               # %for.body.1532.prol.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%edi, %ebp
	andl	$3, %ebp
	leaq	4476(%rsp), %rbx
	xorl	%ecx, %ecx
.LBB0_479:                              # %for.body.1532.prol
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r8d, -4(%rbx)
	movl	%edx, (%rbx)
	incq	%rcx
	addq	$16, %rbx
	cmpq	%rcx, %rbp
	jne	.LBB0_479
.LBB0_480:                              # %for.body.1532.lr.ph.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$221, %r9d
	cmpq	$3, %rsi
	jb	.LBB0_483
# BB#481:                               # %for.body.1532.lr.ph.split.split
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rcx, %rsi
	shlq	$4, %rsi
	leaq	4524(%rsp), %rbp
	leaq	(%rsi,%rbp), %rsi
	movl	%r8d, %ebp
.LBB0_482:                              # %for.body.1532
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, -52(%rsi)
	movl	%edx, -48(%rsi)
	movl	%ebp, -36(%rsi)
	movl	%edx, -32(%rsi)
	movl	%ebp, -20(%rsi)
	movl	%edx, -16(%rsi)
	movl	%ebp, -4(%rsi)
	movl	%edx, (%rsi)
	addq	$4, %rcx
	addq	$64, %rsi
	cmpq	%rdi, %rcx
	jl	.LBB0_482
	jmp	.LBB0_483
.LBB0_439:                              # %if.else.1397
                                        #   in Loop: Header=BB0_20 Depth=2
	andl	$127, %r12d
	movl	$7, %ecx
.LBB0_440:                              # %for.cond.i.1171
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax), %edx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r12d
	incq	%rax
	addl	$7, %ecx
	testb	%dl, %dl
	js	.LBB0_440
# BB#441:                               # %cmd_get_w.exit1174
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rax, 13344(%rsp)
.LBB0_442:                              # %for.cond.1404.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4984(%rsp), %rcx
	xorl	%ebx, %ebx
	movl	$222, %r9d
	movl	$-1163005939, %edx      # imm = 0xFFFFFFFFBAADF00D
	cmpl	$0, 44(%rcx)
	movq	%rax, %rsi
	jle	.LBB0_443
.LBB0_444:                              # %for.body.1408
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_451 Depth 4
                                        #         Child Loop BB0_458 Depth 4
	testb	$1, %r12b
	jne	.LBB0_445
# BB#460:                               # %if.else.1466
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%edx, 4476(%rsp,%rcx)
	movl	292(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB0_461
.LBB0_445:                              # %if.then.1411
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	13384(%rsp), %rax
	subq	%rsi, %rax
	cmpq	$9, %rax
	ja	.LBB0_447
# BB#446:                               # %if.then.1418
                                        #   in Loop: Header=BB0_444 Depth=3
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	movdqa	.LCPI0_3(%rip), %xmm8   # xmm8 = [4,5]
	movdqa	.LCPI0_2(%rip), %xmm7   # xmm7 = [6,7]
	movdqa	.LCPI0_1(%rip), %xmm6   # xmm6 = [2,3]
	movq	%rax, 408(%rsp)         # 8-byte Spill
.LBB0_447:                              # %if.end.1420
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	408(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	292(%rsp), %ebp         # 4-byte Reload
	js	.LBB0_273
# BB#448:                               # %do.body.1425
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	13344(%rsp), %rsi
	movzbl	(%rsi), %edx
	leaq	1(%rsi), %rax
	testb	%dl, %dl
	js	.LBB0_450
# BB#449:                               # %if.then.1429
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	%rax, 13344(%rsp)
	movzbl	(%rsi), %edx
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%edx, 4476(%rsp,%rcx)
	jmp	.LBB0_453
.LBB0_450:                              # %if.else.1435
                                        #   in Loop: Header=BB0_444 Depth=3
	andl	$127, %edx
	movl	$7, %ecx
.LBB0_451:                              # %for.cond.i.1188
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_444 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rax, %rsi
	movzbl	(%rsi), %edi
	movl	%edi, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	leaq	1(%rsi), %rax
	addl	$7, %ecx
	testb	%dil, %dil
	js	.LBB0_451
# BB#452:                               # %cmd_get_w.exit1191
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%edx, 4476(%rsp,%rcx)
	movq	%rax, 13344(%rsp)
.LBB0_453:                              # %do.end.1444
                                        #   in Loop: Header=BB0_444 Depth=3
	testl	%edx, %edx
	je	.LBB0_454
# BB#455:                               # %do.body.1451
                                        #   in Loop: Header=BB0_444 Depth=3
	movzbl	(%rax), %ebp
	addq	$2, %rsi
	testb	%bpl, %bpl
	js	.LBB0_457
# BB#456:                               # %if.then.1455
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	%rsi, 13344(%rsp)
	movzbl	(%rax), %ebp
	movq	%rsi, %rax
	jmp	.LBB0_461
.LBB0_454:                              #   in Loop: Header=BB0_444 Depth=3
	movq	%rax, %rsi
	xorl	%edx, %edx
	jmp	.LBB0_461
.LBB0_457:                              # %if.else.1458
                                        #   in Loop: Header=BB0_444 Depth=3
	andl	$127, %ebp
	movl	$7, %ecx
.LBB0_458:                              # %for.cond.i.1205
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        #       Parent Loop BB0_444 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rsi), %eax
	movl	%eax, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %ebp
	incq	%rsi
	addl	$7, %ecx
	testb	%al, %al
	js	.LBB0_458
# BB#459:                               # %cmd_get_w.exit1208
                                        #   in Loop: Header=BB0_444 Depth=3
	movq	%rsi, 13344(%rsp)
	movq	%rsi, %rax
.LBB0_461:                              # %if.end.1470
                                        #   in Loop: Header=BB0_444 Depth=3
	movl	%ebp, 292(%rsp)         # 4-byte Spill
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	%ebp, 4472(%rsp,%rcx)
	incq	%rbx
	shrl	%r12d
	movq	4984(%rsp), %rcx
	movslq	44(%rcx), %rdi
	cmpq	%rdi, %rbx
	jl	.LBB0_444
# BB#462:                               #   in Loop: Header=BB0_20 Depth=2
	movl	$222, %r9d
.LBB0_483:                              # %idata
                                        #   in Loop: Header=BB0_20 Depth=2
	xorl	%ebx, %ebx
	testl	%edi, %edi
	movl	308(%rsp), %ebp         # 4-byte Reload
	jle	.LBB0_492
# BB#484:                               # %for.body.1547.lr.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	movslq	%edi, %r10
	xorl	%esi, %esi
	testl	%edi, %edi
	movl	$0, %ebx
	je	.LBB0_490
# BB#485:                               # %overflow.checked
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r10, %r8
	andq	$-8, %r8
	xorps	%xmm0, %xmm0
	movl	$0, %esi
	pxor	%xmm1, %xmm1
	je	.LBB0_489
# BB#486:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%r14d, 384(%rsp)        # 4-byte Spill
	movq	%r9, 440(%rsp)          # 8-byte Spill
	movq	%r10, %r9
	andq	$-8, %r9
	xorps	%xmm0, %xmm0
	leaq	4476(%rsp), %r11
	xorl	%r15d, %r15d
	pxor	%xmm1, %xmm1
	movl	$1, %r12d
.LBB0_487:                              # %vector.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	%r15, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movd	%r12, %xmm3
	pslldq	$8, %xmm3               # xmm3 = zero,zero,zero,zero,zero,zero,zero,zero,xmm3[0,1,2,3,4,5,6,7]
	paddq	%xmm2, %xmm3
	movdqa	%xmm2, %xmm4
	paddq	%xmm6, %xmm4
	movdqa	%xmm2, %xmm5
	paddq	%xmm7, %xmm5
	paddq	%xmm8, %xmm2
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %r14
	shlq	$4, %r14
	movd	%xmm4, %rdx
	shlq	$4, %rdx
	pshufd	$78, %xmm4, %xmm3       # xmm3 = xmm4[2,3,0,1]
	movd	%xmm3, %rsi
	shlq	$4, %rsi
	movd	%xmm2, %rcx
	shlq	$4, %rcx
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdi
	shlq	$4, %rdi
	movd	%xmm5, %rbx
	shlq	$4, %rbx
	pshufd	$78, %xmm5, %xmm2       # xmm2 = xmm5[2,3,0,1]
	movd	%xmm2, %rbp
	shlq	$4, %rbp
	movd	(%r11), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movd	4476(%rsp,%rdx), %xmm3  # xmm3 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movd	4476(%rsp,%r14), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movd	4476(%rsp,%rsi), %xmm4  # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movd	4476(%rsp,%rbx), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movd	4476(%rsp,%rcx), %xmm4  # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	4476(%rsp,%rbp), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movd	4476(%rsp,%rdi), %xmm5  # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm2, %xmm0
	paddd	%xmm4, %xmm1
	addq	$8, %r15
	subq	$-128, %r11
	cmpq	%r15, %r9
	jne	.LBB0_487
# BB#488:                               #   in Loop: Header=BB0_20 Depth=2
	movq	%r8, %rsi
	movl	308(%rsp), %ebp         # 4-byte Reload
	leaq	6856(%rsp), %r13
	movq	440(%rsp), %r9          # 8-byte Reload
	movl	384(%rsp), %r14d        # 4-byte Reload
.LBB0_489:                              # %middle.block
                                        #   in Loop: Header=BB0_20 Depth=2
	paddd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	paddd	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%rsi, %r10
	je	.LBB0_492
.LBB0_490:                              # %for.body.1547.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rsi, %rcx
	shlq	$4, %rcx
	leaq	4476(%rsp), %rdx
	leaq	(%rcx,%rdx), %rdx
.LBB0_491:                              # %for.body.1547
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	(%rdx), %ebx
	incq	%rsi
	addq	$16, %rdx
	cmpq	%r10, %rsi
	jl	.LBB0_491
	jmp	.LBB0_492
.LBB0_476:                              #   in Loop: Header=BB0_20 Depth=2
	xorl	%ebx, %ebx
	movl	$221, %r9d
	jmp	.LBB0_492
.LBB0_443:                              #   in Loop: Header=BB0_20 Depth=2
	movl	308(%rsp), %ebp         # 4-byte Reload
.LBB0_492:                              # %for.end.1554
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r9, %r12
	imull	%r14d, %ebx
	movq	13384(%rsp), %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	jge	.LBB0_494
# BB#493:                               # %if.then.1563
                                        #   in Loop: Header=BB0_20 Depth=2
	leaq	13352(%rsp), %rdi
	leaq	13344(%rsp), %rsi
	callq	top_up_cbuf
	movq	%rax, 408(%rsp)         # 8-byte Spill
.LBB0_494:                              # %if.end.1565
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ebp, 308(%rsp)         # 4-byte Spill
	movq	408(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB0_273
# BB#495:                               # %if.end.1569
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13384(%rsp), %rax
	movq	13344(%rsp), %rsi
	movq	%rax, %rbp
	subq	%rsi, %rbp
	cmpq	%rbx, %rbp
	jge	.LBB0_496
# BB#497:                               # %if.else.1582
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	movl	%ecx, 544(%rsp)
	movq	13352(%rsp), %r13
	subq	%r13, %rax
	cmpq	%rax, %rbx
	movl	$0, %r15d
	jle	.LBB0_500
# BB#498:                               # %if.then.1598
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$.L.str.3, %edx
	movq	13472(%rsp), %rdi
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %ecx
	testq	%r15, %r15
	je	.LBB0_501
# BB#499:                               # %if.then.1598.if.end.1608_crit_edge
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	13344(%rsp), %rsi
	movq	%r15, %r13
.LBB0_500:                              # %if.end.1608
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memmove
	leaq	(%rbp,%r13), %rsi
	movl	544(%rsp), %edx
	movq	320(%rsp), %rdi         # 8-byte Reload
	leaq	544(%rsp), %rcx
	callq	sgets
	movl	$-28, %ecx
	testl	%eax, %eax
	js	.LBB0_501
# BB#502:                               # %cleanup.1621
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r13, 4464(%rsp)
	movq	13384(%rsp), %rax
	movq	%rax, 13344(%rsp)
	movq	%r13, %rsi
	leaq	6856(%rsp), %r13
	jmp	.LBB0_503
.LBB0_496:                              # %if.then.1577
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rsi, 4464(%rsp)
	leaq	(%rbx,%rsi), %rax
	movq	%rax, 13344(%rsp)
	xorl	%r15d, %r15d
.LBB0_503:                              # %if.end.1626
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4984(%rsp), %rdi
	movslq	44(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB0_517
# BB#504:                               # %for.body.1635.lr.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	testb	$1, %al
	jne	.LBB0_506
# BB#505:                               #   in Loop: Header=BB0_20 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB0_510
.LBB0_506:                              # %for.body.1635.prol
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	4476(%rsp), %ecx
	testl	%ecx, %ecx
	je	.LBB0_508
# BB#507:                               # %if.else.1645.prol
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rsi, 4464(%rsp)
	imull	%r14d, %ecx
	addq	%rcx, %rsi
	jmp	.LBB0_509
.LBB0_754:                              #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_763
.LBB0_704:                              #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, %r13
	jmp	.LBB0_737
.LBB0_707:                              #   in Loop: Header=BB0_20 Depth=2
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_712:                              #   in Loop: Header=BB0_20 Depth=2
	leaq	6856(%rsp), %r13
	jmp	.LBB0_737
.LBB0_728:                              # %if.then.168.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, 4440(%rsp)
	movl	%edx, %esi
	negl	%esi
	movl	%esi, 4444(%rsp)
.LBB0_724:                              # %vhc.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	leal	(%rsi,%rcx), %r9d
	movl	%r9d, 4448(%rsp)
	leal	(%rax,%rdx), %eax
	movl	%eax, 4444(%rsp)
	movl	%eax, 4452(%rsp)
	movl	%ecx, 4440(%rsp)
	movl	%edx, 4436(%rsp)
	movl	$0, 4432(%rsp)
	xorl	%esi, %esi
	movl	%eax, %r8d
	jmp	.LBB0_720
.LBB0_731:                              # %if.then.185.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movl	%esi, %eax
	negl	%eax
	movl	%eax, 4444(%rsp)
	movl	%r8d, 4440(%rsp)
	movl	%r8d, %ecx
	negl	%ecx
	movl	%ecx, 4436(%rsp)
.LBB0_722:                              # %hvc.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	leal	(%rax,%r8), %eax
	movl	%eax, 4452(%rsp)
	movl	%r8d, 4444(%rsp)
	leal	(%rcx,%rsi), %r9d
	movl	%r9d, 4440(%rsp)
	movl	%r9d, 4448(%rsp)
	movl	$0, 4436(%rsp)
	xorl	%edx, %edx
	movl	%r9d, %ecx
	jmp	.LBB0_720
.LBB0_734:                              # %if.then.205.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	4440(%rsp), %rcx
	movq	4448(%rsp), %rdi
	movl	%edi, %esi
	subl	%ecx, %esi
	movl	%esi, 4432(%rsp)
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rdi
	movl	%r10d, %eax
	subl	%edx, %eax
	subl	%edi, %edx
	movl	%edx, 4436(%rsp)
	movl	%eax, 4444(%rsp)
	movl	$0, 4448(%rsp)
	negl	%r10d
	movl	%r10d, 4452(%rsp)
	xorl	%edi, %edi
.LBB0_719:                              # %rrc.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	leal	(%rcx,%rsi), %ecx
	movl	%ecx, 4440(%rsp)
	leal	(%rdi,%rcx), %r9d
	movl	%r9d, 4448(%rsp)
	leal	(%rax,%rdx), %r8d
	movl	%r8d, 4444(%rsp)
	leal	(%r10,%r8), %eax
	movl	%eax, 4452(%rsp)
.LBB0_720:                              # %curve.i
                                        #   in Loop: Header=BB0_20 Depth=2
	addl	%r12d, %esi
	addl	%ebp, %edx
	addl	%r12d, %ecx
	addl	%ebp, %r8d
	addl	%r12d, %r9d
	addl	%ebp, %eax
	movl	280(%rsp), %edi         # 4-byte Reload
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	11304(%rsp), %rdi
	callq	gx_path_add_curve_notes
	movl	%eax, %r15d
	addl	4448(%rsp), %r12d
	addl	4452(%rsp), %ebp
.LBB0_737:                              # %sw.epilog.i.1418
                                        #   in Loop: Header=BB0_20 Depth=2
	addl	224(%rsp), %r12d        # 4-byte Folded Reload
	addl	220(%rsp), %ebp         # 4-byte Folded Reload
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	movl	%eax, 244(%rsp)         # 4-byte Spill
	movq	440(%rsp), %rbx         # 8-byte Reload
.LBB0_738:                              # %clist_decode_segment.exit
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%r15, %r12
	movl	%r12d, %ebp
	sarl	$31, %ebp
	andl	$21, %ebp
	movl	$22, %eax
	cmovel	%eax, %ebp
.LBB0_892:                              # %cleanup.3226
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$21, %ebp
	jg	.LBB0_951
# BB#893:                               # %cleanup.3226
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%ebp, %ebp
	movl	280(%rsp), %eax         # 4-byte Reload
	movl	292(%rsp), %ecx         # 4-byte Reload
	je	.LBB0_953
	jmp	.LBB0_894
.LBB0_951:                              # %cleanup.3226
                                        #   in Loop: Header=BB0_20 Depth=2
	cmpl	$22, %ebp
	movl	280(%rsp), %eax         # 4-byte Reload
	movl	292(%rsp), %ecx         # 4-byte Reload
	jne	.LBB0_952
.LBB0_953:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB0_20 Depth=2
	testl	%r12d, %r12d
	movq	400(%rsp), %r15         # 8-byte Reload
	jns	.LBB0_20
# BB#954:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_955
.LBB0_30:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_897:                              # %cleanup.907
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	6856(%rsp), %r13
	jmp	.LBB0_898
.LBB0_26:                               # %if.then.119
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ecx
	movl	$-12, %ecx
	movl	$0, %eax
	cmovel	%eax, %ecx
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	movl	%ebx, %r12d
	jmp	.LBB0_950
.LBB0_33:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_947:                              #   in Loop: Header=BB0_2 Depth=1
	movq	400(%rsp), %r15         # 8-byte Reload
.LBB0_955:                              # %out
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	308(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB0_956
.LBB0_142:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$6, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_671:                              # %cleanup.3226.thread1900
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$223, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movq	13472(%rsp), %r14
	movq	%r14, %rbp
	movl	308(%rsp), %r14d        # 4-byte Reload
	movq	400(%rsp), %r15         # 8-byte Reload
	leaq	6856(%rsp), %r13
	jmp	.LBB0_957
.LBB0_747:                              # %cleanup.2860
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$223, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	jmp	.LBB0_898
.LBB0_351:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, 256(%rsp)           # 4-byte Folded Spill
	movl	$217, %r12d
	jmp	.LBB0_950
.LBB0_401:                              # %read_begin_image.exit.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	13368(%rsp), %rax
	movq	%rax, 13344(%rsp)
	movl	$219, %r12d
	jmp	.LBB0_950
.LBB0_425:                              # %read_begin_image.exit1140.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	13368(%rsp), %rax
	movq	%rax, 13344(%rsp)
	movl	$220, %r12d
	jmp	.LBB0_950
.LBB0_394:                              # %if.then.1193
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$212, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	cmpl	$-15, %r12d
	movq	%r12, 408(%rsp)         # 8-byte Spill
	jne	.LBB0_395
.LBB0_898:                              # %bad_op
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	13472(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.6, %esi
	movl	$2099, %edx             # imm = 0x833
	movq	%r14, %rdi
	callq	mlprintf_file_and_line
	movq	320(%rsp), %rdi         # 8-byte Reload
	callq	stell
	movq	%rax, %rcx
	movl	13344(%rsp), %r9d
	movl	13352(%rsp), %eax
	movl	13384(%rsp), %edx
	subl	%eax, %r9d
	subl	%eax, %edx
	movl	%edx, (%rsp)
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	440(%rsp), %rdx         # 8-byte Reload
	movq	%rcx, %r8
	movl	308(%rsp), %ecx         # 4-byte Reload
	callq	errprintf
	movq	13352(%rsp), %rbx
	movl	$-100, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	jmp	.LBB0_899
	.align	16, 0x90
.LBB0_901:                              # %for.body.2901
                                        #   in Loop: Header=BB0_899 Depth=2
	movl	$.L.str.6, %esi
	movl	$2104, %edx             # imm = 0x838
	movq	%r14, %rdi
	callq	dmprintf_file_and_line
	movl	13352(%rsp), %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	movzbl	(%rbx), %edx
	movzbl	1(%rbx), %ecx
	movzbl	2(%rbx), %r8d
	movzbl	3(%rbx), %r9d
	movzbl	4(%rbx), %r10d
	movzbl	5(%rbx), %r11d
	movzbl	6(%rbx), %edi
	movzbl	7(%rbx), %ebp
	movzbl	8(%rbx), %eax
	movzbl	9(%rbx), %esi
	movl	%esi, 40(%rsp)
	movl	%eax, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%edi, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	errprintf
	addq	$10, %rbx
.LBB0_899:                              # %bad_op
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	13384(%rsp), %rbx
	jb	.LBB0_901
.LBB0_900:                              #   in Loop: Header=BB0_2 Depth=1
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r12d
.LBB0_950:                              # %cleanup.3226.thread1891
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%r12d, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movq	400(%rsp), %r15         # 8-byte Reload
	movl	308(%rsp), %r14d        # 4-byte Reload
	movq	408(%rsp), %r12         # 8-byte Reload
.LBB0_956:                              # %out
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	13472(%rsp), %rbp
	.align	16, 0x90
.LBB0_957:                              # %out
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	4424(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_959
# BB#958:                               # %if.then.3239
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.10, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 4416(%rsp)
.LBB0_959:                              # %if.end.3244
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	$0, 4408(%rsp)
	movq	1808(%rsp), %rbx
	testq	%rbx, %rbx
	je	.LBB0_966
	.align	16, 0x90
.LBB0_960:                              # %if.end.i.1725
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	1816(%rsp), %rbx
	je	.LBB0_961
# BB#962:                               # %if.end.14.i.i.1734
                                        #   in Loop: Header=BB0_960 Depth=2
	movq	24(%rbx), %rax
	movq	32(%rbx), %rcx
	movq	%rax, 1808(%rsp)
	movq	%rcx, 32(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
	jmp	.LBB0_963
	.align	16, 0x90
.LBB0_961:                              # %if.then.2.i.i.1726
                                        #   in Loop: Header=BB0_960 Depth=2
	movq	$0, 1816(%rsp)
	movq	$0, 1808(%rsp)
.LBB0_963:                              # %dequeue_compositor.exit.i.1739
                                        #   in Loop: Header=BB0_960 Depth=2
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movq	%r13, %rcx
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB0_965
# BB#964:                               # %do.cond.i.1741
                                        #   in Loop: Header=BB0_960 Depth=2
	movl	$.L.str.22, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movq	1808(%rsp), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	jne	.LBB0_960
.LBB0_965:                              # %drop_compositor_queue.exit1743
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%r12d, %r12d
	cmovnel	%r12d, %eax
	movl	%eax, %r12d
.LBB0_966:                              # %if.end.3254
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.1, %esi
	movq	392(%rsp), %rdi         # 8-byte Reload
	callq	rc_decrement_cs
	movl	$.L.str.11, %esi
	leaq	11000(%rsp), %rdi
	callq	gx_cpath_free
	movl	$.L.str.11, %esi
	leaq	11304(%rsp), %rdi
	callq	gx_path_free
	movq	8160(%rsp), %rdi
	testq	%rdi, %rdi
	movq	416(%rsp), %rbx         # 8-byte Reload
	je	.LBB0_968
# BB#967:                               # %if.then.3257
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	gx_pattern_cache_free
	movq	$0, 8160(%rsp)
.LBB0_968:                              # %if.end.3260
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	10168(%rbx), %rax
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	%r13, %rdi
	callq	gs_imager_state_release
	movq	10168(%rbx), %rax
	movq	48(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	movq	432(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rbp)
	movq	13408(%rsp), %rbx
	cmpq	424(%rsp), %rbx         # 8-byte Folded Reload
	je	.LBB0_976
# BB#969:                               # %if.then.3273
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	56(%rbx), %rax
	cmpq	$1, %rax
	jne	.LBB0_970
# BB#972:                               # %if.else.3313
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, 84(%rbx)
	je	.LBB0_974
# BB#973:                               # %if.then.3315
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	callq	*1176(%rbx)
.LBB0_974:                              # %if.end.3318
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	24(%rbx), %rdi
	movl	$.L.str.13, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB0_975
	.align	16, 0x90
.LBB0_970:                              # %do.end.3285
                                        #   in Loop: Header=BB0_2 Depth=1
	decq	%rax
	movq	%rax, 56(%rbx)
	jne	.LBB0_975
# BB#971:                               # %do.end.3298
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	64(%rbx), %rdi
	movl	$.L.str.12, %edx
	movq	%rbx, %rsi
	callq	*72(%rbx)
	movq	$0, 13408(%rsp)
	.align	16, 0x90
.LBB0_975:                              # %if.end.3323
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	424(%rsp), %rax         # 8-byte Reload
	movq	%rax, 13408(%rsp)
	movq	%rax, %rbx
.LBB0_976:                              # %if.end.3324
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%r12d, %r12d
	movq	440(%rsp), %rdx         # 8-byte Reload
	jns	.LBB0_980
# BB#977:                               # %if.then.3327
	cmpq	$0, 1824(%rsp)
	je	.LBB0_978
# BB#979:                               # %if.then.3331
	leaq	1824(%rsp), %rdi
	callq	term_patch_fill_state
	movl	%r12d, %eax
	jmp	.LBB0_990
.LBB0_987:                              # %if.end.3358
	cmpq	$0, 1824(%rsp)
	je	.LBB0_989
# BB#988:                               # %if.then.3362
	leaq	1824(%rsp), %rdi
	callq	term_patch_fill_state
.LBB0_989:                              # %if.end.3364
	movl	$.L.str, %edx
	movq	%r15, %rdi
	movq	272(%rsp), %rsi         # 8-byte Reload
	callq	*24(%r15)
	movl	%r13d, %eax
	jmp	.LBB0_990
.LBB0_272:                              # %cleanup.907.thread1828
	movq	%rax, 408(%rsp)         # 8-byte Spill
.LBB0_273:                              # %cleanup.3226.thread1898
	movq	408(%rsp), %rax         # 8-byte Reload
	jmp	.LBB0_990
.LBB0_978:
	movl	%r12d, %eax
.LBB0_990:                              # %cleanup.3367
	movl	%eax, 304(%rsp)         # 4-byte Spill
.LBB0_991:                              # %cleanup.3367
	movl	304(%rsp), %eax         # 4-byte Reload
	addq	$13416, %rsp            # imm = 0x3468
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clist_playback_band, .Lfunc_end0-clist_playback_band
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_32
	.quad	.LBB0_203
	.quad	.LBB0_202
	.quad	.LBB0_216
	.quad	.LBB0_217
	.quad	.LBB0_222
	.quad	.LBB0_216
	.quad	.LBB0_217
	.quad	.LBB0_222
	.quad	.LBB0_226
	.quad	.LBB0_234
	.quad	.LBB0_308
	.quad	.LBB0_309
	.quad	.LBB0_319
	.quad	.LBB0_680
	.quad	.LBB0_739
.LJTI0_1:
	.quad	.LBB0_749
	.quad	.LBB0_747
	.quad	.LBB0_747
	.quad	.LBB0_751
	.quad	.LBB0_747
	.quad	.LBB0_747
	.quad	.LBB0_753
	.quad	.LBB0_747
	.quad	.LBB0_747
	.quad	.LBB0_764
.LJTI0_2:
	.quad	.LBB0_686
	.quad	.LBB0_686
	.quad	.LBB0_687
	.quad	.LBB0_687
	.quad	.LBB0_688
	.quad	.LBB0_688
	.quad	.LBB0_689
.LJTI0_3:
	.quad	.LBB0_696
	.quad	.LBB0_698
	.quad	.LBB0_700
	.quad	.LBB0_702
	.quad	.LBB0_703
	.quad	.LBB0_706
	.quad	.LBB0_711
	.quad	.LBB0_718
	.quad	.LBB0_721
	.quad	.LBB0_723
	.quad	.LBB0_725
	.quad	.LBB0_726
	.quad	.LBB0_727
	.quad	.LBB0_730
	.quad	.LBB0_733
	.quad	.LBB0_736
	.quad	.LBB0_738
	.quad	.LBB0_699
.LJTI0_4:
	.quad	.LBB0_396
	.quad	.LBB0_321
	.quad	.LBB0_322
	.quad	.LBB0_359
	.quad	.LBB0_323
	.quad	.LBB0_348
	.quad	.LBB0_349
	.quad	.LBB0_943
	.quad	.LBB0_350
	.quad	.LBB0_352
	.quad	.LBB0_400
	.quad	.LBB0_424
	.quad	.LBB0_463
	.quad	.LBB0_430
	.quad	.LBB0_522
.LJTI0_5:
	.quad	.LBB0_525
	.quad	.LBB0_542
	.quad	.LBB0_645
	.quad	.LBB0_654
	.quad	.LBB0_660
	.quad	.LBB0_658
	.quad	.LBB0_661
	.quad	.LBB0_659
	.quad	.LBB0_655
	.quad	.LBB0_657
.LJTI0_6:
	.quad	.LBB0_567
	.quad	.LBB0_569
	.quad	.LBB0_573
	.quad	.LBB0_566
	.quad	.LBB0_579
	.quad	.LBB0_592
	.quad	.LBB0_602
.LJTI0_7:
	.quad	.LBB0_903
	.quad	.LBB0_911
	.quad	.LBB0_911
	.quad	.LBB0_918
	.quad	.LBB0_923
	.quad	.LBB0_923
	.quad	.LBB0_924
	.quad	.LBB0_933
.LJTI0_8:
	.quad	.LBB0_213
	.quad	.LBB0_212
	.quad	.LBB0_211
	.quad	.LBB0_210
	.quad	.LBB0_209
	.quad	.LBB0_208
	.quad	.LBB0_207
	.quad	.LBB0_206
.LJTI0_9:
	.quad	.LBB0_945
	.quad	.LBB0_35
	.quad	.LBB0_80
	.quad	.LBB0_90
	.quad	.LBB0_130
	.quad	.LBB0_946
	.quad	.LBB0_141
	.quad	.LBB0_944
	.quad	.LBB0_187
	.quad	.LBB0_898
	.quad	.LBB0_898
	.quad	.LBB0_950
	.quad	.LBB0_189
	.quad	.LBB0_188
	.quad	.LBB0_200
	.quad	.LBB0_201
.LJTI0_10:
	.quad	.LBB0_194
	.quad	.LBB0_197
	.quad	.LBB0_193
	.quad	.LBB0_196
	.quad	.LBB0_192
	.quad	.LBB0_195
	.quad	.LBB0_191
.LJTI0_11:
	.quad	.LBB0_144
	.quad	.LBB0_151
	.quad	.LBB0_158
	.quad	.LBB0_160

	.text
	.align	16, 0x90
	.type	top_up_cbuf,@function
top_up_cbuf:                            # @top_up_cbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rsi
	movq	32(%rbx), %rdx
	subq	%rsi, %rdx
	movl	8(%rbx), %eax
	cmpq	%rax, %rdx
	movq	40(%rbx), %rax
	jge	.LBB1_1
# BB#2:                                 # %if.end
	movq	(%rbx), %rdi
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB1_5
# BB#3:                                 # %land.lhs.true
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB1_4
.LBB1_5:                                # %if.end.21
	leaq	(%rdi,%rdx), %r15
	callq	memmove
	movl	32(%rbx), %edx
	subl	%r15d, %edx
	movl	%edx, 12(%rsp)
	movq	40(%rbx), %rdi
	leaq	12(%rsp), %rcx
	movq	%r15, %rsi
	callq	sgets
	movl	%eax, 48(%rbx)
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB1_9
# BB#6:                                 # %if.then.38
	cmpq	32(%rbx), %r15
	jae	.LBB1_7
# BB#8:                                 # %if.end.45
	movb	$0, (%r15)
	movl	$1, 12(%rsp)
	movl	$1, %eax
.LBB1_9:                                # %if.end.46
	movl	%eax, %eax
	addq	%rax, %r15
	movq	%r15, 32(%rbx)
	movq	(%rbx), %rax
	movl	8(%rbx), %ecx
	leaq	-53(%rcx,%rax), %rcx
	cmpq	%r15, %rcx
	cmovbeq	%rcx, %r15
	movq	%r15, 24(%rbx)
	movq	%rax, (%r14)
	jmp	.LBB1_10
.LBB1_1:                                # %if.then
	movq	8(%rax), %rdi
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-12, %eax
	jmp	.LBB1_11
.LBB1_4:                                # %if.then.16
	movl	$-1, 48(%rbx)
.LBB1_10:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB1_11
.LBB1_7:                                # %if.then.42
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movq	(%rbx), %rax
	movb	$0, (%rax)
	movl	$-12, %eax
.LBB1_11:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	top_up_cbuf, .Lfunc_end1-top_up_cbuf
	.cfi_endproc

	.align	16, 0x90
	.type	read_set_misc_map,@function
read_set_misc_map:                      # @read_set_misc_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 80
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	16(%rsi), %rax
	movl	%edi, %ebp
	shrl	$4, %ebp
	andl	$3, %ebp
	andl	$15, %edi
	cmpl	$6, %edi
	ja	.LBB2_52
# BB#1:                                 # %entry
	jmpq	*.LJTI2_0(,%rdi,8)
.LBB2_2:                                # %do.body.1.i
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	488(%r14), %r13
	testq	%r13, %r13
	je	.LBB2_5
# BB#3:                                 # %lor.lhs.false.i
	cmpq	$1, (%r13)
	jg	.LBB2_5
# BB#4:                                 # %lor.lhs.false.5.i
	cmpq	%r12, 8(%r13)
	je	.LBB2_9
.LBB2_5:                                # %if.then.i
	movl	$st_transfer_map, %esi
	movl	$.L.str.15, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB2_60
# BB#6:                                 # %do.body.13.i
	movq	$1, (%r13)
	movq	%r12, 8(%r13)
	movq	$rc_free_struct_only, 16(%r13)
	movq	488(%r14), %rax
	testq	%rax, %rax
	je	.LBB2_8
# BB#7:                                 # %do.end.32.i
	decq	(%rax)
.LBB2_8:                                # %if.end.39.i
	movq	%r13, 488(%r14)
.LBB2_9:                                # %do.end.44.i
	movq	440(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB2_12
# BB#10:                                # %do.end.54.i
	decq	(%rsi)
	jne	.LBB2_12
# BB#11:                                # %do.end.71.i
	movq	8(%rsi), %rdi
	movl	$.L.str.16, %edx
	callq	*16(%rsi)
	movq	$0, 440(%r14)
.LBB2_12:                               # %do.end.93.i
	movq	$0, 440(%r14)
	movl	$-1, 432(%r14)
	movq	456(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB2_15
# BB#13:                                # %do.end.104.i
	decq	(%rsi)
	jne	.LBB2_15
# BB#14:                                # %do.end.121.i
	movq	8(%rsi), %rdi
	movl	$.L.str.17, %edx
	callq	*16(%rsi)
	movq	$0, 456(%r14)
.LBB2_15:                               # %do.end.143.i
	movq	$0, 456(%r14)
	movl	$-1, 448(%r14)
	movq	472(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB2_18
# BB#16:                                # %do.end.154.i
	decq	(%rsi)
	jne	.LBB2_18
# BB#17:                                # %do.end.171.i
	movq	8(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*16(%rsi)
	movq	$0, 472(%r14)
.LBB2_18:                               # %do.end.193.i
	movq	$0, 472(%r14)
	movl	$-1, 464(%r14)
	xorl	%r15d, %r15d
	jmp	.LBB2_31
.LBB2_19:                               # %sw.bb.197.i
	leaq	440(%r14), %rbx
	leaq	432(%r14), %r15
	jmp	.LBB2_23
.LBB2_20:                               # %sw.bb.202.i
	leaq	456(%r14), %rbx
	leaq	448(%r14), %r15
	jmp	.LBB2_23
.LBB2_21:                               # %sw.bb.207.i
	leaq	472(%r14), %rbx
	leaq	464(%r14), %r15
	jmp	.LBB2_23
.LBB2_22:                               # %sw.bb.212.i
	leaq	488(%r14), %rbx
	leaq	480(%r14), %r15
.LBB2_23:                               # %do.body.219.i
	movq	(%rbx), %r13
	testq	%r13, %r13
	je	.LBB2_27
# BB#24:                                # %lor.lhs.false.221.i
	cmpq	$1, (%r13)
	jg	.LBB2_27
# BB#25:                                # %lor.lhs.false.225.i
	cmpq	%r12, 8(%r13)
	je	.LBB2_26
.LBB2_27:                               # %if.then.229.i
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$st_transfer_map, %esi
	movl	$.L.str.19, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB2_60
# BB#28:                                # %do.body.238.i
	movq	$1, (%r13)
	movq	%r12, 8(%r13)
	movq	$rc_free_struct_only, 16(%r13)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_30
# BB#29:                                # %do.end.258.i
	decq	(%rax)
.LBB2_30:                               # %if.end.264.i
	movq	%r13, (%rbx)
	jmp	.LBB2_31
.LBB2_35:                               # %do.end.277.i
	movl	$.L.str.20, %edx
	leaq	416(%r14), %rbx
	jmp	.LBB2_37
.LBB2_36:                               # %do.end.281.i
	movl	$.L.str.21, %edx
	leaq	424(%r14), %rbx
.LBB2_37:                               # %alloc.i
	movq	(%rbx), %r13
	testl	%ebp, %ebp
	je	.LBB2_38
# BB#42:                                # %do.body.319.i
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%r13, %r13
	je	.LBB2_45
# BB#43:                                # %lor.lhs.false.321.i
	cmpq	$1, (%r13)
	jg	.LBB2_45
# BB#44:                                # %lor.lhs.false.325.i
	cmpq	%r12, 8(%r13)
	je	.LBB2_49
.LBB2_45:                               # %if.then.329.i
	movl	$st_transfer_map, %esi
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB2_60
# BB#46:                                # %do.body.338.i
	movq	$1, (%r13)
	movq	%r12, 8(%r13)
	movq	$rc_free_struct_only, 16(%r13)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_48
# BB#47:                                # %do.end.358.i
	decq	(%rax)
.LBB2_48:                               # %if.end.364.i
	movq	%r13, (%rbx)
.LBB2_49:                               # %do.end.370.i
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	jne	.LBB2_50
# BB#51:                                # %if.then.372.i
	movq	%r13, %rdi
	callq	gx_set_identity_transfer
	movq	(%rsp), %rax            # 8-byte Reload
	jmp	.LBB2_52
.LBB2_38:                               # %do.body.284.i
	testq	%r13, %r13
	je	.LBB2_41
# BB#39:                                # %do.end.290.i
	decq	(%r13)
	jne	.LBB2_41
# BB#40:                                # %do.end.303.i
	movq	8(%r13), %rdi
	movq	%r13, %rsi
	movq	%r14, %r15
	movq	%rax, %r14
	callq	*16(%r13)
	movq	%r14, %rax
	movq	%r15, %r14
	movq	$0, (%rbx)
.LBB2_41:                               # %do.end.317.i
	movq	$0, (%rbx)
.LBB2_52:                               # %if.end.thread
	leaq	1(%rax), %rbx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB2_53
.LBB2_26:
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB2_31:                               # %transfer2.i
	cmpl	$2, %ebp
	jne	.LBB2_32
.LBB2_50:
	movq	(%rsp), %rax            # 8-byte Reload
	movq	$gs_mapped_transfer, 24(%r13)
	addq	$56, %r13
	movl	$512, %r12d             # imm = 0x200
	jmp	.LBB2_33
.LBB2_32:                               # %if.then.272.i
	movq	%r13, %rdi
	callq	gx_set_identity_transfer
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	(%rsp), %rax            # 8-byte Reload
.LBB2_33:                               # %if.end
	leaq	1(%rax), %rbx
	testq	%r15, %r15
	je	.LBB2_53
# BB#34:                                # %if.else
	movq	%rax, %rcx
	movzbl	(%rcx), %eax
	movl	%eax, (%r15)
	movq	%rcx, %rax
.LBB2_53:                               # %if.end.9
	cmpl	$2, %ebp
	jne	.LBB2_54
# BB#55:                                # %if.then.12
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	%rax, %r14
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	32(%r15), %rax
	subq	%rbx, %rax
	movl	%r12d, %ebp
	cmpq	%rbp, %rax
	jge	.LBB2_56
# BB#57:                                # %if.else.i
	subl	%eax, %r12d
	movl	%r12d, 20(%rsp)
	movl	%eax, %ebp
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove
	movq	40(%r15), %rdi
	addq	%rbp, %r13
	leaq	20(%rsp), %rcx
	movq	%r13, %rsi
	movl	%r12d, %edx
	callq	sgets
	movq	32(%r15), %rbx
	jmp	.LBB2_58
.LBB2_54:
	movq	8(%rsp), %r15           # 8-byte Reload
	jmp	.LBB2_59
.LBB2_56:                               # %if.then.i.14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove
	leaq	1(%r14,%rbp), %rbx
.LBB2_58:                               # %if.end.14
	movq	(%rsp), %r14            # 8-byte Reload
.LBB2_59:                               # %if.end.14
	movq	%r14, %rdi
	callq	gx_imager_set_effective_xfer
	movq	%rbx, 16(%r15)
	xorl	%eax, %eax
.LBB2_60:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	read_set_misc_map, .Lfunc_end2-read_set_misc_map
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_19
	.quad	.LBB2_20
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_35
	.quad	.LBB2_36

	.text
	.align	16, 0x90
	.type	cmd_read_rect,@function
cmd_read_rect:                          # @cmd_read_rect
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdx), %r10d
	testb	%r10b, %r10b
	js	.LBB3_2
# BB#1:                                 # %if.then
	leaq	1(%rdx), %r8
	jmp	.LBB3_4
.LBB3_2:                                # %if.else
	incq	%rdx
	andl	$127, %r10d
	movl	$7, %ecx
	movq	%rdx, %r8
	.align	16, 0x90
.LBB3_3:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %rdx
	movzbl	(%rdx), %r9d
	movl	%r9d, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %r10d
	leaq	1(%rdx), %r8
	addl	$7, %ecx
	testb	%r9b, %r9b
	js	.LBB3_3
.LBB3_4:                                # %cmd_get_w.exit
	movl	%r10d, (%rsi)
	movl	%edi, %r9d
	andl	$15, %r9d
	je	.LBB3_6
# BB#5:                                 # %if.then.5
	movl	%edi, %eax
	shrl	$2, %eax
	andl	$3, %eax
	movl	4(%rsi), %ecx
	leal	-2(%rax,%rcx), %eax
	jmp	.LBB3_10
.LBB3_6:                                # %do.body.8
	movzbl	(%r8), %eax
	addq	$2, %rdx
	testb	%al, %al
	js	.LBB3_8
# BB#7:                                 # %if.then.12
	movl	%eax, 4(%rsi)
	movq	%rdx, %r8
	jmp	.LBB3_11
.LBB3_8:                                # %if.else.16
	andl	$127, %eax
	movl	$7, %ecx
	movq	%rdx, %r8
	.align	16, 0x90
.LBB3_9:                                # %for.cond.i.71
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r8), %r10d
	movl	%r10d, %edx
	andl	$127, %edx
	shll	%cl, %edx
	orl	%edx, %eax
	incq	%r8
	addl	$7, %ecx
	testb	%r10b, %r10b
	js	.LBB3_9
.LBB3_10:                               # %cmd_get_w.exit73
	movl	%eax, 4(%rsi)
.LBB3_11:                               # %do.body.24
	movzbl	(%r8), %edx
	testb	%dl, %dl
	js	.LBB3_13
# BB#12:                                # %if.then.28
	leaq	1(%r8), %rax
	jmp	.LBB3_15
.LBB3_13:                               # %if.else.31
	incq	%r8
	andl	$127, %edx
	movl	$7, %ecx
	movq	%r8, %rax
	.align	16, 0x90
.LBB3_14:                               # %for.cond.i.55
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r8
	movzbl	(%r8), %r10d
	movl	%r10d, %eax
	andl	$127, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	leaq	1(%r8), %rax
	addl	$7, %ecx
	testb	%r10b, %r10b
	js	.LBB3_14
.LBB3_15:                               # %cmd_get_w.exit57
	movl	%edx, 8(%rsi)
	testl	%r9d, %r9d
	je	.LBB3_17
# BB#16:                                # %if.then.40
	andl	$3, %edi
	movl	12(%rsi), %ecx
	leal	-2(%rdi,%rcx), %ecx
	movl	%ecx, 12(%rsi)
	retq
.LBB3_17:                               # %do.body.45
	movzbl	(%rax), %edx
	addq	$2, %r8
	testb	%dl, %dl
	js	.LBB3_19
# BB#18:                                # %if.then.49
	movl	%edx, 12(%rsi)
	movq	%r8, %rax
	retq
.LBB3_19:                               # %if.else.53
	andl	$127, %edx
	movl	$7, %ecx
	movq	%r8, %rax
	.align	16, 0x90
.LBB3_20:                               # %for.cond.i.39
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %r8d
	movl	%r8d, %edi
	andl	$127, %edi
	shll	%cl, %edi
	orl	%edi, %edx
	incq	%rax
	addl	$7, %ecx
	testb	%r8b, %r8b
	js	.LBB3_20
# BB#21:                                # %cmd_get_w.exit41
	movl	%edx, 12(%rsi)
	retq
.Lfunc_end3:
	.size	cmd_read_rect, .Lfunc_end3-cmd_read_rect
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_read_short_bits,@function
cmd_read_short_bits:                    # @cmd_read_short_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 80
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %r15d
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movq	80(%rsp), %rsi
	movq	32(%rdi), %rax
	subq	%rsi, %rax
	movl	%r12d, %r13d
	cmpq	%r13, %rax
	jge	.LBB4_1
# BB#2:                                 # %if.else.i
	subl	%eax, %r12d
	movl	%r12d, 20(%rsp)
	movl	%eax, %r13d
	movq	%rdi, %r14
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memmove
	movq	40(%r14), %rdi
	leaq	(%r13,%rbp), %rsi
	leaq	20(%rsp), %rcx
	movl	%r12d, %edx
	callq	sgets
	movq	32(%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	jmp	.LBB4_3
.LBB4_1:                                # %if.then.i
	movq	%rbp, %rdi
	movq	%rsi, %r12
	movq	%r13, %rdx
	callq	memmove
	addq	%r13, %r12
	movq	%r12, (%rsp)            # 8-byte Spill
.LBB4_3:                                # %cmd_read_data.exit
	cmpl	%ebx, 16(%rsp)          # 4-byte Folded Reload
	jae	.LBB4_16
# BB#4:                                 # %cmd_read_data.exit
	cmpl	$2, %r15d
	jl	.LBB4_16
# BB#5:                                 # %while.body.lr.ph
	movl	16(%rsp), %ecx          # 4-byte Reload
	movslq	%ecx, %r13
	movl	%ebx, %r12d
	imull	%r15d, %ebx
	subq	%r12, %rbx
	movl	%r15d, %eax
	imull	%ecx, %eax
	movslq	%eax, %r14
	subq	%r13, %r14
	movl	%ecx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB4_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%r15d
	leaq	(%rbp,%rbx), %rdi
	leaq	(%rbp,%r14), %rsi
	cmpl	$6, 16(%rsp)            # 4-byte Folded Reload
	jbe	.LBB4_7
# BB#8:                                 # %sw.default
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r13, %rdx
	callq	memmove
	jmp	.LBB4_15
	.align	16, 0x90
.LBB4_7:                                # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_9:                                # %sw.bb
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	5(%rbp,%r14), %al
	movb	%al, 5(%rbp,%rbx)
.LBB4_10:                               # %sw.bb.12
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	4(%rbp,%r14), %al
	movb	%al, 4(%rbp,%rbx)
.LBB4_11:                               # %sw.bb.15
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	3(%rbp,%r14), %al
	movb	%al, 3(%rbp,%rbx)
.LBB4_12:                               # %sw.bb.18
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	2(%rbp,%r14), %al
	movb	%al, 2(%rbp,%rbx)
.LBB4_13:                               # %sw.bb.21
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	1(%rbp,%r14), %al
	movb	%al, 1(%rbp,%rbx)
.LBB4_14:                               # %sw.bb.24
                                        #   in Loop: Header=BB4_6 Depth=1
	movb	(%rsi), %al
	movb	%al, (%rdi)
.LBB4_15:                               # %while.cond.backedge
                                        #   in Loop: Header=BB4_6 Depth=1
	subq	%r12, %rbx
	subq	%r13, %r14
	cmpl	$1, %r15d
	jg	.LBB4_6
.LBB4_16:                               # %if.end
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmd_read_short_bits, .Lfunc_end4-cmd_read_short_bits
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_15
	.quad	.LBB4_14
	.quad	.LBB4_13
	.quad	.LBB4_12
	.quad	.LBB4_11
	.quad	.LBB4_10
	.quad	.LBB4_9

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	execute_compositor_queue,@function
execute_compositor_queue:               # @execute_compositor_queue
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
	subq	$40, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 96
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
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %rbx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	96(%rsp), %r12
	testq	%r12, %r12
	je	.LBB5_19
# BB#1:                                 # %while.body.lr.ph
	movq	%rcx, %rbp
	movq	120(%rsp), %r15
	.align	16, 0x90
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r12), %r13
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rcx
	cmpq	(%rbx), %rcx
	je	.LBB5_3
# BB#5:                                 # %if.else.3.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	24(%r12), %rax
	cmpq	%r12, %rcx
	je	.LBB5_6
# BB#7:                                 # %if.else.7.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, 24(%r13)
	jmp	.LBB5_8
	.align	16, 0x90
.LBB5_3:                                # %if.then.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$-28, %eax
	cmpq	%r12, %rcx
	jne	.LBB5_20
# BB#4:                                 # %if.then.2.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	$0, (%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	$0, (%rax)
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_6:                                # %if.then.5.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, (%rcx)
.LBB5_8:                                # %if.end.i
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	%r12, (%rbx)
	je	.LBB5_9
# BB#10:                                # %if.else.12.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r13, 32(%rax)
	jmp	.LBB5_11
	.align	16, 0x90
.LBB5_9:                                # %if.then.10.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	32(%r12), %rax
	movq	%rax, (%rbx)
.LBB5_11:                               # %if.end.14.i
                                        #   in Loop: Header=BB5_2 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%r12)
.LBB5_12:                               # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	128(%rsp), %eax
	orl	%eax, 16(%r12)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r14
	movq	%r14, 32(%rsp)
	movq	(%r12), %rax
	movq	%r12, %rdi
	movl	104(%rsp), %esi
	movl	112(%rsp), %edx
	movq	%rbp, %rcx
	callq	*40(%rax)
	testl	%eax, %eax
	js	.LBB5_20
# BB#13:                                # %if.end.i.12
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	%r12, %rdx
	movq	%rbp, %rcx
	movq	%r15, %r8
	movq	16(%rsp), %r9           # 8-byte Reload
	callq	*1464(%r14)
	testl	%eax, %eax
	js	.LBB5_20
# BB#14:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpq	(%rax), %rdx
	je	.LBB5_17
# BB#15:                                # %if.then.5.i.14
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$1, 56(%rdx)
	jne	.LBB5_17
# BB#16:                                # %if.then.7.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rdx, (%rax)
.LBB5_17:                               # %if.end.12.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%r12), %rax
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r15, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB5_20
# BB#18:                                # %cleanup
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	$.L.str.4, %edx
	movq	%rbx, %r14
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
	movq	%r14, %rbx
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	testq	%r13, %r13
	movq	%r13, %r12
	jne	.LBB5_2
.LBB5_19:
	xorl	%eax, %eax
.LBB5_20:                               # %return
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	execute_compositor_queue, .Lfunc_end5-execute_compositor_queue
	.cfi_endproc

	.align	16, 0x90
	.type	read_ht_segment,@function
read_ht_segment:                        # @read_ht_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 96
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	16(%r15), %rbx
	movq	%rbx, 32(%rsp)
	movl	(%r12), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movzbl	(%rbx), %r13d
	testb	%r13b, %r13b
	js	.LBB6_1
# BB#2:                                 # %if.else
	movq	%r8, 16(%rsp)           # 8-byte Spill
	incq	%rbx
	movq	%rbx, 32(%rsp)
	jmp	.LBB6_3
.LBB6_1:                                # %if.then
	movq	%r8, 16(%rsp)           # 8-byte Spill
	leaq	28(%rsp), %rdi
	movq	%rbx, %rsi
	callq	enc_u_get_uint
	movq	%rax, %rbx
	movq	%rbx, 32(%rsp)
	movl	28(%rsp), %r13d
.LBB6_3:                                # %do.end
	movq	24(%r15), %rax
	subq	%rbx, %rax
	movslq	%r13d, %rbp
	xorl	%r14d, %r14d
	cmpq	%rbp, %rax
	jge	.LBB6_7
# BB#4:                                 # %if.then.6
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	top_up_cbuf
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_17
# BB#5:                                 # %if.end.11
	movq	32(%r15), %rax
	movq	32(%rsp), %rbx
	subq	%rbx, %rax
	cmpq	%rbp, %rax
	jge	.LBB6_7
# BB#6:                                 # %if.then.18
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	errprintf
	movl	$-1, %eax
	jmp	.LBB6_18
.LBB6_7:                                # %if.end.23
	cmpq	$0, 16(%r12)
	je	.LBB6_8
# BB#9:                                 # %if.else.32
	movl	4(%r12), %ecx
	addl	%r13d, %ecx
	movl	$-1, %eax
	cmpl	(%r12), %ecx
	ja	.LBB6_18
# BB#10:                                # %if.end.37
	movq	8(%r12), %rdi
	movl	%r13d, %ebp
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 8(%r12)
	movl	4(%r12), %eax
	addl	%r13d, %eax
	movl	%eax, 4(%r12)
	cmpl	24(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB6_16
# BB#11:                                # %if.end.37.if.end.48_crit_edge
	movq	16(%r12), %rdx
	jmp	.LBB6_12
.LBB6_8:                                # %if.then.27
	movl	$-1, %eax
	cmpl	24(%rsp), %r13d         # 4-byte Folded Reload
	movq	%rbx, %rdx
	jne	.LBB6_18
.LBB6_12:                               # %if.end.48
	testq	%rdx, %rdx
	je	.LBB6_16
# BB#13:                                # %if.then.51
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %r8
	callq	gx_ht_read_and_install
	movl	%eax, %r14d
	movq	16(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB6_15
# BB#14:                                # %if.then.56
	movl	$.L.str.23, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
.LBB6_15:                               # %if.end.60
	movq	$0, (%r12)
.LBB6_16:                               # %if.end.63
	movl	%r13d, %eax
	addq	%rax, %rbx
	movq	%rbx, 16(%r15)
.LBB6_17:                               # %cleanup
	movl	%r14d, %eax
.LBB6_18:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	read_ht_segment, .Lfunc_end6-read_ht_segment
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clist_playback_band(cbuf_storage)"
	.size	.L.str, 34

	.type	clist_playback_band.cls_initial,@object # @clist_playback_band.cls_initial
	.section	.rodata,"a",@progbits
	.align	8
clist_playback_band.cls_initial:
	.zero	16,255
	.quad	gx_dc_type_data_none
	.zero	328
	.zero	8
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	8
	.zero	16,255
	.zero	1312
	.zero	16
	.long	252                     # 0xfc
	.short	0                       # 0x0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16383                   # 0x3fff
	.zero	4
	.zero	16
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.zero	4
	.size	clist_playback_band.cls_initial, 1808

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clist_playback_band"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clist_playback_band(data_bits)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"clist image_data"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"read_create_compositor"
	.size	.L.str.4, 23

	.type	clist_playback_band.op_num_operands,@object # @clist_playback_band.op_num_operands
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
clist_playback_band.op_num_operands:
	.asciz	"\002\002\001\001\004\006\006\006\004\004\004\004\002\002\000"
	.size	clist_playback_band.op_num_operands, 16

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"clist_render_band"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/gxclrast.c"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Bad op %02x band y0 = %d file pos %ld buf pos %d/%d\n"
	.size	.L.str.7, 53

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%4d:"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\n"
	.size	.L.str.9, 52

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"clist_playback_band(ht_buff)"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clist_render_band exit"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gxclrast(target compositor)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gxclrast discard compositor"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Clist I/O error: cbp past end of buffer\n"
	.size	.L.str.14, 41

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cmd_select_map(default_transfer)"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cmd_select_map(red)"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cmd_select_map(green)"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"cmd_select_map(blue)"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cmd_select_map(transfer)"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"cmd_select_map(black generation)"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"cmd_select_map(undercolor removal)"
	.size	.L.str.21, 35

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"free_compositor"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"read_alloc_ht_buff"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	" *** ht segment size doesn't fit in buffer ***\n"
	.size	.L.str.24, 48

	.type	.L__func__.read_set_color_space,@object # @__func__.read_set_color_space
.L__func__.read_set_color_space:
	.asciz	"read_set_color_space"
	.size	.L__func__.read_set_color_space, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Failed to find ICC profile during clist read"
	.size	.L.str.25, 45

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"indexed map"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"color_space indexed table"
	.size	.L.str.27, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"clist put_params"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cmd_resize_halftone"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"cmd_create_dev_ht"
	.size	.L.str.30, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
