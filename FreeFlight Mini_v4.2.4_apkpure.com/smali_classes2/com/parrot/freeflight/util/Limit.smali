.class public Lcom/parrot/freeflight/util/Limit;
.super Ljava/lang/Object;
.source "Limit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLimitedValue(DDD)D
    .locals 2
    .param p0, "originValue"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    .line 34
    cmpl-double v0, p0, p4

    if-lez v0, :cond_0

    .line 39
    .end local p4    # "maxValue":D
    :goto_0
    return-wide p4

    .line 36
    .restart local p4    # "maxValue":D
    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    .line 37
    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 39
    goto :goto_0
.end method

.method public static getLimitedValue(FFF)F
    .locals 1
    .param p0, "originValue"    # F
    .param p1, "minValue"    # F
    .param p2, "maxValue"    # F

    .prologue
    .line 16
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 21
    .end local p2    # "maxValue":F
    :goto_0
    return p2

    .line 18
    .restart local p2    # "maxValue":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 19
    goto :goto_0

    :cond_1
    move p2, p0

    .line 21
    goto :goto_0
.end method

.method public static getLimitedValue(III)I
    .locals 0
    .param p0, "originValue"    # I
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .prologue
    .line 7
    if-le p0, p2, :cond_0

    .line 12
    .end local p2    # "maxValue":I
    :goto_0
    return p2

    .line 9
    .restart local p2    # "maxValue":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 10
    goto :goto_0

    :cond_1
    move p2, p0

    .line 12
    goto :goto_0
.end method

.method public static getLimitedValue(JJJ)J
    .locals 2
    .param p0, "originValue"    # J
    .param p2, "minValue"    # J
    .param p4, "maxValue"    # J

    .prologue
    .line 25
    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    .line 30
    .end local p4    # "maxValue":J
    :goto_0
    return-wide p4

    .line 27
    .restart local p4    # "maxValue":J
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    move-wide p4, p2

    .line 28
    goto :goto_0

    :cond_1
    move-wide p4, p0

    .line 30
    goto :goto_0
.end method

.method public static getLimitedValue(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .param p0    # Ljava/lang/Comparable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Comparable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "originValue":Ljava/lang/Comparable;, "TT;"
    .local p1, "minValue":Ljava/lang/Comparable;, "TT;"
    .local p2, "maxValue":Ljava/lang/Comparable;, "TT;"
    invoke-interface {p0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    .end local p2    # "maxValue":Ljava/lang/Comparable;, "TT;"
    :goto_0
    return-object p2

    .line 46
    .restart local p2    # "maxValue":Ljava/lang/Comparable;, "TT;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    move-object p2, p1

    .line 47
    goto :goto_0

    :cond_1
    move-object p2, p0

    .line 49
    goto :goto_0
.end method
