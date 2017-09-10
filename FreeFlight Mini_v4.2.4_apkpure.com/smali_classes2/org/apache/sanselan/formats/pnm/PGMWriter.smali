.class public Lorg/apache/sanselan/formats/pnm/PGMWriter;
.super Lorg/apache/sanselan/formats/pnm/PNMWriter;
.source "PGMWriter.java"


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
    .locals 12
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
    const/16 v11, 0x20

    .line 38
    const/16 v9, 0x50

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-boolean v9, p0, Lorg/apache/sanselan/formats/pnm/PGMWriter;->RAWBITS:Z

    if-eqz v9, :cond_0

    const/16 v9, 0x35

    :goto_0
    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 42
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 43
    .local v6, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 45
    .local v3, "height":I
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 48
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    .line 51
    const-string v9, "255"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 52
    const/16 v9, 0xa

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 54
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_1
    if-ge v8, v3, :cond_3

    .line 55
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 57
    invoke-virtual {p1, v7, v8}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 58
    .local v0, "argb":I
    shr-int/lit8 v9, v0, 0x10

    and-int/lit16 v4, v9, 0xff

    .line 59
    .local v4, "red":I
    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v2, v9, 0xff

    .line 60
    .local v2, "green":I
    shr-int/lit8 v9, v0, 0x0

    and-int/lit16 v1, v9, 0xff

    .line 61
    .local v1, "blue":I
    add-int v9, v4, v2

    add-int/2addr v9, v1

    div-int/lit8 v5, v9, 0x3

    .line 63
    .local v5, "sample":I
    iget-boolean v9, p0, Lorg/apache/sanselan/formats/pnm/PGMWriter;->RAWBITS:Z

    if-eqz v9, :cond_1

    .line 65
    int-to-byte v9, v5

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write(I)V

    .line 55
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 39
    .end local v0    # "argb":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "height":I
    .end local v4    # "red":I
    .end local v5    # "sample":I
    .end local v6    # "width":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    const/16 v9, 0x32

    goto :goto_0

    .line 69
    .restart local v0    # "argb":I
    .restart local v1    # "blue":I
    .restart local v2    # "green":I
    .restart local v3    # "height":I
    .restart local v4    # "red":I
    .restart local v5    # "sample":I
    .restart local v6    # "width":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {p2, v11}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 54
    .end local v0    # "argb":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v4    # "red":I
    .end local v5    # "sample":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    .end local v7    # "x":I
    :cond_3
    return-void
.end method
