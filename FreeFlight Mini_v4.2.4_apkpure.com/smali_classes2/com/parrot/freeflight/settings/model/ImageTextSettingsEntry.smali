.class public abstract Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "ImageTextSettingsEntry.java"


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
        "Ljava/lang/Void;",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field public final mImageRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 14
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TV;TU;>;"
    const/16 v0, 0x11

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 15
    iput p2, p0, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->mImageRes:I

    .line 16
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
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->hasChanged(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 20
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TV;TU;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 21
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->mValue:Ljava/lang/Object;

    .line 24
    :cond_0
    return v0

    .line 20
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TV;TU;>;"
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;->sendValue(Ljava/lang/Void;)V

    return-void
.end method

.method public sendValue(Ljava/lang/Void;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Void;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    .local p0, "this":Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ImageTextSettingsEntry<TV;TU;>;"
    return-void
.end method
