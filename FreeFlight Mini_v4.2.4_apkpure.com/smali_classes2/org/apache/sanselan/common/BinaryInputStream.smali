.class public Lorg/apache/sanselan/common/BinaryInputStream;
.super Ljava/io/InputStream;
.source "BinaryInputStream.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field private byteOrder:I

.field protected debug:Z

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    .line 60
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 56
    iput-object p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "byteOrder"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    .line 60
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 50
    iput p2, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 51
    iput-object p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    .line 52
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "byteOrder"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    .line 60
    const/16 v0, 0x4d

    iput v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 44
    iput p2, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    .line 46
    return-void
.end method

.method protected static final CharsToQuad(CCCC)I
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C
    .param p2, "c3"    # C
    .param p3, "c4"    # C

    .prologue
    .line 637
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

    .line 501
    array-length v2, p1

    add-int v3, p2, p5

    if-ge v2, v3, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v1

    .line 503
    :cond_1
    array-length v2, p3

    add-int v3, p4, p5

    if-lt v2, v3, :cond_0

    .line 506
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p5, :cond_3

    .line 508
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_2

    .line 510
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "a["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 511
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "b["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p4, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v3, p4, v0

    aget-byte v3, p3, v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    goto :goto_0

    .line 506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 517
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 286
    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BIII)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToInt(Ljava/lang/String;[BIII)I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    const/4 v7, 0x4

    .line 292
    add-int/lit8 v5, p3, 0x0

    aget-byte v0, p2, v5

    .line 293
    .local v0, "byte0":B
    add-int/lit8 v5, p3, 0x1

    aget-byte v1, p2, v5

    .line 294
    .local v1, "byte1":B
    add-int/lit8 v5, p3, 0x2

    aget-byte v2, p2, v5

    .line 295
    .local v2, "byte2":B
    const/4 v3, 0x0

    .line 296
    .local v3, "byte3":B
    if-ne p4, v7, :cond_0

    .line 297
    add-int/lit8 v5, p3, 0x3

    aget-byte v3, p2, v5

    .line 304
    :cond_0
    const/16 v5, 0x4d

    if-ne p5, v5, :cond_2

    .line 305
    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int v4, v5, v6

    .line 316
    .local v4, "result":I
    :goto_0
    iget-boolean v5, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v5, :cond_1

    .line 317
    invoke-virtual {p0, p1, v4, v7}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;II)V

    .line 319
    :cond_1
    return v4

    .line 311
    .end local v4    # "result":I
    :cond_2
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int v4, v5, v6

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method protected final convertByteArrayToIntArray(Ljava/lang/String;[BIII)[I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 325
    mul-int/lit8 v0, p4, 0x4

    add-int v6, p3, v0

    .line 327
    .local v6, "expectedLength":I
    array-length v0, p2

    if-ge v0, v6, :cond_1

    .line 329
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", actual length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 331
    const/4 v8, 0x0

    .line 342
    :cond_0
    return-object v8

    .line 334
    :cond_1
    new-array v8, p4, [I

    .line 336
    .local v8, "result":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_0

    .line 338
    mul-int/lit8 v0, v7, 0x4

    add-int v3, p3, v0

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BIII)I

    move-result v0

    aput v0, v8, v7

    .line 336
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected final convertByteArrayToRational(Ljava/lang/String;[BI)Lorg/apache/sanselan/common/RationalNumber;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v0

    return-object v0
.end method

.method protected final convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "byteOrder"    # I

    .prologue
    const/4 v4, 0x4

    .line 275
    add-int/lit8 v3, p3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BIII)I

    move-result v7

    .line 277
    .local v7, "numerator":I
    add-int/lit8 v3, p3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BIII)I

    move-result v6

    .line 280
    .local v6, "divisor":I
    new-instance v0, Lorg/apache/sanselan/common/RationalNumber;

    invoke-direct {v0, v7, v6}, Lorg/apache/sanselan/common/RationalNumber;-><init>(II)V

    return-object v0
.end method

.method protected final convertByteArrayToRationalArray(Ljava/lang/String;[BIII)[Lorg/apache/sanselan/common/RationalNumber;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .param p5, "byteOrder"    # I

    .prologue
    .line 246
    mul-int/lit8 v3, p4, 0x8

    add-int v0, p3, v3

    .line 248
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 250
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

    .line 252
    const/4 v2, 0x0

    .line 263
    :cond_0
    return-object v2

    .line 255
    :cond_1
    new-array v2, p4, [Lorg/apache/sanselan/common/RationalNumber;

    .line 257
    .local v2, "result":[Lorg/apache/sanselan/common/RationalNumber;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 259
    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, p2, v3, p5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToRational(Ljava/lang/String;[BII)Lorg/apache/sanselan/common/RationalNumber;

    move-result-object v3

    aput-object v3, v2, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final convertByteArrayToShort(Ljava/lang/String;I[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 105
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToShort(Ljava/lang/String;I[BI)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "bytes"    # [B
    .param p4, "byteOrder"    # I

    .prologue
    .line 354
    add-int/lit8 v3, p2, 0x0

    aget-byte v0, p3, v3

    .line 355
    .local v0, "byte0":B
    add-int/lit8 v3, p2, 0x1

    aget-byte v1, p3, v3

    .line 361
    .local v1, "byte1":B
    const/16 v3, 0x4d

    if-ne p4, v3, :cond_1

    .line 362
    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int v2, v3, v4

    .line 367
    .local v2, "result":I
    :goto_0
    iget-boolean v3, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v3, :cond_0

    .line 368
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;II)V

    .line 370
    :cond_0
    return v2

    .line 365
    .end local v2    # "result":I
    :cond_1
    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int v2, v3, v4

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public final convertByteArrayToShort(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method protected final convertByteArrayToShort(Ljava/lang/String;[BI)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "byteOrder"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

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

    .prologue
    .line 376
    mul-int/lit8 v3, p4, 0x2

    add-int v0, p3, v3

    .line 378
    .local v0, "expectedLength":I
    array-length v3, p2

    if-ge v3, v0, :cond_1

    .line 380
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

    .line 382
    const/4 v2, 0x0

    .line 397
    :cond_0
    return-object v2

    .line 385
    :cond_1
    new-array v2, p4, [I

    .line 387
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 389
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, v3, p2, p5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToShort(Ljava/lang/String;I[BI)I

    move-result v3

    aput v3, v2, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final debugByteArray(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 427
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

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 431
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

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method public final debugNumber(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;II)V

    .line 139
    return-void
.end method

.method public final debugNumber(Ljava/lang/String;II)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "data"    # I
    .param p3, "bytes"    # I

    .prologue
    .line 143
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 144
    move v0, p2

    .line 145
    .local v0, "byteData":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 147
    if-lez v1, :cond_0

    .line 148
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 149
    :cond_0
    and-int/lit16 v2, v0, 0xff

    .line 150
    .local v2, "singleByte":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    shr-int/lit8 v0, v0, 0x8

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "singleByte":I
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ") [0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected final debugNumberArray(Ljava/lang/String;[II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numbers"    # [I
    .param p3, "length"    # I

    .prologue
    .line 437
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

    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 441
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

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;II)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method

.method public final findNull([B)I
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->findNull([BI)I

    move-result v0

    return v0
.end method

.method public final findNull([BI)I
    .locals 2
    .param p1, "src"    # [B
    .param p2, "start"    # I

    .prologue
    .line 647
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 649
    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    .line 653
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 647
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getByteOrder()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    return v0
.end method

.method protected final getBytearrayHead(Ljava/lang/String;[BI)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "count"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected final getBytearrayTail(Ljava/lang/String;[BI)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "count"    # I

    .prologue
    .line 490
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

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
    .line 659
    new-array v2, p4, [B

    .line 661
    .local v2, "result":[B
    iget-boolean v3, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v3, :cond_0

    .line 663
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

    .line 664
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

    .line 667
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, "read":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 672
    sub-int v3, p4, v1

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 673
    .local v0, "count":I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    .line 674
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, p5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 676
    :cond_1
    add-int/2addr v1, v0

    .line 677
    goto :goto_0

    .line 679
    .end local v0    # "count":I
    :cond_2
    return-object v2
.end method

.method protected final printByteBits(Ljava/lang/String;B)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # B

    .prologue
    .line 632
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

    .line 633
    return-void
.end method

.method protected final printCharQuad(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 624
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

    .line 628
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read1ByteInteger(Ljava/lang/String;)I
    .locals 2
    .param p1, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 582
    .local v0, "byte0":I
    if-gez v0, :cond_0

    .line 583
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v1, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_0
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method public final read2ByteInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v2, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 592
    .local v0, "byte0":I
    iget-object v2, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 593
    .local v1, "byte1":I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 594
    :cond_0
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v2, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :cond_1
    iget v2, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_2

    .line 597
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/2addr v2, v3

    .line 600
    :goto_0
    return v2

    :cond_2
    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x0

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public final read2Bytes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->read2Bytes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final read2Bytes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v3, 0x2

    .line 563
    .local v3, "size":I
    new-array v0, v3, [B

    .line 565
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 566
    .local v2, "read":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 568
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    sub-int v5, v3, v2

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 569
    .local v1, "count":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 570
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 572
    :cond_0
    add-int/2addr v2, v1

    .line 573
    goto :goto_0

    .line 575
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v4

    return v4
.end method

.method public final read3Bytes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->read3Bytes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final read3Bytes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    const/4 v8, 0x3

    .line 543
    .local v8, "size":I
    new-array v2, v8, [B

    .line 545
    .local v2, "bytes":[B
    const/4 v7, 0x0

    .line 546
    .local v7, "read":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 548
    iget-object v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    sub-int v1, v8, v7

    invoke-virtual {v0, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 549
    .local v6, "count":I
    const/4 v0, 0x1

    if-ge v6, v0, :cond_0

    .line 550
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_0
    add-int/2addr v7, v6

    .line 553
    goto :goto_0

    .line 555
    .end local v6    # "count":I
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BIII)I

    move-result v0

    return v0
.end method

.method public final read4ByteInteger(Ljava/lang/String;)I
    .locals 6
    .param p1, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 607
    .local v0, "byte0":I
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 608
    .local v1, "byte1":I
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 609
    .local v2, "byte2":I
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 610
    .local v3, "byte3":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    .line 611
    :cond_0
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v4, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 613
    :cond_1
    iget v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_2

    .line 614
    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    .line 618
    :goto_0
    return v4

    :cond_2
    and-int/lit16 v4, v3, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x0

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method public final read4Bytes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final read4Bytes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    const/4 v3, 0x4

    .line 524
    .local v3, "size":I
    new-array v0, v3, [B

    .line 526
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 527
    .local v2, "read":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 529
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    sub-int v5, v3, v2

    invoke-virtual {v4, v0, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 530
    .local v1, "count":I
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 531
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 533
    :cond_0
    add-int/2addr v2, v1

    .line 534
    goto :goto_0

    .line 536
    .end local v1    # "count":I
    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->convertByteArrayToInt(Ljava/lang/String;[BI)I

    move-result v4

    return v4
.end method

.method protected final readAndVerifyBytes(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # [B
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    array-length v2, p2

    invoke-virtual {p0, p1, v2, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 185
    aget-byte v2, v0, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_0

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "bytes["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aget-byte v3, v0, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 189
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aget-byte v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 191
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v2, p3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method public final readAndVerifyBytes([BLjava/lang/String;)V
    .locals 6
    .param p1, "expected"    # [B
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 162
    iget-object v3, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 163
    .local v1, "data":I
    and-int/lit16 v3, v1, 0xff

    int-to-byte v0, v3

    .line 165
    .local v0, "b":B
    if-ltz v1, :cond_0

    aget-byte v3, p1, v2

    if-eq v0, v3, :cond_1

    .line 167
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "i: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const-string v3, "expected"

    invoke-virtual {p0, v3, p1}, Lorg/apache/sanselan/common/BinaryInputStream;->debugByteArray(Ljava/lang/String;[B)V

    .line 170
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "data["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 173
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v3, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "b":B
    .end local v1    # "data":I
    :cond_2
    return-void
.end method

.method public final readByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 231
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 233
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

    .line 234
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_0
    iget-boolean v1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 240
    :cond_1
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public final readByteArray(ILjava/lang/String;)[B
    .locals 3
    .param p1, "length"    # I
    .param p2, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "verbose":Z
    const/4 v0, 0x1

    .line 465
    .local v0, "strict":Z
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v2

    return-object v2
.end method

.method public final readByteArray(ILjava/lang/String;ZZ)[B
    .locals 4
    .param p1, "length"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "verbose"    # Z
    .param p4, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    new-array v0, p1, [B

    .line 473
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 475
    .local v2, "total":I
    :goto_0
    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->read([BII)I

    move-result v1

    .local v1, "read":I
    if-lez v1, :cond_0

    .line 476
    add-int/2addr v2, v1

    goto :goto_0

    .line 477
    :cond_0
    if-ge v2, p1, :cond_3

    .line 479
    if-eqz p4, :cond_1

    .line 480
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    invoke-direct {v3, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 481
    :cond_1
    if-eqz p3, :cond_2

    .line 482
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    :cond_2
    const/4 v0, 0x0

    .line 485
    .end local v0    # "bytes":[B
    :cond_3
    return-object v0
.end method

.method public final readByteArray(Ljava/lang/String;ILjava/lang/String;)[B
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    new-array v3, p2, [B

    .line 405
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 406
    .local v2, "read":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 408
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, v3, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 409
    .local v0, "count":I
    const/4 v4, 0x1

    if-ge v0, v4, :cond_0

    .line 410
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 412
    :cond_0
    add-int/2addr v2, v0

    .line 413
    goto :goto_0

    .line 415
    .end local v0    # "count":I
    :cond_1
    iget-boolean v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v4, :cond_2

    .line 417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_2

    const/16 v4, 0x96

    if-ge v1, v4, :cond_2

    .line 419
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

    invoke-virtual {p0, v4, v5}, Lorg/apache/sanselan/common/BinaryInputStream;->debugNumber(Ljava/lang/String;I)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v1    # "i":I
    :cond_2
    return-object v3
.end method

.method public final readBytearray(Ljava/lang/String;[BII)[B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "count"    # I

    .prologue
    .line 448
    array-length v1, p2

    add-int v2, p3, p4

    if-ge v1, v2, :cond_1

    .line 449
    const/4 v0, 0x0

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    new-array v0, p4, [B

    .line 452
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    iget-boolean v1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->debugByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method protected final readRandomBytes()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 132
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

    invoke-virtual {p0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->readByte(Ljava/lang/String;Ljava/lang/String;)B

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method protected final scanForByte(B)V
    .locals 6
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 215
    iget-object v3, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 216
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 224
    .end local v0    # "b":I
    :cond_0
    return-void

    .line 218
    .restart local v0    # "b":I
    :cond_1
    and-int/lit16 v3, v0, 0xff

    if-ne v3, p1, :cond_2

    .line 220
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

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 212
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setByteOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 80
    return-void
.end method

.method protected setByteOrder(II)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    if-eq p1, p2, :cond_0

    .line 66
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Byte Order bytes don\'t match ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_1

    .line 70
    iput p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_1
    const/16 v0, 0x49

    if-ne p1, v0, :cond_2

    .line 72
    iput p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->byteOrder:I

    goto :goto_0

    .line 74
    :cond_2
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown Byte Order hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setDebug(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/apache/sanselan/common/BinaryInputStream;->debug:Z

    .line 33
    return-void
.end method

.method protected skipBytes(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    const-string v0, "Couldn\'t skip bytes"

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->skipBytes(ILjava/lang/String;)V

    .line 686
    return-void
.end method

.method public final skipBytes(ILjava/lang/String;)V
    .locals 8
    .param p1, "length"    # I
    .param p2, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    .line 200
    .local v2, "total":J
    :goto_0
    int-to-long v4, p1

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lorg/apache/sanselan/common/BinaryInputStream;->is:Ljava/io/InputStream;

    int-to-long v6, p1

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 203
    .local v0, "skipped":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 204
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    .line 205
    :cond_0
    add-long/2addr v2, v0

    .line 206
    goto :goto_0

    .line 207
    .end local v0    # "skipped":J
    :cond_1
    return-void
.end method
