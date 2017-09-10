.class public Lcom/parrot/freeflight/piloting/widget/AlertView;
.super Landroid/widget/LinearLayout;
.source "AlertView.java"


# instance fields
.field private final mAlertShowing:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLayout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mItemTextId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setOrientation(I)V

    .line 38
    return-void
.end method

.method private getItemText(IILandroid/view/LayoutInflater;)Landroid/widget/TextView;
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "position"    # I
    .param p3, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    if-ge p2, p1, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemTextId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    :goto_0
    return-object v1

    .line 87
    :cond_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemLayout:I

    invoke-virtual {p3, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemTextId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "alertText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    move-object v1, v0

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public refresh([Ljava/lang/String;)Z
    .locals 7
    .param p1, "data"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "needRefresh":Z
    if-eqz p1, :cond_4

    array-length v5, p1

    if-lez v5, :cond_4

    .line 51
    array-length v5, p1

    iget-object v6, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    const/4 v3, 0x1

    .line 52
    :goto_0
    if-nez v3, :cond_2

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_2

    if-nez v3, :cond_2

    .line 54
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 55
    const/4 v3, 0x1

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    move v3, v4

    .line 51
    goto :goto_0

    .line 60
    :cond_2
    if-eqz v3, :cond_4

    .line 61
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getChildCount()I

    move-result v0

    .line 63
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 64
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 65
    invoke-direct {p0, v0, v1, v2}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getItemText(IILandroid/view/LayoutInflater;)Landroid/widget/TextView;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mAlertShowing:Ljava/util/List;

    aget-object v6, p1, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    :cond_3
    array-length v5, p1

    if-le v0, v5, :cond_4

    .line 69
    array-length v1, p1

    :goto_3
    if-ge v1, v0, :cond_4

    .line 70
    array-length v5, p1

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/widget/AlertView;->removeViewAt(I)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 75
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    if-eqz p1, :cond_5

    array-length v5, p1

    if-nez v5, :cond_6

    :cond_5
    const/4 v4, 0x4

    .line 76
    .local v4, "newVisibility":I
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_7

    .line 77
    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setVisibility(I)V

    .line 79
    :cond_7
    return v3
.end method

.method public setItemLayout(I)V
    .locals 0
    .param p1, "itemLayout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 41
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemLayout:I

    .line 42
    return-void
.end method

.method public setItemTextId(I)V
    .locals 0
    .param p1, "itemTextId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 45
    iput p1, p0, Lcom/parrot/freeflight/piloting/widget/AlertView;->mItemTextId:I

    .line 46
    return-void
.end method
