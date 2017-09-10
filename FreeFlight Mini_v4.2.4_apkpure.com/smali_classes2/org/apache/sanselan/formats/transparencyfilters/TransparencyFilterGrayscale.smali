.class public Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;
.super Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
.source "TransparencyFilterGrayscale.java"


# instance fields
.field private final transparent_color:I


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
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;-><init>([B)V

    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    const-string v1, "transparent_color"

    const-string v2, "tRNS: Missing transparent_color"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->transparent_color:I

    .line 36
    return-void
.end method


# virtual methods
.method public filter(II)I
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget v0, p0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;->transparent_color:I

    if-eq p2, v0, :cond_0

    .line 43
    .end local p1    # "rgb":I
    :goto_0
    return p1

    .restart local p1    # "rgb":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
