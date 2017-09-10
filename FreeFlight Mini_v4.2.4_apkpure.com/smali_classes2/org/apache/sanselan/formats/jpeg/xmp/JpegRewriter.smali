.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;,
        Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    }
.end annotation


# static fields
.field private static final EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final JPEG_BYTE_ORDER:I = 0x4d

.field private static final PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

.field private static final XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$2;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$2;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 221
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$3;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$3;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .line 228
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$4;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$4;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 50
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->setByteOrder(I)V

    .line 51
    return-void
.end method

.method static access$000(II)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->int2ToByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method static access$100(II)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->int2ToByteArray(II)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "pieces":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "segmentPieces":Ljava/util/List;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;-><init>(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 204
    .local v2, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v3, p1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 206
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    invoke-direct {v3, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;
    .locals 1
    .param p1, "segments"    # Ljava/util/List;
    .param p2, "filter"    # Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;
    .locals 5
    .param p1, "segments"    # Ljava/util/List;
    .param p2, "filter"    # Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;
    .param p3, "reverse"    # Z

    .prologue
    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "result":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 267
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 268
    .local v1, "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    instance-of v3, v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 270
    check-cast v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-interface {p2, v3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;->filter(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z

    move-result v4

    if-nez p3, :cond_1

    const/4 v3, 0x1

    :goto_1
    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 271
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 272
    :cond_2
    if-nez p3, :cond_0

    .line 273
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    .end local v1    # "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    :cond_3
    return-object v2
.end method

.method protected findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "segments"    # Ljava/util/List;

    .prologue
    .line 247
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "segments"    # Ljava/util/List;
    .param p2, "newSegments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 307
    const/4 v1, -0x1

    .line 308
    .local v1, "lastAppIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 310
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 311
    .local v2, "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    instance-of v5, v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v5, :cond_1

    .line 308
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 314
    check-cast v4, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 315
    .local v4, "segment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    invoke-virtual {v4}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    move v1, v0

    goto :goto_1

    .line 319
    .end local v2    # "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    .end local v4    # "segment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .local v3, "result":Ljava/util/List;
    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_3

    .line 323
    new-instance v5, Lorg/apache/sanselan/ImageWriteException;

    const-string v6, "JPEG file has no APP segments."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 324
    :cond_3
    invoke-interface {v3, v6, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 329
    :goto_2
    return-object v3

    .line 327
    :cond_4
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v3, v5, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2
.end method

.method protected insertBeforeFirstAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "segments"    # Ljava/util/List;
    .param p2, "newSegments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 282
    const/4 v0, -0x1

    .line 283
    .local v0, "firstAppIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 285
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 286
    .local v2, "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    instance-of v5, v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    if-nez v5, :cond_1

    .line 283
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 289
    check-cast v4, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 290
    .local v4, "segment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    invoke-virtual {v4}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isAppSegment()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    if-ne v0, v6, :cond_0

    .line 293
    move v0, v1

    goto :goto_1

    .line 297
    .end local v2    # "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    .end local v4    # "segment":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v3, "result":Ljava/util/List;
    if-ne v0, v6, :cond_3

    .line 299
    new-instance v5, Lorg/apache/sanselan/ImageWriteException;

    const-string v6, "JPEG file has no APP segments."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 300
    :cond_3
    invoke-interface {v3, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 301
    return-object v3
.end method

.method protected removeExifSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "segments"    # Ljava/util/List;

    .prologue
    .line 252
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->EXIF_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "segments"    # Ljava/util/List;

    .prologue
    .line 242
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->PHOTOSHOP_APP13_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeXmpSegments(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "segments"    # Ljava/util/List;

    .prologue
    .line 237
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->XMP_SEGMENT_FILTER:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->filterSegments(Ljava/util/List;Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "segments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    sget-object v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->SOI:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 341
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;

    .line 342
    .local v1, "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;->write(Ljava/io/OutputStream;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    const/4 p1, 0x0

    .line 350
    if-eqz p1, :cond_1

    .line 351
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 348
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    .line 350
    if-eqz p1, :cond_2

    .line 351
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    :cond_2
    :goto_2
    throw v2

    .line 352
    .restart local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v0    # "i":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method
