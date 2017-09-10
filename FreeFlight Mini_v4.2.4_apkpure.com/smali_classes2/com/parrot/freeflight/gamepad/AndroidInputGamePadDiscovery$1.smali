.class Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery$1;
.super Ljava/lang/Object;
.source "AndroidInputGamePadDiscovery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery$1;->this$0:Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;->access$000(Lcom/parrot/freeflight/gamepad/AndroidInputGamePadDiscovery;)V

    .line 66
    return-void
.end method
