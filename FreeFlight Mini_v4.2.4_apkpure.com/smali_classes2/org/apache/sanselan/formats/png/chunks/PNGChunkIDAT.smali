.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkIDAT;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkIDAT.java"


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "Length"    # I
    .param p2, "ChunkType"    # I
    .param p3, "CRC"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 27
    return-void
.end method
