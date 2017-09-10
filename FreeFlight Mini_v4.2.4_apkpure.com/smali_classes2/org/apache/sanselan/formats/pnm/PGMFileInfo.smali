.class public Lorg/apache/sanselan/formats/pnm/PGMFileInfo;
.super Lorg/apache/sanselan/formats/pnm/FileInfo;
.source "PGMFileInfo.java"


# instance fields
.field private final max:I


# direct methods
.method public constructor <init>(IIZI)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "RAWBITS"    # Z
    .param p4, "max"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/pnm/FileInfo;-><init>(IIZ)V

    .line 33
    iput p4, p0, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;->max:I

    .line 34
    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    return v0
.end method

.method public getColorType()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public getImageType()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "PGM: portable pixmap file\tformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "image/x-portable-pixmap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 69
    .local v2, "sample":I
    if-gez v2, :cond_0

    .line 70
    new-instance v3, Ljava/io/IOException;

    const-string v4, "PGM: Unexpected EOF"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_0
    const/16 v0, 0xff

    .line 74
    .local v0, "alpha":I
    const/high16 v3, -0x1000000

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 77
    .local v1, "rgb":I
    return v1
.end method

.method public getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .locals 5
    .param p1, "wsr"    # Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, "sample":I
    const/16 v0, 0xff

    .line 86
    .local v0, "alpha":I
    const/high16 v3, -0x1000000

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 89
    .local v1, "rgb":I
    return v1
.end method
