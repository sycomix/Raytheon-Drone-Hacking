.class public Lorg/apache/sanselan/formats/png/PngImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PngImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/png/PngConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".png"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".png"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 71
    return-void
.end method

.method private filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "v"    # Ljava/util/ArrayList;
    .param p2, "type"    # I

    .prologue
    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v2, "result":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 388
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 389
    .local v0, "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    iget v3, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    if-ne v3, p2, :cond_0

    .line 390
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    :cond_1
    return-object v2
.end method

.method private getColorTypeDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "ColorType"    # I

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 439
    :pswitch_0
    const-string v0, "Unknown Color Type"

    :goto_0
    return-object v0

    .line 425
    :pswitch_1
    const-string v0, "grayscale"

    goto :goto_0

    .line 427
    :pswitch_2
    const-string v0, "rgb"

    goto :goto_0

    .line 429
    :pswitch_3
    const-string v0, "indexed rgb"

    goto :goto_0

    .line 433
    :pswitch_4
    const-string v0, "grayscale w/ alpha"

    goto :goto_0

    .line 437
    :pswitch_5
    const-string v0, "RGB w/ alpha"

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getTransparencyFilter(ILorg/apache/sanselan/formats/png/chunks/PNGChunk;)Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
    .locals 3
    .param p1, "ColorType"    # I
    .param p2, "pngChunktRNS"    # Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    packed-switch p1, :pswitch_data_0

    .line 467
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Simple Transparency not compatible with ColorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_1
    new-instance v0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;

    iget-object v1, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterGrayscale;-><init>([B)V

    .line 461
    :goto_0
    return-object v0

    .line 459
    :pswitch_2
    new-instance v0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;

    iget-object v1, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterTrueColor;-><init>([B)V

    goto :goto_0

    .line 461
    :pswitch_3
    new-instance v0, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;

    iget-object v1, p2, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilterIndexedColor;-><init>([B)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasAlphaChannel(I)Z
    .locals 3
    .param p1, "ColorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 414
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :pswitch_1
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isGrayscale(I)Z
    .locals 3
    .param p1, "colorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 316
    packed-switch p1, :pswitch_data_0

    .line 331
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    .line 327
    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    move v0, v1

    .line 323
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 327
    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private keepChunk(I[I)Z
    .locals 3
    .param p1, "ChunkType"    # I
    .param p2, "chunkTypes"    # [I

    .prologue
    const/4 v1, 0x1

    .line 103
    if-nez p2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 108
    aget v2, p2, v0

    if-eq v2, p1, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readChunks(Ljava/io/InputStream;[IZ)Ljava/util/ArrayList;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "chunkTypes"    # [I
    .param p3, "returnAfterFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, "result":Ljava/util/ArrayList;
    :cond_0
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v6, :cond_1

    .line 122
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    :cond_1
    const-string v6, "Length"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "length":I
    const-string v6, "ChunkType"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "chunkType":I
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v6, :cond_2

    .line 129
    const-string v6, "ChunkType"

    invoke-virtual {p0, v6, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->printCharQuad(Ljava/lang/String;I)V

    .line 130
    const-string v6, "Length"

    invoke-virtual {p0, v6, v4, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 132
    :cond_2
    invoke-direct {p0, v2, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->keepChunk(I[I)Z

    move-result v3

    .line 134
    .local v3, "keep":Z
    const/4 v1, 0x0

    .line 135
    .local v1, "bytes":[B
    if-eqz v3, :cond_4

    .line 137
    const-string v6, "Chunk Data"

    const-string v7, "Not a Valid PNG File: Couldn\'t read Chunk Data."

    invoke-virtual {p0, v6, v4, p1, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    .line 142
    :goto_0
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v6, :cond_3

    .line 143
    if-eqz v1, :cond_3

    .line 144
    const-string v6, "bytes"

    array-length v7, v1

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->debugNumber(Ljava/lang/String;II)V

    .line 146
    :cond_3
    const-string v6, "CRC"

    const-string v7, "Not a Valid PNG File"

    invoke-virtual {p0, v6, p1, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "CRC":I
    if-eqz v3, :cond_e

    .line 150
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    if-ne v2, v6, :cond_5

    .line 151
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_1
    if-eqz p3, :cond_e

    .line 180
    :goto_2
    return-object v5

    .line 140
    .end local v0    # "CRC":I
    :cond_4
    const-string v6, "Not a Valid PNG File"

    invoke-virtual {p0, p1, v4, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    goto :goto_0

    .line 152
    .restart local v0    # "CRC":I
    :cond_5
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    if-ne v2, v6, :cond_6

    .line 153
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_6
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    if-ne v2, v6, :cond_7

    .line 155
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_7
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    if-ne v2, v6, :cond_8

    .line 157
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_8
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    if-ne v2, v6, :cond_9

    .line 159
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_9
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    if-ne v2, v6, :cond_a

    .line 161
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    :cond_a
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    if-ne v2, v6, :cond_b

    .line 163
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_b
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    if-ne v2, v6, :cond_c

    .line 165
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_c
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    if-ne v2, v6, :cond_d

    .line 167
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_d
    new-instance v6, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    invoke-direct {v6, v4, v2, v0, v1}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_e
    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->IEND:I

    if-ne v2, v6, :cond_0

    goto :goto_2
.end method

.method private readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "chunkTypes"    # [I
    .param p3, "returnAfterFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 199
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "chunks":Ljava/util/ArrayList;
    invoke-direct {p0, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->readSignature(Ljava/io/InputStream;)V

    .line 204
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Ljava/io/InputStream;[IZ)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    .end local v0    # "chunks":Ljava/util/ArrayList;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 210
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    :goto_1
    throw v3

    .line 211
    :catch_1
    move-exception v1

    .line 213
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private readSignature(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->PNG_Signature:[B

    const-string v1, "Not a Valid PNG Segment: Incorrect Signature"

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 190
    return-void
.end method

.method private samplesPerPixel(I)I
    .locals 3
    .param p1, "colorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 364
    packed-switch p1, :pswitch_data_0

    .line 379
    :pswitch_0
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "PNG: unknown color type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_1
    const/4 v0, 0x3

    .line 375
    :goto_0
    :pswitch_2
    return v0

    .line 373
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 375
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 803
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/png/PngImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v4

    .line 804
    .local v4, "imageInfo":Lorg/apache/sanselan/ImageInfo;
    if-nez v4, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v6

    .line 807
    :cond_1
    const-string v8, ""

    invoke-virtual {v4, p1, v8}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 810
    const/4 v8, 0x0

    invoke-direct {p0, p2, v8, v6}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 812
    .local v2, "chunks":Ljava/util/ArrayList;
    sget v8, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    invoke-direct {p0, v2, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 813
    .local v0, "IHDRs":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 815
    iget-boolean v7, p0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    if-eqz v7, :cond_0

    .line 816
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "PNG contains more than one Header"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 820
    .local v5, "pngChunkIHDR":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Color: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v5, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    invoke-direct {p0, v9}, Lorg/apache/sanselan/formats/png/PngImageParser;->getColorTypeDescription(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "chunks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v7, :cond_0

    .line 829
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 831
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 832
    .local v1, "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget v8, v1, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 836
    .end local v1    # "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    :cond_3
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    move v6, v7

    .line 840
    goto/16 :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 262
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/apache/sanselan/formats/png/PngImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 52
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    const-string v49, "VERBOSE"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v48

    .line 629
    .local v48, "verbose":Z
    const-string v49, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_0

    .line 630
    const-string v49, "VERBOSE"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :cond_0
    const/16 v49, 0x7

    move/from16 v0, v49

    new-array v0, v0, [I

    move-object/from16 v49, v0

    const/16 v50, 0x0

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    aput v51, v49, v50

    const/16 v50, 0x1

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    aput v51, v49, v50

    const/16 v50, 0x2

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    aput v51, v49, v50

    const/16 v50, 0x3

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    aput v51, v49, v50

    const/16 v50, 0x4

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    aput v51, v49, v50

    const/16 v50, 0x5

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    aput v51, v49, v50

    const/16 v50, 0x6

    sget v51, Lorg/apache/sanselan/formats/png/PngImageParser;->sRGB:I

    aput v51, v49, v50

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    move/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v22

    .line 640
    .local v22, "chunks":Ljava/util/ArrayList;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_2

    .line 641
    :cond_1
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG: no chunks"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 643
    :cond_2
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v16

    .line 644
    .local v16, "IHDRs":Ljava/util/ArrayList;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3

    .line 645
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG contains more than one Header"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 647
    :cond_3
    const/16 v49, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 649
    .local v38, "pngChunkIHDR":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v17

    .line 650
    .local v17, "PLTEs":Ljava/util/ArrayList;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_4

    .line 651
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG contains more than one Palette"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 653
    :cond_4
    const/4 v12, 0x0

    .line 654
    .local v12, "pngChunkPLTE":Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_5

    .line 655
    const/16 v49, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "pngChunkPLTE":Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    check-cast v12, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;

    .line 659
    .restart local v12    # "pngChunkPLTE":Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;
    :cond_5
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->IDAT:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 660
    .local v15, "IDATs":Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_6

    .line 661
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG missing image data"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 663
    :cond_6
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 664
    .local v19, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v49

    move/from16 v0, v32

    move/from16 v1, v49

    if-ge v0, v1, :cond_7

    .line 666
    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;

    .line 667
    .local v37, "pngChunkIDAT":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;->bytes:[B

    move-object/from16 v21, v0

    .line 669
    .local v21, "bytes":[B
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 664
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 672
    .end local v21    # "bytes":[B
    .end local v37    # "pngChunkIDAT":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 674
    .local v23, "compressed":[B
    const/16 v19, 0x0

    .line 676
    const/4 v14, 0x0

    .line 678
    .local v14, "transparencyFilter":Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v45

    .line 679
    .local v45, "tRNSs":Ljava/util/ArrayList;
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v49

    if-lez v49, :cond_8

    .line 681
    const/16 v49, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 682
    .local v41, "pngChunktRNS":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->getTransparencyFilter(ILorg/apache/sanselan/formats/png/chunks/PNGChunk;)Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;

    move-result-object v14

    .line 686
    .end local v41    # "pngChunktRNS":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    :cond_8
    const/16 v34, 0x0

    .line 687
    .local v34, "icc_profile":Ljava/awt/color/ICC_Profile;
    const/4 v13, 0x0

    .line 689
    .local v13, "gammaCorrection":Lorg/apache/sanselan/formats/png/GammaCorrection;
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->sRGB:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v42

    .line 690
    .local v42, "sRGBs":Ljava/util/ArrayList;
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->gAMA:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v28

    .line 691
    .local v28, "gAMAs":Ljava/util/ArrayList;
    sget v49, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v33

    .line 692
    .local v33, "iCCPs":Ljava/util/ArrayList;
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_9

    .line 693
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG: unexpected sRGB chunk"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 694
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_a

    .line 695
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG: unexpected gAMA chunk"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 696
    :cond_a
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_b

    .line 697
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    const-string v50, "PNG: unexpected iCCP chunk"

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 699
    :cond_b
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_d

    .line 702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    move/from16 v49, v0

    if-eqz v49, :cond_c

    .line 703
    sget-object v49, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v50, "sRGB, no color management neccesary."

    invoke-virtual/range {v49 .. v50}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    :cond_c
    :goto_1
    move-object/from16 v0, v38

    iget v5, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    .line 734
    .local v5, "width":I
    move-object/from16 v0, v38

    iget v6, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    .line 735
    .local v6, "height":I
    move-object/from16 v0, v38

    iget v9, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    .line 736
    .local v9, "colorType":I
    move-object/from16 v0, v38

    iget v10, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    .line 738
    .local v10, "bitDepth":I
    move/from16 v20, v10

    .line 740
    .local v20, "bitsPerSample":I
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    move/from16 v49, v0

    if-eqz v49, :cond_11

    .line 741
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    new-instance v50, Ljava/lang/StringBuffer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuffer;-><init>()V

    const-string v51, "PNG: unknown FilterMethod: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v50

    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49

    .line 704
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v9    # "colorType":I
    .end local v10    # "bitDepth":I
    .end local v20    # "bitsPerSample":I
    :cond_d
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_f

    .line 706
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/formats/png/PngImageParser;->debug:Z

    move/from16 v49, v0

    if-eqz v49, :cond_e

    .line 707
    sget-object v49, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v50, "iCCP."

    invoke-virtual/range {v49 .. v50}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 709
    :cond_e
    const/16 v49, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    .line 710
    .local v40, "pngChunkiCCP":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;
    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    move-object/from16 v21, v0

    .line 712
    .restart local v21    # "bytes":[B
    invoke-static/range {v21 .. v21}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v34

    .line 713
    goto :goto_1

    .end local v21    # "bytes":[B
    .end local v40    # "pngChunkiCCP":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_c

    .line 715
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;

    .line 716
    .local v39, "pngChunkgAMA":Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;
    invoke-virtual/range {v39 .. v39}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->getGamma()D

    move-result-wide v30

    .line 720
    .local v30, "gamma":D
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    .line 721
    .local v46, "targetGamma":D
    sub-double v50, v46, v30

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    .line 722
    .local v26, "diff":D
    const-wide/high16 v50, 0x3fe0000000000000L    # 0.5

    cmpl-double v49, v26, v50

    if-ltz v49, :cond_10

    .line 723
    new-instance v13, Lorg/apache/sanselan/formats/png/GammaCorrection;

    .end local v13    # "gammaCorrection":Lorg/apache/sanselan/formats/png/GammaCorrection;
    move-wide/from16 v0, v30

    move-wide/from16 v2, v46

    invoke-direct {v13, v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/GammaCorrection;-><init>(DD)V

    .line 725
    .restart local v13    # "gammaCorrection":Lorg/apache/sanselan/formats/png/GammaCorrection;
    :cond_10
    if-eqz v13, :cond_c

    .line 726
    if-eqz v12, :cond_c

    .line 727
    invoke-virtual {v12, v13}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;->correct(Lorg/apache/sanselan/formats/png/GammaCorrection;)V

    goto/16 :goto_1

    .line 744
    .end local v26    # "diff":D
    .end local v30    # "gamma":D
    .end local v39    # "pngChunkgAMA":Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;
    .end local v46    # "targetGamma":D
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v9    # "colorType":I
    .restart local v10    # "bitDepth":I
    .restart local v20    # "bitsPerSample":I
    :cond_11
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->samplesPerPixel(I)I

    move-result v43

    .line 745
    .local v43, "samplesPerPixel":I
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->isGrayscale(I)Z

    move-result v35

    .line 747
    .local v35, "isGrayscale":Z
    mul-int v11, v20, v43

    .line 749
    .local v11, "bitsPerPixel":I
    const/16 v49, 0x4

    move/from16 v0, v49

    if-eq v9, v0, :cond_12

    const/16 v49, 0x6

    move/from16 v0, v49

    if-ne v9, v0, :cond_15

    :cond_12
    const/16 v29, 0x1

    .line 753
    .local v29, "hasAlpha":Z
    :goto_2
    if-eqz v35, :cond_16

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-interface {v0, v5, v6, v1}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v8

    .line 760
    .local v8, "result":Ljava/awt/image/BufferedImage;
    :goto_3
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 761
    .local v18, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/util/zip/InflaterInputStream;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 765
    .local v7, "iis":Ljava/util/zip/InflaterInputStream;
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    move/from16 v49, v0

    if-nez v49, :cond_17

    .line 766
    new-instance v4, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;

    invoke-direct/range {v4 .. v14}, Lorg/apache/sanselan/formats/png/ScanExpediterSimple;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    .line 777
    .local v4, "scanExpediter":Lorg/apache/sanselan/formats/png/ScanExpediter;
    :goto_4
    invoke-virtual {v4}, Lorg/apache/sanselan/formats/png/ScanExpediter;->drive()V

    .line 779
    if-eqz v34, :cond_14

    .line 781
    new-instance v49, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct/range {v49 .. v49}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Ljava/awt/color/ICC_Profile;)Ljava/lang/Boolean;

    move-result-object v36

    .line 782
    .local v36, "is_srgb":Ljava/lang/Boolean;
    if-eqz v36, :cond_13

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    if-nez v49, :cond_14

    .line 784
    :cond_13
    new-instance v24, Ljava/awt/color/ICC_ColorSpace;

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    .line 786
    .local v24, "cs":Ljava/awt/color/ICC_ColorSpace;
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v44

    .line 787
    .local v44, "srgbCM":Ljava/awt/image/ColorModel;
    invoke-virtual/range {v44 .. v44}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v25

    .line 789
    .local v25, "cs_sRGB":Ljava/awt/color/ColorSpace;
    new-instance v49, Lorg/apache/sanselan/ColorTools;

    invoke-direct/range {v49 .. v49}, Lorg/apache/sanselan/ColorTools;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v8, v1, v2}, Lorg/apache/sanselan/ColorTools;->convertBetweenColorSpaces(Ljava/awt/image/BufferedImage;Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;)Ljava/awt/image/BufferedImage;

    move-result-object v8

    .line 794
    .end local v24    # "cs":Ljava/awt/color/ICC_ColorSpace;
    .end local v25    # "cs_sRGB":Ljava/awt/color/ColorSpace;
    .end local v36    # "is_srgb":Ljava/lang/Boolean;
    .end local v44    # "srgbCM":Ljava/awt/image/ColorModel;
    :cond_14
    return-object v8

    .line 749
    .end local v4    # "scanExpediter":Lorg/apache/sanselan/formats/png/ScanExpediter;
    .end local v7    # "iis":Ljava/util/zip/InflaterInputStream;
    .end local v8    # "result":Ljava/awt/image/BufferedImage;
    .end local v18    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v29    # "hasAlpha":Z
    :cond_15
    const/16 v29, 0x0

    goto :goto_2

    .line 757
    .restart local v29    # "hasAlpha":Z
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-interface {v0, v5, v6, v1}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v8

    .restart local v8    # "result":Ljava/awt/image/BufferedImage;
    goto :goto_3

    .line 769
    .restart local v7    # "iis":Ljava/util/zip/InflaterInputStream;
    .restart local v18    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_17
    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    move/from16 v49, v0

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_18

    .line 770
    new-instance v4, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;

    invoke-direct/range {v4 .. v14}, Lorg/apache/sanselan/formats/png/ScanExpediterInterlaced;-><init>(IILjava/io/InputStream;Ljava/awt/image/BufferedImage;IIILorg/apache/sanselan/formats/png/chunks/PNGChunkPLTE;Lorg/apache/sanselan/formats/png/GammaCorrection;Lorg/apache/sanselan/formats/transparencyfilters/TransparencyFilter;)V

    .restart local v4    # "scanExpediter":Lorg/apache/sanselan/formats/png/ScanExpediter;
    goto :goto_4

    .line 774
    .end local v4    # "scanExpediter":Lorg/apache/sanselan/formats/png/ScanExpediter;
    :cond_18
    new-instance v49, Lorg/apache/sanselan/ImageReadException;

    new-instance v50, Ljava/lang/StringBuffer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuffer;-><init>()V

    const-string v51, "Unknown InterlaceMethod: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v50

    move-object/from16 v0, v38

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v49
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, ".png"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 7
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 221
    new-array v3, v5, [I

    sget v4, Lorg/apache/sanselan/formats/png/PngImageParser;->iCCP:I

    aput v4, v3, v6

    invoke-direct {p0, p1, v3, v5}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, "chunks":Ljava/util/ArrayList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 230
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "PNG contains more than one ICC Profile "

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;

    .line 234
    .local v2, "pngChunkiCCP":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;
    iget-object v0, v2, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    .line 236
    .local v0, "bytes":[B
    goto :goto_0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 46
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const/16 v41, 0x7

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    aput v43, v41, v42

    const/16 v42, 0x1

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    aput v43, v41, v42

    const/16 v42, 0x2

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    aput v43, v41, v42

    const/16 v42, 0x3

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    aput v43, v41, v42

    const/16 v42, 0x4

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    aput v43, v41, v42

    const/16 v42, 0x5

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    aput v43, v41, v42

    const/16 v42, 0x6

    sget v43, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    aput v43, v41, v42

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    move/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v26

    .line 482
    .local v26, "chunks":Ljava/util/ArrayList;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1

    .line 483
    :cond_0
    new-instance v41, Lorg/apache/sanselan/ImageReadException;

    const-string v42, "PNG: no chunks"

    invoke-direct/range {v41 .. v42}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 485
    :cond_1
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v24

    .line 486
    .local v24, "IHDRs":Ljava/util/ArrayList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 487
    new-instance v41, Lorg/apache/sanselan/ImageReadException;

    const-string v42, "PNG contains more than one Header"

    invoke-direct/range {v41 .. v42}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 489
    :cond_2
    const/16 v41, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 490
    .local v32, "pngChunkIHDR":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
    const/16 v36, 0x0

    .line 492
    .local v36, "pngChunktRNS":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    const/16 v19, 0x0

    .line 494
    .local v19, "isTransparent":Z
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->tRNS:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v39

    .line 495
    .local v39, "tRNSs":Ljava/util/ArrayList;
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-lez v41, :cond_3

    .line 497
    const/16 v19, 0x1

    .line 498
    const/16 v41, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "pngChunktRNS":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    check-cast v36, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;

    .line 502
    .restart local v36    # "pngChunktRNS":Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
    :goto_0
    const/16 v34, 0x0

    .line 504
    .local v34, "pngChunkpHYs":Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->pHYs:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v29

    .line 505
    .local v29, "pHYss":Ljava/util/ArrayList;
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_4

    .line 506
    new-instance v41, Lorg/apache/sanselan/ImageReadException;

    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    const-string v43, "PNG contains more than one pHYs: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 500
    .end local v29    # "pHYss":Ljava/util/ArrayList;
    .end local v34    # "pngChunkpHYs":Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
    :cond_3
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->hasAlphaChannel(I)Z

    goto :goto_0

    .line 508
    .restart local v29    # "pHYss":Ljava/util/ArrayList;
    .restart local v34    # "pngChunkpHYs":Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 509
    const/16 v41, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "pngChunkpHYs":Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
    check-cast v34, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;

    .line 511
    .restart local v34    # "pngChunkpHYs":Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
    :cond_5
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v38

    .line 512
    .local v38, "tEXts":Ljava/util/ArrayList;
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v40

    .line 513
    .local v40, "zTXts":Ljava/util/ArrayList;
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v28

    .line 516
    .local v28, "iTXts":Ljava/util/ArrayList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v7, "comments":Ljava/util/ArrayList;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v23, "textChunks":Ljava/util/List;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v27

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 521
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;

    .line 522
    .local v35, "pngChunktEXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->keyword:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    const-string v42, ": "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual/range {v35 .. v35}, Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 525
    .end local v35    # "pngChunktEXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunktEXt;
    :cond_6
    const/16 v27, 0x0

    :goto_2
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v27

    move/from16 v1, v41

    if-ge v0, v1, :cond_7

    .line 527
    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;

    .line 528
    .local v37, "pngChunkzTXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    const-string v42, ": "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual/range {v37 .. v37}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 531
    .end local v37    # "pngChunkzTXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;
    :cond_7
    const/16 v27, 0x0

    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v27

    move/from16 v1, v41

    if-ge v0, v1, :cond_8

    .line 533
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 534
    .local v33, "pngChunkiTXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    const-string v42, ": "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual/range {v33 .. v33}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getContents()Lorg/apache/sanselan/formats/png/PngText;

    move-result-object v41

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 538
    .end local v33    # "pngChunkiTXt":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
    :cond_8
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    move/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/png/PngImageParser;->samplesPerPixel(I)I

    move-result v42

    mul-int v6, v41, v42

    .line 540
    .local v6, "BitsPerPixel":I
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;

    .line 541
    .local v8, "Format":Lorg/apache/sanselan/ImageFormat;
    const-string v9, "PNG Portable Network Graphics"

    .line 542
    .local v9, "FormatName":Ljava/lang/String;
    move-object/from16 v0, v32

    iget v10, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    .line 543
    .local v10, "Height":I
    const-string v11, "image/png"

    .line 544
    .local v11, "MimeType":Ljava/lang/String;
    const/4 v12, 0x1

    .line 545
    .local v12, "NumberOfImages":I
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    move/from16 v17, v0

    .line 546
    .local v17, "Width":I
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    move/from16 v41, v0

    if-eqz v41, :cond_b

    const/16 v18, 0x1

    .line 548
    .local v18, "isProgressive":Z
    :goto_4
    const/4 v13, -0x1

    .line 549
    .local v13, "PhysicalHeightDpi":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 550
    .local v14, "PhysicalHeightInch":F
    const/4 v15, -0x1

    .line 551
    .local v15, "PhysicalWidthDpi":I
    const/high16 v16, -0x40800000    # -1.0f

    .line 562
    .local v16, "PhysicalWidthInch":F
    if-eqz v34, :cond_9

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->UnitSpecifier:I

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_9

    .line 564
    const-wide v30, 0x3f9a027525460aa6L    # 0.0254

    .line 566
    .local v30, "meters_per_inch":D
    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v30

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->round(D)J

    move-result-wide v42

    move-wide/from16 v0, v42

    long-to-int v15, v0

    .line 569
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    mul-double v42, v42, v30

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v16, v0

    .line 571
    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v30

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->round(D)J

    move-result-wide v42

    move-wide/from16 v0, v42

    long-to-int v13, v0

    .line 574
    int-to-double v0, v10

    move-wide/from16 v42, v0

    move-object/from16 v0, v34

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    mul-double v42, v42, v30

    move-wide/from16 v0, v42

    double-to-float v14, v0

    .line 578
    .end local v30    # "meters_per_inch":D
    :cond_9
    const-string v5, "Png"

    .line 580
    .local v5, "FormatDetails":Ljava/lang/String;
    const/16 v20, 0x0

    .line 582
    .local v20, "usesPalette":Z
    sget v41, Lorg/apache/sanselan/formats/png/PngImageParser;->PLTE:I

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngImageParser;->filterChunks(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v25

    .line 583
    .local v25, "PLTEs":Ljava/util/ArrayList;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_a

    .line 584
    const/16 v20, 0x1

    .line 587
    :cond_a
    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_0

    .line 605
    :pswitch_0
    new-instance v41, Lorg/apache/sanselan/ImageReadException;

    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    const-string v43, "Png: Unknown ColorType: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v32

    iget v0, v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 546
    .end local v5    # "FormatDetails":Ljava/lang/String;
    .end local v13    # "PhysicalHeightDpi":I
    .end local v14    # "PhysicalHeightInch":F
    .end local v15    # "PhysicalWidthDpi":I
    .end local v16    # "PhysicalWidthInch":F
    .end local v18    # "isProgressive":Z
    .end local v20    # "usesPalette":Z
    .end local v25    # "PLTEs":Ljava/util/ArrayList;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 594
    .restart local v5    # "FormatDetails":Ljava/lang/String;
    .restart local v13    # "PhysicalHeightDpi":I
    .restart local v14    # "PhysicalHeightInch":F
    .restart local v15    # "PhysicalWidthDpi":I
    .restart local v16    # "PhysicalWidthInch":F
    .restart local v18    # "isProgressive":Z
    .restart local v20    # "usesPalette":Z
    .restart local v25    # "PLTEs":Ljava/util/ArrayList;
    :pswitch_1
    const/16 v21, 0x1

    .line 609
    .local v21, "ColorType":I
    :goto_5
    const-string v22, "PNG Filter"

    .line 611
    .local v22, "compressionAlgorithm":Ljava/lang/String;
    new-instance v4, Lorg/apache/sanselan/formats/png/PngImageInfo;

    invoke-direct/range {v4 .. v23}, Lorg/apache/sanselan/formats/png/PngImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;Ljava/util/List;)V

    .line 618
    .local v4, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v4

    .line 602
    .end local v4    # "result":Lorg/apache/sanselan/ImageInfo;
    .end local v21    # "ColorType":I
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    :pswitch_2
    const/16 v21, 0x2

    .line 603
    .restart local v21    # "ColorType":I
    goto :goto_5

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 6
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 242
    new-array v2, v4, [I

    sget v3, Lorg/apache/sanselan/formats/png/PngImageParser;->IHDR:I

    aput v3, v2, v5

    invoke-direct {p0, p1, v2, v4}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 244
    .local v0, "chunks":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 245
    :cond_0
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Png: No chunks"

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 248
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "PNG contains more than one Header"

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;

    .line 252
    .local v1, "pngChunkIHDR":Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
    new-instance v2, Ljava/awt/Dimension;

    iget v3, v1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    iget v4, v1, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    return-object v2
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 268
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->tEXt:I

    aput v6, v4, v5

    sget v5, Lorg/apache/sanselan/formats/png/PngImageParser;->zTXt:I

    aput v5, v4, v7

    invoke-direct {p0, p1, v4, v7}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 271
    .local v1, "chunks":Ljava/util/ArrayList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 272
    :cond_0
    const/4 v3, 0x0

    .line 283
    :cond_1
    return-object v3

    .line 274
    :cond_2
    new-instance v3, Lorg/apache/sanselan/common/ImageMetadata;

    invoke-direct {v3}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 276
    .local v3, "result":Lorg/apache/sanselan/common/ImageMetadata;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 278
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;

    .line 280
    .local v0, "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/sanselan/common/ImageMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Png-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 863
    new-array v5, v7, [I

    sget v6, Lorg/apache/sanselan/formats/png/PngImageParser;->iTXt:I

    aput v6, v5, v8

    invoke-direct {p0, p1, v5, v8}, Lorg/apache/sanselan/formats/png/PngImageParser;->readChunks(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 865
    .local v1, "chunks":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v7, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-object v4

    .line 868
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v3, "xmpChunks":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 871
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 872
    .local v0, "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getKeyword()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XML:com.adobe.xmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 869
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 874
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 877
    .end local v0    # "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v7, :cond_0

    .line 879
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 880
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "PNG contains more than one XMP chunk."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 883
    :cond_4
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;

    .line 884
    .restart local v0    # "chunk":Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 1
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
    .line 846
    new-instance v0, Lorg/apache/sanselan/formats/png/PngWriter;

    invoke-direct {v0, p3}, Lorg/apache/sanselan/formats/png/PngWriter;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/PngWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 847
    return-void
.end method
