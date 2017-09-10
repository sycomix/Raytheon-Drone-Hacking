.class public abstract Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "BooleanSettingsEntry.java"


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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mLeftStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRightStateName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "leftStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rightStateName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 15
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mLeftStateName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mRightStateName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getLeftStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mLeftStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightStateName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mRightStateName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 7
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected hasChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    .line 22
    .local v0, "updated":Z
    if-eq p1, p2, :cond_0

    .line 23
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->mValue:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    .line 26
    :cond_0
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
    .line 7
    .local p0, "this":Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;, "Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/BooleanSettingsEntry;->hasChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
