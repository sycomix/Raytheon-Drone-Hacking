.class Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

.field private final val$result:[Z


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[Z)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;->this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "imageData"    # [B

    .prologue
    .line 506
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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 513
    const v2, 0xffd9

    if-ne p1, v2, :cond_0

    .line 525
    :goto_0
    return v0

    .line 516
    :cond_0
    const v2, 0xffe1

    if-ne p1, v2, :cond_1

    .line 518
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {v2, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$4;->val$result:[Z

    aput-boolean v1, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0
.end method
