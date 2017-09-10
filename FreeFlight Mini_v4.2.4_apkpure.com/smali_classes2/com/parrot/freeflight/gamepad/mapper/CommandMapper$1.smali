.class Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$1;
.super Ljava/lang/Object;
.source "CommandMapper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->sortMapping()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$1;->this$0:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)I
    .locals 2
    .param p1, "action1"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    .param p2, "action2"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->getInputCount()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    check-cast p2, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper$1;->compare(Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;)I

    move-result v0

    return v0
.end method
