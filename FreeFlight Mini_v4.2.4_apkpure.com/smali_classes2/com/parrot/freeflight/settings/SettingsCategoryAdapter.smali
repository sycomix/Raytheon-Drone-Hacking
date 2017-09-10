.class public Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mCategoryList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsGamePadSelected:Z

.field private final mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;>;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    .local p2, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 39
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 68
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    move-object v2, p2

    .line 84
    .local v2, "vi":Landroid/view/View;
    const/4 v0, 0x0

    .line 86
    .local v0, "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    if-nez v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400a2

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    new-instance v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;-><init>()V

    .line 93
    .restart local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    const v3, 0x7f0f0295

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0f005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    .line 95
    const v3, 0x7f0f0294

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 96
    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v6, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mIsGamePadSelected:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v3, p1, :cond_1

    .line 104
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0065

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :goto_1
    iget-object v6, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getIconResId()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 109
    iget-object v6, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mCategoryList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getBackgroundesId()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 110
    iget-object v6, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v3, p1, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v6, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v7, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v3, p1, :cond_3

    move v3, v5

    :goto_3
    iget-boolean v8, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mIsGamePadSelected:Z

    invoke-virtual {v6, v7, v3, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/ImageButton;ZZ)V

    .line 112
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    iget v6, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    if-ne v6, p1, :cond_4

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 114
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 115
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 116
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->icon:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 117
    return-object v2

    .line 100
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    check-cast v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;
    goto :goto_0

    .line 106
    :cond_1
    iget-object v3, v0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e00ec

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 110
    :cond_2
    const/4 v3, 0x4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 111
    goto :goto_3

    :cond_4
    move v5, v4

    .line 112
    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 142
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mSelection:I

    .line 143
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetInvalidated()V

    .line 144
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 59
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    return-void
.end method

.method public updateGamePadSelection(Z)V
    .locals 0
    .param p1, "isGamePadSelected"    # Z

    .prologue
    .line 137
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;, "Lcom/parrot/freeflight/settings/SettingsCategoryAdapter<TT;TU;>;"
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->mIsGamePadSelected:Z

    .line 138
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method
