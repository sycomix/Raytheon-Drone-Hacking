.class public Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
.super Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;
.source "App2Segment.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final cur_marker:I

.field public final icc_bytes:[B

.field public final num_markers:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 4
    .param p1, "marker"    # I
    .param p2, "marker_length"    # I
    .param p3, "is2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;-><init>(IILjava/io/InputStream;)V

    .line 42
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->bytes:[B

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->icc_profile_label:[B

    invoke-virtual {p0, v1, v2}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->startsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 46
    .local v0, "is":Ljava/io/InputStream;
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->icc_profile_label:[B

    const-string v2, "Not a Valid App2 Segment: missing ICC Profile label"

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 49
    const-string v1, "cur_marker"

    const-string v2, "Not a valid App2 Marker"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    .line 50
    const-string v1, "num_markers"

    const-string v2, "Not a valid App2 Marker"

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    .line 52
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->icc_profile_label:[B

    array-length v1, v1

    sub-int/2addr p2, v1

    .line 53
    add-int/lit8 p2, p2, -0x2

    .line 55
    const-string v1, "App2 Data"

    const-string v2, "Invalid App2 Segment: insufficient data"

    invoke-virtual {p0, v1, p2, v0, v2}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    .line 65
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 61
    :cond_0
    iput v3, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    .line 62
    iput v3, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->num_markers:I

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->icc_bytes:[B

    goto :goto_0
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "marker"    # I
    .param p2, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;-><init>(IILjava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    .line 70
    .local v0, "other":Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    iget v2, v0, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;->cur_marker:I

    sub-int/2addr v1, v2

    return v1
.end method
