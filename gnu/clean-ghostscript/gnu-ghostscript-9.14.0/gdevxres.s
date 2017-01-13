	.text
	.file	"gdevxres.bc"
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"XtDefaultBackground"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"XtDefaultForeground"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"maxGrayRamp"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"MaxGrayRamp"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"maxRGBRamp"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"MaxRGBRamp"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"palette"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Palette"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Color"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"useBackingPixmap"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"UseBackingPixmap"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"useXPutImage"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"UseXPutImage"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"useXSetTile"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"UseXSetTile"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"xResolution"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Resolution"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0.0"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"yResolution"
	.size	.L.str.18, 12

	.type	gdev_x_resources,@object # @gdev_x_resources
	.data
	.globl	gdev_x_resources
	.align	16
gdev_x_resources:
	.quad	XtStrings+52
	.quad	XtStrings+902
	.quad	XtStrings+1754
	.long	8                       # 0x8
	.long	2296                    # 0x8f8
	.quad	XtStrings+1797
	.quad	.L.str
	.quad	XtStrings+87
	.quad	XtStrings+928
	.quad	XtStrings+1754
	.long	8                       # 0x8
	.long	2808                    # 0xaf8
	.quad	XtStrings+1797
	.quad	.L.str.1
	.quad	XtStrings+124
	.quad	XtStrings+940
	.quad	XtStrings+1618
	.long	2                       # 0x2
	.long	2816                    # 0xb00
	.quad	XtStrings+1695
	.quad	1
	.quad	XtStrings+214
	.quad	XtStrings+1022
	.quad	XtStrings+1754
	.long	8                       # 0x8
	.long	2304                    # 0x900
	.quad	XtStrings+1797
	.quad	.L.str.1
	.quad	XtShellStrings+469
	.quad	XtShellStrings+478
	.quad	XtStrings+1797
	.long	8                       # 0x8
	.long	2824                    # 0xb08
	.quad	XtStrings+1797
	.quad	0
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	XtStrings+1718
	.long	4                       # 0x4
	.long	2832                    # 0xb10
	.quad	XtStrings+1695
	.quad	128
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	XtStrings+1718
	.long	4                       # 0x4
	.long	2836                    # 0xb14
	.quad	XtStrings+1695
	.quad	5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	XtStrings+1797
	.long	8                       # 0x8
	.long	2840                    # 0xb18
	.quad	XtStrings+1797
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	XtStrings+1561
	.long	1                       # 0x1
	.long	2856                    # 0xb28
	.quad	XtStrings+1695
	.quad	1
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	XtStrings+1561
	.long	1                       # 0x1
	.long	2857                    # 0xb29
	.quad	XtStrings+1695
	.quad	1
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	XtStrings+1561
	.long	1                       # 0x1
	.long	2858                    # 0xb2a
	.quad	XtStrings+1695
	.quad	1
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	XtStrings+1655
	.long	4                       # 0x4
	.long	2848                    # 0xb20
	.quad	XtStrings+1797
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	XtStrings+1655
	.long	4                       # 0x4
	.long	2852                    # 0xb24
	.quad	XtStrings+1797
	.quad	.L.str.17
	.size	gdev_x_resources, 624

	.type	gdev_x_resource_count,@object # @gdev_x_resource_count
	.section	.rodata,"a",@progbits
	.globl	gdev_x_resource_count
	.align	4
gdev_x_resource_count:
	.long	13                      # 0xd
	.size	gdev_x_resource_count, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Ghostscript*Background: white"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Ghostscript*Foreground: black"
	.size	.L.str.20, 30

	.type	gdev_x_fallback_resources,@object # @gdev_x_fallback_resources
	.data
	.globl	gdev_x_fallback_resources
	.align	16
gdev_x_fallback_resources:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	0
	.size	gdev_x_fallback_resources, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
