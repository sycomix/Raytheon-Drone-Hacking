.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorGroupCut"
.end annotation


# instance fields
.field public final less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

.field public final limit:I

.field public final mode:I

.field public final more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

.field private final this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;II)V
    .locals 0
    .param p2, "less"    # Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .param p3, "more"    # Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .param p4, "mode"    # I
    .param p5, "limit"    # I

    .prologue
    .line 467
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 469
    iput-object p3, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 470
    iput p4, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->mode:I

    .line 471
    iput p5, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->limit:I

    .line 472
    return-void
.end method


# virtual methods
.method public getColorGroup(I)Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    .locals 3
    .param p1, "argb"    # I

    .prologue
    .line 477
    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 492
    new-instance v1, Ljava/lang/Error;

    const-string v2, "bad mode."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :pswitch_0
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v0, v1, 0xff

    .line 494
    .local v0, "value":I
    :goto_0
    iget v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->limit:I

    if-gt v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->less:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 496
    :goto_1
    return-object v1

    .line 483
    .end local v0    # "value":I
    :pswitch_1
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v0, v1, 0xff

    .line 484
    .restart local v0    # "value":I
    goto :goto_0

    .line 486
    .end local v0    # "value":I
    :pswitch_2
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v0, v1, 0xff

    .line 487
    .restart local v0    # "value":I
    goto :goto_0

    .line 489
    .end local v0    # "value":I
    :pswitch_3
    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v0, v1, 0xff

    .line 490
    .restart local v0    # "value":I
    goto :goto_0

    .line 496
    :cond_0
    iget-object v1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroupCut;->more:Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    goto :goto_1

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
