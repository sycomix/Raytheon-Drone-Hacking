.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkiCCP.java"


# instance fields
.field public final CompressedProfile:[B

.field public final CompressionMethod:I

.field public final ProfileName:Ljava/lang/String;

.field public final UncompressedProfile:[B


# direct methods
.method public constructor <init>(III[B)V
    .locals 7
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
    const/4 v5, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 41
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->findNull([B)I

    move-result v1

    .line 42
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 43
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "PNGChunkiCCP: No Profile Name"

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 44
    :cond_0
    new-array v2, v1, [B

    .line 45
    .local v2, "name_bytes":[B
    invoke-static {p4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    .line 48
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p4, v3

    iput v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressionMethod:I

    .line 50
    array-length v3, p4

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    sub-int v0, v3, v4

    .line 51
    .local v0, "CompressedProfileLength":I
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    .line 52
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    invoke-static {p4, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "ProfileName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "ProfileName.length(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->ProfileName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "CompressionMethod: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressionMethod:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "CompressedProfileLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "bytes.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    array-length v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_1
    new-instance v3, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->CompressedProfile:[B

    invoke-virtual {v3, v4}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    .line 69
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "UncompressedProfile: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiCCP;->UncompressedProfile:[B

    if-nez v3, :cond_3

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    array-length v6, p4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
