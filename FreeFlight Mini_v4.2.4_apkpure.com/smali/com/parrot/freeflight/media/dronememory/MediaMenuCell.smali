.class public Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;
.super Landroid/widget/LinearLayout;
.source "MediaMenuCell.java"


# instance fields
.field private final mDateLabel:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSelectionRow:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSizeLabel:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThumbnail:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeLabel:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoIndicatorImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040081

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v1, 0x7f0f023d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mDateLabel:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0f018a

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mTimeLabel:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0f023e

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSizeLabel:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0f023b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mThumbnail:Landroid/widget/ImageView;

    .line 72
    const v1, 0x7f0f023c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mVideoIndicatorImageView:Landroid/widget/ImageView;

    .line 73
    const v1, 0x7f0f023f

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mDateLabel:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 79
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mTimeLabel:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 80
    invoke-virtual {p0}, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSizeLabel:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 81
    return-void
.end method


# virtual methods
.method public getSelectionRow()Landroid/widget/CheckBox;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getThumbnail()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method

.method public toggleCheckBox()Z
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSelectionRow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "dateText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "timeText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "sizeText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "isVideo"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mDateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    if-nez p3, :cond_0

    .line 87
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mVideoIndicatorImageView:Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/MediaMenuCell;->mSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 92
    goto :goto_1
.end method
