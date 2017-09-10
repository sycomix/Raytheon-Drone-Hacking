.class public Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.source "JpegIptcRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method


# virtual methods
.method public removeIPTC(Ljava/io/File;Ljava/io/OutputStream;)V
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
    .line 65
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 66
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method

.method public removeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;)V
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
    .line 101
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 103
    return-void
.end method

.method public removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 15
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
    .line 119
    invoke-virtual/range {p0 .. p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v1

    .line 120
    .local v1, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    iget-object v8, v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 121
    .local v8, "oldPieces":Ljava/util/List;
    invoke-virtual {p0, v8}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 123
    .local v11, "photoshopApp13Segments":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 124
    new-instance v13, Lorg/apache/sanselan/ImageReadException;

    const-string v14, "Image contains more than one Photoshop App13 segment."

    invoke-direct {v13, v14}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 126
    :cond_0
    invoke-virtual {p0, v8}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 127
    .local v4, "newPieces":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 129
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 131
    .local v9, "oldSegment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v10, "params":Ljava/util/Map;
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v13}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v14, v9, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v13, v14, v10}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v7

    .line 134
    .local v7, "oldData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    invoke-virtual {v7}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "newBlocks":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v5, "newRecords":Ljava/util/List;
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v3, v5, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 138
    .local v3, "newData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v13}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual {v13, v3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v12

    .line 140
    .local v12, "segmentBytes":[B
    new-instance v6, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    iget v13, v9, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-direct {v6, v13, v12}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 142
    .local v6, "newSegment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v4, v13, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    .end local v2    # "newBlocks":Ljava/util/List;
    .end local v3    # "newData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .end local v5    # "newRecords":Ljava/util/List;
    .end local v6    # "newSegment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    .end local v7    # "oldData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .end local v9    # "oldSegment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    .end local v10    # "params":Ljava/util/Map;
    .end local v12    # "segmentBytes":[B
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v4}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public removeIPTC([BLjava/io/OutputStream;)V
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
    .line 83
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 84
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 85
    return-void
.end method

.method public writeIPTC(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "newData"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 203
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    .line 204
    return-void
.end method

.method public writeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "newData"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    .line 185
    return-void
.end method

.method public writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 15
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "newData"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual/range {p0 .. p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object v3

    .line 223
    .local v3, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    iget-object v10, v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 224
    .local v10, "oldPieces":Ljava/util/List;
    invoke-virtual {p0, v10}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 226
    .local v11, "photoshopApp13Segments":Ljava/util/List;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 227
    new-instance v13, Lorg/apache/sanselan/ImageReadException;

    const-string v14, "Image contains more than one Photoshop App13 segment."

    invoke-direct {v13, v14}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 229
    :cond_0
    invoke-virtual {p0, v10}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 233
    .local v8, "newPieces":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v6

    .line 234
    .local v6, "newBlocks":Ljava/util/List;
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v13}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writeIPTCBlock(Ljava/util/List;)[B

    move-result-object v5

    .line 237
    .local v5, "newBlockBytes":[B
    const/16 v2, 0x404

    .line 238
    .local v2, "blockType":I
    const/4 v13, 0x0

    new-array v1, v13, [B

    .line 239
    .local v1, "blockNameBytes":[B
    new-instance v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    invoke-direct {v4, v2, v1, v5}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;-><init>(I[B[B)V

    .line 241
    .local v4, "newBlock":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v7, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13, v6}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 245
    .end local p3    # "newData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .local v7, "newData":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v13}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual {v13, v7}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v12

    .line 247
    .local v12, "segmentBytes":[B
    new-instance v9, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v13, 0xffed

    invoke-direct {v9, v13, v12}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 250
    .local v9, "newSegment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {p0, v8, v13}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 254
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v8}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    .line 255
    return-void
.end method

.method public writeIPTC([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "newData"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 164
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    .line 165
    return-void
.end method
