.class public Lcom/parrot/freeflight/util/ToggleState;
.super Ljava/lang/Object;
.source "ToggleState.java"


# instance fields
.field private mSettingEnabled:Z

.field private mToggleState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    .line 28
    iput-boolean p1, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 29
    return-void
.end method

.method public static copyOf(Lcom/parrot/freeflight/util/ToggleState;)Lcom/parrot/freeflight/util/ToggleState;
    .locals 2
    .param p0, "originalState"    # Lcom/parrot/freeflight/util/ToggleState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/parrot/freeflight/util/ToggleState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/ToggleState;-><init>()V

    .line 12
    .local v0, "toggleState":Lcom/parrot/freeflight/util/ToggleState;
    iget-boolean v1, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    iput-boolean v1, v0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 13
    iget-boolean v1, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    iput-boolean v1, v0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    .line 14
    return-object v0
.end method

.method public static createFromValue(ZZ)Lcom/parrot/freeflight/util/ToggleState;
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "state"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/parrot/freeflight/util/ToggleState;

    invoke-direct {v0}, Lcom/parrot/freeflight/util/ToggleState;-><init>()V

    .line 20
    .local v0, "toggleState":Lcom/parrot/freeflight/util/ToggleState;
    iput-boolean p0, v0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 21
    iput-boolean p1, v0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    .line 22
    return-object v0
.end method


# virtual methods
.method public getToggleState()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    return v0
.end method

.method public isSettingEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    return v0
.end method

.method public update(Lcom/parrot/freeflight/util/ToggleState;)Z
    .locals 2
    .param p1, "state"    # Lcom/parrot/freeflight/util/ToggleState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    iget-boolean v0, p1, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    iget-boolean v1, p1, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    invoke-virtual {p0, v0, v1}, Lcom/parrot/freeflight/util/ToggleState;->update(ZZ)Z

    move-result v0

    return v0
.end method

.method public update(ZZ)Z
    .locals 3
    .param p1, "toggleEnabled"    # Z
    .param p2, "toggleState"    # Z

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/util/ToggleState;->updateSettingEnabled(Z)Z

    move-result v0

    .line 37
    .local v0, "updateEnabled":Z
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/util/ToggleState;->updateToggleState(Z)Z

    move-result v1

    .line 38
    .local v1, "updateState":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateSettingEnabled(Z)Z
    .locals 2
    .param p1, "settingEnabled"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    if-eq v1, p1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/parrot/freeflight/util/ToggleState;->mSettingEnabled:Z

    .line 47
    :cond_0
    return v0
.end method

.method public updateToggleState(Z)Z
    .locals 2
    .param p1, "toggleState"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "updated":Z
    iget-boolean v1, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    if-eq v1, p1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/parrot/freeflight/util/ToggleState;->mToggleState:Z

    .line 56
    :cond_0
    return v0
.end method
