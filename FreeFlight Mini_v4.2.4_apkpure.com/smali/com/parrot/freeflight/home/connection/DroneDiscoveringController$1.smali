.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$1;
.super Ljava/lang/Object;
.source "DroneDiscoveringController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$1;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$1;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;

    sget-object v1, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;->EVENT_DISCOVERY_TIMED_OUT:Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;->access$000(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$Event;)V

    .line 224
    return-void
.end method
