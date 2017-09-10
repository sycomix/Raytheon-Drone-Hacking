.class Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/palette/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorCount"
.end annotation


# instance fields
.field public final alpha:I

.field public final argb:I

.field public final blue:I

.field public count:I

.field public final green:I

.field public final red:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->count:I

    .line 46
    iput p1, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    .line 48
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->alpha:I

    .line 49
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->red:I

    .line 50
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->green:I

    .line 51
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->blue:I

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;

    .line 64
    .local v0, "other":Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;
    iget v1, v0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    iget v2, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/sanselan/palette/MedianCutQuantizer$ColorCount;->argb:I

    return v0
.end method
