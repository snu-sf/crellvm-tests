; ModuleID = '00517.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_2 = internal global i32 -1, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"g_2\00", align 1
@g_57 = internal global i16 -4190, align 2
@.str.2 = private unnamed_addr constant [5 x i8] c"g_57\00", align 1
@g_72 = internal global i32 118475720, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_72\00", align 1
@g_114 = internal global [10 x [3 x [8 x i64]]] [[3 x [8 x i64]] [[8 x i64] [i64 5, i64 -1880288920725523282, i64 -5206099704246468812, i64 -1, i64 -4320796409134679550, i64 3, i64 -4320796409134679550, i64 -1], [8 x i64] [i64 5, i64 -4320796409134679550, i64 5, i64 -8278102982823325214, i64 1, i64 -7, i64 -1, i64 5], [8 x i64] [i64 -593542613098552400, i64 0, i64 1, i64 3, i64 1, i64 9, i64 1, i64 -6124092649326880829]], [3 x [8 x i64]] [[8 x i64] [i64 -593542613098552400, i64 1, i64 -8278102982823325214, i64 1, i64 1, i64 1, i64 1, i64 0], [8 x i64] [i64 5, i64 5, i64 0, i64 -4, i64 -4320796409134679550, i64 -7580019031623538626, i64 -1750555857019884591, i64 -1750555857019884591], [8 x i64] [i64 5, i64 -8, i64 8, i64 8, i64 -8, i64 5, i64 -593542613098552400, i64 -1880288920725523282]], [3 x [8 x i64]] [[8 x i64] [i64 8, i64 1, i64 -6124092649326880829, i64 5, i64 -1486615345762249210, i64 1, i64 6214647663967033551, i64 8], [8 x i64] [i64 -1750555857019884591, i64 -4, i64 -8, i64 5, i64 3750793495456811480, i64 -8278102982823325214, i64 -3612215785077424130, i64 -1880288920725523282], [8 x i64] [i64 3, i64 3750793495456811480, i64 -4, i64 0, i64 136412439953559117, i64 0, i64 1, i64 -4]], [3 x [8 x i64]] [[8 x i64] [i64 -1, i64 -3612215785077424130, i64 136412439953559117, i64 8, i64 0, i64 8, i64 136412439953559117, i64 -3612215785077424130], [8 x i64] [i64 -3612215785077424130, i64 9, i64 0, i64 -4320796409134679550, i64 -593542613098552400, i64 -7, i64 9, i64 1], [8 x i64] [i64 3, i64 1, i64 -1, i64 -1486615345762249210, i64 -3612215785077424130, i64 -5206099704246468812, i64 9, i64 3]], [3 x [8 x i64]] [[8 x i64] [i64 -1750555857019884591, i64 -1486615345762249210, i64 0, i64 -7, i64 -8278102982823325214, i64 -1750555857019884591, i64 136412439953559117, i64 -1880288920725523282], [8 x i64] [i64 -8278102982823325214, i64 -1750555857019884591, i64 136412439953559117, i64 -1880288920725523282, i64 -1486615345762249210, i64 1, i64 1, i64 -1486615345762249210], [8 x i64] [i64 -5206099704246468812, i64 -4, i64 -4, i64 -5206099704246468812, i64 1, i64 8, i64 -3612215785077424130, i64 5]], [3 x [8 x i64]] [[8 x i64] [i64 -4, i64 1, i64 -8, i64 0, i64 -593542613098552400, i64 136412439953559117, i64 6214647663967033551, i64 -8], [8 x i64] [i64 -1, i64 1, i64 -6124092649326880829, i64 -1486615345762249210, i64 -7580019031623538626, i64 8, i64 -593542613098552400, i64 -1], [8 x i64] [i64 3750793495456811480, i64 -4, i64 0, i64 136412439953559117, i64 0, i64 1, i64 -4, i64 1]], [3 x [8 x i64]] [[8 x i64] [i64 3, i64 -1750555857019884591, i64 -3612215785077424130, i64 -1, i64 -3612215785077424130, i64 -1750555857019884591, i64 3, i64 -4], [8 x i64] [i64 -5206099704246468812, i64 -1486615345762249210, i64 -7, i64 1, i64 1, i64 -5206099704246468812, i64 136412439953559117, i64 5], [8 x i64] [i64 -1486615345762249210, i64 1, i64 -4320796409134679550, i64 -1880288920725523282, i64 1, i64 -7, i64 6214647663967033551, i64 -1]], [3 x [8 x i64]] [[8 x i64] [i64 -5206099704246468812, i64 9, i64 3, i64 5, i64 -3612215785077424130, i64 8, i64 1, i64 -5206099704246468812], [8 x i64] [i64 3, i64 -3612215785077424130, i64 -8, i64 -7, i64 0, i64 0, i64 -7, i64 -8], [8 x i64] [i64 3750793495456811480, i64 3750793495456811480, i64 136412439953559117, i64 -1, i64 -7580019031623538626, i64 -8278102982823325214, i64 0, i64 -3612215785077424130]], [3 x [8 x i64]] [[8 x i64] [i64 -1, i64 -4, i64 -7, i64 -6124092649326880829, i64 -593542613098552400, i64 1, i64 -4, i64 -3612215785077424130], [8 x i64] [i64 -4, i64 1, i64 1, i64 -1, i64 1, i64 5, i64 9, i64 -8], [8 x i64] [i64 -5206099704246468812, i64 1, i64 1, i64 -7, i64 -1486615345762249210, i64 -5206099704246468812, i64 -593542613098552400, i64 -5206099704246468812]], [3 x [8 x i64]] [[8 x i64] [i64 -8278102982823325214, i64 5, i64 -4320796409134679550, i64 5, i64 -8278102982823325214, i64 1, i64 -7, i64 -1], [8 x i64] [i64 -1750555857019884591, i64 3, i64 -4, i64 -1880288920725523282, i64 -3612215785077424130, i64 -8278102982823325214, i64 3750793495456811480, i64 5], [8 x i64] [i64 3, i64 -3612215785077424130, i64 -4, i64 1, i64 -593542613098552400, i64 1, i64 -6124092649326880829, i64 8]]], align 16
@.str.4 = private unnamed_addr constant [15 x i8] c"g_114[i][j][k]\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_117 = internal global i32 -1963558059, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"g_117\00", align 1
@g_127 = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"g_127\00", align 1
@g_138 = internal global i32 -6, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_138\00", align 1
@g_163 = internal global [4 x i64] [i64 -553964828003025248, i64 -553964828003025248, i64 -553964828003025248, i64 -553964828003025248], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"g_163[i]\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_174 = internal global i8 5, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"g_174\00", align 1
@g_199 = internal global [7 x i64] [i64 904554332090294878, i64 5, i64 904554332090294878, i64 904554332090294878, i64 5, i64 904554332090294878, i64 904554332090294878], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"g_199[i]\00", align 1
@g_202 = internal global i32 6, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"g_202\00", align 1
@g_238 = internal global [9 x i16] [i16 -3156, i16 -3156, i16 -3156, i16 -3156, i16 -3156, i16 -3156, i16 -3156, i16 -3156, i16 -3156], align 16
@.str.14 = private unnamed_addr constant [9 x i8] c"g_238[i]\00", align 1
@g_296 = internal global i8 -116, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"g_296\00", align 1
@g_349 = internal global [5 x [4 x i32]] [[4 x i32] [i32 -1253653192, i32 -1253653192, i32 -1253653192, i32 -1253653192], [4 x i32] [i32 -1253653192, i32 -1253653192, i32 -1253653192, i32 -1253653192], [4 x i32] [i32 -1253653192, i32 -1253653192, i32 -1253653192, i32 -1253653192], [4 x i32] [i32 -1253653192, i32 -1253653192, i32 -1253653192, i32 -1253653192], [4 x i32] [i32 -1253653192, i32 -1253653192, i32 -1253653192, i32 -1253653192]], align 16
@.str.16 = private unnamed_addr constant [12 x i8] c"g_349[i][j]\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_493 = internal global [4 x [5 x i64]] [[5 x i64] [i64 5, i64 0, i64 0, i64 5, i64 9018333480865051549], [5 x i64] [i64 5, i64 -3, i64 6274200213842750040, i64 6274200213842750040, i64 -3], [5 x i64] [i64 9018333480865051549, i64 0, i64 6274200213842750040, i64 -2629182127982558834, i64 -2629182127982558834], [5 x i64] [i64 0, i64 9018333480865051549, i64 0, i64 6274200213842750040, i64 -2629182127982558834]], align 16
@.str.18 = private unnamed_addr constant [12 x i8] c"g_493[i][j]\00", align 1
@g_495 = internal global [5 x [10 x [5 x i64]]] [[10 x [5 x i64]] [[5 x i64] [i64 -710793925642483953, i64 -5337354547845103107, i64 7672050157863164460, i64 -1, i64 -74549628675135319], [5 x i64] [i64 -3193728149215038730, i64 -5, i64 3734007737904978157, i64 9, i64 -6419851713338293590], [5 x i64] [i64 3493403127448142737, i64 -2, i64 0, i64 -5, i64 6], [5 x i64] [i64 7116642176083727145, i64 -9010636505345153888, i64 3138313394226694321, i64 1, i64 -5355807262076601802], [5 x i64] [i64 -6249883349068383211, i64 -1, i64 0, i64 -6, i64 -6], [5 x i64] [i64 -6, i64 -5740345873072983689, i64 -6, i64 9, i64 1114318118302488638], [5 x i64] [i64 -1, i64 -5355807262076601802, i64 2026483636176274723, i64 -8969738051547650410, i64 1], [5 x i64] [i64 8272099851556644301, i64 -3424463969320183866, i64 -3493508476070713376, i64 -7241486854942625064, i64 1], [5 x i64] [i64 -4536816691849284293, i64 -8202953955807918896, i64 2026483636176274723, i64 1, i64 -6773524475908021767], [5 x i64] [i64 0, i64 -4, i64 -6, i64 2026483636176274723, i64 1]], [10 x [5 x i64]] [[5 x i64] [i64 -3232231048810494272, i64 -74549628675135319, i64 0, i64 -3463177267443331753, i64 -3424463969320183866], [5 x i64] [i64 5, i64 -1, i64 3138313394226694321, i64 3, i64 -74549628675135319], [5 x i64] [i64 0, i64 -5934232946384834213, i64 0, i64 -1, i64 -9010636505345153888], [5 x i64] [i64 -2, i64 -1, i64 3734007737904978157, i64 7, i64 -1], [5 x i64] [i64 7116642176083727145, i64 7910791218557061825, i64 7672050157863164460, i64 -1, i64 703442598949958044], [5 x i64] [i64 -5934232946384834213, i64 8037006118140550213, i64 0, i64 -3193728149215038730, i64 0], [5 x i64] [i64 -1, i64 -5740345873072983689, i64 -3066509793083565335, i64 2026483636176274723, i64 1486383249503684485], [5 x i64] [i64 1, i64 0, i64 3212977399670444676, i64 -7241486854942625064, i64 -7], [5 x i64] [i64 7910791218557061825, i64 1616250565575313228, i64 1, i64 7116642176083727145, i64 -1], [5 x i64] [i64 -710793925642483953, i64 369389511211903551, i64 -4628998593856944107, i64 -4272900810397758948, i64 -4536816691849284293]], [10 x [5 x i64]] [[5 x i64] [i64 -710793925642483953, i64 3212977399670444676, i64 -74549628675135319, i64 -1, i64 -1], [5 x i64] [i64 7910791218557061825, i64 8272099851556644301, i64 0, i64 8037006118140550213, i64 -9075432934812105262], [5 x i64] [i64 1, i64 -1, i64 -3493508476070713376, i64 -9010636505345153888, i64 -8202953955807918896], [5 x i64] [i64 -74549628675135319, i64 -4331094162208940911, i64 1, i64 -8202953955807918896, i64 1], [5 x i64] [i64 0, i64 7116642176083727145, i64 0, i64 4428239069999814936, i64 9], [5 x i64] [i64 7, i64 -9075432934812105262, i64 -9010636505345153888, i64 9, i64 -1], [5 x i64] [i64 969366347273368613, i64 5, i64 -3193728149215038730, i64 -1, i64 1], [5 x i64] [i64 -5337354547845103107, i64 -3463177267443331753, i64 9, i64 -6249883349068383211, i64 -1], [5 x i64] [i64 -6, i64 -4536816691849284293, i64 969366347273368613, i64 -1, i64 6955781615155353229], [5 x i64] [i64 -9, i64 1, i64 1, i64 -9, i64 -2923423103813327176]], [10 x [5 x i64]] [[5 x i64] [i64 1, i64 -5, i64 -5740345873072983689, i64 -1, i64 4964989450026161968], [5 x i64] [i64 0, i64 1, i64 -5337354547845103107, i64 -1, i64 -710793925642483953], [5 x i64] [i64 -865900770215435539, i64 -2, i64 1, i64 -1, i64 -9], [5 x i64] [i64 -1, i64 3, i64 -865900770215435539, i64 -9, i64 -8202953955807918896], [5 x i64] [i64 -8969738051547650410, i64 -1, i64 -1630935175998996380, i64 -1, i64 -9], [5 x i64] [i64 762023348809312575, i64 -3493508476070713376, i64 9, i64 -6249883349068383211, i64 -3175418648019484468], [5 x i64] [i64 7, i64 -1, i64 -5207290311293935826, i64 -1, i64 3], [5 x i64] [i64 3212977399670444676, i64 6, i64 1, i64 9, i64 -1], [5 x i64] [i64 -2923423103813327176, i64 -3463177267443331753, i64 1, i64 4428239069999814936, i64 -1304247123378323916], [5 x i64] [i64 1, i64 0, i64 0, i64 -8202953955807918896, i64 -6773524475908021767]], [10 x [5 x i64]] [[5 x i64] [i64 -5, i64 -5472681304633336366, i64 1, i64 -9010636505345153888, i64 -74549628675135319], [5 x i64] [i64 1, i64 7910791218557061825, i64 1, i64 8037006118140550213, i64 3734007737904978157], [5 x i64] [i64 9, i64 762023348809312575, i64 -2923423103813327176, i64 -1, i64 0], [5 x i64] [i64 -3493508476070713376, i64 7672050157863164460, i64 -1, i64 -4272900810397758948, i64 -1], [5 x i64] [i64 -1, i64 7672050157863164460, i64 7910791218557061825, i64 7116642176083727145, i64 -8202953955807918896], [5 x i64] [i64 -3066509793083565335, i64 762023348809312575, i64 0, i64 -7241486854942625064, i64 -5472681304633336366], [5 x i64] [i64 6921925132036662275, i64 7910791218557061825, i64 1, i64 2026483636176274723, i64 1], [5 x i64] [i64 7, i64 -5472681304633336366, i64 369389511211903551, i64 -2923423103813327176, i64 0], [5 x i64] [i64 -1, i64 0, i64 -6, i64 -74549628675135319, i64 1], [5 x i64] [i64 1, i64 -3463177267443331753, i64 -3, i64 3493403127448142737, i64 8037006118140550213]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_495[i][j][k]\00", align 1
@g_513 = internal global i8 -107, align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"g_513\00", align 1
@g_596 = internal global i32 1621854797, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_596\00", align 1
@g_612 = internal global i16 0, align 2
@.str.22 = private unnamed_addr constant [6 x i8] c"g_612\00", align 1
@g_764 = internal global i32 3, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"g_764\00", align 1
@g_845 = internal global i16 -10, align 2
@.str.24 = private unnamed_addr constant [6 x i8] c"g_845\00", align 1
@g_851 = internal global i64 -6589473435477315835, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"g_851\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"g_863\00", align 1
@g_957 = internal global i32 2, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"g_957\00", align 1
@g_1116 = internal global i32 248595695, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"g_1116\00", align 1
@g_1152 = internal global i16 30788, align 2
@.str.29 = private unnamed_addr constant [7 x i8] c"g_1152\00", align 1
@g_1158 = internal global i32 -10, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"g_1158\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"g_1567\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"g_1569\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"g_1571\00", align 1
@g_1718 = internal global i64 5571546708939554361, align 8
@.str.34 = private unnamed_addr constant [7 x i8] c"g_1718\00", align 1
@g_1826 = internal global [10 x i16] [i16 2, i16 1219, i16 -11589, i16 -11589, i16 1219, i16 2, i16 1219, i16 -11589, i16 -11589, i16 1219], align 16
@.str.35 = private unnamed_addr constant [10 x i8] c"g_1826[i]\00", align 1
@g_1927 = internal global [10 x [2 x [4 x i32]]] [[2 x [4 x i32]] [[4 x i32] [i32 -8, i32 -1018165107, i32 -1018165107, i32 -8], [4 x i32] [i32 -679320810, i32 609856293, i32 -1018165107, i32 1403957680]], [2 x [4 x i32]] [[4 x i32] [i32 -8, i32 0, i32 -8, i32 0], [4 x i32] [i32 0, i32 -1018165107, i32 -679320810, i32 0]], [2 x [4 x i32]] [[4 x i32] [i32 -679320810, i32 0, i32 1403957680, i32 1403957680], [4 x i32] [i32 609856293, i32 609856293, i32 -8, i32 -8]], [2 x [4 x i32]] [[4 x i32] [i32 609856293, i32 -1018165107, i32 1403957680, i32 609856293], [4 x i32] [i32 -679320810, i32 -8, i32 -679320810, i32 1403957680]], [2 x [4 x i32]] [[4 x i32] [i32 0, i32 -8, i32 -8, i32 609856293], [4 x i32] [i32 -8, i32 -1018165107, i32 -1018165107, i32 -8]], [2 x [4 x i32]] [[4 x i32] [i32 -679320810, i32 609856293, i32 -1018165107, i32 1403957680], [4 x i32] [i32 -8, i32 0, i32 -8, i32 0]], [2 x [4 x i32]] [[4 x i32] [i32 0, i32 -1018165107, i32 -679320810, i32 0], [4 x i32] [i32 -679320810, i32 0, i32 1403957680, i32 1403957680]], [2 x [4 x i32]] [[4 x i32] [i32 609856293, i32 609856293, i32 -8, i32 -8], [4 x i32] [i32 609856293, i32 -1018165107, i32 1403957680, i32 609856293]], [2 x [4 x i32]] [[4 x i32] [i32 -679320810, i32 -8, i32 -679320810, i32 1403957680], [4 x i32] [i32 0, i32 -8, i32 -8, i32 609856293]], [2 x [4 x i32]] [[4 x i32] [i32 -8, i32 -1018165107, i32 -1018165107, i32 -8], [4 x i32] [i32 -679320810, i32 609856293, i32 -1018165107, i32 1403957680]]], align 16
@.str.36 = private unnamed_addr constant [16 x i8] c"g_1927[i][j][k]\00", align 1
@g_2064 = internal global i8 68, align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"g_2064\00", align 1
@g_2066 = internal global i32 2, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"g_2066\00", align 1
@g_2151 = internal constant [3 x i32] [i32 -10, i32 -10, i32 -10], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"g_2151[i]\00", align 1
@g_2259 = internal global i64 -7, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"g_2259\00", align 1
@g_2285 = internal global i8 -62, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"g_2285\00", align 1
@g_2341 = internal global i64 0, align 8
@.str.42 = private unnamed_addr constant [7 x i8] c"g_2341\00", align 1
@g_2367 = internal global i32 -634666144, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"g_2367\00", align 1
@g_2705 = internal global i64 1, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_2705\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"g_2713\00", align 1
@g_2763 = internal constant i8 -2, align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"g_2763\00", align 1
@g_2859 = internal global [7 x [3 x i8]] [[3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6", [3 x i8] c"\F6\F6\F6"], align 16
@.str.47 = private unnamed_addr constant [13 x i8] c"g_2859[i][j]\00", align 1
@g_2981 = internal global i8 53, align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"g_2981\00", align 1
@g_3000 = internal global [10 x i32] [i32 809219373, i32 0, i32 -5, i32 -5, i32 0, i32 809219373, i32 0, i32 -5, i32 -5, i32 0], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"g_3000[i]\00", align 1
@g_3031 = internal global [2 x [8 x [5 x i32]]] [[8 x [5 x i32]] [[5 x i32] [i32 3, i32 -1231553153, i32 3, i32 196204481, i32 1], [5 x i32] [i32 -1746929564, i32 1845255044, i32 1, i32 196204481, i32 3], [5 x i32] [i32 1, i32 -6, i32 1845255044, i32 1845255044, i32 -6], [5 x i32] [i32 -6, i32 0, i32 1, i32 3, i32 774882029], [5 x i32] [i32 -1231553153, i32 0, i32 3, i32 1, i32 -2], [5 x i32] [i32 1718427148, i32 -6, i32 -6, i32 1718427148, i32 1], [5 x i32] [i32 -1231553153, i32 1845255044, i32 774882029, i32 -1, i32 1], [5 x i32] [i32 -6, i32 -1231553153, i32 -2, i32 1, i32 -2]], [8 x [5 x i32]] [[5 x i32] [i32 1, i32 1, i32 1, i32 -1, i32 774882029], [5 x i32] [i32 -1746929564, i32 196204481, i32 1, i32 1718427148, i32 -6], [5 x i32] [i32 3, i32 1, i32 -2, i32 1, i32 3], [5 x i32] [i32 -1, i32 196204481, i32 774882029, i32 3, i32 1], [5 x i32] [i32 -1, i32 1, i32 -6, i32 1845255044, i32 1845255044], [5 x i32] [i32 3, i32 -1231553153, i32 3, i32 196204481, i32 1], [5 x i32] [i32 -1746929564, i32 1845255044, i32 1, i32 196204481, i32 3], [5 x i32] [i32 1, i32 -6, i32 1845255044, i32 1845255044, i32 -6]]], align 16
@.str.50 = private unnamed_addr constant [16 x i8] c"g_3031[i][j][k]\00", align 1
@g_3111 = internal constant i64 0, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c"g_3111\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"g_3251\00", align 1
@g_3531 = internal global [7 x i64] [i64 1520290945175912114, i64 1520290945175912114, i64 1520290945175912114, i64 1520290945175912114, i64 1520290945175912114, i64 1520290945175912114, i64 1520290945175912114], align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"g_3531[i]\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@g_1656 = internal global i32* @g_1158, align 8
@func_1.l_3450 = private unnamed_addr constant [2 x [2 x [2 x i64]]] [[2 x [2 x i64]] [[2 x i64] [i64 -1, i64 -10], [2 x i64] [i64 -1, i64 -10]], [2 x [2 x i64]] [[2 x i64] [i64 -1, i64 -10], [2 x i64] [i64 -1, i64 -10]]], align 16
@g_2408 = internal global i32** @g_2030, align 8
@g_3539 = internal global i32** @g_2030, align 8
@g_2030 = internal global i32* @g_957, align 8
@.str.54 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %4 = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4, !tbaa !1
  store i8** %argv, i8*** %3, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %print_hash_value, align 4, !tbaa !1
  %10 = load i32, i32* %2, align 4, !tbaa !1
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %89

; <label>:12                                      ; preds = %0
  %13 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1) to i64), i64 ptrtoint ([2 x i8]* @.str to i64)), i64 1), label %15, label %77

; <label>:15                                      ; preds = %12
  store i64 1, i64* %__s2_len, align 8, !tbaa !7
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %77

; <label>:18                                      ; preds = %15
  %19 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8**, i8*** %3, align 8, !tbaa !5
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !5
  store i8* %22, i8** %__s1, align 8, !tbaa !5
  %23 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i8*, i8** %__s1, align 8, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %__result, align 4, !tbaa !1
  %31 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %72

; <label>:33                                      ; preds = %18
  %34 = load i32, i32* %__result, align 4, !tbaa !1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %72

; <label>:36                                      ; preds = %33
  %37 = load i8*, i8** %__s1, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1, !tbaa !9
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i64 1), align 1, !tbaa !9
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %40, %42
  store i32 %43, i32* %__result, align 4, !tbaa !1
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %45 = icmp ugt i64 %44, 1
  br i1 %45, label %46, label %71

; <label>:46                                      ; preds = %36
  %47 = load i32, i32* %__result, align 4, !tbaa !1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %71

; <label>:49                                      ; preds = %46
  %50 = load i8*, i8** %__s1, align 8, !tbaa !5
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1, !tbaa !9
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2), align 1, !tbaa !9
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %53, %55
  store i32 %56, i32* %__result, align 4, !tbaa !1
  %57 = load i64, i64* %__s2_len, align 8, !tbaa !7
  %58 = icmp ugt i64 %57, 2
  br i1 %58, label %59, label %70

; <label>:59                                      ; preds = %49
  %60 = load i32, i32* %__result, align 4, !tbaa !1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %59
  %63 = load i8*, i8** %__s1, align 8, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1, !tbaa !9
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 3), align 1, !tbaa !9
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %__result, align 4, !tbaa !1
  br label %70

; <label>:70                                      ; preds = %62, %59, %49
  br label %71

; <label>:71                                      ; preds = %70, %46, %36
  br label %72

; <label>:72                                      ; preds = %71, %33, %18
  %73 = load i32, i32* %__result, align 4, !tbaa !1
  store i32 %73, i32* %5, !tbaa !1
  %74 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = load i32, i32* %5, !tbaa !1
  br label %82

; <label>:77                                      ; preds = %15, %12
  %78 = load i8**, i8*** %3, align 8, !tbaa !5
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8, !tbaa !5
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #1
  br label %82

; <label>:82                                      ; preds = %77, %72
  %83 = phi i32 [ %76, %72 ], [ %81, %77 ]
  store i32 %83, i32* %4, !tbaa !1
  %84 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = load i32, i32* %4, !tbaa !1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %82
  store i32 1, i32* %print_hash_value, align 4, !tbaa !1
  br label %89

; <label>:89                                      ; preds = %88, %82, %0
  call void @platform_main_begin()
  call void @crc32_gentab()
  %90 = call i32 @func_1()
  %91 = load i32, i32* @g_2, align 4, !tbaa !1
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %93)
  %94 = load i16, i16* @g_57, align 2, !tbaa !10
  %95 = zext i16 %94 to i64
  %96 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %96)
  %97 = load i32, i32* @g_72, align 4, !tbaa !1
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 %99)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:100                                     ; preds = %139, %89
  %101 = load i32, i32* %i, align 4, !tbaa !1
  %102 = icmp slt i32 %101, 10
  br i1 %102, label %103, label %142

; <label>:103                                     ; preds = %100
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:104                                     ; preds = %135, %103
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %106 = icmp slt i32 %105, 3
  br i1 %106, label %107, label %138

; <label>:107                                     ; preds = %104
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %108

; <label>:108                                     ; preds = %131, %107
  %109 = load i32, i32* %k, align 4, !tbaa !1
  %110 = icmp slt i32 %109, 8
  br i1 %110, label %111, label %134

; <label>:111                                     ; preds = %108
  %112 = load i32, i32* %k, align 4, !tbaa !1
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %i, align 4, !tbaa !1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x [3 x [8 x i64]]], [10 x [3 x [8 x i64]]]* @g_114, i32 0, i64 %117
  %119 = getelementptr inbounds [3 x [8 x i64]], [3 x [8 x i64]]* %118, i32 0, i64 %115
  %120 = getelementptr inbounds [8 x i64], [8 x i64]* %119, i32 0, i64 %113
  %121 = load i64, i64* %120, align 8, !tbaa !7
  %122 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %122)
  %123 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

; <label>:125                                     ; preds = %111
  %126 = load i32, i32* %i, align 4, !tbaa !1
  %127 = load i32, i32* %j, align 4, !tbaa !1
  %128 = load i32, i32* %k, align 4, !tbaa !1
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %126, i32 %127, i32 %128)
  br label %130

; <label>:130                                     ; preds = %125, %111
  br label %131

; <label>:131                                     ; preds = %130
  %132 = load i32, i32* %k, align 4, !tbaa !1
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %k, align 4, !tbaa !1
  br label %108

; <label>:134                                     ; preds = %108
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32, i32* %j, align 4, !tbaa !1
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %j, align 4, !tbaa !1
  br label %104

; <label>:138                                     ; preds = %104
  br label %139

; <label>:139                                     ; preds = %138
  %140 = load i32, i32* %i, align 4, !tbaa !1
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %i, align 4, !tbaa !1
  br label %100

; <label>:142                                     ; preds = %100
  %143 = load i32, i32* @g_117, align 4, !tbaa !1
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %145)
  %146 = load i32, i32* @g_127, align 4, !tbaa !1
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %148)
  %149 = load i32, i32* @g_138, align 4, !tbaa !1
  %150 = zext i32 %149 to i64
  %151 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %151)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %152

; <label>:152                                     ; preds = %167, %142
  %153 = load i32, i32* %i, align 4, !tbaa !1
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %170

; <label>:155                                     ; preds = %152
  %156 = load i32, i32* %i, align 4, !tbaa !1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [4 x i64], [4 x i64]* @g_163, i32 0, i64 %157
  %159 = load i64, i64* %158, align 8, !tbaa !7
  %160 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 %160)
  %161 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

; <label>:163                                     ; preds = %155
  %164 = load i32, i32* %i, align 4, !tbaa !1
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %164)
  br label %166

; <label>:166                                     ; preds = %163, %155
  br label %167

; <label>:167                                     ; preds = %166
  %168 = load i32, i32* %i, align 4, !tbaa !1
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %i, align 4, !tbaa !1
  br label %152

; <label>:170                                     ; preds = %152
  %171 = load i8, i8* @g_174, align 1, !tbaa !9
  %172 = sext i8 %171 to i64
  %173 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 %173)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:174                                     ; preds = %189, %170
  %175 = load i32, i32* %i, align 4, !tbaa !1
  %176 = icmp slt i32 %175, 7
  br i1 %176, label %177, label %192

; <label>:177                                     ; preds = %174
  %178 = load i32, i32* %i, align 4, !tbaa !1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [7 x i64], [7 x i64]* @g_199, i32 0, i64 %179
  %181 = load i64, i64* %180, align 8, !tbaa !7
  %182 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 %182)
  %183 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

; <label>:185                                     ; preds = %177
  %186 = load i32, i32* %i, align 4, !tbaa !1
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %186)
  br label %188

; <label>:188                                     ; preds = %185, %177
  br label %189

; <label>:189                                     ; preds = %188
  %190 = load i32, i32* %i, align 4, !tbaa !1
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %i, align 4, !tbaa !1
  br label %174

; <label>:192                                     ; preds = %174
  %193 = load i32, i32* @g_202, align 4, !tbaa !1
  %194 = sext i32 %193 to i64
  %195 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %195)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:196                                     ; preds = %212, %192
  %197 = load i32, i32* %i, align 4, !tbaa !1
  %198 = icmp slt i32 %197, 9
  br i1 %198, label %199, label %215

; <label>:199                                     ; preds = %196
  %200 = load i32, i32* %i, align 4, !tbaa !1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [9 x i16], [9 x i16]* @g_238, i32 0, i64 %201
  %203 = load i16, i16* %202, align 2, !tbaa !10
  %204 = zext i16 %203 to i64
  %205 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %205)
  %206 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

; <label>:208                                     ; preds = %199
  %209 = load i32, i32* %i, align 4, !tbaa !1
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %209)
  br label %211

; <label>:211                                     ; preds = %208, %199
  br label %212

; <label>:212                                     ; preds = %211
  %213 = load i32, i32* %i, align 4, !tbaa !1
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %i, align 4, !tbaa !1
  br label %196

; <label>:215                                     ; preds = %196
  %216 = load i8, i8* @g_296, align 1, !tbaa !9
  %217 = zext i8 %216 to i64
  %218 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 %218)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %219

; <label>:219                                     ; preds = %247, %215
  %220 = load i32, i32* %i, align 4, !tbaa !1
  %221 = icmp slt i32 %220, 5
  br i1 %221, label %222, label %250

; <label>:222                                     ; preds = %219
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %223

; <label>:223                                     ; preds = %243, %222
  %224 = load i32, i32* %j, align 4, !tbaa !1
  %225 = icmp slt i32 %224, 4
  br i1 %225, label %226, label %246

; <label>:226                                     ; preds = %223
  %227 = load i32, i32* %j, align 4, !tbaa !1
  %228 = sext i32 %227 to i64
  %229 = load i32, i32* %i, align 4, !tbaa !1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [5 x [4 x i32]], [5 x [4 x i32]]* @g_349, i32 0, i64 %230
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %231, i32 0, i64 %228
  %233 = load i32, i32* %232, align 4, !tbaa !1
  %234 = zext i32 %233 to i64
  %235 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %234, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 %235)
  %236 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

; <label>:238                                     ; preds = %226
  %239 = load i32, i32* %i, align 4, !tbaa !1
  %240 = load i32, i32* %j, align 4, !tbaa !1
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %239, i32 %240)
  br label %242

; <label>:242                                     ; preds = %238, %226
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load i32, i32* %j, align 4, !tbaa !1
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %j, align 4, !tbaa !1
  br label %223

; <label>:246                                     ; preds = %223
  br label %247

; <label>:247                                     ; preds = %246
  %248 = load i32, i32* %i, align 4, !tbaa !1
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %i, align 4, !tbaa !1
  br label %219

; <label>:250                                     ; preds = %219
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:251                                     ; preds = %278, %250
  %252 = load i32, i32* %i, align 4, !tbaa !1
  %253 = icmp slt i32 %252, 4
  br i1 %253, label %254, label %281

; <label>:254                                     ; preds = %251
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %255

; <label>:255                                     ; preds = %274, %254
  %256 = load i32, i32* %j, align 4, !tbaa !1
  %257 = icmp slt i32 %256, 5
  br i1 %257, label %258, label %277

; <label>:258                                     ; preds = %255
  %259 = load i32, i32* %j, align 4, !tbaa !1
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* %i, align 4, !tbaa !1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x [5 x i64]], [4 x [5 x i64]]* @g_493, i32 0, i64 %262
  %264 = getelementptr inbounds [5 x i64], [5 x i64]* %263, i32 0, i64 %260
  %265 = load i64, i64* %264, align 8, !tbaa !7
  %266 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %266)
  %267 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

; <label>:269                                     ; preds = %258
  %270 = load i32, i32* %i, align 4, !tbaa !1
  %271 = load i32, i32* %j, align 4, !tbaa !1
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %270, i32 %271)
  br label %273

; <label>:273                                     ; preds = %269, %258
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load i32, i32* %j, align 4, !tbaa !1
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %j, align 4, !tbaa !1
  br label %255

; <label>:277                                     ; preds = %255
  br label %278

; <label>:278                                     ; preds = %277
  %279 = load i32, i32* %i, align 4, !tbaa !1
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %i, align 4, !tbaa !1
  br label %251

; <label>:281                                     ; preds = %251
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %282

; <label>:282                                     ; preds = %321, %281
  %283 = load i32, i32* %i, align 4, !tbaa !1
  %284 = icmp slt i32 %283, 5
  br i1 %284, label %285, label %324

; <label>:285                                     ; preds = %282
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %286

; <label>:286                                     ; preds = %317, %285
  %287 = load i32, i32* %j, align 4, !tbaa !1
  %288 = icmp slt i32 %287, 10
  br i1 %288, label %289, label %320

; <label>:289                                     ; preds = %286
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %290

; <label>:290                                     ; preds = %313, %289
  %291 = load i32, i32* %k, align 4, !tbaa !1
  %292 = icmp slt i32 %291, 5
  br i1 %292, label %293, label %316

; <label>:293                                     ; preds = %290
  %294 = load i32, i32* %k, align 4, !tbaa !1
  %295 = sext i32 %294 to i64
  %296 = load i32, i32* %j, align 4, !tbaa !1
  %297 = sext i32 %296 to i64
  %298 = load i32, i32* %i, align 4, !tbaa !1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [5 x [10 x [5 x i64]]], [5 x [10 x [5 x i64]]]* @g_495, i32 0, i64 %299
  %301 = getelementptr inbounds [10 x [5 x i64]], [10 x [5 x i64]]* %300, i32 0, i64 %297
  %302 = getelementptr inbounds [5 x i64], [5 x i64]* %301, i32 0, i64 %295
  %303 = load i64, i64* %302, align 8, !tbaa !7
  %304 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %303, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 %304)
  %305 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

; <label>:307                                     ; preds = %293
  %308 = load i32, i32* %i, align 4, !tbaa !1
  %309 = load i32, i32* %j, align 4, !tbaa !1
  %310 = load i32, i32* %k, align 4, !tbaa !1
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %308, i32 %309, i32 %310)
  br label %312

; <label>:312                                     ; preds = %307, %293
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load i32, i32* %k, align 4, !tbaa !1
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %k, align 4, !tbaa !1
  br label %290

; <label>:316                                     ; preds = %290
  br label %317

; <label>:317                                     ; preds = %316
  %318 = load i32, i32* %j, align 4, !tbaa !1
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %j, align 4, !tbaa !1
  br label %286

; <label>:320                                     ; preds = %286
  br label %321

; <label>:321                                     ; preds = %320
  %322 = load i32, i32* %i, align 4, !tbaa !1
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %i, align 4, !tbaa !1
  br label %282

; <label>:324                                     ; preds = %282
  %325 = load i8, i8* @g_513, align 1, !tbaa !9
  %326 = zext i8 %325 to i64
  %327 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %326, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %327)
  %328 = load i32, i32* @g_596, align 4, !tbaa !1
  %329 = zext i32 %328 to i64
  %330 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 %330)
  %331 = load i16, i16* @g_612, align 2, !tbaa !10
  %332 = sext i16 %331 to i64
  %333 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %332, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %333)
  %334 = load volatile i32, i32* @g_764, align 4, !tbaa !1
  %335 = sext i32 %334 to i64
  %336 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %335, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 %336)
  %337 = load i16, i16* @g_845, align 2, !tbaa !10
  %338 = sext i16 %337 to i64
  %339 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 %339)
  %340 = load i64, i64* @g_851, align 8, !tbaa !7
  %341 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %340, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %341)
  %342 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %342)
  %343 = load i32, i32* @g_957, align 4, !tbaa !1
  %344 = sext i32 %343 to i64
  %345 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 %345)
  %346 = load i32, i32* @g_1116, align 4, !tbaa !1
  %347 = zext i32 %346 to i64
  %348 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %347, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %348)
  %349 = load volatile i16, i16* @g_1152, align 2, !tbaa !10
  %350 = zext i16 %349 to i64
  %351 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %351)
  %352 = load i32, i32* @g_1158, align 4, !tbaa !1
  %353 = zext i32 %352 to i64
  %354 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %354)
  %355 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 1559816860, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 %355)
  %356 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 154046894, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 %356)
  %357 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 65052873, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %357)
  %358 = load i64, i64* @g_1718, align 8, !tbaa !7
  %359 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %358, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 %359)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:360                                     ; preds = %376, %324
  %361 = load i32, i32* %i, align 4, !tbaa !1
  %362 = icmp slt i32 %361, 10
  br i1 %362, label %363, label %379

; <label>:363                                     ; preds = %360
  %364 = load i32, i32* %i, align 4, !tbaa !1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [10 x i16], [10 x i16]* @g_1826, i32 0, i64 %365
  %367 = load i16, i16* %366, align 2, !tbaa !10
  %368 = sext i16 %367 to i64
  %369 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %368, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 %369)
  %370 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %375

; <label>:372                                     ; preds = %363
  %373 = load i32, i32* %i, align 4, !tbaa !1
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %373)
  br label %375

; <label>:375                                     ; preds = %372, %363
  br label %376

; <label>:376                                     ; preds = %375
  %377 = load i32, i32* %i, align 4, !tbaa !1
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %i, align 4, !tbaa !1
  br label %360

; <label>:379                                     ; preds = %360
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:380                                     ; preds = %420, %379
  %381 = load i32, i32* %i, align 4, !tbaa !1
  %382 = icmp slt i32 %381, 10
  br i1 %382, label %383, label %423

; <label>:383                                     ; preds = %380
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:384                                     ; preds = %416, %383
  %385 = load i32, i32* %j, align 4, !tbaa !1
  %386 = icmp slt i32 %385, 2
  br i1 %386, label %387, label %419

; <label>:387                                     ; preds = %384
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %388

; <label>:388                                     ; preds = %412, %387
  %389 = load i32, i32* %k, align 4, !tbaa !1
  %390 = icmp slt i32 %389, 4
  br i1 %390, label %391, label %415

; <label>:391                                     ; preds = %388
  %392 = load i32, i32* %k, align 4, !tbaa !1
  %393 = sext i32 %392 to i64
  %394 = load i32, i32* %j, align 4, !tbaa !1
  %395 = sext i32 %394 to i64
  %396 = load i32, i32* %i, align 4, !tbaa !1
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [10 x [2 x [4 x i32]]], [10 x [2 x [4 x i32]]]* @g_1927, i32 0, i64 %397
  %399 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %398, i32 0, i64 %395
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %399, i32 0, i64 %393
  %401 = load volatile i32, i32* %400, align 4, !tbaa !1
  %402 = sext i32 %401 to i64
  %403 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %402, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i32 %403)
  %404 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

; <label>:406                                     ; preds = %391
  %407 = load i32, i32* %i, align 4, !tbaa !1
  %408 = load i32, i32* %j, align 4, !tbaa !1
  %409 = load i32, i32* %k, align 4, !tbaa !1
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %407, i32 %408, i32 %409)
  br label %411

; <label>:411                                     ; preds = %406, %391
  br label %412

; <label>:412                                     ; preds = %411
  %413 = load i32, i32* %k, align 4, !tbaa !1
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %k, align 4, !tbaa !1
  br label %388

; <label>:415                                     ; preds = %388
  br label %416

; <label>:416                                     ; preds = %415
  %417 = load i32, i32* %j, align 4, !tbaa !1
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %j, align 4, !tbaa !1
  br label %384

; <label>:419                                     ; preds = %384
  br label %420

; <label>:420                                     ; preds = %419
  %421 = load i32, i32* %i, align 4, !tbaa !1
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %i, align 4, !tbaa !1
  br label %380

; <label>:423                                     ; preds = %380
  %424 = load i8, i8* @g_2064, align 1, !tbaa !9
  %425 = sext i8 %424 to i64
  %426 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %425, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 %426)
  %427 = load volatile i32, i32* @g_2066, align 4, !tbaa !1
  %428 = sext i32 %427 to i64
  %429 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %428, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i32 %429)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %430

; <label>:430                                     ; preds = %446, %423
  %431 = load i32, i32* %i, align 4, !tbaa !1
  %432 = icmp slt i32 %431, 3
  br i1 %432, label %433, label %449

; <label>:433                                     ; preds = %430
  %434 = load i32, i32* %i, align 4, !tbaa !1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [3 x i32], [3 x i32]* @g_2151, i32 0, i64 %435
  %437 = load i32, i32* %436, align 4, !tbaa !1
  %438 = sext i32 %437 to i64
  %439 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %438, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i32 %439)
  %440 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

; <label>:442                                     ; preds = %433
  %443 = load i32, i32* %i, align 4, !tbaa !1
  %444 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %443)
  br label %445

; <label>:445                                     ; preds = %442, %433
  br label %446

; <label>:446                                     ; preds = %445
  %447 = load i32, i32* %i, align 4, !tbaa !1
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %i, align 4, !tbaa !1
  br label %430

; <label>:449                                     ; preds = %430
  %450 = load i64, i64* @g_2259, align 8, !tbaa !7
  %451 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 %451)
  %452 = load i8, i8* @g_2285, align 1, !tbaa !9
  %453 = sext i8 %452 to i64
  %454 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 %454)
  %455 = load volatile i64, i64* @g_2341, align 8, !tbaa !7
  %456 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %455, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i32 %456)
  %457 = load i32, i32* @g_2367, align 4, !tbaa !1
  %458 = zext i32 %457 to i64
  %459 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %458, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 %459)
  %460 = load volatile i64, i64* @g_2705, align 8, !tbaa !7
  %461 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %460, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 %461)
  %462 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 -3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %462)
  %463 = load volatile i8, i8* @g_2763, align 1, !tbaa !9
  %464 = zext i8 %463 to i64
  %465 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %464, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 %465)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:466                                     ; preds = %494, %449
  %467 = load i32, i32* %i, align 4, !tbaa !1
  %468 = icmp slt i32 %467, 7
  br i1 %468, label %469, label %497

; <label>:469                                     ; preds = %466
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %470

; <label>:470                                     ; preds = %490, %469
  %471 = load i32, i32* %j, align 4, !tbaa !1
  %472 = icmp slt i32 %471, 3
  br i1 %472, label %473, label %493

; <label>:473                                     ; preds = %470
  %474 = load i32, i32* %j, align 4, !tbaa !1
  %475 = sext i32 %474 to i64
  %476 = load i32, i32* %i, align 4, !tbaa !1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [7 x [3 x i8]], [7 x [3 x i8]]* @g_2859, i32 0, i64 %477
  %479 = getelementptr inbounds [3 x i8], [3 x i8]* %478, i32 0, i64 %475
  %480 = load i8, i8* %479, align 1, !tbaa !9
  %481 = zext i8 %480 to i64
  %482 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %481, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 %482)
  %483 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %489

; <label>:485                                     ; preds = %473
  %486 = load i32, i32* %i, align 4, !tbaa !1
  %487 = load i32, i32* %j, align 4, !tbaa !1
  %488 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), i32 %486, i32 %487)
  br label %489

; <label>:489                                     ; preds = %485, %473
  br label %490

; <label>:490                                     ; preds = %489
  %491 = load i32, i32* %j, align 4, !tbaa !1
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %j, align 4, !tbaa !1
  br label %470

; <label>:493                                     ; preds = %470
  br label %494

; <label>:494                                     ; preds = %493
  %495 = load i32, i32* %i, align 4, !tbaa !1
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %i, align 4, !tbaa !1
  br label %466

; <label>:497                                     ; preds = %466
  %498 = load i8, i8* @g_2981, align 1, !tbaa !9
  %499 = zext i8 %498 to i64
  %500 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %499, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i32 %500)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %501

; <label>:501                                     ; preds = %517, %497
  %502 = load i32, i32* %i, align 4, !tbaa !1
  %503 = icmp slt i32 %502, 10
  br i1 %503, label %504, label %520

; <label>:504                                     ; preds = %501
  %505 = load i32, i32* %i, align 4, !tbaa !1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [10 x i32], [10 x i32]* @g_3000, i32 0, i64 %506
  %508 = load i32, i32* %507, align 4, !tbaa !1
  %509 = sext i32 %508 to i64
  %510 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %509, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 %510)
  %511 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %516

; <label>:513                                     ; preds = %504
  %514 = load i32, i32* %i, align 4, !tbaa !1
  %515 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %514)
  br label %516

; <label>:516                                     ; preds = %513, %504
  br label %517

; <label>:517                                     ; preds = %516
  %518 = load i32, i32* %i, align 4, !tbaa !1
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %i, align 4, !tbaa !1
  br label %501

; <label>:520                                     ; preds = %501
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %521

; <label>:521                                     ; preds = %561, %520
  %522 = load i32, i32* %i, align 4, !tbaa !1
  %523 = icmp slt i32 %522, 2
  br i1 %523, label %524, label %564

; <label>:524                                     ; preds = %521
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %525

; <label>:525                                     ; preds = %557, %524
  %526 = load i32, i32* %j, align 4, !tbaa !1
  %527 = icmp slt i32 %526, 8
  br i1 %527, label %528, label %560

; <label>:528                                     ; preds = %525
  store i32 0, i32* %k, align 4, !tbaa !1
  br label %529

; <label>:529                                     ; preds = %553, %528
  %530 = load i32, i32* %k, align 4, !tbaa !1
  %531 = icmp slt i32 %530, 5
  br i1 %531, label %532, label %556

; <label>:532                                     ; preds = %529
  %533 = load i32, i32* %k, align 4, !tbaa !1
  %534 = sext i32 %533 to i64
  %535 = load i32, i32* %j, align 4, !tbaa !1
  %536 = sext i32 %535 to i64
  %537 = load i32, i32* %i, align 4, !tbaa !1
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [2 x [8 x [5 x i32]]], [2 x [8 x [5 x i32]]]* @g_3031, i32 0, i64 %538
  %540 = getelementptr inbounds [8 x [5 x i32]], [8 x [5 x i32]]* %539, i32 0, i64 %536
  %541 = getelementptr inbounds [5 x i32], [5 x i32]* %540, i32 0, i64 %534
  %542 = load i32, i32* %541, align 4, !tbaa !1
  %543 = sext i32 %542 to i64
  %544 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %543, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 %544)
  %545 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %552

; <label>:547                                     ; preds = %532
  %548 = load i32, i32* %i, align 4, !tbaa !1
  %549 = load i32, i32* %j, align 4, !tbaa !1
  %550 = load i32, i32* %k, align 4, !tbaa !1
  %551 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %548, i32 %549, i32 %550)
  br label %552

; <label>:552                                     ; preds = %547, %532
  br label %553

; <label>:553                                     ; preds = %552
  %554 = load i32, i32* %k, align 4, !tbaa !1
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %k, align 4, !tbaa !1
  br label %529

; <label>:556                                     ; preds = %529
  br label %557

; <label>:557                                     ; preds = %556
  %558 = load i32, i32* %j, align 4, !tbaa !1
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %j, align 4, !tbaa !1
  br label %525

; <label>:560                                     ; preds = %525
  br label %561

; <label>:561                                     ; preds = %560
  %562 = load i32, i32* %i, align 4, !tbaa !1
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %i, align 4, !tbaa !1
  br label %521

; <label>:564                                     ; preds = %521
  %565 = load volatile i64, i64* @g_3111, align 8, !tbaa !7
  %566 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %565, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 %566)
  %567 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 4294967294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %567)
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %568

; <label>:568                                     ; preds = %583, %564
  %569 = load i32, i32* %i, align 4, !tbaa !1
  %570 = icmp slt i32 %569, 7
  br i1 %570, label %571, label %586

; <label>:571                                     ; preds = %568
  %572 = load i32, i32* %i, align 4, !tbaa !1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [7 x i64], [7 x i64]* @g_3531, i32 0, i64 %573
  %575 = load volatile i64, i64* %574, align 8, !tbaa !7
  %576 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @transparent_crc(i64 %575, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 %576)
  %577 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %582

; <label>:579                                     ; preds = %571
  %580 = load i32, i32* %i, align 4, !tbaa !1
  %581 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %580)
  br label %582

; <label>:582                                     ; preds = %579, %571
  br label %583

; <label>:583                                     ; preds = %582
  %584 = load i32, i32* %i, align 4, !tbaa !1
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %i, align 4, !tbaa !1
  br label %568

; <label>:586                                     ; preds = %568
  %587 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %588 = zext i32 %587 to i64
  %589 = xor i64 %588, 4294967295
  %590 = trunc i64 %589 to i32
  %591 = load i32, i32* %print_hash_value, align 4, !tbaa !1
  call void @platform_main_end(i32 %590, i32 %591)
  %592 = bitcast i32* %print_hash_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %592) #1
  %593 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %593) #1
  %594 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %594) #1
  %595 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %595) #1
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @platform_main_begin() #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_gentab() #0 {
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 -306674912, i32* %poly, align 4, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:5                                       ; preds = %33, %0
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %36

; <label>:8                                       ; preds = %5
  %9 = load i32, i32* %i, align 4, !tbaa !1
  store i32 %9, i32* %crc, align 4, !tbaa !1
  store i32 8, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:10                                      ; preds = %25, %8
  %11 = load i32, i32* %j, align 4, !tbaa !1
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %10
  %14 = load i32, i32* %crc, align 4, !tbaa !1
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = load i32, i32* %crc, align 4, !tbaa !1
  %19 = lshr i32 %18, 1
  %20 = xor i32 %19, -306674912
  store i32 %20, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:21                                      ; preds = %13
  %22 = load i32, i32* %crc, align 4, !tbaa !1
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %crc, align 4, !tbaa !1
  br label %24

; <label>:24                                      ; preds = %21, %17
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %j, align 4, !tbaa !1
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %j, align 4, !tbaa !1
  br label %10

; <label>:28                                      ; preds = %10
  %29 = load i32, i32* %crc, align 4, !tbaa !1
  %30 = load i32, i32* %i, align 4, !tbaa !1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %31
  store i32 %29, i32* %32, align 4, !tbaa !1
  br label %33

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %i, align 4, !tbaa !1
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %i, align 4, !tbaa !1
  br label %5

; <label>:36                                      ; preds = %5
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %poly to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %crc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @func_1() #0 {
  %l_3335 = alloca i32, align 4
  %l_3369 = alloca i32**, align 8
  %l_3386 = alloca i8, align 1
  %l_3395 = alloca i64, align 8
  %l_3396 = alloca i32, align 4
  %l_3401 = alloca i8, align 1
  %l_3454 = alloca i64*, align 8
  %l_3497 = alloca i32, align 4
  %l_3529 = alloca i32, align 4
  %l_3534 = alloca [1 x i32*], align 8
  %l_3535 = alloca i32, align 4
  %l_3540 = alloca i8, align 1
  %i = alloca i32, align 4
  %l_20 = alloca i32, align 4
  %l_3334 = alloca i32, align 4
  %l_3344 = alloca i32, align 4
  %l_3345 = alloca i64*, align 8
  %l_3381 = alloca i16, align 2
  %l_3388 = alloca i32, align 4
  %l_3393 = alloca [6 x [4 x i32*]], align 16
  %l_3400 = alloca i16, align 2
  %l_3434 = alloca i16, align 2
  %l_3450 = alloca [2 x [2 x [2 x i64]]], align 16
  %l_3493 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %1 = bitcast i32* %l_3335 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 -1, i32* %l_3335, align 4, !tbaa !1
  %2 = bitcast i32*** %l_3369 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i32** @g_1656, i32*** %l_3369, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_3386) #1
  store i8 0, i8* %l_3386, align 1, !tbaa !9
  %3 = bitcast i64* %l_3395 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i64 0, i64* %l_3395, align 8, !tbaa !7
  %4 = bitcast i32* %l_3396 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -1, i32* %l_3396, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3401) #1
  store i8 96, i8* %l_3401, align 1, !tbaa !9
  %5 = bitcast i64** %l_3454 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64* getelementptr inbounds ([10 x [3 x [8 x i64]]], [10 x [3 x [8 x i64]]]* @g_114, i32 0, i64 6, i64 0, i64 6), i64** %l_3454, align 8, !tbaa !5
  %6 = bitcast i32* %l_3497 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %l_3497, align 4, !tbaa !1
  %7 = bitcast i32* %l_3529 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 -1981092274, i32* %l_3529, align 4, !tbaa !1
  %8 = bitcast [1 x i32*]* %l_3534 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %l_3535 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 -6, i32* %l_3535, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %l_3540) #1
  store i8 -1, i8* %l_3540, align 1, !tbaa !9
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %11

; <label>:11                                      ; preds = %18, %0
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %11
  %15 = load i32, i32* %i, align 4, !tbaa !1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1 x i32*], [1 x i32*]* %l_3534, i32 0, i64 %16
  store i32* %l_3497, i32** %17, align 8, !tbaa !5
  br label %18

; <label>:18                                      ; preds = %14
  %19 = load i32, i32* %i, align 4, !tbaa !1
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %i, align 4, !tbaa !1
  br label %11

; <label>:21                                      ; preds = %11
  store i32 0, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:22                                      ; preds = %85, %21
  %23 = load i32, i32* @g_2, align 4, !tbaa !1
  %24 = icmp sge i32 %23, -9
  br i1 %24, label %25, label %90

; <label>:25                                      ; preds = %22
  %26 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 -10, i32* %l_20, align 4, !tbaa !1
  %27 = bitcast i32* %l_3334 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 -7, i32* %l_3334, align 4, !tbaa !1
  %28 = bitcast i32* %l_3344 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 1, i32* %l_3344, align 4, !tbaa !1
  %29 = bitcast i64** %l_3345 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  store i64* @g_1718, i64** %l_3345, align 8, !tbaa !5
  %30 = bitcast i16* %l_3381 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %30) #1
  store i16 1, i16* %l_3381, align 2, !tbaa !10
  %31 = bitcast i32* %l_3388 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 -752968656, i32* %l_3388, align 4, !tbaa !1
  %32 = bitcast [6 x [4 x i32*]]* %l_3393 to i8*
  call void @llvm.lifetime.start(i64 192, i8* %32) #1
  %33 = getelementptr inbounds [6 x [4 x i32*]], [6 x [4 x i32*]]* %l_3393, i64 0, i64 0
  %34 = getelementptr inbounds [4 x i32*], [4 x i32*]* %33, i64 0, i64 0
  store i32* %l_20, i32** %34, !tbaa !5
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  store i32* %l_20, i32** %35, !tbaa !5
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  store i32* %l_20, i32** %36, !tbaa !5
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  store i32* %l_20, i32** %37, !tbaa !5
  %38 = getelementptr inbounds [4 x i32*], [4 x i32*]* %33, i64 1
  %39 = getelementptr inbounds [4 x i32*], [4 x i32*]* %38, i64 0, i64 0
  store i32* %l_20, i32** %39, !tbaa !5
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  store i32* %l_20, i32** %40, !tbaa !5
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  store i32* %l_20, i32** %41, !tbaa !5
  %42 = getelementptr inbounds i32*, i32** %41, i64 1
  store i32* %l_20, i32** %42, !tbaa !5
  %43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %38, i64 1
  %44 = getelementptr inbounds [4 x i32*], [4 x i32*]* %43, i64 0, i64 0
  store i32* %l_20, i32** %44, !tbaa !5
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  store i32* %l_20, i32** %45, !tbaa !5
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  store i32* %l_20, i32** %46, !tbaa !5
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* %l_20, i32** %47, !tbaa !5
  %48 = getelementptr inbounds [4 x i32*], [4 x i32*]* %43, i64 1
  %49 = getelementptr inbounds [4 x i32*], [4 x i32*]* %48, i64 0, i64 0
  store i32* %l_20, i32** %49, !tbaa !5
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  store i32* %l_20, i32** %50, !tbaa !5
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  store i32* %l_20, i32** %51, !tbaa !5
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  store i32* %l_20, i32** %52, !tbaa !5
  %53 = getelementptr inbounds [4 x i32*], [4 x i32*]* %48, i64 1
  %54 = getelementptr inbounds [4 x i32*], [4 x i32*]* %53, i64 0, i64 0
  store i32* %l_20, i32** %54, !tbaa !5
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* %l_20, i32** %55, !tbaa !5
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  store i32* %l_20, i32** %56, !tbaa !5
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* %l_20, i32** %57, !tbaa !5
  %58 = getelementptr inbounds [4 x i32*], [4 x i32*]* %53, i64 1
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %58, i64 0, i64 0
  store i32* %l_20, i32** %59, !tbaa !5
  %60 = getelementptr inbounds i32*, i32** %59, i64 1
  store i32* %l_20, i32** %60, !tbaa !5
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  store i32* %l_20, i32** %61, !tbaa !5
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  store i32* %l_20, i32** %62, !tbaa !5
  %63 = bitcast i16* %l_3400 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %63) #1
  store i16 -3, i16* %l_3400, align 2, !tbaa !10
  %64 = bitcast i16* %l_3434 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %64) #1
  store i16 1, i16* %l_3434, align 2, !tbaa !10
  %65 = bitcast [2 x [2 x [2 x i64]]]* %l_3450 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %65) #1
  %66 = bitcast [2 x [2 x [2 x i64]]]* %l_3450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* bitcast ([2 x [2 x [2 x i64]]]* @func_1.l_3450 to i8*), i64 64, i32 16, i1 false)
  %67 = bitcast i32* %l_3493 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  store i32 -1399826187, i32* %l_3493, align 4, !tbaa !1
  %68 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %l_3493 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [2 x [2 x [2 x i64]]]* %l_3450 to i8*
  call void @llvm.lifetime.end(i64 64, i8* %75) #1
  %76 = bitcast i16* %l_3434 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %76) #1
  %77 = bitcast i16* %l_3400 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %77) #1
  %78 = bitcast [6 x [4 x i32*]]* %l_3393 to i8*
  call void @llvm.lifetime.end(i64 192, i8* %78) #1
  %79 = bitcast i32* %l_3388 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i16* %l_3381 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %80) #1
  %81 = bitcast i64** %l_3345 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %l_3344 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %l_3334 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %l_20 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  br label %85

; <label>:85                                      ; preds = %25
  %86 = load i32, i32* @g_2, align 4, !tbaa !1
  %87 = trunc i32 %86 to i16
  %88 = call signext i16 @safe_sub_func_int16_t_s_s(i16 signext %87, i16 signext 1)
  %89 = sext i16 %88 to i32
  store i32 %89, i32* @g_2, align 4, !tbaa !1
  br label %22

; <label>:90                                      ; preds = %22
  %91 = load i32, i32* %l_3535, align 4, !tbaa !1
  %92 = add i32 %91, -1
  store i32 %92, i32* %l_3535, align 4, !tbaa !1
  %93 = load volatile i32**, i32*** @g_2408, align 8, !tbaa !5
  %94 = load i32*, i32** %93, align 8, !tbaa !5
  %95 = load volatile i32**, i32*** @g_3539, align 8, !tbaa !5
  store i32* %94, i32** %95, align 8, !tbaa !5
  %96 = load i8, i8* %l_3540, align 1, !tbaa !9
  %97 = zext i8 %96 to i32
  %98 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3540) #1
  %99 = bitcast i32* %l_3535 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast [1 x i32*]* %l_3534 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %l_3529 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %l_3497 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i64** %l_3454 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3401) #1
  %104 = bitcast i32* %l_3396 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i64* %l_3395 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_3386) #1
  %106 = bitcast i32*** %l_3369 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast i32* %l_3335 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal void @transparent_crc(i64 %val, i8* %vname, i32 %flag) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i64 %val, i64* %1, align 8, !tbaa !7
  store i8* %vname, i8** %2, align 8, !tbaa !5
  store i32 %flag, i32* %3, align 4, !tbaa !1
  %4 = load i64, i64* %1, align 8, !tbaa !7
  call void @crc32_8bytes(i64 %4)
  %5 = load i32, i32* %3, align 4, !tbaa !1
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load i8*, i8** %2, align 8, !tbaa !5
  %9 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %10 = zext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.54, i32 0, i32 0), i8* %8, i64 %11)
  br label %13

; <label>:13                                      ; preds = %7, %0
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @platform_main_end(i32 %crc, i32 %flag) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %crc, i32* %1, align 4, !tbaa !1
  store i32 %flag, i32* %2, align 4, !tbaa !1
  %3 = load i32, i32* %1, align 4, !tbaa !1
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0), i32 %3)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal signext i16 @safe_sub_func_int16_t_s_s(i16 signext %si1, i16 signext %si2) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  store i16 %si1, i16* %1, align 2, !tbaa !10
  store i16 %si2, i16* %2, align 2, !tbaa !10
  %3 = load i16, i16* %1, align 2, !tbaa !10
  %4 = sext i16 %3 to i32
  %5 = load i16, i16* %2, align 2, !tbaa !10
  %6 = sext i16 %5 to i32
  %7 = sub nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define internal void @crc32_8bytes(i64 %val) #0 {
  %1 = alloca i64, align 8
  store i64 %val, i64* %1, align 8, !tbaa !7
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %3 = lshr i64 %2, 0
  %4 = and i64 %3, 255
  %5 = trunc i64 %4 to i8
  call void @crc32_byte(i8 zeroext %5)
  %6 = load i64, i64* %1, align 8, !tbaa !7
  %7 = lshr i64 %6, 8
  %8 = and i64 %7, 255
  %9 = trunc i64 %8 to i8
  call void @crc32_byte(i8 zeroext %9)
  %10 = load i64, i64* %1, align 8, !tbaa !7
  %11 = lshr i64 %10, 16
  %12 = and i64 %11, 255
  %13 = trunc i64 %12 to i8
  call void @crc32_byte(i8 zeroext %13)
  %14 = load i64, i64* %1, align 8, !tbaa !7
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i8
  call void @crc32_byte(i8 zeroext %17)
  %18 = load i64, i64* %1, align 8, !tbaa !7
  %19 = lshr i64 %18, 32
  %20 = and i64 %19, 255
  %21 = trunc i64 %20 to i8
  call void @crc32_byte(i8 zeroext %21)
  %22 = load i64, i64* %1, align 8, !tbaa !7
  %23 = lshr i64 %22, 40
  %24 = and i64 %23, 255
  %25 = trunc i64 %24 to i8
  call void @crc32_byte(i8 zeroext %25)
  %26 = load i64, i64* %1, align 8, !tbaa !7
  %27 = lshr i64 %26, 48
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  call void @crc32_byte(i8 zeroext %29)
  %30 = load i64, i64* %1, align 8, !tbaa !7
  %31 = lshr i64 %30, 56
  %32 = and i64 %31, 255
  %33 = trunc i64 %32 to i8
  call void @crc32_byte(i8 zeroext %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
  %1 = alloca i8, align 1
  store i8 %b, i8* %1, align 1, !tbaa !9
  %2 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %3 = lshr i32 %2, 8
  %4 = and i32 %3, 16777215
  %5 = load i32, i32* @crc32_context, align 4, !tbaa !1
  %6 = load i8, i8* %1, align 1, !tbaa !9
  %7 = zext i8 %6 to i32
  %8 = xor i32 %5, %7
  %9 = and i32 %8, 255
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i32 0, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !1
  %13 = xor i32 %4, %12
  store i32 %13, i32* @crc32_context, align 4, !tbaa !1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.1 (tags/RELEASE_371/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
