.class public Lorg/apache/sanselan/formats/pnm/PPMFileInfo;
.super Lorg/apache/sanselan/formats/pnm/FileInfo;
.source "PPMFileInfo.java"


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
    iput p4, p0, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;->max:I

    .line 34
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

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
    const/4 v0, 0x1

    return v0
.end method

.method public getImageType()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "PGM: portable graymap file\tformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "image/x-portable-graymap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    return v0
.end method

.method public getRGB(Ljava/io/InputStream;)I
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 69
    .local v3, "red":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 70
    .local v2, "green":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 72
    .local v1, "blue":I
    if-ltz v3, :cond_0

    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 73
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "PPM: Unexpected EOF"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_1
    const/16 v0, 0xff

    .line 77
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .line 80
    .local v4, "rgb":I
    return v4
.end method

.method public getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .locals 7
    .param p1, "wsr"    # Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "red":I
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "green":I
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 91
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .line 94
    .local v4, "rgb":I
    return v4
.end method
