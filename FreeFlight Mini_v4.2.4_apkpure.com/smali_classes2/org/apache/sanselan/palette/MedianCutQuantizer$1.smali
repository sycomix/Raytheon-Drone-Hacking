.class Lorg/apache/sanselan/palette/MedianCutQuantizer$1;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/palette/MedianCutQuantizer;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$1;->this$0:Lorg/apache/sanselan/palette/MedianCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 279
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .local v0, "cg1":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    move-object v1, p2

    .line 280
    check-cast v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;

    .line 282
    .local v1, "cg2":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;
    iget v2, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    iget v3, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    if-ne v2, v3, :cond_0

    .line 283
    iget v2, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->diff_total:I

    sub-int/2addr v2, v3

    .line 284
    :goto_0
    return v2

    :cond_0
    iget v2, v1, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    iget v3, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorGroup;->max_diff:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method
