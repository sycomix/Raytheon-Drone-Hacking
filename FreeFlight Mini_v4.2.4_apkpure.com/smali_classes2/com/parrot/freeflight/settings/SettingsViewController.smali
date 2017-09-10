.class public Lcom/parrot/freeflight/settings/SettingsViewController;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/settings/ISettingsViewController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/piloting/ui/settings/ISettingsViewController;"
    }
.end annotation


# instance fields
.field private final gamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

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

.field private mGamePadCategory:I

.field private mLastSelectedCategory:I

.field private final mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mNeedToFocusOnFirstItem:Z

.field private final mResetTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedCategory:I

.field private final mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsCategoryListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/SettingsEntryAdapter",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTitleTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/model/SettingsCategory;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Landroid/support/v7/widget/RecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/parrot/freeflight/settings/model/SettingsCategory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/parrot/freeflight/settings/ISettingsBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "titleTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "resetTextView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10, "settingsCategoryListView"    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11, "settingsEntryRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;TU;TV;",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;",
            "Lcom/parrot/freeflight/settings/ISettingsBuilder",
            "<TT;TU;TV;>;",
            "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
            "<TT;TU;>;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/ListView;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    .local p2, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p3, "localSettingsModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    .local p4, "remoteControllerModel":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p5, "gamePadSetting":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    .local p6, "settingsBuilder":Lcom/parrot/freeflight/settings/ISettingsBuilder;, "Lcom/parrot/freeflight/settings/ISettingsBuilder<TT;TU;TV;>;"
    .local p7, "viewHolderFactory":Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;, "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory<TT;TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    .line 46
    const/4 v2, -0x2

    iput v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLastSelectedCategory:I

    .line 48
    const/4 v2, -0x1

    iput v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    .line 140
    new-instance v2, Lcom/parrot/freeflight/settings/SettingsViewController$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$4;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    iput-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->gamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 61
    iput-object p2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    .line 62
    iput-object p3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    .line 63
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 64
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-static {p1, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 66
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mResetTextView:Landroid/widget/TextView;

    .line 67
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    .line 68
    const v2, 0x7f050012

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 69
    .local v8, "fadeInAnimation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/parrot/freeflight/settings/SettingsViewController$1;

    invoke-direct {v3, p0, v8}, Lcom/parrot/freeflight/settings/SettingsViewController$1;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/parrot/freeflight/settings/SettingsViewController$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$2;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 110
    const/4 v2, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 111
    const/4 v2, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    .line 112
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/parrot/freeflight/settings/SettingsViewController$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/SettingsViewController$3;-><init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p12

    .line 124
    invoke-interface/range {v2 .. v7}, Lcom/parrot/freeflight/settings/ISettingsBuilder;->buildCategories(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    .line 125
    if-eqz p5, :cond_0

    move-object/from16 v0, p6

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/settings/ISettingsBuilder;->isFpvEnabled(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    .line 127
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    invoke-interface {v2, v3, p5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    :cond_0
    new-instance v2, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    move-object/from16 v0, p13

    invoke-direct {v2, p1, v3, v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    iput-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    .line 130
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    new-instance v2, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    move-object/from16 v0, p7

    move-object/from16 v1, p13

    invoke-direct {v2, p1, v0, v1}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    iput-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    .line 133
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v9

    .line 136
    .local v9, "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->gamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v9, v2}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategory(I)V

    .line 138
    return-void

    .line 126
    .end local v9    # "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    return v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->updateEntriesVisibility()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/settings/SettingsViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    return p1
.end method

.method static synthetic access$1102(Lcom/parrot/freeflight/settings/SettingsViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/SettingsViewController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLastSelectedCategory:I

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/settings/SettingsViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLastSelectedCategory:I

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/settings/SettingsViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mResetTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private clearAllItemAnimation()V
    .locals 2

    .prologue
    .line 155
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 157
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private doSelectCategory(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 172
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iput p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    .line 173
    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 175
    .local v0, "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;

    .line 176
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 177
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->setSelection(I)V

    .line 180
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 181
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->updateEntriesVisibility()V

    .line 182
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->update()V

    .line 184
    .end local v0    # "settingsCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    :cond_0
    return-void
.end method

.method private updateEntriesVisibility()V
    .locals 4

    .prologue
    .line 187
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 188
    .local v0, "settingCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->getVisibleSettingEntries()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->setSettingsEntries(Ljava/util/List;Z)V

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mNeedToFocusOnFirstItem:Z

    .line 190
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    invoke-direct {p0}, Lcom/parrot/freeflight/settings/SettingsViewController;->clearAllItemAnimation()V

    .line 150
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v0

    .line 151
    .local v0, "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->gamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 152
    return-void
.end method

.method public getSelectedCategory()I
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    return v0
.end method

.method public onGamePadSettingsChanged(Lcom/parrot/freeflight/settings/model/SettingsCategory;)V
    .locals 4
    .param p1    # Lcom/parrot/freeflight/settings/model/SettingsCategory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/SettingsCategory",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    .local p1, "gamePadSetting":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 209
    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    if-ne v1, v3, :cond_2

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    .line 212
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 214
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    .line 215
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->doSelectCategory(I)V

    .line 216
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLastSelectedCategory:I

    .line 234
    :cond_0
    :goto_1
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    :cond_2
    if-nez p1, :cond_6

    .line 220
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 222
    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    if-ne v1, v2, :cond_5

    .line 223
    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    .line 225
    :cond_3
    :goto_2
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->doSelectCategory(I)V

    .line 226
    iput v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    .line 232
    :cond_4
    :goto_3
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLastSelectedCategory:I

    goto :goto_1

    .line 224
    :cond_5
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    goto :goto_2

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryAdapter:Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->notifyDataSetChanged()V

    .line 230
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mGamePadCategory:I

    iget v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->doSelectCategory(I)V

    goto :goto_3
.end method

.method public reload()V
    .locals 4

    .prologue
    .line 202
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyItemChanged(I)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsCategoryListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 206
    return-void
.end method

.method public setSelectedCategory(I)V
    .locals 1
    .param p1, "category"    # I

    .prologue
    .line 166
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    if-eq v0, p1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/SettingsViewController;->doSelectCategory(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 194
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController;, "Lcom/parrot/freeflight/settings/SettingsViewController<TT;TU;TV;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mCategoryList:Ljava/util/List;

    iget v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSelectedCategory:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 195
    .local v1, "settingCategory":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mModel:Lcom/parrot/freeflight/core/model/Model;

    iget-object v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mLocalSettingsModel:Lcom/parrot/freeflight/core/model/Model;

    invoke-virtual {v1, v4, v5}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;

    move-result-object v3

    .line 196
    .local v3, "updatedIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 197
    iget-object v5, p0, Lcom/parrot/freeflight/settings/SettingsViewController;->mSettingsEntryAdapter:Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyItemChanged(I)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method
