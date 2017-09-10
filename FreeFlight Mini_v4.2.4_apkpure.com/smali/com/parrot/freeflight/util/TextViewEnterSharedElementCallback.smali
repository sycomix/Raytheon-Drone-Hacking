.class public Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;
.super Landroid/app/SharedElementCallback;
.source "TextViewEnterSharedElementCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextViewEnterSharedElementCallback"


# instance fields
.field private final mEndTextSize:F

.field private final mStartTextSize:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "startTextSize"    # F
    .param p2, "endTextSize"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 26
    iput p1, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mStartTextSize:F

    .line 27
    iput p2, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mEndTextSize:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 31
    const v0, 0x7f0a0060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mStartTextSize:F

    .line 32
    const v0, 0x7f0a0181

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mEndTextSize:F

    .line 33
    return-void
.end method


# virtual methods
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v9, 0x0

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 47
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 48
    .local v5, "oldWidth":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 51
    .local v4, "oldHeight":I
    const/4 v9, 0x0

    iget v10, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mEndTextSize:F

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 56
    .local v8, "widthSpec":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 57
    .local v1, "heightSpec":I
    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->measure(II)V

    .line 60
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 61
    .local v3, "newWidth":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 64
    .local v2, "newHeight":I
    sub-int v9, v3, v5

    div-int/lit8 v7, v9, 0x2

    .line 65
    .local v7, "widthDiff":I
    sub-int v9, v2, v4

    div-int/lit8 v0, v9, 0x2

    .line 66
    .local v0, "heightDiff":I
    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v10

    sub-int/2addr v10, v0

    .line 67
    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v12

    add-int/2addr v12, v0

    .line 66
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/TextView;->layout(IIII)V

    .line 68
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 37
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Lcom/parrot/freeflight/util/TextViewEnterSharedElementCallback;->mStartTextSize:F

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    return-void
.end method
