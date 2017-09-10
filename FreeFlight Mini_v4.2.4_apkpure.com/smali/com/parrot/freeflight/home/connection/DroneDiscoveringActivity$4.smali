.class Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;
.super Ljava/lang/Object;
.source "DroneDiscoveringActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

.field final synthetic val$devices:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;->val$devices:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;->val$devices:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->access$200(Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;Ljava/util/ArrayList;)V

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity$4;->this$0:Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;->finish()V

    .line 191
    return-void
.end method
