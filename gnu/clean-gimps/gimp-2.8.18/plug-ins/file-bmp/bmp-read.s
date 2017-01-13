	.text
	.file	"bmp-read.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4582978272962677414     # double 0.025399999999999999
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.globl	ReadBMP
	.align	16, 0x90
	.type	ReadBMP,@function
ReadBMP:                                # @ReadBMP
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str, %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	$0, -208(%rbp)
	movl	$-1, -980(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, filename
	movq	filename, %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.1, %rdi
	movl	%eax, -1072(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movl	-1068(%rbp), %esi       # 4-byte Reload
	movl	-1072(%rbp), %edx       # 4-byte Reload
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	movq	-1088(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_2:                                # %if.end
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-982(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	callq	fread
	cmpq	$0, %rax
	je	.LBB0_9
# BB#3:                                 # %lor.lhs.false
	movabsq	$.L.str.3, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
# BB#4:                                 # %lor.lhs.false.15
	movabsq	$.L.str.4, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
# BB#5:                                 # %lor.lhs.false.19
	movabsq	$.L.str.5, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
# BB#6:                                 # %lor.lhs.false.23
	movabsq	$.L.str.6, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
# BB#7:                                 # %lor.lhs.false.27
	movabsq	$.L.str.7, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
# BB#8:                                 # %lor.lhs.false.31
	movabsq	$.L.str.8, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB0_10
.LBB0_9:                                # %if.then.35
	movq	-56(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movl	-1116(%rbp), %esi       # 4-byte Reload
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_10:                               # %if.end.39
	jmp	.LBB0_11
.LBB0_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.3, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB0_12
	jmp	.LBB0_17
.LBB0_12:                               # %while.body
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$12, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_14
# BB#13:                                # %if.then.46
	movq	-56(%rbp), %rdi
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movl	-1140(%rbp), %esi       # 4-byte Reload
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_14:                               # %if.end.50
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-982(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_16
# BB#15:                                # %if.then.54
	movq	-56(%rbp), %rdi
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movl	-1164(%rbp), %esi       # 4-byte Reload
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_16:                               # %if.end.58
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_17:                               # %while.end
	movl	$12, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.62
	movq	-56(%rbp), %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movl	-1188(%rbp), %esi       # 4-byte Reload
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_19:                               # %if.end.66
	leaq	-192(%rbp), %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_File_Head+8
	addq	$4, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_File_Head+16
	addq	$6, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_File_Head+18
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	ToL
	movl	$4, %edx
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-192(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_File_Head+24
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_21
# BB#20:                                # %if.then.79
	movq	-56(%rbp), %rdi
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movl	-1212(%rbp), %esi       # 4-byte Reload
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_21:                               # %if.end.83
	leaq	-192(%rbp), %rdi
	callq	ToL
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_File_Head+32
	cmpq	$12, Bitmap_File_Head+32
	jne	.LBB0_25
# BB#22:                                # %if.then.89
	movl	$8, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.94
	movq	-56(%rbp), %rdi
	movq	%rdi, -1232(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1236(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movl	-1236(%rbp), %esi       # 4-byte Reload
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_24:                               # %if.end.98
	leaq	-192(%rbp), %rdi
	callq	ToS
	leaq	-192(%rbp), %rdi
	movswq	%ax, %rcx
	movq	%rcx, Bitmap_Head
	addq	$2, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movswq	%ax, %rdi
	movq	%rdi, Bitmap_Head+8
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+16
	addq	$6, %rcx
	movq	%rcx, %rdi
	callq	ToS
	xorl	%esi, %esi
	movl	$48, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-1040(%rbp), %rcx
	movw	%ax, Bitmap_Head+18
	movq	$0, Bitmap_Head+24
	movq	$0, Bitmap_Head+32
	movq	$0, Bitmap_Head+48
	movq	$0, Bitmap_Head+40
	movq	$0, Bitmap_Head+56
	movq	$0, Bitmap_Head+64
	movl	$0, Bitmap_Head+72
	movl	$0, Bitmap_Head+76
	movl	$0, Bitmap_Head+80
	movl	$0, Bitmap_Head+84
	movq	%rcx, %rdi
	callq	memset
	movl	$3, -204(%rbp)
	jmp	.LBB0_59
.LBB0_25:                               # %if.else
	cmpq	$40, Bitmap_File_Head+32
	jne	.LBB0_40
# BB#26:                                # %if.then.111
	movl	$36, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_28
# BB#27:                                # %if.then.116
	movq	-56(%rbp), %rdi
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movl	-1260(%rbp), %esi       # 4-byte Reload
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_28:                               # %if.end.120
	leaq	-192(%rbp), %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_Head
	addq	$4, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+8
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+16
	addq	$10, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+18
	addq	$12, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+24
	addq	$16, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+32
	addq	$20, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+40
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+48
	addq	$28, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+56
	addq	$32, %rcx
	movq	%rcx, %rdi
	callq	ToL
	xorl	%esi, %esi
	movl	$48, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-1040(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+64
	movl	$0, Bitmap_Head+72
	movl	$0, Bitmap_Head+76
	movl	$0, Bitmap_Head+80
	movl	$0, Bitmap_Head+84
	movl	$4, -204(%rbp)
	movq	%rcx, %rdi
	callq	memset
	cmpq	$3, Bitmap_Head+24
	jne	.LBB0_32
# BB#29:                                # %if.then.151
	movl	$12, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	-64(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.156
	movq	-56(%rbp), %rdi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movl	-1284(%rbp), %esi       # 4-byte Reload
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_31:                               # %if.end.160
	leaq	-192(%rbp), %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movl	%eax, Bitmap_Head+72
	addq	$4, %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movl	%eax, Bitmap_Head+76
	addq	$8, %rdi
	callq	ToL
	movabsq	$Bitmap_Head, %rdi
	addq	$72, %rdi
	movl	$3, %edx
	leaq	-1040(%rbp), %rsi
	movl	%eax, Bitmap_Head+80
	callq	ReadChannelMasks
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB0_39
.LBB0_32:                               # %if.else.169
	cmpq	$0, Bitmap_Head+24
	jne	.LBB0_34
# BB#33:                                # %if.then.172
	leaq	-1040(%rbp), %rsi
	movw	Bitmap_Head+18, %ax
	movzwl	%ax, %edi
	callq	setMasksDefault
	jmp	.LBB0_38
.LBB0_34:                               # %if.else.174
	cmpq	$2, Bitmap_Head+24
	je	.LBB0_37
# BB#35:                                # %land.lhs.true
	cmpq	$1, Bitmap_Head+24
	je	.LBB0_37
# BB#36:                                # %if.then.179
	movq	-56(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.11, %rdi
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	gettext
	movq	Bitmap_Head+24, %r8
	movq	filename, %rdi
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	movq	%r8, -1336(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movl	-1316(%rbp), %esi       # 4-byte Reload
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	movq	-1336(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
.LBB0_37:                               # %if.end.183
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.184
	jmp	.LBB0_39
.LBB0_39:                               # %if.end.185
	jmp	.LBB0_58
.LBB0_40:                               # %if.else.186
	cmpq	$56, Bitmap_File_Head+32
	jb	.LBB0_45
# BB#41:                                # %land.lhs.true.189
	cmpq	$64, Bitmap_File_Head+32
	ja	.LBB0_45
# BB#42:                                # %if.then.192
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	Bitmap_File_Head+32, %rcx
	subq	$4, %rcx
	movq	-64(%rbp), %rsi
	movq	%rsi, -1344(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_44
# BB#43:                                # %if.then.197
	movq	-56(%rbp), %rdi
	movq	%rdi, -1352(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movl	-1356(%rbp), %esi       # 4-byte Reload
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_44:                               # %if.end.201
	leaq	-192(%rbp), %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_Head
	addq	$4, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+8
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+16
	addq	$10, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+18
	addq	$12, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+24
	addq	$16, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+32
	addq	$20, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+40
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+48
	addq	$28, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+56
	addq	$32, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+64
	addq	$36, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+72
	addq	$40, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+76
	addq	$44, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+80
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	ToL
	movabsq	$Bitmap_Head, %rcx
	addq	$72, %rcx
	movl	$4, %edx
	leaq	-1040(%rbp), %rsi
	movl	%eax, Bitmap_Head+84
	movl	$4, -204(%rbp)
	movq	%rcx, %rdi
	callq	ReadChannelMasks
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB0_57
.LBB0_45:                               # %if.else.240
	cmpq	$108, Bitmap_File_Head+32
	je	.LBB0_47
# BB#46:                                # %lor.lhs.false.243
	cmpq	$124, Bitmap_File_Head+32
	jne	.LBB0_55
.LBB0_47:                               # %if.then.246
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	movq	Bitmap_File_Head+32, %rcx
	subq	$4, %rcx
	movq	-64(%rbp), %rsi
	movq	%rsi, -1384(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	-1384(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB0_49
# BB#48:                                # %if.then.252
	movq	-56(%rbp), %rdi
	movq	%rdi, -1392(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movl	-1396(%rbp), %esi       # 4-byte Reload
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_49:                               # %if.end.256
	leaq	-192(%rbp), %rdi
	callq	ToL
	leaq	-192(%rbp), %rdi
	movslq	%eax, %rcx
	movq	%rcx, Bitmap_Head
	addq	$4, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+8
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+16
	addq	$10, %rcx
	movq	%rcx, %rdi
	callq	ToS
	leaq	-192(%rbp), %rcx
	movw	%ax, Bitmap_Head+18
	addq	$12, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+24
	addq	$16, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+32
	addq	$20, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+40
	addq	$24, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+48
	addq	$28, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+56
	addq	$32, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movslq	%eax, %rdi
	movq	%rdi, Bitmap_Head+64
	addq	$36, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+72
	addq	$40, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+76
	addq	$44, %rcx
	movq	%rcx, %rdi
	callq	ToL
	leaq	-192(%rbp), %rcx
	movl	%eax, Bitmap_Head+80
	addq	$48, %rcx
	movq	%rcx, %rdi
	callq	ToL
	movl	%eax, Bitmap_Head+84
	movl	$4, -204(%rbp)
	cmpq	$3, Bitmap_Head+24
	jne	.LBB0_51
# BB#50:                                # %if.then.295
	movabsq	$Bitmap_Head, %rax
	addq	$72, %rax
	movl	$4, %edx
	leaq	-1040(%rbp), %rsi
	movq	%rax, %rdi
	callq	ReadChannelMasks
	movl	%eax, -1412(%rbp)       # 4-byte Spill
	jmp	.LBB0_54
.LBB0_51:                               # %if.else.298
	cmpq	$0, Bitmap_Head+24
	jne	.LBB0_53
# BB#52:                                # %if.then.301
	leaq	-1040(%rbp), %rsi
	movw	Bitmap_Head+18, %ax
	movzwl	%ax, %edi
	callq	setMasksDefault
.LBB0_53:                               # %if.end.303
	jmp	.LBB0_54
.LBB0_54:                               # %if.end.304
	jmp	.LBB0_56
.LBB0_55:                               # %if.else.305
	movq	-56(%rbp), %rdi
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -1428(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1424(%rbp), %rdi       # 8-byte Reload
	movl	-1428(%rbp), %esi       # 4-byte Reload
	movq	-1440(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_56:                               # %if.end.309
	jmp	.LBB0_57
.LBB0_57:                               # %if.end.310
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.311
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.312
	movzwl	Bitmap_Head+18(%rip), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$2, %ecx
	movl	%eax, -1444(%rbp)       # 4-byte Spill
	movl	%ecx, -1448(%rbp)       # 4-byte Spill
	jb	.LBB0_60
	jmp	.LBB0_102
.LBB0_102:                              # %if.end.312
	movl	-1444(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	je	.LBB0_60
	jmp	.LBB0_103
.LBB0_103:                              # %if.end.312
	movl	-1444(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	je	.LBB0_60
	jmp	.LBB0_104
.LBB0_104:                              # %if.end.312
	movl	-1444(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -1460(%rbp)       # 4-byte Spill
	je	.LBB0_60
	jmp	.LBB0_105
.LBB0_105:                              # %if.end.312
	movl	-1444(%rbp), %eax       # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -1464(%rbp)       # 4-byte Spill
	je	.LBB0_60
	jmp	.LBB0_106
.LBB0_106:                              # %if.end.312
	movl	-1444(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	jne	.LBB0_61
	jmp	.LBB0_60
.LBB0_60:                               # %sw.bb
	jmp	.LBB0_62
.LBB0_61:                               # %sw.default
	movq	-56(%rbp), %rdi
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1484(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movl	-1484(%rbp), %esi       # 4-byte Reload
	movq	-1496(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_62:                               # %sw.epilog
	movq	Bitmap_File_Head+24, %rax
	subq	Bitmap_File_Head+32, %rax
	subq	$14, %rax
	movslq	-204(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%eax, %esi
	movl	%esi, -196(%rbp)
	cmpq	$0, Bitmap_Head+56
	jne	.LBB0_65
# BB#63:                                # %land.lhs.true.323
	movzwl	Bitmap_Head+18, %eax
	cmpl	$8, %eax
	jg	.LBB0_65
# BB#64:                                # %if.then.327
	movl	$1, %eax
	movzwl	Bitmap_Head+18, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	movq	%rdx, Bitmap_Head+56
	movl	%edx, %eax
	movl	%eax, -196(%rbp)
.LBB0_65:                               # %if.end.331
	cmpl	$256, -196(%rbp)        # imm = 0x100
	jle	.LBB0_67
# BB#66:                                # %if.then.334
	movl	$256, -196(%rbp)        # imm = 0x100
.LBB0_67:                               # %if.end.335
	cmpq	$0, Bitmap_Head+8
	je	.LBB0_69
# BB#68:                                # %lor.lhs.false.338
	cmpq	$0, Bitmap_Head
	jne	.LBB0_70
.LBB0_69:                               # %if.then.341
	movq	-56(%rbp), %rdi
	movq	%rdi, -1504(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1508(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movl	-1508(%rbp), %esi       # 4-byte Reload
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_70:                               # %if.end.345
	cmpq	$0, Bitmap_Head
	jl	.LBB0_72
# BB#71:                                # %lor.lhs.false.348
	cmpq	$-2147483648, Bitmap_Head+8 # imm = 0xFFFFFFFF80000000
	jne	.LBB0_73
.LBB0_72:                               # %if.then.351
	movq	-56(%rbp), %rdi
	movq	%rdi, -1528(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1532(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1528(%rbp), %rdi       # 8-byte Reload
	movl	-1532(%rbp), %esi       # 4-byte Reload
	movq	-1544(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_73:                               # %if.end.355
	movzwl	Bitmap_Head+16, %eax
	cmpl	$1, %eax
	je	.LBB0_75
# BB#74:                                # %if.then.359
	movq	-56(%rbp), %rdi
	movq	%rdi, -1552(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1556(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	movl	-1556(%rbp), %esi       # 4-byte Reload
	movq	-1568(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_75:                               # %if.end.363
	cmpq	$256, Bitmap_Head+56    # imm = 0x100
	jbe	.LBB0_78
# BB#76:                                # %land.lhs.true.366
	movzwl	Bitmap_Head+18, %eax
	cmpl	$8, %eax
	jg	.LBB0_78
# BB#77:                                # %if.then.370
	movq	-56(%rbp), %rdi
	movq	%rdi, -1576(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1580(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movl	-1580(%rbp), %esi       # 4-byte Reload
	movq	-1592(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_78:                               # %if.end.374
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	Bitmap_Head, %rcx
	movzwl	Bitmap_Head+18, %edx
	movl	%edx, -1596(%rbp)       # 4-byte Spill
	cltd
	movl	-1596(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	ja	.LBB0_83
# BB#79:                                # %lor.lhs.false.380
	movq	Bitmap_Head, %rax
	cmpq	$0, Bitmap_Head+8
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jge	.LBB0_81
# BB#80:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	Bitmap_Head+8, %rcx
	movq	%rcx, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB0_82
.LBB0_81:                               # %cond.false
	movq	Bitmap_Head+8, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
.LBB0_82:                               # %cond.end
	movq	-1616(%rbp), %rax       # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %esi
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
	cqto
	movq	-1624(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cqto
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	idivq	%rdi
	movq	-1608(%rbp), %r8        # 8-byte Reload
	cmpq	%rax, %r8
	jbe	.LBB0_84
.LBB0_83:                               # %if.then.388
	movq	-56(%rbp), %rdi
	movq	%rdi, -1640(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -1644(%rbp)       # 4-byte Spill
	callq	gettext
	movq	filename, %rdi
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movl	-1644(%rbp), %esi       # 4-byte Reload
	movq	-1656(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_99
.LBB0_84:                               # %if.end.392
	movl	$32, %eax
	movl	%eax, %ecx
	movq	Bitmap_Head, %rdx
	movzwl	Bitmap_Head+18, %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	shlq	$2, %rax
	addq	$4, %rax
	movl	%eax, %edi
	movl	%edi, -200(%rbp)
	movzwl	Bitmap_Head+18, %edi
	cmpl	$8, %edi
	jg	.LBB0_88
# BB#85:                                # %if.then.401
	leaq	-208(%rbp), %r8
	leaq	-976(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movl	-196(%rbp), %edx
	movl	-204(%rbp), %ecx
	callq	ReadColorMap
	cmpl	$0, %eax
	jne	.LBB0_87
# BB#86:                                # %if.then.405
	jmp	.LBB0_99
.LBB0_87:                               # %if.end.406
	jmp	.LBB0_88
.LBB0_88:                               # %if.end.407
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	Bitmap_File_Head+24, %rsi
	callq	fseek
	movq	-64(%rbp), %rdi
	movq	Bitmap_Head, %rsi
	movl	%esi, %edx
	cmpq	$0, Bitmap_Head+8
	movl	%eax, -1660(%rbp)       # 4-byte Spill
	movq	%rdi, -1672(%rbp)       # 8-byte Spill
	movl	%edx, -1676(%rbp)       # 4-byte Spill
	jge	.LBB0_90
# BB#89:                                # %cond.true.412
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	Bitmap_Head+8, %rcx
	movq	%rcx, -1688(%rbp)       # 8-byte Spill
	jmp	.LBB0_91
.LBB0_90:                               # %cond.false.414
	movq	Bitmap_Head+8, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
.LBB0_91:                               # %cond.end.415
	movq	-1688(%rbp), %rax       # 8-byte Reload
	leaq	-1040(%rbp), %rcx
	leaq	-976(%rbp), %rdx
	movl	%eax, %esi
	movq	Bitmap_Head+56, %rax
	movl	%eax, %edi
	movzwl	Bitmap_Head+18, %r9d
	movq	Bitmap_Head+24, %rax
	movl	%eax, %r8d
	movl	-200(%rbp), %r10d
	movl	-208(%rbp), %r11d
	movq	-56(%rbp), %rax
	movq	-1672(%rbp), %rbx       # 8-byte Reload
	movl	%edi, -1692(%rbp)       # 4-byte Spill
	movq	%rbx, %rdi
	movl	-1676(%rbp), %r14d      # 4-byte Reload
	movl	%esi, -1696(%rbp)       # 4-byte Spill
	movl	%r14d, %esi
	movl	-1696(%rbp), %r15d      # 4-byte Reload
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	movl	%r15d, %edx
	movq	-1704(%rbp), %r12       # 8-byte Reload
	movq	%rcx, -1712(%rbp)       # 8-byte Spill
	movq	%r12, %rcx
	movl	-1692(%rbp), %r13d      # 4-byte Reload
	movl	%r8d, -1716(%rbp)       # 4-byte Spill
	movl	%r13d, %r8d
	movl	-1716(%rbp), %r14d      # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	-1712(%rbp), %r10       # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	%rax, 32(%rsp)
	callq	ReadImage
	movl	%eax, -980(%rbp)
	cmpl	$0, -980(%rbp)
	jge	.LBB0_93
# BB#92:                                # %if.then.426
	jmp	.LBB0_99
.LBB0_93:                               # %if.end.427
	cmpq	$0, Bitmap_Head+40
	jbe	.LBB0_96
# BB#94:                                # %land.lhs.true.430
	cmpq	$0, Bitmap_Head+48
	jbe	.LBB0_96
# BB#95:                                # %if.then.433
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movq	Bitmap_Head+40(%rip), %xmm1 # xmm1 = mem[0],zero
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_2(%rip), %xmm3   # xmm3 = [4.503600e+15,1.934281e+25]
	subpd	%xmm3, %xmm1
	pshufd	$78, %xmm1, %xmm4       # xmm4 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm4
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm4
	movsd	%xmm4, -1048(%rbp)
	movq	Bitmap_Head+48(%rip), %xmm1 # xmm1 = mem[0],zero
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -1056(%rbp)
	movl	-980(%rbp), %edi
	movsd	-1048(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1056(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movl	%eax, -1720(%rbp)       # 4-byte Spill
.LBB0_96:                               # %if.end.439
	cmpq	$0, Bitmap_Head+8
	jge	.LBB0_98
# BB#97:                                # %if.then.442
	movl	$1, %esi
	movl	-980(%rbp), %edi
	callq	gimp_image_flip
	movl	%eax, -1724(%rbp)       # 4-byte Spill
.LBB0_98:                               # %if.end.444
	jmp	.LBB0_99
.LBB0_99:                               # %out
	cmpq	$0, -64(%rbp)
	je	.LBB0_101
# BB#100:                               # %if.then.446
	movq	-64(%rbp), %rdi
	callq	fclose
	movl	%eax, -1728(%rbp)       # 4-byte Spill
.LBB0_101:                              # %if.end.448
	movl	-980(%rbp), %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ReadBMP, .Lfunc_end0-ReadBMP
	.cfi_endproc

	.align	16, 0x90
	.type	ToL,@function
ToL:                                    # @ToL
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	2(%rdi), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %ecx
	shll	$24, %ecx
	orl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ToL, .Lfunc_end1-ToL
	.cfi_endproc

	.align	16, 0x90
	.type	ToS,@function
ToS:                                    # @ToS
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	movzbl	1(%rdi), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movw	%ax, %dx
	movswl	%dx, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ToS, .Lfunc_end2-ToS
	.cfi_endproc

	.align	16, 0x90
	.type	ReadChannelMasks,@function
ReadChannelMasks:                       # @ReadChannelMasks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB3_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edx
	movslq	-28(%rbp), %rax
	imulq	$12, %rax, %rax
	addq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB3_3:                                # %for.cond.9
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32, -40(%rbp)
	jge	.LBB3_10
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-24(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB3_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=2
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.14
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-24(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -24(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_3
.LBB3_10:                               # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, %eax
	movl	-36(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm0
	movslq	-28(%rbp), %rdx
	imulq	$12, %rdx, %rdx
	addq	-16(%rbp), %rdx
	movss	%xmm0, 8(%rdx)
# BB#11:                                # %for.inc.20
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_12:                               # %for.end.22
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ReadChannelMasks, .Lfunc_end3-ReadChannelMasks
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1106771968              # float 31
.LCPI4_1:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	setMasksDefault,@function
setMasksDefault:                        # @setMasksDefault
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movq	%rsi, -16(%rbp)
	movzwl	-2(%rbp), %edi
	movl	%edi, %ecx
	subl	$16, %ecx
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_6
.LBB4_6:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_7
.LBB4_7:                                # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB4_4
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	$16711680, (%rax)       # imm = 0xFF0000
	movq	-16(%rbp), %rax
	movl	$16, 4(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$65280, 12(%rax)        # imm = 0xFF00
	movq	-16(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$255, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb.21
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	$16711680, (%rax)       # imm = 0xFF0000
	movq	-16(%rbp), %rax
	movl	$16, 4(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$65280, 12(%rax)        # imm = 0xFF00
	movq	-16(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$255, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	jmp	.LBB4_5
.LBB4_3:                                # %sw.bb.46
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	$31744, (%rax)          # imm = 0x7C00
	movq	-16(%rbp), %rax
	movl	$10, 4(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$992, 12(%rax)          # imm = 0x3E0
	movq	-16(%rbp), %rax
	movl	$5, 16(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 20(%rax)
	movq	-16(%rbp), %rax
	movl	$31, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movss	%xmm0, 44(%rax)
	jmp	.LBB4_5
.LBB4_4:                                # %sw.default
	jmp	.LBB4_5
.LBB4_5:                                # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end4:
	.size	setMasksDefault, .Lfunc_end4-setMasksDefault
	.cfi_endproc

	.align	16, 0x90
	.type	ReadColorMap,@function
ReadColorMap:                           # @ReadColorMap
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$2, -28(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	$0, -44(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_10
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movb	-46(%rbp), %dl
	movslq	-44(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movb	%dl, (%rsi)
	movb	-47(%rbp), %dl
	movslq	-44(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movb	-48(%rbp), %dl
	movslq	-44(%rbp), %rsi
	imulq	$3, %rsi, %rsi
	addq	-24(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movq	-40(%rbp), %rsi
	cmpl	$0, (%rsi)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-48(%rbp), %eax
	movzbl	-47(%rbp), %edx
	cmpl	%edx, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movzbl	-47(%rbp), %eax
	movzbl	-46(%rbp), %ecx
	cmpl	%ecx, %eax
	sete	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB5_7:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_1
.LBB5_9:                                # %for.end
	movl	$1, -4(%rbp)
.LBB5_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ReadColorMap, .Lfunc_end5-ReadColorMap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636737291354636288     # double 100
.LCPI6_1:
	.quad	4643176031446892544     # double 255
.LCPI6_2:
	.quad	4602678819172646912     # double 0.5
.LCPI6_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ReadImage,@function
ReadImage:                              # @ReadImage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1312, %rsp             # imm = 0x520
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r14d, -60(%rbp)
	movl	%ebx, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB6_10
# BB#1:                                 # %lor.lhs.false
	cmpl	$8, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %land.lhs.true
	cmpl	$1, -60(%rbp)
	je	.LBB6_10
.LBB6_3:                                # %lor.lhs.false.3
	cmpl	$4, -56(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %land.lhs.true.5
	cmpl	$2, -60(%rbp)
	je	.LBB6_10
.LBB6_5:                                # %lor.lhs.false.7
	cmpl	$16, -56(%rbp)
	jne	.LBB6_7
# BB#6:                                 # %land.lhs.true.9
	cmpl	$3, -60(%rbp)
	je	.LBB6_10
.LBB6_7:                                # %lor.lhs.false.11
	cmpl	$32, -56(%rbp)
	jne	.LBB6_9
# BB#8:                                 # %land.lhs.true.13
	cmpl	$3, -60(%rbp)
	je	.LBB6_10
.LBB6_9:                                # %if.then
	movq	-88(%rbp), %rdi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.14, %rdi
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.13, %rcx
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movl	-1036(%rbp), %esi       # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -20(%rbp)
	jmp	.LBB6_157
.LBB6_10:                               # %if.end
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -1040(%rbp)       # 4-byte Spill
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_158
.LBB6_158:                              # %if.end
	movl	-1040(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1048(%rbp)       # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_159
.LBB6_159:                              # %if.end
	movl	-1040(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_160
.LBB6_160:                              # %if.end
	movl	-1040(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -1056(%rbp)       # 4-byte Spill
	je	.LBB6_11
	jmp	.LBB6_161
.LBB6_161:                              # %if.end
	movl	-1040(%rbp), %eax       # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	je	.LBB6_11
	jmp	.LBB6_162
.LBB6_162:                              # %if.end
	movl	-1040(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	jne	.LBB6_19
	jmp	.LBB6_11
.LBB6_11:                               # %sw.bb
	movl	$0, -1012(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB6_13
# BB#12:                                # %if.then.17
	movl	$1, -1016(%rbp)
	movq	$4, -984(%rbp)
	jmp	.LBB6_14
.LBB6_13:                               # %if.else
	movl	$0, -1016(%rbp)
	movq	$3, -984(%rbp)
.LBB6_14:                               # %if.end.18
	jmp	.LBB6_20
.LBB6_15:                               # %sw.bb.19
	cmpl	$0, -68(%rbp)
	je	.LBB6_17
# BB#16:                                # %if.then.20
	movl	$1, -1012(%rbp)
	movl	$2, -1016(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.21
	movl	$2, -1012(%rbp)
	movl	$4, -1016(%rbp)
.LBB6_18:                               # %if.end.22
	movq	$1, -984(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %sw.default
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -20(%rbp)
	jmp	.LBB6_157
.LBB6_20:                               # %sw.epilog
	cmpl	$0, -36(%rbp)
	jl	.LBB6_22
# BB#21:                                # %lor.lhs.false.25
	cmpl	$262144, -36(%rbp)      # imm = 0x40000
	jle	.LBB6_23
.LBB6_22:                               # %if.then.27
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -20(%rbp)
	jmp	.LBB6_157
.LBB6_23:                               # %if.end.29
	cmpl	$0, -40(%rbp)
	jl	.LBB6_25
# BB#24:                                # %lor.lhs.false.31
	cmpl	$262144, -40(%rbp)      # imm = 0x40000
	jle	.LBB6_26
.LBB6_25:                               # %if.then.33
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movl	-40(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -20(%rbp)
	jmp	.LBB6_157
.LBB6_26:                               # %if.end.35
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movl	-1012(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -156(%rbp)
	movl	$.L.str.18, %edx
	movl	%edx, %edi
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	callq	gettext
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-1016(%rbp), %r8d
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movl	-1068(%rbp), %edi       # 4-byte Reload
	movl	%esi, -1072(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movl	-1072(%rbp), %r9d       # 4-byte Reload
	callq	gimp_layer_new
	movl	%eax, -160(%rbp)
	movl	-156(%rbp), %edi
	movq	filename(%rip), %rsi
	callq	gimp_image_set_filename
	movl	-156(%rbp), %edi
	movl	-160(%rbp), %esi
	movl	$-1, %edx
	movl	-1072(%rbp), %ecx       # 4-byte Reload
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	callq	gimp_image_insert_layer
	movl	-160(%rbp), %edi
	movl	%eax, -1080(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -168(%rbp)
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	movq	-984(%rbp), %r10
	imulq	%r10, %rax
	movq	%rax, %rdi
	callq	g_malloc0
	movq	%rax, -176(%rbp)
	movslq	-64(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -192(%rbp)
	movq	-168(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	movq	-984(%rbp), %rdi
	imulq	%rdi, %rax
	movq	%rax, -976(%rbp)
	movl	-40(%rbp), %ecx
	decl	%ecx
	movl	%ecx, -152(%rbp)
	movl	$0, -1000(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -1004(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -1084(%rbp)       # 4-byte Spill
	movl	%edx, -1088(%rbp)       # 4-byte Spill
	je	.LBB6_67
	jmp	.LBB6_163
.LBB6_163:                              # %if.end.35
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	je	.LBB6_67
	jmp	.LBB6_164
.LBB6_164:                              # %if.end.35
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	je	.LBB6_67
	jmp	.LBB6_165
.LBB6_165:                              # %if.end.35
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	je	.LBB6_53
	jmp	.LBB6_166
.LBB6_166:                              # %if.end.35
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	je	.LBB6_41
	jmp	.LBB6_167
.LBB6_167:                              # %if.end.35
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jne	.LBB6_145
	jmp	.LBB6_27
.LBB6_27:                               # %sw.bb.51
	jmp	.LBB6_28
.LBB6_28:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
	movl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	je	.LBB6_40
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB6_28 Depth=1
	movq	-176(%rbp), %rax
	movslq	-152(%rbp), %rcx
	imulq	-976(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movl	$0, -148(%rbp)
.LBB6_30:                               # %for.cond
                                        #   Parent Loop BB6_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_35
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB6_30 Depth=2
	movl	-148(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	ToL
	movl	%eax, -1020(%rbp)
	movq	-80(%rbp), %rcx
	movl	(%rcx), %esi
	andl	%esi, %eax
	movb	4(%rcx), %r8b
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	movb	%r8b, %cl
	shrl	%cl, %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-1120(%rbp), %rdx       # 8-byte Reload
	movss	8(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r9
	incq	%r9
	movq	%r9, -184(%rbp)
	movb	%cl, (%rdi)
	movl	-1020(%rbp), %eax
	movq	-80(%rbp), %rdi
	movl	12(%rdi), %esi
	andl	%esi, %eax
	movb	16(%rdi), %cl
	shrl	%cl, %eax
	movl	%eax, %r9d
	cvtsi2sdq	%r9, %xmm0
	mulsd	%xmm1, %xmm0
	movss	20(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r9
	incq	%r9
	movq	%r9, -184(%rbp)
	movb	%cl, (%rdi)
	movl	-1020(%rbp), %eax
	movq	-80(%rbp), %rdi
	movl	24(%rdi), %esi
	andl	%esi, %eax
	movb	28(%rdi), %cl
	shrl	%cl, %eax
	movl	%eax, %r9d
	cvtsi2sdq	%r9, %xmm0
	mulsd	%xmm1, %xmm0
	movss	32(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r9
	addq	$1, %r9
	movq	%r9, -184(%rbp)
	movb	%cl, (%rdi)
	cmpq	$3, -984(%rbp)
	jle	.LBB6_33
# BB#32:                                # %if.then.103
                                        #   in Loop: Header=BB6_30 Depth=2
	movl	-1020(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%edx, %eax
	movb	40(%rcx), %sil
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	movb	%sil, %cl
	shrl	%cl, %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movss	44(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -184(%rbp)
	movb	%cl, (%r8)
.LBB6_33:                               # %if.end.119
                                        #   in Loop: Header=BB6_30 Depth=2
	jmp	.LBB6_34
.LBB6_34:                               # %for.inc
                                        #   in Loop: Header=BB6_30 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_30
.LBB6_35:                               # %for.end
                                        #   in Loop: Header=BB6_28 Depth=1
	cmpl	$0, -152(%rbp)
	jne	.LBB6_37
# BB#36:                                # %if.then.122
	jmp	.LBB6_40
.LBB6_37:                               # %if.end.123
                                        #   in Loop: Header=BB6_28 Depth=1
	movl	$5, %eax
	movl	-152(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -152(%rbp)
	movl	-1000(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1000(%rbp)
	movl	-1000(%rbp), %ecx
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1132(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_39
# BB#38:                                # %if.then.127
                                        #   in Loop: Header=BB6_28 Depth=1
	cvtsi2sdl	-1000(%rbp), %xmm0
	cvtsi2sdl	-1004(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1136(%rbp)       # 4-byte Spill
.LBB6_39:                               # %if.end.132
                                        #   in Loop: Header=BB6_28 Depth=1
	jmp	.LBB6_28
.LBB6_40:                               # %while.end
	jmp	.LBB6_147
.LBB6_41:                               # %sw.bb.133
	jmp	.LBB6_42
.LBB6_42:                               # %while.cond.134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_44 Depth 2
	movl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	je	.LBB6_52
# BB#43:                                # %while.body.139
                                        #   in Loop: Header=BB6_42 Depth=1
	movq	-176(%rbp), %rax
	movslq	-152(%rbp), %rcx
	imulq	-976(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movl	$0, -148(%rbp)
.LBB6_44:                               # %for.cond.143
                                        #   Parent Loop BB6_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_47
# BB#45:                                # %for.body.146
                                        #   in Loop: Header=BB6_44 Depth=2
	imull	$3, -148(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-184(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)
	movb	%sil, (%rcx)
	imull	$3, -148(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-184(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)
	movb	%sil, (%rcx)
	imull	$3, -148(%rbp), %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-184(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)
	movb	%sil, (%rcx)
# BB#46:                                # %for.inc.161
                                        #   in Loop: Header=BB6_44 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_44
.LBB6_47:                               # %for.end.163
                                        #   in Loop: Header=BB6_42 Depth=1
	cmpl	$0, -152(%rbp)
	jne	.LBB6_49
# BB#48:                                # %if.then.166
	jmp	.LBB6_52
.LBB6_49:                               # %if.end.167
                                        #   in Loop: Header=BB6_42 Depth=1
	movl	$5, %eax
	movl	-152(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -152(%rbp)
	movl	-1000(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1000(%rbp)
	movl	-1000(%rbp), %ecx
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1140(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_51
# BB#50:                                # %if.then.173
                                        #   in Loop: Header=BB6_42 Depth=1
	cvtsi2sdl	-1000(%rbp), %xmm0
	cvtsi2sdl	-1004(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1144(%rbp)       # 4-byte Spill
.LBB6_51:                               # %if.end.178
                                        #   in Loop: Header=BB6_42 Depth=1
	jmp	.LBB6_42
.LBB6_52:                               # %while.end.179
	jmp	.LBB6_147
.LBB6_53:                               # %sw.bb.180
	jmp	.LBB6_54
.LBB6_54:                               # %while.cond.181
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_56 Depth 2
	movl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	je	.LBB6_66
# BB#55:                                # %while.body.186
                                        #   in Loop: Header=BB6_54 Depth=1
	movq	-176(%rbp), %rax
	movslq	-152(%rbp), %rcx
	imulq	-976(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movl	$0, -148(%rbp)
.LBB6_56:                               # %for.cond.190
                                        #   Parent Loop BB6_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_61
# BB#57:                                # %for.body.193
                                        #   in Loop: Header=BB6_56 Depth=2
	movl	-148(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movq	-192(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rdi
	callq	ToS
	movw	%ax, -962(%rbp)
	movzwl	-962(%rbp), %esi
	movq	-80(%rbp), %rcx
	movl	(%rcx), %r8d
	andl	%r8d, %esi
	movb	4(%rcx), %r9b
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	movb	%r9b, %cl
	shrl	%cl, %esi
	movl	%esi, %edx
	cvtsi2sdq	%rdx, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	movss	8(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r10
	incq	%r10
	movq	%r10, -184(%rbp)
	movb	%cl, (%rdi)
	movzwl	-962(%rbp), %esi
	movq	-80(%rbp), %rdi
	movl	12(%rdi), %r8d
	andl	%r8d, %esi
	movb	16(%rdi), %cl
	shrl	%cl, %esi
	movl	%esi, %r10d
	cvtsi2sdq	%r10, %xmm0
	mulsd	%xmm1, %xmm0
	movss	20(%rdi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r10
	incq	%r10
	movq	%r10, -184(%rbp)
	movb	%cl, (%rdi)
	movzwl	-962(%rbp), %esi
	movq	-80(%rbp), %rdi
	movl	24(%rdi), %r8d
	andl	%r8d, %esi
	movb	28(%rdi), %cl
	shrl	%cl, %esi
	movl	%esi, %r10d
	cvtsi2sdq	%r10, %xmm0
	mulsd	%xmm1, %xmm0
	movss	32(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r10
	addq	$1, %r10
	movq	%r10, -184(%rbp)
	movb	%cl, (%rdi)
	cmpq	$3, -984(%rbp)
	jle	.LBB6_59
# BB#58:                                # %if.then.248
                                        #   in Loop: Header=BB6_56 Depth=2
	movzwl	-962(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%edx, %eax
	movb	40(%rcx), %sil
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	movb	%sil, %cl
	shrl	%cl, %eax
	movl	%eax, %edi
	cvtsi2sdq	%rdi, %xmm0
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movss	44(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -184(%rbp)
	movb	%cl, (%r8)
.LBB6_59:                               # %if.end.265
                                        #   in Loop: Header=BB6_56 Depth=2
	jmp	.LBB6_60
.LBB6_60:                               # %for.inc.266
                                        #   in Loop: Header=BB6_56 Depth=2
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_56
.LBB6_61:                               # %for.end.268
                                        #   in Loop: Header=BB6_54 Depth=1
	cmpl	$0, -152(%rbp)
	jne	.LBB6_63
# BB#62:                                # %if.then.271
	jmp	.LBB6_66
.LBB6_63:                               # %if.end.272
                                        #   in Loop: Header=BB6_54 Depth=1
	movl	$5, %eax
	movl	-152(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -152(%rbp)
	movl	-1000(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1000(%rbp)
	movl	-1000(%rbp), %ecx
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1164(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_65
# BB#64:                                # %if.then.278
                                        #   in Loop: Header=BB6_54 Depth=1
	cvtsi2sdl	-1000(%rbp), %xmm0
	cvtsi2sdl	-1004(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1168(%rbp)       # 4-byte Spill
.LBB6_65:                               # %if.end.283
                                        #   in Loop: Header=BB6_54 Depth=1
	jmp	.LBB6_54
.LBB6_66:                               # %while.end.284
	jmp	.LBB6_147
.LBB6_67:                               # %sw.bb.285
	cmpl	$0, -60(%rbp)
	jne	.LBB6_88
# BB#68:                                # %if.then.288
	jmp	.LBB6_69
.LBB6_69:                               # %while.cond.289
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_71 Depth 2
	leaq	-89(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	je	.LBB6_87
# BB#70:                                # %while.body.293
                                        #   in Loop: Header=BB6_69 Depth=1
	movl	$1, -988(%rbp)
.LBB6_71:                               # %for.cond.294
                                        #   Parent Loop BB6_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$8, %eax
	movl	-988(%rbp), %edx
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	cltd
	idivl	-56(%rbp)
	movl	-1180(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -1181(%rbp)        # 1-byte Spill
	jg	.LBB6_73
# BB#72:                                # %land.rhs
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setl	%cl
	movb	%cl, -1181(%rbp)        # 1-byte Spill
.LBB6_73:                               # %land.end
                                        #   in Loop: Header=BB6_71 Depth=2
	movb	-1181(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_74
	jmp	.LBB6_78
.LBB6_74:                               # %for.body.300
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	$8, %eax
	movl	$1, %ecx
	movq	-176(%rbp), %rdx
	movslq	-152(%rbp), %rsi
	imulq	-976(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-148(%rbp), %rsi
	imulq	-984(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movzbl	-89(%rbp), %edi
	movl	-56(%rbp), %r8d
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1188(%rbp), %r8d       # 4-byte Reload
	shll	%cl, %r8d
	subl	$1, %r8d
	movl	-988(%rbp), %r9d
	imull	-56(%rbp), %r9d
	movl	%eax, %r10d
	subl	%r9d, %r10d
	movl	%r10d, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %r8d
	andl	%r8d, %edi
	movl	-988(%rbp), %r8d
	imull	-56(%rbp), %r8d
	subl	%r8d, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movb	%dil, %cl
	movq	-184(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -68(%rbp)
	je	.LBB6_76
# BB#75:                                # %if.then.318
                                        #   in Loop: Header=BB6_71 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	(%rax), %dl
	movq	-184(%rbp), %rax
	movb	%dl, (%rax)
.LBB6_76:                               # %if.end.322
                                        #   in Loop: Header=BB6_71 Depth=2
	jmp	.LBB6_77
.LBB6_77:                               # %for.inc.323
                                        #   in Loop: Header=BB6_71 Depth=2
	movl	-988(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -988(%rbp)
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_71
.LBB6_78:                               # %for.end.326
                                        #   in Loop: Header=BB6_69 Depth=1
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB6_84
# BB#79:                                # %if.then.329
                                        #   in Loop: Header=BB6_69 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movl	$8, %eax
	movq	-192(%rbp), %rdi
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movl	-36(%rbp), %esi
	imull	-56(%rbp), %esi
	subl	$1, %esi
	movl	%eax, -1192(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	cltd
	movl	-1192(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rcx
	movq	-1200(%rbp), %r8        # 8-byte Reload
	movq	%r8, %rdx
	callq	fread
	cmpl	$0, -152(%rbp)
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jne	.LBB6_81
# BB#80:                                # %if.then.339
	jmp	.LBB6_87
.LBB6_81:                               # %if.end.340
                                        #   in Loop: Header=BB6_69 Depth=1
	movl	$5, %eax
	movl	-152(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	-1000(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1000(%rbp)
	movl	-1000(%rbp), %ecx
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1212(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_83
# BB#82:                                # %if.then.346
                                        #   in Loop: Header=BB6_69 Depth=1
	cvtsi2sdl	-1000(%rbp), %xmm0
	cvtsi2sdl	-1004(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1216(%rbp)       # 4-byte Spill
.LBB6_83:                               # %if.end.351
                                        #   in Loop: Header=BB6_69 Depth=1
	jmp	.LBB6_84
.LBB6_84:                               # %if.end.352
                                        #   in Loop: Header=BB6_69 Depth=1
	cmpl	$0, -152(%rbp)
	jge	.LBB6_86
# BB#85:                                # %if.then.355
	jmp	.LBB6_87
.LBB6_86:                               # %if.end.356
                                        #   in Loop: Header=BB6_69 Depth=1
	jmp	.LBB6_69
.LBB6_87:                               # %while.end.357
	jmp	.LBB6_147
.LBB6_88:                               # %if.else.358
	jmp	.LBB6_89
.LBB6_89:                               # %while.cond.359
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_96 Depth 2
                                        #       Child Loop BB6_100 Depth 3
                                        #     Child Loop BB6_113 Depth 2
                                        #       Child Loop BB6_119 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -152(%rbp)
	movb	%cl, -1217(%rbp)        # 1-byte Spill
	jl	.LBB6_91
# BB#90:                                # %land.rhs.362
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setle	%cl
	movb	%cl, -1217(%rbp)        # 1-byte Spill
.LBB6_91:                               # %land.end.365
                                        #   in Loop: Header=BB6_89 Depth=1
	movb	-1217(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_92
	jmp	.LBB6_144
.LBB6_92:                               # %while.body.366
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB6_94
# BB#93:                                # %if.then.370
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB6_144
.LBB6_94:                               # %if.end.372
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_110
# BB#95:                                # %if.then.377
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	$0, -996(%rbp)
.LBB6_96:                               # %for.cond.378
                                        #   Parent Loop BB6_89 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_100 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-996(%rbp), %eax
	movb	%al, %dl
	movzbl	%dl, %eax
	movq	-192(%rbp), %rsi
	movzbl	(%rsi), %edi
	cmpl	%edi, %eax
	movb	%cl, -1218(%rbp)        # 1-byte Spill
	jge	.LBB6_98
# BB#97:                                # %land.rhs.385
                                        #   in Loop: Header=BB6_96 Depth=2
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setl	%cl
	movb	%cl, -1218(%rbp)        # 1-byte Spill
.LBB6_98:                               # %land.end.388
                                        #   in Loop: Header=BB6_96 Depth=2
	movb	-1218(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_99
	jmp	.LBB6_109
.LBB6_99:                               # %for.body.389
                                        #   in Loop: Header=BB6_96 Depth=2
	movl	$1, -988(%rbp)
.LBB6_100:                              # %for.cond.390
                                        #   Parent Loop BB6_89 Depth=1
                                        #     Parent Loop BB6_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$8, %eax
	movl	-988(%rbp), %edx
	movl	%edx, -1224(%rbp)       # 4-byte Spill
	cltd
	idivl	-56(%rbp)
	movl	-1224(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -1225(%rbp)        # 1-byte Spill
	jg	.LBB6_103
# BB#101:                               # %land.lhs.true.394
                                        #   in Loop: Header=BB6_100 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	movb	%cl, -1225(%rbp)        # 1-byte Spill
	jge	.LBB6_103
# BB#102:                               # %land.rhs.397
                                        #   in Loop: Header=BB6_100 Depth=3
	movl	-996(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movq	-192(%rbp), %rdx
	movzbl	(%rdx), %esi
	cmpl	%esi, %eax
	setl	%cl
	movb	%cl, -1225(%rbp)        # 1-byte Spill
.LBB6_103:                              # %land.end.404
                                        #   in Loop: Header=BB6_100 Depth=3
	movb	-1225(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_104
	jmp	.LBB6_108
.LBB6_104:                              # %for.body.405
                                        #   in Loop: Header=BB6_100 Depth=3
	movl	$8, %eax
	movl	$1, %ecx
	movq	-176(%rbp), %rdx
	movslq	-152(%rbp), %rsi
	imulq	-976(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-148(%rbp), %rsi
	imulq	-984(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movq	-192(%rbp), %rdx
	movzbl	1(%rdx), %edi
	movl	-56(%rbp), %r8d
	movl	%ecx, -1232(%rbp)       # 4-byte Spill
	movl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-1232(%rbp), %r8d       # 4-byte Reload
	shll	%cl, %r8d
	subl	$1, %r8d
	movl	-988(%rbp), %r9d
	imull	-56(%rbp), %r9d
	movl	%eax, %r10d
	subl	%r9d, %r10d
	movl	%r10d, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %r8d
	andl	%r8d, %edi
	movl	-988(%rbp), %r8d
	imull	-56(%rbp), %r8d
	subl	%r8d, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movb	%dil, %cl
	movq	-184(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -68(%rbp)
	je	.LBB6_106
# BB#105:                               # %if.then.425
                                        #   in Loop: Header=BB6_100 Depth=3
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	(%rax), %dl
	movq	-184(%rbp), %rax
	movb	%dl, (%rax)
.LBB6_106:                              # %if.end.429
                                        #   in Loop: Header=BB6_100 Depth=3
	jmp	.LBB6_107
.LBB6_107:                              # %for.inc.430
                                        #   in Loop: Header=BB6_100 Depth=3
	movl	-988(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -988(%rbp)
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movl	-996(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -996(%rbp)
	jmp	.LBB6_100
.LBB6_108:                              # %for.end.434
                                        #   in Loop: Header=BB6_96 Depth=2
	jmp	.LBB6_96
.LBB6_109:                              # %for.end.435
                                        #   in Loop: Header=BB6_89 Depth=1
	jmp	.LBB6_110
.LBB6_110:                              # %if.end.436
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_130
# BB#111:                               # %land.lhs.true.441
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jle	.LBB6_130
# BB#112:                               # %if.then.446
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -90(%rbp)
	movl	$0, -1008(%rbp)
	movl	$0, -996(%rbp)
.LBB6_113:                              # %for.cond.448
                                        #   Parent Loop BB6_89 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_119 Depth 3
	movl	-996(%rbp), %eax
	movzbl	-90(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_127
# BB#114:                               # %for.body.452
                                        #   in Loop: Header=BB6_113 Depth=2
	leaq	-89(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -1240(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB6_116
# BB#115:                               # %if.then.456
                                        #   in Loop: Header=BB6_89 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB6_127
.LBB6_116:                              # %if.end.458
                                        #   in Loop: Header=BB6_113 Depth=2
	movl	$8, %eax
	movl	-1008(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1008(%rbp)
	cltd
	idivl	-56(%rbp)
	movl	%eax, -992(%rbp)
	movzbl	-90(%rbp), %eax
	subl	-996(%rbp), %eax
	cmpl	-992(%rbp), %eax
	jge	.LBB6_118
# BB#117:                               # %if.then.465
                                        #   in Loop: Header=BB6_113 Depth=2
	movzbl	-90(%rbp), %eax
	subl	-996(%rbp), %eax
	movl	%eax, -992(%rbp)
.LBB6_118:                              # %if.end.468
                                        #   in Loop: Header=BB6_113 Depth=2
	movl	$1, -988(%rbp)
.LBB6_119:                              # %while.cond.469
                                        #   Parent Loop BB6_89 Depth=1
                                        #     Parent Loop BB6_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-988(%rbp), %eax
	cmpl	-992(%rbp), %eax
	movb	%cl, -1241(%rbp)        # 1-byte Spill
	jg	.LBB6_121
# BB#120:                               # %land.rhs.472
                                        #   in Loop: Header=BB6_119 Depth=3
	movl	-148(%rbp), %eax
	cmpl	-36(%rbp), %eax
	setl	%cl
	movb	%cl, -1241(%rbp)        # 1-byte Spill
.LBB6_121:                              # %land.end.475
                                        #   in Loop: Header=BB6_119 Depth=3
	movb	-1241(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_122
	jmp	.LBB6_125
.LBB6_122:                              # %while.body.476
                                        #   in Loop: Header=BB6_119 Depth=3
	movl	$1, %eax
	movl	$8, %ecx
	movq	-176(%rbp), %rdx
	movslq	-152(%rbp), %rsi
	imulq	-976(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-148(%rbp), %rsi
	imulq	-984(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -184(%rbp)
	movzbl	-89(%rbp), %edi
	movl	-988(%rbp), %r8d
	imull	-56(%rbp), %r8d
	subl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-56(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	andl	%eax, %edi
	movb	%dil, %cl
	movq	-184(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$0, -68(%rbp)
	je	.LBB6_124
# BB#123:                               # %if.then.492
                                        #   in Loop: Header=BB6_119 Depth=3
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	(%rax), %dl
	movq	-184(%rbp), %rax
	movb	%dl, (%rax)
.LBB6_124:                              # %if.end.496
                                        #   in Loop: Header=BB6_119 Depth=3
	movl	-988(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -988(%rbp)
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_119
.LBB6_125:                              # %while.end.499
                                        #   in Loop: Header=BB6_113 Depth=2
	jmp	.LBB6_126
.LBB6_126:                              # %for.inc.500
                                        #   in Loop: Header=BB6_113 Depth=2
	movl	$8, %eax
	cltd
	idivl	-56(%rbp)
	addl	-996(%rbp), %eax
	movl	%eax, -996(%rbp)
	jmp	.LBB6_113
.LBB6_127:                              # %for.end.503
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	$2, %eax
	movl	-1008(%rbp), %ecx
	movl	%eax, -1248(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1248(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_129
# BB#128:                               # %if.then.506
                                        #   in Loop: Header=BB6_89 Depth=1
	leaq	-89(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	callq	fread
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB6_129:                              # %if.end.508
                                        #   in Loop: Header=BB6_89 Depth=1
	jmp	.LBB6_130
.LBB6_130:                              # %if.end.509
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_135
# BB#131:                               # %land.lhs.true.514
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_135
# BB#132:                               # %if.then.519
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	$5, %eax
	movl	-152(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	-1000(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1000(%rbp)
	movl	-1000(%rbp), %ecx
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1268(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_134
# BB#133:                               # %if.then.525
                                        #   in Loop: Header=BB6_89 Depth=1
	cvtsi2sdl	-1000(%rbp), %xmm0
	cvtsi2sdl	-1004(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1272(%rbp)       # 4-byte Spill
.LBB6_134:                              # %if.end.530
                                        #   in Loop: Header=BB6_89 Depth=1
	jmp	.LBB6_135
.LBB6_135:                              # %if.end.531
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_138
# BB#136:                               # %land.lhs.true.536
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB6_138
# BB#137:                               # %if.then.541
	jmp	.LBB6_144
.LBB6_138:                              # %if.end.542
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_143
# BB#139:                               # %land.lhs.true.547
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB6_143
# BB#140:                               # %if.then.552
                                        #   in Loop: Header=BB6_89 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-192(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB6_142
# BB#141:                               # %if.then.556
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB6_144
.LBB6_142:                              # %if.end.558
                                        #   in Loop: Header=BB6_89 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	-148(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movq	-192(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	-152(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -152(%rbp)
.LBB6_143:                              # %if.end.565
                                        #   in Loop: Header=BB6_89 Depth=1
	jmp	.LBB6_89
.LBB6_144:                              # %while.end.566
	jmp	.LBB6_147
.LBB6_145:                              # %sw.default.567
	jmp	.LBB6_146
.LBB6_146:                              # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.20, %rsi
	movl	$939, %edx              # imm = 0x3AB
	movabsq	$.L__func__.ReadImage, %rdi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1280(%rbp), %r8        # 8-byte Reload
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	-1288(%rbp), %r8        # 8-byte Reload
	callq	g_assertion_message_expr
.LBB6_147:                              # %sw.epilog.568
	cmpl	$8, -56(%rbp)
	jg	.LBB6_153
# BB#148:                               # %if.then.571
	movl	$0, -988(%rbp)
	movl	$0, -996(%rbp)
.LBB6_149:                              # %for.cond.572
                                        # =>This Inner Loop Header: Depth=1
	movl	-988(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_152
# BB#150:                               # %for.body.575
                                        #   in Loop: Header=BB6_149 Depth=1
	movslq	-988(%rbp), %rax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	(%rax), %cl
	movl	-996(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -996(%rbp)
	movslq	%edx, %rax
	movb	%cl, -960(%rbp,%rax)
	movslq	-988(%rbp), %rax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	1(%rax), %cl
	movl	-996(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -996(%rbp)
	movslq	%edx, %rax
	movb	%cl, -960(%rbp,%rax)
	movslq	-988(%rbp), %rax
	imulq	$3, %rax, %rax
	addq	-48(%rbp), %rax
	movb	2(%rax), %cl
	movl	-996(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -996(%rbp)
	movslq	%edx, %rax
	movb	%cl, -960(%rbp,%rax)
# BB#151:                               # %for.inc.594
                                        #   in Loop: Header=BB6_149 Depth=1
	movl	-988(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -988(%rbp)
	jmp	.LBB6_149
.LBB6_152:                              # %for.end.596
	jmp	.LBB6_153
.LBB6_153:                              # %if.end.597
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-168(%rbp), %rsi
	movq	-168(%rbp), %r8
	movl	4(%r8), %r8d
	movq	-168(%rbp), %r9
	movl	8(%r9), %r9d
	movl	%edx, -1292(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -1296(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-168(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	cmpl	$0, -68(%rbp)
	jne	.LBB6_156
# BB#154:                               # %land.lhs.true.604
	cmpl	$8, -56(%rbp)
	jg	.LBB6_156
# BB#155:                               # %if.then.607
	leaq	-960(%rbp), %rsi
	movl	-156(%rbp), %edi
	movl	-52(%rbp), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -1300(%rbp)       # 4-byte Spill
.LBB6_156:                              # %if.end.609
	movq	-168(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-168(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-176(%rbp), %rdi
	callq	g_free
	movl	-156(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB6_157:                              # %return
	movl	-20(%rbp), %eax
	addq	$1312, %rsp             # imm = 0x520
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ReadImage, .Lfunc_end6-ReadImage
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_message, .Lfunc_end7-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Opening '%s'"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BA"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BM"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"IC"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"PT"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CI"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"CP"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"'%s' is not a valid BMP file"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Error reading BMP file header from '%s'"
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unsupported compression (%lu) in BMP file from '%s'"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Bad colormap"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unrecognized or invalid BMP compression format."
	.size	.L.str.14, 48

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Unsupported or invalid bitdepth."
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unsupported or invalid image width: %d"
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unsupported or invalid image height: %d"
	.size	.L.str.17, 40

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Background"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The bitmap ends unexpectedly."
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"bmp-read.c"
	.size	.L.str.20, 11

	.type	.L__func__.ReadImage,@object # @__func__.ReadImage
.L__func__.ReadImage:
	.asciz	"ReadImage"
	.size	.L__func__.ReadImage, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
