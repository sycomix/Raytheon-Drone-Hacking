.class public Lorg/apache/sanselan/formats/png/PngWriter;
.super Ljava/lang/Object;
.source "PngWriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/png/PngConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    }
.end annotation


# instance fields
.field private final verbose:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "params"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "VERBOSE"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    .line 44
    return-void
.end method

.method private getBitDepth(BLjava/util/Map;)B
    .locals 5
    .param p1, "colorType"    # B
    .param p2, "params"    # Ljava/util/Map;

    .prologue
    const/16 v4, 0x8

    .line 311
    const/16 v1, 0x8

    .line 313
    .local v1, "result":B
    const-string v3, "PNG_BIT_DEPTH"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 314
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 316
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 317
    .local v2, "value":I
    sparse-switch v2, :sswitch_data_0

    .line 327
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 343
    .end local v2    # "value":I
    :cond_0
    :goto_1
    :pswitch_0
    return v1

    .line 324
    .restart local v2    # "value":I
    :sswitch_0
    int-to-byte v1, v2

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-byte v1, v3

    .line 333
    goto :goto_1

    .line 337
    :pswitch_2
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v1, v3

    .line 338
    goto :goto_1

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getColourType(ZZ)B
    .locals 2
    .param p1, "hasAlpha"    # Z
    .param p2, "isGrayscale"    # Z

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "index":Z
    if-eqz v0, :cond_0

    .line 294
    const/4 v1, 0x3

    .line 306
    .local v1, "result":B
    :goto_0
    return v1

    .line 295
    .end local v1    # "result":B
    :cond_0
    if-eqz p2, :cond_2

    .line 297
    if-eqz p1, :cond_1

    .line 298
    const/4 v1, 0x4

    .restart local v1    # "result":B
    goto :goto_0

    .line 300
    .end local v1    # "result":B
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "result":B
    goto :goto_0

    .line 301
    .end local v1    # "result":B
    :cond_2
    if-eqz p1, :cond_3

    .line 302
    const/4 v1, 0x6

    .restart local v1    # "result":B
    goto :goto_0

    .line 304
    .end local v1    # "result":B
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "result":B
    goto :goto_0
.end method

.method private final writeChunk(Ljava/io/OutputStream;[B[B)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "chunkType"    # [B
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p3, :cond_1

    const/4 v1, 0x0

    .line 81
    .local v1, "dataLength":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 83
    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 90
    :cond_0
    new-instance v6, Lorg/apache/sanselan/formats/png/PngCrc;

    invoke-direct {v6}, Lorg/apache/sanselan/formats/png/PngCrc;-><init>()V

    .line 92
    .local v6, "png_crc":Lorg/apache/sanselan/formats/png/PngCrc;
    array-length v7, p2

    invoke-virtual {v6, p2, v7}, Lorg/apache/sanselan/formats/png/PngCrc;->start_partial_crc([BI)J

    move-result-wide v2

    .line 93
    .local v2, "crc1":J
    if-nez p3, :cond_2

    move-wide v4, v2

    .line 95
    .local v4, "crc2":J
    :goto_1
    invoke-virtual {v6, v4, v5}, Lorg/apache/sanselan/formats/png/PngCrc;->finish_partial_crc(J)J

    move-result-wide v8

    long-to-int v0, v8

    .line 104
    .local v0, "crc":I
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 106
    return-void

    .line 80
    .end local v0    # "crc":I
    .end local v1    # "dataLength":I
    .end local v2    # "crc1":J
    .end local v4    # "crc2":J
    .end local v6    # "png_crc":Lorg/apache/sanselan/formats/png/PngCrc;
    :cond_1
    array-length v1, p3

    goto :goto_0

    .line 93
    .restart local v1    # "dataLength":I
    .restart local v2    # "crc1":J
    .restart local v6    # "png_crc":Lorg/apache/sanselan/formats/png/PngCrc;
    :cond_2
    array-length v7, p3

    invoke-virtual {v6, v2, v3, p3, v7}, Lorg/apache/sanselan/formats/png/PngCrc;->continue_partial_crc(J[BI)J

    move-result-wide v4

    goto :goto_1
.end method

.method private writeChunkIDAT(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lorg/apache/sanselan/formats/png/PngWriter;->IDAT_CHUNK_TYPE:[B

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 285
    return-void
.end method

.method private writeChunkIEND(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Lorg/apache/sanselan/formats/png/PngWriter;->IEND_CHUNK_TYPE:[B

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 279
    return-void
.end method

.method private writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "value"    # Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->width:I

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 138
    iget v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->height:I

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeInt(Ljava/io/OutputStream;I)V

    .line 139
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->bit_depth:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->colorType:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->compressionMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->filterMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    iget-byte v1, p2, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;->interlaceMethod:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    sget-object v1, Lorg/apache/sanselan/formats/png/PngWriter;->IHDR_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 148
    return-void
.end method

.method private writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/sanselan/palette/Palette;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "palette"    # Lorg/apache/sanselan/palette/Palette;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p2}, Lorg/apache/sanselan/palette/Palette;->length()I

    move-result v3

    .line 260
    .local v3, "length":I
    mul-int/lit8 v5, v3, 0x3

    new-array v0, v5, [B

    .line 263
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 265
    invoke-virtual {p2, v1}, Lorg/apache/sanselan/palette/Palette;->getEntry(I)I

    move-result v4

    .line 266
    .local v4, "rgb":I
    mul-int/lit8 v2, v1, 0x3

    .line 268
    .local v2, "index":I
    add-int/lit8 v5, v2, 0x0

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 269
    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 270
    add-int/lit8 v5, v2, 0x2

    shr-int/lit8 v6, v4, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "index":I
    .end local v4    # "rgb":I
    :cond_0
    sget-object v5, Lorg/apache/sanselan/formats/png/PngWriter;->PLTE_CHUNK_TYPE:[B

    invoke-direct {p0, p1, v5, v0}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 274
    return-void
.end method

.method private writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "xmpXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string v1, "XML:com.adobe.xmp"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 240
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 245
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    const-string v1, "XML:com.adobe.xmp"

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 249
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 251
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 253
    sget-object v1, Lorg/apache/sanselan/formats/png/PngWriter;->iTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 254
    return-void
.end method

.method private writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$iTXt;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "text"    # Lorg/apache/sanselan/formats/png/PngText$iTXt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png tEXt chunk language tag is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 171
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->languageTag:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 172
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->translatedKeyword:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 176
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object v2, p2, Lorg/apache/sanselan/formats/png/PngText$iTXt;->text:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    sget-object v1, Lorg/apache/sanselan/formats/png/PngWriter;->iTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 181
    return-void
.end method

.method private writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$tEXt;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "text"    # Lorg/apache/sanselan/formats/png/PngText$tEXt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png tEXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png tEXt chunk text is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$tEXt;->text:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    sget-object v1, Lorg/apache/sanselan/formats/png/PngWriter;->tEXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 230
    return-void
.end method

.method private writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$zTXt;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "text"    # Lorg/apache/sanselan/formats/png/PngText$zTXt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png zTXt chunk keyword is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/sanselan/util/UnicodeUtils;->isValidISO_8859_1(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Png zTXt chunk text is not ISO-8859-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->keyword:Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    new-instance v1, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object v2, p2, Lorg/apache/sanselan/formats/png/PngText$zTXt;->text:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/ZLibUtils;->deflate([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 207
    sget-object v1, Lorg/apache/sanselan/formats/png/PngWriter;->zTXt_CHUNK_TYPE:[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunk(Ljava/io/OutputStream;[B[B)V

    .line 208
    return-void
.end method

.method private final writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 72
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 73
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 74
    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 51
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
    .line 366
    new-instance v42, Ljava/util/HashMap;

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 369
    .end local p3    # "params":Ljava/util/Map;
    .local v42, "params":Ljava/util/Map;
    const-string v12, "FORMAT"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 370
    const-string v12, "FORMAT"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    const-string v12, "VERBOSE"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 373
    const-string v12, "VERBOSE"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_1
    new-instance v43, Ljava/util/HashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 376
    .local v43, "rawParams":Ljava/util/Map;
    const-string v12, "PNG_FORCE_TRUE_COLOR"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 377
    const-string v12, "PNG_FORCE_TRUE_COLOR"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_2
    const-string v12, "PNG_FORCE_INDEXED_COLOR"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 379
    const-string v12, "PNG_FORCE_INDEXED_COLOR"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_3
    const-string v12, "PNG_BIT_DEPTH"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 381
    const-string v12, "PNG_BIT_DEPTH"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_4
    const-string v12, "XMP_XML"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 383
    const-string v12, "XMP_XML"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_5
    const-string v12, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 385
    const-string v12, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, v42

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_6
    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 388
    invoke-interface/range {v42 .. v42}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    .line 389
    .local v29, "firstKey":Ljava/lang/Object;
    new-instance v12, Lorg/apache/sanselan/ImageWriteException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Unknown parameter: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 391
    .end local v29    # "firstKey":Ljava/lang/Object;
    :cond_7
    move-object/from16 p3, v43

    .line 393
    .end local v42    # "params":Ljava/util/Map;
    .restart local p3    # "params":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    .line 394
    .local v5, "width":I
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    .line 396
    .local v6, "height":I
    new-instance v12, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v12}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/sanselan/palette/PaletteFactory;->hasTransparency(Ljava/awt/image/BufferedImage;)Z

    move-result v34

    .line 397
    .local v34, "hasAlpha":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_8

    .line 398
    const-string v12, "hasAlpha"

    move/from16 v0, v34

    invoke-static {v12, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Z)V

    .line 401
    :cond_8
    new-instance v12, Lorg/apache/sanselan/palette/PaletteFactory;

    invoke-direct {v12}, Lorg/apache/sanselan/palette/PaletteFactory;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/sanselan/palette/PaletteFactory;->isGrayscale(Ljava/awt/image/BufferedImage;)Z

    move-result v37

    .line 402
    .local v37, "isGrayscale":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_9

    .line 403
    const-string v12, "isGrayscale"

    move/from16 v0, v37

    invoke-static {v12, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Z)V

    .line 407
    :cond_9
    const-string v12, "PNG_FORCE_INDEXED_COLOR"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v30

    .line 409
    .local v30, "forceIndexedColor":Z
    const-string v12, "PNG_FORCE_TRUE_COLOR"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v13}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v31

    .line 412
    .local v31, "forceTrueColor":Z
    if-eqz v30, :cond_a

    if-eqz v31, :cond_a

    .line 413
    new-instance v12, Lorg/apache/sanselan/ImageWriteException;

    const-string v13, "Params: Cannot force both indexed and true color modes"

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 415
    :cond_a
    if-eqz v30, :cond_10

    .line 417
    const/4 v8, 0x3

    .line 424
    .local v8, "colorType":B
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_b

    .line 425
    const-string v12, "colorType"

    invoke-static {v12, v8}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 428
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v8, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->getBitDepth(BLjava/util/Map;)B

    move-result v7

    .line 429
    .local v7, "bitDepth":B
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_c

    .line 430
    const-string v12, "bit_depth"

    invoke-static {v12, v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 433
    :cond_c
    const/4 v12, 0x3

    if-ne v8, v12, :cond_13

    .line 434
    const/16 v45, 0x8

    .line 437
    .local v45, "sampleDepth":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    if-eqz v12, :cond_d

    .line 438
    const-string v12, "sample_depth"

    move/from16 v0, v45

    invoke-static {v12, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 441
    :cond_d
    sget-object v12, Lorg/apache/sanselan/formats/png/PngWriter;->PNG_Signature:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 446
    const/4 v9, 0x0

    .line 447
    .local v9, "compressionMethod":B
    const/4 v10, 0x0

    .line 448
    .local v10, "filterMethod":B
    const/4 v11, 0x0

    .line 450
    .local v11, "interlaceMethod":B
    new-instance v4, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;

    invoke-direct/range {v4 .. v11}, Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;-><init>(IIBBBBB)V

    .line 453
    .local v4, "imageHeader":Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIHDR(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;)V

    .line 463
    const/16 v41, 0x0

    .line 464
    .local v41, "palette":Lorg/apache/sanselan/palette/Palette;
    const/4 v12, 0x3

    if-ne v8, v12, :cond_e

    .line 468
    if-eqz v34, :cond_14

    const/16 v39, 0xff

    .line 470
    .local v39, "max_colors":I
    :goto_2
    new-instance v12, Lorg/apache/sanselan/palette/MedianCutQuantizer;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lorg/apache/sanselan/palette/MedianCutQuantizer;-><init>(Z)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/sanselan/formats/png/PngWriter;->verbose:Z

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v12, v0, v1, v13}, Lorg/apache/sanselan/palette/MedianCutQuantizer;->process(Ljava/awt/image/BufferedImage;IZ)Lorg/apache/sanselan/palette/Palette;

    move-result-object v41

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkPLTE(Ljava/io/OutputStream;Lorg/apache/sanselan/palette/Palette;)V

    .line 480
    .end local v39    # "max_colors":I
    :cond_e
    const-string v12, "XMP_XML"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 482
    const-string v12, "XMP_XML"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 483
    .local v50, "xmpXml":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkXmpiTXt(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 486
    .end local v50    # "xmpXml":Ljava/lang/String;
    :cond_f
    const-string v12, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 488
    const-string v12, "PNG_TEXT_CHUNKS"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/List;

    .line 489
    .local v40, "outputTexts":Ljava/util/List;
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_3
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v0, v35

    if-ge v0, v12, :cond_18

    .line 491
    move-object/from16 v0, v40

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/apache/sanselan/formats/png/PngText;

    .line 492
    .local v46, "text":Lorg/apache/sanselan/formats/png/PngText;
    move-object/from16 v0, v46

    instance-of v12, v0, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    if-eqz v12, :cond_15

    .line 493
    check-cast v46, Lorg/apache/sanselan/formats/png/PngText$tEXt;

    .end local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunktEXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$tEXt;)V

    .line 489
    :goto_4
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 418
    .end local v4    # "imageHeader":Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    .end local v7    # "bitDepth":B
    .end local v8    # "colorType":B
    .end local v9    # "compressionMethod":B
    .end local v10    # "filterMethod":B
    .end local v11    # "interlaceMethod":B
    .end local v35    # "i":I
    .end local v40    # "outputTexts":Ljava/util/List;
    .end local v41    # "palette":Lorg/apache/sanselan/palette/Palette;
    .end local v45    # "sampleDepth":I
    :cond_10
    if-eqz v31, :cond_12

    .line 420
    if-eqz v34, :cond_11

    const/4 v12, 0x6

    :goto_5
    int-to-byte v8, v12

    .restart local v8    # "colorType":B
    goto/16 :goto_0

    .end local v8    # "colorType":B
    :cond_11
    const/4 v12, 0x2

    goto :goto_5

    .line 423
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->getColourType(ZZ)B

    move-result v8

    .restart local v8    # "colorType":B
    goto/16 :goto_0

    .line 436
    .restart local v7    # "bitDepth":B
    :cond_13
    move/from16 v45, v7

    .restart local v45    # "sampleDepth":I
    goto/16 :goto_1

    .line 468
    .restart local v4    # "imageHeader":Lorg/apache/sanselan/formats/png/PngWriter$ImageHeader;
    .restart local v9    # "compressionMethod":B
    .restart local v10    # "filterMethod":B
    .restart local v11    # "interlaceMethod":B
    .restart local v41    # "palette":Lorg/apache/sanselan/palette/Palette;
    :cond_14
    const/16 v39, 0x100

    goto/16 :goto_2

    .line 494
    .restart local v35    # "i":I
    .restart local v40    # "outputTexts":Ljava/util/List;
    .restart local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    :cond_15
    move-object/from16 v0, v46

    instance-of v12, v0, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    if-eqz v12, :cond_16

    .line 495
    check-cast v46, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    .end local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkzTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$zTXt;)V

    goto :goto_4

    .line 496
    .restart local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    :cond_16
    move-object/from16 v0, v46

    instance-of v12, v0, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    if-eqz v12, :cond_17

    .line 497
    check-cast v46, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    .end local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkiTXt(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/png/PngText$iTXt;)V

    goto :goto_4

    .line 499
    .restart local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    :cond_17
    new-instance v12, Lorg/apache/sanselan/ImageWriteException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Unknown text to embed in PNG: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 511
    .end local v35    # "i":I
    .end local v40    # "outputTexts":Ljava/util/List;
    .end local v46    # "text":Lorg/apache/sanselan/formats/png/PngText;
    :cond_18
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 513
    .local v22, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x4

    if-eq v8, v12, :cond_19

    const/4 v12, 0x6

    if-ne v8, v12, :cond_1b

    :cond_19
    const/16 v48, 0x1

    .line 516
    .local v48, "useAlpha":Z
    :goto_6
    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 517
    .local v17, "row":[I
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_7
    if-ge v14, v6, :cond_1f

    .line 520
    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, p1

    move v15, v5

    move/from16 v19, v5

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 522
    const/16 v28, 0x0

    .line 523
    .local v28, "filter_type":B
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    const/16 v49, 0x0

    .local v49, "x":I
    :goto_8
    move/from16 v0, v49

    if-ge v0, v5, :cond_1e

    .line 526
    aget v21, v17, v49

    .line 528
    .local v21, "argb":I
    if-eqz v41, :cond_1c

    .line 530
    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/palette/Palette;->getPaletteIndex(I)I

    move-result v36

    .line 531
    .local v36, "index":I
    move/from16 v0, v36

    and-int/lit16 v12, v0, 0xff

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    .end local v36    # "index":I
    :cond_1a
    :goto_9
    add-int/lit8 v49, v49, 0x1

    goto :goto_8

    .line 513
    .end local v14    # "y":I
    .end local v17    # "row":[I
    .end local v21    # "argb":I
    .end local v28    # "filter_type":B
    .end local v48    # "useAlpha":Z
    .end local v49    # "x":I
    :cond_1b
    const/16 v48, 0x0

    goto :goto_6

    .line 534
    .restart local v14    # "y":I
    .restart local v17    # "row":[I
    .restart local v21    # "argb":I
    .restart local v28    # "filter_type":B
    .restart local v48    # "useAlpha":Z
    .restart local v49    # "x":I
    :cond_1c
    shr-int/lit8 v12, v21, 0x18

    and-int/lit16 v0, v12, 0xff

    move/from16 v20, v0

    .line 535
    .local v20, "alpha":I
    shr-int/lit8 v12, v21, 0x10

    and-int/lit16 v0, v12, 0xff

    move/from16 v44, v0

    .line 536
    .local v44, "red":I
    shr-int/lit8 v12, v21, 0x8

    and-int/lit16 v0, v12, 0xff

    move/from16 v33, v0

    .line 537
    .local v33, "green":I
    shr-int/lit8 v12, v21, 0x0

    and-int/lit16 v0, v12, 0xff

    move/from16 v23, v0

    .line 539
    .local v23, "blue":I
    if-eqz v37, :cond_1d

    .line 541
    add-int v12, v44, v33

    add-int v12, v12, v23

    div-int/lit8 v32, v12, 0x3

    .line 554
    .local v32, "gray":I
    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 561
    .end local v32    # "gray":I
    :goto_a
    if-eqz v48, :cond_1a

    .line 562
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    .line 557
    :cond_1d
    move-object/from16 v0, v22

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 558
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 559
    invoke-virtual/range {v22 .. v23}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_a

    .line 517
    .end local v20    # "alpha":I
    .end local v21    # "argb":I
    .end local v23    # "blue":I
    .end local v33    # "green":I
    .end local v44    # "red":I
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 566
    .end local v28    # "filter_type":B
    .end local v49    # "x":I
    :cond_1f
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v47

    .line 571
    .local v47, "uncompressed":[B
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    .end local v22    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    .restart local v22    # "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v26, Ljava/util/zip/DeflaterOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 573
    .local v26, "dos":Ljava/util/zip/DeflaterOutputStream;
    const/high16 v24, 0x40000

    .line 574
    .local v24, "chunk_size":I
    const/16 v36, 0x0

    .restart local v36    # "index":I
    :goto_b
    move-object/from16 v0, v47

    array-length v12, v0

    move/from16 v0, v36

    if-ge v0, v12, :cond_21

    .line 576
    move-object/from16 v0, v47

    array-length v12, v0

    add-int v13, v36, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 577
    .local v27, "end":I
    sub-int v38, v27, v36

    .line 579
    .local v38, "length":I
    move-object/from16 v0, v26

    move-object/from16 v1, v47

    move/from16 v2, v36

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 580
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/DeflaterOutputStream;->flush()V

    .line 581
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 583
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    .line 584
    .local v25, "compressed":[B
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 585
    move-object/from16 v0, v25

    array-length v12, v0

    if-lez v12, :cond_20

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    .line 574
    :cond_20
    add-int v36, v36, v24

    goto :goto_b

    .line 593
    .end local v25    # "compressed":[B
    .end local v27    # "end":I
    .end local v38    # "length":I
    :cond_21
    invoke-virtual/range {v26 .. v26}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 594
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    .line 595
    .restart local v25    # "compressed":[B
    move-object/from16 v0, v25

    array-length v12, v0

    if-lez v12, :cond_22

    .line 598
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIDAT(Ljava/io/OutputStream;[B)V

    .line 606
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/sanselan/formats/png/PngWriter;->writeChunkIEND(Ljava/io/OutputStream;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    .line 622
    return-void
.end method
