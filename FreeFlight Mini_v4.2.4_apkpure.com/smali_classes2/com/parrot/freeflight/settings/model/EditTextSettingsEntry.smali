.class public abstract Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "EditTextSettingsEntry.java"


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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "TV;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 10
    .local p0, "this":Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry<TV;TU;>;"
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;->hasChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "oldValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 15
    .local p0, "this":Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 16
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 17
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/EditTextSettingsEntry;->mValue:Ljava/lang/Object;

    .line 19
    :cond_0
    return v0

    .line 15
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
