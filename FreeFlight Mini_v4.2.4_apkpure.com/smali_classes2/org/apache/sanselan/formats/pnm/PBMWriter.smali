.class public Lorg/apache/sanselan/formats/pnm/PBMWriter;
.super Lorg/apache/sanselan/formats/pnm/PNMWriter;
.source "PBMWriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/pnm/PNMConstants;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "RAWBITS"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMWriter;-><init>(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 13
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/16 v11, 0x50

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 37
    iget-boolean v11, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz v11, :cond_1

    const/16 v11, 0x34

    :goto_0
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 38
    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 41
    .local v8, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 43
    .local v5, "height":I
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    .line 44
    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 46
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    .line 47
    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "bitcache":I
    const/4 v2, 0x0

    .line 52
    .local v2, "bits_in_cache":I
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    if-ge v10, v5, :cond_6

    .line 54
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    if-ge v9, v8, :cond_4

    .line 56
    invoke-virtual {p1, v9, v10}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 57
    .local v0, "argb":I
    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v6, v11, 0xff

    .line 58
    .local v6, "red":I
    shr-int/lit8 v11, v0, 0x8

    and-int/lit16 v4, v11, 0xff

    .line 59
    .local v4, "green":I
    shr-int/lit8 v11, v0, 0x0

    and-int/lit16 v3, v11, 0xff

    .line 60
    .local v3, "blue":I
    add-int v11, v6, v4

    add-int/2addr v11, v3

    div-int/lit8 v7, v11, 0x3

    .line 61
    .local v7, "sample":I
    const/16 v11, 0x7f

    if-le v7, v11, :cond_2

    .line 62
    const/4 v7, 0x0

    .line 66
    :goto_3
    iget-boolean v11, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz v11, :cond_3

    .line 68
    shl-int/lit8 v11, v1, 0x1

    and-int/lit8 v12, v7, 0x1

    or-int v1, v11, v12

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    const/16 v11, 0x8

    if-lt v2, v11, :cond_0

    .line 73
    int-to-byte v11, v1

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 74
    const/4 v1, 0x0

    .line 75
    const/4 v2, 0x0

    .line 54
    :cond_0
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 37
    .end local v0    # "argb":I
    .end local v1    # "bitcache":I
    .end local v2    # "bits_in_cache":I
    .end local v3    # "blue":I
    .end local v4    # "green":I
    .end local v5    # "height":I
    .end local v6    # "red":I
    .end local v7    # "sample":I
    .end local v8    # "width":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_1
    const/16 v11, 0x31

    goto/16 :goto_0

    .line 64
    .restart local v0    # "argb":I
    .restart local v1    # "bitcache":I
    .restart local v2    # "bits_in_cache":I
    .restart local v3    # "blue":I
    .restart local v4    # "green":I
    .restart local v5    # "height":I
    .restart local v6    # "red":I
    .restart local v7    # "sample":I
    .restart local v8    # "width":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_3

    .line 79
    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write([B)V

    .line 80
    const/16 v11, 0x20

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 84
    .end local v0    # "argb":I
    .end local v3    # "blue":I
    .end local v4    # "green":I
    .end local v6    # "red":I
    .end local v7    # "sample":I
    :cond_4
    iget-boolean v11, p0, Lorg/apache/sanselan/formats/pnm/PBMWriter;->RAWBITS:Z

    if-eqz v11, :cond_5

    if-lez v2, :cond_5

    .line 86
    rsub-int/lit8 v11, v2, 0x8

    shl-int/2addr v1, v11

    .line 87
    int-to-byte v11, v1

    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 88
    const/4 v1, 0x0

    .line 89
    const/4 v2, 0x0

    .line 52
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 92
    .end local v9    # "x":I
    :cond_6
    return-void
.end method
