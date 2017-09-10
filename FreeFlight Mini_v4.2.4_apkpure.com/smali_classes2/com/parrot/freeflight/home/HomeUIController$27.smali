.class Lcom/parrot/freeflight/home/HomeUIController$27;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;->startDroneMemoryActivity(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;

.field final synthetic val$photoCountTakenDuringRun:I

.field final synthetic val$runId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iput-object p2, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$runId:Ljava/lang/String;

    iput p3, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$photoCountTakenDuringRun:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 3
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_2

    .line 1071
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1072
    .local v0, "droneMemoryIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$runId:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$photoCountTakenDuringRun:I

    if-lez v1, :cond_1

    .line 1073
    :cond_0
    const-string v1, "KEY_EXTRA_TRANSFER_LAST_RUN_MEDIAS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1074
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$runId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$runId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1075
    const-string v1, "KEY_EXTRA_TRANSFER_RUN_ID"

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$runId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1082
    .end local v0    # "droneMemoryIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 1077
    .restart local v0    # "droneMemoryIntent":Landroid/content/Intent;
    :cond_3
    const-string v1, "KEY_EXTRA_TRANSFER_MEDIAS_NB_TO_TRANSFER"

    iget v2, p0, Lcom/parrot/freeflight/home/HomeUIController$27;->val$photoCountTakenDuringRun:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
