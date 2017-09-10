.class public Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffTagConstants;


# static fields
.field public static final AcceptedExtensions:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final permissive:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".jpeg"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->AcceptedExtensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 58
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->setByteOrder(I)V

    .line 60
    return-void
.end method

.method static access$000(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->keepMarker(I[I)Z

    move-result v0

    return v0
.end method

.method private assembleSegments(Ljava/util/ArrayList;)[B
    .locals 2
    .param p1, "v"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;Z)[B
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lorg/apache/sanselan/ImageReadException;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method private assembleSegments(Ljava/util/ArrayList;Z)[B
    .locals 10
    .param p1, "v"    # Ljava/util/ArrayList;
    .param p2, "start_with_zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v2, :cond_0

    .line 193
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "No App2 Segments Found."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 195
    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    iget v1, v7, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    .line 200
    .local v1, "markerCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 201
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "App2 Segments Missing.  Found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", Expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 206
    if-eqz p2, :cond_2

    move v2, v8

    .line 208
    .local v2, "offset":I
    :cond_2
    const/4 v6, 0x0

    .line 209
    .local v6, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 211
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 213
    .local v5, "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    add-int v7, v0, v2

    iget v9, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    if-eq v7, v9, :cond_3

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/ArrayList;)V

    .line 216
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Incoherent App2 Segment Ordering.  i: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", segment["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "].cur_marker: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 222
    :cond_3
    iget v7, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    if-eq v1, v7, :cond_4

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->dumpSegments(Ljava/util/ArrayList;)V

    .line 225
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Inconsistent App2 Segment Count info.  markerCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ", segment["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "].num_markers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget v9, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    :cond_4
    iget-object v7, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v7, v7

    add-int/2addr v6, v7

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 234
    .end local v5    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    :cond_5
    new-array v4, v6, [B

    .line 235
    .local v4, "result":[B
    const/4 v3, 0x0

    .line 237
    .local v3, "progress":I
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 241
    .restart local v5    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    iget-object v7, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    iget-object v9, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v9, v9

    invoke-static {v7, v8, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v7, v5, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    array-length v7, v7

    add-int/2addr v3, v7

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    .end local v5    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    :cond_6
    return-object v4
.end method

.method private dumpSegments(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Ljava/util/ArrayList;

    .prologue
    .line 251
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 252
    const-string v2, "dumpSegments"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 256
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 258
    .local v1, "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, v1, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    :cond_0
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 262
    return-void
.end method

.method private filterAPP1Segments(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "v"    # Ljava/util/ArrayList;

    .prologue
    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v1, "result":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 331
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;

    .line 332
    .local v2, "segment":Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;
    invoke-static {v2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->isExifAPP1Segment(Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;
    :cond_1
    return-object v1
.end method

.method private filterSegments(Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "v"    # Ljava/util/ArrayList;
    .param p2, "markers"    # Ljava/util/List;

    .prologue
    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v2, "result":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 345
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/Segment;

    .line 346
    .local v3, "segment":Lorg/apache/sanselan/formats/jpeg/segments/Segment;
    new-instance v1, Ljava/lang/Integer;

    iget v4, v3, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->marker:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 347
    .local v1, "marker":Ljava/lang/Integer;
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "marker":Ljava/lang/Integer;
    .end local v3    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/Segment;
    :cond_1
    return-object v2
.end method

.method public static isExifAPP1Segment(Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;)Z
    .locals 2
    .param p0, "segment"    # Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;

    .prologue
    .line 322
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->byteArrayHasPrefix([B[B)Z

    move-result v0

    return v0
.end method

.method private keepMarker(I[I)Z
    .locals 3
    .param p1, "marker"    # I
    .param p2, "markers"    # [I

    .prologue
    const/4 v1, 0x1

    .line 96
    if-nez p2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 101
    aget v2, p2, v0

    if-eq v2, p1, :cond_0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1001
    const-string v6, "tiff.dumpImageFile"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v1

    .line 1005
    .local v1, "imageInfo":Lorg/apache/sanselan/ImageInfo;
    if-nez v1, :cond_0

    .line 1036
    :goto_0
    return v5

    .line 1008
    :cond_0
    const-string v6, ""

    invoke-virtual {v1, p1, v6}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1011
    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const/4 v6, 0x0

    invoke-virtual {p0, p2, v6, v5}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 1016
    .local v4, "segments":Ljava/util/ArrayList;
    if-nez v4, :cond_1

    .line 1017
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    const-string v6, "No Segments Found."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1019
    :cond_1
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1022
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/Segment;

    .line 1024
    .local v3, "segment":Lorg/apache/sanselan/formats/jpeg/segments/Segment;
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 1026
    .local v2, "nf":Ljava/text/NumberFormat;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": marker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v3, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->marker:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " (length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v3, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->length:I

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v3, p1}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;->dump(Ljava/io/PrintWriter;)V

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1033
    .end local v2    # "nf":Ljava/text/NumberFormat;
    .end local v3    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/Segment;
    :cond_2
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 646
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->AcceptedExtensions:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/apache/sanselan/ImageReadException;

    const-string v1, "Sanselan cannot read or write JPEG images."

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, ".jpg"

    return-object v0
.end method

.method public getExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getExifRawData(Lorg/apache/sanselan/common/byteSources/ByteSource;)[B

    move-result-object v0

    .line 358
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 359
    const/4 v1, 0x0

    .line 366
    :goto_0
    return-object v1

    .line 361
    :cond_0
    if-nez p2, :cond_1

    .line 362
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 363
    .restart local p2    # "params":Ljava/util/Map;
    :cond_1
    const-string v1, "READ_THUMBNAILS"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 364
    const-string v1, "READ_THUMBNAILS"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    new-instance v1, Lorg/apache/sanselan/formats/tiff/TiffImageParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {v1, v0, p2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    goto :goto_0
.end method

.method public getExifRawData(Lorg/apache/sanselan/common/byteSources/ByteSource;)[B
    .locals 10
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 373
    new-array v5, v8, [I

    const v6, 0xffe1

    aput v6, v5, v9

    invoke-virtual {p0, p1, v5, v9}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 376
    .local v3, "segments":Ljava/util/ArrayList;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v4

    .line 379
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->filterAPP1Segments(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    .local v1, "exifSegments":Ljava/util/ArrayList;
    iget-boolean v5, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz v5, :cond_2

    .line 381
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "exif_segments.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v8, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 391
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Sanselan currently can\'t parse EXIF metadata split across multiple APP1 segments.  Please send this image to the Sanselan project."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_3
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;

    .line 396
    .local v2, "segment":Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;
    iget-object v0, v2, Lorg/apache/sanselan/formats/jpeg/segments/GenericSegment;->bytes:[B

    .line 402
    .local v0, "bytes":[B
    const-string v4, "trimmed exif bytes"

    const/4 v5, 0x6

    invoke-virtual {p0, v4, v0, v5}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getByteArrayTail(Ljava/lang/String;[BI)[B

    move-result-object v4

    goto :goto_0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 10
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 273
    new-array v6, v9, [I

    const v7, 0xffe2

    aput v7, v6, v8

    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 276
    .local v4, "segments":Ljava/util/ArrayList;
    if-eqz v4, :cond_2

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "filtered":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 282
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 283
    .local v3, "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    iget-object v6, v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    if-eqz v6, :cond_0

    .line 284
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    :cond_1
    move-object v4, v1

    .line 289
    .end local v1    # "filtered":Ljava/util/ArrayList;
    .end local v2    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v9, :cond_5

    :cond_3
    move-object v0, v5

    .line 301
    :cond_4
    :goto_1
    return-object v0

    .line 292
    :cond_5
    invoke-direct {p0, v4}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->assembleSegments(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 294
    .local v0, "bytes":[B
    iget-boolean v6, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz v6, :cond_6

    .line 295
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-nez v0, :cond_7

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    :cond_6
    iget-boolean v5, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->debug:Z

    if-eqz v5, :cond_4

    .line 299
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 295
    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 42
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    const/16 v38, 0xd

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    fill-array-data v38, :array_0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v25

    .line 668
    .local v25, "SOF_segments":Ljava/util/ArrayList;
    if-nez v25, :cond_0

    .line 669
    new-instance v38, Lorg/apache/sanselan/ImageReadException;

    const-string v39, "No SOFN Data Found."

    invoke-direct/range {v38 .. v39}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 675
    :cond_0
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const v40, 0xffe0

    aput v40, v38, v39

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v30

    .line 678
    .local v30, "jfifSegments":Ljava/util/ArrayList;
    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;

    .line 682
    .local v27, "fSOFNSegment":Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;
    if-nez v27, :cond_1

    .line 683
    new-instance v38, Lorg/apache/sanselan/ImageReadException;

    const-string v39, "No SOFN Data Found."

    invoke-direct/range {v38 .. v39}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 685
    :cond_1
    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->width:I

    move/from16 v17, v0

    .line 686
    .local v17, "Width":I
    move-object/from16 v0, v27

    iget v10, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->height:I

    .line 688
    .local v10, "Height":I
    const/16 v29, 0x0

    .line 690
    .local v29, "jfifSegment":Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;
    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v38

    if-lez v38, :cond_2

    .line 691
    const/16 v38, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "jfifSegment":Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;
    check-cast v29, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;

    .line 696
    .restart local v29    # "jfifSegment":Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;
    :cond_2
    const-wide/high16 v34, -0x4010000000000000L    # -1.0

    .line 697
    .local v34, "x_density":D
    const-wide/high16 v36, -0x4010000000000000L    # -1.0

    .line 698
    .local v36, "y_density":D
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    .line 703
    .local v32, "units_per_inch":D
    if-eqz v29, :cond_4

    .line 705
    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->xDensity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v34, v0

    .line 706
    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->yDensity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v36, v0

    .line 707
    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->densityUnits:I

    move/from16 v26, v0

    .line 711
    .local v26, "density_units":I
    new-instance v38, Ljava/lang/StringBuffer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuffer;-><init>()V

    const-string v39, "Jpeg/JFIF v."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v38

    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMajorVersion:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v38

    const-string v39, "."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v38

    move-object/from16 v0, v29

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMinorVersion:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "FormatDetails":Ljava/lang/String;
    packed-switch v26, :pswitch_data_0

    .line 776
    .end local v26    # "density_units":I
    :goto_0
    :pswitch_0
    const/4 v13, -0x1

    .line 777
    .local v13, "PhysicalHeightDpi":I
    const/high16 v14, -0x40800000    # -1.0f

    .line 778
    .local v14, "PhysicalHeightInch":F
    const/4 v15, -0x1

    .line 779
    .local v15, "PhysicalWidthDpi":I
    const/high16 v16, -0x40800000    # -1.0f

    .line 781
    .local v16, "PhysicalWidthInch":F
    const-wide/16 v38, 0x0

    cmpl-double v38, v32, v38

    if-lez v38, :cond_3

    .line 783
    div-double v38, v34, v32

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v15, v0

    .line 785
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v40, v34, v32

    div-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v0, v0

    move/from16 v16, v0

    .line 786
    mul-double v38, v36, v32

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v13, v0

    .line 788
    int-to-double v0, v10

    move-wide/from16 v38, v0

    mul-double v40, v36, v32

    div-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-float v14, v0

    .line 791
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v7, "Comments":Ljava/util/ArrayList;
    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->numberOfComponents:I

    move/from16 v23, v0

    .line 795
    .local v23, "Number_of_components":I
    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->precision:I

    move/from16 v24, v0

    .line 797
    .local v24, "Precision":I
    mul-int v6, v23, v24

    .line 798
    .local v6, "BitsPerPixel":I
    sget-object v8, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;

    .line 799
    .local v8, "Format":Lorg/apache/sanselan/ImageFormat;
    const-string v9, "JPEG (Joint Photographic Experts Group) Format"

    .line 800
    .local v9, "FormatName":Ljava/lang/String;
    const-string v11, "image/jpeg"

    .line 802
    .local v11, "MimeType":Ljava/lang/String;
    const/4 v12, 0x1

    .line 804
    .local v12, "NumberOfImages":I
    move-object/from16 v0, v27

    iget v0, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->marker:I

    move/from16 v38, v0

    const v39, 0xffc2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    .line 806
    .local v18, "isProgressive":Z
    :goto_1
    const/16 v19, 0x0

    .line 807
    .local v19, "isTransparent":Z
    const/16 v20, 0x0

    .line 809
    .local v20, "usesPalette":Z
    const/16 v38, 0x1

    move/from16 v0, v23

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    .line 810
    const/16 v21, 0x0

    .line 818
    .local v21, "ColorType":I
    :goto_2
    const-string v22, "JPEG"

    .line 820
    .local v22, "compressionAlgorithm":Ljava/lang/String;
    new-instance v4, Lorg/apache/sanselan/ImageInfo;

    invoke-direct/range {v4 .. v22}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 826
    .local v4, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v4

    .line 719
    .end local v4    # "result":Lorg/apache/sanselan/ImageInfo;
    .end local v6    # "BitsPerPixel":I
    .end local v7    # "Comments":Ljava/util/ArrayList;
    .end local v8    # "Format":Lorg/apache/sanselan/ImageFormat;
    .end local v9    # "FormatName":Ljava/lang/String;
    .end local v11    # "MimeType":Ljava/lang/String;
    .end local v12    # "NumberOfImages":I
    .end local v13    # "PhysicalHeightDpi":I
    .end local v14    # "PhysicalHeightInch":F
    .end local v15    # "PhysicalWidthDpi":I
    .end local v16    # "PhysicalWidthInch":F
    .end local v18    # "isProgressive":Z
    .end local v19    # "isTransparent":Z
    .end local v20    # "usesPalette":Z
    .end local v21    # "ColorType":I
    .end local v22    # "compressionAlgorithm":Ljava/lang/String;
    .end local v23    # "Number_of_components":I
    .end local v24    # "Precision":I
    .restart local v26    # "density_units":I
    :pswitch_1
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 720
    goto :goto_0

    .line 722
    :pswitch_2
    const-wide v32, 0x400451eb851eb852L    # 2.54

    .line 723
    goto :goto_0

    .line 729
    .end local v5    # "FormatDetails":Ljava/lang/String;
    .end local v26    # "density_units":I
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v31

    check-cast v31, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    .line 732
    .local v31, "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    if-eqz v31, :cond_7

    .line 735
    sget-object v38, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v28

    .line 737
    .local v28, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v28, :cond_5

    .line 738
    invoke-virtual/range {v28 .. v28}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Number;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v34

    .line 741
    :cond_5
    sget-object v38, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v28

    .line 743
    if-eqz v28, :cond_6

    .line 744
    invoke-virtual/range {v28 .. v28}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Number;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v36

    .line 747
    :cond_6
    sget-object v38, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v28

    .line 749
    if-eqz v28, :cond_7

    .line 751
    invoke-virtual/range {v28 .. v28}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Number;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Number;->intValue()I

    move-result v26

    .line 754
    .restart local v26    # "density_units":I
    packed-switch v26, :pswitch_data_1

    .line 772
    .end local v26    # "density_units":I
    .end local v28    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_7
    :goto_3
    :pswitch_3
    const-string v5, "Jpeg/DCM"

    .restart local v5    # "FormatDetails":Ljava/lang/String;
    goto/16 :goto_0

    .line 759
    .end local v5    # "FormatDetails":Ljava/lang/String;
    .restart local v26    # "density_units":I
    .restart local v28    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :pswitch_4
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 760
    goto :goto_3

    .line 762
    :pswitch_5
    const-wide v32, 0x400451eb851eb852L    # 2.54

    .line 763
    goto :goto_3

    .line 804
    .end local v26    # "density_units":I
    .end local v28    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v31    # "metadata":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    .restart local v5    # "FormatDetails":Ljava/lang/String;
    .restart local v6    # "BitsPerPixel":I
    .restart local v7    # "Comments":Ljava/util/ArrayList;
    .restart local v8    # "Format":Lorg/apache/sanselan/ImageFormat;
    .restart local v9    # "FormatName":Ljava/lang/String;
    .restart local v11    # "MimeType":Ljava/lang/String;
    .restart local v12    # "NumberOfImages":I
    .restart local v13    # "PhysicalHeightDpi":I
    .restart local v14    # "PhysicalHeightInch":F
    .restart local v15    # "PhysicalWidthDpi":I
    .restart local v16    # "PhysicalWidthInch":F
    .restart local v23    # "Number_of_components":I
    .restart local v24    # "Precision":I
    :cond_8
    const/16 v18, 0x0

    goto :goto_1

    .line 811
    .restart local v18    # "isProgressive":Z
    .restart local v19    # "isTransparent":Z
    .restart local v20    # "usesPalette":Z
    :cond_9
    const/16 v38, 0x3

    move/from16 v0, v23

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 812
    const/16 v21, 0x2

    .restart local v21    # "ColorType":I
    goto :goto_2

    .line 813
    .end local v21    # "ColorType":I
    :cond_a
    const/16 v38, 0x4

    move/from16 v0, v23

    move/from16 v1, v38

    if-ne v0, v1, :cond_b

    .line 814
    const/16 v21, 0x3

    .restart local v21    # "ColorType":I
    goto/16 :goto_2

    .line 816
    .end local v21    # "ColorType":I
    :cond_b
    const/16 v21, -0x2

    .restart local v21    # "ColorType":I
    goto/16 :goto_2

    .line 659
    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data

    .line 714
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 754
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 5
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 623
    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 633
    .local v1, "segments":Ljava/util/ArrayList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 634
    :cond_0
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "No JFIF Data Found."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 637
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Redundant JFIF Data Found."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;

    .line 641
    .local v0, "fSOFNSegment":Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;
    new-instance v2, Ljava/awt/Dimension;

    iget v3, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->width:I

    iget v4, v0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->height:I

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    return-object v2

    .line 623
    nop

    :array_0
    .array-data 4
        0xffc0
        0xffc1
        0xffc2
        0xffc3
        0xffc5
        0xffc6
        0xffc7
        0xffc9
        0xffca
        0xffcb
        0xffcd
        0xffce
        0xffcf
    .end array-data
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getExifMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    move-result-object v0

    .line 309
    .local v0, "exif":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    invoke-virtual {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->getPhotoshopMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    move-result-object v1

    .line 312
    .local v1, "photoshop":Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 313
    const/4 v2, 0x0

    .line 317
    :goto_0
    return-object v2

    .line 315
    :cond_0
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;

    invoke-direct {v2, v1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;)V

    .line 317
    .local v2, "result":Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Jpeg-Custom"

    return-object v0
.end method

.method public getPhotoshopMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
    .locals 10
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 595
    new-array v6, v9, [I

    const v7, 0xffed

    aput v7, v6, v8

    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 598
    .local v4, "segments":Ljava/util/ArrayList;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-object v5

    .line 601
    :cond_1
    const/4 v2, 0x0

    .line 603
    .local v2, "photoshopApp13Data":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 605
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;

    .line 607
    .local v3, "segment":Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;
    invoke-virtual {v3, p2}, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v0

    .line 608
    .local v0, "data":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 609
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    const-string v6, "Jpeg contains more than one Photoshop App13 segment."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 612
    :cond_2
    move-object v2, v0

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 615
    .end local v0    # "data":Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .end local v3    # "segment":Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;
    :cond_3
    if-eqz v2, :cond_0

    .line 617
    new-instance v5, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    invoke-direct {v5, v2}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    goto :goto_0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v0, "result":Ljava/util/List;
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Ljava/util/List;)V

    .line 582
    .local v1, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 584
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 585
    const/4 v2, 0x0

    .line 589
    :goto_0
    return-object v2

    .line 586
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 587
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    const-string v3, "Jpeg file contains more than one XMP segment."

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method public hasExifSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 408
    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    .line 410
    .local v0, "result":[Z
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$2;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 443
    .local v1, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 445
    aget-boolean v2, v0, v3

    return v2
.end method

.method public hasIptcSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 451
    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    .line 453
    .local v0, "result":[Z
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$3;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$3;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 486
    .local v1, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 488
    aget-boolean v2, v0, v3

    return v2
.end method

.method public hasXmpSegment(Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 494
    const/4 v2, 0x1

    new-array v0, v2, [Z

    aput-boolean v3, v0, v3

    .line 496
    .local v0, "result":[Z
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V

    .line 528
    .local v1, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v2, p1, v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 530
    aget-boolean v2, v0, v3

    return v2
.end method

.method public readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZ)Ljava/util/ArrayList;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "markers"    # [I
    .param p3, "returnAfterFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public readSegments(Lorg/apache/sanselan/common/byteSources/ByteSource;[IZZ)Ljava/util/ArrayList;
    .locals 6
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "markers"    # [I
    .param p3, "returnAfterFirst"    # Z
    .param p4, "readEverything"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, "result":Ljava/util/ArrayList;
    move-object v4, p0

    .line 115
    .local v4, "parser":Lorg/apache/sanselan/formats/jpeg/JpegImageParser;
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[ILjava/util/ArrayList;Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Z)V

    .line 170
    .local v0, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/JpegUtils;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 172
    return-object v3
.end method
