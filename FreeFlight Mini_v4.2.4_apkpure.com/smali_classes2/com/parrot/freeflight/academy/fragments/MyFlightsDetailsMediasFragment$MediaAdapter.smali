.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyFlightsDetailsMediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/parrot/freeflight/core/academy/MediaInfos;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 136
    .local v1, "mediaInfos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-nez p2, :cond_0

    .line 137
    new-instance v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;-><init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$1;)V

    .line 138
    .local v0, "holder":Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04008d

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 139
    const v2, 0x7f0f025a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 140
    const v2, 0x7f0f025b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailVideoIndicator:Landroid/widget/ImageView;

    .line 141
    const v2, 0x7f0f025c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailUploadedIndicator:Landroid/widget/ImageView;

    .line 142
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 147
    .end local v0    # "holder":Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;

    .line 149
    .restart local v0    # "holder":Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-boolean v2, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_0
    iget-boolean v2, v1, Lcom/parrot/freeflight/core/academy/MediaInfos;->isUploaded:Z

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :goto_1
    return-object p2

    .line 154
    :cond_1
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, v0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$ViewHolder;->thumbnailUploadedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
