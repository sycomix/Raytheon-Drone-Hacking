.class Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;
.super Ljava/lang/Object;
.source "VirtualInputDevice.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePad$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/VirtualInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 1
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$000(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/VirtualInputDevice$1;->this$0:Lcom/parrot/freeflight/gamepad/VirtualInputDevice;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/VirtualInputDevice;->access$100(Lcom/parrot/freeflight/gamepad/VirtualInputDevice;)V

    .line 70
    :cond_0
    return-void
.end method
