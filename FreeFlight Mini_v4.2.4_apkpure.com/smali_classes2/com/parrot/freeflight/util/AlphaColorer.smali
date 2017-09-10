.class public Lcom/parrot/freeflight/util/AlphaColorer;
.super Ljava/lang/Object;
.source "AlphaColorer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setColorAlpha(II)I
    .locals 2
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I

    .prologue
    .line 8
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result p1

    .line 9
    const v0, 0xffffff

    and-int/2addr p0, v0

    .line 10
    shl-int/lit8 p1, p1, 0x18

    .line 11
    or-int v0, p0, p1

    return v0
.end method
