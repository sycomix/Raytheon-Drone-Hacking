.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkgAMA.java"


# instance fields
.field public final Gamma:I


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
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    const-string v1, "Gamma"

    const-string v2, "Not a Valid Png File: gAMA Corrupt"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->Gamma:I

    .line 35
    return-void
.end method


# virtual methods
.method public getGamma()D
    .locals 6

    .prologue
    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->Gamma:I

    int-to-double v2, v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method
