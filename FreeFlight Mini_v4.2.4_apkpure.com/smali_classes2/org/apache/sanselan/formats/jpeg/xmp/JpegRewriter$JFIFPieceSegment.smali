.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieceSegment"
.end annotation


# instance fields
.field public final marker:I

.field public final markerBytes:[B

.field public final segmentData:[B

.field public final segmentLengthBytes:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "marker"    # I
    .param p2, "segmentData"    # [B

    .prologue
    const/16 v2, 0x4d

    .line 85
    invoke-static {p1, v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->access$000(II)[B

    move-result-object v0

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->access$100(II)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    .line 88
    return-void
.end method

.method public constructor <init>(I[B[B[B)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "segmentLengthBytes"    # [B
    .param p4, "segmentData"    # [B

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    .line 94
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    .line 95
    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    .line 96
    iput-object p4, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    .line 97
    return-void
.end method


# virtual methods
.method public isApp1Segment()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffe1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppSegment()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffe0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffef

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExifSegment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v2, 0xffe1

    if-eq v1, v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {v1, v2}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPhotoshopApp13Segment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v2, 0xffed

    if-eq v1, v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isXmpSegment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 141
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v2, 0xffe1

    if-eq v1, v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:[B

    invoke-static {v1, v2}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 109
    return-void
.end method
