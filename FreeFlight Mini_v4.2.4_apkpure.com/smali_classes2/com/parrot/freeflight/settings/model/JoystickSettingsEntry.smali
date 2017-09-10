.class public abstract Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;
.super Lcom/parrot/freeflight/settings/model/SettingsEntry;
.source "JoystickSettingsEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/model/SettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/preference/JoystickState;",
        "Lcom/parrot/freeflight/piloting/preference/JoystickState;",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "localSettingsModel"    # Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isWingX"    # Z

    .prologue
    .line 13
    .local p0, "this":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<TT;TU;>;"
    if-eqz p3, :cond_0

    const/16 v0, 0x12

    :goto_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;->getJoystickState()Lcom/parrot/freeflight/piloting/preference/JoystickState;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/parrot/freeflight/settings/model/SettingsEntry;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    .line 14
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method protected hasChanged(Lcom/parrot/freeflight/piloting/preference/JoystickState;Lcom/parrot/freeflight/piloting/preference/JoystickState;)Z
    .locals 1
    .param p1, "oldValue"    # Lcom/parrot/freeflight/piloting/preference/JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newValue"    # Lcom/parrot/freeflight/piloting/preference/JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    .local p0, "this":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<TT;TU;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->hasChanged()Z

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
    .local p0, "this":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    check-cast p2, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->hasChanged(Lcom/parrot/freeflight/piloting/preference/JoystickState;Lcom/parrot/freeflight/piloting/preference/JoystickState;)Z

    move-result v0

    return v0
.end method

.method public sendValue(Lcom/parrot/freeflight/piloting/preference/JoystickState;)V
    .locals 0
    .param p1, "newValue"    # Lcom/parrot/freeflight/piloting/preference/JoystickState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<TT;TU;>;"
    return-void
.end method

.method public bridge synthetic sendValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 9
    .local p0, "this":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->sendValue(Lcom/parrot/freeflight/piloting/preference/JoystickState;)V

    return-void
.end method
