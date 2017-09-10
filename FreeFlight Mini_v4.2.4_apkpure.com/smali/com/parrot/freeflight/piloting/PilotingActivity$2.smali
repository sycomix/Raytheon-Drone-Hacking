.class Lcom/parrot/freeflight/piloting/PilotingActivity$2;
.super Ljava/lang/Object;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/PilotingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/PilotingActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDroneNotInit()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->access$000(Lcom/parrot/freeflight/piloting/PilotingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-static {v0, v4}, Lcom/parrot/freeflight/piloting/PilotingActivity;->access$002(Lcom/parrot/freeflight/piloting/PilotingActivity;Z)Z

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/PilotingActivity$2;->this$0:Lcom/parrot/freeflight/piloting/PilotingActivity;

    const-class v3, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4}, Lcom/parrot/freeflight/piloting/PilotingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 90
    :cond_0
    return-void
.end method
