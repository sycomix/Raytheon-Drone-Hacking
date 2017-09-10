.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterTrueColor.java"


# instance fields
.field private final transparent_blue:I

.field private final transparent_color:I

.field private final transparent_green:I

.field private final transparent_red:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    const-string v1, "transparent_red"

    const-string v2, "tRNS: Missing transparent_color"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_red:I

    .line 39
    const-string v1, "transparent_green"

    const-string v2, "tRNS: Missing transparent_color"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_green:I

    .line 41
    const-string v1, "transparent_blue"

    const-string v2, "tRNS: Missing transparent_color"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_blue:I

    .line 44
    iget v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_red:I

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_green:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_blue:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_color:I

    .line 48
    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 2
    .param p1, "rgb"    # I
    .param p2, "sample"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const v0, 0xffffff

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;->transparent_color:I

    if-ne v0, v1, :cond_0

    .line 54
    const/4 p1, 0x0

    .line 56
    .end local p1    # "rgb":I
    :cond_0
    return p1
.end method
