.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;
.super Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;
.source "PNGChunkiTXt.java"


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final languageTag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(III[B)V
    .locals 11
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
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGTextChunk;-><init>(III[B)V

    .line 48
    invoke-virtual {p0, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([B)I

    move-result v7

    .line 49
    .local v7, "terminator":I
    if-gez v7, :cond_0

    .line 50
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    const-string v9, "PNG iTXt chunk keyword is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 53
    :cond_0
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, p4, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    .line 54
    add-int/lit8 v5, v7, 0x1

    .line 56
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aget-byte v3, p4, v5

    .line 57
    .local v3, "compressionFlag":I
    if-eqz v3, :cond_1

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    .line 58
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "PNG iTXt chunk has invalid compression flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 62
    :cond_1
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    const/4 v0, 0x1

    .line 64
    .local v0, "compressed":Z
    :goto_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    aget-byte v4, p4, v6

    .line 65
    .local v4, "compressionMethod":I
    if-eqz v0, :cond_4

    .line 66
    if-eqz v4, :cond_3

    .line 67
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 62
    .end local v0    # "compressed":Z
    .end local v4    # "compressionMethod":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    .end local v6    # "index":I
    .restart local v0    # "compressed":Z
    .restart local v4    # "compressionMethod":I
    .restart local v5    # "index":I
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "PNG iTXt chunk has unexpected compression method: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 75
    :cond_4
    invoke-virtual {p0, p4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([BI)I

    move-result v7

    .line 76
    if-gez v7, :cond_5

    .line 77
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    const-string v9, "PNG iTXt chunk language tag is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 80
    :cond_5
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v5

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->languageTag:Ljava/lang/String;

    .line 82
    add-int/lit8 v5, v7, 0x1

    .line 84
    invoke-virtual {p0, p4, v5}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->findNull([BI)I

    move-result v7

    .line 85
    if-gez v7, :cond_6

    .line 86
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    const-string v9, "PNG iTXt chunk translated keyword is not terminated."

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 89
    :cond_6
    new-instance v8, Ljava/lang/String;

    sub-int v9, v7, v5

    const-string v10, "utf-8"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->translatedKeyword:Ljava/lang/String;

    .line 91
    add-int/lit8 v5, v7, 0x1

    .line 93
    if-eqz v0, :cond_7

    .line 95
    array-length v8, p4

    sub-int v2, v8, v5

    .line 97
    .local v2, "compressedTextLength":I
    new-array v1, v2, [B

    .line 98
    .local v1, "compressedText":[B
    const/4 v8, 0x0

    invoke-static {p4, v5, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    new-instance v8, Ljava/lang/String;

    new-instance v9, Lorg/apache/sanselan/common/ZLibUtils;

    invoke-direct {v9}, Lorg/apache/sanselan/common/ZLibUtils;-><init>()V

    invoke-virtual {v9, v1}, Lorg/apache/sanselan/common/ZLibUtils;->inflate([B)[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    .line 107
    .end local v1    # "compressedText":[B
    .end local v2    # "compressedTextLength":I
    :goto_1
    return-void

    .line 105
    :cond_7
    new-instance v8, Ljava/lang/String;

    array-length v9, p4

    sub-int/2addr v9, v5

    const-string v10, "utf-8"

    invoke-direct {v8, p4, v5, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v8, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getContents()Lorg/apache/sanselan/formats/png/PngText;
    .locals 5

    .prologue
    .line 127
    new-instance v0, Lorg/apache/sanselan/formats/png/PngText$iTXt;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->languageTag:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->translatedKeyword:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/formats/png/PngText$iTXt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkiTXt;->text:Ljava/lang/String;

    return-object v0
.end method
