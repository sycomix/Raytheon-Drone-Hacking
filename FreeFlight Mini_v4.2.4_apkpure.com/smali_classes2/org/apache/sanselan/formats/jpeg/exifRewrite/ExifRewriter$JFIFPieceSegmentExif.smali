.class Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;
.super Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JFIFPieceSegmentExif"
.end annotation


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "markerLengthBytes"    # [B
    .param p4, "segmentData"    # [B

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    .line 121
    return-void
.end method
