.class Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;
.super Ljava/lang/Object;
.source "DroneInitActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getFlyingState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->access$100(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;I)V

    .line 39
    :cond_0
    return-void
.end method
