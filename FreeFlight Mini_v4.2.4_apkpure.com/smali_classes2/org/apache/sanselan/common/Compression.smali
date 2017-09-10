.class public Lorg/apache/sanselan/common/Compression;
.super Ljava/lang/Object;
.source "Compression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compressLZW([BIIZ)[B
    .locals 2
    .param p1, "src"    # [B
    .param p2, "LZWMinimumCodeSize"    # I
    .param p3, "byteOrder"    # I
    .param p4, "earlyLimit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;

    invoke-direct {v1, p2, p3, p4}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZ)V

    .line 56
    .local v1, "compressor":Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->compress([B)[B

    move-result-object v0

    .line 58
    .local v0, "compressed":[B
    return-object v0
.end method

.method public decompressLZW([BIII)[B
    .locals 3
    .param p1, "compressed"    # [B
    .param p2, "LZWMinimumCodeSize"    # I
    .param p3, "expectedSize"    # I
    .param p4, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .local v1, "is":Ljava/io/InputStream;
    new-instance v0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;

    invoke-direct {v0, p2, p4}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(II)V

    .line 37
    .local v0, "decompressor":Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
    invoke-virtual {v0, v1, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 39
    .local v2, "result":[B
    return-object v2
.end method

.method public decompressPackBits([BII)[B
    .locals 2
    .param p1, "compressed"    # [B
    .param p2, "expectedSize"    # I
    .param p3, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Lorg/apache/sanselan/common/PackBits;

    invoke-direct {v1}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/apache/sanselan/common/PackBits;->decompress([BI)[B

    move-result-object v0

    .line 46
    .local v0, "unpacked":[B
    return-object v0
.end method
