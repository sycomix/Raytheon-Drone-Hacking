.class public abstract Lorg/apache/sanselan/formats/pnm/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field protected final RAWBITS:Z

.field protected final height:I

.field protected final width:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "RAWBITS"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    .line 34
    iput p2, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    .line 35
    iput-boolean p3, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->RAWBITS:Z

    .line 36
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public abstract getBitDepth()I
.end method

.method public abstract getColorType()I
.end method

.method public abstract getImageType()Lorg/apache/sanselan/ImageFormat;
.end method

.method public abstract getImageTypeDescription()Ljava/lang/String;
.end method

.method public abstract getMIMEType()Ljava/lang/String;
.end method

.method public abstract getNumComponents()I
.end method

.method public abstract getRGB(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected newline()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public readImage(Ljava/awt/image/BufferedImage;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "bi"    # Ljava/awt/image/BufferedImage;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    .line 68
    .local v0, "buffer":Ljava/awt/image/DataBuffer;
    iget-boolean v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->RAWBITS:Z

    if-nez v5, :cond_1

    .line 70
    new-instance v2, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;

    invoke-direct {v2, p2}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v2, "wsr":Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    if-ge v4, v5, :cond_3

    .line 74
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    if-ge v3, v5, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getRGB(Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;)I

    move-result v1

    .line 78
    .local v1, "rgb":I
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v0, v5, v1}, Ljava/awt/image/DataBuffer;->setElem(II)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "rgb":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->newline()V

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "wsr":Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "y":I
    :goto_2
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    if-ge v4, v5, :cond_3

    .line 88
    const/4 v3, 0x0

    .restart local v3    # "x":I
    :goto_3
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    if-ge v3, v5, :cond_2

    .line 90
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getRGB(Ljava/io/InputStream;)I

    move-result v1

    .line 91
    .restart local v1    # "rgb":I
    iget v5, p0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v0, v5, v1}, Ljava/awt/image/DataBuffer;->setElem(II)V

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 94
    .end local v1    # "rgb":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/pnm/FileInfo;->newline()V

    .line 85
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 103
    .end local v3    # "x":I
    :cond_3
    return-void
.end method
