.class Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;
.super Ljava/lang/Object;
.source "AutoLaunchGenericManager.java"

# interfaces
.implements Lcom/parrot/freeflight/core/ApplicationManager$OnApplicationVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/AutoLaunchGenericManager;-><init>(Lcom/parrot/freeflight/core/ApplicationManager;Landroid/content/Context;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/gamepad/GamePadManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 70
    const-string v0, "AutoLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->access$002(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;Z)Z

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->access$000(Lcom/parrot/freeflight/core/AutoLaunchGenericManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchGenericManager$3;->this$0:Lcom/parrot/freeflight/core/AutoLaunchGenericManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/AutoLaunchGenericManager;->checkAutoLaunch()V

    .line 73
    :cond_0
    return-void
.end method
