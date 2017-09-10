.class Lorg/apache/sanselan/palette/MedianCutQuantizer$2;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

.field private final val$mode:I


# direct methods
.method constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;I)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    iput p2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 371
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .local v0, "c1":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    move-object v1, p2

    .line 372
    check-cast v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 374
    .local v1, "c2":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$2;->val$mode:I

    packed-switch v2, :pswitch_data_0

    .line 385
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 377
    :pswitch_0
    iget v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    iget v3, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 379
    :pswitch_1
    iget v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    iget v3, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 381
    :pswitch_2
    iget v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    iget v3, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 383
    :pswitch_3
    iget v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    iget v3, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
