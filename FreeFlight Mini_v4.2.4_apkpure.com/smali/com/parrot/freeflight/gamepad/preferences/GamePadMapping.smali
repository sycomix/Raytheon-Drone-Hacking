.class public Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
.super Ljava/lang/Object;
.source "GamePadMapping.java"


# instance fields
.field private final mGamePadActions:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "gamePadActions":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public filter(IIIII)V
    .locals 3
    .param p1, "commandType"    # I
    .param p2, "settingsFilter"    # I
    .param p3, "gamePadType"    # I
    .param p4, "accessoryFilter"    # I
    .param p5, "accessoryType"    # I

    .prologue
    .line 35
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 36
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 38
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 39
    invoke-static {v2, p5}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByAccessory(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 40
    invoke-static {v2, p1}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterByCommandType(Lcom/parrot/freeflight/gamepad/command/Command;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    .line 41
    invoke-static {v2, p2, p3}, Lcom/parrot/freeflight/gamepad/command/CommandFilter;->filterBySettingsAndGamePadType(Lcom/parrot/freeflight/gamepad/command/Command;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 45
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_3
    return-void
.end method

.method public getGamePadActions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->mGamePadActions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
