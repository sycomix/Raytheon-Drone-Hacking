.class Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;
.super Ljava/lang/Object;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

.field private final val$exifPieces:Ljava/util/List;

.field private final val$pieces:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->this$0:Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 2
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "imageData"    # [B

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;

    invoke-direct {v1, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 3
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "markerLength"    # I
    .param p4, "markerLengthBytes"    # [B
    .param p5, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const v1, 0xffe1

    if-eq p1, v1, :cond_0

    .line 174
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    invoke-direct {v2, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 177
    :cond_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {p5, v1}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v2, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    invoke-direct {v2, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    .line 192
    .local v0, "piece":Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPiece;
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
