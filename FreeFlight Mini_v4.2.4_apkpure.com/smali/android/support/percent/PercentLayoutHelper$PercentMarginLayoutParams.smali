.class Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PercentMarginLayoutParams"
.end annotation


# instance fields
.field private mIsHeightComputedFromAspectRatio:Z

.field private mIsWidthComputedFromAspectRatio:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 333
    return-void
.end method

.method static synthetic access$000(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsWidthComputedFromAspectRatio:Z

    return v0
.end method

.method static synthetic access$002(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
    .param p1, "x1"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsWidthComputedFromAspectRatio:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsHeightComputedFromAspectRatio:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
    .param p1, "x1"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsHeightComputedFromAspectRatio:Z

    return p1
.end method
