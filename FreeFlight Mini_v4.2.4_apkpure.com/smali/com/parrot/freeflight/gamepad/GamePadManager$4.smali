.class Lcom/parrot/freeflight/gamepad/GamePadManager$4;
.super Ljava/lang/Object;
.source "GamePadManager.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/VirtualInputDevice$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadManager;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 1
    .param p1, "virtualInputDevice"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$500(Lcom/parrot/freeflight/gamepad/GamePadManager;)Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadManager$4;->this$0:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->access$600(Lcom/parrot/freeflight/gamepad/GamePadManager;)V

    .line 217
    :cond_0
    return-void
.end method
