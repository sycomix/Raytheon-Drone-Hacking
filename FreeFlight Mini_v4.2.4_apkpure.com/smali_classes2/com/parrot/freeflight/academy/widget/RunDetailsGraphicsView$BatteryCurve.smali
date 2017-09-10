.class Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;
.super Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;
.source "RunDetailsGraphicsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryCurve"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "virtualScreen"    # Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 813
    iput-object p1, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    .line 814
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;-><init>(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$VirtualScreen;Landroid/graphics/Paint;)V

    .line 815
    return-void
.end method


# virtual methods
.method protected computeVerticalPosition(FFFF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F
    .param p4, "height"    # F

    .prologue
    .line 819
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$BatteryCurve;->this$0:Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;->access$2100(Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView;)F

    move-result p1

    .line 823
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/academy/widget/RunDetailsGraphicsView$Curve;->computeVerticalPosition(FFFF)F

    move-result v0

    return v0
.end method
