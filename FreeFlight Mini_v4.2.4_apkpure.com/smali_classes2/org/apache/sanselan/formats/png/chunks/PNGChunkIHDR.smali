.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkIHDR.java"


# instance fields
.field public final bitDepth:I

.field public final colorType:I

.field public final compressionMethod:I

.field public final filterMethod:I

.field public final height:I

.field public final interlaceMethod:I

.field public final width:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 3
    .param p1, "Length"    # I
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
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 40
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    const-string v1, "Width"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    .line 41
    const-string v1, "Height"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    .line 42
    const-string v1, "BitDepth"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    .line 44
    const-string v1, "ColorType"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    .line 46
    const-string v1, "CompressionMethod"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->compressionMethod:I

    .line 48
    const-string v1, "FilterMethod"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    .line 50
    const-string v1, "InterlaceMethod"

    const-string v2, "Not a Valid Png File: IHDR Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    .line 52
    return-void
.end method
