.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;
.super Ljava/lang/Object;
.source "DroneDiscoveringActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->access$002(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;)Lcom/parrot/freeflight/home/connection/DroneDiscoveringController$State;

    .line 233
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$5;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->access$300(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;)V

    .line 234
    return-void
.end method
