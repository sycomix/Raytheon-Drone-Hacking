.class Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;
.super Ljava/lang/Object;
.source "GamePadDiscovery.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChange(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "gamepads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadDiscovery;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->notifyListChange()V

    .line 56
    return-void
.end method
