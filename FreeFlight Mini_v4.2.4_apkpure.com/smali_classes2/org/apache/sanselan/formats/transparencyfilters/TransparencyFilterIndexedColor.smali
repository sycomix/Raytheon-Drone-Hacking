.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterIndexedColor.java"


# instance fields
.field count:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    .line 29
    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 5
    .param p1, "rgb"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length v2, v2

    if-lt p2, v2, :cond_0

    .line 51
    .end local p1    # "rgb":I
    :goto_0
    return p1

    .line 39
    .restart local p1    # "rgb":I
    :cond_0
    if-ltz p2, :cond_1

    iget-object v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length v2, v2

    if-le p2, v2, :cond_2

    .line 40
    :cond_1
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "TransparencyFilterIndexedColor index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", bytes.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_2
    iget-object v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->bytes:[B

    aget-byte v0, v2, p2

    .line 45
    .local v0, "alpha":I
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x18

    const v3, 0xffffff

    and-int/2addr v3, p1

    or-int v1, v2, v3

    .line 47
    .local v1, "result":I
    iget v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    if-lez p2, :cond_3

    .line 49
    iget v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;->count:I

    :cond_3
    move p1, v1

    .line 51
    goto :goto_0
.end method
