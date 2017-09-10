.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunkzTXt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 8
    .param p1, "length"    # I
    .param p2, "chunkType"    # I
    .param p3, "crc"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 37
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->findNull([B)I

    move-result v3

    .line 38
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 39
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    const-string v6, "PNG zTXt chunk keyword is unterminated."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, p4, v7, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    aget-byte v2, p4, v3

    .line 46
    .local v2, "compressionMethod":I
    if-eqz v2, :cond_1

    .line 47
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "PNG zTXt chunk has unexpected compression method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 51
    :cond_1
    array-length v5, p4

    sub-int v1, v5, v4

    .line 52
    .local v1, "compressedTextLength":I
    new-array v0, v1, [B

    .line 53
    .local v0, "compressedText":[B
    invoke-static {p4, v4, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v5, Ljava/lang/String;

    new-instance v6, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v6}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    invoke-virtual {v6, v0}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$zTXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/png/PngText$zTXt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkzTXt;->text:Ljava/lang/String;

    return-object v0
.end method
