.class public abstract Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "AccessoriesToggleSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;",
        "Ljava/lang/Integer;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mLeftStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRightStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    const/4 v2, 0x0

    .line 17
    const/4 v0, 0x6

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 18
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mLeftStateName:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mRightStateName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rightStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    const/4 v0, 0x6

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-direct {v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 24
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mLeftStateName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mRightStateName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getLeftStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mLeftStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mRightStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->getValue()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)Z
    .locals 2
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getSupportedAccessory()I

    move-result v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->update(II)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic hasChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;, "Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry<TV;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    check-cast p2, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/AccessoriesToggleSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)Z

    move-result v0

    return v0
.end method
