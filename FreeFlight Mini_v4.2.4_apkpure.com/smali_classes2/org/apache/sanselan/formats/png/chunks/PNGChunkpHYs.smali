.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkpHYs.java"


# instance fields
.field public final PixelsPerUnitXAxis:I

.field public final PixelsPerUnitYAxis:I

.field public final UnitSpecifier:I


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
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 37
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    const-string v1, "PixelsPerUnitXAxis"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    .line 39
    const-string v1, "PixelsPerUnitYAxis"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    .line 41
    const-string v1, "Unit specifier"

    const-string v2, "Not a Valid Png File: pHYs Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->UnitSpecifier:I

    .line 43
    return-void
.end method
