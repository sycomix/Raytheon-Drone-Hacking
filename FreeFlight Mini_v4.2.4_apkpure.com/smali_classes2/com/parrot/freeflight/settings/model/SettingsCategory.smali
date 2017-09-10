.class public Lcom/parrot/freeflight/settings/model/SettingsCategory;
.super Ljava/lang/Object;
.source "SettingsCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBackgroundId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mCategoryTitle:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private mIconResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mSettingsEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation
.end field

.field private final mShowReset:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "iconResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "backgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "categoryTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    .local p5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/settings/model/SettingsCategory;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 23
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "iconResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "backgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "categoryTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "showReset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    .local p5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mIconResId:I

    .line 28
    iput p2, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mBackgroundId:I

    .line 29
    iput-object p4, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mDescription:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mCategoryTitle:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mSettingsEntries:Ljava/util/List;

    .line 32
    iput-boolean p6, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mShowReset:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getBackgroundesId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mBackgroundId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mIconResId:I

    return v0
.end method

.method public getSettingsEntries()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mSettingsEntries:Ljava/util/List;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mCategoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleSettingEntries()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**TT;TU;>;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v1, "visibleSettingEntries":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsEntry;

    .line 89
    .local v0, "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;
    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v0    # "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;
    :cond_1
    return-object v1
.end method

.method public needShowResetButton()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mShowReset:Z

    return v0
.end method

.method public update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Ljava/util/List;
    .locals 7
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/parrot/freeflight/settings/model/SettingsCategory;, "Lcom/parrot/freeflight/settings/model/SettingsCategory<TT;TU;>;"
    .local p1, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p2, "model2":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, "mUpdatesIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 72
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 73
    iget-object v6, p0, Lcom/parrot/freeflight/settings/model/SettingsCategory;->mSettingsEntries:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsEntry;

    .line 74
    .local v0, "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;"
    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/settings/model/SettingsEntry;->update(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;)Z

    move-result v5

    .line 76
    .local v5, "updated":Z
    if-eqz v5, :cond_0

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 72
    .end local v5    # "updated":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "entry":Lcom/parrot/freeflight/settings/model/SettingsEntry;, "Lcom/parrot/freeflight/settings/model/SettingsEntry<**TT;TU;>;"
    :cond_2
    return-object v3
.end method
