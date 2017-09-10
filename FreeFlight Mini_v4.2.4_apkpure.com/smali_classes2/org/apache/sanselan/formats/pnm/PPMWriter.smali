.class public Lorg/apache/sanselan/formats/pnm/PPMWriter;
.super Lorg/apache/sanselan/formats/pnm/PNMWriter;
.source "PPMWriter.java"


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
    .locals 11
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
    const/16 v10, 0x20

    .line 38
    const/16 v8, 0x50

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 39
    iget-boolean v8, p0, Lorg/apache/sanselan/formats/pnm/PPMWriter;->RAWBITS:Z

    if-eqz v8, :cond_0

    const/16 v8, 0x36

    :goto_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 42
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    .line 43
    .local v5, "width":I
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 45
    .local v3, "height":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 46
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 48
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 51
    const-string v8, "255"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 52
    const/16 v8, 0xa

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 54
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 55
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_2
    if-ge v6, v5, :cond_2

    .line 57
    invoke-virtual {p1, v6, v7}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v0

    .line 58
    .local v0, "argb":I
    shr-int/lit8 v8, v0, 0x10

    and-int/lit16 v4, v8, 0xff

    .line 59
    .local v4, "red":I
    shr-int/lit8 v8, v0, 0x8

    and-int/lit16 v2, v8, 0xff

    .line 60
    .local v2, "green":I
    shr-int/lit8 v8, v0, 0x0

    and-int/lit16 v1, v8, 0xff

    .line 62
    .local v1, "blue":I
    iget-boolean v8, p0, Lorg/apache/sanselan/formats/pnm/PPMWriter;->RAWBITS:Z

    if-eqz v8, :cond_1

    .line 64
    int-to-byte v8, v4

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 65
    int-to-byte v8, v2

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 66
    int-to-byte v8, v1

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 55
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 39
    .end local v0    # "argb":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "height":I
    .end local v4    # "red":I
    .end local v5    # "width":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_0
    const/16 v8, 0x33

    goto/16 :goto_0

    .line 70
    .restart local v0    # "argb":I
    .restart local v1    # "blue":I
    .restart local v2    # "green":I
    .restart local v3    # "height":I
    .restart local v4    # "red":I
    .restart local v5    # "width":I
    .restart local v6    # "x":I
    .restart local v7    # "y":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 72
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 74
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    .line 54
    .end local v0    # "argb":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v4    # "red":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 78
    .end local v6    # "x":I
    :cond_3
    return-void
.end method
