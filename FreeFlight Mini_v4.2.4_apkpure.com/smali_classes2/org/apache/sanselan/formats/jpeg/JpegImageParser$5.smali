.class Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

.field private final val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "imageData"    # [B

    .prologue
    .line 559
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
    const/4 v0, 0x0

    .line 566
    const v1, 0xffd9

    if-ne p1, v1, :cond_0

    .line 579
    :goto_0
    return v0

    .line 569
    :cond_0
    const v1, 0xffe1

    if-ne p1, v1, :cond_1

    .line 571
    new-instance v1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {v1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {v1, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->val$result:Ljava/util/List;

    new-instance v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {v2, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->parseXmpJpegSegment([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
