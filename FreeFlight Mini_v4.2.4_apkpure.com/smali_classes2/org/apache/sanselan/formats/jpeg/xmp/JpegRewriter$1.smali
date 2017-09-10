.class Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;

.field private final val$pieces:Ljava/util/ArrayList;

.field private final val$segmentPieces:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->this$0:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$segmentPieces:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 2
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "imageData"    # [B

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;

    invoke-direct {v1, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 2
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "segmentLength"    # I
    .param p4, "segmentLengthBytes"    # [B
    .param p5, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    .line 197
    .local v0, "piece":Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$segmentPieces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v1, 0x1

    return v1
.end method
