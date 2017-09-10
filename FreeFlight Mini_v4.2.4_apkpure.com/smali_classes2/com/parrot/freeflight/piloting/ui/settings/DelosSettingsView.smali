.class public Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;
.super Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
.source "DelosSettingsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBackButton:Landroid/widget/ImageView;

.field private final mHelpTextView:Landroid/widget/TextView;

.field private final mResetTextView:Landroid/widget/TextView;

.field private final mSettingsCategoryListView:Landroid/widget/ListView;

.field private final mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/SettingsViewController",
            "<",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const v1, 0x7f0400a3

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    const v1, 0x7f0f0299

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsCategoryListView:Landroid/widget/ListView;

    .line 58
    const v1, 0x7f0f029b

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    const v1, 0x7f0f029a

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mTitleView:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0f029c

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mHelpTextView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0f0298

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mResetTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0f0297

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mBackButton:Landroid/widget/ImageView;

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mBackButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 74
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 76
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->fixPreLollipopTheme(Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mHelpTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mResetTextView:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    return-void
.end method

.method private fixPreLollipopTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mBackButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->getTintedDrawable(Landroid/content/Context;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->getTintedDrawable(Landroid/content/Context;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "viewDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tintResId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 169
    const/4 v2, -0x1

    if-ne p3, v2, :cond_0

    const v1, 0x7f0e0101

    .line 170
    .local v1, "resId":I
    :goto_0
    invoke-static {p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 171
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 172
    return-object v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "resId":I
    :cond_0
    move v1, p3

    .line 169
    goto :goto_0
.end method


# virtual methods
.method public initController(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 17
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 95
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mResetTextView:Landroid/widget/TextView;

    new-instance v5, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/DelosModel;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v3, Lcom/parrot/freeflight/settings/SettingsViewController;

    const/4 v8, 0x0

    new-instance v9, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;

    invoke-direct {v9, v4}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsBuilder;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/parrot/freeflight/settings/view/DelosSettingsViewHolderFactory;

    invoke-direct {v10}, Lcom/parrot/freeflight/settings/view/DelosSettingsViewHolderFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mResetTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsCategoryListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v3 .. v16}, Lcom/parrot/freeflight/settings/SettingsViewController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/model/SettingsCategory;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Landroid/support/v7/widget/RecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 107
    return-void
.end method

.method public bridge synthetic initController(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v1, p1

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->initController(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 130
    instance-of v1, p1, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;

    if-nez v1, :cond_1

    .line 131
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;

    .line 136
    .local v0, "ss":Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;->access$000(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategory(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 148
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 150
    .local v0, "ss":Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->getSelectedCategory()I

    move-result v2

    invoke-static {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;->access$002(Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView$SavedState;I)I

    .line 153
    :cond_0
    return-object v0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->reload()V

    .line 120
    :cond_0
    return-void
.end method

.method public removeGamePadListener()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->destroy()V

    .line 126
    :cond_0
    return-void
.end method

.method public show(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 6
    .param p1, "model"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "remoteCtrlModel"    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->setVisibility(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->initController(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 89
    return-void
.end method

.method public bridge synthetic show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    move-object v1, p1

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->show(Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/settings/DelosSettingsView;->mSettingsViewController:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 114
    :cond_0
    return-void
.end method
