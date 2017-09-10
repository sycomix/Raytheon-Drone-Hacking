.class public Lorg/apache/sanselan/common/BinaryFileFunctions;
.super Ljava/lang/Object;
.source "BinaryFileFunctions.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected debug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    return-void
.end method

.method public static final CharsToQuad(CCCC)I
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .prologue
    .line 752
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static final compareBytes([BI[BII)Z
    .locals 4
    .param p0, "a"    # [B
    .param p1, "aStart"    # I
    .param p2, "b"    # [B
    .param p3, "bStart"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 635
    array-length v2, p0

    add-int v3, p1, p4

    if-ge v2, v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    array-length v2, p2

    add-int v3, p3, p4

    if-lt v2, v3, :cond_0

    .line 640
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 642
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    .line 640
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 646
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final compareBytes([B[B)Z
    .locals 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v0, 0x0

    .line 626
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 629
    :goto_0
    return v0

    :cond_0
    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Lorg/apache/sanselan/common/BinaryFileFunctions;->compareBytes([BI[BII)Z

    move-result v0

    goto :goto_0
.end method

.method public static final head([BI)[B
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "count"    # I

    .prologue
    .line 587
    array-length v0, p0

    if-le p1, v0, :cond_0

    .line 588
    array-length p1, p0

    .line 589
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/sanselan/common/BinaryFileFunctions;->slice([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected static final int2ToByteArray(II)[B
    .locals 4
    .param p0, "value"    # I
    .param p1, "byteOrder"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_0

    .line 326
    new-array v0, v1, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 328
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [B

    shr-int/lit8 v1, p0, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method public static final slice([BII)[B
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 569
    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 570
    const/4 v0, 0x0

    .line 575
    :goto_0
    return-object v0

    .line 572
    :cond_0
    new-array v0, p2, [B

    .line 573
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static final tail([BI)[B
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "count"    # I

    .prologue
    .line 580
    array-length v0, p0

    if-le p1, v0, :cond_0

    .line 581
    array-length p1, p0

    .line 582
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, v0, p1}, Lorg/apache/sanselan/common/BinaryFileFunctions;->slice([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final compareByteArrays([BI[BII)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "aStart"    # I
    .param p3, "b"    # [B
    .param p4, "bStart"    # I
    .param p5, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 603
    array-length v2, p1

    add-int v3, p2, p5

    if-ge v2, v3, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 607
    :cond_1
    array-length v2, p3

    add-int v3, p4, p5

    if-lt v2, v3, :cond_0

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p5, :cond_2

    .line 612
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    if-ne v2, v3, :cond_0

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final compareByteArrays([B[B)Z
    .locals 6
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 594
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 597
    :goto_0
    return v2

    :cond_0
    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->compareByteArrays([BI[BII)Z

    move-result v2

    goto :goto_0
.end method

.method protected final convertByteArrayToDouble(Ljava/lang/String;[BI)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToDouble(Ljava/lang/String;[BII)D

    move-result-wide v0

    return-wide v0
.end method

.method protected final convertByteArrayToDouble(Ljava/lang/String;[BII)D
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    .line 989
    add-int/lit8 v14, p3, 0x0

    aget-byte v4, p2, v14

    .line 990
    .local v4, "byte0":B
    add-int/lit8 v14, p3, 0x1

    aget-byte v5, p2, v14

    .line 991
    .local v5, "byte1":B
    add-int/lit8 v14, p3, 0x2

    aget-byte v6, p2, v14

    .line 992
    .local v6, "byte2":B
    add-int/lit8 v14, p3, 0x3

    aget-byte v7, p2, v14

    .line 993
    .local v7, "byte3":B
    add-int/lit8 v14, p3, 0x4

    aget-byte v8, p2, v14

    .line 994
    .local v8, "byte4":B
    add-int/lit8 v14, p3, 0x5

    aget-byte v9, p2, v14

    .line 995
    .local v9, "byte5":B
    add-int/lit8 v14, p3, 0x6

    aget-byte v10, p2, v14

    .line 996
    .local v10, "byte6":B
    add-int/lit8 v14, p3, 0x7

    aget-byte v11, p2, v14

    .line 1000
    .local v11, "byte7":B
    const/16 v14, 0x4d

    move/from16 v0, p4

    if-ne v0, v14, :cond_0

    .line 1002
    and-int/lit16 v14, v4, 0xff

    shl-int/lit8 v14, v14, 0x38

    and-int/lit16 v15, v5, 0xff

    shl-int/lit8 v15, v15, 0x30

    or-int/2addr v14, v15

    and-int/lit16 v15, v6, 0xff

    shl-int/lit8 v15, v15, 0x28

    or-int/2addr v14, v15

    and-int/lit16 v15, v7, 0xff

    shl-int/lit8 v15, v15, 0x20

    or-int/2addr v14, v15

    and-int/lit16 v15, v8, 0xff

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    and-int/lit16 v15, v9, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    and-int/lit16 v15, v10, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    and-int/lit16 v15, v11, 0xff

    shl-int/lit8 v15, v15, 0x0

    or-int/2addr v14, v15

    int-to-long v2, v14

    .line 1016
    .local v2, "bits":J
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    .line 1021
    .local v12, "result":D
    return-wide v12

    .line 1010
    .end local v2    # "bits":J
    .end local v12    # "result":D
    :cond_0
    and-int/lit16 v14, v11, 0xff

    shl-int/lit8 v14, v14, 0x38

    and-int/lit16 v15, v10, 0xff

    shl-int/lit8 v15, v15, 0x30

    or-int/2addr v14, v15

    and-int/lit16 v15, v9, 0xff

    shl-int/lit8 v15, v15, 0x28

    or-int/2addr v14, v15

    and-int/lit16 v15, v8, 0xff

    shl-int/lit8 v15, v15, 0x20

    or-int/2addr v14, v15

    and-int/lit16 v15, v7, 0xff

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    and-int/lit16 v15, v6, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    and-int/lit16 v15, v5, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    and-int/lit16 v15, v4, 0xff

    shl-int/lit8 v15, v15, 0x0

    or-int/2addr v14, v15

    int-to-long v2, v14

    .restart local v2    # "bits":J
    goto :goto_0
.end method

.method protected final convertByteArrayToDoubleArray(Ljava/lang/String;[BIII)[D
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 1066
    mul-int/lit8 v3, p4, 0x8

    add-int v0, p3, v3

    .line 1068
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 1070
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": expected length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1072
    const/4 v2, 0x0

    .line 1083
    :cond_0
    return-object v2

    .line 1075
    :cond_1
    new-array v2, p4, [D

    .line 1077
    .local v2, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 1079
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p2, v3, p5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToDouble(Ljava/lang/String;[BII)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 1077
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToFloat(Ljava/lang/String;[BI)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToFloat(Ljava/lang/String;[BII)F

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToFloat(Ljava/lang/String;[BII)F
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    .line 809
    add-int/lit8 v6, p3, 0x0

    aget-byte v1, p2, v6

    .line 810
    .local v1, "byte0":B
    add-int/lit8 v6, p3, 0x1

    aget-byte v2, p2, v6

    .line 811
    .local v2, "byte1":B
    add-int/lit8 v6, p3, 0x2

    aget-byte v3, p2, v6

    .line 812
    .local v3, "byte2":B
    add-int/lit8 v6, p3, 0x3

    aget-byte v4, p2, v6

    .line 816
    .local v4, "byte3":B
    const/16 v6, 0x4d

    if-ne p4, v6, :cond_0

    .line 818
    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, v4, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int v0, v6, v7

    .line 827
    .local v0, "bits":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 832
    .local v5, "result":F
    return v5

    .line 823
    .end local v0    # "bits":I
    .end local v5    # "result":F
    :cond_0
    and-int/lit16 v6, v4, 0xff

    shl-int/lit8 v6, v6, 0x18

    and-int/lit16 v7, v3, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, v1, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int v0, v6, v7

    .restart local v0    # "bits":I
    goto :goto_0
.end method

.method protected final convertByteArrayToFloatArray(Ljava/lang/String;[BIII)[F
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 838
    mul-int/lit8 v3, p4, 0x4

    add-int v0, p3, v3

    .line 840
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 842
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": expected length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 844
    const/4 v2, 0x0

    .line 855
    :cond_0
    return-object v2

    .line 847
    :cond_1
    new-array v2, p4, [F

    .line 849
    .local v2, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 851
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p2, v3, p5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToFloat(Ljava/lang/String;[BII)F

    move-result v3

    aput v3, v2, v1

    .line 849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[BI)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToInt(Ljava/lang/String;[BII)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[BII)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    .line 258
    add-int/lit8 v5, p3, 0x0

    aget-byte v0, p2, v5

    .line 259
    .local v0, "byte0":B
    add-int/lit8 v5, p3, 0x1

    aget-byte v1, p2, v5

    .line 260
    .local v1, "byte1":B
    add-int/lit8 v5, p3, 0x2

    aget-byte v2, p2, v5

    .line 261
    .local v2, "byte2":B
    add-int/lit8 v5, p3, 0x3

    aget-byte v3, p2, v5

    .line 265
    .local v3, "byte3":B
    const/16 v5, 0x4d

    if-ne p4, v5, :cond_1

    .line 267
    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .line 276
    .local v4, "result":I
    :goto_0
    iget-boolean v5, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v5, :cond_0

    .line 277
    const/4 v5, 0x4

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;II)V

    .line 279
    :cond_0
    return v4

    .line 272
    .end local v4    # "result":I
    :cond_1
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method protected final convertByteArrayToIntArray(Ljava/lang/String;[BIII)[I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 285
    mul-int/lit8 v3, p4, 0x4

    add-int v0, p3, v3

    .line 287
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 289
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": expected length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x0

    .line 302
    :cond_0
    return-object v2

    .line 294
    :cond_1
    new-array v2, p4, [I

    .line 296
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 298
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p2, v3, p5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToInt(Ljava/lang/String;[BII)I

    move-result v3

    aput v3, v2, v1

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToRational(Ljava/lang/String;[BI)Lorg/apache/sanselan/common/RationalNumber;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v0

    return-object v0
.end method

.method protected final convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    .line 243
    add-int/lit8 v2, p3, 0x0

    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToInt(Ljava/lang/String;[BII)I

    move-result v1

    .line 244
    .local v1, "numerator":I
    add-int/lit8 v2, p3, 0x4

    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToInt(Ljava/lang/String;[BII)I

    move-result v0

    .line 246
    .local v0, "divisor":I
    new-instance v2, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v2, v1, v0}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object v2
.end method

.method protected final convertByteArrayToRationalArray(Ljava/lang/String;[BIII)[Lorg/apache/sanselan/common/RationalNumber;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 214
    mul-int/lit8 v3, p4, 0x8

    add-int v0, p3, v3

    .line 216
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 218
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": expected length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    .line 231
    :cond_0
    return-object v2

    .line 223
    :cond_1
    new-array v2, p4, [Lorg/apache/sanselan/common/RationalNumber;

    .line 225
    .local v2, "result":[Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 227
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p2, v3, p5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v3

    aput-object v3, v2, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToShort(Ljava/lang/String;I[BI)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "bytes"    # [B
    .param p4, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 440
    add-int/lit8 v3, p2, 0x1

    array-length v4, p3

    if-lt v3, v4, :cond_0

    .line 441
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Index out of bounds. Array size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 444
    :cond_0
    add-int/lit8 v3, p2, 0x0

    aget-byte v3, p3, v3

    and-int/lit16 v0, v3, 0xff

    .line 445
    .local v0, "byte0":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p3, v3

    and-int/lit16 v1, v3, 0xff

    .line 449
    .local v1, "byte1":I
    const/16 v3, 0x4d

    if-ne p4, v3, :cond_2

    .line 450
    shl-int/lit8 v3, v0, 0x8

    or-int v2, v3, v1

    .line 455
    .local v2, "result":I
    :goto_0
    iget-boolean v3, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v3, :cond_1

    .line 456
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;II)V

    .line 458
    :cond_1
    return v2

    .line 453
    .end local v2    # "result":I
    :cond_2
    shl-int/lit8 v3, v1, 0x8

    or-int v2, v3, v0

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method protected final convertByteArrayToShort(Ljava/lang/String;[BI)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToShortArray(Ljava/lang/String;[BIII)[I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 466
    mul-int/lit8 v3, p4, 0x2

    add-int v0, p3, v3

    .line 468
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 470
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": expected length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", actual length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    const/4 v2, 0x0

    .line 483
    :cond_0
    return-object v2

    .line 475
    :cond_1
    new-array v2, p4, [I

    .line 477
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 479
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, v3, p2, p5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

    move-result v3

    aput v3, v2, v1

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final convertDoubleArrayToByteArray([DI)[B
    .locals 12
    .param p1, "values"    # [D
    .param p2, "byteOrder"    # I

    .prologue
    .line 946
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x8

    new-array v3, v5, [B

    .line 947
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 949
    aget-wide v6, p1, v2

    .line 950
    .local v6, "value":D
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 952
    .local v0, "bits":J
    mul-int/lit8 v4, v2, 0x8

    .line 953
    .local v4, "start":I
    const/16 v5, 0x4d

    if-ne p2, v5, :cond_0

    .line 955
    add-int/lit8 v5, v4, 0x0

    const-wide/16 v8, 0xff

    const/4 v10, 0x0

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 956
    add-int/lit8 v5, v4, 0x1

    const-wide/16 v8, 0xff

    const/16 v10, 0x8

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 957
    add-int/lit8 v5, v4, 0x2

    const-wide/16 v8, 0xff

    const/16 v10, 0x10

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 958
    add-int/lit8 v5, v4, 0x3

    const-wide/16 v8, 0xff

    const/16 v10, 0x18

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 959
    add-int/lit8 v5, v4, 0x4

    const-wide/16 v8, 0xff

    const/16 v10, 0x20

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 960
    add-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    const/16 v10, 0x28

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 961
    add-int/lit8 v5, v4, 0x6

    const-wide/16 v8, 0xff

    const/16 v10, 0x30

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 962
    add-int/lit8 v5, v4, 0x7

    const-wide/16 v8, 0xff

    const/16 v10, 0x38

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 947
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    :cond_0
    add-int/lit8 v5, v4, 0x7

    const-wide/16 v8, 0xff

    const/4 v10, 0x0

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 966
    add-int/lit8 v5, v4, 0x6

    const-wide/16 v8, 0xff

    const/16 v10, 0x8

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 967
    add-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    const/16 v10, 0x10

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 968
    add-int/lit8 v5, v4, 0x4

    const-wide/16 v8, 0xff

    const/16 v10, 0x18

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 969
    add-int/lit8 v5, v4, 0x3

    const-wide/16 v8, 0xff

    const/16 v10, 0x20

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 970
    add-int/lit8 v5, v4, 0x2

    const-wide/16 v8, 0xff

    const/16 v10, 0x28

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 971
    add-int/lit8 v5, v4, 0x1

    const-wide/16 v8, 0xff

    const/16 v10, 0x30

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 972
    add-int/lit8 v5, v4, 0x0

    const-wide/16 v8, 0xff

    const/16 v10, 0x38

    shr-long v10, v0, v10

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    goto :goto_1

    .line 975
    .end local v0    # "bits":J
    .end local v4    # "start":I
    .end local v6    # "value":D
    :cond_1
    return-object v3
.end method

.method protected final convertDoubleToByteArray(DI)[B
    .locals 15
    .param p1, "value"    # D
    .param p3, "byteOrder"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    const-wide/16 v8, 0xff

    .line 913
    new-array v4, v11, [B

    .line 915
    .local v4, "result":[B
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 917
    .local v2, "bits":J
    const/16 v5, 0x4d

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    .line 919
    shr-long v6, v2, v10

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v10

    .line 920
    shr-long v6, v2, v11

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v12

    .line 921
    const/16 v5, 0x10

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v13

    .line 922
    const/4 v5, 0x3

    const/16 v6, 0x18

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 923
    const/4 v5, 0x4

    const/16 v6, 0x20

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 924
    const/4 v5, 0x5

    const/16 v6, 0x28

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 925
    const/4 v5, 0x6

    const/16 v6, 0x30

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 926
    const/4 v5, 0x7

    const/16 v6, 0x38

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 939
    :goto_0
    return-object v4

    .line 929
    :cond_0
    const/4 v5, 0x7

    shr-long v6, v2, v10

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 930
    const/4 v5, 0x6

    shr-long v6, v2, v11

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 931
    const/4 v5, 0x5

    const/16 v6, 0x10

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 932
    const/4 v5, 0x4

    const/16 v6, 0x18

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 933
    const/4 v5, 0x3

    const/16 v6, 0x20

    shr-long v6, v2, v6

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 934
    const/16 v5, 0x28

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v13

    .line 935
    const/16 v5, 0x30

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v12

    .line 936
    const/16 v5, 0x38

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v10

    goto :goto_0
.end method

.method protected final convertFloatArrayToByteArray([FI)[B
    .locals 7
    .param p1, "values"    # [F
    .param p2, "byteOrder"    # I

    .prologue
    .line 886
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x4

    new-array v2, v5, [B

    .line 887
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 889
    aget v4, p1, v1

    .line 890
    .local v4, "value":F
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 892
    .local v0, "bits":I
    mul-int/lit8 v3, v1, 0x4

    .line 893
    .local v3, "start":I
    const/16 v5, 0x4d

    if-ne p2, v5, :cond_0

    .line 895
    add-int/lit8 v5, v3, 0x0

    shr-int/lit8 v6, v0, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 896
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 897
    add-int/lit8 v5, v3, 0x2

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 898
    add-int/lit8 v5, v3, 0x3

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 887
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_0
    add-int/lit8 v5, v3, 0x3

    shr-int/lit8 v6, v0, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 902
    add-int/lit8 v5, v3, 0x2

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 903
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 904
    add-int/lit8 v5, v3, 0x0

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    goto :goto_1

    .line 907
    .end local v0    # "bits":I
    .end local v3    # "start":I
    .end local v4    # "value":F
    :cond_1
    return-object v2
.end method

.method protected final convertFloatToByteArray(FI)[B
    .locals 7
    .param p1, "value"    # F
    .param p2, "byteOrder"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 861
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 863
    .local v1, "result":[B
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 865
    .local v0, "bits":I
    const/16 v2, 0x4d

    if-ne p2, v2, :cond_0

    .line 867
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 868
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 869
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 870
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 879
    :goto_0
    return-object v1

    .line 873
    :cond_0
    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 874
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 875
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 876
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0
.end method

.method protected final convertIntArrayToByteArray([II)[B
    .locals 4
    .param p1, "values"    # [I
    .param p2, "byteOrder"    # I

    .prologue
    .line 334
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 336
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 338
    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v2, v1, v3, p2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v1
.end method

.method protected final convertIntArrayToRationalArray([I[II)[B
    .locals 5
    .param p1, "numerators"    # [I
    .param p2, "denominators"    # [I
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 387
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 388
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "numerators.length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " != denominators.length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_0
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 394
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 396
    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v2, v1, v3, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 397
    aget v2, p2, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v2, v1, v3, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    return-object v1
.end method

.method protected final convertRationalArrayToByteArray([Lorg/apache/sanselan/common/RationalNumber;I)[B
    .locals 4
    .param p1, "numbers"    # [Lorg/apache/sanselan/common/RationalNumber;
    .param p2, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 407
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x8

    new-array v1, v2, [B

    .line 409
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 411
    aget-object v2, p1, v0

    iget v2, v2, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    mul-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v2, v1, v3, p2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 413
    aget-object v2, p1, v0

    iget v2, v2, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v2, v1, v3, p2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    return-object v1
.end method

.method protected final convertRationalToByteArray(Lorg/apache/sanselan/common/RationalNumber;I)[B
    .locals 3
    .param p1, "number"    # Lorg/apache/sanselan/common/RationalNumber;
    .param p2, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 423
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 425
    .local v0, "result":[B
    iget v1, p1, Lorg/apache/sanselan/common/RationalNumber;->numerator:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 426
    iget v1, p1, Lorg/apache/sanselan/common/RationalNumber;->divisor:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2, p2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->writeIntInToByteArray(I[BII)V

    .line 428
    return-object v0
.end method

.method protected final convertShortArrayToByteArray([II)[B
    .locals 5
    .param p1, "values"    # [I
    .param p2, "byteOrder"    # I

    .prologue
    .line 347
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 349
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 351
    aget v2, p1, v0

    .line 353
    .local v2, "value":I
    const/16 v3, 0x4d

    if-ne p2, v3, :cond_0

    .line 355
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 356
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v4, v2, 0x0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 349
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 360
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    shr-int/lit8 v4, v2, 0x0

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    goto :goto_1

    .line 364
    .end local v2    # "value":I
    :cond_1
    return-object v1
.end method

.method protected final convertShortToByteArray(II)[B
    .locals 4
    .param p1, "value"    # I
    .param p2, "byteOrder"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 369
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 371
    .local v0, "result":[B
    const/16 v1, 0x4d

    if-ne p2, v1, :cond_0

    .line 373
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 374
    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_0
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 378
    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0
.end method

.method public final copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 1096
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    if-lez v1, :cond_0

    .line 1098
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1100
    :cond_0
    return-void
.end method

.method public final debugByteArray(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 521
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 525
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\t ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v1, v2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;I)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method public final debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "data"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 70
    return-void
.end method

.method public final debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "data"    # I
    .param p4, "bytes"    # I

    .prologue
    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    move v0, p3

    .line 77
    .local v0, "byteData":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 79
    if-lez v1, :cond_0

    .line 80
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    :cond_0
    and-int/lit16 v2, v0, 0xff

    .line 82
    .local v2, "singleByte":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    shr-int/lit8 v0, v0, 0x8

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "singleByte":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ") [0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 88
    return-void
.end method

.method public final debugNumber(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;II)V

    .line 56
    return-void
.end method

.method public final debugNumber(Ljava/lang/String;II)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # I
    .param p3, "bytes"    # I

    .prologue
    .line 60
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 63
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 64
    return-void
.end method

.method protected final debugNumberArray(Ljava/lang/String;[II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numbers"    # [I
    .param p3, "length"    # I

    .prologue
    .line 531
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 535
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;II)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method public final findNull([B)I
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->findNull([BI)I

    move-result v0

    return v0
.end method

.method public final findNull([BI)I
    .locals 2
    .param p1, "src"    # [B
    .param p2, "start"    # I

    .prologue
    .line 762
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 764
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 768
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 762
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final getByteArrayTail(Ljava/lang/String;[BI)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 559
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final getBytearrayHead(Ljava/lang/String;[BI)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/sanselan/common/BinaryFileFunctions;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    return v0
.end method

.method protected final getRAFBytes(Ljava/io/RandomAccessFile;JILjava/lang/String;)[B
    .locals 6
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .param p2, "pos"    # J
    .param p4, "length"    # I
    .param p5, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    iget-boolean v3, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v3, :cond_0

    .line 776
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "getRAFBytes pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 777
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "getRAFBytes length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 780
    :cond_0
    new-array v2, p4, [B

    .line 782
    .local v2, "result":[B
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 784
    const/4 v1, 0x0

    .line 785
    .local v1, "read":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 787
    sub-int v3, p4, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 788
    .local v0, "count":I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    .line 789
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, p5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 791
    :cond_1
    add-int/2addr v1, v0

    .line 792
    goto :goto_0

    .line 794
    .end local v0    # "count":I
    :cond_2
    return-object v2
.end method

.method public final getStreamBytes(Ljava/io/InputStream;)[B
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1105
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1106
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected final printByteBits(Ljava/lang/String;B)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # B

    .prologue
    .line 747
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    and-int/lit16 v2, p2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method protected final printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 739
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method protected final printCharQuad(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 731
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    shr-int/lit8 v2, p2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    shr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method protected final read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .param p4, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v3, 0x2

    .line 714
    .local v3, "size":I
    new-array v0, v3, [B

    .line 716
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 717
    .local v2, "read":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 719
    sub-int v4, v3, v2

    invoke-virtual {p2, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 720
    .local v1, "count":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 721
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 723
    :cond_0
    add-int/2addr v2, v1

    .line 724
    goto :goto_0

    .line 726
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v4

    return v4
.end method

.method protected final read3Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .param p4, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v0, v4

    .line 674
    .local v0, "byte0":B
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v1, v4

    .line 675
    .local v1, "byte1":B
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v2, v4

    .line 679
    .local v2, "byte2":B
    const/16 v4, 0x4d

    if-ne p4, v4, :cond_1

    .line 680
    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int v3, v4, v5

    .line 687
    .local v3, "result":I
    :goto_0
    iget-boolean v4, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v4, :cond_0

    .line 688
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;II)V

    .line 690
    :cond_0
    return v3

    .line 684
    .end local v3    # "result":I
    :cond_1
    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x0

    or-int v3, v4, v5

    .restart local v3    # "result":I
    goto :goto_0
.end method

.method protected final read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;I)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .param p4, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    const/4 v3, 0x4

    .line 654
    .local v3, "size":I
    new-array v0, v3, [B

    .line 656
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 657
    .local v2, "read":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 659
    sub-int v4, v3, v2

    invoke-virtual {p2, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 660
    .local v1, "count":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 661
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 663
    :cond_0
    add-int/2addr v2, v1

    .line 664
    goto :goto_0

    .line 666
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->convertByteArrayToInt(Ljava/lang/String;[BI)I

    move-result v4

    return v4
.end method

.method public final readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "expected"    # [B
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 125
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 126
    .local v1, "data":I
    and-int/lit16 v3, v1, 0xff

    int-to-byte v0, v3

    .line 128
    .local v0, "b":B
    if-gez v1, :cond_0

    .line 129
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "Unexpected EOF."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    aget-byte v3, p2, v2

    if-eq v0, v3, :cond_1

    .line 139
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v3, p3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "b":B
    .end local v1    # "data":I
    :cond_2
    return-void
.end method

.method protected final readAndVerifyBytes(Ljava/lang/String;Ljava/io/InputStream;[BLjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "expected"    # [B
    .param p4, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    array-length v2, p3

    invoke-virtual {p0, p1, v2, p2, p4}, Lorg/apache/sanselan/common/BinaryFileFunctions;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 150
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 152
    aget-byte v2, v0, v1

    aget-byte v3, p3, v1

    if-eq v2, v3, :cond_0

    .line 158
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v2, p4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method public final readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 199
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 201
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    iget-boolean v1, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;I)V

    .line 208
    :cond_1
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public final readByteArray(Ljava/lang/String;ILjava/io/InputStream;)[B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " could not be read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "exception":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public final readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    new-array v3, p2, [B

    .line 498
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 499
    .local v2, "read":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 501
    sub-int v4, p2, v2

    invoke-virtual {p3, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 503
    .local v0, "count":I
    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    .line 504
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 506
    :cond_0
    add-int/2addr v2, v0

    .line 507
    goto :goto_0

    .line 509
    .end local v0    # "count":I
    :cond_1
    iget-boolean v4, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v4, :cond_2

    .line 511
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_2

    const/16 v4, 0x32

    if-ge v1, v4, :cond_2

    .line 513
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v4, v5}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugNumber(Ljava/lang/String;I)V

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    .end local v1    # "i":I
    :cond_2
    return-object v3
.end method

.method public final readBytearray(Ljava/lang/String;[BII)[B
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 542
    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_0

    .line 544
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid read. bytes.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_0
    new-array v0, p4, [B

    .line 549
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iget-boolean v1, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    if-eqz v1, :cond_1

    .line 552
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->debugByteArray(Ljava/lang/String;[B)V

    .line 554
    :cond_1
    return-object v0
.end method

.method public final readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-array v2, p2, [B

    .line 112
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 115
    .local v0, "data":I
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "data":I
    :cond_0
    return-object v2
.end method

.method protected final readRandomBytes(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Random Data"

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/sanselan/common/BinaryFileFunctions;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method protected final scanForByte(Ljava/io/InputStream;B)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 183
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 184
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 192
    .end local v0    # "b":I
    :cond_0
    return-void

    .line 186
    .restart local v0    # "b":I
    :cond_1
    and-int/lit16 v3, v0, 0xff

    if-ne v3, p2, :cond_2

    .line 188
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": match."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lorg/apache/sanselan/common/BinaryFileFunctions;->debug:Z

    .line 36
    return-void
.end method

.method protected skipBytes(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    const-string v0, "Couldn\'t skip bytes"

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryFileFunctions;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 1089
    return-void
.end method

.method public final skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const-wide/16 v2, 0x0

    .line 167
    .local v2, "total":J
    :goto_0
    int-to-long v4, p2

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 169
    int-to-long v4, p2

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 170
    .local v0, "skipped":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 171
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_0
    add-long/2addr v2, v0

    .line 173
    goto :goto_0

    .line 174
    .end local v0    # "skipped":J
    :cond_1
    return-void
.end method

.method public final startsWith([B[B)Z
    .locals 4
    .param p1, "haystack"    # [B
    .param p2, "needle"    # [B

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-eqz p1, :cond_0

    .line 96
    array-length v2, p2

    array-length v3, p1

    if-gt v2, v3, :cond_0

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 101
    aget-byte v2, p2, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final writeIntInToByteArray(I[BII)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    .line 308
    const/16 v0, 0x4d

    if-ne p4, v0, :cond_0

    .line 310
    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 311
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 312
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 313
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 317
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 318
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 319
    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method
