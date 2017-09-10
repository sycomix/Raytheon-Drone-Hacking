.class public Lorg/apache/sanselan/formats/pnm/PBMFileInfo;
.super Lorg/apache/sanselan/formats/pnm/FileInfo;
.source "PBMFileInfo.java"


# instance fields
.field private bitcache:I

.field private bits_in_cache:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "RAWBITS"    # Z

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/pnm/FileInfo;-><init>(IIZ)V

    .line 69
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 70
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    .line 30
    return-void
.end method


# virtual methods
.method public getBitDepth()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getColorType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getImageType()Lorg/apache/sanselan/ImageFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    return-object v0
.end method

.method public getImageTypeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "PBM: portable bitmap fileformat"

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "image/x-portable-bitmap"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    .prologue
    .line 34
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
    const/4 v3, 0x1

    .line 74
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    if-ge v2, v3, :cond_1

    .line 76
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 77
    .local v1, "bits":I
    if-gez v1, :cond_0

    .line 78
    new-instance v2, Ljava/io/IOException;

    const-string v3, "PBM: Unexpected EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    and-int/lit16 v2, v1, 0xff

    iput v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 80
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    .line 83
    .end local v1    # "bits":I
    :cond_1
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    shr-int/lit8 v2, v2, 0x7

    and-int/lit8 v0, v2, 0x1

    .line 84
    .local v0, "bit":I
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 85
    iget v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    .line 87
    if-nez v0, :cond_2

    .line 88
    const/4 v2, -0x1

    .line 90
    :goto_0
    return v2

    .line 89
    :cond_2
    if-ne v0, v3, :cond_3

    .line 90
    const/high16 v2, -0x1000000

    goto :goto_0

    .line 91
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "PBM: bad bit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .locals 4
    .param p1, "wsr"    # Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "bit":I
    if-nez v0, :cond_0

    .line 98
    const/high16 v1, -0x1000000

    .line 100
    :goto_0
    return v1

    .line 99
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 100
    const/4 v1, -0x1

    goto :goto_0

    .line 101
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PBM: bad bit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected newline()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bitcache:I

    .line 65
    iput v0, p0, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;->bits_in_cache:I

    .line 66
    return-void
.end method
