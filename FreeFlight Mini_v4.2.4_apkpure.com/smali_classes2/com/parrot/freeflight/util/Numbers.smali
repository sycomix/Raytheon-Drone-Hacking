.class public Lcom/parrot/freeflight/util/Numbers;
.super Ljava/lang/Object;
.source "Numbers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static round(DI)D
    .locals 6
    .param p0, "value"    # D
    .param p2, "decimalPlace"    # I

    .prologue
    .line 12
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 13
    .local v0, "multiplicator":D
    mul-double/2addr p0, v0

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double p0, v2

    .line 15
    div-double v2, p0, v0

    return-wide v2
.end method
