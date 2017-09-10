.class Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

.field private final val$markers:[I

.field private final val$parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

.field private final val$result:Ljava/util/ArrayList;

.field private final val$returnAfterFirst:Z


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;[ILjava/util/ArrayList;Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Z)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$markers:[I

    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iput-boolean p5, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0
    .param p1, "marker"    # I
    .param p2, "markerBytes"    # [B
    .param p3, "imageData"    # [B

    .prologue
    .line 125
    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 5
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

    .line 132
    const v2, 0xffd9

    if-ne p1, v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iget-object v3, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$markers:[I

    invoke-static {v2, p1, v3}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;->access$000(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    const v2, 0xffed

    if-ne p1, v2, :cond_4

    .line 147
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;

    iget-object v4, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    invoke-direct {v3, v4, p1, p5}, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$returnAfterFirst:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 166
    goto :goto_0

    .line 148
    :cond_4
    const v2, 0xffe2

    if-ne p1, v2, :cond_5

    .line 150
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;

    invoke-direct {v3, p1, p5}, Lorg/apache/sanselan/formats/jpeg/segments/App2Segment;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_5
    const v2, 0xffe0

    if-ne p1, v2, :cond_6

    .line 153
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_6
    const v2, 0xffc0

    if-lt p1, v2, :cond_7

    const v2, 0xffcf

    if-gt p1, v2, :cond_7

    .line 156
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_7
    const v2, 0xffe1

    if-lt p1, v2, :cond_3

    const v2, 0xffef

    if-gt p1, v2, :cond_3

    .line 160
    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$1;->val$result:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/sanselan/formats/jpeg/segments/UnknownSegment;

    invoke-direct {v3, p1, p5}, Lorg/apache/sanselan/formats/jpeg/segments/UnknownSegment;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
