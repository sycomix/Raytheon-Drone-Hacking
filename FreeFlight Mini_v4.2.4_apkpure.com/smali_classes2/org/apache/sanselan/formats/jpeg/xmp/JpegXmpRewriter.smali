.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.source "JpegXmpRewriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method

.method private writeXmpSegment([BII)[B
    .locals 2
    .param p1, "xmpXmlData"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->XMP_IDENTIFIER:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 214
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public removeXmpXml(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 62
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 63
    return-void
.end method

.method public removeXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 97
    return-void
.end method

.method public removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v0

    .line 113
    .local v0, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    iget-object v1, v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 114
    .local v1, "pieces":Ljava/util/List;
    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-virtual {p0, p2, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public removeXmpXml([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 79
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method

.method public updateXmpXml(Ljava/io/File;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "xmpXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 169
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public updateXmpXml(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "xmpXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 151
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "xmpXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v1

    .line 188
    .local v1, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    iget-object v3, v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 189
    .local v3, "pieces":Ljava/util/List;
    invoke-virtual {p0, v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->removeXmpSegments(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, "newPieces":Ljava/util/List;
    const-string v7, "utf-8"

    invoke-virtual {p3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 193
    .local v6, "xmpXmlBytes":[B
    const/4 v0, 0x0

    .line 194
    .local v0, "index":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 196
    array-length v7, v6

    const v8, 0xffff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 197
    .local v5, "segmentSize":I
    invoke-direct {p0, v6, v0, v5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeXmpSegment([BII)[B

    move-result-object v4

    .line 199
    .local v4, "segmentData":[B
    new-instance v7, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v8, 0xffe1

    invoke-direct {v7, v8, v4}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/2addr v0, v5

    .line 201
    goto :goto_0

    .line 203
    .end local v4    # "segmentData":[B
    .end local v5    # "segmentSize":I
    :cond_0
    invoke-virtual {p0, v3, v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 205
    invoke-virtual {p0, p2, v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 206
    return-void
.end method

.method public updateXmpXml([BLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "xmpXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 133
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpRewriter;->updateXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 134
    return-void
.end method
