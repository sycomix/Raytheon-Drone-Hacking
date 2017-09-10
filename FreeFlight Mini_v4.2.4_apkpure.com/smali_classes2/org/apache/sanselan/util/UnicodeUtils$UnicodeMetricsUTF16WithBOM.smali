.class Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;
.super Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;
.source "UnicodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/util/UnicodeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeMetricsUTF16WithBOM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;-><init>(I)V

    .line 441
    return-void
.end method


# virtual methods
.method public findEnd([BIZ)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "includeTerminator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0xfe

    .line 448
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_0

    .line 449
    new-instance v3, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v4, "Missing BOM."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_0
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "index":I
    .local v2, "index":I
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 452
    .local v0, "c1":I
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "index":I
    .restart local p2    # "index":I
    aget-byte v3, p1, v2

    and-int/lit16 v1, v3, 0xff

    .line 453
    .local v1, "c2":I
    if-ne v0, v5, :cond_1

    if-ne v1, v4, :cond_1

    .line 454
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;->byteOrder:I

    .line 460
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16;->findEnd([BIZ)I

    move-result v3

    return v3

    .line 455
    :cond_1
    if-ne v0, v4, :cond_2

    if-ne v1, v5, :cond_2

    .line 456
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeMetricsUTF16WithBOM;->byteOrder:I

    goto :goto_0

    .line 458
    :cond_2
    new-instance v3, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;

    const-string v4, "Invalid byte order mark."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/util/UnicodeUtils$UnicodeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
