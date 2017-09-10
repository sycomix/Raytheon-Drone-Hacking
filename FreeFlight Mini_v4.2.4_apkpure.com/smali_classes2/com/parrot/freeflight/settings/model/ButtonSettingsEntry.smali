.class public abstract Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "ButtonSettingsEntry.java"


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
        "Ljava/lang/Void;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field private final mButtonName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buttonName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->mButtonName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getButtonName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->mButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->getValue()Ljava/lang/Boolean;

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
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    if-eq p1, p2, :cond_0

    .line 20
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->mValue:Ljava/lang/Object;

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/ButtonSettingsEntry;->hasChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method
