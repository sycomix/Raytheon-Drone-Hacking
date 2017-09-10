.class public abstract Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.super Ljava/lang/Object;
.source "DataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public abstract getBasicChannelsCount()I
.end method

.method protected abstract getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
.end method

.method public final parseData([[[ILjava/awt/image/BufferedImage;Lorg/apache/sanselan/formats/psd/ImageContents;)V
    .locals 8
    .param p1, "data"    # [[[I
    .param p2, "bi"    # Ljava/awt/image/BufferedImage;
    .param p3, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    .line 32
    .local v0, "buffer":Ljava/awt/image/DataBuffer;
    iget-object v1, p3, Lorg/apache/sanselan/formats/psd/ImageContents;->header:Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;

    .line 33
    .local v1, "header":Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;
    iget v4, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Columns:I

    .line 34
    .local v4, "width":I
    iget v2, v1, Lorg/apache/sanselan/formats/psd/PSDHeaderInfo;->Rows:I

    .line 36
    .local v2, "height":I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    if-ge v6, v2, :cond_1

    .line 37
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 39
    invoke-virtual {p0, p1, v5, v6, p3}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;->getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I

    move-result v3

    .line 40
    .local v3, "rgb":I
    mul-int v7, v6, v4

    add-int/2addr v7, v5

    invoke-virtual {v0, v7, v3}, Ljava/awt/image/DataBuffer;->setElem(II)V

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    .end local v3    # "rgb":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 43
    .end local v5    # "x":I
    :cond_1
    return-void
.end method
