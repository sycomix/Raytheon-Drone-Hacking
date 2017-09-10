.class public Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;,
        Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 57
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->setByteOrder(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->setByteOrder(I)V

    .line 70
    return-void
.end method

.method private analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "pieces":Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "exifPieces":Ljava/util/List;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;-><init>(Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 199
    .local v2, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 208
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    invoke-direct {v3, v1, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method private writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B
    .locals 3
    .param p1, "writer"    # Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
    .param p2, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .param p3, "includeEXIFPrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 566
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_0

    .line 568
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->EXIF_IDENTIFIER_CODE:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 569
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 570
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 573
    :cond_0
    invoke-virtual {p1, v0, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 575
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 16
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "segments"    # Ljava/util/List;
    .param p3, "newBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->getByteOrder()I

    move-result v3

    .line 474
    .local v3, "byteOrder":I
    :try_start_0
    sget-object v13, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->SOI:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 476
    const/4 v6, 0x0

    .line 478
    .local v6, "hasExif":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 480
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;

    .line 481
    .local v12, "piece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;
    instance-of v13, v12, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v13, :cond_0

    .line 482
    const/4 v6, 0x1

    .line 478
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 485
    .end local v12    # "piece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;
    :cond_1
    if-nez v6, :cond_4

    if-eqz p3, :cond_4

    .line 487
    const v13, 0xffe1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v9

    .line 489
    .local v9, "markerBytes":[B
    move-object/from16 v0, p3

    array-length v13, v0

    const v14, 0xffff

    if-le v13, v14, :cond_2

    .line 490
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "APP1 Segment is too long: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p3

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v6    # "hasExif":Z
    .end local v7    # "i":I
    .end local v9    # "markerBytes":[B
    :catchall_0
    move-exception v13

    .line 543
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 548
    :goto_1
    throw v13

    .line 492
    .restart local v6    # "hasExif":Z
    .restart local v7    # "i":I
    .restart local v9    # "markerBytes":[B
    :cond_2
    :try_start_2
    move-object/from16 v0, p3

    array-length v13, v0

    add-int/lit8 v10, v13, 0x2

    .line 493
    .local v10, "markerLength":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v11

    .line 496
    .local v11, "markerLengthBytes":[B
    const/4 v8, 0x0

    .line 497
    .local v8, "index":I
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    .line 499
    .local v5, "firstSegment":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    iget v13, v5, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;->marker:I

    const v14, 0xffe0

    if-ne v13, v14, :cond_3

    .line 500
    const/4 v8, 0x1

    .line 501
    :cond_3
    const/4 v13, 0x0

    new-instance v14, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    const v15, 0xffe1

    move-object/from16 v0, p3

    invoke-direct {v14, v15, v9, v11, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 505
    .end local v5    # "firstSegment":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    .end local v8    # "index":I
    .end local v9    # "markerBytes":[B
    .end local v10    # "markerLength":I
    .end local v11    # "markerLengthBytes":[B
    :cond_4
    const/4 v2, 0x0

    .line 507
    .local v2, "APP1Written":Z
    const/4 v7, 0x0

    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_9

    .line 509
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;

    .line 510
    .restart local v12    # "piece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;
    instance-of v13, v12, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    if-eqz v13, :cond_8

    .line 513
    if-eqz v2, :cond_6

    .line 507
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 515
    :cond_6
    const/4 v2, 0x1

    .line 517
    if-eqz p3, :cond_5

    .line 520
    const v13, 0xffe1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v9

    .line 522
    .restart local v9    # "markerBytes":[B
    move-object/from16 v0, p3

    array-length v13, v0

    const v14, 0xffff

    if-le v13, v14, :cond_7

    .line 523
    new-instance v13, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "APP1 Segment is too long: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p3

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$ExifOverflowException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 525
    :cond_7
    move-object/from16 v0, p3

    array-length v13, v0

    add-int/lit8 v10, v13, 0x2

    .line 526
    .restart local v10    # "markerLength":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->convertShortToByteArray(II)[B

    move-result-object v11

    .line 529
    .restart local v11    # "markerLengthBytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    .line 530
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 531
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 535
    .end local v9    # "markerBytes":[B
    .end local v10    # "markerLength":I
    .end local v11    # "markerLengthBytes":[B
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 543
    .end local v12    # "piece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;
    :cond_9
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 550
    :goto_4
    return-void

    .line 545
    :catch_0
    move-exception v4

    .line 547
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 545
    .end local v2    # "APP1Written":Z
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "hasExif":Z
    .end local v7    # "i":I
    :catch_1
    move-exception v4

    .line 547
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public removeExifMetadata(Ljava/io/File;Ljava/io/OutputStream;)V
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
    .line 226
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 227
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 228
    return-void
.end method

.method public removeExifMetadata(Ljava/io/InputStream;Ljava/io/OutputStream;)V
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
    .line 254
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 255
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 256
    return-void
.end method

.method public removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 3
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
    .line 268
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object v0

    .line 269
    .local v0, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    iget-object v1, v0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 277
    .local v1, "pieces":Ljava/util/List;
    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    .line 278
    return-void
.end method

.method public removeExifMetadata([BLjava/io/OutputStream;)V
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
    .line 240
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 241
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->removeExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    .line 242
    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 298
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 299
    return-void
.end method

.method public updateExifMetadataLossless(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 340
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 341
    return-void
.end method

.method public updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 9
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object v3

    .line 362
    .local v3, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    iget-object v5, v3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 367
    .local v5, "pieces":Ljava/util/List;
    iget-object v7, v3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "exifPiece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    iget-object v7, v3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->exifPieces:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "exifPiece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    check-cast v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    .line 372
    .restart local v1    # "exifPiece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    iget-object v0, v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;->segmentData:[B

    .line 373
    .local v0, "exifBytes":[B
    const-string v7, "trimmed exif bytes"

    const/4 v8, 0x6

    invoke-virtual {p0, v7, v0, v8}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->getByteArrayTail(Ljava/lang/String;[BI)[B

    move-result-object v0

    .line 375
    new-instance v6, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;

    iget v7, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v6, v7, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;-><init>(I[B)V

    .line 381
    .end local v0    # "exifBytes":[B
    .end local v1    # "exifPiece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
    .local v6, "writer":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
    :goto_0
    const/4 v2, 0x1

    .line 382
    .local v2, "includeEXIFPrefix":Z
    invoke-direct {p0, v6, p3, v2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object v4

    .line 384
    .local v4, "newBytes":[B
    invoke-direct {p0, p2, v5, v4}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    .line 385
    return-void

    .line 379
    .end local v2    # "includeEXIFPrefix":Z
    .end local v4    # "newBytes":[B
    .end local v6    # "writer":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
    :cond_0
    new-instance v6, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    iget v7, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v6, v7}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>(I)V

    .restart local v6    # "writer":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
    goto :goto_0
.end method

.method public updateExifMetadataLossless([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 319
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossless(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 320
    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 438
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 439
    return-void
.end method

.method public updateExifMetadataLossy(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 420
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 421
    return-void
.end method

.method public updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 6
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;

    move-result-object v1

    .line 456
    .local v1, "jfifPieces":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;
    iget-object v3, v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 458
    .local v3, "pieces":Ljava/util/List;
    new-instance v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;

    iget v5, p3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->byteOrder:I

    invoke-direct {v4, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossy;-><init>(I)V

    .line 461
    .local v4, "writer":Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
    const/4 v0, 0x1

    .line 462
    .local v0, "includeEXIFPrefix":Z
    invoke-direct {p0, v4, p3, v0}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeExifSegment(Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;Z)[B

    move-result-object v2

    .line 464
    .local v2, "newBytes":[B
    invoke-direct {p0, p2, v3, v2}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->writeSegmentsReplacingExif(Ljava/io/OutputStream;Ljava/util/List;[B)V

    .line 465
    return-void
.end method

.method public updateExifMetadataLossy([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "outputSet"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 402
    .local v0, "byteSource":Lorg/apache/sanselan/common/byteSources/ByteSource;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;->updateExifMetadataLossy(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    .line 403
    return-void
.end method
