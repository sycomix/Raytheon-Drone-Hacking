.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkPLTE.java"


# instance fields
.field public final rgb:[I


# direct methods
.method public constructor <init>(III[B)V
    .locals 9
    .param p1, "length"    # I
    .param p2, "ChunkType"    # I
    .param p3, "CRC"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 34
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    .local v4, "is":Ljava/io/ByteArrayInputStream;
    rem-int/lit8 v6, p1, 0x3

    if-eqz v6, :cond_0

    .line 37
    new-instance v6, Lorg/apache/sanselan/ImageReadException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "PLTE: wrong length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    div-int/lit8 v1, p1, 0x3

    .line 41
    .local v1, "count":I
    new-array v6, v1, [I

    iput-object v6, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 45
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "red["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 47
    .local v5, "red":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "green["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 49
    .local v2, "green":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "blue["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Not a Valid Png File: PLTE Corrupt"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 51
    .local v0, "blue":I
    iget-object v6, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    const/high16 v7, -0x1000000

    and-int/lit16 v8, v5, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    and-int/lit16 v8, v2, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    and-int/lit16 v8, v0, 0xff

    shl-int/lit8 v8, v8, 0x0

    or-int/2addr v7, v8

    aput v7, v6, v3

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v5    # "red":I
    :cond_1
    return-void
.end method


# virtual methods
.method public correct(Lorg/apache/sanselan/formats/png/GammaCorrection;)V
    .locals 3
    .param p1, "gammaCorrection"    # Lorg/apache/sanselan/formats/png/GammaCorrection;

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/sanselan/formats/png/GammaCorrection;->correctARGB(I)I

    move-result v2

    aput v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public getRGB(I)I
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown Palette reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->rgb:[I

    aget v0, v0, p1

    return v0
.end method
