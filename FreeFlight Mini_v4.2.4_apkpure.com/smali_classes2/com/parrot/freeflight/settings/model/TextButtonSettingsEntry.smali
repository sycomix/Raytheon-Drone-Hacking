.class public abstract Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "TextButtonSettingsEntry.java"


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


# instance fields
.field public final mButtonName:Ljava/lang/String;


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
    .line 11
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    const/16 v0, 0xf

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 12
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->mButtonName:Ljava/lang/String;

    .line 13
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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->hasChanged(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 18
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->mValue:Ljava/lang/Object;

    .line 21
    :cond_0
    return v0

    .line 17
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onButtonClicked()V
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->sendValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    return-void
.end method

.method public shouldWarn()Z
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TV;TU;>;"
    const/4 v0, 0x0

    return v0
.end method
