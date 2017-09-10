.class abstract Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;
.super Lorg/apache/sanselan/util/UnicodeUtils;
.source "UnicodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/util/UnicodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UnicodeMetricsUTF16"
.end annotation


# static fields
.field protected static final BYTE_ORDER_BIG_ENDIAN:I = 0x0

.field protected static final BYTE_ORDER_LITTLE_ENDIAN:I = 0x1


# instance fields
.field protected byteOrder:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "byteOrder"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/util/UnicodeUtils;-><init>(Lorg/apache/sanselan/util/UnicodeUtils$1;)V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    .line 328
    iput p1, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    .line 329
    return-void
.end method


# virtual methods
.method public findEnd([BIZ)I
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "includeTerminator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    .line 397
    :cond_0
    array-length v7, p1

    if-ne p2, v7, :cond_1

    .line 398
    array-length v7, p1

    .line 408
    :goto_0
    return v7

    .line 399
    :cond_1
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-le p2, v7, :cond_2

    .line 400
    new-instance v7, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v8, "Terminator not found."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 402
    :cond_2
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .local v4, "index":I
    aget-byte v7, p1, p2

    and-int/lit16 v0, v7, 0xff

    .line 403
    .local v0, "c1":I
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v7, p1, v4

    and-int/lit16 v1, v7, 0xff

    .line 404
    .local v1, "c2":I
    iget v7, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    if-nez v7, :cond_3

    move v5, v0

    .line 406
    .local v5, "msb1":I
    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 408
    if-eqz p3, :cond_4

    move v7, p2

    goto :goto_0

    .end local v5    # "msb1":I
    :cond_3
    move v5, v1

    .line 404
    goto :goto_1

    .line 408
    .restart local v5    # "msb1":I
    :cond_4
    add-int/lit8 v7, p2, -0x2

    goto :goto_0

    .line 409
    :cond_5
    const/16 v7, 0xd8

    if-lt v5, v7, :cond_0

    .line 411
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-le p2, v7, :cond_6

    .line 412
    new-instance v7, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v8, "Terminator not found."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 415
    :cond_6
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .restart local v4    # "index":I
    aget-byte v7, p1, p2

    and-int/lit16 v2, v7, 0xff

    .line 416
    .local v2, "c3":I
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v7, p1, v4

    and-int/lit16 v3, v7, 0xff

    .line 417
    .local v3, "c4":I
    iget v7, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    if-nez v7, :cond_7

    move v6, v2

    .line 418
    .local v6, "msb2":I
    :goto_2
    const/16 v7, 0xdc

    if-ge v6, v7, :cond_0

    .line 419
    new-instance v7, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v8, "Invalid code point."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v6    # "msb2":I
    :cond_7
    move v6, v3

    .line 417
    goto :goto_2
.end method

.method public isValid([BIZZ)Z
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "mayHaveTerminator"    # Z
    .param p4, "mustHaveTerminator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xdc

    const/4 v7, 0x0

    .line 339
    :cond_0
    array-length v8, p1

    if-ne p2, v8, :cond_2

    .line 342
    if-nez p4, :cond_1

    const/4 v7, 0x1

    .line 384
    :cond_1
    :goto_0
    return v7

    .line 345
    :cond_2
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-ge p2, v8, :cond_1

    .line 351
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .local v4, "index":I
    aget-byte v8, p1, p2

    and-int/lit16 v0, v8, 0xff

    .line 352
    .local v0, "c1":I
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v8, p1, v4

    and-int/lit16 v1, v8, 0xff

    .line 353
    .local v1, "c2":I
    iget v8, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    if-nez v8, :cond_3

    move v5, v0

    .line 355
    .local v5, "msb1":I
    :goto_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    move v7, p3

    .line 358
    goto :goto_0

    .end local v5    # "msb1":I
    :cond_3
    move v5, v1

    .line 353
    goto :goto_1

    .line 361
    .restart local v5    # "msb1":I
    :cond_4
    const/16 v8, 0xd8

    if-lt v5, v8, :cond_0

    .line 365
    if-ge v5, v9, :cond_1

    .line 371
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-ge p2, v8, :cond_1

    .line 378
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "index":I
    .restart local v4    # "index":I
    aget-byte v8, p1, p2

    and-int/lit16 v2, v8, 0xff

    .line 379
    .local v2, "c3":I
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "index":I
    .restart local p2    # "index":I
    aget-byte v8, p1, v4

    and-int/lit16 v3, v8, 0xff

    .line 380
    .local v3, "c4":I
    iget v8, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->byteOrder:I

    if-nez v8, :cond_5

    move v6, v2

    .line 381
    .local v6, "msb2":I
    :goto_2
    if-ge v6, v9, :cond_0

    goto :goto_0

    .end local v6    # "msb2":I
    :cond_5
    move v6, v3

    .line 380
    goto :goto_2
.end method
